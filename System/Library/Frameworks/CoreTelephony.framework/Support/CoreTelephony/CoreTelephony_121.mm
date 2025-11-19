uint64_t sub_1007F444C(uint64_t a1, PB::Writer *a2)
{
  PB::Writer::write();
  if (*(a1 + 8))
  {
    PB::Writer::write();
  }

  v4 = *(a1 + 40);

  return PB::Writer::write(a2, v4, 3u);
}

uint64_t sub_1007F44B0(uint64_t a1, NSObject **a2, void *a3)
{
  v13 = *a2;
  if (v13)
  {
    dispatch_retain(v13);
  }

  sub_1005ABE1C(a1, &v13, a3, "cp.rch.reg");
  if (v13)
  {
    dispatch_release(v13);
  }

  *a1 = off_101E816A8;
  *(a1 + 8) = &off_101E817D8;
  sub_10000501C(&__p, "CellularPlanRegisteredCommandHandler");
  v6 = *a2;
  object = 0;
  v10 = v6;
  *a2 = 0;
  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v12 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 264) = a1 + 272;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = a1 + 296;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = a1 + 320;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0;
  v8 = 1;
  sub_1000C4284(a1 + 72, &v8);
  return a1;
}

void sub_1007F45FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, dispatch_object_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 + 391) < 0)
  {
    operator delete(*(v18 + 368));
  }

  v20 = *(v18 + 360);
  if (v20)
  {
    sub_100004A34(v20);
  }

  v21 = *(v18 + 344);
  if (v21)
  {
    sub_100004A34(v21);
  }

  sub_1000DD0AC(v18 + 312, *(v18 + 320));
  sub_100045B14(v18 + 288, *(v18 + 296));
  sub_100077CD4(v18 + 264, *(v18 + 272));
  v22 = *(v18 + 256);
  if (v22)
  {
    sub_100004A34(v22);
  }

  sub_1005AC00C(v18);
  _Unwind_Resume(a1);
}

void sub_1007F46A0()
{
  v1 = *(v0 - 40);
  if (v1)
  {
    dispatch_release(v1);
  }

  JUMPOUT(0x1007F4698);
}

void sub_1007F46C4(uint64_t a1)
{
  if (*(a1 + 336))
  {
    return;
  }

  sub_100004AA0(&v24, (a1 + 16));
  v2 = v24;
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(*(&v2 + 1));
  }

  (***(a1 + 56))(&v22);
  ServiceMap = Registry::getServiceMap(v22);
  v4 = ServiceMap;
  v5 = "38CellularPlanIDSServiceManagerInterface";
  if (("38CellularPlanIDSServiceManagerInterface" & 0x8000000000000000) != 0)
  {
    v6 = ("38CellularPlanIDSServiceManagerInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  v25 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v25);
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
  (*(*v11 + 24))(&v24, v11);
  v13 = v24;
  v24 = 0uLL;
  v14 = *(a1 + 344);
  *(a1 + 336) = v13;
  if (v14)
  {
    sub_100004A34(v14);
    if (*(&v24 + 1))
    {
      sub_100004A34(*(&v24 + 1));
    }
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  v15 = *(a1 + 336);
  if (v15)
  {
    v22 = 32;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1174405120;
    v20[2] = sub_1007F4CB4;
    v20[3] = &unk_101E81848;
    v20[4] = a1;
    v21 = v2;
    if (*(&v2 + 1))
    {
      atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1174405120;
    v18[2] = sub_1007F4E90;
    v18[3] = &unk_101E81878;
    v18[4] = a1;
    v19 = v2;
    if (*(&v2 + 1))
    {
      atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    if ((*(*v15 + 40))(v15, "CellularPlanRegisteredCommandHandler", &v22, &stru_101E81828, v20, v18))
    {
      (***(a1 + 56))(&v24);
      Registry::createRestModuleOneTimeUseConnection(&v16, v24);
      ctu::RestModule::connect();
      if (v17)
      {
        sub_100004A34(v17);
      }

      if (*(&v24 + 1))
      {
        sub_100004A34(*(&v24 + 1));
      }

      sub_10070DB50(a1 + 264);
      *&v24 = sub_1007F5104;
      *(&v24 + 1) = 0;
      sub_1007F6B10();
    }

    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_101780208();
    }

    if (*(&v19 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v19 + 1));
    }

    if (*(&v21 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v21 + 1));
    }
  }

  else if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_10178023C();
  }

  if (*(&v2 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v2 + 1));
  }
}

void sub_1007F4ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1007F4B7C(id a1, const void *a2)
{
  v3 = *(a2 + 55);
  if (v3 >= 0)
  {
    v4 = a2 + 32;
  }

  else
  {
    v4 = *(a2 + 4);
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 55);
  }

  else
  {
    v5 = *(a2 + 5);
  }

  v6 = &v4[v5];
  if (v5 > 4)
  {
    v7 = v5;
    v8 = v4;
    do
    {
      v9 = memchr(v8, 80, v7 - 4);
      if (!v9)
      {
        break;
      }

      if (*v9 == 1852794960 && v9[4] == 101)
      {
        if (v9 != v6 && v9 - v4 != -1)
        {
          goto LABEL_26;
        }

        break;
      }

      v8 = v9 + 1;
      v7 = v6 - v8;
    }

    while (v6 - v8 > 4);
  }

  if (v5 >= 4)
  {
    v11 = v4;
    do
    {
      v12 = memchr(v11, 105, v5 - 3);
      if (!v12)
      {
        break;
      }

      if (*v12 == 1684099177)
      {
        goto LABEL_24;
      }

      v11 = v12 + 1;
      v5 = v6 - v11;
    }

    while (v6 - v11 > 3);
  }

  v12 = v6;
LABEL_24:
  if (v12 != v6 && v12 - v4 != -1)
  {
LABEL_26:
    if (*(a2 + 14) > 0xCFFFFu)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1007F4CB4(uint64_t a1, uint64_t *a2, char a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = 0uLL;
  v7 = 0;
  sub_1005F1008(&v6, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5));
  v8 = a3;
  v9[0] = 0;
  v9[1] = 0;
  sub_100004AA0(v9, (v5 + 16));
  operator new();
}

void sub_1007F4E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007F4E64(uint64_t result, uint64_t a2)
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

void sub_1007F4E80(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1007F4E90(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v5, *a2, *(a2 + 8));
  }

  else
  {
    *v5 = *a2;
    v5[2] = *(a2 + 16);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__p, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *__p = *(a2 + 24);
    __p[2] = *(a2 + 40);
  }

  v7 = *(a2 + 48);
  sub_10002D728(&v8, (a2 + 56));
  sub_1002030F8(&v8 + 1, (a2 + 64));
  v9[0] = *(a2 + 72);
  *(v9 + 6) = *(a2 + 78);
  v10[0] = 0;
  v10[1] = 0;
  sub_100004AA0(v10, (v4 + 16));
  operator new();
}

void sub_1007F50CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F5104(uint64_t a1)
{
  v1 = *(a1 + 288);
  v2 = (a1 + 296);
  if (v1 != (a1 + 296))
  {
    do
    {
      memset(&v18, 0, sizeof(v18));
      v17 = *(v1 + 2);
      if (*(v1 + 71) < 0)
      {
        sub_100005F2C(&v18, v1[6], v1[7]);
      }

      else
      {
        v18 = *(v1 + 2);
      }

      v4 = *(a1 + 48);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        sCardSerialNumberAsString();
        p_p = &__p;
        if (v12 < 0)
        {
          p_p = __p;
        }

        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v6 = &v18;
        }

        else
        {
          v6 = v18.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        v14 = p_p;
        v15 = 2080;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Adding csn: [%s] -> device [%s]", buf, 0x16u);
        if (v12 < 0)
        {
          operator delete(__p);
        }
      }

      __p = &v17;
      v7 = sub_100289074(a1 + 120, &v17);
      std::string::operator=(v7 + 2, &v18);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      v8 = v1[1];
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
          v9 = v1[2];
          v10 = *v9 == v1;
          v1 = v9;
        }

        while (!v10);
      }

      v1 = v9;
    }

    while (v9 != v2);
  }
}

void sub_1007F530C(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v5 = v3 + 4;
      v6 = v3 + 7;
      *buf = v3 + 4;
      v7 = sub_100173F08(a1 + 312, v3 + 4);
      std::string::operator=((v7 + 56), (v3 + 7));
      v8 = *(a1 + 48);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v3 + 55) < 0)
        {
          v5 = *v5;
        }

        if (*(v3 + 79) < 0)
        {
          v6 = *v6;
        }

        *buf = 136315394;
        *&buf[4] = v5;
        v13 = 2080;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Adding iccid: [%s] -> device [%s]", buf, 0x16u);
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v2);
  }
}

uint64_t sub_1007F547C(uint64_t a1)
{
  sub_1007F54D0();
  sub_1007F5540();
  sub_1007F55B0();

  return ctu::RestModule::disconnect((a1 + 248));
}

void sub_1007F54D0()
{
  sub_10000501C(&__p, "/cc/events/iccid_to_ids_device_id_updated");
  ctu::RestModule::unobserveEvent();
  if (v1 < 0)
  {
    operator delete(__p);
  }
}

void sub_1007F5524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F5540()
{
  sub_10000501C(&__p, "/cc/props/csn_to_ids_device_id_map");
  ctu::RestModule::unobserveProperty();
  if (v1 < 0)
  {
    operator delete(__p);
  }
}

void sub_1007F5594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F55B0()
{
  sub_10000501C(&__p, "/cc/prefs-nb/imeis");
  ctu::RestModule::unobserveProperty();
  if (v1 < 0)
  {
    operator delete(__p);
  }
}

void sub_1007F5604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F5628(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_10016FA58(a1 + 312, a2))
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v6 = sub_1000E20F0(a1 + 312, a2);
    if (*(v6 + 23) < 0)
    {
      v10 = *v6;
      v11 = *(v6 + 8);

      sub_100005F2C(a3, v10, v11);
    }

    else
    {
      v7 = *v6;
      *(a3 + 16) = *(v6 + 16);
      *a3 = v7;
    }
  }

  else
  {
    v8 = *(a1 + 48);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      v12 = 136315138;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I (%s) not in map", &v12, 0xCu);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void sub_1007F576C(uint64_t a1, const std::string **a2, uint64_t a3)
{
  if (*(a1 + 352))
  {
    if (*a2)
    {
      if ((*(a1 + 391) & 0x8000000000000000) != 0)
      {
        if (*(a1 + 376))
        {
          goto LABEL_5;
        }
      }

      else if (*(a1 + 391))
      {
        goto LABEL_5;
      }

      std::string::operator=((a1 + 368), *a2 + 4);
LABEL_5:
      v5 = *(a1 + 48);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Fetching device info from cloud", buf, 2u);
      }

      v6[0] = 0;
      v6[1] = 0;
      *buf = "CellularPlanRegisteredCommandHandler";
      sub_1001048A4();
    }

    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_101780270();
    }
  }

  else if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_1017802A4();
  }

  *buf = 0;
  v8 = 0;
  v9 = 0;
  sub_10010E44C(a3, buf, 1);
  v6[0] = buf;
  sub_100111BA8(v6);
}

uint64_t sub_1007F5AE0(uint64_t a1)
{
  sub_1007F6394(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1007F5B18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  sub_100288F04(v61, a1 + 264);
  sub_100934714(v61, &v62);
  sub_100077CD4(v61, v61[1]);
  memset(&v60, 0, sizeof(v60));
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v8 = 0uLL;
    do
    {
      v81 = 0;
      v79 = v8;
      v80 = v8;
      v77 = v8;
      v78 = v8;
      *&v75[16] = v8;
      v76 = v8;
      v74[17] = v8;
      *v75 = v8;
      v74[15] = v8;
      v74[16] = v8;
      v74[13] = v8;
      v74[14] = v8;
      v74[11] = v8;
      v74[12] = v8;
      v74[9] = v8;
      v74[10] = v8;
      v74[7] = v8;
      v74[8] = v8;
      v74[5] = v8;
      v74[6] = v8;
      v74[3] = v8;
      v74[4] = v8;
      v74[1] = v8;
      v74[2] = v8;
      v74[0] = v8;
      *&__str_16[32] = 0;
      *__str_16 = v8;
      *&__str_16[16] = v8;
      __str = v8;
      memset(v59, 0, sizeof(v59));
      sub_100074920(v58, &v62);
      v68 = 0uLL;
      *&v69 = 0;
      memset(v57, 0, sizeof(v57));
      v9 = sub_10092DB68((a1 + 48), v6 + 24, v58, &v68, v57, v59, v74, &__str);
      v51[0] = v57;
      sub_1000087B4(v51);
      v51[0] = &v68;
      sub_10027B2AC(v51);
      sub_100009970(v58, v58[1]);
      if (v9)
      {
        v68 = 0uLL;
        if (*&__str_16[24] != 0)
        {
          v10 = __str_16[7];
          if (__str_16[7] < 0)
          {
            v10 = *(&__str + 1);
          }

          if (v10)
          {
            v51[0] = &__str_16[24];
            v11 = sub_100289074(a1 + 120, &__str_16[24]);
            std::string::operator=(v11 + 2, &__str);
          }
        }

        v12 = v66;
        if (v66 >= v67)
        {
          v14 = sub_10027D444(&v65, &__str);
        }

        else
        {
          if ((__str_16[7] & 0x80000000) != 0)
          {
            sub_100005F2C(v66, __str, *(&__str + 1));
          }

          else
          {
            v13 = __str;
            *(v66 + 2) = *__str_16;
            *v12 = v13;
          }

          v15 = *&__str_16[8];
          *(v12 + 40) = *&__str_16[24];
          *(v12 + 24) = v15;
          v14 = (v12 + 56);
        }

        v66 = v14;
        __dst = 0uLL;
        v56 = 0;
        if ((v75[31] & 0x80000000) != 0)
        {
          sub_100005F2C(&__dst, *&v75[8], *&v75[16]);
        }

        else
        {
          __dst = *&v75[8];
          v56 = *&v75[24];
        }

        v16 = HIBYTE(v56);
        if (v56 >= 0)
        {
          v17 = HIBYTE(v56);
        }

        else
        {
          v17 = *(&__dst + 1);
        }

        if (!v17)
        {
          goto LABEL_32;
        }

        v18 = *(a1 + 391);
        v19 = v18;
        if ((v18 & 0x80u) != 0)
        {
          v18 = *(a1 + 376);
        }

        if (v17 != v18 || (v56 >= 0 ? (p_dst = &__dst) : (p_dst = __dst), v19 >= 0 ? (v21 = (a1 + 368)) : (v21 = *(a1 + 368)), memcmp(p_dst, v21, v17)))
        {
LABEL_32:
          v81 = *(v6 + 48);
          v22 = a3[1];
          if (v22 >= a3[2])
          {
            v23 = sub_1007F6488(a3, v74);
          }

          else
          {
            sub_1007F6414(a3, v74);
            v23 = v22 + 408;
          }

          a3[1] = v23;
          memset(&v54, 0, sizeof(v54));
          sub_1003162A0(v74, &v54);
          size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
          v25 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
          if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v54.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            v52 = 0;
            v53[0] = 0;
            v53[1] = 0;
            sub_1003162E0(v74, &v52);
            v26 = v52;
            if (v52 != v53)
            {
              do
              {
                v51[0] = (v26 + 4);
                v27 = sub_100173F08(a1 + 312, v26 + 4);
                std::string::operator=((v27 + 56), &v54);
                v28 = v26[1];
                if (v28)
                {
                  do
                  {
                    v29 = v28;
                    v28 = *v28;
                  }

                  while (v28);
                }

                else
                {
                  do
                  {
                    v29 = v26[2];
                    v30 = *v29 == v26;
                    v26 = v29;
                  }

                  while (!v30);
                }

                v26 = v29;
              }

              while (v29 != v53);
            }

            v31 = *(v6 + 32);
            if (v31 != *(v6 + 24))
            {
              memset(v51, 0, sizeof(v51));
              PB::Reader::Reader(v51, *(v6 + 24), v31 - *(v6 + 24));
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              sub_1006E0F18(&v68);
              sub_1006E1534(&v68, v51);
              ctu::hex();
              v32 = std::string::append(&v46, "\n\n", 2uLL);
              v33 = *&v32->__r_.__value_.__l.__data_;
              v47.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
              *&v47.__r_.__value_.__l.__data_ = v33;
              v32->__r_.__value_.__l.__size_ = 0;
              v32->__r_.__value_.__r.__words[2] = 0;
              v32->__r_.__value_.__r.__words[0] = 0;
              PB::Base::formattedText(v44, &v68);
              if ((v45 & 0x80u) == 0)
              {
                v34 = v44;
              }

              else
              {
                v34 = v44[0];
              }

              if ((v45 & 0x80u) == 0)
              {
                v35 = v45;
              }

              else
              {
                v35 = v44[1];
              }

              v36 = std::string::append(&v47, v34, v35);
              v37 = *&v36->__r_.__value_.__l.__data_;
              v48.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
              *&v48.__r_.__value_.__l.__data_ = v37;
              v36->__r_.__value_.__l.__size_ = 0;
              v36->__r_.__value_.__r.__words[2] = 0;
              v36->__r_.__value_.__r.__words[0] = 0;
              v38 = std::string::append(&v48, "\n\n", 2uLL);
              v39 = *&v38->__r_.__value_.__l.__data_;
              v50 = v38->__r_.__value_.__r.__words[2];
              __p = v39;
              v38->__r_.__value_.__l.__size_ = 0;
              v38->__r_.__value_.__r.__words[2] = 0;
              v38->__r_.__value_.__r.__words[0] = 0;
              if (v50 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              if (v50 >= 0)
              {
                v41 = HIBYTE(v50);
              }

              else
              {
                v41 = *(&__p + 1);
              }

              std::string::append(&v60, p_p, v41);
              if (SHIBYTE(v50) < 0)
              {
                operator delete(__p);
              }

              if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v48.__r_.__value_.__l.__data_);
              }

              if (v45 < 0)
              {
                operator delete(v44[0]);
              }

              if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v47.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v46.__r_.__value_.__l.__data_);
              }

              sub_1006E1008(&v68);
            }

            sub_100009970(&v52, v53[0]);
            v25 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
          }

          if (v25 < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          v16 = HIBYTE(v56);
        }

        if (v16 < 0)
        {
          operator delete(__dst);
        }
      }

      *&v68 = v59;
      sub_10027B454(&v68);
      if ((__str_16[7] & 0x80000000) != 0)
      {
        operator delete(__str);
      }

      sub_100111C2C(v74);
      v6 += 56;
      v8 = 0uLL;
    }

    while (v6 != v7);
  }

  sub_10000501C(v42, "Manatee_DownloadData_");
  sub_10092C778((a1 + 48), v42, &v60, &v65);
  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  sub_100009970(&v62, v63);
  *&v74[0] = &v65;
  sub_10027E27C(v74);
}

void sub_1007F6128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  sub_100009970(&a67, a68);
  STACK[0x250] = &a70;
  sub_10027E27C(&STACK[0x250]);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F62E8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 344);
  *a2 = *(result + 336);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1007F6318(uint64_t a1)
{
  sub_1007F6718(a1);

  operator delete();
}

void sub_1007F6358(uint64_t a1)
{
  sub_1007F6718(a1 - 8);

  operator delete();
}

uint64_t sub_1007F6394(uint64_t a1)
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

double sub_1007F6414(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  sub_10031A3B0(v4, a2);
  sub_10027F834((v4 + 248), (a2 + 248));
  result = *(a2 + 400);
  *(v4 + 400) = result;
  *(a1 + 8) = v4 + 408;
  return result;
}

void sub_1007F6468(_Unwind_Exception *a1)
{
  sub_1003A371C(v2);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

uint64_t sub_1007F6488(uint64_t *a1, uint64_t a2)
{
  v2 = 0xFAFAFAFAFAFAFAFBLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xA0A0A0A0A0A0A0)
  {
    sub_1000CE3D4();
  }

  if (0xF5F5F5F5F5F5F5F6 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xF5F5F5F5F5F5F5F6 * ((a1[2] - *a1) >> 3);
  }

  if (0xFAFAFAFAFAFAFAFBLL * ((a1[2] - *a1) >> 3) >= 0x50505050505050)
  {
    v6 = 0xA0A0A0A0A0A0A0;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10079C3B0(a1, v6);
  }

  v13 = 0;
  v14 = 408 * v2;
  v15 = 408 * v2;
  sub_10031A3B0((408 * v2), a2);
  sub_10027F834((408 * v2 + 248), (a2 + 248));
  *(v14 + 400) = *(a2 + 400);
  *&v15 = v15 + 408;
  v7 = a1[1];
  v8 = v14 + *a1 - v7;
  sub_1007F65F4(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1007F66C8(&v13);
  return v12;
}

void sub_1007F65D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003A371C(v4);
  sub_1007F66C8(va);
  _Unwind_Resume(a1);
}

void sub_1007F65F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = sub_10031A3B0((a4 + v7), v6 + v7);
      sub_10027F834(v8 + 248, (v6 + v7 + 248));
      *(a4 + v7 + 400) = *(v6 + v7 + 400);
      v7 += 408;
    }

    while (v6 + v7 != a3);
    while (v6 != a3)
    {
      sub_100111C2C(v6);
      v6 += 408;
    }
  }
}

void sub_1007F668C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 408;
    v5 = -v2;
    do
    {
      v4 = sub_100111C2C(v4) - 408;
      v5 += 408;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007F66C8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 408;
    sub_100111C2C(i - 408);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007F6718(uint64_t a1)
{
  *a1 = off_101E816A8;
  *(a1 + 8) = &off_101E817D8;
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v2 = *(a1 + 360);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 344);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_1000DD0AC(a1 + 312, *(a1 + 320));
  sub_100045B14(a1 + 288, *(a1 + 296));
  sub_100077CD4(a1 + 264, *(a1 + 272));
  v4 = *(a1 + 256);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1005AC00C(a1);
}

uint64_t *sub_1007F67E0(uint64_t *a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        memset(v17, 0, sizeof(v17));
        sub_1005F1008(v17, *(v1 + 24), *(v1 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 32) - *(v1 + 24)) >> 5));
        sub_1005BF6A0(v3, v17);
        v15 = v17;
        sub_1005C0EBC(&v15);
        v6 = *(v3 + 152);
        if (v6)
        {
          v7 = std::__shared_weak_count::lock(v6);
          if (v7)
          {
            v8 = v7;
            v9 = *(v3 + 144);
            if (v9)
            {
              v16[0] = 0;
              v16[1] = 0;
              v15 = v16;
              v10 = *(v1 + 24);
              v11 = *(v1 + 32);
              while (v10 != v11)
              {
                sub_100005BA0(&v15, v10);
                v10 += 12;
              }

              (*(*v9 + 64))(v9, &v15, *(v1 + 48));
              sub_100009970(&v15, v16[0]);
            }

            sub_100004A34(v8);
          }
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_1007F6984(&v14);
  return sub_1000049E0(&v13);
}

void sub_1007F692C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12)
{
  sub_100009970(&a11, a12);
  sub_100004A34(v13);
  sub_100004A34(v12);
  sub_1007F6984(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007F6984(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v3 = (v1 + 24);
    sub_1005C0EBC(&v3);
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1007F69F0(uint64_t **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1[1])
      {
        sub_1005BCB80(v3, (v1 + 3));
      }

      sub_100004A34(v5);
    }
  }

  sub_1007F6A8C(&v8);
  return sub_1000049E0(&v7);
}

void sub_1007F6A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1007F6A8C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007F6A8C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1002030AC((v1 + 88));
    sub_10002D760((v1 + 80));
    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
    }

    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

void sub_1007F6BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1007F6CAC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E818D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1007F6CEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F6D38(uint64_t *a1, xpc_object_t *a2)
{
  sub_1007F6DB4(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_1007F6DB4(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_100045B14(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v9, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v8, object, count);
    xpc_release(object[0]);
    for (i = v10; i != v8[1] || v9 != v8[0]; i = ++v10)
    {
      v7 = 0;
      object[0] = &v9;
      object[1] = i;
      sub_10003EAD4(object, &v7);
      if (xpc_get_type(v7) == &_xpc_type_dictionary)
      {
        v13 = 0;
        *object = 0u;
        *__p = 0u;
        v6 = v7;
        if (v7)
        {
          xpc_retain(v7);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1007F709C(object, &v6);
        xpc_release(v6);
        sub_1007F7234(a1, object);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p[0]);
        }
      }

      xpc_release(v7);
    }

    xpc_release(v8[0]);
    xpc_release(v9);
  }

  xpc_release(v3);
}

void sub_1007F6FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t a10, xpc_object_t a11, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t object, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1007F709C(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  v7 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v7 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    __p = &v7;
    v11 = "first";
    sub_100006354(&__p, object);
    ctu::rest::detail::read_raw_binary_value(a1, 0x10, object, v4);
    xpc_release(object[0]);
    v5[0] = &v7;
    v5[1] = "second";
    sub_100006354(v5, &v6);
    __p = 0;
    v11 = 0;
    v12 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }

    *(a1 + 16) = *object;
    *(a1 + 32) = v9;
    xpc_release(v6);
    v3 = v7;
  }

  xpc_release(v3);
}

void sub_1007F71D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, xpc_object_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F7234(uint64_t a1, unsigned __int8 *a2)
{
  v4 = 0;
  v2 = *sub_100175454(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1007F73B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1007F7468(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E81950;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1007F74A0(void *a1, xpc_object_t *a2)
{
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  sub_100645F00(&v6, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v3(v5, &v6);
  sub_1000DD0AC(&v6, v7[0]);
}

uint64_t sub_1007F7550(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F759C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_1007F7634(void *a1)
{
  *a1 = off_101E819D0;
  sub_1007F6394((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1007F7684(void *a1)
{
  *a1 = off_101E819D0;
  sub_1007F6394((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1007F777C(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F779C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E819D0;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_1007F759C(a2 + 32, a1 + 32);
}

void sub_1007F7808(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F7828(void *a1)
{
  sub_1007F7B8C(a1 + 8);

  operator delete(a1);
}

void sub_1007F7864(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 1);
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  v8 = *(a1 + 8);
  v10 = v8;
  v7 = *(a1 + 24);
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = v5;
  v13 = 0uLL;
  v14 = 0;
  sub_10045B0C8(&v13, v4, v6, 0x6DB6DB6DB6DB6DB7 * ((v6 - v4) >> 3));
  sub_1007F759C(&v15, a1 + 32);
  v9[0] = 0;
  v9[1] = 0;
  sub_100004AA0(v9, (v8 + 16));
  operator new();
}

void sub_1007F7A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1007F7AC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F7B0C(uint64_t a1, uint64_t a2)
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

void sub_1007F7B8C(uint64_t a1)
{
  sub_1007F6394(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t *sub_1007F7BD8(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        if (*(v1 + 24))
        {
          v9 = 0;
          v10 = 0;
          v11 = 0;
          sub_1007F5B18(v3, (v1 + 32), &v9);
          sub_10010E44C(v1 + 56, &v9, 0);
          v12 = &v9;
        }

        else
        {
          if (os_log_type_enabled(*(v3 + 48), OS_LOG_TYPE_ERROR))
          {
            sub_1017802D8();
          }

          v9 = 0;
          v10 = 0;
          v11 = 0;
          sub_10010E44C(v1 + 56, &v9, 1);
          v12 = &v9;
        }

        sub_100111BA8(&v12);
      }

      sub_100004A34(v5);
    }
  }

  sub_1007F7D00(&v8);
  return sub_1000049E0(&v7);
}

void sub_1007F7CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  sub_100111BA8(&a14);
  sub_100004A34(v14);
  sub_1007F7D00(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007F7D00(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1007F6394(v1 + 56);
    v3 = (v1 + 32);
    sub_10027B3D0(&v3);
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

double sub_1007F7D74(uint64_t a1)
{
  *a1 = off_101E81A50;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

void sub_1007F7DA4(uint64_t a1)
{
  *a1 = off_101E81A50;
  v4 = *(a1 + 32);
  v2 = (a1 + 32);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  sub_100140928((a1 + 24), 0);
  sub_100140928((a1 + 16), 0);
  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5)
  {
    sub_100140988(a1 + 8, v5);
  }

  PB::Base::~Base(a1);
}

void sub_1007F7E34(uint64_t a1)
{
  sub_1007F7DA4(a1);

  operator delete();
}

uint64_t sub_1007F7E6C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 44))
  {
    PB::TextFormatter::format(this, "consentState", *(a1 + 40));
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    PB::TextFormatter::format(this, "sourceCsn", v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    PB::TextFormatter::format(this, "targetCsn", v6);
  }

  if (*(a1 + 32))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007F7F2C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_57;
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
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
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

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          operator new();
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
          case 3:
            operator new();
          case 4:
            *(a1 + 44) |= 1u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v32 = 0;
              v33 = 0;
              v28 = 0;
              v17 = v23 >= v24;
              v34 = v23 - v24;
              if (!v17)
              {
                v34 = 0;
              }

              v35 = (v25 + v24);
              v36 = v24 + 1;
              while (1)
              {
                if (!v34)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_52;
                }

                v37 = *v35;
                *(this + 1) = v36;
                v28 |= (v37 & 0x7F) << v32;
                if ((v37 & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                --v34;
                ++v35;
                ++v36;
                v14 = v33++ > 8;
                if (v14)
                {
LABEL_48:
                  LODWORD(v28) = 0;
                  goto LABEL_52;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
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
                  goto LABEL_48;
                }
              }
            }

LABEL_52:
            *(a1 + 40) = v28;
            goto LABEL_53;
          case 5:
            operator new();
        }
      }

      if (!PB::Reader::skip(this, v22, v10 & 7, 0))
      {
        v39 = 0;
        return v39 & 1;
      }

LABEL_53:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_57:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_1007F82EC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 24);
  if (v5)
  {
    result = PB::Writer::write(this, v5, 2u);
  }

  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 44))
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 40), 4u);
  }

  if (*(v3 + 32))
  {

    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_1007F8390(uint64_t result)
{
  *result = off_101E81AA0;
  *(result + 8) = 0;
  *(result + 20) = 0;
  return result;
}

void sub_1007F83B4(void ***a1)
{
  *a1 = off_101E81AA0;
  sub_100140928(a1 + 1, 0);

  PB::Base::~Base(a1);
}

void sub_1007F840C(void ***a1)
{
  *a1 = off_101E81AA0;
  sub_100140928(a1 + 1, 0);
  PB::Base::~Base(a1);

  operator delete();
}

uint64_t sub_1007F8478(uint64_t result, uint64_t a2)
{
  *result = off_101E81AA0;
  *(result + 8) = 0;
  *(result + 20) = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 20))
  {
    v2 = *(a2 + 16);
    *(result + 20) |= 1u;
    *(result + 16) = v2;
  }

  return result;
}

uint64_t sub_1007F8544(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  if (*(a1 + 20))
  {
    PB::TextFormatter::format(this, "userConsent", *(a1 + 16));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007F85BC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_50;
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
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
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

      v22 = v10 >> 3;
      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 1u;
        v24 = *(this + 1);
        v23 = *(this + 2);
        v25 = *this;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v34 = v23 - v24;
          if (!v17)
          {
            v34 = 0;
          }

          v35 = (v25 + v24);
          v36 = v24 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
              goto LABEL_45;
            }

            v37 = *v35;
            *(this + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            --v34;
            ++v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_41:
              LODWORD(v28) = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v28) = 0;
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
              goto LABEL_41;
            }
          }
        }

LABEL_45:
        *(a1 + 16) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this, v22, v10 & 7, 0))
        {
          v39 = 0;
          return v39 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_50:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_1007F8878(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  if (*(v3 + 20))
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(this, v5, 2u);
  }

  return result;
}

uint64_t sub_1007F88E0(uint64_t a1, os_log_t *a2)
{
  v3 = sub_10018A6D0(a1, a2);
  *v3 = &off_101E81AF0;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  v4 = **(v3 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10178030C(v4);
  }

  return a1;
}

uint64_t sub_1007F8954(uint64_t a1)
{
  *a1 = &off_101E2DE48;
  v3 = (a1 + 168);
  sub_1000087B4(&v3);
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v3 = (a1 + 88);
  sub_1000087B4(&v3);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = off_101EA6458;
  sub_10018D34C(a1 + 16);
  return a1;
}

uint64_t sub_1007F8A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10018A758(a1, a2);
  *v4 = &off_101E81AF0;
  *(v4 + 192) = 0u;
  v5 = (v4 + 192);
  *(v4 + 208) = 0u;
  *(v4 + 224) = 0u;
  std::string::operator=((v4 + 192), (a2 + 192));
  if (a1 != a2)
  {
    sub_1001122C4((a1 + 216), *(a2 + 216), *(a2 + 224), *(a2 + 224) - *(a2 + 216));
  }

  v6 = **(a1 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = (*(*a1 + 32))(a1);
    v9 = v5;
    if (*(a1 + 215) < 0)
    {
      v9 = *v5;
    }

    ctu::hex();
    if (v12 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315906;
    v14 = v8;
    v15 = 2080;
    v16 = ", ";
    v17 = 2080;
    v18 = v9;
    v19 = 2080;
    v20 = p_p;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "#D %s%scloned StandardDigestAuthScheme, nonce:%s, password:%s", buf, 0x2Au);
    if (v12 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_1007F8BB4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 216);
  if (v4)
  {
    *(v1 + 224) = v4;
    operator delete(v4);
  }

  if (*(v1 + 215) < 0)
  {
    operator delete(*v2);
  }

  sub_1007F8954(v1);
  _Unwind_Resume(a1);
}

BOOL sub_1007F8C38(uint64_t a1)
{
  v1 = *(a1 + 215);
  if (v1 < 0)
  {
    v1 = *(a1 + 200);
  }

  return v1 != 0;
}

void sub_1007F8C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = **(a1 + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = (*(*a1 + 32))(a1);
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if (*(a4 + 23) >= 0)
    {
      v12 = a4;
    }

    else
    {
      v12 = *a4;
    }

    v13 = 136316162;
    v14 = v9;
    v15 = 2080;
    v16 = ", ";
    v17 = 2080;
    v18 = v10;
    v19 = 2080;
    v20 = v11;
    v21 = 2080;
    v22 = v12;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#D %s%scomputeResponse, '%s', '%s', '%s'", &v13, 0x34u);
  }

  sub_10018CA14(a1, a2, a3, a4, *(a1 + 216), (*(a1 + 224) - *(a1 + 216)));
}

uint64_t sub_1007F8DE0(uint64_t a1)
{
  *a1 = &off_101E81AF0;
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  return sub_1007F8954(a1);
}

void sub_1007F8E50(uint64_t a1)
{
  *a1 = &off_101E81AF0;
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  *a1 = &off_101E2DE48;
  v3 = (a1 + 168);
  sub_1000087B4(&v3);
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v3 = (a1 + 88);
  sub_1000087B4(&v3);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = off_101EA6458;
  sub_10018D34C(a1 + 16);
  operator delete();
}

uint64_t sub_1007F8FD4(uint64_t result)
{
  *(result + 28) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &off_101E81BA0;
  return result;
}

void sub_1007F8FFC(PB::Base *this)
{
  *this = &off_101E81BA0;
  v4 = *(this + 2);
  v2 = (this + 16);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    sub_100140988(this + 8, v5);
  }

  PB::Base::~Base(this);
}

void sub_1007F9074(PB::Base *a1)
{
  sub_1007F8FFC(a1);

  operator delete();
}

uint64_t sub_1007F90AC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 28))
  {
    PB::TextFormatter::format(this, "error", *(a1 + 24));
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 16))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007F913C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_52;
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
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
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

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        operator new();
      }

      if (v22 == 2)
      {
        *(a1 + 28) |= 1u;
        v24 = *(this + 1);
        v23 = *(this + 2);
        v25 = *this;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v34 = v23 - v24;
          if (!v17)
          {
            v34 = 0;
          }

          v35 = (v25 + v24);
          v36 = v24 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
              goto LABEL_47;
            }

            v37 = *v35;
            *(this + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            --v34;
            ++v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_43:
              LODWORD(v28) = 0;
              goto LABEL_47;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v28) = 0;
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
              goto LABEL_43;
            }
          }
        }

LABEL_47:
        *(a1 + 24) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this, v22, v10 & 7, 0))
        {
          v39 = 0;
          return v39 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_52:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_1007F945C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 8))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 28))
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 24), 2u);
  }

  if (*(v3 + 16))
  {

    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_1007F94D8(uint64_t result)
{
  *result = off_101E81BF0;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_1007F94FC(void ***a1)
{
  *a1 = off_101E81BF0;
  sub_100140928(a1 + 1, 0);

  PB::Base::~Base(a1);
}

void sub_1007F9554(void ***a1)
{
  *a1 = off_101E81BF0;
  sub_100140928(a1 + 1, 0);
  PB::Base::~Base(a1);

  operator delete();
}

uint64_t sub_1007F95C0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 16));
    v6 = *(a1 + 24);
  }

  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(this, "result", *(a1 + 20));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007F9654(uint64_t a1, PB::Reader *this)
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
            goto LABEL_55;
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
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
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

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 24) |= 1u;
        v28 = *(this + 1);
        v27 = *(this + 2);
        v29 = *this;
        if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
        {
          v36 = 0;
          v37 = 0;
          v32 = 0;
          v17 = v27 >= v28;
          v38 = v27 - v28;
          if (!v17)
          {
            v38 = 0;
          }

          v39 = (v29 + v28);
          v40 = v28 + 1;
          while (1)
          {
            if (!v38)
            {
              LODWORD(v32) = 0;
              *(this + 24) = 1;
              goto LABEL_50;
            }

            v41 = *v39;
            *(this + 1) = v40;
            v32 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            --v38;
            ++v39;
            ++v40;
            v14 = v37++ > 8;
            if (v14)
            {
LABEL_46:
              LODWORD(v32) = 0;
              goto LABEL_50;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v32) = 0;
          }
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = (v29 + v28);
          v34 = v28 + 1;
          while (1)
          {
            *(this + 1) = v34;
            v35 = *v33++;
            v32 |= (v35 & 0x7F) << v30;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            ++v34;
            v14 = v31++ > 8;
            if (v14)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_50:
        *(a1 + 16) = v32;
      }

      else if (v22 == 2)
      {
        *(a1 + 24) |= 2u;
        v23 = *(this + 1);
        if (v23 >= *(this + 2))
        {
          v26 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v24 = v23 + 1;
          v25 = *(*this + v23);
          *(this + 1) = v24;
          v26 = v25 != 0;
        }

        *(a1 + 20) = v26;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this, v22, v10 & 7, 0))
        {
          v43 = 0;
          return v43 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_55:
  v43 = v4 ^ 1;
  return v43 & 1;
}

uint64_t sub_1007F995C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 24);
  if ((v5 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 20), 2u);
    v5 = *(v3 + 24);
  }

  if (v5)
  {
    v6 = *(v3 + 16);

    return PB::Writer::writeVarInt(this, v6, 3u);
  }

  return result;
}

uint64_t sub_1007F99DC(uint64_t result)
{
  *result = off_101E81C40;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_1007F9A00(void ***a1)
{
  *a1 = off_101E81C40;
  sub_100140928(a1 + 1, 0);

  PB::Base::~Base(a1);
}

void sub_1007F9A58(void ***a1)
{
  *a1 = off_101E81C40;
  sub_100140928(a1 + 1, 0);
  PB::Base::~Base(a1);

  operator delete();
}

uint64_t sub_1007F9AC4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 16));
    v6 = *(a1 + 24);
  }

  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(this, "result", *(a1 + 20));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007F9B58(uint64_t a1, PB::Reader *this)
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
            goto LABEL_55;
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
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
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

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 24) |= 1u;
        v28 = *(this + 1);
        v27 = *(this + 2);
        v29 = *this;
        if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
        {
          v36 = 0;
          v37 = 0;
          v32 = 0;
          v17 = v27 >= v28;
          v38 = v27 - v28;
          if (!v17)
          {
            v38 = 0;
          }

          v39 = (v29 + v28);
          v40 = v28 + 1;
          while (1)
          {
            if (!v38)
            {
              LODWORD(v32) = 0;
              *(this + 24) = 1;
              goto LABEL_50;
            }

            v41 = *v39;
            *(this + 1) = v40;
            v32 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            --v38;
            ++v39;
            ++v40;
            v14 = v37++ > 8;
            if (v14)
            {
LABEL_46:
              LODWORD(v32) = 0;
              goto LABEL_50;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v32) = 0;
          }
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = (v29 + v28);
          v34 = v28 + 1;
          while (1)
          {
            *(this + 1) = v34;
            v35 = *v33++;
            v32 |= (v35 & 0x7F) << v30;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            ++v34;
            v14 = v31++ > 8;
            if (v14)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_50:
        *(a1 + 16) = v32;
      }

      else if (v22 == 2)
      {
        *(a1 + 24) |= 2u;
        v23 = *(this + 1);
        if (v23 >= *(this + 2))
        {
          v26 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v24 = v23 + 1;
          v25 = *(*this + v23);
          *(this + 1) = v24;
          v26 = v25 != 0;
        }

        *(a1 + 20) = v26;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this, v22, v10 & 7, 0))
        {
          v43 = 0;
          return v43 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_55:
  v43 = v4 ^ 1;
  return v43 & 1;
}

uint64_t sub_1007F9E60(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 24);
  if ((v5 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 20), 2u);
    v5 = *(v3 + 24);
  }

  if (v5)
  {
    v6 = *(v3 + 16);

    return PB::Writer::writeVarInt(this, v6, 3u);
  }

  return result;
}

uint64_t sub_1007F9EE0(uint64_t result)
{
  *(result + 40) = 0;
  *result = &off_101E81C90;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_1007F9F08(PB::Base *this)
{
  *this = &off_101E81C90;
  v4 = *(this + 3);
  v2 = (this + 24);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    sub_100140988(this + 16, v5);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    sub_100140988(this + 8, v6);
  }

  PB::Base::~Base(this);
}

void sub_1007F9F94(PB::Base *a1)
{
  sub_1007F9F08(a1);

  operator delete();
}

uint64_t sub_1007F9FCC(uint64_t result, uint64_t a2)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &off_101E81C90;
  *(result + 24) = 0;
  *(result + 40) = 0;
  if (*(a2 + 40))
  {
    v2 = *(a2 + 32);
    *(result + 40) = 1;
    *(result + 32) = v2;
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    operator new();
  }

  if ((*(a2 + 40) & 2) != 0)
  {
    v3 = *(a2 + 36);
    *(result + 40) |= 2u;
    *(result + 36) = v3;
  }

  return result;
}

uint64_t sub_1007FA1A4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 16))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 24))
  {
    PB::TextFormatter::format();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "status", *(a1 + 32));
    v5 = *(a1 + 40);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "type", *(a1 + 36));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007FA268(uint64_t a1, PB::Reader *this)
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
            goto LABEL_75;
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
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
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

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 40) |= 1u;
          v33 = *(this + 1);
          v32 = *(this + 2);
          v34 = *this;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v41 = 0;
            v42 = 0;
            v37 = 0;
            v17 = v32 >= v33;
            v43 = v32 - v33;
            if (!v17)
            {
              v43 = 0;
            }

            v44 = (v34 + v33);
            v45 = v33 + 1;
            while (1)
            {
              if (!v43)
              {
                LODWORD(v37) = 0;
                *(this + 24) = 1;
                goto LABEL_67;
              }

              v46 = *v44;
              *(this + 1) = v45;
              v37 |= (v46 & 0x7F) << v41;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              --v43;
              ++v44;
              ++v45;
              v14 = v42++ > 8;
              if (v14)
              {
LABEL_54:
                LODWORD(v37) = 0;
                goto LABEL_67;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v37) = 0;
            }
          }

          else
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            while (1)
            {
              *(this + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
              if (v14)
              {
                goto LABEL_54;
              }
            }
          }

LABEL_67:
          *(a1 + 32) = v37;
          goto LABEL_71;
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
          case 3:
            operator new();
          case 4:
            operator new();
          case 5:
            *(a1 + 40) |= 2u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v47 = 0;
              v48 = 0;
              v28 = 0;
              v17 = v23 >= v24;
              v49 = v23 - v24;
              if (!v17)
              {
                v49 = 0;
              }

              v50 = (v25 + v24);
              v51 = v24 + 1;
              while (1)
              {
                if (!v49)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_70;
                }

                v52 = *v50;
                *(this + 1) = v51;
                v28 |= (v52 & 0x7F) << v47;
                if ((v52 & 0x80) == 0)
                {
                  break;
                }

                v47 += 7;
                --v49;
                ++v50;
                ++v51;
                v14 = v48++ > 8;
                if (v14)
                {
LABEL_62:
                  LODWORD(v28) = 0;
                  goto LABEL_70;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
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
                  goto LABEL_62;
                }
              }
            }

LABEL_70:
            *(a1 + 36) = v28;
            goto LABEL_71;
        }
      }

      if (!PB::Reader::skip(this, v22, v10 & 7, 0))
      {
        v54 = 0;
        return v54 & 1;
      }

LABEL_71:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_75:
  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t sub_1007FA6D8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 40))
  {
    result = PB::Writer::writeVarInt(this, *(result + 32), 1u);
  }

  if (*(v3 + 16))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 24))
  {
    result = PB::Writer::write();
  }

  if ((*(v3 + 40) & 2) != 0)
  {
    v4 = *(v3 + 36);

    return PB::Writer::writeVarInt(this, v4, 5u);
  }

  return result;
}

double sub_1007FA780(uint64_t a1)
{
  *a1 = off_101E81CE0;
  *(a1 + 76) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

void sub_1007FA7B8(uint64_t a1)
{
  *a1 = off_101E81CE0;
  v4 = *(a1 + 64);
  v2 = (a1 + 64);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v5)
  {
    sub_100140988(a1 + 56, v5);
  }

  v6 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v6)
  {
    sub_100140988(a1 + 48, v6);
  }

  v8 = (a1 + 24);
  sub_1000087B4(&v8);
  sub_100140928((a1 + 16), 0);
  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v7)
  {
    sub_100140988(a1 + 8, v7);
  }

  PB::Base::~Base(a1);
}

void sub_1007FA870(uint64_t a1)
{
  sub_1007FA7B8(a1);

  operator delete();
}

uint64_t sub_1007FA8A8(uint64_t a1, uint64_t a2)
{
  *a1 = off_101E81CE0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 76) = 0;
  *(a1 + 40) = 0u;
  if (*(a2 + 16))
  {
    operator new();
  }

  if (*(a2 + 64))
  {
    operator new();
  }

  if (*(a2 + 56))
  {
    operator new();
  }

  if (*(a2 + 48))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (a1 != a2)
  {
    sub_100008234((a1 + 24), *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  }

  v4 = *(a2 + 76);
  if ((v4 & 2) != 0)
  {
    v5 = *(a2 + 73);
    *(a1 + 76) |= 2u;
    *(a1 + 73) = v5;
    v4 = *(a2 + 76);
  }

  if (v4)
  {
    v6 = *(a2 + 72);
    *(a1 + 76) |= 1u;
    *(a1 + 72) = v6;
  }

  return a1;
}

uint64_t sub_1007FAB80(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  if (*(a1 + 76))
  {
    PB::TextFormatter::format(this, "forceUserConsent", *(a1 + 72));
  }

  v6 = *(a1 + 24);
  for (i = *(a1 + 32); v6 != i; v6 += 24)
  {
    PB::TextFormatter::format();
  }

  if ((*(a1 + 76) & 2) != 0)
  {
    PB::TextFormatter::format(this, "localErrorRecovery", *(a1 + 73));
  }

  if (*(a1 + 48))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 56))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 64))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007FACB4(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    v7 = (a1 + 24);
    do
    {
      v8 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v16 = 0;
        v17 = 0;
        v11 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v8 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_64;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v11 |= (v22 & 0x7F) << v16;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v19;
          ++v20;
          ++v21;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v11 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v11 = 0;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = (v8 + v2);
        v13 = v2 + 1;
        while (1)
        {
          *(this + 1) = v13;
          v14 = *v12++;
          v11 |= (v14 & 0x7F) << v9;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v9 += 7;
          ++v13;
          v15 = v10++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v11 & 7) == 4))
      {
        break;
      }

      v23 = v11 >> 3;
      if ((v11 >> 3) > 5)
      {
        if (v23 > 7)
        {
          if (v23 == 8)
          {
            *(a1 + 76) |= 2u;
            v31 = *(this + 1);
            if (v31 >= *(this + 2))
            {
              v34 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v32 = v31 + 1;
              v33 = *(*this + v31);
              *(this + 1) = v32;
              v34 = v33 != 0;
            }

            *(a1 + 73) = v34;
            goto LABEL_42;
          }

          if (v23 == 9)
          {
            *(a1 + 76) |= 1u;
            v27 = *(this + 1);
            if (v27 >= *(this + 2))
            {
              v30 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v28 = v27 + 1;
              v29 = *(*this + v27);
              *(this + 1) = v28;
              v30 = v29 != 0;
            }

            *(a1 + 72) = v30;
            goto LABEL_42;
          }
        }

        else
        {
          if (v23 == 6)
          {
            operator new();
          }

          if (v23 == 7)
          {
            v24 = *(a1 + 32);
            v25 = *(a1 + 40);
            if (v24 >= v25)
            {
              v35 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *v7) >> 3);
              v36 = v35 + 1;
              if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_1000CE3D4();
              }

              v37 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v7) >> 3);
              if (2 * v37 > v36)
              {
                v36 = 2 * v37;
              }

              if (v37 >= 0x555555555555555)
              {
                v38 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v38 = v36;
              }

              v47[4] = v7;
              if (v38)
              {
                sub_100005348(v7, v38);
              }

              v39 = 24 * v35;
              *v39 = 0;
              *(v39 + 8) = 0;
              *(v39 + 16) = 0;
              v26 = 24 * v35 + 24;
              v40 = *(a1 + 24);
              v41 = *(a1 + 32) - v40;
              v42 = 24 * v35 - v41;
              memcpy((v39 - v41), v40, v41);
              v43 = *(a1 + 24);
              *(a1 + 24) = v42;
              *(a1 + 32) = v26;
              v44 = *(a1 + 40);
              *(a1 + 40) = 0;
              v47[2] = v43;
              v47[3] = v44;
              v47[0] = v43;
              v47[1] = v43;
              sub_1000054E0(v47);
            }

            else
            {
              *v24 = 0;
              v24[1] = 0;
              v26 = (v24 + 3);
              v24[2] = 0;
            }

            *(a1 + 32) = v26;
            PB::Reader::read();
            goto LABEL_42;
          }
        }
      }

      else if (v23 > 3)
      {
        if (v23 == 4)
        {
          operator new();
        }

        if (v23 == 5)
        {
          operator new();
        }
      }

      else
      {
        if (v23 == 1)
        {
          operator new();
        }

        if (v23 == 3)
        {
          operator new();
        }
      }

      if (!PB::Reader::skip(this, v23, v11 & 7, 0))
      {
        v46 = 0;
        return v46 & 1;
      }

LABEL_42:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_64:
  v46 = v4 ^ 1;
  return v46 & 1;
}

uint64_t sub_1007FB1A0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  if (*(v3 + 64))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 56))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 48))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  while (v5 != v6)
  {
    result = PB::Writer::write();
    v5 += 24;
  }

  v7 = *(v3 + 76);
  if ((v7 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 73), 8u);
    v7 = *(v3 + 76);
  }

  if (v7)
  {
    v8 = *(v3 + 72);

    return PB::Writer::write(this, v8, 9u);
  }

  return result;
}

double sub_1007FB2A0(uint64_t a1)
{
  *a1 = off_101E81D30;
  *(a1 + 68) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

void sub_1007FB2D4(uint64_t a1)
{
  *a1 = off_101E81D30;
  v4 = (a1 + 24);
  sub_100140868(&v4);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    sub_100140988(a1 + 16, v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    sub_100140988(a1 + 8, v3);
  }

  PB::Base::~Base(a1);
}

void sub_1007FB35C(uint64_t a1)
{
  sub_1007FB2D4(a1);

  operator delete();
}

uint64_t sub_1007FB394(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if (v5)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 48));
    v5 = *(a1 + 68);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "gsmaSgp22Version", *(a1 + 52));
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 16))
  {
    PB::TextFormatter::format();
  }

  v6 = *(a1 + 68);
  if ((v6 & 4) != 0)
  {
    PB::TextFormatter::format(this, "pendingInstallStatus", *(a1 + 56));
    v6 = *(a1 + 68);
    if ((v6 & 8) == 0)
    {
LABEL_11:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 68) & 8) == 0)
  {
    goto LABEL_11;
  }

  PB::TextFormatter::format(this, "radio_sku", *(a1 + 60));
  if ((*(a1 + 68) & 0x10) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "simAllianceProfileVersion", *(a1 + 64));
  }

LABEL_13:
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, this, "slotInfo");
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007FB4F4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_137;
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
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
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

      v22 = v10 >> 3;
      if ((v10 >> 3) > 5)
      {
        if (v22 > 7)
        {
          if (v22 == 8)
          {
            *(a1 + 68) |= 2u;
            v60 = *(this + 1);
            v59 = *(this + 2);
            v61 = *this;
            if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v59)
            {
              v74 = 0;
              v75 = 0;
              v64 = 0;
              v17 = v59 >= v60;
              v76 = v59 - v60;
              if (!v17)
              {
                v76 = 0;
              }

              v77 = (v61 + v60);
              v78 = v60 + 1;
              while (1)
              {
                if (!v76)
                {
                  LODWORD(v64) = 0;
                  *(this + 24) = 1;
                  goto LABEL_123;
                }

                v79 = *v77;
                *(this + 1) = v78;
                v64 |= (v79 & 0x7F) << v74;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v74 += 7;
                --v76;
                ++v77;
                ++v78;
                v14 = v75++ > 8;
                if (v14)
                {
LABEL_88:
                  LODWORD(v64) = 0;
                  goto LABEL_123;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v64) = 0;
              }
            }

            else
            {
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v65 = (v61 + v60);
              v66 = v60 + 1;
              while (1)
              {
                *(this + 1) = v66;
                v67 = *v65++;
                v64 |= (v67 & 0x7F) << v62;
                if ((v67 & 0x80) == 0)
                {
                  break;
                }

                v62 += 7;
                ++v66;
                v14 = v63++ > 8;
                if (v14)
                {
                  goto LABEL_88;
                }
              }
            }

LABEL_123:
            *(a1 + 52) = v64;
            goto LABEL_133;
          }

          if (v22 == 9)
          {
            *(a1 + 68) |= 0x10u;
            v42 = *(this + 1);
            v41 = *(this + 2);
            v43 = *this;
            if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
            {
              v92 = 0;
              v93 = 0;
              v46 = 0;
              v17 = v41 >= v42;
              v94 = v41 - v42;
              if (!v17)
              {
                v94 = 0;
              }

              v95 = (v43 + v42);
              v96 = v42 + 1;
              while (1)
              {
                if (!v94)
                {
                  LODWORD(v46) = 0;
                  *(this + 24) = 1;
                  goto LABEL_132;
                }

                v97 = *v95;
                *(this + 1) = v96;
                v46 |= (v97 & 0x7F) << v92;
                if ((v97 & 0x80) == 0)
                {
                  break;
                }

                v92 += 7;
                --v94;
                ++v95;
                ++v96;
                v14 = v93++ > 8;
                if (v14)
                {
LABEL_112:
                  LODWORD(v46) = 0;
                  goto LABEL_132;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v46) = 0;
              }
            }

            else
            {
              v44 = 0;
              v45 = 0;
              v46 = 0;
              v47 = (v43 + v42);
              v48 = v42 + 1;
              while (1)
              {
                *(this + 1) = v48;
                v49 = *v47++;
                v46 |= (v49 & 0x7F) << v44;
                if ((v49 & 0x80) == 0)
                {
                  break;
                }

                v44 += 7;
                ++v48;
                v14 = v45++ > 8;
                if (v14)
                {
                  goto LABEL_112;
                }
              }
            }

LABEL_132:
            *(a1 + 64) = v46;
            goto LABEL_133;
          }
        }

        else
        {
          if (v22 == 6)
          {
            operator new();
          }

          if (v22 == 7)
          {
            *(a1 + 68) |= 8u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v80 = 0;
              v81 = 0;
              v28 = 0;
              v17 = v23 >= v24;
              v82 = v23 - v24;
              if (!v17)
              {
                v82 = 0;
              }

              v83 = (v25 + v24);
              v84 = v24 + 1;
              while (1)
              {
                if (!v82)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_126;
                }

                v85 = *v83;
                *(this + 1) = v84;
                v28 |= (v85 & 0x7F) << v80;
                if ((v85 & 0x80) == 0)
                {
                  break;
                }

                v80 += 7;
                --v82;
                ++v83;
                ++v84;
                v14 = v81++ > 8;
                if (v14)
                {
LABEL_96:
                  LODWORD(v28) = 0;
                  goto LABEL_126;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
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
                  goto LABEL_96;
                }
              }
            }

LABEL_126:
            *(a1 + 60) = v28;
            goto LABEL_133;
          }
        }
      }

      else if (v22 > 3)
      {
        if (v22 == 4)
        {
          *(a1 + 68) |= 1u;
          v51 = *(this + 1);
          v50 = *(this + 2);
          v52 = *this;
          if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
          {
            v68 = 0;
            v69 = 0;
            v55 = 0;
            v17 = v50 >= v51;
            v70 = v50 - v51;
            if (!v17)
            {
              v70 = 0;
            }

            v71 = (v52 + v51);
            v72 = v51 + 1;
            while (1)
            {
              if (!v70)
              {
                LODWORD(v55) = 0;
                *(this + 24) = 1;
                goto LABEL_120;
              }

              v73 = *v71;
              *(this + 1) = v72;
              v55 |= (v73 & 0x7F) << v68;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              --v70;
              ++v71;
              ++v72;
              v14 = v69++ > 8;
              if (v14)
              {
LABEL_80:
                LODWORD(v55) = 0;
                goto LABEL_120;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v55) = 0;
            }
          }

          else
          {
            v53 = 0;
            v54 = 0;
            v55 = 0;
            v56 = (v52 + v51);
            v57 = v51 + 1;
            while (1)
            {
              *(this + 1) = v57;
              v58 = *v56++;
              v55 |= (v58 & 0x7F) << v53;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              ++v57;
              v14 = v54++ > 8;
              if (v14)
              {
                goto LABEL_80;
              }
            }
          }

LABEL_120:
          *(a1 + 48) = v55;
          goto LABEL_133;
        }

        if (v22 == 5)
        {
          *(a1 + 68) |= 4u;
          v33 = *(this + 1);
          v32 = *(this + 2);
          v34 = *this;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v86 = 0;
            v87 = 0;
            v37 = 0;
            v17 = v32 >= v33;
            v88 = v32 - v33;
            if (!v17)
            {
              v88 = 0;
            }

            v89 = (v34 + v33);
            v90 = v33 + 1;
            while (1)
            {
              if (!v88)
              {
                LODWORD(v37) = 0;
                *(this + 24) = 1;
                goto LABEL_129;
              }

              v91 = *v89;
              *(this + 1) = v90;
              v37 |= (v91 & 0x7F) << v86;
              if ((v91 & 0x80) == 0)
              {
                break;
              }

              v86 += 7;
              --v88;
              ++v89;
              ++v90;
              v14 = v87++ > 8;
              if (v14)
              {
LABEL_104:
                LODWORD(v37) = 0;
                goto LABEL_129;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v37) = 0;
            }
          }

          else
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            while (1)
            {
              *(this + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
              if (v14)
              {
                goto LABEL_104;
              }
            }
          }

LABEL_129:
          *(a1 + 56) = v37;
          goto LABEL_133;
        }
      }

      else
      {
        if (v22 == 2)
        {
          operator new();
        }

        if (v22 == 3)
        {
          sub_1007E22A8();
        }
      }

      if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
      {
        v99 = 0;
        return v99 & 1;
      }

LABEL_133:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_137:
  v99 = v4 ^ 1;
  return v99 & 1;
}

uint64_t sub_1007FBC80(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 8))
  {
    result = PB::Writer::write();
  }

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6, 3u);
  }

  v7 = *(v3 + 68);
  if (v7)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 48), 4u);
    v7 = *(v3 + 68);
  }

  if ((v7 & 4) != 0)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 56), 5u);
  }

  if (*(v3 + 16))
  {
    result = PB::Writer::write();
  }

  v8 = *(v3 + 68);
  if ((v8 & 8) == 0)
  {
    if ((*(v3 + 68) & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    result = PB::Writer::writeVarInt(this, *(v3 + 52), 8u);
    if ((*(v3 + 68) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

  result = PB::Writer::writeVarInt(this, *(v3 + 60), 7u);
  v8 = *(v3 + 68);
  if ((v8 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  if ((v8 & 0x10) == 0)
  {
    return result;
  }

LABEL_18:
  v9 = *(v3 + 64);

  return PB::Writer::writeVarInt(this, v9, 9u);
}

void sub_1007FBD98(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v8 = v3;
  v4 = [v3 dataUsingEncoding:4];
  v5 = [v4 bytes];
  v6 = [v8 length];
  v7 = v6;
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v6;
  if (v6)
  {
    memmove(a2, v5, v6);
  }

  v7[a2] = 0;
}

id sub_1007FBEB4(uint64_t *a1)
{
  v2 = [[NSMutableArray alloc] initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3)];
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = (v3 + 24 * v4);
      if (*(v6 + 23) >= 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = *v6;
      }

      v8 = [NSString stringWithUTF8String:v7];
      [v2 setObject:v8 atIndexedSubscript:v4];

      v4 = v5;
      v3 = *a1;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v5++);
  }

  return v2;
}

void sub_1007FC188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_10001021C(&a9);

  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v19);

  _Unwind_Resume(a1);
}

void WebPushControllerImpl::handleWebPushConnected(WebPushControllerImpl *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void sub_1007FC468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_100004A34(v23);

  _Unwind_Resume(a1);
}

void WebPushControllerImpl::handleURLTokenUpdate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v5, *a2, *(a2 + 8));
  }

  else
  {
    *v5 = *a2;
    v5[2] = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 16);
  }

  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void sub_1007FC688(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 + 31) < 0)
  {
    operator delete(*v17);
  }

  sub_10004F058(a1);
}

void sub_1007FC7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v23);

  _Unwind_Resume(a1);
}

void WebPushControllerImpl::handleURLTokenError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    v8 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v10 = *(a3 + 16);
  }

  v11 = a4;
  v12[0] = 0;
  v12[1] = 0;
  sub_100004AA0(v12, (a1 + 8));
  operator new();
}

void sub_1007FCA20(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 31) < 0)
  {
    operator delete(*v16);
  }

  sub_10004F058(a1);
}

void sub_1007FCB38(_Unwind_Exception *a1)
{
  sub_100004A34(v3);

  _Unwind_Resume(a1);
}

void WebPushControllerImpl::handlePublicTokenUpdate(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void WebPushController::WebPushController(void *a1)
{
  v2 = a1 + 1;
  ctu::OsLogContext::OsLogContext(&v3, kCtLoggingSystemName, "apns.webpush");
  sub_1000F0604(v2, "WebPushController", QOS_CLASS_USER_INITIATED, &v3);
  ctu::OsLogContext::~OsLogContext(&v3);
  *a1 = off_101E81FE0;
  sub_1008005D4();
}

void sub_1007FCD14(_Unwind_Exception *a1)
{
  ctu::OsLogLogger::~OsLogLogger((v1 + 40));
  sub_1000C0544(v2);
  WebPushControllerInterface::~WebPushControllerInterface(v1);
  _Unwind_Resume(a1);
}

void WebPushController::~WebPushController(WebPushController *this)
{
  *this = off_101E81FE0;
  v2 = *(this + 7);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);

  WebPushControllerInterface::~WebPushControllerInterface(this);
}

{
  WebPushController::~WebPushController(this);

  operator delete();
}

void WebPushController::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1007FCF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  if (a12)
  {
    sub_101760EE4(a12);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPushControllerImpl::WebPushControllerImpl(uint64_t a1, NSObject **a2, uint64_t a3, uint64_t *a4)
{
  v8 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v18, kCtLoggingSystemName, "apns.webpush");
  sub_1001303E4(v8, a2, &v18);
  ctu::OsLogContext::~OsLogContext(&v18);
  *a1 = off_101E82028;
  *(a1 + 48) = *a3;
  v9 = *(a3 + 8);
  *(a1 + 56) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "WebPushController");
  v10 = *(a1 + 24);
  v15 = v10;
  if (v10)
  {
    dispatch_retain(v10);
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

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v11 = *a4;
  v12 = *(a3 + 8);
  v18.var0 = *a3;
  v18.var1.fRef = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  (*(*v11 + 24))(v11, &v18);
  if (v18.var1.fRef)
  {
    sub_100004A34(v18.var1.fRef);
  }

  *(a1 + 112) = *a4;
  v13 = a4[1];
  *(a1 + 120) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 176) = 1065353216;
  *(a1 + 208) = 0;
  *(a1 + 216) = 1;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  return a1;
}

void sub_1007FD160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  v22 = v19[11];
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = v19[9];
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = v19[7];
  if (v24)
  {
    sub_100004A34(v24);
  }

  ctu::OsLogLogger::~OsLogLogger((v19 + 5));
  sub_1000C0544(v20);
  WebPushListenerInterface::~WebPushListenerInterface(v19);
  _Unwind_Resume(a1);
}

void WebPushControllerImpl::dumpState_sync(WebPushControllerImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 224))
    {
      v3 = "";
    }

    else
    {
      v3 = "NOT ";
    }

    *buf = 136315138;
    v34 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I APSd connection: %sconnected", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(this + 17) enabledTopics];
    v5 = [v4 count];
    *buf = 134217984;
    v34 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Listening to %zu webpush topics", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [*(this + 17) enabledTopics];
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v9 = *v28;
    *&v8 = 138543362;
    v22 = v8;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(this + 5);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(*(&v27 + 1) + 8 * i);
          *buf = v22;
          v34 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Persisted webpush topic[enabled]: %{public}@", buf, 0xCu);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v13 = *(this + 5);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(this + 17) ignoredTopics];
    v15 = [v14 count];
    *buf = 134217984;
    v34 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Ignoring %zu webpush topics", buf, 0xCu);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = [*(this + 17) ignoredTopics];
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(this + 5);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(*(&v23 + 1) + 8 * j);
          *buf = 138543362;
          v34 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Persisted webpush topic[ignored]: %{public}@", buf, 0xCu);
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }
}

void WebPushControllerImpl::~WebPushControllerImpl(WebPushControllerImpl *this)
{
  *this = off_101E82028;
  v2 = *(this + 29);
  *(this + 29) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1002FED80(this + 184);
  sub_100800A28(this + 144);

  v3 = *(this + 15);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    sub_100004A34(v7);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);

  WebPushListenerInterface::~WebPushListenerInterface(this);
}

{
  WebPushControllerImpl::~WebPushControllerImpl(this);

  operator delete();
}

void WebPushControllerImpl::bootstrap_sync(WebPushControllerImpl *this)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(this + 6));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100800AA8();
}

void sub_1007FD754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007FD76C(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100800D00(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void WebPushControllerImpl::startup_sync(WebPushControllerImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting WebPush connection", buf, 2u);
  }

  v3 = [APSDelegate alloc];
  sub_100004AA0(&v14, this + 1);
  if (v14)
  {
    *buf = v14;
    v17 = v15;
    v4 = &v14;
  }

  else
  {
    v4 = buf;
  }

  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = v17;
  v18 = *buf;
  v19 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = [(APSDelegate *)v3 initWithPushController:&v18];
  v7 = *(this + 16);
  *(this + 16) = v6;

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  v8 = *(this + 14);
  v9 = APSEnvironmentProduction;
  v10 = *(this + 3);
  object = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = (*(*v8 + 16))(v8, v9, @"com.apple.aps.CommCenter.webpush", &object);
  v12 = *(this + 17);
  *(this + 17) = v11;

  if (object)
  {
    dispatch_release(object);
  }

  [*(this + 17) setDelegate:*(this + 16)];
  WebPushControllerImpl::initIdsServerBagPoller_sync(this);
}

void sub_1007FD950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void WebPushControllerImpl::initIdsServerBagPoller_sync(WebPushControllerImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing IDS Server Bag poller", buf, 2u);
  }

  v4 = this;
  v5 = 0;
  *buf = off_101E82438;
  v6 = buf;
  sub_1008014DC(this + 1);
}

void sub_1007FDB68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_10002B644(&a18);
  _Unwind_Resume(a1);
}

uint64_t WebPushControllerImpl::shutdown_sync(WebPushControllerImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Shutting down WebPush connection", v5, 2u);
  }

  v3 = *(this + 17);
  if (v3)
  {
    [v3 shutdown];
  }

  return ctu::RestModule::disconnect((this + 64));
}

void WebPushController::notifyServiceBootstrap(WebPushController *this, const group *a2)
{
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, this + 1);
  operator new();
}

void WebPushController::notifyServiceStart(WebPushController *this)
{
  sub_100004AA0(&v3, this + 1);
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v3 = 0;
  v4 = 0;
  sub_100004AA0(&v3, this + 1);
  operator new();
}

void WebPushController::notifyServiceShutdown(uint64_t a1, int a2, ServiceStage *this)
{
  ServiceStage::holdOffStage(&group[1], this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void WebPushController::registerObserver(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void WebPushController::deregisterObserver(WebPushController *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void WebPushController::subscribe(uint64_t a1, uint64_t a2, uint64_t *a3, char a4, std::__shared_weak_count **a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v10, *a2, *(a2 + 8));
  }

  else
  {
    *v10 = *a2;
    v11 = *(a2 + 16);
  }

  memset(__p, 0, sizeof(__p));
  sub_100034C50(__p, *a3, a3[1], a3[1] - *a3);
  v13 = a4;
  v9 = a5[1];
  v14[0] = *a5;
  v14[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15[0] = 0;
  v15[1] = 0;
  sub_100004AA0(v15, (a1 + 8));
  operator new();
}

void sub_1007FE2F8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 31) < 0)
  {
    operator delete(*v16);
  }

  sub_10004F058(a1);
}

void WebPushController::unsubscribe(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v5, *a2, *(a2 + 8));
  }

  else
  {
    *v5 = *a2;
    v5[2] = *(a2 + 16);
  }

  memset(__p, 0, sizeof(__p));
  sub_100034C50(__p, *a3, a3[1], a3[1] - *a3);
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void sub_1007FE4CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 + 31) < 0)
  {
    operator delete(*v17);
  }

  sub_10004F058(a1);
}

void WebPushController::ignoreAllPushTopics(WebPushController *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void WebPushControllerImpl::checkPushEnabled_sync(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Check PushEnabled called", buf, 2u);
  }

  v2 = 0;
  v3 = 0;
  *buf = "WebPushController";
  sub_100801D28();
}

void sub_1007FE8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, xpc_object_t object, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, xpc_object_t a39, char a40, uint64_t a41)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007FE9F4(uint64_t a1)
{
  sub_10000FF50(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void WebPushControllerImpl::subscribe_sync(uint64_t a1, uint64_t a2, void *a3, char a4, const void **a5)
{
  v29 = 0uLL;
  v30 = 0;
  std::operator+<char>();
  v9 = sub_10031B7D4((a1 + 144), &v29);
  v10 = v9;
  if (v9)
  {
    v11 = v9[6];
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = v10[5];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    v14 = a5[1];
    if (v14 && (v15 = std::__shared_weak_count::lock(v14)) != 0)
    {
      v16 = v13 == *a5;
      sub_100004A34(v15);
      if (!v12)
      {
LABEL_17:
        if (!v16)
        {
          v17 = *(a1 + 40);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = &v29;
            if (v30 < 0)
            {
              v18 = v29;
            }

            *__p = 136446210;
            *&__p[4] = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Updating webpush listener for %{public}s", __p, 0xCu);
          }

          v20 = *a5;
          v19 = a5[1];
          if (v19)
          {
            atomic_fetch_add_explicit(v19 + 2, 1uLL, memory_order_relaxed);
          }

          v21 = v10[6];
          v10[5] = v20;
          v10[6] = v19;
          if (v21)
          {
            std::__shared_weak_count::__release_weak(v21);
          }
        }

        goto LABEL_26;
      }
    }

    else
    {
      v16 = v13 == 0;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    sub_100004A34(v12);
    goto LABEL_17;
  }

  sub_100800528(__p, &v29, a5);
  sub_1008022D0((a1 + 144), __p);
  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  if (v32 < 0)
  {
    operator delete(*__p);
  }

LABEL_26:
  if (a4)
  {
    if (*(a1 + 224) == 1)
    {
      WebPushControllerImpl::enableTopicsFromListeners_sync(a1);
    }
  }

  else
  {
    v22 = *(a1 + 40);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = &v29;
      if (v30 < 0)
      {
        v23 = v29;
      }

      *__p = 136446210;
      *&__p[4] = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Subscribing to webpush topic: %{public}s", __p, 0xCu);
    }

    v24 = [APSURLTokenInfo alloc];
    if (v30 >= 0)
    {
      v25 = &v29;
    }

    else
    {
      v25 = v29;
    }

    v26 = [NSString stringWithUTF8String:v25];
    v27 = [NSData dataWithBytes:*a3 length:a3[1] - *a3];
    v28 = [v24 initWithTopic:v26 vapidPublicKey:v27];

    [*(a1 + 136) requestURLTokenForInfo:v28];
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }
}

void sub_1007FED10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WebPushControllerImpl::enableTopicsFromListeners_sync(WebPushControllerImpl *this)
{
  v2 = (this + 160);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    sub_100005308(&v6, v2 + 1);
  }

  if (v7 == v6)
  {
    [*(this + 17) _setEnabledTopics:0];
  }

  else
  {
    WebPushControllerImpl::clearIgnoredTopics_sync(this);
    v3 = sub_1007FBEB4(&v6);
    if (v3)
    {
      v4 = *(this + 5);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [v3 count];
        *buf = 134217984;
        *&buf[4] = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Enabling %zu webpush topics from listeners", buf, 0xCu);
      }

      [*(this + 17) _setEnabledTopics:v3];
    }
  }

  *buf = &v6;
  sub_1000087B4(buf);
}

void sub_1007FEE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_1000087B4(&a13);
  _Unwind_Resume(a1);
}

void WebPushControllerImpl::unsubscribe_sync(uint64_t a1, uint64_t a2, void *a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  std::operator+<char>();
  if (sub_10031B7D4((a1 + 144), __p))
  {
    sub_1008025B4((a1 + 144), __p);
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = __p;
      if (v14 < 0)
      {
        v6 = __p[0];
      }

      *buf = 136446210;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Unsubscribing from webpush topic: %{public}s", buf, 0xCu);
    }

    v7 = [APSURLTokenInfo alloc];
    if (v14 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = [NSString stringWithUTF8String:v8];
    v10 = [NSData dataWithBytes:*a3 length:a3[1] - *a3];
    v11 = [v7 initWithTopic:v9 vapidPublicKey:v10];

    [*(a1 + 136) invalidateURLTokenForInfo:v11];
    WebPushControllerImpl::enableTopicsFromListeners_sync(a1);
  }

  else
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1017803A4(__p, v12);
    }
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007FF08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void WebPushControllerImpl::clearIgnoredTopics_sync(WebPushControllerImpl *this)
{
  v2 = [*(this + 17) ignoredTopics];
  if (v2)
  {
    v3 = [*(this + 17) ignoredTopics];
    v4 = [v3 count];

    if (v4)
    {
      v5 = *(this + 5);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(this + 17) ignoredTopics];
        v7 = 134217984;
        v8 = [v6 count];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Clearing %zu ignored webpush topics", &v7, 0xCu);
      }

      [*(this + 17) _setIgnoredTopics:0];
    }
  }
}

void WebPushControllerImpl::ignoreAllTopics_sync(WebPushControllerImpl *this)
{
  v2 = [*(this + 17) enabledTopics];
  if (v2 && ([*(this + 17) enabledTopics], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count"), v3, v2, v4))
  {
    v5 = [*(this + 17) enabledTopics];
    [*(this + 17) _setEnabledTopics:0];
    v6 = [*(this + 17) ignoredTopics];

    if (v6)
    {
      v7 = [*(this + 17) ignoredTopics];
      v8 = [NSMutableArray arrayWithArray:v7];

      [v8 addObjectsFromArray:v5];
      [*(this + 17) _setIgnoredTopics:v8];
    }

    else
    {
      [*(this + 17) _setIgnoredTopics:v5];
    }

    v10 = *(this + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(this + 17) ignoredTopics];
      v12 = 134217984;
      v13 = [v11 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Migrated %lu webpush topics [enabled->ignored]", &v12, 0xCu);
    }
  }

  else
  {
    v9 = *(this + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I No webpush topics are enabled", &v12, 2u);
    }
  }
}

void sub_1007FF3D8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void WebPushControllerImpl::handleWebPushMessage(uint64_t a1, uint64_t a2, const void **a3)
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

  sub_100010024(&v6, a3);
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void WebPushControllerImpl::processMessagePayload(uint64_t a1@<X0>, CFDictionaryRef *a2@<X2>, xpc_object_t *a3@<X8>)
{
  if (*a2)
  {
    v46 = 0;
    v47 = 0;
    (*(**(a1 + 96) + 40))(&v46);
    if (!v46)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017805CC();
      }

      *a3 = xpc_null_create();
      goto LABEL_53;
    }

    v43 = 0;
    v44 = 0;
    v45 = 0;
    (*(*v46 + 40))(&v43);
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = v44 - v43;
      *&buf[8] = 2098;
      *&buf[10] = v43;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Push: ua_publickey: %{public}.*P", buf, 0x12u);
    }

    v40 = 0;
    v41 = 0;
    v42 = 0;
    (*(*v46 + 48))(&v40);
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v41 - v40;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Push: ua_privatekey: length %zu", buf, 0xCu);
    }

    memset(buf, 0, 32);
    (*(**(a1 + 96) + 64))(buf);
    v8 = *(a1 + 40);
    if (buf[24])
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v48) = 134217984;
        *(&v48 + 4) = *&buf[8] - *buf;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Push: ua_secret: length %zu", &v48, 0xCu);
      }

      Value = CFDictionaryGetValue(*a2, @"as_publickey");
      v10 = Value;
      if (Value)
      {
        v11 = CFGetTypeID(Value);
        if (v11 == CFStringGetTypeID())
        {
          v12 = *(a1 + 40);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v48) = 138412290;
            *(&v48 + 4) = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Push: as_publickey: %@", &v48, 0xCu);
          }

          v37 = 0;
          v38 = 0;
          v39 = 0;
          v13 = *(a1 + 96);
          v48 = 0uLL;
          *&v49 = 0;
          ctu::cf::assign();
          *__p = v48;
          v36 = v49;
          (*(*v13 + 16))(&v37, v13, __p);
          if (SHIBYTE(v36) < 0)
          {
            operator delete(__p[0]);
          }

          v14 = CFDictionaryGetValue(*a2, @"as_salt");
          v15 = v14;
          if (!v14 || (v16 = CFGetTypeID(v14), v16 != CFStringGetTypeID()))
          {
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101780564();
            }

            *a3 = xpc_null_create();
            goto LABEL_95;
          }

          v17 = *(a1 + 40);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v48) = 138412290;
            *(&v48 + 4) = v15;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Push: as_salt: %@", &v48, 0xCu);
          }

          __p[0] = 0;
          __p[1] = 0;
          v36 = 0;
          v18 = *(a1 + 96);
          v48 = 0uLL;
          *&v49 = 0;
          ctu::cf::assign();
          *v33 = v48;
          v34 = v49;
          (*(*v18 + 16))(__p, v18, v33);
          if (SHIBYTE(v34) < 0)
          {
            operator delete(v33[0]);
          }

          v19 = CFDictionaryGetValue(*a2, @"payload");
          if (!v19 || (v20 = CFGetTypeID(v19), v20 != CFStringGetTypeID()))
          {
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101780530();
            }

            *a3 = xpc_null_create();
            goto LABEL_93;
          }

          v33[0] = 0;
          v33[1] = 0;
          v34 = 0;
          v21 = *(a1 + 96);
          v48 = 0uLL;
          *&v49 = 0;
          ctu::cf::assign();
          *v31 = v48;
          v32 = v49;
          (*(*v21 + 16))(v33, v21, v31);
          if (SHIBYTE(v32) < 0)
          {
            operator delete(v31[0]);
          }

          v22 = CFDictionaryGetValue(*a2, @"content_encoding");
          v23 = v22;
          if (!v22 || (v24 = CFGetTypeID(v22), v24 != CFStringGetTypeID()))
          {
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_1017804FC();
            }

            *a3 = xpc_null_create();
            goto LABEL_91;
          }

          v25 = *(a1 + 40);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v48) = 138412290;
            *(&v48 + 4) = v23;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Push: content_encoding: %@", &v48, 0xCu);
          }

          v31[0] = 0;
          v31[1] = 0;
          v32 = 0;
          if (CFEqual(v23, @"aesgcm"))
          {
            v48 = 0u;
            v49 = 0u;
            if ((buf[24] & 1) == 0)
            {
              sub_1000D1644();
            }

            (*(**(a1 + 96) + 88))(&v48);
            v26 = BYTE8(v49);
            if (BYTE8(v49))
            {
LABEL_68:
              sub_1001E0090(&v29, v48, *(&v48 + 1), *(&v48 + 1) - v48);
              if (SHIBYTE(v32) < 0)
              {
                operator delete(v31[0]);
              }

              *v31 = v29;
              v32 = v30;
              goto LABEL_80;
            }

            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101780460();
            }
          }

          else
          {
            if (!CFEqual(v23, @"aes128gcm"))
            {
              if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
              {
                sub_1017804C8();
              }

              *a3 = xpc_null_create();
              goto LABEL_89;
            }

            v48 = 0u;
            v49 = 0u;
            if ((buf[24] & 1) == 0)
            {
              sub_1000D1644();
            }

            (*(**(a1 + 96) + 80))(&v48);
            v26 = BYTE8(v49);
            if (BYTE8(v49))
            {
              goto LABEL_68;
            }

            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101780494();
            }
          }

          *a3 = xpc_null_create();
LABEL_80:
          if (BYTE8(v49) == 1 && v48)
          {
            *(&v48 + 1) = v48;
            operator delete(v48);
          }

          if (v26)
          {
            v27 = *(a1 + 40);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = v31;
              if (v32 < 0)
              {
                v28 = v31[0];
              }

              LODWORD(v48) = 136446210;
              *(&v48 + 4) = v28;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Push: decrypted payload: %{public}s", &v48, 0xCu);
            }

            WebPushControllerImpl::parseJSONPayload(a1, v31, a3);
          }

LABEL_89:
          if (SHIBYTE(v32) < 0)
          {
            operator delete(v31[0]);
          }

LABEL_91:
          if (v33[0])
          {
            v33[1] = v33[0];
            operator delete(v33[0]);
          }

LABEL_93:
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

LABEL_95:
          if (v37)
          {
            v38 = v37;
            operator delete(v37);
          }

          goto LABEL_46;
        }
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101780598();
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10178042C();
    }

    *a3 = xpc_null_create();
LABEL_46:
    if (buf[24] == 1 && *buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

LABEL_53:
    if (v47)
    {
      sub_100004A34(v47);
    }

    return;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101780600();
  }

  *a3 = xpc_null_create();
}

void sub_1007FFEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void WebPushControllerImpl::parseJSONPayload(uint64_t a1@<X0>, uint64_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = [NSString stringWithUTF8String:v5];
  v7 = [v6 dataUsingEncoding:4];
  if (v7)
  {
    v18 = 0;
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v18];
    v9 = v18;
    if (v9)
    {
      v10 = *(a1 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v9 localizedDescription];
        sub_101780634(v11, buf, v10);
      }

LABEL_17:
      *a3 = xpc_null_create();
LABEL_18:

      goto LABEL_19;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10178068C();
      }

      goto LABEL_17;
    }

    *a3 = 0;
    v12 = xpc_dictionary_create(0, 0, 0);
    v13 = v12;
    if (v12)
    {
      *a3 = v12;
    }

    else
    {
      v13 = xpc_null_create();
      *a3 = v13;
      if (!v13)
      {
        v14 = xpc_null_create();
        v13 = 0;
        goto LABEL_25;
      }
    }

    if (xpc_get_type(v13) == &_xpc_type_dictionary)
    {
      xpc_retain(v13);
LABEL_26:
      xpc_release(v13);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3321888768;
      v16[2] = sub_100800368;
      v16[3] = &unk_101E82060;
      v15 = *a3;
      object = v15;
      if (v15)
      {
        xpc_retain(v15);
      }

      else
      {
        object = xpc_null_create();
      }

      [v8 enumerateKeysAndObjectsUsingBlock:v16];
      xpc_release(object);
      object = 0;
      goto LABEL_18;
    }

    v14 = xpc_null_create();
LABEL_25:
    *a3 = v14;
    goto LABEL_26;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017806C0();
  }

  *a3 = xpc_null_create();
LABEL_19:
}

void sub_1008002E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100800368(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  sub_1007FBD98(v6, v12);
  if (v13 >= 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = v12[0];
  }

  object = xpc_string_create(v7);
  if (!object)
  {
    object = xpc_null_create();
  }

  sub_1007FBD98(v5, __p);
  if (v10 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v11[0] = a1 + 32;
  v11[1] = v8;
  sub_10000F688(v11, &object, &v15);
  xpc_release(v15);
  v15 = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object);
  object = 0;
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_100800470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  xpc_release(v21);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

xpc_object_t sub_1008004AC(uint64_t a1, uint64_t a2)
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

void sub_10080051C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void *sub_100800528(void *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  v6 = a3[1];
  __dst[3] = *a3;
  __dst[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return __dst;
}

uint64_t sub_100800594(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_100800670(void *a1, NSObject **a2, uint64_t a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E821F0;
  sub_100800768((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_1008006EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E821F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100800768(uint64_t a1, NSObject **a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a2;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  WebPushControllerImpl::WebPushControllerImpl(a1, &object, a3, a4);
  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1008007D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10080086C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1017806F4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100800888(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1008008C0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1008008F0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100800930(ServiceManager::Service *this)
{
  *this = off_101E822B8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10080098C(ServiceManager::Service *this)
{
  *this = off_101E822B8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_100800A28(uint64_t a1)
{
  sub_100800A64(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100800A64(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1007676EC((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_100800B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100800C34(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E82338;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100800C6C(void *a1)
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

uint64_t sub_100800CB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100800D00(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E823B8;
  v5[1] = v3;
  v5[3] = v5;
  sub_100300158(v5, a1);
  sub_1002FED80(v5);
  return a1;
}

uint64_t sub_100800E04(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E823B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100800E38(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100800E84(uint64_t a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/lazuli_push_enabled_idsbag");
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v2);
}

void sub_100800F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_100800FEC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E82438;
  a2[1] = v2;
  return result;
}

void sub_100801018(uint64_t a1)
{
  sub_100004AA0(&v2, (*(a1 + 8) + 8));
  v1 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v1);
  }

  operator new();
}

void sub_1008010EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10080111C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100801168(void *a1)
{
  *a1 = off_101E824A8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1008011B4(void *a1)
{
  *a1 = off_101E824A8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100801294(uint64_t result, uint64_t a2)
{
  *a2 = off_101E824A8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1008012D4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1008012E4(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100801324(void *a1, char *a2)
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
        v8 = *(v5 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v9) = 136315138;
          *(&v9 + 4) = asStringBool(v4);
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I IDS Server Bag RCSPush enabled: %s", &v9, 0xCu);
        }

        *&v9 = 1;
        *(&v9 + 1) = v5 + 184;
        *(v5 + 216) = v4;
        sub_100801474(&v9);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_100801428(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100801474(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

void sub_1008014DC(void *a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, a1);
  operator new();
}

void sub_1008015AC(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *(v1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  (*(*v2 + 48))(v2);
  sub_100801650(&v5);
  v3 = v4;
  v4 = 0;
  if (v3)
  {
    sub_1002B78C4(&v4, v3);
  }
}

void sub_100801628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100801650(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_100801650(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10002B644(v2);
    operator delete();
  }

  return a1;
}

void sub_100801698(void *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I bootstrapping...", buf, 2u);
  }

  WebPushControllerImpl::bootstrap_sync(*(v2 + 48));
}

void sub_10080171C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100801738(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100801738(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      dispatch_release(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_10080178C(void **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (v1[1])
      {
        v5 = *(v3 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I starting...", buf, 2u);
        }

        WebPushControllerImpl::startup_sync(*(v3 + 48));
      }

      sub_100004A34(v4);
    }
  }

  sub_10007060C(&v8);
  return sub_1000049E0(&v7);
}

void sub_10080183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100801860(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I shutting down...", buf, 2u);
  }

  WebPushControllerImpl::shutdown_sync(*(v2 + 48));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_1008018E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_100801900(uint64_t *a1)
{
  v7 = a1;
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(**a1 + 48);
  v4 = *(*a1 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v3 + 88);
  *(v3 + 80) = v2;
  *(v3 + 88) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete();
}

void sub_100801994(uint64_t a1)
{
  v3 = a1;
  v1 = *(**a1 + 48);
  v2 = *(v1 + 88);
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

uint64_t *sub_1008019F8(uint64_t *a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *(v1 + 31);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(v1 + 16);
  }

  v4 = *(*v1 + 48);
  if (v3 >= 0)
  {
    v5 = (v1 + 8);
  }

  else
  {
    v5 = *(v1 + 8);
  }

  if (v2)
  {
    v6 = v5;
  }

  else
  {
    v6 = "<invalid>";
  }

  sub_10000501C(__p, v6);
  v7 = *(v1 + 56);
  v8 = *(v1 + 72);
  v12 = *(v1 + 64);
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  WebPushControllerImpl::subscribe_sync(v4, __p, (v1 + 32), v7, &v12);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100801AF8(&v11);
  return sub_1000049E0(&v10);
}

void sub_100801AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, char a14)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  sub_101760E98(&a14);
  sub_100801AF8(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100801AF8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(v1 + 32);
    if (v3)
    {
      *(v1 + 40) = v3;
      operator delete(v3);
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_100801B6C(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *(v1 + 31);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(v1 + 16);
  }

  v4 = *(*v1 + 48);
  if (v3 >= 0)
  {
    v5 = (v1 + 8);
  }

  else
  {
    v5 = *(v1 + 8);
  }

  if (v2)
  {
    v6 = v5;
  }

  else
  {
    v6 = "<invalid>";
  }

  sub_10000501C(__p, v6);
  WebPushControllerImpl::unsubscribe_sync(v4, __p, (v1 + 32));
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100801C3C(&v9);
  return sub_1000049E0(&v8);
}

void sub_100801C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_100801C3C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100801C3C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      *(v1 + 40) = v2;
      operator delete(v2);
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

void sub_100801CA4(uint64_t a1)
{
  v1 = a1;
  WebPushControllerImpl::ignoreAllTopics_sync(*(**a1 + 48));
  operator delete();
}

void *sub_100801D9C(void *a1, char **a2, dispatch_object_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E82538;
  sub_1001049FC((a1 + 3), a2, a3);
  return a1;
}

void sub_100801E18(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E82538;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100801E6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void *sub_100801E80(void *a1)
{
  *a1 = off_101E82588;
  sub_10000FF50((a1 + 6));
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_100801EDC(void *a1)
{
  *a1 = off_101E82588;
  sub_10000FF50((a1 + 6));
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete();
}

void sub_100801FF8(_Unwind_Exception *a1)
{
  v3 = v1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = v1[2];
  if (v4)
  {
    sub_100004A34(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100802024(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E82588;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_1000224C8(a2 + 48, a1 + 48);
}

void sub_1008020A8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008020CC(uint64_t a1)
{
  sub_10000FF50(a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_100802124(void *a1)
{
  sub_10000FF50((a1 + 6));
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(a1);
}

void sub_100802178(void *a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v11 = 0;
  rest::GetIdsServerBagResult::GetIdsServerBagResult(&v11);
  rest::read_rest_value(&v11, &object, v3);
  v4 = a1[5];
  if (v4)
  {
    v5 = v11;
    v6 = a1[3];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[4])
      {
        v9 = *(v6 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Check PushEnabled called", buf, 2u);
        }

        sub_10000FFD0((a1 + 6), v5 == 0);
      }

      sub_100004A34(v8);
    }
  }

  xpc_release(object);
}

void sub_100802254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  sub_100004A34(v9);
  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t sub_100802284(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **sub_1008022D0(void *a1, const void **a2)
{
  v4 = sub_1000D3314(a1, a2);
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
    operator new();
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

  if (!sub_100022D3C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100802554(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100802568(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100802568(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1007676EC(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void **sub_1008025B4(void *a1, const void **a2)
{
  result = sub_10031B7D4(a1, a2);
  if (result)
  {
    sub_100120C90(a1, result, v4);
    sub_100802568(v4);
    return 1;
  }

  return result;
}

void sub_100802600(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 8);
    *buf = 67109120;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received APNS connection status: %u", buf, 8u);
  }

  v5 = *(v1 + 8);
  *(v2 + 224) = v5;
  if (v5 == 1)
  {
    WebPushControllerImpl::dumpState_sync(v2);
    if (*(v2 + 216) == 1)
    {
      WebPushControllerImpl::enableTopicsFromListeners_sync(v2);
    }

    else
    {
      WebPushControllerImpl::ignoreAllTopics_sync(v2);
    }

    v6 = *(v2 + 88);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v7;
        v9 = *(v2 + 80);
        if (v9)
        {
          (*(*v9 + 16))(v9, *(v1 + 8));
        }

        sub_100004A34(v8);
      }
    }
  }

  operator delete();
}

uint64_t *sub_100802788(uint64_t *a1)
{
  v1 = *a1;
  v21 = a1;
  v22 = v1;
  v2 = (v1 + 8);
  v3 = *v1;
  v4 = sub_10031B7D4((*v1 + 144), (v1 + 8));
  v5 = v4;
  if (v4)
  {
    v6 = v4[6];
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v5[5];
        if (v8)
        {
          object = 0;
          (*(*v8 + 16))(__p, v8);
          sub_100010024(&v25, (v1 + 32));
          WebPushControllerImpl::processMessagePayload(v3, &v25, &object);
          sub_10001021C(&v25);
          if (SBYTE7(v31) < 0)
          {
            operator delete(__p[0]);
          }

          v47 = 0;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          __src = 0u;
          v31 = 0u;
          v32 = 0u;
          *__p = 0u;
          sub_10000C320(__p);
          if (object)
          {
            sub_100D96E64(&object, &__dst);
          }

          else
          {
            sub_10000501C(&__dst, "empty");
          }

          v11 = sub_10000C030(&v31);
          std::ios_base::getloc((v11 + *(*v11 - 24)));
          v12 = std::locale::use_facet(v27, &std::ctype<char>::id);
          (v12->__vftable[2].~facet_0)(v12, 10);
          std::locale::~locale(v27);
          std::ostream::put();
          std::ostream::flush();
          if (v24 < 0)
          {
            operator delete(__dst);
          }

          v13 = *(v3 + 40);
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_39;
          }

          v14 = (v1 + 8);
          if (*(v1 + 31) < 0)
          {
            v14 = *v2;
          }

          if ((BYTE8(v37) & 0x10) != 0)
          {
            v16 = v37;
            if (v37 < *(&__src + 1))
            {
              *&v37 = *(&__src + 1);
              v16 = *(&__src + 1);
            }

            v17 = __src;
          }

          else
          {
            if ((BYTE8(v37) & 8) == 0)
            {
              v15 = 0;
              v24 = 0;
LABEL_35:
              *(&__dst + v15) = 0;
              p_dst = &__dst;
              if (v24 < 0)
              {
                p_dst = __dst;
              }

              *v27 = 136446466;
              *&v27[4] = v14;
              v28 = 2082;
              v29 = p_dst;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Decrypted APNS webpush payload for %{public}s: %{public}s", v27, 0x16u);
              if (v24 < 0)
              {
                operator delete(__dst);
              }

LABEL_39:
              *&v31 = v19;
              if (SHIBYTE(v36) < 0)
              {
                operator delete(*(&v35 + 1));
              }

              std::locale::~locale(&v32);
              std::iostream::~basic_iostream();
              std::ios::~ios();
              __p[0] = object;
              if (object)
              {
                xpc_retain(object);
              }

              else
              {
                __p[0] = xpc_null_create();
              }

              (*(*v8 + 24))(v8, v2, __p);
              xpc_release(__p[0]);
              __p[0] = 0;
              xpc_release(object);
LABEL_45:
              sub_100004A34(v7);
              goto LABEL_46;
            }

            v17 = *(&v32 + 1);
            v16 = *(&v33 + 1);
          }

          v15 = v16 - v17;
          if ((v16 - v17) >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_1000A2378();
          }

          if (v15 >= 0x17)
          {
            operator new();
          }

          v24 = v16 - v17;
          if (v15)
          {
            memmove(&__dst, v17, v15);
          }

          goto LABEL_35;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = *(v3 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (v1 + 8);
      if (*(v1 + 31) < 0)
      {
        v10 = *v2;
      }

      LODWORD(__p[0]) = 136446210;
      *(__p + 4) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Removing expired delegate for %{public}s", __p, 0xCu);
    }

    sub_1008025B4((v3 + 144), (v1 + 8));
    WebPushControllerImpl::enableTopicsFromListeners_sync(v3);
    if (v7)
    {
      goto LABEL_45;
    }
  }

LABEL_46:
  sub_10043A15C(&v22);
  return sub_1000049E0(&v21);
}

void sub_100802D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, xpc_object_t object, std::locale a20, uint64_t a21, uint64_t a22, uint64_t a23, xpc_object_t __p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  std::ios::~ios();
  xpc_release(object);
  sub_100004A34(v29);
  sub_10043A15C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100802E04(uint64_t *a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v3 = (v1 + 8);
  v2 = *v1;
  v4 = sub_10031B7D4((*v1 + 144), (v1 + 8));
  v5 = v4;
  if (v4)
  {
    v6 = v4[6];
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v5[5];
        if (v8)
        {
          v9 = *(v2 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = v1 + 8;
            if (*(v1 + 31) < 0)
            {
              v10 = *v3;
            }

            *buf = 136446210;
            v18 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Received APNS webpush URL update for %{public}s", buf, 0xCu);
          }

          (*(*v8 + 32))(v8, v1 + 8, v1 + 32);
          v11 = *(v2 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Force topic repopulation after URLToken generation to avoid missed web-pushes", buf, 2u);
          }

          [*(v2 + 136) _setEnabledTopics:{0, v15, v16}];
          WebPushControllerImpl::enableTopicsFromListeners_sync(v2);
LABEL_18:
          sub_100004A34(v7);
          goto LABEL_19;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v12 = *(v2 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v1 + 8;
      if (*(v1 + 31) < 0)
      {
        v13 = *v3;
      }

      *buf = 136446210;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Removing expired delegate for %{public}s", buf, 0xCu);
    }

    sub_1008025B4((v2 + 144), (v1 + 8));
    WebPushControllerImpl::enableTopicsFromListeners_sync(v2);
    if (v7)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  sub_10036FBEC(&v16);
  return sub_1000049E0(&v15);
}

void sub_10080300C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10036FBEC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100803044(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = (v1 + 8);
  v3 = *v1;
  v4 = sub_10031B7D4((*v1 + 144), (v1 + 8));
  v5 = v4;
  if (v4)
  {
    v6 = v4[6];
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v5[5];
        if (v8)
        {
          v9 = *(v3 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = v1 + 8;
            if (*(v1 + 31) < 0)
            {
              v10 = *v2;
            }

            *buf = 136446210;
            v17 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Received APNS webpush URL error for %{public}s", buf, 0xCu);
          }

          (*(*v8 + 40))(v8, v1 + 8, v1 + 32, *(v1 + 56));
LABEL_16:
          sub_100004A34(v7);
          goto LABEL_17;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v11 = *(v3 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v1 + 8;
      if (*(v1 + 31) < 0)
      {
        v12 = *v2;
      }

      *buf = 136446210;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Removing expired delegate for %{public}s", buf, 0xCu);
    }

    sub_1008025B4((v3 + 144), (v1 + 8));
    WebPushControllerImpl::enableTopicsFromListeners_sync(v3);
    if (v7)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  sub_100803238(&v15);
  return sub_1000049E0(&v14);
}

void sub_100803200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_100803238(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100803238(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

void sub_1008032A0(uint64_t a1)
{
  v2 = a1;
  v1 = *(**a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Public token updated. This does not affect active URL tokens. No action required", buf, 2u);
  }

  operator delete();
}

void sub_10080332C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100803354(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1008033FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100803438(uint64_t a1)
{
  sub_100803734(a1);
  sub_100004AA0(&v3, (a1 + 8));
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10079D8A0();
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_100803518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10080353C(uint64_t a1, NSObject **a2)
{
  ctu::OsLogContext::OsLogContext(&v5, kCtLoggingSystemName, "xpc.tracker");
  sub_1008035F0((a1 + 8), a2, &v5);
  ctu::OsLogContext::~OsLogContext(&v5);
  *a1 = off_101E82608;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 136) = 1065353216;
  return a1;
}

void *sub_1008035F0(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100803658(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10080367C(uint64_t a1)
{
  *a1 = off_101E82608;
  sub_100804838(a1 + 104);
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 48);
  sub_10001E200(&v4);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1008036FC(uint64_t a1)
{
  sub_10080367C(a1);

  operator delete();
}

void sub_100803734(uint64_t a1)
{
  v2 = *(a1 + 96);
  *(a1 + 97) = v2;
  v3 = *(a1 + 40);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      return;
    }

    goto LABEL_5;
  }

  v4[0] = 67109376;
  v4[1] = v2;
  v5 = 1024;
  v6 = v2;
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Tracker gathering stats = %d (queriable=%d)", v4, 0xEu);
  if ((*(a1 + 97) & 1) == 0)
  {
LABEL_5:
    sub_100804924(a1 + 104);
  }
}

void sub_100803804(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 0x40000000;
        v7[2] = sub_100803940;
        v7[3] = &unk_101E82618;
        v7[4] = v3;
        v10 = 0;
        v11 = 0;
        sub_100004AA0(&v10, (v3 + 8));
        v6 = *(v3 + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_1008048E8;
        block[3] = &unk_101E827E0;
        block[5] = v10;
        v9 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        block[4] = v7;
        dispatch_async(v6, block);
        if (v9)
        {
          sub_100004A34(v9);
        }

        if (v11)
        {
          sub_100004A34(v11);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100803948(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v2 = sub_10001BEF4(0x800C1);
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(v2);
    v5 = CSIBOOLAsString(*(a1 + 97));
    v6 = v8[3];
    *buf = 136315650;
    v12 = v4;
    v13 = 2080;
    v14 = v5;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Full report submitted=%s; gathered=%s; sent=%zu", buf, 0x20u);
  }

  sub_100804924(a1 + 104);
  _Block_object_dispose(&v7, 8);
}

void sub_100803AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100803AC4(uint64_t result, uint64_t a2)
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

void sub_100803AE0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100803AF0(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (*a2 == v2)
  {
    v4 = 0;
  }

  else
  {
    v3 = *a2 + 4;
    do
    {
      v4 = *(v3 - 4) == 524481;
      v5 = *(v3 - 4) == 524481 || v3 == v2;
      v3 += 4;
    }

    while (!v5);
  }

  *(a1 + 96) = v4;
  sub_100803734(a1);
}

void sub_100803B30(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 48);
  if (v3 != v2)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v36.__r_.__value_.__r.__words[0] = ",";
      v36.__r_.__value_.__l.__size_ = 1;
      sub_100804980(v3, &__p);
      v37 = __p;
      for (i = v3 + 32; i != v2; i += 32)
      {
        sub_100074CFC(&v36.__r_.__value_.__l.__data_, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v37, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_100804980(i, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = &__p;
        }

        else
        {
          v8 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v9 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v37, v8, v9);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v10 = &v37;
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = v37.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Pending requests: %s", &__p, 0xCu);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }
    }
  }

  v11 = *(a1 + 80);
  v12 = *(a1 + 72);
  if (v12 != v11)
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v36.__r_.__value_.__r.__words[0] = ",";
      v36.__r_.__value_.__l.__size_ = 1;
      memset(&v37, 0, sizeof(v37));
      sub_100804ABC(v12, &__p);
      v37 = __p;
      for (j = v12 + 2; j != v11; j += 2)
      {
        sub_100074CFC(&v36.__r_.__value_.__l.__data_, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &__p;
        }

        else
        {
          v15 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v16 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v37, v15, v16);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_100804ABC(j, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &__p;
        }

        else
        {
          v17 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v37, v17, v18);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v19 = &v37;
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = v37.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Pending notifications: %s", &__p, 0xCu);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }
    }
  }

  v20 = *(a1 + 128);
  v21 = *(a1 + 40);
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    if (v22)
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Stats:", &__p, 2u);
    }

    for (k = *(a1 + 120); k; k = *k)
    {
      v24 = *(a1 + 40);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = k + 2;
        if (*(k + 39) < 0)
        {
          v25 = *v25;
        }

        sub_1000D1184(k[5], k[6], ",", 1uLL, &v36);
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v36;
        }

        else
        {
          v26 = v36.__r_.__value_.__r.__words[0];
        }

        v28 = k[8];
        v27 = k[9];
        v38[0] = ",";
        v38[1] = 1;
        memset(&v35, 0, sizeof(v35));
        if (v28 != v27)
        {
          std::to_string(&v37, *v28);
          v35 = v37;
          while (++v28 != v27)
          {
            sub_100074CFC(v38, &v37);
            if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v29 = &v37;
            }

            else
            {
              v29 = v37.__r_.__value_.__r.__words[0];
            }

            if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v30 = v37.__r_.__value_.__l.__size_;
            }

            std::string::append(&v35, v29, v30);
            if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v37.__r_.__value_.__l.__data_);
            }

            std::to_string(&v37, *v28);
            if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = &v37;
            }

            else
            {
              v31 = v37.__r_.__value_.__r.__words[0];
            }

            if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v32 = v37.__r_.__value_.__l.__size_;
            }

            std::string::append(&v35, v31, v32);
            if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v37.__r_.__value_.__l.__data_);
            }
          }
        }

        v33 = &v35;
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v33 = v35.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
        *(__p.__r_.__value_.__r.__words + 4) = v25;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v26;
        HIWORD(__p.__r_.__value_.__r.__words[2]) = 2080;
        v40 = v33;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I  - %s: requests=[%s], events=[%s]", &__p, 0x20u);
        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  else if (v22)
  {
    if (*(a1 + 97))
    {
      v34 = "empty";
    }

    else
    {
      v34 = "disabled";
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v34;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Stats: %s", &__p, 0xCu);
  }
}

void sub_10080407C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100804120(std::string *result, int *a2)
{
  v2 = *(result[1].__r_.__value_.__r.__words[2] + 120);
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = v2[5];
      v6 = v2[6];
      while (v5 != v6)
      {
        ++*(*(v4[1].__r_.__value_.__l.__size_ + 8) + 24);
        v7 = a2[7];
        v8 = a2[6];
        if (v8 >= v7)
        {
          if (v7 == a2[8])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 4), v7 + 1);
            v7 = a2[7];
          }

          a2[7] = v7 + 1;
          sub_10001C830();
        }

        v9 = *(a2 + 2);
        a2[6] = v8 + 1;
        v10 = *(v9 + 8 * v8);
        *(v10 + 44) |= 1u;
        v11 = *(v10 + 8);
        if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v11, (v2 + 2));
        *(v10 + 44) |= 4u;
        v12 = *(v10 + 24);
        if (v12 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = std::string::operator=(v12, v5++);
      }

      v13 = v2[8];
      v14 = v2[9];
      while (v13 != v14)
      {
        ++*(*(v4[1].__r_.__value_.__l.__size_ + 8) + 24);
        v15 = a2[7];
        v16 = a2[6];
        if (v16 >= v15)
        {
          if (v15 == a2[8])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 4), v15 + 1);
            v15 = a2[7];
          }

          a2[7] = v15 + 1;
          sub_10001C830();
        }

        v17 = *(a2 + 2);
        a2[6] = v16 + 1;
        v18 = *(v17 + 8 * v16);
        *(v18 + 44) |= 1u;
        v19 = *(v18 + 8);
        if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v19, (v2 + 2));
        v20 = sub_10000FD6C(*v13);
        *(v18 + 44) |= 8u;
        v21 = *(v18 + 32);
        if (v21 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = sub_100016890(v21, v20);
        ++v13;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return result;
}