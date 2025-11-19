void sub_1011C38D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, int a13, int a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, const void *a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  if (v45)
  {
    dispatch_group_leave(v45);
    dispatch_release(v45);
  }

  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0(&a28);
  if (v45)
  {
    dispatch_group_leave(v45);
    dispatch_release(v45);
    dispatch_group_leave(v45);
    dispatch_release(v45);
    dispatch_release(v45);
  }

  sub_100064C94(&a18);
  sub_1000049E0(&a17);
  _Unwind_Resume(a1);
}

const void ***sub_1011C3AB8(const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10006372C((v1 + 1));
    sub_1000296E0(v1);
    operator delete();
  }

  return result;
}

const void ***sub_1011C3B0C(uint64_t a1)
{
  v4 = a1;
  sub_100010180(&v5, a1);
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_100022DB4();
  }

  (*(*v2 + 48))(v2, &v5);
  sub_10001021C(&v5);
  return sub_1011C3AB8(&v4);
}

void sub_1011C3BB0(void **a1)
{
  v1 = *a1;
  v2 = **a1;
  cf = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v4 = cf;
    cf = Mutable;
    *buf = v4;
    sub_1000279DC(buf);
  }

  else
  {
    v5 = v2[5];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to create CFMutableArraySharedRef", buf, 2u);
    }

    v16 = 0;
    v6 = v1[4];
    if (!v6)
    {
      sub_100022DB4();
    }

    (*(*v6 + 48))(v6, &v16);
    sub_100010250(&v16);
  }

  v7 = dispatch_group_create();
  subscriber::makeSimSlotRange();
  v8 = *buf;
  v9 = v19[0];
  if (*buf != v19[0])
  {
    v10 = v19[1];
    do
    {
      if (v10(*v8))
      {
        break;
      }

      ++v8;
    }

    while (v8 != v9);
    v11 = v19[0];
    while (v8 != v11)
    {
      v12 = *v8;
      v14 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      group = v7;
      if (v7 && (dispatch_retain(v7), group))
      {
        dispatch_group_enter(group);
        v13 = group;
      }

      else
      {
        v13 = 0;
      }

      v20[0] = off_101F18A58;
      v20[1] = v14;
      v14 = 0;
      group = 0;
      v20[2] = v13;
      v20[3] = v20;
      (*(*v2 + 48))(v2, v12, v20);
      sub_10006372C(v20);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      sub_1000279DC(&v14);
      do
      {
        ++v8;
      }

      while (v8 != v9 && (v10(*v8) & 1) == 0);
    }
  }

  *buf = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  sub_10002B13C(v19, (v1 + 1));
  operator new();
}

void sub_1011C3ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1011C3F68(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10002AA0C(v1 + 8);
    operator delete();
  }

  return result;
}

const void **sub_1011C3FB8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 8);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return sub_1000279DC(a1);
}

uint64_t sub_1011C4004(uint64_t a1)
{
  *a1 = off_101F18A58;
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  sub_1000279DC((a1 + 8));
  return a1;
}

void sub_1011C4064(uint64_t a1)
{
  *a1 = off_101F18A58;
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  sub_1000279DC((a1 + 8));

  operator delete();
}

void sub_1011C4164(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F18A58;
  sub_100222538((a2 + 8), (a1 + 8));
  v4 = *(a1 + 16);
  *(a2 + 16) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a2 + 16);
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

const void **sub_1011C41E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return sub_1000279DC((a1 + 8));
}

void sub_1011C4230(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  sub_1000279DC((a1 + 8));

  operator delete(a1);
}

const void **sub_1011C4284(uint64_t a1, const void **a2)
{
  v3 = *a2;
  v5 = v3;
  *a2 = 0;
  if (v3)
  {
    CFArrayAppendValue(*(a1 + 8), v3);
  }

  return sub_10001021C(&v5);
}

void sub_1011C42CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1011C42E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void ***sub_1011C432C(const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10002AA0C((v1 + 1));
    sub_1000279DC(v1);
    operator delete();
  }

  return result;
}

const void ***sub_1011C4380(uint64_t a1)
{
  v4 = a1;
  sub_10002A7D8(&v5, a1);
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_100022DB4();
  }

  (*(*v2 + 48))(v2, &v5);
  sub_100010250(&v5);
  return sub_1011C432C(&v4);
}

std::string *sub_1011C4424@<X0>(std::string *result@<X0>, std::string *a2@<X8>)
{
  v2 = *result[1].__r_.__value_.__r.__words[2];
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v3 = *(v2 + 504);
  if (v3)
  {
    v4 = v2 + 504;
    v5 = v2 + 504;
    do
    {
      if (*(v3 + 32) >= 1)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < 1));
    }

    while (v3);
    if (v5 != v4 && *(v5 + 32) <= 1)
    {
      return std::string::basic_string(a2, (v5 + 40), 0, 8uLL, &v6);
    }
  }

  return result;
}

__n128 sub_1011C44A4(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = v4;
  *(v2 + 16) = v5;
  *v2 = result;
  return result;
}

uint64_t sub_1011C4508(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(v1 + 2);
  if (subscriber::isValidSimSlot())
  {
    for (i = *(v2 + 168); i != *(v2 + 176); i += 2)
    {
      v5 = *i;
      if (*(*i + 36) == v3)
      {
        v10 = i[1];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ServiceMap = Registry::getServiceMap(*(v2 + 64));
        v12 = ServiceMap;
        if (v13 < 0)
        {
          v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
          v15 = 5381;
          do
          {
            v13 = v15;
            v16 = *v14++;
            v15 = (33 * v15) ^ v16;
          }

          while (v16);
        }

        std::mutex::lock(ServiceMap);
        *&buf = v13;
        v17 = sub_100009510(&v12[1].__m_.__sig, &buf);
        if (v17)
        {
          v19 = v17[3];
          v18 = v17[4];
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v12);
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v18);
            v20 = 0;
            goto LABEL_22;
          }
        }

        else
        {
          v19 = 0;
        }

        std::mutex::unlock(v12);
        v18 = 0;
        v20 = 1;
LABEL_22:
        isIPhone = GestaltUtilityInterface::isIPhone(v19);
        if ((v20 & 1) == 0)
        {
          sub_100004A34(v18);
        }

        if (isIPhone)
        {
LABEL_25:
          LOBYTE(v8) = 1;
          goto LABEL_26;
        }

        if (*(v5 + 58) == 1)
        {
          v24 = **(v5 + 352);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Allow sim lock for pin protected sim", &buf, 2u);
          }

          goto LABEL_25;
        }

        if (*(v5 + 52) == 1)
        {
          sub_100064FC8(v5, v21, v22);
          LOBYTE(v8) = subscriber::isSimPresentAndValid();
          LOBYTE(v41) = v8;
          v25 = **(v5 + 352);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v27 = printers::asString(&v41, v26);
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v27;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Allow SIM lock for 4FF: %s", &buf, 0xCu);
            LOBYTE(v8) = v41;
          }

          goto LABEL_26;
        }

        sub_100064FC8(v5, v21, v22);
        if (!subscriber::isSimReadyOrLocked())
        {
          LOBYTE(v8) = 0;
LABEL_26:
          if (v10)
          {
            sub_100004A34(v10);
          }

          return v8 & 1;
        }

        buf = 0uLL;
        v43 = 0;
        sub_10173C120(v5, v28, &buf);
        v29 = sub_100007A6C(v2 + 880, &buf);
        if (v2 + 888 == v29)
        {
          v34 = **(v5 + 352);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v41) = 0;
            v31 = "#I Allow sim pin lock while initial active state is unknown";
            v32 = v34;
            v33 = 2;
LABEL_43:
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, &v41, v33);
          }

LABEL_44:
          LOBYTE(v8) = 1;
        }

        else
        {
          if (*(v29 + 57) != 1 || *(v29 + 56) == 1)
          {
            v30 = **(v5 + 352);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v41) = 136315138;
              *(&v41 + 4) = printers::asString();
              v31 = "#I Allow sim pin lock as per initial active state (%s)";
              v32 = v30;
              v33 = 12;
              goto LABEL_43;
            }

            goto LABEL_44;
          }

          v40 = 0;
          v35 = Registry::getServiceMap(*(v2 + 64));
          sub_100099CD8(v35, &v41);
          (*(*v41 + 80))(&v39);
          sub_10002FE1C(&v40, &v39);
          sub_10000A1EC(&v39);
          if (*(&v41 + 1))
          {
            sub_100004A34(*(&v41 + 1));
          }

          if (v40)
          {
            LOBYTE(v41) = 0;
            ctu::cf::assign(&v41, v40, v36);
            v8 = v41;
            v37 = **(v5 + 352);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v38 = "disabled";
              if (v8)
              {
                v38 = "enabled";
              }

              LODWORD(v41) = 136315138;
              *(&v41 + 4) = v38;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Carrier override to allow eSIM pin lock is (%s)", &v41, 0xCu);
            }
          }

          else
          {
            LOBYTE(v8) = 0;
          }

          sub_100045C8C(&v40);
        }

        if (SHIBYTE(v43) < 0)
        {
          operator delete(buf);
        }

        goto LABEL_26;
      }
    }

    v7 = *(*(**(v2 + 56) + 16))(*(v2 + 56), v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Sim Info not found", &buf, 2u);
    }
  }

  else
  {
    v6 = *(*(**(v2 + 56) + 16))(*(v2 + 56), v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Invalid sim slot", &buf, 2u);
    }
  }

  LOBYTE(v8) = 0;
  return v8 & 1;
}

void sub_1011C4A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_100045C8C(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1011C4B5C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F18B98;
  a2[1] = v2;
  return result;
}

uint64_t sub_1011C4B88(uint64_t a1, __int16 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if ((v2 & 0x100) != 0)
  {
    if (v5)
    {
      v7[0] = 67109120;
      v7[1] = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I queryIfPinEnabled=%d", v7, 8u);
    }

    return (*(**(v3 + 120) + 64))(*(v3 + 120), v2 & 1);
  }

  else
  {
    if (v5)
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I queryIfPinEnabled failed because not ready yet", v7, 2u);
    }

    return (*(**(v3 + 120) + 72))(*(v3 + 120));
  }
}

uint64_t sub_1011C4CBC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1011C4D08(unsigned int **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = v1[10];
  for (i = *(*v1 + 168); i != *(*v1 + 176); i += 2)
  {
    v4 = *i;
    if (*(*i + 36) == v2)
    {
      v8 = i[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = *(v4 + 58);
        sub_100004A34(v8);
      }

      else
      {
        v7 = *(v4 + 58);
      }

      v6 = 256;
      goto LABEL_12;
    }
  }

  v5 = *(*(**(*v1 + 56) + 16))(*(*v1 + 56), v2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Sim Info not found", buf, 2u);
  }

  v6 = 0;
  v7 = 0;
LABEL_12:
  sub_100632604((v1 + 2), v6 | v7);
  sub_1011C4E34(&v11);
  return sub_1000049E0(&v10);
}

void sub_1011C4E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1011C4E34(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C4E34(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100627050(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t *sub_1011C4E84(uint64_t *a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  if (*(v1 + 39) < 0)
  {
    sub_100005F2C(__p, *(v1 + 16), *(v1 + 24));
  }

  else
  {
    *__p = *(v1 + 16);
    v18 = *(v1 + 32);
  }

  for (i = *(v2 + 168); ; i += 2)
  {
    if (i == *(v2 + 176))
    {
      v7 = *(*(**(v2 + 56) + 16))(*(v2 + 56), v3);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Cannot find SIM", buf, 2u);
      }

      v8 = 0;
      goto LABEL_11;
    }

    v6 = *i;
    if (*(*i + 36) == v3)
    {
      break;
    }
  }

  v8 = i[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((subscriber::isValidPin() & 1) == 0)
  {
    v12 = **(v6 + 352);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "PIN unlock skipped: invalid size or characters #sim-pin", buf, 2u);
    }

    goto LABEL_11;
  }

  v23[0] = v6;
  v23[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = sub_1011B3878(v2, v23, v10);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if ((v11 & 1) == 0)
  {
    v13 = **(v6 + 352);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I PIN Enable not allowed; skipping", buf, 2u);
    }

    goto LABEL_11;
  }

  *v21 = 0u;
  v22 = 0u;
  *buf = 0u;
  sub_10173CA78(v6, 1, buf);
  if ((BYTE8(v22) & 1) == 0)
  {
    v14 = **(v6 + 352);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Cannot create SIM card info", v19, 2u);
    }

LABEL_11:
    (*(**(v2 + 120) + 88))(*(v2 + 120), v3);
    goto LABEL_12;
  }

  (*(**(v2 + 104) + 96))(*(v2 + 104), buf, v4, __p);
  if ((BYTE8(v22) & 1) != 0 && v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }

LABEL_12:
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1011C521C(&v16);
  return sub_1000049E0(&v15);
}

void sub_1011C519C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25)
{
  if ((a25 & 1) != 0 && __p)
  {
    a23 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_1011C521C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C521C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1011C5274(unsigned int **a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  v29 = a1;
  v30 = v3;
  v4 = *v3;
  v5 = v3[2];
  for (i = *(*v3 + 168); ; i += 2)
  {
    if (i == *(*v3 + 176))
    {
      v8 = *(*(**(v4 + 56) + 16))(*(v4 + 56), v5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Cannot find SIM", buf, 2u);
      }

      v9 = 0;
      v10 = 0;
      v11 = *(v4 + 120);
      v12 = v3[2];
      v13 = -1;
      goto LABEL_8;
    }

    v7 = *i;
    if (*(*i + 36) == v5)
    {
      break;
    }
  }

  v9 = i[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (sub_100064FC8(v7, v5, a3) == 1)
  {
    sub_10173C09C(v7, 0);
    v15 = **(v7 + 352);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "#I Clear sim pin in progress flag";
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (*(v7 + 312) == 1)
  {
    v17 = **(v7 + 352);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "PIN unlock in progess : skip this attempt", buf, 2u);
    }

    goto LABEL_9;
  }

  if ((subscriber::isValidPin() & 1) == 0)
  {
    v20 = **(v7 + 352);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "PIN unlock skipped: invalid size or characters #sim-pin", buf, 2u);
    }

    v11 = *(v4 + 120);
    v12 = v3[2];
    v10 = sub_100064FC8(v7, v21, v22);
    v13 = *(v7 + 59);
LABEL_8:
    (*(*v11 + 40))(v11, v12, v10, v13);
    goto LABEL_9;
  }

  if (sub_100064FC8(v7, v18, v19) == 3)
  {
    *__p = 0u;
    v34 = 0u;
    *buf = 0u;
    sub_10173CA78(v7, 1, buf);
    if (BYTE8(v34))
    {
      sub_10173C09C(v7, 1);
      (*(**(v4 + 104) + 72))(*(v4 + 104), buf, v3 + 4);
      if ((BYTE8(v34) & 1) != 0 && __p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      v23 = **(v7 + 352);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Cannot create SIM card info", v31, 2u);
      }

      v26 = *(v4 + 120);
      v27 = v3[2];
      v28 = sub_100064FC8(v7, v24, v25);
      (*(*v26 + 40))(v26, v27, v28, *(v7 + 59));
    }
  }

  else
  {
    v15 = **(v7 + 352);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "#I PIN unlock skipped, SIM is not locked #sim-pin";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
    }
  }

LABEL_9:
  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_100D84790(&v30);
  return sub_1000049E0(&v29);
}

void sub_1011C5614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18)
{
  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_100D84790(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C5668(unsigned int **a1)
{
  v1 = *a1;
  v22 = a1;
  v23 = v1;
  v2 = *v1;
  v3 = v1[2];
  for (i = *(*v1 + 168); ; i += 2)
  {
    if (i == *(*v1 + 176))
    {
      v6 = *(*(**(v2 + 56) + 16))(*(v2 + 56), v3);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Cannot find SIM", buf, 2u);
      }

      v7 = 0;
      v8 = 0;
      v9 = *(v2 + 120);
      v10 = v1[2];
      v11 = -1;
      goto LABEL_19;
    }

    v5 = *i;
    if (*(*i + 36) == v3)
    {
      break;
    }
  }

  v7 = i[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!subscriber::isValidPuk() || (subscriber::isValidPin() & 1) == 0)
  {
    v12 = **(v5 + 352);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I PUK unlock skipped: invalid size or characters for puk/pin #sim-pin", buf, 2u);
    }

    v9 = *(v2 + 120);
    v10 = v1[2];
    v8 = sub_100064FC8(v5, v13, v14);
    v11 = *(v5 + 60);
LABEL_19:
    (*(*v9 + 56))(v9, v10, v8, v11);
    goto LABEL_20;
  }

  *__p = 0u;
  v27 = 0u;
  *buf = 0u;
  sub_10173CA78(v5, 1, buf);
  if (BYTE8(v27))
  {
    (*(**(v2 + 104) + 80))(*(v2 + 104), buf, v1 + 4, v1 + 10);
    if ((BYTE8(v27) & 1) != 0 && __p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v16 = **(v5 + 352);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Cannot create SIM card info", v24, 2u);
    }

    v19 = *(v2 + 120);
    v20 = v1[2];
    v21 = sub_100064FC8(v5, v17, v18);
    (*(*v19 + 56))(v19, v20, v21, *(v5 + 60));
  }

LABEL_20:
  if (v7)
  {
    sub_100004A34(v7);
  }

  sub_1011C596C(&v23);
  return sub_1000049E0(&v22);
}

void sub_1011C5918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18)
{
  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_1011C596C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C596C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
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

uint64_t *sub_1011C59D4(unsigned int **a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v3 = v1[2];
  for (i = *(*v1 + 168); i != *(*v1 + 176); i += 2)
  {
    v5 = *i;
    if (*(*i + 36) == v3)
    {
      v7 = i[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (subscriber::isValidPin() && (subscriber::isValidPin() & 1) != 0)
      {
        v21[0] = v5;
        v21[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = sub_1011B3878(v2, v21, v8);
        if (v7)
        {
          sub_100004A34(v7);
        }

        if (v9)
        {
          *__p = 0u;
          v20 = 0u;
          *buf = 0u;
          sub_10173CA78(v5, 1, buf);
          if (BYTE8(v20))
          {
            (*(*v2[13] + 88))(v2[13], buf, v1 + 4, v1 + 10);
            if ((BYTE8(v20) & 1) != 0 && __p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          else
          {
            v13 = **(v5 + 352);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *v16 = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Cannot create SIM card info", v16, 2u);
            }

            (*(*v2[15] + 104))(v2[15], v1[2], 40);
            *v16 = *(v5 + 36);
            v17 = 40;
            sub_1011B3AC8((v2 + 10), v16);
          }
        }

        else
        {
          v12 = **(v5 + 352);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I PIN Change not allowed; skipping", buf, 2u);
          }

          (*(*v2[15] + 104))(v2[15], v1[2], 40);
          *buf = *(v5 + 36);
          *&buf[4] = 40;
          sub_1011B3AC8((v2 + 10), buf);
        }
      }

      else
      {
        v10 = **(v5 + 352);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I PIN change skipped: invalid size or characters #sim-pin", buf, 2u);
        }

        (*(*v2[15] + 104))(v2[15], v1[2], 42);
        *buf = *(v5 + 36);
        *&buf[4] = 42;
        sub_1011B3AC8((v2 + 10), buf);
      }

      if (v7)
      {
        sub_100004A34(v7);
      }

      goto LABEL_26;
    }
  }

  v6 = *(*(*v2[7] + 16))(v2[7], v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Cannot find SIM", buf, 2u);
  }

  (*(*v2[15] + 104))(v2[15], v1[2], 40);
  *buf = v1[2];
  *&buf[4] = 40;
  sub_1011B3AC8((v2 + 10), buf);
LABEL_26:
  sub_1009BC3D0(&v15);
  return sub_1000049E0(&v14);
}

void sub_1011C5D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18)
{
  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_1009BC3D0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C5DFC(unsigned int **a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = v1[10];
  for (i = *(*v1 + 168); i != *(*v1 + 176); i += 2)
  {
    v4 = *i;
    if (*(*i + 36) == v2)
    {
      v7 = i[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(v4 + 59);
        sub_100004A34(v7);
      }

      else
      {
        v6 = *(v4 + 59);
      }

      goto LABEL_11;
    }
  }

  v5 = *(*(**(*v1 + 56) + 16))(*(*v1 + 56), v2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Sim Info not found", buf, 2u);
  }

  v6 = 255;
LABEL_11:
  sub_100106378((v1 + 2), v6);
  sub_1011C5F1C(&v10);
  return sub_1000049E0(&v9);
}

void sub_1011C5F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1011C5F1C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C5F1C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1000FF0B4(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t *sub_1011C5F6C(unsigned int **a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = v1[10];
  for (i = *(*v1 + 168); i != *(*v1 + 176); i += 2)
  {
    v4 = *i;
    if (*(*i + 36) == v2)
    {
      v7 = i[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(v4 + 60);
        sub_100004A34(v7);
      }

      else
      {
        v6 = *(v4 + 60);
      }

      goto LABEL_11;
    }
  }

  v5 = *(*(**(*v1 + 56) + 16))(*(*v1 + 56), v2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Sim Info not found", buf, 2u);
  }

  v6 = 255;
LABEL_11:
  sub_100106378((v1 + 2), v6);
  sub_1011C5F1C(&v10);
  return sub_1000049E0(&v9);
}

void sub_1011C6070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1011C5F1C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1011C608C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1011C6124(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1011C61A4(void **a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Queuing auth request", buf, 2u);
  }

  *buf = v1[1];
  sub_1004F1F78(&v23, (v1 + 2));
  sub_1011C608C(v26, (v1 + 5));
  v4 = v2[95];
  v5 = v2[94];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 8 * (v4 - v5) - 1;
  }

  v7 = v2[97];
  if (v6 == v2[98] + v7)
  {
    v8 = v7 >= 0x40;
    v9 = v7 - 64;
    if (!v8)
    {
      v10 = v2[96];
      v11 = v2[93];
      if (v4 - v5 < (v10 - v11))
      {
        operator new();
      }

      if (v10 == v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = (v10 - v11) >> 2;
      }

      sub_100EF4E80(v12);
    }

    v2[97] = v9;
    v21 = *v5;
    v2[94] = v5 + 8;
    sub_1010F098C(v2 + 93, &v21);
    v5 = v2[94];
    v4 = v2[95];
  }

  if (v4 == v5)
  {
    v14 = 0;
  }

  else
  {
    v13 = v2[98] + v2[97];
    v14 = (*&v5[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] + ((v13 & 0x3F) << 6));
  }

  *v14 = *buf;
  v14[1] = v23;
  v15 = v24;
  v14[2] = v24;
  v16 = v14 + 2;
  v17 = v25;
  v14[3] = v25;
  if (v17)
  {
    v15[2] = v16;
    v23 = &v24;
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v14[1] = v16;
  }

  sub_1011C6124((v14 + 4), v26);
  ++v2[98];
  sub_1004F26B0(v26);
  sub_10004EC58(&v23, v24);
  sub_1011B21C0(v2);
  sub_1011C67D8(&v20);
  return sub_1000049E0(&v19);
}

void sub_1011C6770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  operator delete(v16);
  if (v15)
  {
    operator delete(v15);
  }

  sub_1011B3154(&a13);
  sub_1011C67D8(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C67D8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1004F26B0(v1 + 40);
    sub_10004EC58(v1 + 16, *(v1 + 24));
    operator delete();
  }

  return result;
}

void *sub_1011C6834(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = (a2 + 1);
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      sub_100715B08(a1, v3, v5 + 7);
      v6 = *(v5 + 1);
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
          v7 = *(v5 + 2);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

uint64_t *sub_1011C68E4(uint64_t **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(*v1 + 168);
  for (i = *(*v1 + 176); v3 != i; v3 += 2)
  {
    if (*(*v3 + 36))
    {
      v5 = v3[1];
      v9[0] = *v3;
      v9[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1011B318C(v2, v9, v1 + 1);
      if (v5)
      {
        sub_100004A34(v5);
      }
    }
  }

  sub_1003FC688(&v8);
  return sub_1000049E0(&v7);
}

void sub_1011C698C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1003FC688(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C69B4(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 176);
  if (v3 != v4)
  {
    while (1)
    {
      v5 = *v3;
      if (*(*v3 + 36) == *(v1 + 8))
      {
        break;
      }

      v3 += 2;
      if (v3 == v4)
      {
        goto LABEL_9;
      }
    }

    v6 = v3[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10[0] = v5;
    v10[1] = v6;
    sub_1011B318C(v2, v10, (v1 + 16));
    if (v6)
    {
      sub_100004A34(v6);
      sub_100004A34(v6);
    }
  }

LABEL_9:
  sub_1002B1048(&v9);
  return sub_1000049E0(&v8);
}

void sub_1011C6A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
    sub_100004A34(v10);
  }

  sub_1002B1048(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

double sub_1011C6AAC(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v3;
    operator delete(v3);
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

  result = *&v5;
  *v2 = v5;
  *(v2 + 16) = v6;
  return result;
}

double sub_1011C6B18(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v3;
    operator delete(v3);
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

  result = *&v5;
  *v2 = v5;
  *(v2 + 16) = v6;
  return result;
}

uint64_t sub_1011C6B84(uint64_t a1, uint64_t a2)
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

uint64_t sub_1011C6C1C(uint64_t a1)
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

uint64_t sub_1011C6C9C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1011C6D1C(uint64_t *a1)
{
  v1 = *a1;
  v18 = a1;
  v19[0] = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  sub_1011C6B84(v20, v1 + 16);
  v5 = (*(**(v2 + 56) + 16))(*(v2 + 56), v3);
  v6 = v5;
  if (v4 != 36)
  {
    v7 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v16 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v16;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unexpected file (%s) for reading via this API", buf, 0xCu);
    }

    v19[1] = 0;
    v19[2] = 0;
    sub_1011B3584(v21, 0);
  }

  for (i = *(v2 + 168); i != *(v2 + 176); i += 2)
  {
    v9 = *i;
    if (*(*i + 36) == v3)
    {
      v12 = i[1];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *__p = 0u;
      v25 = 0u;
      *buf = 0u;
      SimCardForSimFilePath = subscriber::getSimCardForSimFilePath();
      sub_10173CA78(v9, SimCardForSimFilePath, buf);
      if (BYTE8(v25))
      {
        sub_1011C6B84(v22, v20);
        sub_1011B2B00(v2, buf, v4, v22);
      }

      v15 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v17 = subscriber::asString();
        *v22 = 136315138;
        *&v22[4] = v17;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid card info for file : %s", v22, 0xCu);
      }

      *v22 = 0uLL;
      sub_1011B3584(v21, 0);
      if (*&v22[8])
      {
        sub_100004A34(*&v22[8]);
      }

      goto LABEL_12;
    }
  }

  v10 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = subscriber::asString();
    *buf = 136315138;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E Can't get Sim File %s because there is no SIM", buf, 0xCu);
  }

  memset(buf, 0, sizeof(buf));
  sub_1011B3584(v21, 0);
  v12 = *&buf[8];
LABEL_12:
  if (v12)
  {
    sub_100004A34(v12);
  }

  sub_1011C6C1C(v20);
  sub_1011C7090(v19);
  return sub_1000049E0(&v18);
}

void sub_1011C6FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26)
{
  if (v26)
  {
    sub_100004A34(v26);
  }

  sub_1011C6C1C(&a13);
  sub_1011C7090(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C7090(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1011C6C1C(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t sub_1011C70E0(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1011C7160(uint64_t *a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  v4 = *(v1 + 8);
  v3 = *(v1 + 12);
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  sub_1001B964C(v14, *(v1 + 24), *(v1 + 32), (*(v1 + 32) - *(v1 + 24)) >> 1);
  sub_1011C764C(v22, v1 + 48);
  *v20 = 0u;
  v21 = 0u;
  *__p = *v14;
  v19 = v15;
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  subscriber::FileId::FileId();
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v5 = *(v2 + 168);
  v6 = *(v2 + 176);
  if (v5 == v6)
  {
LABEL_6:
    LOBYTE(buf) = 0;
    LOBYTE(v26) = 0;
    if (!v23)
    {
      sub_100022DB4();
    }

    (*(*v23 + 48))(v23, &buf);
    if (v26 == 1 && buf)
    {
      *(&buf + 1) = buf;
      operator delete(buf);
    }
  }

  else
  {
    while (1)
    {
      v7 = *v5;
      if (*(*v5 + 36) == v4)
      {
        break;
      }

      v5 += 2;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    v8 = v5[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = 0u;
    memset(v16, 0, sizeof(v16));
    sub_10173CA78(v7, v3, v16);
    if (BYTE8(v17))
    {
      LOWORD(buf) = v20[0];
      v25 = 0;
      v26 = 0;
      *(&buf + 1) = 0;
      sub_1001B964C(&buf + 8, v20[1], v21, (v21 - v20[1]) >> 1);
      sub_1011C70E0(v27, v22);
      v27[8] = 0;
      operator new();
    }

    v9 = **(v7 + 352);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = subscriber::asString();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v11;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Invalid card info for type : %s", &buf, 0xCu);
    }

    LOBYTE(buf) = 0;
    LOBYTE(v26) = 0;
    if (!v23)
    {
      sub_100022DB4();
    }

    (*(*v23 + 48))(v23, &buf);
    if (v26 == 1 && buf)
    {
      *(&buf + 1) = buf;
      operator delete(buf);
    }

    if (v8)
    {
      sub_100004A34(v8);
    }
  }

  if (v20[1])
  {
    *&v21 = v20[1];
    operator delete(v20[1]);
  }

  sub_1011B67DC(v22);
  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  sub_1011C75EC(&v13);
  return sub_1000049E0(&v12);
}

void sub_1011C74F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, char a29)
{
  if (v29)
  {
    sub_100004A34(v29);
  }

  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  sub_1011B67DC(&a29);
  if (a11)
  {
    a12 = a11;
    operator delete(a11);
  }

  sub_1011C75EC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C75EC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1011B67DC(v1 + 48);
    v2 = *(v1 + 24);
    if (v2)
    {
      *(v1 + 32) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1011C764C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1011C76FC(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  __p[1] = 0;
  v8 = 0;
  __p[0] = 0;
  sub_1011AF438(v2, *(v1 + 8), *(v1 + 12), __p);
  v3 = *(v1 + 40);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1011C77C4(&v6);
  return sub_1000049E0(&v5);
}

void sub_1011C7798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1011C77C4(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C77C4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100007E44(v1 + 16);
    operator delete();
  }

  return result;
}

std::string *sub_1011C7814@<X0>(std::string *result@<X0>, std::string *a2@<X8>)
{
  v3 = result[1].__r_.__value_.__r.__words[2];
  v4 = *v3;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v5 = *(v4 + 504);
  if (v5)
  {
    v6 = v4 + 504;
    v7 = *v3[1];
    v8 = v6;
    do
    {
      if (*(v5 + 32) >= v7)
      {
        v8 = v5;
      }

      v5 = *(v5 + 8 * (*(v5 + 32) < v7));
    }

    while (v5);
    if (v8 != v6 && v7 >= *(v8 + 32))
    {
      return std::string::operator=(a2, (v8 + 40));
    }
  }

  return result;
}

void sub_1011C7894(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1011C78B0@<X0>(std::string *result@<X0>, std::string *a2@<X8>)
{
  v3 = *result[1].__r_.__value_.__r.__words[2];
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  if (*(v3 + 488) == 1)
  {
    return std::string::operator=(a2, (v3 + 464));
  }

  return result;
}

void sub_1011C78F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011C7914(uint64_t a1)
{
  v1 = qword_101FC8D18;
  if (qword_101FC8D18 != &unk_101FC8D20)
  {
    v2 = *(a1 + 40);
    v3 = *v2;
    v4 = **(v2 + 8);
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v7 = *(v2 + 32);
    v8 = *(v2 + 40);
    do
    {
      v9 = *(v1 + 28);
      v28 = 0;
      v29 = 0;
      v30 = 0;
      sub_1011B2F00(&v28, v3, v4, v9);
      v10 = v28;
      if (v9 > 6)
      {
        if (v9 == 7)
        {
          if (v29 == v28)
          {
            if (*(v7 + 23) < 0)
            {
              **v7 = 0;
              *(v7 + 8) = 0;
            }

            else
            {
              *v7 = 0;
              *(v7 + 23) = 0;
            }
          }

          else
          {
            (*(**(v3 + 56) + 16))(*(v3 + 56), v4);
            v14 = subscriber::asString();
            sub_10000501C(&v22, v14);
            subscriber::sDecodeIsimTLVTransparent();
            if (v23 < 0)
            {
              v12 = v22;
              goto LABEL_27;
            }
          }

LABEL_28:
          v10 = v28;
          goto LABEL_29;
        }

        if (v9 == 8)
        {
          __p = 0uLL;
          v21 = 0;
          if (v29 == v28)
          {
            sub_100008764(v8);
          }

          else
          {
            (*(**(v3 + 56) + 16))(*(v3 + 56), v4);
            subscriber::sDecodePcscf();
          }

          v15 = HIBYTE(v21);
          v16 = HIBYTE(v21);
          if (v21 < 0)
          {
            v15 = *(&__p + 1);
          }

          if (v15)
          {
            sub_100005308(v8, &__p);
            v16 = HIBYTE(v21);
          }

          if (v16 < 0)
          {
            v12 = __p;
LABEL_27:
            operator delete(v12);
          }

          goto LABEL_28;
        }
      }

      else
      {
        if (v9 == 5)
        {
          if (v29 == v28)
          {
            if (*(v5 + 23) < 0)
            {
              **v5 = 0;
              *(v5 + 8) = 0;
            }

            else
            {
              *v5 = 0;
              *(v5 + 23) = 0;
            }
          }

          else
          {
            (*(**(v3 + 56) + 16))(*(v3 + 56), v4);
            v13 = subscriber::asString();
            sub_10000501C(&v26, v13);
            subscriber::sDecodeIsimTLVTransparent();
            if (v27 < 0)
            {
              v12 = v26;
              goto LABEL_27;
            }
          }

          goto LABEL_28;
        }

        if (v9 == 6)
        {
          if (v29 == v28)
          {
            sub_100008764(v6);
          }

          else
          {
            (*(**(v3 + 56) + 16))(*(v3 + 56), v4);
            v11 = subscriber::asString();
            sub_10000501C(&v24, v11);
            subscriber::sDecodeIsimTLVLinearFixed();
            if (v25 < 0)
            {
              v12 = v24;
              goto LABEL_27;
            }
          }

          goto LABEL_28;
        }
      }

LABEL_29:
      if (v10)
      {
        v29 = v10;
        operator delete(v10);
      }

      v17 = *(v1 + 8);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v1 + 16);
          v19 = *v18 == v1;
          v1 = v18;
        }

        while (!v19);
      }

      v1 = v18;
    }

    while (v18 != &unk_101FC8D20);
  }
}

void sub_1011C7C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1011C7CBC(uint64_t *a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  v19 = 0;
  v20 = 0;
  v18 = 0;
  sub_100034C50(&v18, *(v1 + 16), *(v1 + 24), *(v1 + 24) - *(v1 + 16));
  sub_1000224C8(v24, v1 + 40);
  for (i = v2[21]; i != v2[22]; i += 2)
  {
    v6 = *i;
    if (*(*i + 36) == v3)
    {
      v9 = i[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *__p = 0u;
      v23 = 0u;
      v21 = 0u;
      SimCardForSimFilePath = subscriber::getSimCardForSimFilePath();
      sub_10173CA78(v6, SimCardForSimFilePath, &v21);
      v11 = BYTE8(v23);
      if (BYTE8(v23))
      {
        if (v4 == 36 || v4 == 33)
        {
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 1174405120;
          v26 = sub_1011B3610;
          v27 = &unk_101F17E80;
          sub_1000224C8(v28, v24);
          subscriber::SimCommandDriver::writeFile();
          sub_10000FF50(v28);
          if ((BYTE8(v23) & 1) == 0)
          {
LABEL_20:
            if (v9)
            {
              sub_100004A34(v9);
            }

            goto LABEL_22;
          }

LABEL_18:
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          goto LABEL_20;
        }

        v14 = **(v6 + 352);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = subscriber::asString();
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Write operation not permitted for file %s", &buf, 0xCu);
        }
      }

      else
      {
        v12 = **(v6 + 352);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No SIM card info", &buf, 2u);
        }
      }

      sub_10000FFD0(v24, 0);
      if (!v11)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  v7 = v2[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = subscriber::asString();
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E Can't get Sim File %s because there is no SIM", &buf, 0xCu);
  }

  sub_10000FFD0(v24, 0);
LABEL_22:
  sub_10000FF50(v24);
  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  sub_1011C802C(&v17);
  return sub_1000049E0(&v16);
}

void sub_1011C7F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  if (v24)
  {
    sub_100004A34(v24);
  }

  sub_10000FF50(&a22);
  if (a12)
  {
    a13 = a12;
    operator delete(a12);
  }

  sub_1011C802C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011C802C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 40);
    v2 = *(v1 + 16);
    if (v2)
    {
      *(v1 + 24) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1011C808C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = **(v1 + 8);
  v4 = **(v1 + 16);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_1011B2F00(&__p, v2, v3, 32);
  v5 = __p;
  if (__p == v16)
  {
    LOBYTE(v6) = 0;
    if (!__p)
    {
      return v6 & 1;
    }

    goto LABEL_10;
  }

  if (v16 - __p <= (v4 - 1) >> 3)
  {
    v11 = *(*(**(v2 + 56) + 16))(*(v2 + 56), v3);
    LOBYTE(v6) = 0;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = subscriber::asString();
      *buf = 136315650;
      v19 = v12;
      v20 = 2048;
      v21 = v16 - __p;
      v22 = 1024;
      v23 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#E Cannot fetch %s from USIM Service Table. Size mismatch. UST Size:%zd bytes, Service Pos:%u", buf, 0x1Cu);
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    v6 = *(__p + ((v4 - 1) >> 3)) >> ((v4 - 1) & 7);
    v14 = v6 & 1;
    v7 = *(*(**(v2 + 56) + 16))(*(v2 + 56), v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = subscriber::asString();
      v10 = printers::asString(&v14, v9);
      *buf = 136315394;
      v19 = v8;
      v20 = 2080;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I UST[%s] = %s", buf, 0x16u);
      LOBYTE(v6) = v14;
    }
  }

  v5 = __p;
  if (__p)
  {
LABEL_10:
    v16 = v5;
    operator delete(v5);
  }

  return v6 & 1;
}

void sub_1011C82A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011C82D8(uint64_t **a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  v4 = **a1;
  v5 = *(v4 + 168);
  v6 = *(v4 + 176);
  if (v5 != v6)
  {
    while (1)
    {
      v7 = *v5;
      if (*(*v5 + 36) == *(v3 + 2))
      {
        break;
      }

      v5 += 2;
      if (v5 == v6)
      {
        goto LABEL_12;
      }
    }

    v8 = v5[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100064FC8(v7, a2, a3);
    if (subscriber::isSimAbsent())
    {
      v11 = *(v4 + 120);
      v12 = *(v3 + 2);
      v13 = sub_100064FC8(v7, v9, v10);
      (*(*v11 + 16))(v11, v12, v13);
      goto LABEL_10;
    }

    v14 = *(*(**(v4 + 56) + 16))(*(v4 + 56), *(v3 + 2));
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      if (!v8)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    sub_100064FC8(v7, v15, v16);
    *buf = 136315138;
    v18 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "External triggerIfSimNotPresent received but SIM state %s will not allow it", buf, 0xCu);
    if (v8)
    {
LABEL_11:
      sub_100004A34(v8);
    }
  }

LABEL_12:
  operator delete();
}

void sub_1011C8494()
{
  if (v0)
  {
    sub_100004A34(v0);
  }

  operator delete();
}

uint64_t sub_1011C84C8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v5 = *(*v3 + 21);
  v6 = *(*v3 + 22);
  if (v5 == v6)
  {
    return 0;
  }

  while (1)
  {
    v7 = *v5;
    if (*(*v5 + 36) == *v3[1])
    {
      break;
    }

    v5 += 2;
    if (v5 == v6)
    {
      return 0;
    }
  }

  v9 = v5[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = sub_100064FC8(v7, a2, a3);
  if (!subscriber::isSimLocked())
  {
    if (!subscriber::isSimAbsent())
    {
      if ((subscriber::isSimReady() & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_24:
      v8 = 0;
      if (!v9)
      {
        return v8;
      }

      goto LABEL_30;
    }

    ServiceMap = Registry::getServiceMap(v4[8]);
    v13 = ServiceMap;
    if ((v14 & 0x8000000000000000) != 0)
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
    v26 = v14;
    v18 = sub_100009510(&v13[1].__m_.__sig, &v26);
    if (v18)
    {
      v20 = v18[3];
      v19 = v18[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v13);
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v19);
        v21 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      v20 = 0;
    }

    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
LABEL_21:
    v22 = (*(*v20 + 168))(v20, *v3[1]);
    if ((v21 & 1) == 0)
    {
      sub_100004A34(v19);
    }

    if (v22 != 2)
    {
      (*(*v4 + 240))(v4, *v3[1]);
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v11 = v4[19];
  if (v11)
  {
    (*(*v11 + 24))(v11, *v3[1]);
  }

LABEL_27:
  v23 = *(*(*v4[7] + 16))(v4[7], *v3[1]);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v25 = subscriber::asString();
    LODWORD(v26) = 67109378;
    HIDWORD(v26) = v10;
    v27 = 2080;
    v28 = v25;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Invalid sim state: %d(%s)", &v26, 0x12u);
  }

  v8 = 1;
  if (v9)
  {
LABEL_30:
    sub_100004A34(v9);
  }

  return v8;
}

void sub_1011C87B0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1011C87FC(uint64_t *a1)
{
  v1 = *a1;
  v18 = a1;
  v19 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000224C8(v23, v1 + 32);
  for (i = v2[21]; ; i += 2)
  {
    if (i == v2[22])
    {
      v10 = *(*(*v2[7] + 16))(v2[7], v3);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Sim Info not found", buf, 2u);
      }

      v11 = 0;
      goto LABEL_10;
    }

    v9 = *i;
    if (*(*i + 36) == v3)
    {
      break;
    }
  }

  v11 = i[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100064FC8(v9, v6, v7);
  if ((subscriber::isSimReady() & 1) == 0)
  {
    v13 = **(v9 + 352);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100064FC8(v9, v14, v15);
      v16 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v16;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "SIM state is %s, procedure aborted", buf, 0xCu);
    }

LABEL_10:
    sub_10000FFD0(v23, 0);
    goto LABEL_11;
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  sub_10173CA78(v9, 1, &v20);
  if (BYTE8(v22))
  {
    *buf = v2;
    *&buf[8] = v20;
    __p[1] = 0;
    v26 = 0;
    __p[0] = 0;
    sub_100034C50(__p, v21, *(&v21 + 1), *(&v21 + 1) - v21);
    v27 = v5;
    v28 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1000224C8(v29, v23);
    v29[8] = 0;
    operator new();
  }

  v17 = **(v9 + 352);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not create SIM card info", buf, 2u);
  }

  sub_10000FFD0(v23, 0);
LABEL_11:
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_10000FF50(v23);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1011C8C40(&v19);
  return sub_1000049E0(&v18);
}

void sub_1011C8B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (v30)
  {
    operator delete(v30);
    if (!v29)
    {
      goto LABEL_7;
    }
  }

  else if (!v29)
  {
LABEL_7:
    sub_10000FF50(&a17);
    if (v28)
    {
      sub_100004A34(v28);
    }

    sub_1011C8C40(&a10);
    sub_1000049E0(&a9);
    _Unwind_Resume(a1);
  }

  sub_100004A34(v29);
  goto LABEL_7;
}

uint64_t *sub_1011C8C40(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 32);
    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1011C8C9C(uint64_t *a1)
{
  v1 = *a1;
  v21 = a1;
  v22 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000224C8(v26, v1 + 56);
  for (i = v2[21]; ; i += 2)
  {
    if (i == v2[22])
    {
      v13 = *(*(*v2[7] + 16))(v2[7], v3);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Sim Info not found", buf, 2u);
      }

      v14 = 0;
      goto LABEL_12;
    }

    v12 = *i;
    if (*(*i + 36) == v3)
    {
      break;
    }
  }

  v14 = i[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100064FC8(v12, v9, v10);
  if ((subscriber::isSimReady() & 1) == 0)
  {
    v16 = **(v12 + 352);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100064FC8(v12, v17, v18);
      v19 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v19;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "SIM state is %s, procedure aborted", buf, 0xCu);
    }

LABEL_12:
    sub_10000FFD0(v26, 0);
    goto LABEL_13;
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  sub_10173CA78(v12, 1, &v23);
  if (BYTE8(v25))
  {
    *buf = v2;
    *&buf[8] = v23;
    __p[1] = 0;
    v29 = 0;
    __p[0] = 0;
    sub_100034C50(__p, v24, *(&v24 + 1), *(&v24 + 1) - v24);
    v30 = v5;
    v31 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v32 = v6;
    v33 = v8;
    v34 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1000224C8(v35, v26);
    v35[7] = 0;
    operator new();
  }

  v20 = **(v12 + 352);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not create SIM card info", buf, 2u);
  }

  sub_10000FFD0(v26, 0);
LABEL_13:
  if (v14)
  {
    sub_100004A34(v14);
  }

  sub_10000FF50(v26);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1011C915C(&v22);
  return sub_1000049E0(&v21);
}

void sub_1011C9078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (v34)
  {
    operator delete(v34);
    if (!v33)
    {
      goto LABEL_7;
    }
  }

  else if (!v33)
  {
LABEL_7:
    sub_10000FF50(&a17);
    if (v32)
    {
      sub_100004A34(v32);
    }

    if (v31)
    {
      sub_100004A34(v31);
    }

    sub_1011C915C(&a10);
    sub_1000049E0(&a9);
    _Unwind_Resume(a1);
  }

  sub_100004A34(v33);
  goto LABEL_7;
}

uint64_t *sub_1011C915C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 56);
    v2 = *(v1 + 48);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 24);
    if (v3)
    {
      sub_100004A34(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1011C91C4(uint64_t *a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1000224C8(v21, v1 + 16);
  for (i = v2[21]; ; i += 2)
  {
    if (i == v2[22])
    {
      v8 = *(*(*v2[7] + 16))(v2[7], v3);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Sim Info not found", buf, 2u);
      }

      v9 = 0;
      goto LABEL_8;
    }

    v7 = *i;
    if (*(*i + 36) == v3)
    {
      break;
    }
  }

  v9 = i[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100064FC8(v7, v4, v5);
  if ((subscriber::isSimReady() & 1) == 0)
  {
    v11 = **(v7 + 352);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100064FC8(v7, v12, v13);
      v14 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v14;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "SIM state is %s, procedure aborted", buf, 0xCu);
    }

LABEL_8:
    sub_10000FFD0(v21, 0);
    goto LABEL_9;
  }

  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  sub_10173CA78(v7, 1, &v18);
  if (BYTE8(v20))
  {
    *buf = v2;
    *&buf[8] = v18;
    __p[1] = 0;
    v24 = 0;
    __p[0] = 0;
    sub_100034C50(__p, v19, *(&v19 + 1), *(&v19 + 1) - v19);
    sub_1000224C8(v25, v21);
    v25[8] = 0;
    operator new();
  }

  v15 = **(v7 + 352);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Could not create SIM card info", buf, 2u);
  }

  sub_10000FFD0(v21, 0);
LABEL_9:
  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_10000FF50(v21);
  sub_100EDD714(&v17);
  return sub_1000049E0(&v16);
}

void sub_1011C94E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (v26)
  {
    operator delete(v26);
    if (!v25)
    {
      goto LABEL_7;
    }
  }

  else if (!v25)
  {
LABEL_7:
    sub_10000FF50(&a17);
    sub_100EDD714(&a10);
    sub_1000049E0(&a9);
    _Unwind_Resume(a1);
  }

  sub_100004A34(v25);
  goto LABEL_7;
}

uint64_t *sub_1011C95A8(uint64_t *a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v3 = *(*v1 + 168);
  v2 = *(*v1 + 176);
  if (v3 == v2)
  {
    v6 = 0;
  }

  else
  {
    v4 = v3 + 16;
    do
    {
      v5 = *(*(v4 - 16) + 52) - 3;
      v6 = v5 < 2;
      v7 = v5 < 2 || v4 == v2;
      v4 += 16;
    }

    while (!v7);
  }

  sub_10000FFD0(v1 + 8, v6);
  sub_1007146DC(&v10);
  return sub_1000049E0(&v9);
}

void sub_1011C9628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1007146DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1011C9644(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = **(a1 + 40);
  v4 = *(v3 + 168);
  v5 = *(v3 + 176);
  if (v4 == v5)
  {
    return 0;
  }

  v6 = v4 + 16;
  do
  {
    sub_100064FC8(*(v6 - 16), a2, a3);
    result = subscriber::isSimReady();
    if (result)
    {
      break;
    }

    v8 = v6 == v5;
    v6 += 16;
  }

  while (!v8);
  return result;
}

BOOL sub_1011C96A0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(*v1 + 456) != 1)
  {
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    if (*(v2 + 452))
    {
      v3 = 2;
      goto LABEL_8;
    }

    return 0;
  }

  if (v3 == 1)
  {
    if (*(v2 + 448))
    {
      v3 = 1;
      goto LABEL_8;
    }

    return 0;
  }

LABEL_8:
  v51[0] = 0;
  v51[1] = 0;
  v52 = 0;
  sub_1011AF438(v2, v3, 3, v51);
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  sub_100A34BC8(&v48);
  v4 = BYTE7(v49);
  if (SBYTE7(v49) < 0)
  {
    v4 = *(&v48 + 1);
  }

  if (!v4)
  {
    goto LABEL_92;
  }

  v5 = HIBYTE(v50);
  if (v50 < 0)
  {
    v5 = v50;
  }

  if (!v5)
  {
LABEL_92:
    v8 = 0;
    goto LABEL_98;
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  sub_1011AF438(v2, *(v1 + 8), 1, &v45);
  sub_1011AF438(v2, *(v1 + 8), 2, &v42);
  Count = CFArrayGetCount(*(v1 + 16));
  if (Count < 1)
  {
    v8 = 0;
    goto LABEL_94;
  }

  v7 = 0;
  v8 = 1;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 16), v7);
    v10 = CFGetTypeID(ValueAtIndex);
    if (v10 != CFDictionaryGetTypeID())
    {
      goto LABEL_75;
    }

    CFDictionaryGetValue(ValueAtIndex, @"MCC");
    v53 = 0uLL;
    v54 = 0;
    ctu::cf::assign();
    *v40 = v53;
    v41 = v54;
    CFDictionaryGetValue(ValueAtIndex, @"MNC");
    v53 = 0uLL;
    v54 = 0;
    ctu::cf::assign();
    *v38 = v53;
    v39 = v54;
    v36[0] = 0;
    v36[1] = 0;
    v37 = 0;
    CFDictionaryGetValue(ValueAtIndex, @"GID1");
    v53 = 0uLL;
    v54 = 0;
    ctu::cf::assign();
    *v36 = v53;
    v37 = v54;
    __p[0] = 0;
    __p[1] = 0;
    v35 = 0;
    CFDictionaryGetValue(ValueAtIndex, @"GID2");
    v53 = 0uLL;
    v54 = 0;
    ctu::cf::assign();
    *__p = v53;
    v35 = v54;
    v11 = SHIBYTE(v41);
    if (v41 >= 0)
    {
      v12 = HIBYTE(v41);
    }

    else
    {
      v12 = v40[1];
    }

    v13 = BYTE7(v49);
    if (SBYTE7(v49) < 0)
    {
      v13 = *(&v48 + 1);
    }

    if (v12 != v13)
    {
      goto LABEL_66;
    }

    v14 = v40[0];
    v15 = v41 >= 0 ? v40 : v40[0];
    v16 = (SBYTE7(v49) & 0x80u) == 0 ? &v48 : v48;
    if (memcmp(v15, v16, v12))
    {
      goto LABEL_66;
    }

    v17 = SHIBYTE(v39);
    if (v39 >= 0)
    {
      v18 = HIBYTE(v39);
    }

    else
    {
      v18 = v38[1];
    }

    v19 = HIBYTE(v50);
    if (v50 < 0)
    {
      v19 = v50;
    }

    if (v18 != v19)
    {
      goto LABEL_66;
    }

    v33 = v38[0];
    v20 = v39 >= 0 ? v38 : v38[0];
    v21 = v50 >= 0 ? (&v49 + 8) : *(&v49 + 1);
    if (memcmp(v20, v21, v18))
    {
      goto LABEL_66;
    }

    v22 = HIBYTE(v37);
    v23 = v37 >= 0 ? HIBYTE(v37) : v36[1];
    if (!v23)
    {
      break;
    }

LABEL_51:
    v24 = HIBYTE(v47);
    if (v47 < 0)
    {
      v24 = v46;
    }

    if ((v23 == 0) == (v24 == 0))
    {
      if (v37 >= 0)
      {
        v25 = v36;
      }

      else
      {
        v25 = v36[0];
      }

      v26 = v45;
      if (v47 >= 0)
      {
        v26 = &v45;
      }

      *&v53 = v26;
      *(&v53 + 1) = v24;
      if (sub_1006A6D04(&v53, v25, v23))
      {
        if (v35 >= 0)
        {
          v27 = HIBYTE(v35);
        }

        else
        {
          v27 = __p[1];
        }

        v28 = HIBYTE(v44);
        if (v44 < 0)
        {
          v28 = v43;
        }

        if ((v27 == 0) == (v28 == 0))
        {
          if (v35 >= 0)
          {
            v29 = __p;
          }

          else
          {
            v29 = __p[0];
          }

          v30 = v42;
          if (v44 >= 0)
          {
            v30 = &v42;
          }

          *&v53 = v30;
          *(&v53 + 1) = v28;
          v32 = sub_1006A6D04(&v53, v29, v27);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v37) < 0)
          {
            operator delete(v36[0]);
            if (v17 < 0)
            {
              goto LABEL_90;
            }

LABEL_86:
            if (v11 < 0)
            {
LABEL_91:
              operator delete(v14);
            }
          }

          else
          {
            if ((v17 & 0x80000000) == 0)
            {
              goto LABEL_86;
            }

LABEL_90:
            operator delete(v33);
            if (v11 < 0)
            {
              goto LABEL_91;
            }
          }

          if (v32)
          {
            goto LABEL_94;
          }

          goto LABEL_75;
        }
      }
    }

LABEL_66:
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36[0]);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38[0]);
      if (v11 < 0)
      {
LABEL_74:
        operator delete(v40[0]);
      }
    }

    else if (v11 < 0)
    {
      goto LABEL_74;
    }

LABEL_75:
    v8 = ++v7 < Count;
    if (Count == v7)
    {
      goto LABEL_94;
    }
  }

  if ((SHIBYTE(v35) & 0x80000000) == 0)
  {
    if (!HIBYTE(v35))
    {
      goto LABEL_107;
    }

    goto LABEL_51;
  }

  if (__p[1])
  {
    goto LABEL_51;
  }

  operator delete(__p[0]);
  v22 = HIBYTE(v37);
LABEL_107:
  if (v22 < 0)
  {
    operator delete(v36[0]);
    if (v17 < 0)
    {
      goto LABEL_112;
    }

LABEL_109:
    if (v11 < 0)
    {
LABEL_113:
      operator delete(v14);
    }
  }

  else
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_109;
    }

LABEL_112:
    operator delete(v33);
    if (v11 < 0)
    {
      goto LABEL_113;
    }
  }

LABEL_94:
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v42);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v45);
  }

LABEL_98:
  if (SHIBYTE(v50) < 0)
  {
    operator delete(*(&v49 + 1));
  }

  if (SBYTE7(v49) < 0)
  {
    operator delete(v48);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

  return v8;
}

void sub_1011C9BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  sub_1000D6F38(v49 - 192);
  if (*(v49 - 121) < 0)
  {
    operator delete(*(v49 - 144));
  }

  _Unwind_Resume(a1);
}

void *sub_1011C9CF4(void *a1)
{
  *a1 = off_101F18D98;
  v2 = a1[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_1011C9D58(void *a1)
{
  *a1 = off_101F18D98;
  v2 = a1[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete();
}

void sub_1011C9E6C(void *a1, void *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  *a2 = off_101F18D98;
  a2[1] = v4;
  a2[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = a1[3];
  v5 = a1[4];
  a2[3] = v6;
  a2[4] = v5;
  if (v5)
  {
    dispatch_retain(v5);
    v7 = a2[4];
    if (v7)
    {

      dispatch_group_enter(v7);
    }
  }
}

void sub_1011C9EF4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 16);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1011C9F50(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = __p[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void sub_1011C9FA8(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[1];
      if (v4)
      {
        v5 = a1[4];
        if (v5)
        {
          dispatch_retain(v5);
          dispatch_group_enter(v5);
        }

        v6[0] = 0;
        v6[1] = 0;
        sub_100004AA0(v6, (v4 + 8));
        operator new();
      }

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_1011CA0D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1011CA120(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  if (*(v1 + 20) == 1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = *v1;
      v10 = @"kCTMobileEquipmentInfoERIVersion";
      if (@"kCTMobileEquipmentInfoERIVersion")
      {
        CFRetain(@"kCTMobileEquipmentInfoERIVersion");
      }

      valuePtr = v2;
      v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      v9 = v4;
      if (@"kCTMobileEquipmentInfoERIVersion")
      {
        v5 = v4 == 0;
      }

      else
      {
        v5 = 1;
      }

      if (!v5)
      {
        CFDictionarySetValue(v3, @"kCTMobileEquipmentInfoERIVersion", v4);
      }

      sub_100DA3324(&v9);
      sub_100DA3324(&v10);
    }
  }

  sub_1011CA220(&v8);
  return sub_1000049E0(&v7);
}

void sub_1011CA1E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  va_copy(va3, va2);
  v7 = va_arg(va3, const void *);
  sub_100DA3324(va2);
  sub_100DA3324(va3);
  sub_1011CA220(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011CA220(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(v1 + 8);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1011CA280(uint64_t a1)
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

void sub_1011CA320(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F18E28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1011CA374(uint64_t a1)
{
  v2 = *(a1 + 368);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 352);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 288) == 1)
  {
    if (*(a1 + 287) < 0)
    {
      operator delete(*(a1 + 264));
    }

    if (*(a1 + 263) < 0)
    {
      operator delete(*(a1 + 240));
    }
  }

  sub_1004CC540(a1 + 208, *(a1 + 216));
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v7 = (a1 + 152);
  sub_100034D1C(&v7);
  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    *(a1 + 104) = v5;
    operator delete(v5);
  }

  return sub_1000C0544((a1 + 24));
}

__n128 sub_1011CA4BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F18E78;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1011CA4EC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*a2)
  {
    v7 = *(a1 + 20);
    v8 = *(*v4 + 336);
    v9 = *(a1 + 8);

    v8(v9, v5, v7, a3);
  }

  else
  {
    for (i = *(v4 + 168); i != *(v4 + 176); i += 2)
    {
      v11 = *i;
      if (*(*i + 32) == v5)
      {
        v13 = i[1];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = *(*(**(v4 + 56) + 16))(*(v4 + 56), *(v11 + 36));
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v15) = 0;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Read failed with problem - invalidate file and read next pending files", &v15, 2u);
        }

        sub_10173CD3C(v11, *(a1 + 20));
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *&v15 = _NSConcreteStackBlock;
        *(&v15 + 1) = 0x40000000;
        v16 = sub_1011B2A5C;
        v17 = &unk_101F17E60;
        v18 = v4;
        sub_10173CBD4(v11, &v15);
        if (v13)
        {
          sub_100004A34(v13);
          sub_100004A34(v13);
        }

        return;
      }
    }

    v12 = *(v4 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v15) = 136315138;
      *(&v15 + 4) = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Missing sim info for slot: %s", &v15, 0xCu);
    }
  }
}

void sub_1011CA754(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011CA784(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F18EE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1011CA7D0(uint64_t a1, int a2)
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

uint64_t sub_1011CA90C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F18F08;
  a2[1] = v2;
  return result;
}

void sub_1011CA938(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (v2[91])
  {
    v3 = *a2;
    v4 = v2[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "is not";
      if (v3)
      {
        v5 = "is";
      }

      LODWORD(v23) = 136315138;
      *(&v23 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Baseband booted assertion %s granted for auth", &v23, 0xCu);
    }

    if (v3)
    {
      sub_1011B21C0(v2);
      return;
    }

    v6 = v2[92];
    v2[91] = 0;
    v2[92] = 0;
    if (v6)
    {
      sub_100004A34(v6);
    }

    v7 = v2[94];
    v8 = v2[95];
    if (v8 == v7)
    {
      v15 = v2 + 98;
      v8 = v2[94];
    }

    else
    {
      v9 = v2[97];
      v10 = &v7[v9 >> 6];
      v11 = *v10 + 64 * (v9 & 0x3F);
      v12 = *(v7 + (((v2[98] + v9) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * ((v2[98] + v9) & 0x3F);
      if (v11 != v12)
      {
        do
        {
          *(&v23 + 1) = 0;
          v24 = 0;
          *&v23 = &v23 + 8;
          v13 = *(v11 + 7);
          if (!v13)
          {
            sub_100022DB4();
          }

          (*(*v13 + 48))(v13, &v23);
          sub_10004EC58(&v23, *(&v23 + 1));
          v11 += 64;
          if (v11 - *v10 == 4096)
          {
            v14 = v10[1];
            ++v10;
            v11 = v14;
          }
        }

        while (v11 != v12);
        v7 = v2[94];
        v8 = v2[95];
      }

      v15 = v2 + 98;
      if (v8 != v7)
      {
        v16 = v2[97];
        v17 = &v7[v16 >> 6];
        v18 = *v17 + 64 * (v16 & 0x3F);
        v19 = *(v7 + (((v2[98] + v16) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * ((v2[98] + v16) & 0x3F);
        if (v18 != v19)
        {
          do
          {
            sub_1004F26B0((v18 + 32));
            sub_10004EC58((v18 + 8), *(v18 + 2));
            v18 += 64;
            if (v18 - *v17 == 4096)
            {
              v20 = v17[1];
              ++v17;
              v18 = v20;
            }
          }

          while (v18 != v19);
          v8 = v2[95];
          v7 = v2[94];
        }
      }
    }

    *v15 = 0;
    v21 = v8 - v7;
    if (v21 >= 3)
    {
      do
      {
        operator delete(*v7);
        v7 = (v2[94] + 8);
        v2[94] = v7;
        v21 = (v2[95] - v7) >> 3;
      }

      while (v21 > 2);
    }

    if (v21 == 1)
    {
      v22 = 32;
    }

    else
    {
      if (v21 != 2)
      {
        return;
      }

      v22 = 64;
    }

    v2[97] = v22;
  }
}

uint64_t sub_1011CAC04(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1011CAC50(void *a1)
{
  *a1 = off_101F18F88;
  sub_1004F26B0((a1 + 5));
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1011CACA0(void *a1)
{
  *a1 = off_101F18F88;
  sub_1004F26B0((a1 + 5));
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1011CADA0(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1011CADC0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F18F88;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(a1 + 32);
  return sub_1011C608C(a2 + 40, a1 + 40);
}

void sub_1011CAE34(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011CAE54(void *a1)
{
  sub_1011CB184(a1 + 8);

  operator delete(a1);
}

void sub_1011CAE90(uint64_t a1, void *a2)
{
  v3 = a2 + 1;
  v4 = a2[1];
  v13 = *a2;
  v14 = v4;
  v5 = a2[2];
  v15 = v5;
  if (v5)
  {
    *(v4 + 16) = &v14;
    *a2 = v3;
    *v3 = 0;
    a2[2] = 0;
  }

  else
  {
    v13 = &v14;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = **(v7 + 352);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = subscriber::asString();
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Received response for auth for type %s", &buf, 0xCu);
    v7 = *(a1 + 16);
    v5 = v15;
  }

  v10 = *(v7 + 36);
  v11 = *(a1 + 32);
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  v18 = sub_101197514;
  v19 = &unk_101F16638;
  v22 = v5 != 0;
  v20 = v11;
  v21 = v10;
  sub_101197368(0x800F0);
  sub_1004F1F78(&buf, &v13);
  v12 = *(a1 + 64);
  if (v12)
  {
    (*(*v12 + 48))(v12, &buf);
    sub_10004EC58(&buf, *(&buf + 1));
    v16[0] = 0;
    v16[1] = 0;
    sub_100004AA0(v16, (v6 + 8));
    operator new();
  }

  sub_100022DB4();
}

void sub_1011CB0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011CB138(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1011CB184(uint64_t a1)
{
  sub_1004F26B0(a1 + 32);
  v2 = *(a1 + 16);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void sub_1011CB1D0(uint64_t **a1)
{
  v2 = a1;
  v1 = **a1;
  *(v1 + 792) = 0;
  sub_1011B21C0(v1);
  operator delete();
}

void *sub_1011CB254(void *a1)
{
  *a1 = off_101F19008;
  sub_1011C6C1C((a1 + 4));
  return a1;
}

void sub_1011CB298(void *a1)
{
  *a1 = off_101F19008;
  sub_1011C6C1C((a1 + 4));

  operator delete();
}

uint64_t sub_1011CB388(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F19008;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return sub_1011C6B84(a2 + 32, a1 + 32);
}

void sub_1011CB3CC(void *a1)
{
  sub_1011C6C1C(a1 + 32);

  operator delete(a1);
}

void sub_1011CB408(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  for (i = v5[21]; i != v5[22]; i += 2)
  {
    v7 = *i;
    if (*(*i + 36) == *(a1 + 20))
    {
      v10 = i[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(a1 + 16) == *(v7 + 32))
      {
        v11 = **(v7 + 352);
        if (v4)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = subscriber::asString();
            v13 = v4[1] - *v4;
            *v15 = 136315394;
            *&v15[4] = v12;
            *&v15[12] = 2048;
            *&v15[14] = v13;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Received data for file %s of length %lu", v15, 0x16u);
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *v15 = 136315138;
          *&v15[4] = subscriber::asString();
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Read error or no data for file %s", v15, 0xCu);
        }

        *v15 = v4;
        *&v15[8] = v3;
        if (v3)
        {
          atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1011B3584(*(a1 + 56), 1);
      }

      else
      {
        v14 = **(v7 + 352);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *v15 = 136315650;
          *&v15[4] = subscriber::asString();
          *&v15[12] = 2080;
          *&v15[14] = subscriber::asString();
          v16 = 2080;
          v17 = subscriber::asString();
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Original HW slot %s not same as current HW slot %s, discarding data for %s", v15, 0x20u);
        }

        *v15 = 0;
        *&v15[8] = 0;
        sub_1011B3584(*(a1 + 56), 0);
      }

      v9 = *&v15[8];
      if (*&v15[8])
      {
LABEL_24:
        sub_100004A34(v9);
      }

      if (v10)
      {
        sub_100004A34(v10);
      }

      goto LABEL_27;
    }
  }

  v8 = v5[5];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v15 = 136315394;
    *&v15[4] = subscriber::asString();
    *&v15[12] = 2080;
    *&v15[14] = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "No valid SIM for instance (%s), discarding data for %s", v15, 0x16u);
  }

  *v15 = 0;
  *&v15[8] = 0;
  sub_1011B3584(*(a1 + 56), 0);
  v9 = *&v15[8];
  if (*&v15[8])
  {
    v10 = 0;
    goto LABEL_24;
  }

LABEL_27:
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_1011CB6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011CB758(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011CB7A4(uint64_t a1)
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

void *sub_1011CB824(void *a1)
{
  *a1 = off_101F19098;
  sub_1011B67DC((a1 + 5));
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1011CB878(void *a1)
{
  *a1 = off_101F19098;
  sub_1011B67DC((a1 + 5));
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

void sub_1011CB984(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1011CB9B0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F19098;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  sub_1001B964C(a2 + 16, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 1);
  return sub_1011C764C(a2 + 40, a1 + 40);
}

void sub_1011CBA2C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011CBA50(void *a1)
{
  sub_1011CBC54(a1 + 8);

  operator delete(a1);
}

void sub_1011CBA8C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  if (v3)
  {
    __p = 0;
    v14[0] = 0;
    v14[1] = 0;
    sub_100034C50(&__p, *v3, v3[1], v3[1] - *v3);
    v5 = v14;
    v15 = 1;
    v6 = *(a1 + 64);
    if (!v6)
    {
      sub_100022DB4();
    }

    (*(*v6 + 48))(v6, &__p);
    if (v15 == 1)
    {
      v7 = __p;
      if (__p)
      {
LABEL_5:
        *v5 = v7;
        operator delete(v7);
      }
    }
  }

  else
  {
    v5 = &v11;
    LOBYTE(v10) = 0;
    v12 = 0;
    v8 = *(a1 + 64);
    if (!v8)
    {
      sub_100022DB4();
    }

    (*(*v8 + 48))(v8, &v10);
    v7 = v10;
    if (v12 == 1 && v10 != 0)
    {
      goto LABEL_5;
    }
  }

  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_1011CBBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011CBC08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1011CBC54(uint64_t a1)
{
  sub_1011B67DC(a1 + 32);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;

    operator delete(v2);
  }
}

uint64_t sub_1011CBCA4(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 16 * (v5 - v4) - 1;
  }

  v7 = a1[4];
  if (v6 == a1[5] + v7)
  {
    v8 = v7 >= 0x80;
    v9 = v7 - 128;
    if (!v8)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      sub_100EF4E80(v13);
    }

    a1[4] = v9;
    v17 = *v4;
    a1[1] = v4 + 8;
    sub_1010F098C(a1, &v17);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v15 = 0;
  }

  else
  {
    v14 = a1[5] + a1[4];
    v15 = *&v4[(v14 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v14 & 0x7F);
  }

  result = sub_10010BE30(v15, a2);
  ++a1[5];
  return result;
}

void sub_1011CC110(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *sub_1011CC13C(void *a1)
{
  *a1 = off_101F19118;
  sub_10000FF50((a1 + 9));
  v2 = a1[8];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1011CC19C(void *a1)
{
  *a1 = off_101F19118;
  sub_10000FF50((a1 + 9));
  v2 = a1[8];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  operator delete();
}

void sub_1011CC2CC(_Unwind_Exception *a1)
{
  v4 = v1[8];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[5] = v5;
    operator delete(v5);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1011CC304(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101F19118;
  *(a2 + 8) = v4;
  v5 = *(a1 + 16);
  *(a2 + 32) = 0;
  v6 = a2 + 32;
  *(a2 + 16) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  sub_100034C50(a2 + 32, *(a1 + 32), *(a1 + 40), *(a1 + 40) - *(a1 + 32));
  v7 = *(a1 + 64);
  *(v6 + 24) = *(a1 + 56);
  *(v6 + 32) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1000224C8(a2 + 72, a1 + 72);
}

void sub_1011CC398(_Unwind_Exception *exception_object)
{
  v4 = *(v1 + 64);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011CC3C0(void *a1)
{
  sub_10000FF50((a1 + 9));
  v2 = a1[8];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void sub_1011CC41C(void *a1)
{
  sub_10000FF50((a1 + 9));
  v2 = a1[8];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  operator delete(a1);
}

void sub_1011CC474(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000224C8(v2, a1 + 72);
  v2[7] = 0;
  operator new();
}

void sub_1011CC5A0(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10000FF50(va);
  sub_10000FF50(v8 + 8);
  if (a3)
  {
    sub_100004A34(a3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1011CC5DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1011CC628(void *a1)
{
  *a1 = off_101F19188;
  sub_10000FF50((a1 + 2));
  return a1;
}

void sub_1011CC66C(void *a1)
{
  *a1 = off_101F19188;
  sub_10000FF50((a1 + 2));

  operator delete();
}

uint64_t sub_1011CC74C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101F19188;
  a2[1] = v2;
  return sub_1000224C8((a2 + 2), a1 + 16);
}

void sub_1011CC784(void *a1)
{
  sub_10000FF50(a1 + 16);

  operator delete(a1);
}

uint64_t sub_1011CC7C0(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  sub_10000FFD0(a1 + 16, *a2);
  sub_1011CC854(v2 + 904);

  return sub_1011B36E8(v2);
}

uint64_t sub_1011CC808(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1011CC854(uint64_t a1)
{
  sub_10002B644(*(*(a1 + 8) + ((*(a1 + 32) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 32) & 0x7FLL));
  v2 = vaddq_s64(*(a1 + 32), xmmword_1017CD970);
  *(a1 + 32) = v2;
  if (v2.i64[0] >= 0x100uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 128;
  }
}

void *sub_1011CC8D8(void *a1)
{
  *a1 = off_101F19218;
  sub_10000FF50((a1 + 12));
  v2 = a1[11];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_1011CC944(void *a1)
{
  *a1 = off_101F19218;
  sub_10000FF50((a1 + 12));
  v2 = a1[11];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  operator delete();
}

void sub_1011CCA74(void *a1)
{
  sub_10000FF50((a1 + 12));
  v2 = a1[11];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;

    operator delete(v4);
  }
}

void sub_1011CCADC(void *a1)
{
  sub_10000FF50((a1 + 12));
  v2 = a1[11];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  operator delete(a1);
}

void sub_1011CCB40(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000224C8(v3, a1 + 96);
  v3[7] = 0;
  operator new();
}

void sub_1011CCCA4(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10000FF50(va);
  sub_10000FF50(v10 + 8);
  if (a3)
  {
    sub_100004A34(a3);
  }

  if (a5)
  {
    sub_100004A34(a5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1011CCCEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011CCD38(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 24) = 0;
  v5 = a1 + 24;
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_100034C50(a1 + 24, *(a2 + 24), *(a2 + 32), *(a2 + 32) - *(a2 + 24));
  v6 = *(a2 + 56);
  *(v5 + 24) = *(a2 + 48);
  *(v5 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = *(a2 + 64);
  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000224C8(a1 + 88, a2 + 88);
  return a1;
}

void sub_1011CCDDC(_Unwind_Exception *exception_object)
{
  v4 = v1[10];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = v1[7];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    v1[4] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1011CCE10(void *a1)
{
  *a1 = off_101F19288;
  sub_10000FF50((a1 + 2));
  return a1;
}

void sub_1011CCE54(void *a1)
{
  *a1 = off_101F19288;
  sub_10000FF50((a1 + 2));

  operator delete();
}

uint64_t sub_1011CCF34(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101F19288;
  a2[1] = v2;
  return sub_1000224C8((a2 + 2), a1 + 16);
}

void sub_1011CCF6C(void *a1)
{
  sub_10000FF50(a1 + 16);

  operator delete(a1);
}

uint64_t sub_1011CCFA8(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  sub_10000FFD0(a1 + 16, *a2);
  sub_1011CC854(v2 + 904);

  return sub_1011B36E8(v2);
}

uint64_t sub_1011CCFF0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1011CD03C(void *a1)
{
  *a1 = off_101F19318;
  sub_10000FF50((a1 + 7));
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1011CD090(void *a1)
{
  *a1 = off_101F19318;
  sub_10000FF50((a1 + 7));
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  operator delete();
}

void sub_1011CD19C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1011CD1C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *a2 = off_101F19318;
  *(a2 + 8) = v3;
  v4 = *(a1 + 16);
  *(a2 + 32) = 0;
  v5 = a2 + 32;
  *(a2 + 16) = v4;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  sub_100034C50(a2 + 32, *(a1 + 32), *(a1 + 40), *(a1 + 40) - *(a1 + 32));
  return sub_1000224C8(v5 + 24, a1 + 56);
}

void sub_1011CD244(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011CD268(void *a1)
{
  sub_1011CD400(a1 + 8);

  operator delete(a1);
}

void sub_1011CD2A4(uint64_t a1)
{
  sub_1000224C8(v1, a1 + 56);
  v1[7] = 0;
  operator new();
}

void sub_1011CD388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10000FF50(va);
  sub_10000FF50(v6 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1011CD3B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1011CD400(uint64_t a1)
{
  sub_10000FF50(a1 + 48);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;

    operator delete(v2);
  }
}

void *sub_1011CD450(void *a1)
{
  *a1 = off_101F19388;
  sub_10000FF50((a1 + 2));
  return a1;
}

void sub_1011CD494(void *a1)
{
  *a1 = off_101F19388;
  sub_10000FF50((a1 + 2));

  operator delete();
}

uint64_t sub_1011CD574(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101F19388;
  a2[1] = v2;
  return sub_1000224C8((a2 + 2), a1 + 16);
}

void sub_1011CD5AC(void *a1)
{
  sub_10000FF50(a1 + 16);

  operator delete(a1);
}

uint64_t sub_1011CD5E8(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  sub_10000FFD0(a1 + 16, *a2);
  sub_1011CC854(v2 + 904);

  return sub_1011B36E8(v2);
}

uint64_t sub_1011CD630(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011CD67C(uint64_t a1, void **a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if ((sub_1000068BC(a2, (v2 + 32)) & 0x80) == 0)
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((sub_1000068BC(v5 + 4, a2) & 0x80) == 0)
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return *v3;
}

void *sub_1011CD7B0(void *a1)
{
  *a1 = off_101F19418;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1011CD7FC(void *a1)
{
  *a1 = off_101F19418;
  v1 = a1[4];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1011CD8DC(uint64_t result, uint64_t a2)
{
  *a2 = off_101F19418;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1011CD91C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1011CD92C(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1011CD96C(uint64_t a1, _WORD *a2)
{
  if ((*a2 & 0x100) != 0)
  {
    v4 = *(a1 + 8);
    if ((*a2 & 1) == 0)
    {
      __p[0] = 0;
      __p[1] = 0;
      sub_100004AA0(__p, v4 + 1);
      operator new();
    }

    v5 = **(a1 + 16);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Cache is valid, try auto unlock", __p, 2u);
    }

    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = *(v6 + 36);
    sub_10173E220(v6, __p);
    (*(*v4 + 104))(v4, v8, __p);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  else
  {
    v3 = **(a1 + 16);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Do not know what to do ... so just do nothing", __p, 2u);
    }
  }
}

void sub_1011CDB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011CDB84(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1011CDBD0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  for (i = *(v2 + 168); ; i += 2)
  {
    if (i == *(v2 + 176))
    {
      v5 = 0;
      v6 = 0;
      goto LABEL_8;
    }

    v5 = *i;
    if (*(*i + 36) == v3)
    {
      break;
    }
  }

  v6 = i[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(v1 + 2);
  }

LABEL_8:
  v7 = (*(**(v2 + 56) + 16))(*(v2 + 56), v3);
  if (v5)
  {
    v10 = v7;
    if (*(v5 + 58))
    {
      sub_100064FC8(v5, v8, v9);
      if (subscriber::isSimLocked())
      {
        if (*(v5 + 59))
        {
          v20 = _os_activity_create(&_mh_execute_header, "sim-pin-required", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          state.opaque[0] = 0;
          state.opaque[1] = 0;
          os_activity_scope_enter(v20, &state);
          os_activity_scope_leave(&state);
          v11 = *v10;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(state.opaque[0]) = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I SIM PIN required: prompting UI #sim-pin", &state, 2u);
          }

          v14 = *(v2 + 120);
          v15 = *(v1 + 2);
          v16 = sub_100064FC8(v5, v12, v13);
          (*(*v14 + 32))(v14, v15, v16, *(v5 + 59));
          v17 = *(v1 + 2);
          state.opaque[0] = _NSConcreteStackBlock;
          state.opaque[1] = 0x40000000;
          v22 = sub_101196B84;
          v23 = &unk_101F16598;
          v24 = v17;
          sub_1011969D8(0x800A2);
          sub_1000C0590(&v20);
          goto LABEL_22;
        }

        v18 = *v10;
        if (!os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        LOWORD(state.opaque[0]) = 0;
        v19 = "#I Zero PIN retry count";
      }

      else
      {
        v18 = *v10;
        if (!os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        LOWORD(state.opaque[0]) = 0;
        v19 = "#I SIM no longer locked";
      }
    }

    else
    {
      v18 = *v7;
      if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      LOWORD(state.opaque[0]) = 0;
      v19 = "#I SIM is not Pin Protected";
    }

    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, &state, 2u);
  }

LABEL_22:
  if (v6)
  {
    sub_100004A34(v6);
  }

  operator delete();
}

void sub_1011CDE8C(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000C0590(va);
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

void sub_1011CDED4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  for (i = *(v2 + 168); ; i += 2)
  {
    if (i == *(v2 + 176))
    {
      v5 = 0;
      v6 = 0;
      goto LABEL_8;
    }

    v5 = *i;
    if (*(*i + 36) == v3)
    {
      break;
    }
  }

  v6 = i[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = *(v1 + 2);
  }

LABEL_8:
  v7 = (*(**(v2 + 56) + 16))(*(v2 + 56), v3);
  if (v5)
  {
    v8 = v7;
    if (*(v5 + 58))
    {
      if (*(v5 + 60))
      {
        v18 = _os_activity_create(&_mh_execute_header, "sim-puk-required", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        os_activity_scope_enter(v18, &state);
        os_activity_scope_leave(&state);
        v9 = *v8;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(state.opaque[0]) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I SIM PUK required: prompting UI #sim-pin", &state, 2u);
        }

        v12 = *(v2 + 120);
        v13 = *(v1 + 2);
        v14 = sub_100064FC8(v5, v10, v11);
        (*(*v12 + 48))(v12, v13, v14, *(v5 + 60));
        v15 = *(v1 + 2);
        state.opaque[0] = _NSConcreteStackBlock;
        state.opaque[1] = 0x40000000;
        v20 = sub_101196B84;
        v21 = &unk_101F16598;
        v22 = v15;
        sub_1011969D8(0x800A2);
        sub_1000C0590(&v18);
        goto LABEL_19;
      }

      v16 = *v7;
      if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      LOWORD(state.opaque[0]) = 0;
      v17 = "#I Zero PUK retry count";
    }

    else
    {
      v16 = *v7;
      if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      LOWORD(state.opaque[0]) = 0;
      v17 = "#I SIM is not Pin Protected";
    }

    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, &state, 2u);
  }

LABEL_19:
  if (v6)
  {
    sub_100004A34(v6);
  }

  operator delete();
}

void sub_1011CE158(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000C0590(va);
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1011CE194(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_24;
      }

      v4 = *(a1 + 16);
      while (1)
      {
        v5 = *(v3 + 7) == *(v4 + 7) && *(v3 + 32) == *(v4 + 32);
        if (!v5)
        {
          break;
        }

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
            v5 = *v3 == v7;
            v7 = v3;
          }

          while (!v5);
        }

        v8 = v4[1];
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
            v9 = v4[2];
            v5 = *v9 == v4;
            v4 = v9;
          }

          while (!v5);
        }

        v4 = v9;
        if (v3 == v2 + 5)
        {
          goto LABEL_24;
        }
      }
    }

    sub_10004645C((v2 + 4), (a1 + 16));
    v10 = v2[3];
    if (v10)
    {
      (*(*v10 + 48))(v10, v2 + 4);
    }
  }

LABEL_24:
  sub_10006DCAC(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_1011CE2C0(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[4])
      {
        sub_100135ED0(a1 + 6, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void *sub_1011CE34C(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void sub_1011CE398(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_1011CE3EC(void **a1, void **a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 1;
    do
    {
      if ((sub_1000068BC(a2, v3 + 4) & 0x80) == 0)
      {
        if ((sub_1000068BC(v3 + 4, a2) & 0x80) == 0)
        {
          return v4;
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t sub_1011CE454(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_1011CE508();
  }

  return v2;
}

uint64_t sub_1011CE5AC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1011BAEB4(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_1011CE5F8(uint64_t a1, int a2)
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

uint64_t sub_1011CE6BC(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1011CE754(uint64_t *a1)
{
  v1 = *a1;
  v38 = a1;
  v39 = v1;
  v2 = *v1;
  v3 = (v1 + 8);
  if ((*(v1 + 8) - 3) >= 2)
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Read not supported for:%s file", buf, 0xCu);
    }

    sub_10000501C(__p, "");
    sub_1011B5934(*(v1 + 64), __p, 0x100000001);
    if (v43 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = (v1 + 16);
  if (!sub_1011CE3EC(*(v2 + 984), (v1 + 16)))
  {
    goto LABEL_13;
  }

  *buf = v1 + 16;
  v7 = *(sub_1011CE454(v2 + 976, (v1 + 16)) + 64);
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = *v3;
  while (1)
  {
    v9 = *(v7 + 8);
    if (v8 >= v9)
    {
      break;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (v9 < v8)
  {
    ++v7;
    goto LABEL_12;
  }

  *buf = v1 + 16;
  v21 = sub_1011CE454(v2 + 976, (v1 + 16));
  __dst[1] = 0;
  v41 = 0;
  __dst[0] = &__dst[1];
  v22 = *(v21 + 56);
  if (v22 != (v21 + 64))
  {
    v23 = 0;
    v24 = &__dst[1];
    while (1)
    {
      v25 = &__dst[1];
      if (v24 != &__dst[1])
      {
        v26 = &__dst[1];
        do
        {
          v25 = v26[2];
          v27 = *v25 == v26;
          v26 = v25;
        }

        while (v27);
        if (*(v25 + 8) >= *(v22 + 8))
        {
          goto LABEL_52;
        }
      }

      v27 = v23 == 0;
      v28 = __dst;
      if (!v27)
      {
        v28 = v25;
      }

      if (!v28[1])
      {
LABEL_52:
        operator new();
      }

      v29 = v22[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v22[2];
          v27 = *v30 == v22;
          v22 = v30;
        }

        while (!v27);
      }

      if (v30 == (v21 + 64))
      {
        break;
      }

      v24 = __dst[0];
      v23 = __dst[1];
      v22 = v30;
    }
  }

  *buf = v1 + 8;
  v31 = sub_1011CE5F8(__dst, *v3);
  if ((*(v31 + 63) & 0x8000000000000000) != 0)
  {
    if (!v31[6])
    {
      goto LABEL_71;
    }

LABEL_62:
    v32 = *(v2 + 40);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v1 + 8;
      v33 = sub_1011CE5F8(__dst, *v3);
      v34 = v33 + 5;
      if (*(v33 + 63) < 0)
      {
        v34 = *v34;
      }

      if (*(v1 + 39) < 0)
      {
        v5 = *v5;
      }

      v35 = subscriber::asString();
      *buf = 136315650;
      *&buf[4] = v34;
      *&buf[12] = 2080;
      *&buf[14] = v5;
      *&buf[22] = 2080;
      v46 = v35;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Cached %s for :%s file:%s", buf, 0x20u);
    }

    *buf = v1 + 8;
    v36 = sub_1011CE5F8(__dst, *v3);
    if (*(v36 + 63) < 0)
    {
      sub_100005F2C(buf, v36[5], v36[6]);
    }

    else
    {
      *buf = *(v36 + 5);
      *&buf[16] = v36[7];
    }

    sub_1011B5934(*(v1 + 64), buf, 0);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    sub_100077CD4(__dst, __dst[1]);
  }

  else
  {
    if (*(v31 + 63))
    {
      goto LABEL_62;
    }

LABEL_71:
    sub_100077CD4(__dst, __dst[1]);
LABEL_13:
    v11 = *(v2 + 168);
    v10 = *(v2 + 176);
    if (*(v1 + 39) < 0)
    {
      sub_100005F2C(__dst, *(v1 + 16), *(v1 + 24));
    }

    else
    {
      *__dst = *v5;
      v41 = *(v1 + 32);
    }

    if (v11 != v10)
    {
      while (2)
      {
        sub_10173C120(*v11, v6, buf);
        if (v41 >= 0)
        {
          v6 = HIBYTE(v41);
        }

        else
        {
          v6 = __dst[1];
        }

        v12 = buf[23];
        v13 = buf[23];
        if (buf[23] < 0)
        {
          v12 = *&buf[8];
        }

        if (v6 == v12)
        {
          if (v41 >= 0)
          {
            v14 = __dst;
          }

          else
          {
            v14 = __dst[0];
          }

          if (buf[23] >= 0)
          {
            v15 = buf;
          }

          else
          {
            v15 = *buf;
          }

          v16 = memcmp(v14, v15, v6) == 0;
          if (v13 < 0)
          {
LABEL_32:
            operator delete(*buf);
          }
        }

        else
        {
          v16 = 0;
          if ((buf[23] & 0x80000000) != 0)
          {
            goto LABEL_32;
          }
        }

        if (v16)
        {
          break;
        }

        v11 += 2;
        if (v11 == v10)
        {
          v11 = v10;
          break;
        }

        continue;
      }
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v11 == *(v2 + 176))
    {
      v20 = *(v2 + 40);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        if (*(v1 + 39) < 0)
        {
          v5 = *v5;
        }

        *buf = 136315138;
        *&buf[4] = v5;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "(%s) not found in sims info", buf, 0xCu);
      }

      sub_10000501C(buf, "");
      sub_1011B5934(*(v1 + 64), buf, 0x100000001);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      v17 = *(v2 + 104);
      v18 = *(*v11 + 8);
      v19 = *(v1 + 8);
      sub_1011CE6BC(buf, v1 + 40);
      (*(*v17 + 144))(v17, v18, v19, v1 + 16, buf);
      sub_1003F48FC(buf);
    }
  }

  sub_1011CEE48(&v39);
  return sub_1000049E0(&v38);
}

void sub_1011CED9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_100077CD4(&a11, a12);
  sub_1011CEE48(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011CEE48(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1003F48FC(v1 + 40);
    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1011CEEA8(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1011CEF40(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  v25 = a1;
  v26 = v3;
  v4 = *v3;
  v6 = *(*v3 + 168);
  v5 = *(*v3 + 176);
  v7 = (v3 + 8);
  if (*(v3 + 31) < 0)
  {
    sub_100005F2C(__dst, *(v3 + 8), *(v3 + 16));
  }

  else
  {
    v8 = *v7;
    v28 = *(v3 + 24);
    *__dst = v8;
  }

  if (v6 != v5)
  {
    while (1)
    {
      sub_10173C120(*v6, a3, &__p);
      if (v28 >= 0)
      {
        a3 = HIBYTE(v28);
      }

      else
      {
        a3 = __dst[1];
      }

      v9 = HIBYTE(v30);
      v10 = SHIBYTE(v30);
      if (v30 < 0)
      {
        v9 = *(&__p + 1);
      }

      if (a3 == v9)
      {
        break;
      }

      v13 = 0;
      if (SHIBYTE(v30) < 0)
      {
        goto LABEL_20;
      }

LABEL_21:
      if (v13)
      {
        goto LABEL_24;
      }

      v6 += 2;
      if (v6 == v5)
      {
        v6 = v5;
        goto LABEL_24;
      }
    }

    if (v28 >= 0)
    {
      v11 = __dst;
    }

    else
    {
      v11 = __dst[0];
    }

    if (v30 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v13 = memcmp(v11, p_p, a3) == 0;
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_20:
    operator delete(__p);
    goto LABEL_21;
  }

LABEL_24:
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v6 == v4[22])
  {
    v19 = v4[5];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      if (*(v3 + 31) < 0)
      {
        v7 = *v7;
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v7;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "(%s) not found in sims info", &__p, 0xCu);
    }
  }

  else if (*(v3 + 36) == 2)
  {
    v14 = *(v3 + 48);
    if (v14)
    {
      v15 = *(v3 + 48);
      do
      {
        v16 = *(v15 + 8);
        if (v16 <= 0)
        {
          if ((v16 & 0x80000000) == 0)
          {
            while (1)
            {
              v17 = *(v14 + 8);
              if (v17 <= 1)
              {
                if (v17 == 1)
                {
                  v23 = v4[13];
                  v24 = *(*v6 + 8);
                  sub_1011CEEA8(&__p, v3 + 64);
                  (*(*v23 + 152))(v23, v24, v3 + 8, v3 + 32, &__p);
                  sub_1004F3408(&__p);
                  goto LABEL_47;
                }

                ++v14;
              }

              v14 = *v14;
              if (!v14)
              {
                goto LABEL_39;
              }
            }
          }

          ++v15;
        }

        v15 = *v15;
      }

      while (v15);
    }

LABEL_39:
    v18 = v4[5];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing auth parameters", &__p, 2u);
    }
  }

  else
  {
    v20 = v4[5];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = subscriber::asString();
      LODWORD(__p) = 136315138;
      *(&__p + 4) = v22;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s authentication not supported", &__p, 0xCu);
    }
  }

  *(&__p + 1) = 0;
  v30 = 0;
  *&__p = &__p + 8;
  sub_1011B5C70(*(v3 + 88), &__p, 0x100000001);
  sub_10004EC58(&__p, *(&__p + 1));
LABEL_47:
  sub_1011CF324(&v26);
  return sub_1000049E0(&v25);
}

void sub_1011CF2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19)
{
  sub_1004F3408(&a18);
  sub_1011CF324(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011CF324(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1004F3408(v1 + 64);
    sub_10004EC58(v1 + 40, *(v1 + 48));
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1011CF390()
{
  v1[0] = xmmword_1019280A0;
  sub_1008235B0(&qword_101FC8CE8, v1, 4);
  __cxa_atexit(sub_1011A9794, &qword_101FC8CE8, &_mh_execute_header);
  LODWORD(v1[0]) = 12;
  sub_1008235B0(&qword_101FC8D00, v1, 1);
  __cxa_atexit(sub_1011A9794, &qword_101FC8D00, &_mh_execute_header);
  v1[0] = xmmword_1019280B0;
  sub_1008235B0(&qword_101FC8D18, v1, 4);
  __cxa_atexit(sub_1011A9794, &qword_101FC8D18, &_mh_execute_header);
  v1[0] = xmmword_1019280C0;
  v1[1] = unk_1019280D0;
  sub_1008235B0(&qword_101FC8D30, v1, 8);
  return __cxa_atexit(sub_1011A9794, &qword_101FC8D30, &_mh_execute_header);
}

void sub_1011CF58C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_10000501C(__p, "911");
  sub_1000D1054(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "112");
  sub_1000D1054(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "*911");
  sub_1000D1054(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "#911");
  sub_1000D1054(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1011CF66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000087B4(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_1011CF6B4(uint64_t a1, void *a2, dispatch_object_t *a3, uint64_t *a4, const char *a5, char *a6, void *a7, uint64_t a8)
{
  v15 = (a1 + 8);
  v16 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  ctu::OsLogContext::OsLogContext(&v31, kCtLoggingSystemName, a6);
  if (v16)
  {
    dispatch_retain(v16);
    v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    dispatch_retain(v16);
    dispatch_retain(v16);
    v18 = dispatch_queue_create_with_target_V2(a5, v17, v16);
  }

  else
  {
    v19 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v18 = dispatch_queue_create(a5, v19);
  }

  v20 = v18;
  *v15 = 0;
  v15[1] = 0;
  *(a1 + 24) = v18;
  if (v18)
  {
    dispatch_retain(v18);
  }

  *(a1 + 32) = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  if (v20)
  {
    dispatch_release(v20);
  }

  if (v16)
  {
    dispatch_release(v16);
    dispatch_release(v16);
    dispatch_release(v16);
  }

  ctu::OsLogLogger::OsLogLogger(v29, &v31);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v29);
  ctu::OsLogLogger::~OsLogLogger(v29);
  ctu::OsLogContext::~OsLogContext(&v31);
  if (v16)
  {
    dispatch_release(v16);
  }

  v21 = sub_1011D4668(v30, a8);
  *(a1 + 48) = 0;
  if ((capabilities::ct::supportsGemini(v21) & 1) == 0)
  {
    operator new();
  }

  if (!*(a1 + 48))
  {
    operator new();
  }

  sub_1000A8744(v30);
  *a1 = off_101F194C8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_10004EFD0(a1 + 56, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  *(a1 + 88) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = a5;
  *(a1 + 160) = *a2;
  v22 = a2[1];
  *(a1 + 168) = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 176) = *a7;
  v23 = a7[1];
  *(a1 + 184) = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 16), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, *(a1 + 152));
  v24 = *(a1 + 24);
  v26 = v24;
  if (v24)
  {
    dispatch_retain(v24);
  }

  ctu::RestModule::RestModule();
  if (v26)
  {
    dispatch_release(v26);
  }

  if (v28 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 240) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 13;
  *(a1 + 248) = 0;
  *(a1 + 256) = 1;
  *(a1 + 312) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = a1 + 304;
  sub_10000501C(&v31, "822");
  sub_1000D1054(a1 + 128, &v31);
  if (v32 < 0)
  {
    operator delete(v31.var0);
  }

  return a1;
}

void sub_1011CFC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v6);
  ctu::OsLogContext::~OsLogContext(va1);
  if (v7)
  {
    dispatch_release(v7);
  }

  JUMPOUT(0x1011CFC7CLL);
}

uint64_t sub_1011CFCC8(uint64_t a1)
{
  sub_1001A912C(a1 + 32, *(a1 + 40));

  return sub_1011D432C(a1);
}

void sub_1011CFD08(uint64_t a1)
{
  *a1 = off_101F194C8;
  sub_1001A912C(a1 + 296, *(a1 + 304));
  sub_1011D432C(a1 + 264);
  sub_1001A904C(a1 + 232, *(a1 + 240));
  v2 = *(a1 + 216);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 200);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 184);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 168);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v7 = (a1 + 128);
  sub_1000087B4(&v7);
  sub_1011D4784(a1 + 104, *(a1 + 112));
  sub_1011D4724(a1 + 80, *(a1 + 88));
  v7 = (a1 + 56);
  sub_1000087B4(&v7);
  v6 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  EmergencyNumbersInterface::~EmergencyNumbersInterface(a1);
}

void sub_1011CFE24(uint64_t a1, dispatch_object_t *a2)
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

void sub_1011CFF18(unint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 160));
  v3 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  v14[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v14);
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
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
LABEL_9:
  v11 = *(a1 + 216);
  *(a1 + 208) = v10;
  *(a1 + 216) = v9;
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_10000501C(__p, "/cc/props/vowifi_provisioning_state");
  v14[0] = off_101F196E8;
  v14[1] = a1 + 232;
  v14[2] = a1;
  v14[3] = v14;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v14);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "/cc/events/dump_state");
  operator new();
}

void sub_1011D010C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1011D0158(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.var0) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Emergency Numbers (prioritized order): [Number, Category, SupportsSMS]", &buf, 2u);
  }

  subscriber::makeSimSlotRange();
  v3 = v29;
  v24 = v30;
  if (v29 != v30)
  {
    v23 = v31;
    do
    {
      if (v31(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v30);
    v22 = v30;
    while (v3 != v22)
    {
      v4 = *v3;
      v25 = (*(**(a1 + 48) + 16))(*(a1 + 48), v4);
      for (i = 0; i != 13; ++i)
      {
        __p = 0;
        v27 = 0;
        v28 = 0;
        sub_1000B1F3C(a1, v4, i, &__p);
        v6 = __p;
        v7 = v27;
        v8 = *v25;
        v9 = os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT);
        if (v6 == v7)
        {
          if (v9)
          {
            v15 = asString();
            buf.var0 = 136315138;
            *&buf.var1 = v15;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: no numbers", &buf, 0xCu);
          }
        }

        else if (v9)
        {
          v10 = asString();
          v11 = __p;
          v12 = v27;
          memset(&v41, 0, sizeof(v41));
          if (__p != v27)
          {
            sub_1011D5B34(&buf, __p);
            if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v41.__r_.__value_.__l.__data_);
            }

            *&v41.__r_.__value_.__l.__data_ = *&buf.var0;
            v41.__r_.__value_.__r.__words[2] = buf.var2.__rep_.__l.__size_;
            while (1)
            {
              v11 += 5;
              if (v11 == v12)
              {
                break;
              }

              buf.var2.__rep_.__s.__data_[15] = 1;
              strcpy(&buf, ",");
              std::string::append(&v41, &buf, 1uLL);
              if (buf.var2.__rep_.__s.__data_[15] < 0)
              {
                operator delete(*&buf.var0);
              }

              sub_1011D5B34(&buf, v11);
              if (buf.var2.__rep_.__s.__data_[15] >= 0)
              {
                p_buf = &buf;
              }

              else
              {
                p_buf = *&buf.var0;
              }

              if (buf.var2.__rep_.__s.__data_[15] >= 0)
              {
                data = buf.var2.__rep_.__s.__data_[15];
              }

              else
              {
                data = buf.var2.__rep_.__l.__data_;
              }

              std::string::append(&v41, p_buf, data);
              if (buf.var2.__rep_.__s.__data_[15] < 0)
              {
                operator delete(*&buf.var0);
              }
            }
          }

          v16 = &v41;
          if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v16 = v41.__r_.__value_.__r.__words[0];
          }

          *v42 = 136315394;
          v43 = v10;
          v44 = 2080;
          v45 = v16;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: %s", v42, 0x16u);
          if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v41.__r_.__value_.__l.__data_);
          }
        }

        *&buf.var0 = &__p;
        sub_1000B23E0(&buf);
      }

      v17 = *v25;
      if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000B24BC(&buf, a1, v4);
        CSIPhoneNumber::getFullNumber(&__p, &buf);
        p_p = &__p;
        if (v28 < 0)
        {
          p_p = __p;
        }

        LODWORD(v41.__r_.__value_.__l.__data_) = 136315138;
        *(v41.__r_.__value_.__r.__words + 4) = p_p;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I fPreferredEmergencyNumber: %s", &v41, 0xCu);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p);
        }

        if (v40 < 0)
        {
          operator delete(v39);
        }

        if (v38 < 0)
        {
          operator delete(v37);
        }

        if (v36 < 0)
        {
          operator delete(v35);
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }

        if (*(&buf.var2.__rep_.__l + 23) < 0)
        {
          operator delete(buf.var2.__rep_.__l.__data_);
        }

        v17 = *v25;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = asString();
        buf.var0 = 136315138;
        *&buf.var1 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I fLastMatchedEmergencyNumListType: %s", &buf, 0xCu);
        v17 = *v25;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = sub_1011D3D78(a1);
        v21 = CSIBOOLAsString(v20);
        buf.var0 = 136315138;
        *&buf.var1 = v21;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Is current model: %s", &buf, 0xCu);
      }

      do
      {
        ++v3;
      }

      while (v3 != v24 && (v23(*v3) & 1) == 0);
    }
  }
}

void sub_1011D0698(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_1011D0774(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v13, *(a1 + 160));
  ctu::RestModule::connect();
  if (v14)
  {
    sub_100004A34(v14);
  }

  subscriber::makeSimSlotRange();
  v2 = v10;
  v3 = v11;
  if (v10 != v11)
  {
    v4 = v12;
    do
    {
      if (v12(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v11);
    v5 = v11;
    while (v2 != v5)
    {
      v6 = *v2;
      sub_1011D0918(a1, 8u, (a1 + 56), v6);
      if (sub_1011D0F54(a1))
      {
        memset(v9, 0, sizeof(v9));
        sub_10000501C(__p, "822");
        sub_1000D1054(v9, __p);
        if (v8 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1011D0918(a1, 0xAu, v9, v6);
        __p[0] = v9;
        sub_1000087B4(__p);
      }

      do
      {
        ++v2;
      }

      while (v2 != v3 && (v4(*v2) & 1) == 0);
    }
  }

  sub_1011D1160(a1);
}

void sub_1011D08CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    sub_100004A34(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011D0918(uint64_t a1, unsigned int a2, __int128 **a3, uint64_t a4)
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x4002000000;
  v43 = sub_1011D29A0;
  v44 = sub_1011D29BC;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  sub_10000501C(v45, "");
  v8 = *a3;
  v9 = a3[1];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 0x40000000;
  v37 = sub_1011D29D0;
  v38 = &unk_101F19580;
  v39 = &v40;
  for (i = a3; v8 != v9; v8 = (v8 + 24))
  {
    if (*(v8 + 23) < 0)
    {
      sub_100005F2C(buf, *v8, *(v8 + 1));
    }

    else
    {
      v10 = *v8;
      *&buf[16] = *(v8 + 2);
      *buf = v10;
    }

    v37(v36, buf);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a4);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v41 + 5;
    if (*(v41 + 63) < 0)
    {
      v12 = *v12;
    }

    v13 = asString();
    *buf = 136315394;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Adding emergency numbers '%s' from %s", buf, 0x16u);
  }

  sub_1011D2AC8(a1, a4, a2);
  if (a2 == 11)
  {
    v14 = 1;
  }

  else
  {
    if (a2 != 1)
    {
      goto LABEL_17;
    }

    v14 = 11;
  }

  sub_1011D2AC8(a1, a4, v14);
LABEL_17:
  memset(v47, 0, sizeof(v47));
  v48 = 1065353216;
  *buf = @"EmergencyCalling";
  *&buf[8] = @"IgnoreEENLSubServiceFields";
  v53 = 0;
  v54 = 0;
  v52 = 0;
  sub_10005B328(&v52, buf, &buf[16], 2uLL);
  cf = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 160));
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
  *buf = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, buf);
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
      goto LABEL_25;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
LABEL_25:
  (*(*v23 + 88))(&cf, v23, a4, 2, &v52, 0, 0);
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  v25 = cf;
  if (cf)
  {
    v26 = CFGetTypeID(cf);
    if (v26 != CFArrayGetTypeID())
    {
      v25 = 0;
    }

    Count = CFArrayGetCount(v25);
    if (Count >= 1)
    {
      for (j = 0; j != Count; ++j)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v25, j);
        if (ValueAtIndex)
        {
          v30 = CFGetTypeID(ValueAtIndex);
          if (v30 == CFStringGetTypeID())
          {
            __p[0] = 0;
            __p[1] = 0;
            v50 = 0;
            memset(buf, 0, sizeof(buf));
            ctu::cf::assign();
            *__p = *buf;
            v50 = *&buf[16];
            v31 = (buf[23] & 0x80u) == 0 ? (__p + HIBYTE(v50)) : (__p[0] + __p[1]);
            for (k = (buf[23] & 0x80u) == 0 ? __p : __p[0]; k != v31; k = (k + 1))
            {
              *k = __tolower(*k);
            }

            sub_1003825DC(v47, __p);
            if (SHIBYTE(v50) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }
    }
  }

  sub_10000A1EC(&cf);
  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  v33 = *i;
  v34 = i[1];
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 1174405120;
  *&buf[16] = sub_1011D2B80;
  v56 = &unk_101F195A0;
  v57 = a1;
  v58[10] = a2;
  v58[11] = a4;
  sub_100383298(v58, v47);
  while (v33 != v34)
  {
    (*&buf[16])(buf, v33);
    v33 += 24;
  }

  sub_1001754E8(v58);
  sub_1001754E8(v47);
  _Block_object_dispose(&v40, 8);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[0]);
  }
}

void sub_1011D0E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, void *a40, uint64_t a41)
{
  _Block_object_dispose(&a15, 8);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1011D0F54(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 160));
  v3 = ServiceMap;
  v5 = v4;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v6 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
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
  v9 = sub_100009510(&v3[1].__m_.__sig, &v25);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
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

  std::mutex::unlock(v3);
  v10 = 0;
  v12 = 1;
LABEL_9:
  v13 = (*(*v11 + 16))(v11);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  v14 = Registry::getServiceMap(*(a1 + 160));
  v15 = v14;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v16 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v4 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(v14);
  v25 = v4;
  v19 = sub_100009510(&v15[1].__m_.__sig, &v25);
  if (v19)
  {
    v21 = v19[3];
    v20 = v19[4];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      v22 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v15);
  v20 = 0;
  v22 = 1;
LABEL_19:
  v23 = (*(*v21 + 24))(v21);
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  return (v13 | v23) & 1;
}

void sub_1011D1134(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011D1160(void *a1)
{
  v2 = a1[23];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[22];
      if (v5)
      {
        if (sub_1011D3D78(a1))
        {
          v6 = a1[19];
          sub_1011D3E38(a1, v7);
          (*(*v5 + 16))(v5, v6, v7);
          sub_1001A90CC(v7, v7[1]);
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1011D121C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  sub_1001A90CC(&a10, a11);
  sub_100004A34(v11);
  _Unwind_Resume(a1);
}

void sub_1011D1248(uint64_t a1, dispatch_object_t *a2)
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

void sub_1011D1344(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = a2;
  v9 = a3;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v9;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      sub_1011D1514(a4, a1, v10);
      return;
    }

    v6 = *(a1 + 32) == 0;
  }

  else
  {
    v6 = 1;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_1011D50E8;
  v11[3] = &unk_101F197D8;
  v11[4] = a1 + 8;
  v11[5] = v8;
  v12 = v11;
  v7 = *(a1 + 24);
  *(a4 + 128) = 0uLL;
  *(a4 + 144) = 0uLL;
  *(a4 + 96) = 0uLL;
  *(a4 + 112) = 0uLL;
  *(a4 + 64) = 0uLL;
  *(a4 + 80) = 0uLL;
  *(a4 + 32) = 0uLL;
  *(a4 + 48) = 0uLL;
  *a4 = 0uLL;
  *(a4 + 16) = 0uLL;
  if (v6)
  {
    CSIPhoneNumber::CSIPhoneNumber(a4);
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_1011D5104;
    v16 = &unk_101F197F8;
    v17 = a4;
    v18 = &v12;
    dispatch_sync(v7, &block);
  }

  else
  {
    CSIPhoneNumber::CSIPhoneNumber(a4);
    block = _NSConcreteStackBlock;
    v14 = 0x40000000;
    v15 = sub_1011D52AC;
    v16 = &unk_101F19818;
    v17 = a4;
    v18 = &v12;
    dispatch_async_and_wait(v7, &block);
  }
}

void sub_1011D1514(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  CSIPhoneNumber::CSIPhoneNumber(a1);
  subscriber::makeSimSlotRange();
  i = v67.__r_.__value_.__r.__words[0];
  v59 = a2;
  if (v67.__r_.__value_.__r.__words[0] == v67.__r_.__value_.__l.__size_)
  {
    goto LABEL_108;
  }

  do
  {
    if ((v67.__r_.__value_.__r.__words[2])(*i))
    {
      break;
    }

    ++i;
  }

  while (i != v67.__r_.__value_.__l.__size_);
  size = v67.__r_.__value_.__l.__size_;
  if (i == v67.__r_.__value_.__l.__size_)
  {
LABEL_108:
    v33 = 0;
    v60 = 0;
    v55 = 0;
    v6 = 13;
    goto LABEL_110;
  }

  v55 = 0;
  v60 = 0;
  v6 = 13;
  v7 = *&v67.__r_.__value_.__r.__words[1];
LABEL_6:
  v56 = *i;
  v8 = (*(**(a2 + 48) + 16))(*(a2 + 48));
  v53 = i;
  v9 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = subscriber::asString();
    buf.var0 = 136446210;
    *&buf.var1 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Trying to find best matched local emergency number for %{public}s", &buf, 0xCu);
  }

  v11 = 0;
  while (1)
  {
    v64 = 0;
    v65 = 0;
    v66 = 0;
    sub_1000B1F3C(a2, v56, v11, &v64);
    v12 = v64;
    v58 = v65;
    if (v64 != v65)
    {
      break;
    }

    *&buf.var0 = &v64;
    sub_1000B23E0(&buf);
LABEL_102:
    if (++v11 == 13)
    {
      for (i = v53 + 1; i != v7; ++i)
      {
        if ((*(&v7 + 1))(*i))
        {
          break;
        }
      }

      v33 = 0;
      if (i == size)
      {
        goto LABEL_110;
      }

      goto LABEL_6;
    }
  }

  v54 = 0;
  do
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    memset(&buf, 0, sizeof(buf));
    sub_1000AE428(&buf, v12);
    if (a3)
    {
      v14 = v59[16];
      v13 = v59[17];
      while (1)
      {
        if (v14 == v13)
        {
          goto LABEL_76;
        }

        memset(__dst, 0, 24);
        if (*(v14 + 23) < 0)
        {
          sub_100005F2C(__dst, *v14, *(v14 + 1));
        }

        else
        {
          v15 = *v14;
          *&__dst[16] = *(v14 + 2);
          *__dst = v15;
        }

        CSIPhoneNumber::getFullNumber(&__p, &buf);
        v16 = SHIBYTE(v63);
        if (v63 >= 0)
        {
          v17 = HIBYTE(v63);
        }

        else
        {
          v17 = v62;
        }

        v18 = __dst[23];
        if (__dst[23] < 0)
        {
          v18 = *&__dst[8];
        }

        if (v17 == v18)
        {
          if (v63 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (__dst[23] >= 0)
          {
            v20 = __dst;
          }

          else
          {
            v20 = *__dst;
          }

          v21 = memcmp(p_p, v20, v17) == 0;
          if (v16 < 0)
          {
LABEL_33:
            operator delete(__p);
            if (!v21)
            {
              goto LABEL_37;
            }

            goto LABEL_34;
          }
        }

        else
        {
          v21 = 0;
          if (SHIBYTE(v63) < 0)
          {
            goto LABEL_33;
          }
        }

        if (!v21)
        {
          goto LABEL_37;
        }

LABEL_34:
        v22 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p) = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Testing so found default test number", &__p, 2u);
        }

        *a1 = *&buf.var0;
        std::string::operator=((a1 + 8), &buf.var2);
        std::string::operator=((a1 + 32), &v77);
        *(a1 + 56) = DWORD2(v78);
        *(a1 + 60) = BYTE12(v78);
        std::string::operator=((a1 + 64), &v79);
        *(a1 + 88) = *(&v80 + 1);
        *(a1 + 96) = v81;
        std::string::operator=((a1 + 104), (&v81 + 8));
        std::string::operator=((a1 + 128), &v83);
        *(a1 + 152) = DWORD2(v84);
        v60 = 1;
        v6 = v11;
LABEL_37:
        if ((__dst[23] & 0x80000000) != 0)
        {
          operator delete(*__dst);
        }

        v14 = (v14 + 24);
      }
    }

    __p = 0;
    v62 = 0;
    v63 = 0;
    sub_1000B24BC(__dst, v59, v56);
    CSIPhoneNumber::getFullNumber(&__p, __dst);
    if (SBYTE7(v75) < 0)
    {
      operator delete(v74[0]);
    }

    if (SHIBYTE(v73) < 0)
    {
      operator delete(v72[1]);
    }

    if (SBYTE7(v71) < 0)
    {
      operator delete(v70[0]);
    }

    if (SBYTE7(v69) < 0)
    {
      operator delete(*&__dst[32]);
    }

    if ((__dst[31] & 0x80000000) != 0)
    {
      operator delete(*&__dst[8]);
    }

    CSIPhoneNumber::getFullNumber(__dst, &buf);
    v23 = __dst[23];
    if (__dst[23] >= 0)
    {
      v24 = __dst[23];
    }

    else
    {
      v24 = *&__dst[8];
    }

    v25 = HIBYTE(v63);
    if (v63 < 0)
    {
      v25 = v62;
    }

    if (v24 == v25)
    {
      if (__dst[23] >= 0)
      {
        v26 = __dst;
      }

      else
      {
        v26 = *__dst;
      }

      if (v63 >= 0)
      {
        v27 = &__p;
      }

      else
      {
        v27 = __p;
      }

      v28 = memcmp(v26, v27, v24) == 0;
      if ((v23 & 0x80000000) == 0)
      {
LABEL_63:
        if (v28)
        {
          goto LABEL_64;
        }

        goto LABEL_72;
      }
    }

    else
    {
      v28 = 0;
      if ((__dst[23] & 0x80000000) == 0)
      {
        goto LABEL_63;
      }
    }

    operator delete(*__dst);
    if (v28)
    {
LABEL_64:
      v29 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v30 = asString();
        v31 = &__p;
        if (v63 < 0)
        {
          v31 = __p;
        }

        *__dst = 136315394;
        *&__dst[4] = v30;
        *&__dst[12] = 2080;
        *&__dst[14] = v31;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Found a match to the preferred emergency number in %s! Using it! [%s]", __dst, 0x16u);
      }

      *a1 = *&buf.var0;
      std::string::operator=((a1 + 8), &buf.var2);
      std::string::operator=((a1 + 32), &v77);
      *(a1 + 56) = DWORD2(v78);
      *(a1 + 60) = BYTE12(v78);
      std::string::operator=((a1 + 64), &v79);
      *(a1 + 88) = *(&v80 + 1);
      *(a1 + 96) = v81;
      std::string::operator=((a1 + 104), (&v81 + 8));
      std::string::operator=((a1 + 128), &v83);
      v54 = 1;
      v32 = 11;
      goto LABEL_69;
    }

LABEL_72:
    if (v55)
    {
      v32 = 0;
      v55 = 1;
      goto LABEL_74;
    }

    if (CSIPhoneNumber::getEmergencyCategory(&buf) == 255)
    {
      *a1 = *&buf.var0;
      std::string::operator=((a1 + 8), &buf.var2);
      std::string::operator=((a1 + 32), &v77);
      *(a1 + 56) = DWORD2(v78);
      *(a1 + 60) = BYTE12(v78);
      std::string::operator=((a1 + 64), &v79);
      *(a1 + 88) = *(&v80 + 1);
      *(a1 + 96) = v81;
      std::string::operator=((a1 + 104), (&v81 + 8));
      std::string::operator=((a1 + 128), &v83);
      v32 = 0;
      v55 = 1;
LABEL_69:
      *(a1 + 152) = DWORD2(v84);
      v6 = v11;
      goto LABEL_74;
    }

    if (v60)
    {
      v32 = 0;
      v55 = 0;
      v60 = 1;
    }

    else
    {
      if (!CSIPhoneNumber::getEmergencyCategory(&buf))
      {
        *a1 = *&buf.var0;
        std::string::operator=((a1 + 8), &buf.var2);
        std::string::operator=((a1 + 32), &v77);
        *(a1 + 56) = DWORD2(v78);
        *(a1 + 60) = BYTE12(v78);
        std::string::operator=((a1 + 64), &v79);
        *(a1 + 88) = *(&v80 + 1);
        *(a1 + 96) = v81;
        std::string::operator=((a1 + 104), (&v81 + 8));
        std::string::operator=((a1 + 128), &v83);
        v32 = 0;
        v55 = 0;
        v60 = 1;
        goto LABEL_69;
      }

      v32 = 0;
      v60 = 0;
      v55 = 0;
    }

LABEL_74:
    if ((SHIBYTE(v63) & 0x80000000) == 0)
    {
      if (v28)
      {
        goto LABEL_77;
      }

LABEL_76:
      v32 = 0;
      goto LABEL_77;
    }

    operator delete(__p);
    if (!v28)
    {
      goto LABEL_76;
    }

LABEL_77:
    if (SBYTE7(v84) < 0)
    {
      operator delete(v83);
    }

    if (SHIBYTE(v82) < 0)
    {
      operator delete(*(&v81 + 1));
    }

    if (SBYTE7(v80) < 0)
    {
      operator delete(v79);
    }

    if (SBYTE7(v78) < 0)
    {
      operator delete(v77);
    }

    if (*(&buf.var2.__rep_.__l + 23) < 0)
    {
      operator delete(buf.var2.__rep_.__l.__data_);
    }

    if (v32)
    {
      break;
    }

    v12 += 160;
  }

  while (v12 != v58);
  *&buf.var0 = &v64;
  sub_1000B23E0(&buf);
  if ((v54 & 1) == 0)
  {
    a2 = v59;
    goto LABEL_102;
  }

  v33 = 1;
  a2 = v59;
LABEL_110:
  v34 = *(a2 + 256);
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  memset(&buf, 0, sizeof(buf));
  sub_1000B24BC(&buf, a2, v34);
  v35 = *(a2 + 40);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = CSIBOOLAsString(v33);
    EmergencyCategory = CSIPhoneNumber::getEmergencyCategory(&buf);
    hasEmergencyCategorySet = CSIPhoneNumber::hasEmergencyCategorySet(&buf);
    *__dst = 136315650;
    *&__dst[4] = v36;
    *&__dst[12] = 1024;
    *&__dst[14] = EmergencyCategory;
    *&__dst[18] = 1024;
    *&__dst[20] = hasEmergencyCategorySet;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Did we find preferred number in the list: %s. Category of the preferred number: %d. %d", __dst, 0x18u);
  }

  if (v33)
  {
    v39 = 1;
    goto LABEL_123;
  }

  if (CSIPhoneNumber::hasEmergencyCategorySet(&buf))
  {
    *a1 = *&buf.var0;
    std::string::operator=((a1 + 8), &buf.var2);
    std::string::operator=((a1 + 32), &v77);
    *(a1 + 56) = DWORD2(v78);
    *(a1 + 60) = BYTE12(v78);
    std::string::operator=((a1 + 64), &v79);
    *(a1 + 88) = *(&v80 + 1);
    *(a1 + 96) = v81;
    std::string::operator=((a1 + 104), (&v81 + 8));
    std::string::operator=((a1 + 128), &v83);
    *(a1 + 152) = DWORD2(v84);
    v39 = 1;
    v40 = 8;
  }

  else if ((v55 | v60))
  {
LABEL_122:
    v39 = 0;
LABEL_123:
    v40 = v6;
  }

  else
  {
    v41 = v59[5];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *__dst = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Did not match ALL or NONE category!", __dst, 2u);
    }

    v40 = 0;
    while (1)
    {
      memset(&v67, 0, sizeof(v67));
      sub_1000B1F3C(v59, v34, v40, &v67);
      if (v67.__r_.__value_.__r.__words[0] != v67.__r_.__value_.__l.__size_)
      {
        break;
      }

      *__dst = &v67;
      sub_1000B23E0(__dst);
      if (++v40 == 13)
      {
        goto LABEL_122;
      }
    }

    *v74 = 0u;
    v75 = 0u;
    *v72 = 0u;
    v73 = 0u;
    *v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    memset(__dst, 0, sizeof(__dst));
    sub_1000AE428(__dst, v67.__r_.__value_.__l.__data_);
    *a1 = *__dst;
    std::string::operator=((a1 + 8), &__dst[8]);
    std::string::operator=((a1 + 32), &__dst[32]);
    *(a1 + 56) = DWORD2(v69);
    *(a1 + 60) = BYTE12(v69);
    std::string::operator=((a1 + 64), v70);
    *(a1 + 88) = *(&v71 + 1);
    *(a1 + 96) = v72[0];
    std::string::operator=((a1 + 104), &v72[1]);
    std::string::operator=((a1 + 128), v74);
    *(a1 + 152) = DWORD2(v75);
    if (SBYTE7(v75) < 0)
    {
      operator delete(v74[0]);
    }

    if (SHIBYTE(v73) < 0)
    {
      operator delete(v72[1]);
    }

    if (SBYTE7(v71) < 0)
    {
      operator delete(v70[0]);
    }

    if (SBYTE7(v69) < 0)
    {
      operator delete(*&__dst[32]);
    }

    if ((__dst[31] & 0x80000000) != 0)
    {
      operator delete(*&__dst[8]);
    }

    *__dst = &v67;
    sub_1000B23E0(__dst);
    v39 = 0;
  }

  memset(&v67, 0, sizeof(v67));
  sub_10000501C(&v67, "Unknown");
  if (!v39)
  {
    if (v55)
    {
      v42 = v59;
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        v67.__r_.__value_.__l.__size_ = 12;
        v44 = v67.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v67.__r_.__value_.__s + 23) = 12;
        v44 = &v67;
      }

      LODWORD(v44->__r_.__value_.__r.__words[1]) = 1280065824;
      v44->__r_.__value_.__r.__words[0] = *"Category ALL";
      v46 = &v44->__r_.__value_.__s.__data_[12];
    }

    else
    {
      v42 = v59;
      if ((v60 & 1) == 0)
      {
        goto LABEL_151;
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        v67.__r_.__value_.__l.__size_ = 13;
        v45 = v67.__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&v67.__r_.__value_.__s + 23) = 13;
        v45 = &v67;
      }

      qmemcpy(v45, "Category NONE", 13);
      v46 = &v45->__r_.__value_.__s.__data_[13];
    }

    *v46 = 0;
    goto LABEL_151;
  }

  CSIPhoneNumber::getTypeOfNumber(a1);
  v42 = v59;
  if (isEmergencyCallNormalSetup())
  {
    v43 = "emergency-normal";
  }

  else
  {
    v43 = "emergency";
  }

  sub_100016890(&v67, v43);
LABEL_151:
  *(v42 + 56) = v40;
  toCallMetricEmNumListType();
  CSIPhoneNumber::setMatchedEmMetricListType();
  v47 = v42[5];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    CSIPhoneNumber::getFullNumber(&v64, a1);
    v48 = v66 >= 0 ? &v64 : v64;
    v49 = (v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v67 : v67.__r_.__value_.__r.__words[0];
    v50 = CSIPhoneNumber::getEmergencyCategory(a1);
    v51 = asString();
    *__dst = 136315906;
    *&__dst[4] = v48;
    *&__dst[12] = 2080;
    *&__dst[14] = v49;
    *&__dst[22] = 1024;
    *&__dst[24] = v50;
    *&__dst[28] = 2080;
    *&__dst[30] = v51;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I Matched emergency number %s (%s) with category %d in emergency list %s", __dst, 0x26u);
    if (SHIBYTE(v66) < 0)
    {
      operator delete(v64);
    }
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v84) < 0)
  {
    operator delete(v83);
  }

  if (SHIBYTE(v82) < 0)
  {
    operator delete(*(&v81 + 1));
  }

  if (SBYTE7(v80) < 0)
  {
    operator delete(v79);
  }

  if (SBYTE7(v78) < 0)
  {
    operator delete(v77);
  }

  if (*(&buf.var2.__rep_.__l + 23) < 0)
  {
    operator delete(buf.var2.__rep_.__l.__data_);
  }
}

void sub_1011D2200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, void **p_p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  p_p = &__p;
  sub_1000B23E0(&p_p);
  sub_10034F8E8(v50 - 256);
  if (*(v49 + 151) < 0)
  {
    operator delete(*(v49 + 128));
  }

  if (*(v49 + 127) < 0)
  {
    operator delete(*(v49 + 104));
  }

  if (*(v49 + 87) < 0)
  {
    operator delete(*(v49 + 64));
  }

  if (*(v49 + 55) < 0)
  {
    operator delete(*(v49 + 32));
  }

  if (*(v49 + 31) < 0)
  {
    operator delete(*(v49 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1011D23AC(uint64_t a1, CSIPhoneNumber *a2, CSIPhoneNumber *this)
{
  CSIPhoneNumber::getFullNumber(buf, this);
  CSIPhoneNumber::getFullNumber(&__p, a2);
  v6 = HIBYTE(v37);
  if (v37 >= 0)
  {
    v7 = HIBYTE(v37);
  }

  else
  {
    v7 = *&buf[8];
  }

  v8 = HIBYTE(v40);
  v9 = SHIBYTE(v40);
  if (v40 < 0)
  {
    v8 = *(&__p + 1);
  }

  if (v7 != v8 || (v37 >= 0 ? (v10 = buf) : (v10 = *buf), v40 >= 0 ? (p_p = &__p) : (p_p = __p), memcmp(v10, p_p, v7)))
  {
    if (v9 < 0)
    {
      operator delete(__p);
      if (v37 < 0)
      {
LABEL_18:
        operator delete(*buf);
      }
    }

    else if (v6 < 0)
    {
      goto LABEL_18;
    }

    return 0;
  }

  TypeOfAddress = CSIPhoneNumber::getTypeOfAddress(this);
  v13 = CSIPhoneNumber::getTypeOfAddress(a2);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(*buf);
  }

  if (TypeOfAddress != v13)
  {
    return 0;
  }

  theArray = 0;
  (*(**(a1 + 208) + 32))(buf);
  sub_10006DD00(&theArray, buf);
  sub_10000A1EC(buf);
  if (!theArray)
  {
    goto LABEL_68;
  }

  Count = CFArrayGetCount(theArray);
  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Found a skip list. Checking the number against the skip list.", buf, 2u);
  }

  if (Count < 1)
  {
    goto LABEL_68;
  }

  v16 = 0;
  for (i = 0; i != Count; ++i)
  {
    CFArrayGetValueAtIndex(theArray, i);
    __p = 0uLL;
    v40 = 0;
    sub_10000501C(&__p, "");
    ctu::cf::assign();
    CSIPhoneNumber::getFullNumber(buf, a2);
    v18 = SHIBYTE(v37);
    if (v37 >= 0)
    {
      v19 = HIBYTE(v37);
    }

    else
    {
      v19 = *&buf[8];
    }

    v20 = HIBYTE(v40);
    if (v40 < 0)
    {
      v20 = *(&__p + 1);
    }

    if (v19 != v20)
    {
      v23 = 0;
      if ((SHIBYTE(v37) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

LABEL_44:
      operator delete(*buf);
      goto LABEL_45;
    }

    if (v37 >= 0)
    {
      v21 = buf;
    }

    else
    {
      v21 = *buf;
    }

    if (v40 >= 0)
    {
      v22 = &__p;
    }

    else
    {
      v22 = __p;
    }

    v23 = memcmp(v21, v22, v19) == 0;
    if (v18 < 0)
    {
      goto LABEL_44;
    }

LABEL_45:
    v16 |= v23;
    v24 = *(a1 + 40);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      CSIPhoneNumber::getFullNumber(v33, a2);
      v25 = v33;
      if (v34 < 0)
      {
        v25 = v33[0];
      }

      if (v40 >= 0)
      {
        v26 = &__p;
      }

      else
      {
        v26 = __p;
      }

      v27 = "no";
      if (v16)
      {
        v27 = "yes";
      }

      *buf = 136315650;
      *&buf[4] = v25;
      *&buf[12] = 2080;
      *&buf[14] = v26;
      v37 = 2080;
      v38 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Comparing original number [%s] vs. skip list: [%s]. Should we skip? [%s]", buf, 0x20u);
      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(__p);
    }
  }

  if (v16)
  {
    v28 = *(a1 + 40);
    v29 = 0;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      CSIPhoneNumber::getFullNumber(buf, a2);
      if (v37 >= 0)
      {
        v30 = buf;
      }

      else
      {
        v30 = *buf;
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v30;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s matched but it's part of the emergency number exception list, so skipping", &__p, 0xCu);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(*buf);
      }

      v29 = 0;
    }

    goto LABEL_71;
  }

LABEL_68:
  v32 = *(a1 + 40);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Found emergency number and it's not in exception list", buf, 2u);
  }

  v29 = 1;
LABEL_71:
  sub_100010250(&theArray);
  return v29;
}

void sub_1011D28CC(uint64_t a1, uint64_t a2, int a3)
{
  v7 = a3;
  v6[0] = a2;
  v6[1] = a1;
  v6[2] = &v7;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      sub_1011D545C(v6);
      return;
    }

    v4 = *(a1 + 32) == 0;
  }

  else
  {
    v4 = 1;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1011D59B8;
  block[3] = &unk_101F198B8;
  block[4] = a1 + 8;
  block[5] = v6;
  v5 = *(a1 + 24);
  if (v4)
  {
    dispatch_sync(v5, block);
  }

  else
  {
    dispatch_async_and_wait(v5, block);
  }
}

__n128 sub_1011D29A0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_1011D29BC(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_1011D29D0(uint64_t a1, const void **a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v10 = 0;
  v11 = 0;
  __p = 0;
  sub_1000677C4(&__p, v4 + 1);
  if (v11 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memmove(p_p, v6, v4);
  }

  *&p_p[v4] = 59;
  if (v11 >= 0)
  {
    v7 = &__p;
  }

  else
  {
    v7 = __p;
  }

  if (v11 >= 0)
  {
    v8 = HIBYTE(v11);
  }

  else
  {
    v8 = v10;
  }

  std::string::append((*(*(a1 + 32) + 8) + 40), v7, v8);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }
}

void sub_1011D2AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011D2AC8(uint64_t a1, int a2, unsigned int a3)
{
  v11 = a2;
  v5 = *(a1 + 88);
  v3 = a1 + 88;
  v4 = v5;
  if (v5)
  {
    v7 = v3 - 8;
    v8 = v3;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v8 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v8 != v3 && *(v8 + 32) <= a2)
    {
      v9 = sub_1011D4198(v3 - 8, &v11);
      if (0xAAAAAAAAAAAAAAABLL * ((v9[1] - *v9) >> 3) > a3)
      {
        v10 = sub_1011D4198(v7, &v11);
        sub_1000B238C(*v10 + 24 * a3, *(*v10 + 24 * a3));
      }
    }
  }
}

void sub_1011D2B80(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 80);
  v4 = *(a1 + 84);
  v49 = 0;
  v50 = 0;
  v51 = 0;
  sub_1000B1F3C(v2, v4, v3, &v49);
  v46 = 0;
  v47 = 0;
  v48 = 0;
  ctu::tokenize();
  memset(&__str, 0, sizeof(__str));
  v5 = 0;
  if (MEMORY[0x17] < 0)
  {
    sub_100005F2C(&__str, *v46, *(v46 + 1));
    v5 = v46;
  }

  else
  {
    v6 = *v46;
    __str.__r_.__value_.__r.__words[2] = *(v46 + 2);
    *&__str.__r_.__value_.__l.__data_ = v6;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  memset(&__dst, 0, sizeof(__dst));
  if (0xAAAAAAAAAAAAAAABLL * ((v47 - v5) >> 3) < 2)
  {
    sub_10000501C(&__dst, "");
  }

  else if (*(v5 + 47) < 0)
  {
    sub_100005F2C(&__dst, *(v5 + 3), *(v5 + 4));
  }

  else
  {
    __dst = *(v5 + 1);
  }

  v42[0] = 0;
  v42[1] = 0;
  v43 = 0;
  if (0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 3) < 3)
  {
    sub_10000501C(v42, "0");
  }

  else if (*(v46 + 71) < 0)
  {
    sub_100005F2C(v42, *(v46 + 6), *(v46 + 7));
  }

  else
  {
    *v42 = v46[3];
    v43 = *(v46 + 8);
  }

  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  if (0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 3) < 4)
  {
    sub_10000501C(v40, "1");
  }

  else if (*(v46 + 95) < 0)
  {
    sub_100005F2C(v40, *(v46 + 9), *(v46 + 10));
  }

  else
  {
    *v40 = *(v46 + 72);
    v41 = *(v46 + 11);
  }

  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  if (0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 3) < 5)
  {
    sub_10000501C(v38, "0");
  }

  else if (*(v46 + 119) < 0)
  {
    sub_100005F2C(v38, *(v46 + 12), *(v46 + 13));
  }

  else
  {
    *v38 = v46[6];
    v39 = *(v46 + 14);
  }

  if (size >= 2)
  {
    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if (p_str->__r_.__value_.__s.__data_[0] == 34 && p_str->__r_.__value_.__s.__data_[size - 1] == 34)
    {
      memset(&v58, 0, 24);
      std::string::basic_string(&v58, &__str, 1uLL, size - 2, buf);
      std::string::operator=(&__str, &v58);
      if (v58.var2.__rep_.__s.__data_[15] < 0)
      {
        operator delete(*&v58.var0);
      }
    }
  }

  if (v3 != 5)
  {
    goto LABEL_50;
  }

  v9 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (&__dst + HIBYTE(__dst.__r_.__value_.__r.__words[2])) : (__dst.__r_.__value_.__r.__words[0] + __dst.__r_.__value_.__l.__size_);
  for (i = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0]; i != v9; i = (i + 1))
  {
    i->__r_.__value_.__s.__data_[0] = __tolower(i->__r_.__value_.__s.__data_[0]);
  }

  if (sub_10031B8D0((a1 + 40), &__dst.__r_.__value_.__l.__data_))
  {
    v11 = *(v2 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = __str.__r_.__value_.__r.__words[0];
      }

      p_dst = &__dst;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      v58.var0 = 136315394;
      *&v58.var1 = v12;
      WORD2(v58.var2.__rep_.__l.__data_) = 2080;
      *(&v58.var2.__rep_.__l.__data_ + 6) = p_dst;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Number %s has a category %s that the operator explictly ignores. Do not add into the local emergency number list.", &v58, 0x16u);
    }
  }

  else
  {
LABEL_50:
    memset(&v37, 0, sizeof(v37));
    v14 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &__dst;
    }

    else
    {
      v15 = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = __dst.__r_.__value_.__l.__size_;
    }

    if (v14)
    {
      v16 = v15;
      while (1)
      {
        v17 = v16->__r_.__value_.__s.__data_[0];
        if (v17 < 0 || (_DefaultRuneLocale.__runetype[v17] & 0x400) == 0)
        {
          break;
        }

        v16 = (v16 + 1);
        if (!--v14)
        {
          goto LABEL_60;
        }
      }

      std::string::operator=(&v37, &__dst);
      v18 = 0;
    }

    else
    {
LABEL_60:
      v18 = atoi(v15);
    }

    if (v43 >= 0)
    {
      v19 = v42;
    }

    else
    {
      v19 = v42[0];
    }

    v20 = atoi(v19);
    if (v41 >= 0)
    {
      v21 = v40;
    }

    else
    {
      v21 = v40[0];
    }

    v22 = atoi(v21);
    if (v39 >= 0)
    {
      v23 = v38;
    }

    else
    {
      v23 = v38[0];
    }

    v24 = atoi(v23);
    *v65 = 0u;
    v66 = 0u;
    *v63 = 0u;
    v64 = 0u;
    *v61 = 0uLL;
    v62 = 0uLL;
    *v59 = 0uLL;
    v60 = 0uLL;
    memset(&v58, 0, sizeof(v58));
    CSIPhoneNumber::CSIPhoneNumber();
    CSIPhoneNumber::setEmergencyCategory(&v58, v18);
    CSIPhoneNumber::setEmergencyCategoryURN();
    CSIPhoneNumber::setIsEmSMSTextSupported(&v58, v20 != 0);
    CSIPhoneNumber::setIsEmVoiceSupported(&v58, v22 != 0);
    v25 = v50;
    if (v50 >= v51)
    {
      v26 = sub_100AE7EC0(&v49, &v58);
    }

    else
    {
      sub_1000AE428(v50, &v58);
      v26 = v25 + 160;
    }

    v50 = v26;
    v27 = *(v2 + 40);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      EmergencyCategory = CSIPhoneNumber::getEmergencyCategory(&v58);
      CSIPhoneNumber::getEmergencyCategoryURN(__p, &v58);
      if (v36 >= 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = __p[0];
      }

      IsEmSMSTextSupported = CSIPhoneNumber::getIsEmSMSTextSupported(&v58);
      v31 = CSIBOOLAsString(IsEmSMSTextSupported);
      IsEmVoiceSupported = CSIPhoneNumber::getIsEmVoiceSupported(&v58);
      v33 = CSIBOOLAsString(IsEmVoiceSupported);
      v34 = CSIBOOLAsString(v24 != 0);
      *buf = 67110146;
      *&buf[4] = EmergencyCategory;
      *v53 = 2080;
      *&v53[2] = v29;
      *&v53[10] = 2080;
      *&v53[12] = v31;
      v54 = 2080;
      v55 = v33;
      v56 = 2080;
      v57 = v34;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I categoryNumber: %d, categoryURN: [%s], smsTextSupported: %s emergencyVoiceSupported: %s, isTestNum: %s.", buf, 0x30u);
      if (v36 < 0)
      {
        operator delete(__p[0]);
      }

      v26 = v50;
    }

    *buf = 0;
    *v53 = 0;
    *&v53[8] = 0;
    sub_1000AE2B4(buf, v49, v26, 0xCCCCCCCCCCCCCCCDLL * ((v26 - v49) >> 5));
    sub_1011D3424(v2, v4, v3, buf);
    __p[0] = buf;
    sub_1000B23E0(__p);
    if (SBYTE7(v66) < 0)
    {
      operator delete(v65[0]);
    }

    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63[1]);
    }

    if (SBYTE7(v62) < 0)
    {
      operator delete(v61[0]);
    }

    if (SBYTE7(v60) < 0)
    {
      operator delete(v59[0]);
    }

    if (*(&v58.var2.__rep_.__l + 23) < 0)
    {
      operator delete(v58.var2.__rep_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v42[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *&v58.var0 = &v46;
  sub_1000087B4(&v58);
  *&v58.var0 = &v49;
  sub_1000B23E0(&v58);
}