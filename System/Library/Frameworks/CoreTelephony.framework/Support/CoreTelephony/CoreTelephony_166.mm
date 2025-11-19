void sub_101413FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_101414040@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  result = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = result;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 != result && *(v6 + 32) <= a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return sub_100034C50(a3, *(v6 + 48), *(v6 + 56), *(v6 + 56) - *(v6 + 48));
  }

  else
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

uint64_t *sub_10141409C(uint64_t a1, int *a2)
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

uint64_t sub_101414224(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101414270(uint64_t a1)
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

__n128 sub_10141436C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F38E08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 23) = 0;
  *(a2 + 19) = 0;
  return result;
}

uint64_t sub_1014143A4(_BYTE *a1)
{
  if (subscriber::getSimCardForSimFilePath() == 2 && (a1[17] & 1) != 0)
  {
    v2 = 0;
    return v2 & 1;
  }

  if (a1[16])
  {
    v2 = a1[18] ^ 1;
    return v2 & 1;
  }

  return subscriber::isSimFileEssential();
}

uint64_t sub_10141441C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101414468(uint64_t a1, int *a2)
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

double sub_101414548(std::string *a1, uint64_t a2)
{
  v4 = subscriber::asString();
  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v6 = v5;
  memset(&__dst, 0, sizeof(__dst));
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
  }

  __dst.__r_.__value_.__s.__data_[v6] = 0;
  if (*(a2 + 40))
  {
    v7 = "[w]";
  }

  else
  {
    v7 = "[-]";
  }

  if (*(a2 + 46))
  {
    v8 = v7;
  }

  else
  {
    v8 = "[?]";
  }

  std::string::append(&__dst, v8, 3uLL);
  v9 = *(a2 + 12);
  if (v9 <= 4 && ((0x17u >> v9) & 1) != 0)
  {
    std::string::append(&__dst, off_101F38E90[v9], qword_101967978[v9]);
  }

  v10 = *(a2 + 8);
  if (v10 == 1)
  {
    std::to_string(&v18, *(a2 + 24) - *(a2 + 16));
    v11 = std::string::insert(&v18, 0, ":", 1uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v19, "B", 1uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v21 = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v21 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if (v21 >= 0)
    {
      v16 = HIBYTE(v21);
    }

    else
    {
      v16 = __p[1];
    }

    std::string::append(&__dst, v15, v16);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else if (v10 == 2)
  {
    std::string::append(&__dst, ":none", 5uLL);
  }

  result = *&__dst.__r_.__value_.__l.__data_;
  *a1 = __dst;
  return result;
}

void sub_101414784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

double sub_1014148E0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2)
  {
    v2 = *(a2 + 32);
    if (v2)
    {
      v2 = *(v2 + 24);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 24) = v2;
  *a1 = off_101F38EC8;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1065353216;
  *(a1 + 32) = off_101F1AE50;
  *(a1 + 104) = 0;
  return result;
}

uint64_t sub_101414A78(uint64_t a1, char *__s)
{
  v2 = __s;
  memset(&__dst, 0, sizeof(__dst));
  __p = 0;
  v12 = 0;
  v13 = 0;
  v4 = strchr(__s, 59);
  if (v4)
  {
    v5 = v4;
    sub_1000167D4(&__dst, v2, (v4 - v2));
    v2 = v5 + 1;
    p_p = &__p;
  }

  else
  {
    p_p = &__dst;
  }

  sub_100016890(p_p, v2);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  v8 = sub_100E648E0(a1, p_dst);
  if (v8)
  {
    if (SHIBYTE(v13) < 0)
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v9 = __p;
    }

    else
    {
      if (!HIBYTE(v13))
      {
        goto LABEL_14;
      }

      v9 = &__p;
    }

    sub_1011F2FF8((a1 + 32), v9);
  }

LABEL_14:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_101414B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_101414B98(uint64_t a1, std::string *a2)
{
  v4 = sub_100E64A1C(a1, a2);
  if (v4)
  {
    sub_1011F2C0C(a1 + 32, a2);
  }

  return v4;
}

uint64_t sub_101414BE0(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  if (*(a1 + 104))
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v18 = 0;
    sub_1015664B4(a2, __p, 0xFFFFFFFF);
    if ((SBYTE7(v18) & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    v5 = (*(*a1 + 16))(a1, v4);
    if (SBYTE7(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (!sub_101566604(a2, &v20))
    {
      return 0;
    }

    v6 = v20;
    v8 = *(a2 + 16);
    v7 = *(a2 + 20);
    v9 = v8 >= v7;
    v10 = v8 - v7;
    if (v10 == 0 || !v9 || v20 > v10)
    {
      return 0;
    }

    else
    {
      v12 = *(a2 + 8);
      *(a2 + 20) = v7 + 1;
      *(a1 + 17) = *(v12 + v7);
      v19 = 0;
      *__p = 0u;
      v18 = 0u;
      sub_101566340(__p, a2, v6 - 1);
      v13 = sub_1015674B8(__p, (a1 + 32));
      v5 = v13;
      if (v13)
      {
        v14 = DWORD1(v18);
        v15 = *(a2 + 20);
        if ((*(a2 + 16) - v15) < DWORD1(v18))
        {
          v14 = *(a2 + 16) - v15;
        }

        *(a2 + 20) = v14 + v15;
      }

      ctu::OsLogLogger::~OsLogLogger(__p);
    }
  }

  return v5;
}

BOOL sub_101414D50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::string::push_back((a2 + 8), byte_101FB97D8 | 0x80);
  }

  return v2 != 0;
}

BOOL sub_101414D90(uint64_t a1, uint64_t a2)
{
  *__p = 0u;
  v10 = 0u;
  LODWORD(__p[0]) = *a2;
  v11 = 0;
  __p[1] = 0;
  v10 = 0uLL;
  std::string::push_back(&__p[1], *(a1 + 17));
  v4 = sub_1011360D0(__p, a1 + 32);
  if (v4)
  {
    if (v10 >= 0)
    {
      v5 = HIBYTE(v10);
    }

    else
    {
      v5 = v10;
    }

    sub_101135DF8(a2, v5);
    if (v10 >= 0)
    {
      v6 = &__p[1];
    }

    else
    {
      v6 = __p[1];
    }

    if (v10 >= 0)
    {
      v7 = HIBYTE(v10);
    }

    else
    {
      v7 = v10;
    }

    std::string::append((a2 + 8), v6, v7);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[1]);
  }

  return v4;
}

void sub_101414E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101414E84(void *a1)
{
  *a1 = off_101F38EC8;
  sub_1013D7954(a1 + 4);

  return sub_100E64740(a1);
}

void sub_101414ED8(void *a1)
{
  *a1 = off_101F38EC8;
  sub_1013D7954(a1 + 4);
  sub_100E64740(a1);

  operator delete();
}

void sub_101414F40(Registry **a1@<X0>, void *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v4 = ServiceMap;
  if (v5 < 0)
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
  __p = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &__p);
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
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  isWatch = GestaltUtilityInterface::isWatch(v11);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  *a2 = 0;
  a2[1] = 0;
  if ((isWatch & 1) == 0)
  {
    operator new();
  }
}

void sub_10141545C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17)
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

void sub_10141569C(uint64_t a1)
{
  *a1 = off_101F38F58;
  v2 = *(a1 + 432);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10006DCAC(a1 + 392, *(a1 + 400));
  sub_100034450(*(a1 + 368));
  sub_101419968(*(a1 + 344));
  sub_100034450(*(a1 + 320));
  sub_1002FED80(a1 + 272);
  sub_100077CD4(a1 + 248, *(a1 + 256));
  if (*(a1 + 240) == 1 && *(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  v9 = (a1 + 192);
  sub_100112048(&v9);
  sub_100359978(a1 + 152, *(a1 + 160));
  sub_100359978(a1 + 128, *(a1 + 136));
  v3 = *(a1 + 120);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    sub_100004A34(v6);
  }

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
  SubscriberUserAlertManagerInterface::~SubscriberUserAlertManagerInterface(a1);
}

void sub_101415814(uint64_t a1)
{
  sub_10141569C(a1);

  operator delete();
}

void sub_10141584C(uint64_t a1, dispatch_object_t object)
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

void sub_10141594C(uint64_t a1, void *a2)
{
  if (!sub_101418678(a2, (a1 + 128)))
  {
    return;
  }

  if (sub_101417C84(a1 + 56, (a1 + 128)))
  {
    for (i = *(a1 + 192); i != *(a1 + 200); i += 88)
    {
      v4 = *(i + 80) != 1 || *(i + 56) == *(i + 64);
      if (!v4)
      {
        goto LABEL_23;
      }
    }

    v7 = *(a1 + 128);
    v8 = (a1 + 136);
    if (v7 == (a1 + 136))
    {
LABEL_23:
      sub_101417DDC(a1, 1u);
      sub_101417EB0(a1, 1);
      sub_10141BD94((a1 + 312), 1);
      sub_10141CB24(a1 + 336, 1);
      goto LABEL_24;
    }

    while (subscriber::isEsimCapable())
    {
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
          v4 = *v10 == v7;
          v7 = v10;
        }

        while (!v4);
      }

      v7 = v10;
      if (v10 == v8)
      {
        goto LABEL_23;
      }
    }

    v11 = *(a1 + 128);
    if (v11 != v8)
    {
      while (subscriber::isSimAbsent() && (subscriber::isPhySimDisabled() & 1) == 0)
      {
        v12 = v11[1];
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
            v13 = v11[2];
            v4 = *v13 == v11;
            v11 = v13;
          }

          while (!v4);
        }

        v11 = v13;
        if (v13 == v8)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_23;
    }

LABEL_36:
    if (*(a1 + 384))
    {
      v14 = *(a1 + 385);
      v15 = *(a1 + 40);
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v14 == 1)
      {
        if (v16)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I NO SIM alert is suppressed by user", buf, 2u);
        }

        *(a1 + 384) = 0;
      }

      else
      {
        if (v16)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I enqueue NO SIM alert", buf, 2u);
        }

        sub_100034450(*(a1 + 320));
        *(a1 + 320) = 0;
        *(a1 + 328) = 0;
        *(a1 + 312) = a1 + 320;
        v17 = 1;
        *buf = &v17;
        sub_100EB3B10(a1 + 312, 1);
        sub_100078B14(a1);
      }

      goto LABEL_24;
    }

    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "#I No SIM alert not allowed";
      goto LABEL_14;
    }
  }

  else
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "#I SIMs not settled, wait to evaluate No SIM state";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    }
  }

LABEL_24:

  sub_101417FF4(a1);
}

void **sub_101415C04(uint64_t a1, void *a2)
{
  result = sub_101418678(a2, (a1 + 152));
  if (!result)
  {
    return result;
  }

  v54 = _os_activity_create(&_mh_execute_header, "sim state changed", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v54, &state);
  os_activity_scope_leave(&state);
  v4 = *(a1 + 152);
  v5 = (a1 + 160);
  if (v4 == (a1 + 160))
  {
LABEL_37:
    sub_10006DCAC(a1 + 392, *(a1 + 400));
    *(a1 + 400) = 0;
    *(a1 + 408) = 0;
    *(a1 + 392) = a1 + 400;
    sub_101417EB0(a1, 2);
    sub_10141BD94((a1 + 312), 2);
    sub_10141CB24(a1 + 336, 2);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = (a1 + 400);
    v9 = (a1 + 320);
    while (subscriber::isSimSettled())
    {
      v10 = *v8;
      if (!*v8)
      {
        goto LABEL_12;
      }

      v11 = *(v4 + 8);
      v12 = a1 + 400;
      do
      {
        if (*(v10 + 28) >= v11)
        {
          v12 = v10;
        }

        v10 = *(v10 + 8 * (*(v10 + 28) < v11));
      }

      while (v10);
      if (v12 == v8 || v11 < *(v12 + 28))
      {
LABEL_12:
        v12 = a1 + 400;
      }

      isSimPermanentlyBlocked = subscriber::isSimPermanentlyBlocked();
      if (v12 == v8)
      {
        v14 = isSimPermanentlyBlocked;
      }

      else
      {
        v14 = 0;
      }

      if (v14 == 1)
      {
        v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v4 + 8));
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(state.opaque[0]) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I enqueue Permanently Blocked SIM alert", &state, 2u);
        }

        v16 = *v9;
        if (!*v9)
        {
LABEL_25:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v17 = v16;
            v18 = *(v16 + 28);
            if (v18 < 3)
            {
              break;
            }

            v16 = *v17;
            if (!*v17)
            {
              goto LABEL_25;
            }
          }

          if (v18 == 2)
          {
            break;
          }

          v16 = v17[1];
          if (!v16)
          {
            goto LABEL_25;
          }
        }

        v7 = 1;
        v6 = 1;
      }

      else
      {
        v6 |= isSimPermanentlyBlocked;
      }

      v19 = v4[1];
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
          v20 = v4[2];
          v21 = *v20 == v4;
          v4 = v20;
        }

        while (!v21);
      }

      v4 = v20;
      if (v20 == v5)
      {
        if (v7)
        {
          sub_100078B14(a1);
        }

        if (v6)
        {
          break;
        }

        goto LABEL_37;
      }
    }
  }

  state = 0;
  v57 = 0u;
  v58 = 1065353216;
  v22 = *(a1 + 152);
  if (v22 == v5)
  {
    goto LABEL_85;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = (a1 + 368);
  do
  {
    isEsimCapable = subscriber::isEsimCapable();
    if (subscriber::isSimSettled())
    {
      isSimDead = subscriber::isSimDead();
      v29 = isSimDead;
      v24 |= isSimDead;
      v30 = *v26;
      if (!*v26)
      {
        goto LABEL_49;
      }

      v31 = *(v22 + 11);
      v32 = a1 + 368;
      do
      {
        if (*(v30 + 28) >= v31)
        {
          v32 = v30;
        }

        v30 = *(v30 + 8 * (*(v30 + 28) < v31));
      }

      while (v30);
      if (v32 == v26 || v31 < *(v32 + 28) || *(v32 + 32) != *(v22 + 12))
      {
LABEL_49:
        if (isSimDead)
        {
          if (subscriber::isSimReady())
          {
            v33 = *(a1 + 40);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
            {
              v42 = subscriber::asString();
              *buf = 136315138;
              *&buf[4] = v42;
              _os_log_fault_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "Ready to Dead SIM on (%s)", buf, 0xCu);
            }
          }
        }

        v23 |= v29;
        if (*(v22 + 12) == 11 && (subscriber::isEsimCapable() & 1) == 0)
        {
          v34 = *(v22 + 11);
          if (!state.opaque[1])
          {
            goto LABEL_72;
          }

          v35 = vcnt_s8(state.opaque[1]);
          v35.i16[0] = vaddlv_u8(v35);
          if (v35.u32[0] > 1uLL)
          {
            v36 = *(v22 + 11);
            if (state.opaque[1] <= v34)
            {
              v36 = v34 % state.opaque[1];
            }
          }

          else
          {
            v36 = (state.opaque[1] - 1) & v34;
          }

          v37 = *(state.opaque[0] + 8 * v36);
          if (!v37 || (v38 = *v37) == 0)
          {
LABEL_72:
            operator new();
          }

          while (1)
          {
            v39 = v38[1];
            if (v39 == v34)
            {
              if (*(v38 + 4) == v34)
              {
                v24 = 1;
                v23 = 1;
                break;
              }
            }

            else
            {
              if (v35.u32[0] > 1uLL)
              {
                if (v39 >= state.opaque[1])
                {
                  v39 %= state.opaque[1];
                }
              }

              else
              {
                v39 &= state.opaque[1] - 1;
              }

              if (v39 != v36)
              {
                goto LABEL_72;
              }
            }

            v38 = *v38;
            if (!v38)
            {
              goto LABEL_72;
            }
          }
        }
      }
    }

    v40 = v22[1];
    if (v40)
    {
      do
      {
        v41 = v40;
        v40 = *v40;
      }

      while (v40);
    }

    else
    {
      do
      {
        v41 = v22[2];
        v21 = *v41 == v22;
        v22 = v41;
      }

      while (!v21);
    }

    v25 |= isEsimCapable;
    v22 = v41;
  }

  while (v41 != v5);
  if (v23)
  {
    if (*(&v57 + 1))
    {
      if (sub_10141CBAC(state.opaque[0], state.opaque[1], 1))
      {
        if (v25)
        {
          v55 = 7;
          *buf = &v55;
          sub_100EB3B10(a1 + 312, 7);
        }

        else
        {
          if (*(a1 + 168) == 1)
          {
            v45 = 6;
          }

          else
          {
            v45 = 8;
          }

          v55 = v45;
          *buf = &v55;
          sub_100EB3B10(a1 + 312, v45);
        }
      }

      if (sub_10141CBAC(state.opaque[0], state.opaque[1], 2))
      {
        v55 = 9;
        *buf = &v55;
        sub_100EB3B10(a1 + 312, 9);
      }
    }

    else
    {
      v55 = 3;
      *buf = &v55;
      sub_100EB3B10(a1 + 312, 3);
    }

    sub_100078B14(a1);
    goto LABEL_96;
  }

  if ((v24 & 1) == 0)
  {
LABEL_85:
    for (i = 0; i != 5; ++i)
    {
      v44 = dword_1019679C0[i];
      sub_101417EB0(a1, v44);
      sub_10141BD94((a1 + 312), v44);
      sub_10141CB24(a1 + 336, v44);
    }
  }

LABEL_96:
  sub_10063098C(&state);
  if (sub_101417C84(a1 + 56, (a1 + 152)))
  {
    if (sub_1014187B8((a1 + 152)))
    {
      sub_100078B14(a1);
    }

    else
    {
      sub_101417EB0(a1, 5);
      sub_10141BD94((a1 + 312), 5);
      sub_10141CB24(a1 + 336, 5);
    }
  }

  v46 = *(a1 + 152);
  if (v46 != v5)
  {
    v47 = (a1 + 368);
    do
    {
      if (subscriber::isSimSettled())
      {
        v48 = *v47;
        if (!*v47)
        {
LABEL_111:
          operator new();
        }

        v49 = *(v46 + 11);
        while (1)
        {
          while (1)
          {
            v50 = v48;
            v51 = *(v48 + 7);
            if (v51 <= v49)
            {
              break;
            }

            v48 = *v50;
            if (!*v50)
            {
              goto LABEL_111;
            }
          }

          if (v51 >= v49)
          {
            break;
          }

          v48 = v50[1];
          if (!v48)
          {
            goto LABEL_111;
          }
        }

        *(v50 + 8) = *(v46 + 12);
      }

      v52 = v46[1];
      if (v52)
      {
        do
        {
          v53 = v52;
          v52 = *v52;
        }

        while (v52);
      }

      else
      {
        do
        {
          v53 = v46[2];
          v21 = *v53 == v46;
          v46 = v53;
        }

        while (!v21);
      }

      v46 = v53;
    }

    while (v53 != v5);
  }

  return sub_1000C0590(&v54);
}

void sub_10141668C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  sub_10063098C(va1);
  sub_1000C0590(va);
  _Unwind_Resume(a1);
}

void sub_1014166F0(uint64_t a1, int a2)
{
  v2 = *(a1 + 176);
  if (v2 != a2)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = CSIBOOLAsString(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I SpringBoardFinishedStartup state : %s", &v5, 0xCu);
    }

    sub_100078B14(a1);
  }
}

void sub_1014167B0(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = asString();
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I buddy state changed : %s, previous : %s", buf, 0x16u);
  }

  if (*(a1 + 184) == 1)
  {
    v18[0] = off_101F397B0;
    v18[1] = a1;
    v18[3] = v18;
    sub_1014183F4(a1, v18);
    sub_10141B488(v18);
  }

  else
  {
    sub_100078B14(a1);
  }

  if (a2 == 1 && *(a1 + 184) != 1)
  {
    v5 = *(a1 + 16);
    if (!v5 || (v6 = *(a1 + 8), (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      sub_100013CC4();
    }

    v8 = v7;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v7);
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I schedule timer for RUIM alert", buf, 2u);
    }

    Registry::getTimerService(buf, *(a1 + 56));
    v10 = *buf;
    sub_10000501C(__p, "RUIM alert");
    v11 = *(a1 + 24);
    object = v11;
    if (v11)
    {
      dispatch_retain(v11);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1174405120;
    v12[2] = sub_101418838;
    v12[3] = &unk_101F38FB8;
    v12[4] = a1;
    v12[5] = v6;
    v13 = v8;
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    aBlock = _Block_copy(v12);
    sub_100E34D88(v10, __p, 0, 5000000, &object, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_101416A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, dispatch_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101416AE4(uint64_t result, int a2)
{
  v2 = *(result + 188);
  if (v2 != a2 && (v2 & 1) == 0)
  {
    v3[0] = off_101F39830;
    v3[1] = result;
    v3[3] = v3;
    sub_1014183F4(result, v3);
    return sub_10141B488(v3);
  }

  return result;
}

void sub_101416B78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10141B488(va);
  _Unwind_Resume(a1);
}

void sub_101416B8C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(a1 + 176));
    *buf = 136315138;
    v28 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I SpringBoardFinishedStartup state : %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(a1 + 178));
    v5 = CSIBOOLAsString(*(a1 + 177));
    v6 = CSIBOOLAsString(*(a1 + 179));
    *buf = 136315650;
    v28 = v4;
    v29 = 2080;
    v30 = v5;
    v31 = 2080;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I display status : locked %s, on %s, coversheet active %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asString();
    *buf = 136315138;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I buddy state : %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CSIBOOLAsString(*(a1 + 384));
    v9 = CSIBOOLAsString(*(a1 + 385));
    *buf = 136315394;
    v28 = v8;
    v29 = 2080;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I no sim alert allowed : %s, suppressed : %s", buf, 0x16u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = CSIBOOLAsString(*(a1 + 416));
    *buf = 136315138;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I RUIM alert shown: %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = CSIBOOLAsString(*(a1 + 417));
    *buf = 136315138;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I sim unlock in progress : %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = CSIBOOLAsString(*(a1 + 418));
    *buf = 136315138;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I sim unlock allowed during buddy : %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = CSIBOOLAsString(*(a1 + 424) != 0);
    *buf = 136315138;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Prevent baseband reset assertion held: %s", buf, 0xCu);
  }

  v14 = *(a1 + 152);
  if (v14 != (a1 + 160))
  {
    do
    {
      v15 = sub_101419228(a1, *(v14 + 8));
      v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v14 + 8));
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = CSIBOOLAsString(v15);
        *buf = 136315138;
        v28 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I sim unlock alert allowed : %s", buf, 0xCu);
      }

      v18 = v14[1];
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
          v19 = v14[2];
          v20 = *v19 == v14;
          v14 = v19;
        }

        while (!v20);
      }

      v14 = v19;
    }

    while (v19 != (a1 + 160));
  }

  v21 = *(a1 + 312);
  if (v21 != (a1 + 320))
  {
    do
    {
      v22 = *(a1 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = sub_101418F80(*(v21 + 7));
        v24 = subscriber::asString();
        *buf = 136315394;
        v28 = v23;
        v29 = 2080;
        v30 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I pending alert : %s (%s)", buf, 0x16u);
      }

      v25 = v21[1];
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
          v26 = v21[2];
          v20 = *v26 == v21;
          v21 = v26;
        }

        while (!v20);
      }

      v21 = v26;
    }

    while (v26 != (a1 + 320));
  }
}

void sub_101417070(uint64_t a1)
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

void sub_101417160(uint64_t a1)
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

void sub_101417250(uint64_t a1)
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

void sub_101417340(uint64_t a1)
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

void sub_101417430(uint64_t a1)
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

void sub_101417520(uint64_t a1)
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

void sub_101417600(uint64_t a1)
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

void sub_1014176E0(uint64_t a1)
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

void sub_1014177C0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v29 = 0u;
  memset(&v30, 0, sizeof(v30));
  v27 = 0u;
  v28 = 0u;
  memset(v26, 0, sizeof(v26));
  LOBYTE(v26[0]) = 1;
  v4 = *(a1 + 248);
  v5 = (a1 + 256);
  if (v4 != (a1 + 256))
  {
    do
    {
      v6 = *(v4 + 8);
      v7 = (&v28 + 8);
      if (v6 == 2 || (v7 = &v27, v6 == 1))
      {
        std::string::operator=(v7, (v4 + 5));
      }

      else
      {
        v8 = *(a1 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E Invalid slot in IMEIs", buf, 2u);
        }
      }

      v9 = v4[1];
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
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != v5);
  }

  if (*(a1 + 178))
  {
    goto LABEL_27;
  }

  if (*(a1 + 240) == 1)
  {
    if ((*(a1 + 239) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 224))
      {
        goto LABEL_20;
      }
    }

    else if (!*(a1 + 239))
    {
      goto LABEL_20;
    }

    std::string::operator=(&v30, (a1 + 216));
  }

LABEL_20:
  v13 = *(a1 + 192);
  v12 = *(a1 + 200);
  if (v13 != v12)
  {
    while (!*v13)
    {
      v13 += 22;
      if (v13 == v12)
      {
        goto LABEL_27;
      }
    }

    ctu::hex(buf, (v13 + 4), 0x10, a3);
    if (SHIBYTE(v26[3]) < 0)
    {
      operator delete(v26[1]);
    }

    *&v26[1] = *buf;
    v26[3] = v25;
  }

LABEL_27:
  v14 = *(a1 + 96);
  sub_1014193C8(v15, v26);
  (*(*v14 + 72))(v14, v15);
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(*(&v28 + 1));
  }

  if (SBYTE7(v28) < 0)
  {
    operator delete(v27);
  }

  if (SHIBYTE(v26[3]) < 0)
  {
    operator delete(v26[1]);
  }
}

uint64_t sub_101417A60(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_101417AC4(uint64_t a1)
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

void sub_101417BA4(uint64_t a1)
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

uint64_t sub_101417C84(uint64_t a1, void *a2)
{
  v19 = 0;
  v20 = 0uLL;
  subscriber::makeSimSlotRange();
  __p = 0;
  v17 = 0;
  v18 = 0;
  v14 = 0;
  v15 = vextq_s8(0, 0, 8uLL);
  v12 = 0uLL;
  v13 = 0;
  sub_10052B060(&__p, &v14, &v12);
  v3 = __p;
  if (a2[2] < ((v17 - __p) >> 2))
  {
    isSimSettled = 0;
    if (!__p)
    {
      return isSimSettled;
    }

    goto LABEL_13;
  }

  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 == v5)
  {
    isSimSettled = 1;
    if (!__p)
    {
      return isSimSettled;
    }

    goto LABEL_13;
  }

  do
  {
    isSimSettled = subscriber::isSimSettled();
    if (!isSimSettled)
    {
      break;
    }

    v8 = v6[1];
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
        v9 = v6[2];
        v10 = *v9 == v6;
        v6 = v9;
      }

      while (!v10);
    }

    v6 = v9;
  }

  while (v9 != v5);
  v3 = __p;
  if (__p)
  {
LABEL_13:
    v17 = v3;
    operator delete(v3);
  }

  return isSimSettled;
}

void sub_101417DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101417DDC(uint64_t a1, unsigned __int8 a2)
{
  v8 = a2;
  *(a1 + 384) = a2;
  v3 = sub_10005D028();
  sub_10000501C(&__p, "kNoSimAlertPreferenceKey");
  v4 = sub_1006197F4(v3, &__p, &v8);
  v5 = v4;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v5)
    {
      return;
    }
  }

  else if (v4)
  {
    return;
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "failed to persist no sim alert preference", &__p, 2u);
  }
}

void sub_101417E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_101417EB0(const void **result, int a2)
{
  v2 = result[43];
  if (v2)
  {
    v4 = result;
    v5 = result + 43;
    do
    {
      if (*(v2 + 8) >= a2)
      {
        v5 = v2;
      }

      v2 = v2[*(v2 + 8) < a2];
    }

    while (v2);
    if (v5 != result + 43 && *(v5 + 8) <= a2)
    {
      v6 = result[5];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v10 = sub_101418F80(a2);
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I canceling alert:%s", buf, 0xCu);
      }

      v7 = v4[12];
      sub_10073A5C0(&v8, v5 + 5);
      (*(*v7 + 56))(v7, &v8);
      return sub_1001DCA14(&v8);
    }
  }

  return result;
}

void sub_101417FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001DCA14(va);
  _Unwind_Resume(a1);
}

void sub_101417FF4(uint64_t a1)
{
  if (!capabilities::ct::getRUIMDeprecationStrategy(a1))
  {
    return;
  }

  if ((atomic_load_explicit(&qword_101FCAA30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCAA30))
  {
    __cxa_atexit(&std::string::~string, a898603, &_mh_execute_header);
    __cxa_guard_release(&qword_101FCAA30);
  }

  v2 = *(a1 + 128);
  if (v2 == (a1 + 136))
  {
LABEL_45:
    if (sub_101417C84(a1 + 56, (a1 + 128)) && *(a1 + 416) == 1)
    {
      v27 = *(a1 + 40);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Reset Ruim alert already shown status", buf, 2u);
      }

      *(a1 + 416) = 0;
    }

    return;
  }

  while (1)
  {
    v3 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(v2 + 8));
    v4 = v3;
    v5 = v2[7];
    v6 = v2[8];
    if (v5 != v6)
    {
      while (*v5 != 4)
      {
        if (++v5 == v6)
        {
          goto LABEL_26;
        }
      }
    }

    if (v5 == v6)
    {
      goto LABEL_26;
    }

    RUIMDeprecationStrategy = capabilities::ct::getRUIMDeprecationStrategy(v3);
    if (RUIMDeprecationStrategy == 2)
    {
      break;
    }

    v8 = *(v2 + 135);
    v9 = v8 >= 0 ? (v2 + 14) : v2[14];
    v10 = v8 >= 0 ? *(v2 + 135) : v2[15];
    v11 = byte_101FB97F7 >= 0 ? a898603 : *a898603;
    v12 = byte_101FB97F7 >= 0 ? byte_101FB97F7 : unk_101FB97E8;
    if (!v12)
    {
      break;
    }

    if (v10 >= v12)
    {
      v17 = (v9 + v10);
      v18 = *v11;
      v19 = v9;
      do
      {
        v20 = v10 - v12;
        if (v20 == -1)
        {
          break;
        }

        v21 = memchr(v19, v18, v20 + 1);
        if (!v21)
        {
          break;
        }

        v22 = v21;
        RUIMDeprecationStrategy = memcmp(v21, v11, v12);
        if (!RUIMDeprecationStrategy)
        {
          if (v22 == v17 || v22 != v9)
          {
            break;
          }

          goto LABEL_41;
        }

        v19 = v22 + 1;
        v10 = v17 - (v22 + 1);
      }

      while (v10 >= v12);
    }

    v13 = *v4;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I ICCID '%s' does not match prefix", buf, 0xCu);
    }

LABEL_26:
    v14 = v2[1];
    if (v14)
    {
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      do
      {
        v15 = v2[2];
        v16 = *v15 == v2;
        v2 = v15;
      }

      while (!v16);
    }

    v2 = v15;
    if (v15 == (a1 + 136))
    {
      goto LABEL_45;
    }
  }

LABEL_41:
  if (*(a1 + 416) == 1)
  {
    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "#I We've already shown the RUIM deprecated popup this power cycle";
      v25 = v23;
      v26 = 2;
      goto LABEL_44;
    }
  }

  else if (capabilities::ct::getRUIMDeprecationStrategy(RUIMDeprecationStrategy) == 1 && *(a1 + 184) == 1)
  {
    v28 = *(a1 + 40);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = asString();
      *buf = 136315138;
      *&buf[4] = v29;
      v24 = "#I Not showing RUIM deprecated alert due to buddy state (%s)";
      v25 = v28;
      v26 = 12;
LABEL_44:
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    }
  }

  else
  {
    v30 = *(a1 + 40);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I enqueue RUIM support alert", buf, 2u);
    }

    v31 = 4;
    *buf = &v31;
    sub_100EB3B10(a1 + 312, 4);
    sub_100078B14(a1);
  }
}

void sub_1014183F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 417) == 1)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I SIM unlock in progress", &v18, 2u);
    }

    return;
  }

  if (!a2)
  {
    sub_100022DB4();
  }

  v4 = (*(*a2 + 48))(a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I enqueue SIM unlock alert (%s)", &v18, 0xCu);
    }

    v7 = a1 + 320;
    v8 = *(a1 + 320);
    if (v8)
    {
      v9 = a1 + 320;
      v10 = *(a1 + 320);
      do
      {
        if (*(v10 + 28) >= 5)
        {
          v9 = v10;
        }

        v10 = *(v10 + 8 * (*(v10 + 28) < 5));
      }

      while (v10);
      if (v9 != v7 && *(v9 + 28) <= 5)
      {
        *(v9 + 32) = v5;
        goto LABEL_40;
      }

      v11 = *v9;
      if (*(a1 + 312) != v9)
      {
        if (v11)
        {
          v12 = *v9;
          do
          {
            v13 = v12;
            v12 = *(v12 + 8);
          }

          while (v12);
          goto LABEL_24;
        }

LABEL_21:
        v13 = v9;
        do
        {
          v14 = v13;
          v13 = *(v13 + 16);
        }

        while (*v13 == v14);
        v11 = 0;
LABEL_24:
        if (*(v13 + 28) >= 5)
        {
          for (; v8; v8 = v15[1])
          {
            while (1)
            {
              v15 = v8;
              v16 = *(v8 + 28);
              if (v16 < 6)
              {
                break;
              }

              v8 = *v15;
              if (!*v15)
              {
                goto LABEL_39;
              }
            }

            if (v16 == 5)
            {
              goto LABEL_40;
            }
          }

LABEL_39:
          operator new();
        }

        goto LABEL_35;
      }

      v13 = v9;
    }

    else
    {
      v9 = a1 + 320;
      if (*(a1 + 312) != v7)
      {
        goto LABEL_21;
      }

      v11 = 0;
      v9 = a1 + 320;
      v13 = a1 + 320;
    }

LABEL_35:
    if (v11)
    {
      v17 = (v13 + 8);
    }

    else
    {
      v17 = v9;
    }

    if (!*v17)
    {
      goto LABEL_39;
    }

LABEL_40:
    sub_100078B14(a1);
  }
}

uint64_t sub_101418678(void *a1, void *a2)
{
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 == v2)
  {
LABEL_15:
    v13 = *a2;
    v11 = a2 + 1;
    v12 = v13;
    if (v13 == v11)
    {
      return 0;
    }

    else
    {
      do
      {
        if (!*v2)
        {
          goto LABEL_23;
        }

        v14 = *(v12 + 8);
        v15 = v2;
        v16 = *v2;
        do
        {
          if (*(v16 + 32) >= v14)
          {
            v15 = v16;
          }

          v16 = *(v16 + 8 * (*(v16 + 32) < v14));
        }

        while (v16);
        if (v15 != v2 && v14 >= *(v15 + 8))
        {
          v17 = *(v15 + 12);
        }

        else
        {
LABEL_23:
          v17 = 0;
        }

        v18 = *(v12 + 12);
        v10 = v18 == v17;
        v19 = v18 != v17;
        if (!v10)
        {
          break;
        }

        v20 = v12[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v12[2];
            v10 = *v21 == v12;
            v12 = v21;
          }

          while (!v10);
        }

        v12 = v21;
      }

      while (v21 != v11);
    }
  }

  else
  {
    if (a2[1])
    {
      while (1)
      {
        v5 = *(v3 + 8);
        v6 = a2 + 1;
        v7 = a2[1];
        do
        {
          if (*(v7 + 32) >= v5)
          {
            v6 = v7;
          }

          v7 = *(v7 + 8 * (*(v7 + 32) < v5));
        }

        while (v7);
        if (v6 == a2 + 1 || v5 < *(v6 + 8))
        {
          break;
        }

        v8 = v3[1];
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
            v9 = v3[2];
            v10 = *v9 == v3;
            v3 = v9;
          }

          while (!v10);
        }

        v3 = v9;
        if (v9 == v2)
        {
          goto LABEL_15;
        }
      }
    }

    return 1;
  }

  return v19;
}

uint64_t sub_1014187B8(void *a1)
{
  v1 = a1 + 1;
  v2 = *a1;
  if (*a1 == a1 + 1)
  {
    return 0;
  }

  while (1)
  {
    result = subscriber::isSimLocked();
    if (result)
    {
      break;
    }

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
    if (v5 == v1)
    {
      return result;
    }
  }

  return 1;
}

void sub_101418838(void *a1)
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
        sub_101417FF4(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1014188C0(uint64_t result, uint64_t a2)
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

void sub_1014188DC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014188EC(uint64_t a1)
{
  if (*(a1 + 177))
  {
    if (!*(a1 + 178))
    {
      if (*(a1 + 179))
      {
        goto LABEL_7;
      }

      v28 = *(a1 + 320);
      if (!v28)
      {
        return;
      }

      v29 = a1 + 320;
      do
      {
        if (*(v28 + 28) >= 5)
        {
          v29 = v28;
        }

        v28 = *(v28 + 8 * (*(v28 + 28) < 5));
      }

      while (v28);
      if (v29 == a1 + 320 || *(v29 + 28) > 5)
      {
        return;
      }

      v30 = *(v29 + 32);
      v31 = *(a1 + 40);
      if (!v30)
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "unknown slot for SIM unlock alert", buf, 2u);
        }

        sub_10141BD94((a1 + 312), 5);
        return;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I launching SIM unlock alert", buf, 2u);
      }

      (*(**(a1 + 96) + 64))(*(a1 + 96), v30, *(a1 + 184) == 1);
      *(a1 + 417) = 1;
      sub_10000501C(buf, "/cc/assertions/prevent_baseband_reset");
      ctu::rest::AssertionHandle::create();
      if (SBYTE7(v37) < 0)
      {
        operator delete(*buf);
      }

      v32 = v41;
      v41 = 0uLL;
      v33 = *(a1 + 432);
      *(a1 + 424) = v32;
      if (!v33)
      {
        return;
      }

      sub_100004A34(v33);
      v27 = *(&v41 + 1);
      if (!*(&v41 + 1))
      {
        return;
      }

LABEL_51:
      sub_100004A34(v27);
      return;
    }
  }

  else if (*(a1 + 178) & 1) == 0 && (*(a1 + 179))
  {
LABEL_7:
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "#I screen is not locked but coversheet is active, don't display any alert";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, buf, 2u);
      return;
    }

    return;
  }

  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I showing SIM unlock alert on lock screen", buf, 2u);
  }

  v5 = *(a1 + 344);
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = a1 + 344;
  do
  {
    if (*(v5 + 32) >= 5)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < 5));
  }

  while (v5);
  if (v6 == a1 + 344 || *(v6 + 32) > 5 || (v7 = *(a1 + 96), sub_10073A5C0(&v40, (v6 + 40)), LODWORD(v7) = (*(*v7 + 48))(v7, &v40), sub_1001DCA14(&v40), !v7))
  {
LABEL_22:
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    *buf = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, buf);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        if (!v16)
        {
          goto LABEL_28;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
LABEL_28:
      v18 = *(a1 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing LocalizationInterface!", buf, 2u);
      }

LABEL_49:
      if (v17)
      {
        return;
      }

      v27 = v15;
      goto LABEL_51;
    }

LABEL_32:
    v19 = *(a1 + 152);
    if (v19 == (a1 + 160))
    {
      *__p = 0u;
      v39 = 0u;
      *buf = 0u;
      v37 = 0u;
    }

    else
    {
      v20 = 0;
      do
      {
        isSimLocked = subscriber::isSimLocked();
        v22 = v19[1];
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
            v23 = v19[2];
            v24 = *v23 == v19;
            v19 = v23;
          }

          while (!v24);
        }

        v20 += isSimLocked;
        v19 = v23;
      }

      while (v23 != (a1 + 160));
      *__p = 0u;
      v39 = 0u;
      *buf = 0u;
      v37 = 0u;
      if (v20 == 1)
      {
        (*(*v16 + 40))(&v35, v16, kCBMessageLocalizationTable, @"SIM_CARD_LOCKED", @"SIM_CARD_LOCKED");
LABEL_44:
        v25 = v35;
        *&v41 = *buf;
        v35 = 0;
        *buf = v25;
        sub_100005978(&v41);
        sub_100005978(&v35);
        BYTE8(v39) = 1;
        (*(**(a1 + 96) + 40))(&v35);
        v34 = 5;
        *&v41 = &v34;
        v26 = (sub_10141CF14(a1 + 336, 5) + 5);
        if (v26 != &v35)
        {
          *&v41 = *v26;
          *v26 = v35;
          v35 = 0;
          sub_1001DCA14(&v41);
        }

        sub_1001DCA14(&v35);
        if (SBYTE7(v39) < 0)
        {
          operator delete(__p[0]);
        }

        sub_100005978(&v37 + 1);
        sub_100005978(&v37);
        sub_100005978(&buf[8]);
        sub_100005978(buf);
        goto LABEL_49;
      }
    }

    (*(*v16 + 40))(&v35, v16, kCBMessageLocalizationTable, @"MULTIPLE_SIM_CARDS_LOCKED", @"MULTIPLE_SIM_CARDS_LOCKED");
    goto LABEL_44;
  }

  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v3 = "#I SIM unlock alert is already active";
    goto LABEL_21;
  }
}

void sub_101418EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_101418F24(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_100005978((a1 + 24));
  sub_100005978((a1 + 16));
  sub_100005978((a1 + 8));

  return sub_100005978(a1);
}

const char *sub_101418F80(int a1)
{
  if ((a1 - 1) > 8)
  {
    return "kNone";
  }

  else
  {
    return off_101F398A0[a1 - 1];
  }
}

void sub_101418FA8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v11 = a3;
  memset(&v10, 0, sizeof(v10));
  sub_10000501C(__p, "kSimUnlockAlertPreferenceKey");
  sub_1014190D8(&v10, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = sub_10005D028();
  if ((sub_1006197F4(v5, &v10, &v11) & 1) == 0)
  {
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "failed to persist lock preference", v7, 2u);
    }
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1014190A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014190D8(std::string *a1, uint64_t a2)
{
  sub_10000501C(&v15, "_");
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::string::insert(&v15, 0, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = subscriber::asString();
  sub_10000501C(__p, v9);
  if ((v14 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v11 = v14;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&v16, v10, v11);
  *a1 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
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

void sub_1014191DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

uint64_t sub_101419228(uint64_t a1, uint64_t a2)
{
  memset(&v13, 0, sizeof(v13));
  sub_10000501C(__p, "kSimUnlockAlertPreferenceKey");
  sub_1014190D8(&v13, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = 0;
  v4 = sub_10005D028();
  if (sub_10005D0D8(v4, &v13.__r_.__value_.__l.__data_, &v10))
  {
    v5 = v10;
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "unlocked";
      if (v5)
      {
        v7 = "locked";
      }

      *buf = 136315138;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I last sim lock status : %s", buf, 0xCu);
    }

    v8 = !v5;
  }

  else
  {
    v8 = 1;
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_101419388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014193C8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100005F2C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  if (*(a2 + 103) < 0)
  {
    sub_100005F2C((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
  }

  return a1;
}

void sub_1014194A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014194F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101419548(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101419588(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1014195B4(ServiceManager::Service *this)
{
  *this = off_101F39120;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_101419610(ServiceManager::Service *this)
{
  *this = off_101F39120;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_101419690@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1014196D4(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_10141584C(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10141584C(v4, 0);
}

void sub_101419774(uint64_t a1)
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

void sub_101419854(uint64_t a1, int a2, ServiceStage *this)
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

void sub_101419968(const void **a1)
{
  if (a1)
  {
    sub_101419968(*a1);
    sub_101419968(a1[1]);
    sub_1001DCA14(a1 + 5);

    operator delete(a1);
  }
}

uint64_t *sub_1014199BC(uint64_t *a1)
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

  ctu::RestModule::disconnect((v2 + 72));
  (*(**(v2 + 96) + 32))(*(v2 + 96));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_101419A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101419A84(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  Registry::getMobileHelper(buf, *(v1 + 56));
  v3 = *buf;
  memset(buf, 0, sizeof(buf));
  v4 = *(v1 + 120);
  *(v1 + 112) = v3;
  if (v4)
  {
    sub_100004A34(v4);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  Registry::createRestModuleOneTimeUseConnection(&v5, *(v1 + 56));
  ctu::RestModule::connect();
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_10000501C(&__p, "/cc/props/sims_on_device");
  operator new();
}

void sub_10141A0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, std::__shared_weak_count *a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_10141A194(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  (*(**(v1 + 96) + 24))(*(v1 + 96));
  cf = 0;
  (*(**(v1 + 112) + 16))(&cf);
  v3 = cf;
  if (cf)
  {
    __p[0] = cf;
    CFRetain(cf);
    ctu::cf::assign((v1 + 385), v3, v4);
    v5 = *(v1 + 385);
    if (*(v1 + 304) != v5)
    {
      *(v1 + 304) = v5;
      v6 = *(v1 + 296);
      if (v6)
      {
        (*(*v6 + 48))(v6, v1 + 304);
      }
    }

    v7 = *(v1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = CSIBOOLAsString(*(v1 + 385));
      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fNoSimAlertSuppressed = %s", buf, 0xCu);
    }

    sub_100045C8C(__p);
  }

  else
  {
    v9 = *(v1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      memset(buf, 0, sizeof(buf));
      v17 = 0;
      ctu::cf::assign();
      *__p = *buf;
      v12 = v17;
      v10 = __p;
      if (v17 < 0)
      {
        v10 = *buf;
      }

      *v14 = 136315138;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s key not found", v14, 0xCu);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  sub_10000A1EC(&cf);
  operator delete();
}

void sub_10141A418(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, const void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_10000A1EC(&a17);
  operator delete();
}

__n128 sub_10141A504(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F391A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10141A53C(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v23 = 0uLL;
  v24 = 0;
  sub_10010A62C(&v23, a2);
  p_size = &v3->__r_.__value_.__l.__size_;
  size = v3->__r_.__value_.__l.__size_;
  v20 = v3->__r_.__value_.__r.__words[0];
  v21 = size;
  v22 = v3->__r_.__value_.__r.__words[2];
  if (v22)
  {
    *(size + 16) = &v21;
    v3->__r_.__value_.__r.__words[0] = p_size;
    *p_size = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v20 = &v21;
  }

  v18 = v23;
  v19 = v24;
  v24 = 0;
  v23 = 0uLL;
  sub_100D21B04(v3, &v18);
  v16 = &v18;
  sub_1000B2AF8(&v16);
  if (v22 == v3->__r_.__value_.__r.__words[2])
  {
    v6 = v20;
    if (v20 == &v21)
    {
      goto LABEL_27;
    }

    v7 = v3->__r_.__value_.__r.__words[0];
    while (*(v6 + 8) == *(v7 + 8) && BasicSimInfo::operator==())
    {
      v8 = v6[1];
      v9 = v6;
      if (v8)
      {
        do
        {
          v6 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v6 = v9[2];
          v10 = *v6 == v9;
          v9 = v6;
        }

        while (!v10);
      }

      v11 = v7[1];
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
          v12 = v7[2];
          v10 = *v12 == v7;
          v7 = v12;
        }

        while (!v10);
      }

      v7 = v12;
      if (v6 == &v21)
      {
        goto LABEL_27;
      }
    }
  }

  v13 = a1[3];
  v14 = a1[4];
  v15 = (a1[2] + (v14 >> 1));
  if (v14)
  {
    v13 = *(*v15 + v13);
  }

  v16 = v20;
  v17[0] = v21;
  v17[1] = v22;
  if (v22)
  {
    *(v21 + 2) = v17;
    v20 = &v21;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v16 = v17;
  }

  v13(v15, &v16);
  sub_100359978(&v16, v17[0]);
LABEL_27:
  sub_100359978(&v20, v21);
  v20 = &v23;
  sub_1000B2AF8(&v20);
}

void sub_10141A73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, char *a17)
{
  sub_100359978(&a10, a11);
  sub_100359978(&a16, a17);
  a16 = (v17 - 64);
  sub_1000B2AF8(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_10141A794(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141A85C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39220;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10141A894(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v23 = 0uLL;
  v24 = 0;
  sub_10010A62C(&v23, a2);
  p_size = &v3->__r_.__value_.__l.__size_;
  size = v3->__r_.__value_.__l.__size_;
  v20 = v3->__r_.__value_.__r.__words[0];
  v21 = size;
  v22 = v3->__r_.__value_.__r.__words[2];
  if (v22)
  {
    *(size + 16) = &v21;
    v3->__r_.__value_.__r.__words[0] = p_size;
    *p_size = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v20 = &v21;
  }

  v18 = v23;
  v19 = v24;
  v24 = 0;
  v23 = 0uLL;
  sub_100D21B04(v3, &v18);
  v16 = &v18;
  sub_1000B2AF8(&v16);
  if (v22 == v3->__r_.__value_.__r.__words[2])
  {
    v6 = v20;
    if (v20 == &v21)
    {
      goto LABEL_27;
    }

    v7 = v3->__r_.__value_.__r.__words[0];
    while (*(v6 + 8) == *(v7 + 8) && BasicSimInfo::operator==())
    {
      v8 = v6[1];
      v9 = v6;
      if (v8)
      {
        do
        {
          v6 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v6 = v9[2];
          v10 = *v6 == v9;
          v9 = v6;
        }

        while (!v10);
      }

      v11 = v7[1];
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
          v12 = v7[2];
          v10 = *v12 == v7;
          v7 = v12;
        }

        while (!v10);
      }

      v7 = v12;
      if (v6 == &v21)
      {
        goto LABEL_27;
      }
    }
  }

  v13 = a1[3];
  v14 = a1[4];
  v15 = (a1[2] + (v14 >> 1));
  if (v14)
  {
    v13 = *(*v15 + v13);
  }

  v16 = v20;
  v17[0] = v21;
  v17[1] = v22;
  if (v22)
  {
    *(v21 + 2) = v17;
    v20 = &v21;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v16 = v17;
  }

  v13(v15, &v16);
  sub_100359978(&v16, v17[0]);
LABEL_27:
  sub_100359978(&v20, v21);
  v20 = &v23;
  sub_1000B2AF8(&v20);
}

void sub_10141AA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, char *a17)
{
  sub_100359978(&a10, a11);
  sub_100359978(&a16, a17);
  a16 = (v17 - 64);
  sub_1000B2AF8(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_10141AAEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141ABB4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F392A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141ABEC(void *a1, xpc *this, BOOL a3)
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

uint64_t sub_10141AC84(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141AD4C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39320;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141AD84(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141AE4C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F393A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141AE84(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_10141AF7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141B044(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39420;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141B07C(void *a1, xpc *this, BOOL a3)
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

uint64_t sub_10141B114(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141B1D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F394A0;
  a2[1] = v2;
  return result;
}

void sub_10141B1FC(uint64_t a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/suppress_sim_alerts");
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

void sub_10141B2AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_10141B2F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141B3BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39520;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141B3F4(void *a1)
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

uint64_t sub_10141B43C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141B488(uint64_t a1)
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

void sub_10141B508(uint64_t **a1)
{
  v4 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v1 + 2);
  v5[0] = off_101F395A0;
  v5[1] = v2;
  v5[2] = v3;
  v5[3] = v5;
  sub_1014183F4(v2, v5);
  sub_10141B488(v5);
  operator delete();
}

void sub_10141B5CC(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_10141B488(va);
  operator delete();
}

__n128 sub_10141B66C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F395A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10141B6A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (sub_101419228(v2, *(a1 + 16)))
  {
    return 3;
  }

  v4 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 16));
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v5)
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I user prefers not to unlock SIM", v6, 2u);
    return 0;
  }

  return result;
}

uint64_t sub_10141B758(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10141B7A4(uint64_t **a1)
{
  v4 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v1 + 2);
  v5[0] = off_101F39630;
  v5[1] = v2;
  v5[2] = v3;
  v5[3] = v5;
  sub_1014183F4(v2, v5);
  sub_10141B488(v5);
  operator delete();
}

void sub_10141B868(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_10141B488(va);
  operator delete();
}

__n128 sub_10141B908(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39630;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10141B93C(uint64_t a1)
{
  if (sub_10141B9C4(*(a1 + 16), (*(a1 + 8) + 152)))
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141B978(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10141B9C4(int a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    while (*(v3 + 8) != a1 || (subscriber::isSimLocked() & 1) == 0)
    {
      v5 = v3[1];
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
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
      if (v6 == v2)
      {
        v3 = v2;
        return v3 != v2;
      }
    }
  }

  return v3 != v2;
}

void sub_10141BA58(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(v1 + 8));
    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I setSimUnlockAllowedDuringBuddy %s", buf, 0xCu);
  }

  v5 = *(v1 + 8);
  *(v2 + 418) = v5;
  if (*(v2 + 184) == 1)
  {
    if (v5)
    {
      sub_100078B14(v2);
    }

    else
    {
      (*(**(v2 + 96) + 80))(*(v2 + 96));
    }
  }

  operator delete();
}

void sub_10141BB9C(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(v1 + 8));
    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I saveNoSimAlertPreference %s", buf, 0xCu);
  }

  sub_101417DDC(v2, *(v1 + 8));
  operator delete();
}

void sub_10141BCA0(uint64_t **a1)
{
  v4 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(*a1 + 2));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I clear sim lock status", buf, 2u);
  }

  sub_101418FA8(v2, *(v1 + 2), 0);
  operator delete();
}

void sub_10141BD94(uint64_t **a1, int a2)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      if (*(v6 + 7) >= a2)
      {
        v5 = v6;
      }

      v6 = v6[*(v6 + 7) < a2];
    }

    while (v6);
    if (v5 != v4 && *(v5 + 7) <= a2)
    {
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        v9 = v5;
        do
        {
          v8 = v9[2];
          v10 = *v8 == v9;
          v9 = v8;
        }

        while (!v10);
      }

      if (*a1 == v5)
      {
        *a1 = v8;
      }

      a1[2] = (a1[2] - 1);
      sub_100018288(v3, v5);

      operator delete(v5);
    }
  }
}

void sub_10141BE68(uint64_t **a1)
{
  v12 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(v1 + 417));
    *buf = 136315138;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I SIM unlock flow finished, was in progress : %s", buf, 0xCu);
  }

  if (*(v1 + 417) == 1)
  {
    *(v1 + 417) = 0;
    v4 = *(v1 + 432);
    *(v1 + 424) = 0;
    *(v1 + 432) = 0;
    if (v4)
    {
      sub_100004A34(v4);
    }

    sub_10141BD94((v1 + 312), 5);
    v5 = *(v1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I persist current sim lock preference", buf, 2u);
    }

    v6 = *(v1 + 152);
    if (v6 != (v1 + 160))
    {
      do
      {
        if (subscriber::isSimSettled())
        {
          v7 = *(v6 + 8);
          isSimLocked = subscriber::isSimLocked();
          sub_101418FA8(v1, v7, isSimLocked);
        }

        v9 = v6[1];
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
            v10 = v6[2];
            v11 = *v10 == v6;
            v6 = v10;
          }

          while (!v11);
        }

        v6 = v10;
      }

      while (v10 != (v1 + 160));
    }
  }

  operator delete();
}

void sub_10141C044(uint64_t **a1)
{
  v5 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(v1 + 417));
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I SIM unlock flow deactivated, was in progress : %s", &buf, 0xCu);
  }

  if (*(v1 + 417) == 1)
  {
    *(v1 + 417) = 0;
    v4 = *(v1 + 432);
    *(v1 + 424) = 0;
    *(v1 + 432) = 0;
    if (v4)
    {
      sub_100004A34(v4);
    }

    *&buf = off_101F396B0;
    *(&buf + 1) = v1;
    p_buf = &buf;
    sub_1014183F4(v1, &buf);
    sub_10141B488(&buf);
  }

  operator delete();
}

void sub_10141C174(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10141B488(va);
  operator delete();
}

uint64_t sub_10141C214(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F396B0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10141C240(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 320);
  if (!v2)
  {
    return 0;
  }

  v3 = v1 + 320;
  do
  {
    if (*(v2 + 28) >= 5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < 5));
  }

  while (v2);
  if (v3 == v1 + 320 || *(v3 + 28) > 5)
  {
    return 0;
  }

  v5 = *(v3 + 32);
  if (v5 == 3)
  {
    if (sub_1014187B8((v1 + 152)))
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  else if (sub_10141B9C4(0, (v1 + 152)))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141C2DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10141C328(uint64_t **a1)
{
  v5 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(v1 + 417));
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I SIM unlock flow invalidated, was in progress : %s", &buf, 0xCu);
  }

  if (*(v1 + 417) == 1)
  {
    *(v1 + 417) = 0;
    v4 = *(v1 + 432);
    *(v1 + 424) = 0;
    *(v1 + 432) = 0;
    if (v4)
    {
      sub_100004A34(v4);
    }

    *&buf = off_101F39730;
    *(&buf + 1) = v1;
    p_buf = &buf;
    sub_1014183F4(v1, &buf);
    sub_10141B488(&buf);
  }

  operator delete();
}

void sub_10141C458(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10141B488(va);
  operator delete();
}

uint64_t sub_10141C4F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F39730;
  a2[1] = v2;
  return result;
}

uint64_t sub_10141C524(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 320);
  if (!v2)
  {
    return 0;
  }

  v3 = v1 + 320;
  do
  {
    if (*(v2 + 28) >= 5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < 5));
  }

  while (v2);
  if (v3 == v1 + 320 || *(v3 + 28) > 5)
  {
    return 0;
  }

  v5 = *(v3 + 32);
  if (v5 == 3)
  {
    if (sub_1014187B8((v1 + 152)))
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  else if (sub_10141B9C4(0, (v1 + 152)))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141C5C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10141C60C(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Device info page requested...", buf, 2u);
  }

  if (*(v1 + 178) != 1)
  {
    sub_1014177C0(v1, v3, v4);
    goto LABEL_36;
  }

  cf = 0;
  ServiceMap = Registry::getServiceMap(*(v1 + 56));
  v6 = ServiceMap;
  v8 = v7;
  if (v7 < 0)
  {
    v9 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
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
  v12 = sub_100009510(&v6[1].__m_.__sig, buf);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v6);
  v13 = 0;
  v15 = 1;
LABEL_13:
  (*(*v14 + 96))(&cf, v14, 1, 2, @"ShowIMEIsInLockScreen", kCFBooleanFalse, 0);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  v33 = 0;
  v16 = Registry::getServiceMap(*(v1 + 56));
  v17 = v16;
  if (v7 < 0)
  {
    v18 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v7 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(v16);
  *buf = v7;
  v21 = sub_100009510(&v17[1].__m_.__sig, buf);
  if (v21)
  {
    v23 = v21[3];
    v22 = v21[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v17);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      v24 = 0;
LABEL_23:
      (*(*v23 + 96))(&v33, v23, 2, 2, @"ShowIMEIsInLockScreen", kCFBooleanFalse, 0);
      if ((v24 & 1) == 0)
      {
        sub_100004A34(v22);
      }

      v27 = cf;
      buf[0] = 0;
      if (cf && (v28 = CFGetTypeID(cf), v28 == CFBooleanGetTypeID()))
      {
        ctu::cf::assign(buf, v27, v26);
        v29 = buf[0];
      }

      else
      {
        v29 = 0;
      }

      v30 = v33;
      buf[0] = 0;
      if (v33 && (v31 = CFGetTypeID(v33), v31 == CFBooleanGetTypeID()))
      {
        ctu::cf::assign(buf, v30, v26);
        v32 = buf[0];
      }

      else
      {
        v32 = 0;
      }

      if ((v29 | v32))
      {
        sub_1014177C0(v1, v25, v26);
      }

      sub_10000A1EC(&v33);
      sub_10000A1EC(&cf);
LABEL_36:
      operator delete();
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v17);
  v22 = 0;
  v24 = 1;
  goto LABEL_23;
}

void sub_10141C93C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  sub_10000A1EC(va);
  operator delete();
}

void sub_10141C9BC(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Show IDS transferring view ...", buf, 2u);
  }

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *buf = 0u;
  v14 = 0u;
  buf[0] = 1;
  v3 = *(v1 + 96);
  sub_1014193C8(v4, buf);
  (*(*v3 + 88))(v3, v4);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }

  operator delete();
}

void sub_10141CAEC(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v1 = va_arg(va1, void);
  v3 = va_arg(va1, void);
  v4 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_101417A60(va);
  sub_101417A60(va1);
  operator delete();
}

void sub_10141CB24(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = a1 + 8;
    do
    {
      if (*(v2 + 32) >= a2)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 32) < a2));
    }

    while (v2);
    if (v3 != a1 + 8 && *(v3 + 32) <= a2)
    {
      sub_1000194D8(a1, v3);
      sub_1001DCA14((v3 + 40));

      operator delete(v3);
    }
  }
}

uint64_t *sub_10141CBAC(uint64_t a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10141CCC8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F397B0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10141CCF4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 152);
  v3 = (v1 + 160);
  if (v2 == (v1 + 160))
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    result = subscriber::isSimSettled();
    if (!result)
    {
      break;
    }

    if (subscriber::isSimReady())
    {
      return 0;
    }

    if ((subscriber::isSimAbsent() & 1) == 0)
    {
      result = subscriber::isSimLocked();
      if (!result)
      {
        return result;
      }

      v4 = 1;
    }

    v6 = v2[1];
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
        v7 = v2[2];
        v8 = *v7 == v2;
        v2 = v7;
      }

      while (!v8);
    }

    v2 = v7;
    if (v7 == v3)
    {
      if (v4)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10141CDB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141CE70(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F39830;
  a2[1] = v2;
  return result;
}

uint64_t sub_10141CE9C(uint64_t a1)
{
  if (sub_1014187B8((*(a1 + 8) + 152)))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141CEC8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10141CF14(uint64_t a1, int a2)
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

uint64_t sub_10141CFF0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1001DCA14(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

void DataUsageController::bootstrap_sync(id *this, group_session a2)
{
  DataUsageController::initialize_sync(this);
  (*(*this[64] + 16))(this[64]);
  v4 = this[66];
  v5 = *a2.var0.fObj;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  (*(*v4 + 24))(v4, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  (*(*this[70] + 16))(&v9);
  v6 = v9;
  v9 = 0uLL;
  v7 = this[69];
  *(this + 34) = v6;
  if (v7)
  {
    sub_100004A34(v7);
    if (*(&v9 + 1))
    {
      sub_100004A34(*(&v9 + 1));
    }
  }

  DataUsageController::subscriberInitialize_sync(this);
}

void sub_10141DCE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DataUsageController::setUpTriggerForCollapsingAfter_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Will start collapsing records after: %llu", &buf, 0xCu);
  }

  Registry::getTimerService(&buf, *(a1 + 120));
  v5 = buf;
  sub_10000501C(__p, "DataUsageController");
  v6 = *(a1 + 24);
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_10141E010;
  aBlock[3] = &unk_101E26008;
  aBlock[4] = a1;
  v11 = _Block_copy(aBlock);
  sub_100D23364(v5, __p, 1, 1000000 * a2, &object, &v11);
  v7 = v15;
  v15 = 0;
  v8 = *(a1 + 160);
  *(a1 + 160) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v15;
    v15 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  if (v11)
  {
    _Block_release(v11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }
}

void sub_10141DFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DataUsageController::resetIdleDataTimer_sync(DataUsageController *this)
{
  sub_100004AA0(&v17, this + 1);
  v3 = v17;
  v2 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  Registry::getTimerService(&v17, *(this + 15));
  v4 = v17;
  sub_10000501C(__p, "DataUsageController");
  v5 = *(this + 41);
  v6 = *(this + 3);
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3321888768;
  aBlock[2] = sub_10141E264;
  aBlock[3] = &unk_101F39A28;
  aBlock[4] = this;
  aBlock[5] = v3;
  v11 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = _Block_copy(aBlock);
  sub_100D23364(v4, __p, 1, 1000000 * v5, &object, &v12);
  v7 = v16;
  v16 = 0;
  v8 = *(this + 42);
  *(this + 42) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v16;
    v16 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  if (v12)
  {
    _Block_release(v12);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_10141E1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

  v27 = *(v25 - 56);
  if (v27)
  {
    sub_100004A34(v27);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_10141E264(void *a1)
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
        DataUsageController::handleIdleDataTimer_sync(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10141E2EC(uint64_t result, uint64_t a2)
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

void sub_10141E308(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 sub_10141E394(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39A68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10141E3CC(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  sub_10066EACC(&v8, a2);
  v4 = *v3;
  sub_100EE1F10(v3, &v8);
  if (v4 != *v3)
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = (a1[2] + (v6 >> 1));
    if (v6)
    {
      v5 = *(*v7 + v5);
    }

    v5(v7, v4);
  }

  sub_100009970(&v8, v9[0]);
}

uint64_t sub_10141E4A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141E570(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39AE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141E5A8(void *a1, xpc_object_t *a2)
{
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = 0;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v5);
    v8 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    v8 = xpc::dyn_cast_or_default(a2, 0, v5);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[2];
  v10 = a1[3];
  v11 = (a1[1] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11, v8);
}

uint64_t sub_10141E68C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141E754(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39B68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10141E78C(void *a1, xpc_object_t *a2)
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

  sub_1004F86DC(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_1004EDBF8(&v9, v10);
}

uint64_t sub_10141E864(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141E92C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39BE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141E964(void *a1)
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

uint64_t sub_10141E9AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141EA68(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F39C68;
  a2[1] = v2;
  return result;
}

void sub_10141EA94(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v8 = 0;
  v3 = asString();
  ctu::rest::detail::write_enum_string_value(&v8, v2, v3, v4);
  sub_10000501C(&__p, "/cc/props/data_usage_status");
  object = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_10141EB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10141EB8C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141EBD8(uint64_t a1)
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

__n128 sub_10141ECD4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39CF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141ED0C(void *a1)
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

uint64_t sub_10141ED54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141EE1C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39D78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141EE54(uint64_t *a1, xpc_object_t *a2)
{
  sub_1000745FC(a1[1], a2);
  v3 = a1[3];
  v4 = a1[4];
  v5 = (a1[2] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_10141EED0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141EF98(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39DF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10141EFD0(void *a1, xpc_object_t *a2)
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

  sub_10011E228(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_10141F0A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141F164(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F39E78;
  a2[1] = v2;
  return result;
}

void sub_10141F190(uint64_t a1, int *a2, const char *a3)
{
  v3 = *a2;
  if (v3 > 2)
  {
    v4 = "???";
  }

  else
  {
    v4 = off_101F3A2F8[v3];
  }

  v8 = 0;
  ctu::rest::detail::write_enum_string_value(&v8, v3, v4, a3);
  sub_10000501C(&__p, "/cc/props/database_integrity_check_result");
  object = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_10141F254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10141F298(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141F2E4(uint64_t a1)
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

__n128 sub_10141F3E0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39F08;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141F418(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_10141F510(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141F5D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39F88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141F610(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_10141F708(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141F7D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3A008;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141F808(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141F8D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3A088;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10141F908(void *a1, xpc_object_t *a2)
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

  sub_100109E38(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_10141F9E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141FAA8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3A108;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141FAE0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141FBA8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3A188;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141FBE0(void *a1, const xpc::object *a2)
{
  v3 = a1[1];
  v4 = *v3;
  v5 = v3[1];
  v11 = *(v3 + 4);
  v10[0] = v4;
  v10[1] = v5;
  read_rest_value(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, v10);
}

uint64_t sub_10141FC6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141FD34(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3A208;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141FD6C(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v13 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v6);
    *v4 = v14;
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

  return v9(v11, &v13);
}

uint64_t sub_10141FE68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141FF30(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3A288;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141FF68(void *a1, xpc_object_t *a2)
{
  v7 = 0;
  sub_100F5355C(&v7, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, &v7);
}

uint64_t sub_10141FFE8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014200D8(BlastDoorClientInterface *this)
{
  v2 = *(this + 1);
  *this = &off_101F3A320;
  *(this + 1) = 0;
  if (v2)
  {
    ctb::Client::~Client(v2);
    operator delete();
  }

  BlastDoorClientInterface::~BlastDoorClientInterface(this);
}

void sub_10142014C(BlastDoorClientInterface *a1)
{
  sub_1014200D8(a1);

  operator delete();
}

void NetworkUsageStrategy::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_101420500(uint64_t a1)
{
  if (a1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_101420718;
    block[3] = &unk_101E26008;
    block[4] = a1;
    dispatch_async(*(a1 + 24), block);
  }
}

void sub_101420578(std::__shared_weak_count *this)
{
  this->__vftable = off_101F3A3D8;
  shared_owners = this[1].__shared_owners_;
  if (shared_owners)
  {
    dispatch_release(shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);
}

void sub_1014205D4(std::__shared_weak_count *this)
{
  this->__vftable = off_101F3A3D8;
  shared_owners = this[1].__shared_owners_;
  if (shared_owners)
  {
    dispatch_release(shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);

  operator delete();
}

void sub_101420644(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_101420718;
    block[3] = &unk_101E26008;
    block[4] = v2;
    dispatch_async(*(v2 + 24), block);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_release(v3);
  }
}

uint64_t sub_1014206D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101420718(uint64_t a1)
{
  (*(**(a1 + 32) + 32))(*(a1 + 32));
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

void *sub_1014207A4(void *a1, dispatch_object_t *a2, void *a3)
{
  ctu::OsLogContext::OsLogContext(&v16, kCtLoggingSystemName, "lazuli.reg.ctr");
  a1[1] = 0;
  a1[2] = 0;
  v6 = *a2;
  a1[3] = *a2;
  if (v6)
  {
    dispatch_retain(v6);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger(v14, &v16);
  ctu::OsLogLogger::OsLogLogger((a1 + 5), v14);
  ctu::OsLogLogger::~OsLogLogger(v14);
  ctu::OsLogContext::~OsLogContext(&v16);
  v15[0] = off_101E2B528;
  v15[1] = sub_101420BA0;
  v15[3] = v15;
  a1[6] = 0;
  if ((capabilities::ct::supportsGemini(v7) & 1) == 0)
  {
    operator new();
  }

  if (!a1[6])
  {
    operator new();
  }

  sub_1000A8744(v15);
  *a1 = off_101F3A438;
  sub_10000501C(&__p, "lazuli.reg.ctr");
  v11 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  ctu::RestModule::RestModule();
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  a1[9] = *a3;
  v8 = a3[1];
  a1[10] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  DefaultLazuliRegistrationInitializerMap = GetDefaultLazuliRegistrationInitializerMap();
  sub_100DE3C84(a1 + 11, DefaultLazuliRegistrationInitializerMap);
  a1[19] = 0;
  a1[17] = 0;
  a1[18] = a1 + 19;
  a1[22] = 0;
  a1[23] = 0;
  a1[20] = 0;
  a1[21] = a1 + 22;
  return a1;
}

const char *sub_101420BA0(int a1)
{
  v1 = "lazuli.reg.ctr.?";
  if (a1 == 2)
  {
    v1 = "lazuli.reg.ctr.2";
  }

  if (a1 == 1)
  {
    return "lazuli.reg.ctr.1";
  }

  else
  {
    return v1;
  }
}

void sub_101420BCC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Powering on", buf, 2u);
  }

  if ((ctu::RestModule::isConnected((a1 + 56)) & 1) == 0)
  {
    Registry::createRestModuleOneTimeUseConnection(&v3, *(a1 + 72));
    ctu::RestModule::connect();
    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  sub_10000501C(&__p, "/cc/props/lazuli_registration_initializer");
  operator new();
}

void sub_101420F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101420F8C(uint64_t a1, void *a2)
{
  if (*(a1 + 104) == a2[2])
  {
    v3 = *(a1 + 88);
    v4 = (a1 + 96);
    if (v3 == (a1 + 96))
    {
      return;
    }

    v5 = *a2;
    while (*(v3 + 8) == *(v5 + 8) && sub_1004D09B0(v3 + 5, v5 + 5))
    {
      v6 = v3[1];
      v7 = v3;
      if (v6)
      {
        do
        {
          v3 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v3 = v7[2];
          v8 = *v3 == v7;
          v7 = v3;
        }

        while (!v8);
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
          v8 = *v10 == v5;
          v5 = v10;
        }

        while (!v8);
      }

      v5 = v10;
      if (v3 == v4)
      {
        return;
      }
    }
  }

  v62 = 0;
  v63[0] = 0;
  v11 = (a1 + 144);
  v63[1] = 0;
  sub_10142366C(&v62, (a1 + 144));
  v12 = *(a1 + 144);
  v13 = (a1 + 152);
  if (v12 != (a1 + 152))
  {
    v14 = (a1 + 96);
    do
    {
      v15 = SlotIdFromPersonalityId();
      v16 = *v14;
      if (!*v14)
      {
        goto LABEL_27;
      }

      v17 = a1 + 96;
      do
      {
        if (*(v16 + 32) >= v15)
        {
          v17 = v16;
        }

        v16 = *(v16 + 8 * (*(v16 + 32) < v15));
      }

      while (v16);
      if (v17 == v14 || v15 < *(v17 + 32))
      {
LABEL_27:
        v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v15);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Erasing registration information...", buf, 2u);
        }

        sub_101423A1C(&v62, v12 + 4);
      }

      v19 = v12[1];
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
          v20 = v12[2];
          v8 = *v20 == v12;
          v12 = v20;
        }

        while (!v8);
      }

      v12 = v20;
    }

    while (v20 != v13);
  }

  v21 = *(a1 + 88);
  if (v21 != (a1 + 96))
  {
    do
    {
      v60[0] = 0;
      v60[1] = 0;
      v61 = 0;
      PersonalityIdFromSlotId();
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      *__p = 0u;
      v55 = 0u;
      v52 = 0u;
      *v53 = 0u;
      *buf = 0u;
      *v51 = 0u;
      std::string::operator=(buf, (v21 + 5));
      std::string::operator=(&v51[1], (v21 + 8));
      std::string::operator=(v53, (v21 + 14));
      std::string::operator=(&__p[1], (v21 + 17));
      if (&v56 != (v21 + 20))
      {
        sub_100008234(&v56, v21[20], v21[21], 0xAAAAAAAAAAAAAAABLL * ((v21[21] - v21[20]) >> 3));
      }

      if ((&v57 + 8) != v21 + 23)
      {
        sub_100008234(&v57 + 1, v21[23], v21[24], 0xAAAAAAAAAAAAAAABLL * ((v21[24] - v21[23]) >> 3));
      }

      LODWORD(v59) = *(v21 + 86);
      BYTE4(v59) = *(v21 + 290);
      v65 = 0;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v24 = v65;
        v65 = Mutable;
        *__dst = v24;
        sub_1000296E0(__dst);
      }

      sub_10142344C(v65, "CarrierBased", *(v21 + 289), kCFAllocatorDefault, v23);
      sub_10142344C(v65, "BusinessMessagingProvisioned", *(v21 + 288), kCFAllocatorDefault, v25);
      v26 = sub_1004D0E00((v21 + 5));
      sub_10142344C(v65, "BusinessMessagingEnabled", v26, kCFAllocatorDefault, v27);
      if (*(v21 + 216) == 1)
      {
        sub_1014234F4(v65, "T1", v21[26], kCFAllocatorDefault, v28);
      }

      if (*(v21 + 232) == 1)
      {
        sub_1014234F4(v65, "T2", v21[28], kCFAllocatorDefault, v28);
      }

      if (*(v21 + 248) == 1)
      {
        sub_1014234F4(v65, "T4", v21[30], kCFAllocatorDefault, v28);
      }

      if (*(v21 + 264) == 1)
      {
        sub_1014234F4(v65, "SwitchoverSize", v21[32], kCFAllocatorDefault, v28);
      }

      if (*(v21 + 273) == 1)
      {
        sub_10142344C(v65, "PsSignalingTls", *(v21 + 272), kCFAllocatorDefault, v28);
      }

      if (*(v21 + 275) == 1)
      {
        sub_10142344C(v65, "PsMediaTls", *(v21 + 274), kCFAllocatorDefault, v28);
      }

      if (*(v21 + 277) == 1)
      {
        sub_10142344C(v65, "PsSignalingRoamingTls", *(v21 + 276), kCFAllocatorDefault, v28);
      }

      if (*(v21 + 279) == 1)
      {
        sub_10142344C(v65, "PsMediaRoamingTls", *(v21 + 278), kCFAllocatorDefault, v28);
      }

      if (*(v21 + 283) == 1)
      {
        sub_10142344C(v65, "WifiSignalingTls", *(v21 + 282), kCFAllocatorDefault, v28);
      }

      if (*(v21 + 281) == 1)
      {
        sub_10142344C(v65, "WifiMediaTls", *(v21 + 280), kCFAllocatorDefault, v28);
      }

      if (*(v21 + 375) < 0)
      {
        v30 = v21[45];
        if (!v30)
        {
          goto LABEL_70;
        }

        v29 = v65;
        sub_100005F2C(__dst, v21[44], v30);
      }

      else
      {
        if (!*(v21 + 375))
        {
          goto LABEL_70;
        }

        v29 = v65;
        *__dst = *(v21 + 22);
        v67 = v21[46];
      }

      sub_1014235AC(v29, "LazuliConferenceFactory", __dst, kCFAllocatorDefault, v28);
      if (SHIBYTE(v67) < 0)
      {
        operator delete(*__dst);
      }

LABEL_70:
      v31 = (v21 + 47);
      if (*(v21 + 399) < 0)
      {
        v33 = v21[48];
        if (!v33)
        {
          goto LABEL_77;
        }

        v32 = v65;
        sub_100005F2C(__dst, *v31, v33);
      }

      else
      {
        if (!*(v21 + 399))
        {
          goto LABEL_77;
        }

        v32 = v65;
        *__dst = *v31;
        v67 = v21[49];
      }

      sub_1014235AC(v32, "AuthType", __dst, kCFAllocatorDefault, v28);
      if (SHIBYTE(v67) < 0)
      {
        operator delete(*__dst);
      }

LABEL_77:
      if (CFDictionaryGetCount(v65) < 1)
      {
        v35 = *(&v59 + 1);
        *(&v59 + 1) = 0;
        *__dst = v35;
        v34 = __dst;
      }

      else
      {
        sub_100010180(&v64, &v65);
        *__dst = *(&v59 + 1);
        *(&v59 + 1) = v64;
        v64 = 0;
        sub_10001021C(__dst);
        v34 = &v64;
      }

      sub_10001021C(v34);
      sub_1000296E0(&v65);
      if (!sub_100C1EB0C(buf))
      {
        goto LABEL_92;
      }

      v36 = sub_100007A6C(a1 + 144, v60);
      if (v13 == v36)
      {
        v39 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v21 + 8));
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *__dst = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I Adding registration information...", __dst, 2u);
        }

        *__dst = v60;
        v38 = sub_101423B24(&v62, v60);
        std::string::operator=((v38 + 56), buf);
        std::string::operator=((v38 + 80), &v51[1]);
        std::string::operator=((v38 + 104), v53);
        std::string::operator=((v38 + 128), &__p[1]);
        if ((v38 + 56) != buf)
        {
LABEL_90:
          sub_100008234((v38 + 152), v56, *(&v56 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v56 + 1) - v56) >> 3));
          sub_100008234((v38 + 176), *(&v57 + 1), v58, 0xAAAAAAAAAAAAAAABLL * ((v58 - *(&v57 + 1)) >> 3));
        }

LABEL_91:
        *(v38 + 200) = v59;
        *(v38 + 204) = BYTE4(v59);
        sub_1000676D4((v38 + 208), &v59 + 1);
        goto LABEL_92;
      }

      if (sub_100C1E6D0((v36 + 56), buf))
      {
        v37 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v21 + 8));
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *__dst = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Updating registration information...", __dst, 2u);
        }

        *__dst = v60;
        v38 = sub_101423B24(&v62, v60);
        std::string::operator=((v38 + 56), buf);
        std::string::operator=((v38 + 80), &v51[1]);
        std::string::operator=((v38 + 104), v53);
        std::string::operator=((v38 + 128), &__p[1]);
        if ((v38 + 56) != buf)
        {
          goto LABEL_90;
        }

        goto LABEL_91;
      }

LABEL_92:
      sub_10001021C(&v59 + 1);
      *__dst = &v57 + 8;
      sub_1000087B4(__dst);
      *__dst = &v56;
      sub_1000087B4(__dst);
      if (SHIBYTE(v55) < 0)
      {
        operator delete(__p[1]);
      }

      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(v53[0]);
      }

      if (SHIBYTE(v52) < 0)
      {
        operator delete(v51[1]);
      }

      if (SHIBYTE(v51[0]) < 0)
      {
        operator delete(*buf);
      }

      if (SHIBYTE(v61) < 0)
      {
        operator delete(v60[0]);
      }

      v40 = v21[1];
      if (v40)
      {
        do
        {
          v41 = v40;
          v40 = *v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v41 = v21[2];
          v8 = *v41 == v21;
          v21 = v41;
        }

        while (!v8);
      }

      v21 = v41;
    }

    while (v41 != (a1 + 96));
  }

  *__dst = 1;
  *&__dst[8] = a1 + 112;
  if (v11 != &v62)
  {
    v42 = v62;
    if (*(a1 + 160))
    {
      v43 = *v11;
      *v11 = v13;
      *(*v13 + 16) = 0;
      *v13 = 0;
      *(a1 + 160) = 0;
      if (v43[1])
      {
        v44 = v43[1];
      }

      else
      {
        v44 = v43;
      }

      *buf = v11;
      *&buf[8] = v44;
      v51[0] = v44;
      if (!v44 || (*&buf[8] = sub_1000685CC(v44), v42 == v63))
      {
        v49 = v42;
      }

      else
      {
        do
        {
          std::string::operator=((v44 + 32), (v42 + 4));
          std::string::operator=((v44 + 56), (v42 + 7));
          std::string::operator=((v44 + 80), (v42 + 10));
          std::string::operator=((v44 + 104), (v42 + 13));
          std::string::operator=((v44 + 128), (v42 + 16));
          if (v44 != v42)
          {
            sub_100008234((v44 + 152), v42[19], v42[20], 0xAAAAAAAAAAAAAAABLL * (v42[20] - v42[19]));
            sub_100008234((v44 + 176), v42[22], v42[23], 0xAAAAAAAAAAAAAAABLL * (v42[23] - v42[22]));
          }

          v45 = *(v42 + 50);
          *(v44 + 204) = *(v42 + 204);
          *(v44 + 200) = v45;
          sub_1000676D4((v44 + 208), v42 + 26);
          v46 = v51[0];
          v60[0] = 0;
          v47 = sub_1001355F4(v11, v60, v51[0] + 4);
          sub_1000070DC(v11, v60[0], v47, v46);
          v44 = *&buf[8];
          v51[0] = *&buf[8];
          if (*&buf[8])
          {
            *&buf[8] = sub_1000685CC(*&buf[8]);
          }

          v48 = v42[1];
          if (v48)
          {
            do
            {
              v49 = v48;
              v48 = *v48;
            }

            while (v48);
          }

          else
          {
            do
            {
              v49 = v42[2];
              v8 = *v49 == v42;
              v42 = v49;
            }

            while (!v8);
          }

          if (!v44)
          {
            break;
          }

          v42 = v49;
        }

        while (v49 != v63);
      }

      sub_101423CA0(buf);
      v42 = v49;
    }

    if (v42 != v63)
    {
      memset(buf, 0, sizeof(buf));
      v51[0] = 0;
      sub_1014237E0();
    }
  }

  sub_101423C38(__dst);
  sub_1008F0450(&v62, v63[0]);
}

void sub_101421AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_101422524(&a11);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  sub_1008F0450(v36 - 152, *(v36 - 144));
  _Unwind_Resume(a1);
}

void sub_101421B88(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 184))
  {
    v4 = a2 + 1;
    v5 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v6 = *(a1 + 168);
    while (sub_100071DF8(v5 + 4, v6 + 4) && sub_1008DFB14((v5 + 7), (v6 + 7)))
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

  v12 = *(a1 + 168);
  if (v12 != (a1 + 176))
  {
    do
    {
      v13 = sub_100007A6C(a2, v12 + 4);
      if (a2 + 1 == v13)
      {
        if (!*(v12 + 14))
        {
          goto LABEL_59;
        }
      }

      else if (*(v13 + 56) == *(v12 + 14))
      {
        goto LABEL_59;
      }

      v14 = SlotIdFromPersonalityId();
      v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = sd::asString();
        v17 = "over cell";
        if (v12[8])
        {
          v17 = "over wifi";
        }

        v18 = "";
        if (*(v12 + 14) == 1)
        {
          v18 = v17;
        }

        *buf = 136315394;
        *&buf[4] = v16;
        *&buf[12] = 2080;
        *&buf[14] = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I RCS registered: [%s] %s", buf, 0x16u);
      }

      if (*(v12 + 14) == 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      v20 = xpc_dictionary_create(0, 0, 0);
      v21 = v20;
      if (v20)
      {
        v41 = v20;
      }

      else
      {
        v21 = xpc_null_create();
        v41 = v21;
        if (!v21)
        {
          v22 = xpc_null_create();
          v21 = 0;
          goto LABEL_39;
        }
      }

      if (xpc_get_type(v21) != &_xpc_type_dictionary)
      {
        v22 = xpc_null_create();
LABEL_39:
        v41 = v22;
        goto LABEL_40;
      }

      xpc_retain(v21);
LABEL_40:
      xpc_release(v21);
      v23 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v39, v14, v23, v24);
      *buf = &v41;
      *&buf[8] = "first";
      sub_10000F688(buf, &v39, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v39);
      v39 = 0;
      v25 = Lazuli::asString();
      ctu::rest::detail::write_enum_string_value(&v37, v19, v25, v26);
      *buf = &v41;
      *&buf[8] = "second";
      sub_10000F688(buf, &v37, &v38);
      xpc_release(v38);
      v38 = 0;
      xpc_release(v37);
      v37 = 0;
      v27 = v41;
      if (v41)
      {
        xpc_retain(v41);
      }

      else
      {
        v27 = xpc_null_create();
      }

      xpc_release(v41);
      sub_10000501C(buf, "/cc/events/lazuli_registration_state_changed");
      v41 = v27;
      v28 = xpc_null_create();
      ctu::RestModule::sendEvent();
      xpc_release(v41);
      v41 = 0;
      if (v43 < 0)
      {
        operator delete(*buf);
      }

      xpc_release(v28);
      v29 = *(v12 + 14);
      if (v29 == 4)
      {
        sub_10000501C(buf, "RCS refresh requested");
        sub_100A9B39C(a1 + 72, v14, buf);
        if (v43 < 0)
        {
          operator delete(*buf);
        }

        v41 = 0;
        v33 = subscriber::asString();
        ctu::rest::detail::write_enum_string_value(&v41, v14, v33, v34);
        sub_10000501C(buf, "/cc/events/lazuli_provisioning_refresh_required");
        object = v41;
        v41 = xpc_null_create();
        ctu::RestModule::sendEvent();
        xpc_release(object);
        object = 0;
        if (v43 < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_58;
      }

      if (v29 == 3)
      {
        v30 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v14);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I RCS reprovisioning requested", buf, 2u);
        }

        sub_10000501C(buf, "RCS reprovisioning requested");
        sub_100A9B39C(a1 + 72, v14, buf);
        if (v43 < 0)
        {
          operator delete(*buf);
        }

        v41 = 0;
        v31 = subscriber::asString();
        ctu::rest::detail::write_enum_string_value(&v41, v14, v31, v32);
        sub_10000501C(buf, "/cc/events/lazuli_reprovisioning_required");
        object = v41;
        v41 = xpc_null_create();
        ctu::RestModule::sendEvent();
        xpc_release(object);
        object = 0;
        if (v43 < 0)
        {
          operator delete(*buf);
        }

LABEL_58:
        xpc_release(v41);
      }

LABEL_59:
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
          v9 = *v36 == v12;
          v12 = v36;
        }

        while (!v9);
      }

      v12 = v36;
    }

    while (v36 != (a1 + 176));
  }
}

void sub_101422158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object, xpc_object_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014222A4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Tearing down", v2, 2u);
  }
}

uint64_t sub_101422304(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Tear down complete", &v4, 2u);
  }

  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  sub_1014223B0(a1 + 14, &v4);
  sub_1008F0450(&v4, v5[0]);
  return ctu::RestModule::disconnect((a1 + 7));
}

void *sub_1014223B0(void *result, void *a2)
{
  v3 = result;
  if (result[6] == a2[2])
  {
    v4 = result[4];
    v5 = result + 5;
    if (v4 == result + 5)
    {
      return result;
    }

    v6 = *a2;
    while (sub_100071DF8(v4 + 4, v6 + 4))
    {
      result = sub_100C1E46C(v4 + 7, v6 + 7);
      if (!result)
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
        return result;
      }
    }
  }

  v12 = v3 + 5;
  sub_1008F0450((v3 + 4), v3[5]);
  v3[4] = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v13 = a2 + 1;
  v3[5] = v14;
  v3[6] = v15;
  if (v15)
  {
    *(v14 + 16) = v12;
    *a2 = v13;
    *v13 = 0;
    a2[2] = 0;
  }

  else
  {
    v3[4] = v12;
  }

  result = v3[3];
  if (result)
  {
    v16 = *(*result + 48);

    return v16();
  }

  return result;
}

uint64_t sub_101422524(uint64_t a1)
{
  sub_10001021C((a1 + 152));
  v3 = (a1 + 120);
  sub_1000087B4(&v3);
  v3 = (a1 + 96);
  sub_1000087B4(&v3);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
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

uint64_t sub_1014225B8(uint64_t a1, void **a2)
{
  v2 = a2;
  v4 = sub_100007A6C(a1 + 168, a2);
  if (a1 + 176 == v4)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = *(v4 + 56);
    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2 * (v5 == 2);
    }
  }

  v7 = SlotIdFromPersonalityId();
  v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v2 + 23) < 0)
    {
      v2 = *v2;
    }

    v10 = 136315394;
    v11 = v2;
    v12 = 2080;
    v13 = Lazuli::asString();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Current registration state: [%s: %s]", &v10, 0x16u);
  }

  return v6;
}

void sub_1014226F8(uint64_t a1, uint64_t a2)
{
  v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Handling subscription removed", v6, 2u);
  }

  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  PersonalityIdFromSlotId();
  if (a1 + 152 != sub_100007A6C(a1 + 144, __p))
  {
    v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Resetting lazuli info", v6, 2u);
    }

    v6[0] = 1;
    v7 = 0u;
    v8 = 0;
    v6[1] = a1 + 112;
    sub_10142366C(&v7, (a1 + 144));
    sub_101423A1C(&v7, __p);
    sub_101423CF8(v6);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101422878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014228A4(uint64_t a1)
{
  sub_1014228DC(a1);

  operator delete();
}

uint64_t sub_1014228DC(uint64_t a1)
{
  *a1 = off_101F3A438;
  sub_100009970(a1 + 168, *(a1 + 176));
  sub_1008F0450(a1 + 144, *(a1 + 152));
  sub_1014229A8(a1 + 112);
  sub_1008DDF20(a1 + 88, *(a1 + 96));
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    sub_100004A34(v3);
  }

  LazuliLifetimeInterface::~LazuliLifetimeInterface(a1);
  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

uint64_t sub_1014229A8(uint64_t a1)
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

void *sub_101422AB4(void *a1, dispatch_object_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F3A558;
  sub_101422BAC(a1 + 3, a2, a3);
  return a1;
}

void sub_101422B30(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3A558;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_101422BAC(void *a1, dispatch_object_t *a2, uint64_t *a3)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1014207A4(a1, a2, &v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return a1;
}

void sub_101422C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_101422CC0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3A5E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101422CF8(void *a1, xpc_object_t *a2)
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

  sub_100DE475C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_1008DDF20(&v9, v10);
}

uint64_t sub_101422DD0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101422E8C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F3A668;
  a2[1] = v2;
  return result;
}

void sub_101422EB8(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v23 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v23 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v23 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      write_rest_value();
      __p = &v23;
      v17 = "first";
      sub_10000F688(&__p, &v21, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v21);
      v21 = 0;
      sub_100C1EB60((v6 + 7), &v19);
      __p = &v23;
      v17 = "second";
      sub_10000F688(&__p, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
      v11 = v23;
      if (v23)
      {
        xpc_retain(v23);
      }

      else
      {
        v11 = xpc_null_create();
      }

      xpc_release(v23);
      xpc_array_append_value(v4, v11);
      xpc_release(v11);
      v12 = v6[1];
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
          v13 = v6[2];
          v14 = *v13 == v6;
          v6 = v13;
        }

        while (!v14);
      }

      v6 = v13;
    }

    while (v13 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v15 = v4;
  }

  else
  {
    v15 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/lazuli_info_ready");
  v23 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v23 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v23);
  v23 = 0;
  if (v18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
}

void sub_101423170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_101423228(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014232F0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3A6F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101423328(void *a1, xpc_object_t *a2)
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

  sub_1008E2524(v3, a2);
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

uint64_t sub_101423400(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **sub_10142344C(__CFDictionary *a1, const __CFString **a2, int a3, unsigned int a4, const __CFAllocator *a5)
{
  key = 0;
  ctu::cf::convert_copy(&key, a2, 0x8000100, a4, a5);
  v7 = key;
  v12 = key;
  v8 = &kCFBooleanTrue;
  if (!a3)
  {
    v8 = &kCFBooleanFalse;
  }

  v9 = *v8;
  key = *v8;
  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    CFDictionaryAddValue(a1, v7, v9);
  }

  sub_100DA3324(&key);
  return sub_100DA3324(&v12);
}

void sub_1014234D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100DA3324(&a10);
  sub_100DA3324(&a9);
  _Unwind_Resume(a1);
}

const void **sub_1014234F4(__CFDictionary *a1, const __CFString **a2, const void *a3, const __CFAllocator *a4, const __CFAllocator *a5)
{
  valuePtr = 0;
  ctu::cf::convert_copy(&valuePtr, a2, 0x8000100, a4, a5);
  v8 = valuePtr;
  v13 = valuePtr;
  valuePtr = a3;
  v9 = CFNumberCreate(a4, kCFNumberLongLongType, &valuePtr);
  v12 = v9;
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    CFDictionaryAddValue(a1, v8, v9);
  }

  sub_100DA3324(&v12);
  return sub_100DA3324(&v13);
}

void sub_101423588(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  sub_100DA3324(va);
  sub_100DA3324(va1);
  _Unwind_Resume(a1);
}

const void **sub_1014235AC(__CFDictionary *a1, const __CFString **a2, uint64_t a3, unsigned int a4, const __CFAllocator *a5)
{
  value = 0;
  ctu::cf::convert_copy(&value, a2, 0x8000100, a4, a5);
  v6 = value;
  v10 = value;
  value = 0;
  ctu::cf::convert_copy();
  v9 = value;
  if (v6)
  {
    v7 = value == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    CFDictionaryAddValue(a1, v6, value);
  }

  sub_100DA3324(&v9);
  return sub_100DA3324(&v10);
}

void sub_101423648(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  sub_100DA3324(va);
  sub_100DA3324(va1);
  _Unwind_Resume(a1);
}

void *sub_10142366C(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = (a2 + 1);
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    while (1)
    {
      v17 = 0;
      v6 = a1[1];
      if (*a1 == v3)
      {
        break;
      }

      v7 = v3;
      if (v6)
      {
        do
        {
          v8 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v8 = v7[2];
          v9 = *v8 == v7;
          v7 = v8;
        }

        while (v9);
      }

      if ((sub_1000068BC(v8 + 4, v5 + 4) & 0x80) != 0)
      {
        if (!*v3)
        {
LABEL_14:
          v17 = v3;
LABEL_15:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          sub_1014237E0();
        }

        goto LABEL_10;
      }

      v10 = sub_100005C2C(a1, &v17, v5 + 4);
LABEL_11:
      if (!*v10)
      {
        goto LABEL_15;
      }

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
          v9 = *v12 == v5;
          v5 = v12;
        }

        while (!v9);
      }

      v5 = v12;
      if (v12 == v4)
      {
        return a1;
      }
    }

    v8 = v3;
    if (!v6)
    {
      goto LABEL_14;
    }

LABEL_10:
    v17 = v8;
    v10 = v8 + 1;
    goto LABEL_11;
  }

  return a1;
}

void sub_10142397C(_Unwind_Exception *a1)
{
  if (*(v2 + 127) < 0)
  {
    operator delete(*(v2 + 104));
  }

  if (*(v2 + 103) < 0)
  {
    operator delete(*(v2 + 80));
  }

  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  sub_100902C78(v1);
  _Unwind_Resume(a1);
}

void sub_101423A1C(void *a1, void **a2)
{
  v2 = a1 + 1;
  v3 = a1[1];
  if (v3)
  {
    v6 = a1 + 1;
    do
    {
      v7 = sub_1000068BC(v3 + 4, a2);
      if ((v7 & 0x80u) == 0)
      {
        v6 = v3;
      }

      v3 = *(v3 + ((v7 >> 4) & 8));
    }

    while (v3);
    if (v6 != v2 && (sub_1000068BC(a2, v6 + 4) & 0x80) == 0)
    {
      v8 = v6[1];
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
        v10 = v6;
        do
        {
          v9 = v10[2];
          v11 = *v9 == v10;
          v10 = v9;
        }

        while (!v11);
      }

      if (*a1 == v6)
      {
        *a1 = v9;
      }

      v12 = a1[1];
      --a1[2];
      sub_100018288(v12, v6);
      sub_1008F04AC((v6 + 4));

      operator delete(v6);
    }
  }
}

uint64_t sub_101423B24(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *sub_100005C2C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_101423C38(uint64_t a1)
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

uint64_t sub_101423CA0(uint64_t a1)
{
  sub_1008F0450(*a1, *(a1 + 16));
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

    sub_1008F0450(*a1, v2);
  }

  return a1;
}

uint64_t sub_101423CF8(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_1014223B0(*(a1 + 8), (a1 + 16));
  }

  sub_1008F0450(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_101423F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_101423F84(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 4);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = v5[3];
        if (v8)
        {
          v9 = sub_100032AC8(*(*(a1 + 32) + 16));
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = "BYTelephonySIMUnlockStateUnknown";
            if (a2 == 1)
            {
              v10 = "BYTelephonySIMUnlockStateAllowed";
            }

            if (a2 == 2)
            {
              v10 = "BYTelephonySIMUnlockStateDisallowed";
            }

            v12 = 136315138;
            v13 = v10;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I SIM unlock state updated to: %s", &v12, 0xCu);
          }

          (*(*v8 + 32))(v8, a2 == 1);
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

    v11 = sub_100032AC8(*(*(a1 + 32) + 16));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "delegate is invalid", &v12, 2u);
    }

    if (v7)
    {
      goto LABEL_16;
    }
  }

LABEL_17:
}

void sub_101424130(_Unwind_Exception *a1)
{
  sub_100004A34(v2);

  _Unwind_Resume(a1);
}

void sub_101424818(uint64_t a1)
{
  v2 = sub_100032AC8(*(*(a1 + 32) + 16));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I remote alert did activate (%p)", &v5, 0xCu);
  }

  if (([*(a1 + 40) isEqual:*(*(a1 + 32) + 40)] & 1) == 0)
  {
    v4 = sub_100032AC8(*(*(a1 + 32) + 16));
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I unknown remote alert handle, ignoring", &v5, 2u);
    }
  }
}

void sub_1014249E8(uint64_t a1)
{
  v2 = sub_100032AC8(*(*(a1 + 32) + 16));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v12 = 134217984;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I remote alert did deactivate (%p)", &v12, 0xCu);
  }

  v4 = [*(a1 + 40) isEqual:*(*(a1 + 32) + 40)];
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 _releaseRemoteAlertHandle];
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = *(v6 + 24);
        if (v9)
        {
          (*(*v9 + 56))(v9);
LABEL_15:
          sub_100004A34(v8);
          return;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v11 = sub_100032AC8(*(*(a1 + 32) + 16));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "delegate is invalid", &v12, 2u);
    }

    if (v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = sub_100032AC8(v5[2]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I unknown remote alert handle, ignoring", &v12, 2u);
    }
  }
}

void sub_101424CC8(uint64_t a1)
{
  v2 = *(a1 + 32) == 0;
  v3 = sub_100032AC8(*(*(a1 + 40) + 16));
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v7 = *(a1 + 48);
      v17 = 134217984;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I remote alert did invalidate (%p)", &v17, 0xCu);
    }
  }

  else if (v4)
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) description];
    v17 = 134218242;
    v18 = v5;
    v19 = 2080;
    v20 = [v6 UTF8String];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I remote alert did invalidate (%p) with error : %s", &v17, 0x16u);
  }

  v8 = [*(a1 + 48) isEqual:*(*(a1 + 40) + 40)];
  v9 = *(a1 + 40);
  if (v8)
  {
    [v9 _releaseRemoteAlertHandle];
    v10 = *(a1 + 40);
    v11 = *(v10 + 32);
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = *(v10 + 24);
        if (v13)
        {
          v14 = *(a1 + 32);
          if (v14)
          {
            if ([v14 code] != 5)
            {
              (*(*v13 + 64))(v13);
            }
          }

LABEL_20:
          sub_100004A34(v12);
          return;
        }
      }
    }

    else
    {
      v12 = 0;
    }

    v16 = sub_100032AC8(*(*(a1 + 40) + 16));
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "delegate is invalid", &v17, 2u);
    }

    if (v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = sub_100032AC8(v9[2]);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I unknown remote alert handle, ignoring", &v17, 2u);
    }
  }
}

void sub_101424FDC(void *a1, id *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F3A7A0;
  a1[3] = *a2;
  a1[4] = a3;
  operator new();
}

void sub_101425084(_Unwind_Exception *a1)
{
  sub_10031F3F4(v2);
  v4 = *(v1 + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  SubscriberRemoteUILaunchHelperInterface::~SubscriberRemoteUILaunchHelperInterface(v1);
  _Unwind_Resume(a1);
}

void sub_1014250CC(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 40);
  *v3 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  [v2 bootstrapWithDelegate:v3];
  if (v3[1])
  {
    std::__shared_weak_count::__release_weak(v3[1]);
  }
}

void sub_101425118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_101425140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v7 = Mutable;
  v18 = Mutable;
  if (*a2)
  {
    CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, *a2);
    v7 = v18;
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    CFDictionarySetValue(v7, kCFUserNotificationAlertMessageKey, v8);
    v7 = v18;
  }

  v9 = *(a2 + 8);
  if (v9)
  {
    CFDictionarySetValue(v7, kCFUserNotificationDefaultButtonTitleKey, v9);
    v7 = v18;
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    CFDictionarySetValue(v7, kCFUserNotificationAlternateButtonTitleKey, v10);
    v7 = v18;
  }

  v11 = *(a2 + 56);
  if (v11)
  {
    CFDictionarySetValue(v7, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
    v11 = *(a2 + 56);
    v7 = v18;
  }

  if ((v11 & 2) != 0)
  {
    CFDictionarySetValue(v7, SBUserNotificationAllowInSetupKey, kCFBooleanTrue);
    v7 = v18;
  }

  error = -1;
  v12 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 1uLL, &error, v7);
  v16 = v12;
  if (!error && v12)
  {
    operator new();
  }

  v13 = sub_100032AC8(*(a1 + 32));
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I failed to create notification", __p, 2u);
  }

  *a3 = 0;
  sub_1001DCA14(&v16);
  return sub_1000296E0(&v18);
}

void sub_1014254FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_1001DCA14((v21 - 80));
  sub_1000296E0((v21 - 64));
  _Unwind_Resume(a1);
}

BOOL sub_101425558(uint64_t a1, void *a2)
{
  v2 = a1 + 48;
  v3 = *(a1 + 56);
  if (v3 == a1 + 48)
  {
LABEL_4:
    v3 = a1 + 48;
  }

  else
  {
    while (*(v3 + 16) != *a2)
    {
      v3 = *(v3 + 8);
      if (v3 == v2)
      {
        goto LABEL_4;
      }
    }
  }

  return v2 != v3;
}

void sub_101425594(const void **a1, const void **a2)
{
  if (*a2)
  {
    sub_10073A5C0(&v5, a2);
    v4 = (*(*a1 + 6))(a1, &v5);
    sub_1001DCA14(&v5);
    if (v4)
    {
      CFUserNotificationCancel(*a2);
      sub_10142563C(a1 + 6, *a2);
    }
  }
}

void sub_101425628(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001DCA14(va);
  _Unwind_Resume(a1);
}

void sub_10142563C(const void **a1, const void *a2)
{
  v12[0] = v12;
  v12[1] = v12;
  v13 = 0;
  v2 = a1[1];
  if (v2 != a1)
  {
    v3 = 0;
    do
    {
      v4 = v2[1];
      if (v2[2] == a2)
      {
        if (v4 == a1)
        {
          v5 = 1;
        }

        else
        {
          do
          {
            v5 = v4[2] == a2;
            if (v4[2] != a2)
            {
              break;
            }

            v4 = v4[1];
          }

          while (v4 != a1);
        }

        if (v2 != v4)
        {
          v6 = *v4;
          if (v12 != a1)
          {
            v7 = 1;
            if (v6 != v2)
            {
              v8 = v2;
              do
              {
                v8 = v8[1];
                ++v7;
              }

              while (v8 != v6);
            }

            a1[2] = a1[2] - v7;
            v3 += v7;
            v13 = v3;
          }

          v9 = v6[1];
          v10 = *v2;
          v10[1] = v9;
          *v9 = v10;
          v11 = v12[0];
          *(v12[0] + 1) = v2;
          *v2 = v11;
          v12[0] = v6;
          v6[1] = v12;
        }

        if (!v5)
        {
          v4 = v4[1];
        }
      }

      v2 = v4;
    }

    while (v4 != a1);
  }

  sub_101425B60(v12);
}

void sub_101425734(uint64_t a1, unsigned __int8 *a2)
{
  v13 = objc_alloc_init(NSMutableDictionary);
  if (*a2 == 1)
  {
    v4 = a2 + 8;
    if (a2[31] < 0)
    {
      if (!*(a2 + 2))
      {
        goto LABEL_8;
      }

      v4 = *v4;
    }

    else if (!a2[31])
    {
LABEL_8:
      v6 = a2 + 32;
      if (a2[55] < 0)
      {
        if (!*(a2 + 5))
        {
          goto LABEL_14;
        }

        v6 = *v6;
      }

      else if (!a2[55])
      {
LABEL_14:
        v8 = a2 + 56;
        if (a2[79] < 0)
        {
          if (!*(a2 + 8))
          {
            goto LABEL_20;
          }

          v8 = *v8;
        }

        else if (!a2[79])
        {
LABEL_20:
          v10 = a2 + 80;
          if (a2[103] < 0)
          {
            if (!*(a2 + 11))
            {
LABEL_26:
              v12 = [NSNumber numberWithInt:6];
              [v13 setValue:v12 forKey:@"FlowTypeKey"];

              [**(a1 + 40) launchSimSetupViewWithOptions:*a2 userInfo:v13];
              goto LABEL_27;
            }

            v10 = *v10;
          }

          else if (!a2[103])
          {
            goto LABEL_26;
          }

          v11 = [NSString stringWithUTF8String:v10];
          [v13 setValue:v11 forKey:@"MeidKey"];

          goto LABEL_26;
        }

        v9 = [NSString stringWithUTF8String:v8];
        [v13 setValue:v9 forKey:@"Imei2Key"];

        goto LABEL_20;
      }

      v7 = [NSString stringWithUTF8String:v6];
      [v13 setValue:v7 forKey:@"ImeiKey"];

      goto LABEL_14;
    }

    v5 = [NSString stringWithUTF8String:v4];
    [v13 setValue:v5 forKey:@"EidKey"];

    goto LABEL_8;
  }

LABEL_27:
}

void sub_101425930(uint64_t a1, unsigned __int8 *a2)
{
  v5 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithInt:20];
  [v5 setValue:v4 forKey:@"FlowTypeKey"];

  [**(a1 + 40) launchSimSetupViewWithOptions:*a2 userInfo:v5];
}

void sub_101425A0C(uint64_t a1)
{
  *a1 = off_101F3A7A0;
  sub_101425B60((a1 + 48));
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {

    operator delete();
  }

  v3 = *(a1 + 24);
  *(a1 + 24) = 0;

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  SubscriberRemoteUILaunchHelperInterface::~SubscriberRemoteUILaunchHelperInterface(a1);
}

void sub_101425AAC(uint64_t a1)
{
  *a1 = off_101F3A7A0;
  sub_101425B60((a1 + 48));
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {

    operator delete();
  }

  v3 = *(a1 + 24);
  *(a1 + 24) = 0;

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  SubscriberRemoteUILaunchHelperInterface::~SubscriberRemoteUILaunchHelperInterface(a1);

  operator delete();
}

void sub_101425B60(const void **a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 1);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_1001DCA14(v2 + 2);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_101425C60(void *a1, id *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F3A878;
  sub_101424FDC(a1 + 3, a2, *a3);
}

void sub_101425CFC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3A878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101425D78(uint64_t a1)
{
  *a1 = off_101F3A7A0;
  sub_101425B60((a1 + 48));
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {

    operator delete();
  }

  v3 = *(a1 + 24);
  *(a1 + 24) = 0;

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  SubscriberRemoteUILaunchHelperInterface::~SubscriberRemoteUILaunchHelperInterface(a1);
}

void sub_101425E18(uint64_t a1)
{
  *a1 = off_101F3A7A0;
  sub_101425B60((a1 + 48));
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {

    operator delete();
  }

  v3 = *(a1 + 24);
  *(a1 + 24) = 0;

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  SubscriberRemoteUILaunchHelperInterface::~SubscriberRemoteUILaunchHelperInterface(a1);

  operator delete();
}

uint64_t *sub_101425ECC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    sub_1001DCA14(v1);
    operator delete();
  }

  return result;
}

uint64_t *sub_101425F24(uint64_t a1)
{
  v12 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (!v5)
      {
LABEL_13:
        sub_100004A34(v4);
        return sub_101425ECC(&v12);
      }

      responseFlags = 0;
      v6 = CFUserNotificationReceiveResponse(*a1, 0.0, &responseFlags);
      v7 = *(v5 + 32);
      if (v6)
      {
        v8 = sub_100032AC8(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v9 = "#I alert response error";
LABEL_9:
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
        }
      }

      else
      {
        v8 = sub_100032AC8(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v9 = "#I alert response ok";
          goto LABEL_9;
        }
      }

      sub_10073A5C0(&cf, a1);
      v15 = v5;
      v16 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v10 = sub_100032AC8((v5 + 24));
      *buf = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_1014260D4;
      v20 = &unk_101E26008;
      v21 = &v15;
      dispatch_sync(v10, buf);

      sub_1001DCA14(&v16);
      sub_1001DCA14(&cf);
      goto LABEL_13;
    }
  }

  return sub_101425ECC(&v12);
}

void sub_1014260AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004A34(v2);
  sub_101425ECC(va);
  _Unwind_Resume(a1);
}

void sub_1014260D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 + 8);
  v2 = (v1 + 8);
  if (v3)
  {
    v4 = **(a1 + 32);
    sub_10073A5C0(&v6, v2);
    v5 = (*(*v4 + 6))(v4, &v6);
    sub_1001DCA14(&v6);
    if (v5)
    {
      sub_10142563C(v4 + 6, *v2);
    }
  }
}

void sub_101426168(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001DCA14(va);
  _Unwind_Resume(a1);
}

void sub_1014261E0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1014262CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v16);
  _Unwind_Resume(a1);
}

void sub_1014263F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100F7E6BC(va);
  if (v3)
  {
    dispatch_release(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_10142642C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  sub_101470D44(__p);
}

void sub_10142649C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014264C0(NEFactoryInterface *a1)
{
  NEFactoryInterface::~NEFactoryInterface(a1);

  operator delete();
}

void sub_101426518(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3A9B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014265B4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3AA00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101426630(uint64_t a1, int a2, int a3, char *a4)
{
  ctu::OsLogContext::OsLogContext(v7, kCtLoggingSystemName, a4);
  SignalStrengthModel::SignalStrengthModel();
  ctu::OsLogContext::~OsLogContext(v7);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *a1 = off_101F3AA50;
  sub_1000D0098((a1 + 128), 1u, (a1 + 8));
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0;
  *(a1 + 592) = a3;
  return a1;
}

void sub_1014266E8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 15);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  SignalStrengthModel::~SignalStrengthModel(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_101426718(uint64_t a1)
{
  (*(*a1 + 88))(a1);
  v2 = *(*a1 + 40);

  return v2(a1, 1);
}

uint64_t sub_10142679C(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Model reset", v6, 2u);
  }

  sub_1000D0138(a1 + 128, a2);
  if (*(a1 + 568) == 1)
  {
    *(a1 + 568) = 0;
  }

  if (*(a1 + 584) == 1)
  {
    *(a1 + 584) = 0;
  }

  return (*(*a1 + 112))(a1, 1, 1);
}

double *sub_10142687C(uint64_t a1)
{
  v2 = sub_1002B25EC((a1 + 72), *(a1 + 592));
  v3 = *(a1 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5[0]) = 136315138;
    *(v5 + 4) = sub_1002B25C0(v2);
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Setting up %s bar mapping for LTE", v5, 0xCu);
  }

  sub_1002B2850(v2, v5);
  sub_1000D0198(a1 + 128, v5);
  return sub_1002B2790(v2, (a1 + 528));
}

uint64_t sub_10142695C(uint64_t a1, int a2, int a3)
{
  v4 = "sig.tds.?";
  if (a3 == 2)
  {
    v4 = "sig.tds.2";
  }

  if (a3 == 1)
  {
    v5 = "sig.tds.1";
  }

  else
  {
    v5 = v4;
  }

  v6 = sub_101426630(a1, a2, a3, v5);
  *v6 = off_101F3AAD8;
  *(v6 + 596) = 3;
  sub_1000D02DC(v6 + 128, "Rscp", "EcIo");
  return a1;
}

void sub_1014269FC(SignalStrengthModel *a1)
{
  *a1 = off_101F3AA50;
  sub_1014270B4(a1 + 128);
  v2 = *(a1 + 15);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SignalStrengthModel::~SignalStrengthModel(a1);
}

uint64_t sub_101426A5C(uint64_t a1, unint64_t a2, double a3)
{
  if (*(a1 + 596) != a2)
  {
    return 0;
  }

  v3 = HIDWORD(a2);
  if (HIDWORD(a2) != 1)
  {
    if (HIDWORD(a2) == 3)
    {
      if (a3 < -120.0 || a3 > -25.0)
      {
        return 1;
      }

      v5 = (a1 + 560);
      if ((*(a1 + 568) & 1) == 0)
      {
        v6 = (a1 + 568);
LABEL_15:
        *v6 = 1;
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    return 0;
  }

  if (a3 >= -128.0 && a3 <= 0.0)
  {
    v5 = (a1 + 576);
    if ((*(a1 + 584) & 1) == 0)
    {
      v6 = (a1 + 584);
      goto LABEL_15;
    }

LABEL_16:
    *v5 = a3;
    return 1;
  }

  return v3;
}