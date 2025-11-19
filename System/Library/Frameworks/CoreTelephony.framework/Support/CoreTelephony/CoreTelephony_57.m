void sub_1003A622C(_Unwind_Exception *a1)
{
  sub_1003ABC40(v3, 0);
  v5 = v1[10];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = v1[8];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((v1 + 5));
  sub_1000C0544(v2);
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void *sub_1003A6294(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1003A62FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A6320(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, void **a5)
{
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = sub_1003A6440(a3);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I start (%s)", &v14, 0xCu);
  }

  *(a1 + 96) = *a2;
  *(a1 + 1200) = a3;
  sub_1003AB020(a1 + 408, a4);
  v11 = *a5;
  if (*a5)
  {
    v11 = _Block_copy(v11);
  }

  v12 = *(a1 + 1208);
  *(a1 + 1208) = v11;
  if (v12)
  {
    _Block_release(v12);
  }

  return sub_1003ABDE8(*(a1 + 88), &v14, 1);
}

void sub_1003A642C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

const char *sub_1003A6440(int a1)
{
  if ((a1 - 1) > 8)
  {
    return "GetPlansFetch";
  }

  else
  {
    return off_101E481E0[a1 - 1];
  }
}

uint64_t sub_1003A6468(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  sub_1003AB118(a1 + 128, a4);
  v8[0] = 0;
  result = sub_1003A652C(a1, a2, a3, v8);
  if (v8[0] == 1)
  {
    return sub_10016354C(&v9);
  }

  return result;
}

void sub_1003A6508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10)
{
  if (a9 == 1)
  {
    sub_10016354C(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A652C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  (*(**(a1 + 72) + 64))(&v11);
  v7 = *(a1 + 112);
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  v8 = v11;
  *(v7 + 16) = v12;
  *v7 = v8;
  v13[0] = 0;
  if (*a4 == 1)
  {
    sub_10016F74C(v14, (a4 + 8));
    v13[0] = 1;
  }

  v10 = 0;
  result = sub_1003A6320(a1, a2, 2, v13, &v10);
  if (v13[0] == 1)
  {
    return sub_10016354C(v14);
  }

  return result;
}

void sub_1003A664C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  if (a13 == 1)
  {
    sub_10016354C(&a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A6678(uint64_t a1, _OWORD *a2)
{
  (*(**(a1 + 72) + 64))(&v8);
  v4 = *(a1 + 112);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  v5 = v8;
  *(v4 + 16) = v9;
  *v4 = v5;
  v10[0] = 0;
  v7 = 0;
  result = sub_1003A6320(a1, a2, 4, v10, &v7);
  if (v10[0] == 1)
  {
    return sub_10016354C(&v11);
  }

  return result;
}

void sub_1003A6768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  if (a13 == 1)
  {
    sub_10016354C(&a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A6794(uint64_t a1, _OWORD *a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 120);
  *(a1 + 112) = v6;
  *(a1 + 120) = v5;
  if (v7)
  {
    sub_100004A34(v7);
  }

  *(a1 + 1224) = 257;
  v10[0] = 0;
  v9 = 0;
  result = sub_1003A6320(a1, a2, 3, v10, &v9);
  if (v10[0] == 1)
  {
    return sub_10016354C(&v11);
  }

  return result;
}

void sub_1003A6858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  if (a11 == 1)
  {
    sub_10016354C(&a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A687C(uint64_t a1, _OWORD *a2, uint64_t *a3, int a4, uint64_t a5)
{
  v10 = *a3;
  v9 = a3[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 120);
  *(a1 + 112) = v10;
  *(a1 + 120) = v9;
  if (v11)
  {
    sub_100004A34(v11);
  }

  *(a1 + 1225) = a4 ^ 1;
  *(a1 + 1224) = 1;
  sub_1003AB118(a1 + 128, a5);
  if (a4)
  {
    v12 = 5;
  }

  else
  {
    v12 = 1;
  }

  v15[0] = 0;
  v14 = 0;
  result = sub_1003A6320(a1, a2, v12, v15, &v14);
  if (v15[0] == 1)
  {
    return sub_10016354C(&v16);
  }

  return result;
}

void sub_1003A696C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  if (a11 == 1)
  {
    sub_10016354C(&a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A6990(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  sub_1003AB118(a1 + 128, a3);
  v7[0] = 0;
  v6 = 0;
  result = sub_1003A6320(a1, a2, 8, v7, &v6);
  if (v7[0] == 1)
  {
    return sub_10016354C(&v8);
  }

  return result;
}

void sub_1003A6A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  if (a11 == 1)
  {
    sub_10016354C(&a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A6A58(uint64_t a1, _OWORD *a2, const void **a3)
{
  v7[0] = 0;
  if (*a3)
  {
    v5 = _Block_copy(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  sub_1003A6320(a1, a2, 0, v7, &v6);
  if (v5)
  {
    _Block_release(v5);
  }

  if (v7[0] == 1)
  {
    sub_10016354C(&v8);
  }
}

void sub_1003A6B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1003A6B60(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  (*(**(a1 + 72) + 64))(&v11);
  v7 = *(a1 + 112);
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  v8 = v11;
  *(v7 + 16) = v12;
  *v7 = v8;
  v13[0] = 0;
  if (*a4 == 1)
  {
    sub_10016F74C(v14, (a4 + 8));
    v13[0] = 1;
  }

  v10 = 0;
  result = sub_1003A6320(a1, a2, 6, v13, &v10);
  if (v13[0] == 1)
  {
    return sub_10016354C(v14);
  }

  return result;
}

void sub_1003A6C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  if (a13 == 1)
  {
    sub_10016354C(&a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A6CAC(uint64_t a1, _OWORD *a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 120);
  *(a1 + 112) = v6;
  *(a1 + 120) = v5;
  if (v7)
  {
    sub_100004A34(v7);
  }

  *(a1 + 1224) = 257;
  v10[0] = 0;
  v9 = 0;
  result = sub_1003A6320(a1, a2, 9, v10, &v9);
  if (v10[0] == 1)
  {
    return sub_10016354C(&v11);
  }

  return result;
}

void sub_1003A6D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  if (a11 == 1)
  {
    sub_10016354C(&a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A6D94(uint64_t a1, _OWORD *a2, __int128 *a3)
{
  (*(**(a1 + 72) + 64))(&v10);
  v6 = *(a1 + 112);
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  v7 = v10;
  *(v6 + 16) = v11;
  *v6 = v7;
  v12[0] = 0;
  sub_10016F74C(v13, a3);
  v12[0] = 1;
  v9 = 0;
  result = sub_1003A6320(a1, a2, 7, v12, &v9);
  if (v12[0] == 1)
  {
    return sub_10016354C(v13);
  }

  return result;
}

void sub_1003A6EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    sub_10016354C(v13 + 8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A6ECC(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 == *(a1 + 96) && a2[1] == *(a1 + 104))
  {
    if (*(a3 + 92))
    {
      goto LABEL_16;
    }

    if (*(a3 + 91))
    {
      goto LABEL_16;
    }

    v6 = *(a1 + 112);
    if (*(v6 + 146) & 1) != 0 || (*(v6 + 147))
    {
      goto LABEL_16;
    }

    if (*(v6 + 144) == 1)
    {
      v7 = *(v6 + 95);
      if (v7 < 0)
      {
        v7 = *(v6 + 80);
      }

      if (!v7)
      {
        goto LABEL_16;
      }
    }

    if (*(v6 + 149) == 1)
    {
LABEL_16:
      sub_1003AD37C(*(a1 + 88), &v18, 1);
      v8 = *(a1 + 64);
      if (v8)
      {
        v9 = std::__shared_weak_count::lock(v8);
        if (v9)
        {
          v10 = v9;
          v11 = *(a1 + 56);
          if (v11)
          {
            v12 = *(a1 + 1208);
            if (v12)
            {
              v13 = *(a1 + 40);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT) && (*v17 = 0, _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I pending profile has ppr for get plan items", v17, 2u), (v12 = *(a1 + 1208)) == 0))
              {
                v14 = 0;
              }

              else
              {
                v14 = _Block_copy(v12);
              }

              aBlock = v14;
              (*(*v11 + 80))(v11, &aBlock);
              if (aBlock)
              {
                _Block_release(aBlock);
              }
            }
          }

          sub_100004A34(v10);
        }
      }
    }

    else
    {
      sub_1003AD8C0(*(a1 + 88), &v15, 1);
    }
  }

  else
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I CSN does not match operation's", buf, 2u);
    }
  }
}

void sub_1003A708C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A70B0(uint64_t result, int a2, uint64_t a3)
{
  v3 = result;
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = *(result + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I user did consent", buf, 2u);
      }

      v6 = *(a3 + 23);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(a3 + 8);
      }

      if (v6)
      {
        v7 = *(v3 + 112);
        v8 = *(v7 + 95);
        if (v8 < 0)
        {
          v8 = *(v7 + 80);
        }

        if (v8)
        {
          v9 = *(v3 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *v14 = 0;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "confirmation code already exists - overriding the old one", v14, 2u);
            v7 = *(v3 + 112);
          }
        }

        std::string::operator=((v7 + 72), a3);
      }

      return sub_1003AE708(*(v3 + 88), &v13, 1);
    }

    else if (a2 == 2)
    {
      return sub_1003ADD4C(*(result + 88), &v16, 1);
    }
  }

  else
  {
    v10 = *(result + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I user did not consent", v12, 2u);
    }

    return sub_1003AEC44(*(v3 + 88), &v11, 1);
  }

  return result;
}

std::string *sub_1003A7234(std::string *result, const std::string *a2, const std::string *a3, const std::string *a4, const std::string *a5, const std::string *a6)
{
  if (result[12].__r_.__value_.__s.__data_[16] == 1)
  {
    v11 = result;
    std::string::operator=(result + 7, a2);
    std::string::operator=(v11 + 8, a3);
    std::string::operator=(v11 + 9, a4);
    std::string::operator=(v11 + 10, a5);

    return std::string::operator=((v11 + 272), a6);
  }

  return result;
}

void sub_1003A72C8(uint64_t a1, void *a2, __int128 *a3, uint64_t a4)
{
  *(a1 + 1224) = 257;
  v8 = *(a1 + 96) != *a2 || *(a1 + 104) != a2[1];
  v9 = *(a1 + 40);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E eid does not match aborting!", &v16, 2u);
    }

    sub_1003A743C(a1, 0);
  }

  else
  {
    if (v10)
    {
      if (*(a3 + 23) >= 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = *a3;
      }

      v16 = 136315138;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I got provisioning callback iccid : %s", &v16, 0xCu);
    }

    v12 = *(a1 + 112);
    v13 = v12[13];
    v14 = v12 + 12;
    if (v13 >= v12[14])
    {
      v15 = sub_1000053A0(v14, a3);
    }

    else
    {
      sub_10011C7A4(v14, a3);
      v15 = v13 + 24;
    }

    v12[13] = v15;
    if (*a4 == 1)
    {
      std::string::operator=(*(a1 + 112), (a4 + 8));
    }

    sub_1003AF270(*(a1 + 88), &v16, 1);
  }
}

void sub_1003A743C(uint64_t a1, int a2)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 56);
      if (v6)
      {
        v7 = *(a1 + 1208);
        if (v7)
        {
          v35 = _Block_copy(v7);
          (*(*v6 + 80))(v6, &v35);
          if (v35)
          {
            _Block_release(v35);
          }
        }

        v8 = *(a1 + 1216);
        if (v8)
        {
          v34 = _Block_copy(v8);
          (*(*v6 + 72))(v6, &v34);
          if (v34)
          {
            _Block_release(v34);
          }

          v9 = *(a1 + 1216);
          *(a1 + 1216) = 0;
          if (v9)
          {
            _Block_release(v9);
          }
        }

        v10 = 1;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      v6 = 0;
    }
  }

  else
  {
    v10 = 0;
    v6 = 0;
    v5 = 0;
  }

  v11 = 0;
  v12 = 2;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v16 = *(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = 2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I provisioning finished: failed", buf, 2u);
        v13 = 0;
        v12 = 1;
        if (!v10)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v13 = 0;
        v12 = 1;
        v11 = 2;
        if (!v10)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_36;
    }

    v13 = 0;
    if (a2 == 1)
    {
      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I provisioning finished: successfully", buf, 2u);
      }

      v12 = 0;
      v11 = 1;
      v13 = 1;
      if (!v10)
      {
        goto LABEL_58;
      }

LABEL_36:
      (*(*v6 + 88))(v6, v12);
      if (v13)
      {
        v18 = 0;
      }

      else
      {
        if (*(a1 + 1200) == 7)
        {
          goto LABEL_41;
        }

        v18 = 5;
      }

      (*(*v6 + 168))(v6, v18);
LABEL_41:
      if (*(a1 + 304) == 1)
      {
        v19 = *(a1 + 132);
        if (v19 <= 0xC && ((1 << v19) & 0x1820) != 0)
        {
          *(a1 + 160) = 4;
        }

        *(a1 + 296) = v11;
        sub_1003AB290(&v20, (a1 + 128));
        (*(*v6 + 176))(v6, &v20);
        if (v32 < 0)
        {
          operator delete(__p);
        }

        if (v30 < 0)
        {
          operator delete(v29);
        }

        if (v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 < 0)
        {
          operator delete(v25);
        }

        if (v24 < 0)
        {
          operator delete(v23);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }

        sub_1003AB1FC(a1 + 128);
      }

      goto LABEL_58;
    }

LABEL_35:
    if (!v10)
    {
      goto LABEL_58;
    }

    goto LABEL_36;
  }

  if (a2 == 2)
  {
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I provisioning finished: incomplete", buf, 2u);
    }

    v13 = 0;
    v11 = 3;
    goto LABEL_35;
  }

  v13 = 0;
  if (a2 != 3)
  {
    goto LABEL_35;
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I provisioning finished: cancel", buf, 2u);
  }

  v13 = 0;
  v12 = 3;
  v11 = 4;
  if (v10)
  {
    goto LABEL_36;
  }

LABEL_58:
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_1003A784C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 96);
  if (v4)
  {
    _Block_release(v4);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A78AC(uint64_t a1)
{
  *(a1 + 1224) = 257;
  *(a1 + 1249) = 1;
  return sub_1003AFD20(*(a1 + 88), &v2, 1);
}

void sub_1003A78E8(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 1296) && *(a3 + 176) == 1)
  {
    sub_1003AB118(a1 + 128, a3);
  }

  if (*(a1 + 96) == *a2 && *(a1 + 104) == a2[1])
  {
    v6 = *(a1 + 112);
    if ((*(v6 + 23) & 0x8000000000000000) != 0)
    {
      if (*(v6 + 8))
      {
        return;
      }
    }

    else if (*(v6 + 23))
    {
      return;
    }

    if (*(a1 + 1296))
    {
      sub_1003B0128(*(a1 + 88), &v7, 1);
    }
  }
}

void sub_1003A798C(void *a1, void *a2)
{
  if (a1[12] == *a2 && a1[13] == a2[1])
  {
    sub_1003A7A34(a1);

    sub_1003A743C(a1, 3);
  }

  else
  {
    v4 = a1[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#E eid does not match", v5, 2u);
    }
  }
}

void sub_1003A7A34(uint64_t a1)
{
  v1 = *(a1 + 1232);
  if (v1)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I reset wait for consent timer", v4, 2u);
      v1 = *(a1 + 1232);
      *(a1 + 1232) = 0;
      if (!v1)
      {
        return;
      }
    }

    else
    {
      *(a1 + 1232) = 0;
    }

    (*(*v1 + 8))(v1);
  }
}

uint64_t sub_1003A7AE4(uint64_t a1)
{
  if (*(a1 + 304) == 1)
  {
    *(a1 + 160) = 4;
  }

  *&v4[1] = v1;
  v5 = v2;
  return sub_1003B05CC(*(a1 + 88), v4, 1);
}

uint64_t sub_1003A7B58(uint64_t a1, void **a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I websheet launched", buf, 2u);
  }

  if ((*(a1 + 1224) & 1) == 0)
  {
    *(a1 + 1224) = 1;
  }

  v5 = *(a1 + 1240);
  *(a1 + 1240) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a1 + 1216);
  *(a1 + 1216) = v6;
  if (v7)
  {
    _Block_release(v7);
  }

  return sub_1003B1368(*(a1 + 88), &v9, 1);
}

void sub_1003A7C40(uint64_t a1)
{
  v2 = *(a1 + 1216);
  if (v2)
  {
    *(a1 + 1216) = 0;
    _Block_release(v2);
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I invalidate websheet callback on quit", buf, 2u);
    }
  }

  if (*(a1 + 1224) != 1 || (*(a1 + 1225) & 1) == 0)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I abort on websheet quit", buf, 2u);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = *(a1 + 56);
        if (v7)
        {
          if (*(a1 + 304) == 1)
          {
            if (*(a1 + 160) == 4)
            {
              v8 = 1;
            }

            else
            {
              v8 = 3;
            }

            *(a1 + 296) = v8;
            sub_1003AB290(&v9, (a1 + 128));
            (*(*v7 + 176))(v7, &v9);
            if (v21 < 0)
            {
              operator delete(__p);
            }

            if (v19 < 0)
            {
              operator delete(v18);
            }

            if (v17 < 0)
            {
              operator delete(v16);
            }

            if (v15 < 0)
            {
              operator delete(v14);
            }

            if (v13 < 0)
            {
              operator delete(v12);
            }

            if (v11 < 0)
            {
              operator delete(v10);
            }

            sub_1003AB1FC(a1 + 128);
          }
        }
      }
    }

    else
    {
      v6 = 0;
    }

    sub_1003ADD4C(*(a1 + 88), buf, 1);
    if (v6)
    {
      sub_100004A34(v6);
    }
  }
}

void sub_1003A7E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1003A7E40(&a9);
  sub_100004A34(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A7E40(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1003A7EC4(uint64_t a1)
{
  if (*(a1 + 72))
  {
    sub_100004AA0(&v18, (a1 + 8));
    v3 = v18;
    v2 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v2);
    }

    (*(**(a1 + 72) + 16))(&v15);
    Registry::getTimerService(&v18, v15);
    v4 = v18;
    sub_10000501C(__p, "Remote Provisioning User Consent Timer");
    v5 = *(a1 + 24);
    object = v5;
    if (v5)
    {
      dispatch_retain(v5);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_1003A8154;
    aBlock[3] = &unk_101E47C98;
    aBlock[4] = a1;
    aBlock[5] = v3;
    v10 = v2;
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = _Block_copy(aBlock);
    sub_100D23364(v4, __p, 1, 180000000, &object, &v11);
    v6 = v17;
    v17 = 0;
    v7 = *(a1 + 1232);
    *(a1 + 1232) = v6;
    if (v7)
    {
      (*(*v7 + 8))(v7);
      v8 = v17;
      v17 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
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

    if (v19)
    {
      sub_100004A34(v19);
    }

    if (v16)
    {
      sub_100004A34(v16);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }
  }
}

void sub_1003A80D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

  v27 = *(v25 - 40);
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = *(v25 - 64);
  if (v28)
  {
    sub_100004A34(v28);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A8154(void *a1)
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
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I waited too long for reply, aborting", buf, 2u);
        }

        v7 = *(v3 + 1232);
        *(v3 + 1232) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        sub_1003B1D3C(*(v3 + 88), &v8, 1);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1003A823C(uint64_t result, uint64_t a2)
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

void sub_1003A8258(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003A8278(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I delete all plans", buf, 2u);
  }

  v3 = a1[8];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = a1[7];
      if (v6)
      {
        sub_100004AA0(buf, a1 + 1);
        v8 = *buf;
        v7 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v7);
        }

        v9[0] = _NSConcreteStackBlock;
        v9[1] = 1174405120;
        v9[2] = sub_1003A843C;
        v9[3] = &unk_101E47CC8;
        v9[4] = a1;
        v9[5] = v8;
        v10 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        aBlock = _Block_copy(v9);
        (*(*v6 + 24))(v6, &aBlock);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_weak(v10);
        }

        if (v7)
        {
          std::__shared_weak_count::__release_weak(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1003A83F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

void sub_1003A843C(void *a1, int a2)
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
        v8 = *(v5 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10[0] = 67109120;
          v10[1] = a2;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I delete all plans result : %d", v10, 8u);
        }

        v9 = *(v5 + 88);
        if (a2)
        {
          sub_1003B2368(v9, v10, 1);
        }

        else
        {
          sub_1003ADD4C(v9, v10, 1);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1003A8550(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I get subscription info", buf, 2u);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 56);
      if (v6)
      {
        sub_100004AA0(buf, (a1 + 8));
        v8 = *buf;
        v7 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v7);
        }

        if (*(a1 + 1224) == 1)
        {
          v9 = *(a1 + 1225);
        }

        else
        {
          v9 = 0;
        }

        v10[0] = _NSConcreteStackBlock;
        v10[1] = 1174405120;
        v10[2] = sub_1003A8758;
        v10[3] = &unk_101E47CF8;
        v10[4] = a1;
        v10[5] = v8;
        v11 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = v6;
        v13 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        aBlock = _Block_copy(v10);
        (*(*v6 + 16))(v6, v9 & 1, &aBlock);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v13)
        {
          sub_100004A34(v13);
        }

        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        if (v7)
        {
          std::__shared_weak_count::__release_weak(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1003A8704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  sub_100004A34(v18);
  _Unwind_Resume(a1);
}

void sub_1003A8758(uint64_t a1, void *a2)
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
        v10 = *a2;
        v8 = a2 + 1;
        v9 = v10;
        if (v10 == v8)
        {
          goto LABEL_17;
        }

        v11 = 0;
        do
        {
          v12 = *(v5 + 40);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = subscriber::asString();
            v14 = *(v9 + 10);
            *buf = 136315394;
            v21 = v13;
            v22 = 1024;
            v23 = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I subscription info result for slot %s: %d", buf, 0x12u);
          }

          v15 = *(v9 + 10) < 2u;
          v16 = v9[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v9[2];
              v18 = *v17 == v9;
              v9 = v17;
            }

            while (!v18);
          }

          v11 |= v15;
          v9 = v17;
        }

        while (v17 != v8);
        if ((v11 & 1) == 0)
        {
LABEL_17:
          if (*(v5 + 1224) == 1 && (*(v5 + 1225) & 1) != 0)
          {
            v19 = 7;
          }

          else
          {
            v19 = 6;
          }

          (*(**(a1 + 56) + 168))(*(a1 + 56), v19);
          sub_1003B3514(*(v5 + 88), buf, 1);
        }

        else
        {
          sub_1003B2A84(*(v5 + 88), buf, 1);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void *sub_1003A8950(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
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

void sub_1003A8984(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1003A89DC(uint64_t a1)
{
  if (*(a1 + 1200))
  {
    goto LABEL_7;
  }

  v2 = *(a1 + 112);
  if ((*(v2 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v2 + 8))
    {
      goto LABEL_6;
    }

LABEL_7:
    v3 = *(a1 + 64);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = *(a1 + 56);
        if (v6)
        {
          sub_100004AA0(buf, (a1 + 8));
          v8 = *buf;
          v7 = v19;
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v7);
          }

          v9 = *(a1 + 120);
          v16 = *(a1 + 112);
          v17 = v9;
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v11[0] = _NSConcreteStackBlock;
          v11[1] = 1174405120;
          v11[2] = sub_1003A8E94;
          v11[3] = &unk_101E47D28;
          v11[4] = a1;
          v11[5] = v8;
          v12 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v13 = v6;
          v14 = v5;
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
          aBlock = _Block_copy(v11);
          (*(*v6 + 32))(v6, a1 + 96, &v16, &aBlock);
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v17)
          {
            sub_100004A34(v17);
          }

          if (v14)
          {
            sub_100004A34(v14);
          }

          if (v12)
          {
            std::__shared_weak_count::__release_weak(v12);
          }

          if (v7)
          {
            std::__shared_weak_count::__release_weak(v7);
          }
        }

        sub_100004A34(v5);
      }
    }

    return;
  }

  if (*(v2 + 23))
  {
    goto LABEL_7;
  }

LABEL_6:
  if (sub_1003A8C44(a1))
  {
    goto LABEL_7;
  }

  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E GetPlansFetch: No install params found", buf, 2u);
  }

  sub_1003B3B54(*(a1 + 88), buf, 1);
}

void sub_1003A8BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, void *aBlock, uint64_t a19, std::__shared_weak_count *a20)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  sub_100004A34(v20);
  _Unwind_Resume(a1);
}

BOOL sub_1003A8C44(uint64_t a1)
{
  if (!*(a1 + 1296))
  {
    return 0;
  }

  v2 = *(*(*(a1 + 1264) + ((*(a1 + 1288) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 1288));
  v8 = v2;
  v3 = *(*(*(a1 + 1264) + ((*(a1 + 1288) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 1288) + 8);
  if (*(&v2 + 1))
  {
    atomic_fetch_add_explicit((*(&v2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  sub_1003B5EAC((a1 + 1256));
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v8;
    if (*(v8 + 23) < 0)
    {
      v5 = *v8;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Dequeuing server: (%s)", buf, 0xCu);
  }

  v20 = 0;
  *__p = 0u;
  v19 = 0u;
  *v16 = 0u;
  v17 = 0u;
  *v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  *v13 = 0u;
  v10 = 0u;
  *v11 = 0u;
  *buf = 0u;
  sub_1003AB564(buf, *(*(a1 + 1312) + 8 * (*(a1 + 1336) / 0x16uLL)) + 184 * (*(a1 + 1336) % 0x16uLL));
  sub_1003B5F7C((a1 + 1304));
  if (v8)
  {
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = *(a1 + 120);
    *(a1 + 112) = v8;
    if (v6)
    {
      sub_100004A34(v6);
    }

    sub_1003AB118(a1 + 128, buf);
  }

  if (v20 == 1)
  {
    if (SBYTE7(v19) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v17) < 0)
    {
      operator delete(v16[0]);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[1]);
    }

    if (SHIBYTE(v14[0]) < 0)
    {
      operator delete(v13[0]);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[1]);
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(*&buf[8]);
    }
  }

  if (v3)
  {
    sub_100004A34(v3);
  }

  return v8 != 0;
}

void sub_1003A8E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A8E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v7 = *(a1 + 32);
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (!*(a1 + 40))
      {
LABEL_41:
        sub_100004A34(v9);
        return;
      }

      v10 = *(v7 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v28 = asString();
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I received fetch result : %s", buf, 0xCu);
      }

      if (a2 > 1)
      {
        goto LABEL_24;
      }

      sub_1003AB44C(v7 + 312, a3);
      if (*(v7 + 312) == 1 && *(v7 + 400) == 1)
      {
        v11 = *(v7 + 40);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v12 = 0x84BDA12F684BDA13 * ((*(v7 + 384) - *(v7 + 376)) >> 3);
        *buf = 134217984;
        v28 = v12;
        v13 = "#I remote vinyl info: number of profiles: %lu";
        v14 = v11;
        v15 = 12;
      }

      else
      {
        v16 = *(v7 + 40);
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *buf = 0;
        v13 = "#I remote vinyl info: no profiles";
        v14 = v16;
        v15 = 2;
      }

      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
LABEL_14:
      if (*(*(v7 + 112) + 104) == *(*(v7 + 112) + 96) || sub_1003A92C4(v7))
      {
        v17 = *(v7 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Fetch Profiles", buf, 2u);
        }

LABEL_18:
        sub_1003B4278(*(v7 + 88), buf, 1);
        goto LABEL_41;
      }

      if (*(v7 + 1200) == 5)
      {
        v18 = *(v7 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I no matching profile, start websheet", buf, 2u);
        }

        goto LABEL_18;
      }

      a2 = 2;
LABEL_24:
      if (*(v7 + 1224) == 1 && (*(v7 + 1225) & 1) != 0)
      {
        v19 = 9;
      }

      else
      {
        v19 = 8;
      }

      (*(**(a1 + 56) + 168))(*(a1 + 56), v19);
      v20 = *(v7 + 40);
      if (a2 == 5 && *(v7 + 1200) != 9)
      {
        if (os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_DEFAULT))
        {
          v21 = asString();
          *buf = 136315138;
          v28 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Overriding %s to general failure", buf, 0xCu);
          v20 = *(v7 + 40);
        }

        a2 = 2;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = asString();
        *buf = 136315138;
        v28 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Marking fetch failure: %s", buf, 0xCu);
      }

      if (*(v7 + 1200))
      {
        v23 = *(a1 + 56);
        v24 = *(v7 + 120);
        v25 = *(v7 + 112);
        v26 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v23 + 112))(v23, a2, v7 + 96, &v25);
        if (v26)
        {
          sub_100004A34(v26);
        }
      }

      sub_1003B3B54(*(v7 + 88), buf, 1);
      goto LABEL_41;
    }
  }
}

uint64_t sub_1003A92C4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 312) == 1 && *(a1 + 400) == 1)
  {
    if (*(*(a1 + 112) + 104) == *(*(a1 + 112) + 96))
    {
      return 1;
    }

    v2 = *(a1 + 376);
    v23 = *(a1 + 384);
    if (v2 != v23)
    {
      while (1)
      {
        __p = 0;
        v26 = 0;
        v27 = 0;
        sub_10092CDF4(v2 + 16, &__p);
        v3 = *(v1 + 112);
        v5 = *(v3 + 96);
        v4 = *(v3 + 104);
        if (v5 == v4)
        {
          v15 = 0;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v6 = *(v2 + 39);
          v24 = HIBYTE(v27);
          if (v27 >= 0)
          {
            v7 = HIBYTE(v27);
          }

          else
          {
            v7 = v26;
          }

          if (v27 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          while (1)
          {
            v9 = *(v5 + 23);
            v10 = v9 < 0 ? *(v5 + 8) : *(v5 + 23);
            if ((v6 & 0x80) != 0)
            {
              if (v10 == -1)
              {
LABEL_57:
                sub_10013C334();
              }

              v12 = *(v2 + 16);
              v11 = *(v2 + 24) >= v10 ? v10 : *(v2 + 24);
            }

            else
            {
              if (v10 == -1)
              {
                goto LABEL_57;
              }

              v11 = v6 >= v10 ? v10 : v6;
              v12 = (v2 + 16);
            }

            v13 = v9 >= 0 ? v5 : *v5;
            v14 = !memcmp(v12, v13, v11) && v11 == v10;
            if (v14 || v7 == v10 && !memcmp(p_p, v13, v7))
            {
              break;
            }

            v5 += 24;
            if (v5 == v4)
            {
              v15 = 0;
              goto LABEL_37;
            }
          }

          v15 = 1;
LABEL_37:
          v1 = a1;
          if ((v24 & 0x80) == 0)
          {
            goto LABEL_39;
          }
        }

        operator delete(__p);
LABEL_39:
        v2 += 216;
        if (v2 == v23)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          return v15;
        }
      }
    }

    return 0;
  }

  if (*(a1 + 1224) == 1 && *(a1 + 1225) != 1)
  {
    return 0;
  }

  v17 = *(a1 + 64);
  if (!v17)
  {
    return 0;
  }

  v18 = std::__shared_weak_count::lock(v17);
  if (!v18)
  {
    return 0;
  }

  v19 = v18;
  v20 = *(v1 + 56);
  if (v20)
  {
    v15 = (*(*v20 + 144))(v20, *(v1 + 112) + 96);
  }

  else
  {
    v15 = 0;
  }

  sub_100004A34(v19);
  return v15;
}

void sub_1003A9548(uint64_t a1, int a2)
{
  v3 = *(a1 + 112);
  if (!v3)
  {
    goto LABEL_41;
  }

  if ((*(v3 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v3 + 8))
    {
      goto LABEL_41;
    }
  }

  else if (!*(v3 + 23))
  {
    goto LABEL_41;
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 56);
      if (v8)
      {
        v9 = 0;
        if (a2 > 1)
        {
          if (a2 == 2)
          {
            v13 = *(a1 + 40);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I provisioning finished: incomplete", buf, 2u);
            }

            v9 = 3;
          }

          else if (a2 == 3)
          {
            v11 = *(a1 + 40);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I provisioning finished: cancel", buf, 2u);
            }

            v9 = 4;
          }
        }

        else if (a2)
        {
          if (a2 == 1)
          {
            v10 = *(a1 + 40);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I provisioning finished: successfully", buf, 2u);
            }

            v9 = 1;
          }
        }

        else
        {
          v12 = *(a1 + 40);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v9 = 2;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I provisioning finished: failed", buf, 2u);
          }

          else
          {
            v9 = 2;
          }
        }

        if (*(a1 + 304) == 1)
        {
          *(a1 + 296) = v9;
          sub_1003AB290(&v14, (a1 + 128));
          (*(*v8 + 176))(v8, &v14);
          if (v26 < 0)
          {
            operator delete(__p);
          }

          if (v24 < 0)
          {
            operator delete(v23);
          }

          if (v22 < 0)
          {
            operator delete(v21);
          }

          if (v20 < 0)
          {
            operator delete(v19);
          }

          if (v18 < 0)
          {
            operator delete(v17);
          }

          if (v16 < 0)
          {
            operator delete(v15);
          }

          sub_1003AB1FC(a1 + 128);
        }
      }

      sub_100004A34(v7);
    }
  }

LABEL_41:
  if (sub_1003A8C44(a1))
  {
    sub_1003A89DC(a1);
  }
}

void sub_1003A97C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1003A7E40(&a9);
  sub_100004A34(v9);
  _Unwind_Resume(a1);
}

void sub_1003A97F4(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(a1 + 56))
      {
        sub_100004AA0(&v6, (a1 + 8));
        v4 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v4);
        }

        v5 = *(a1 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v6) = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I fetching websheet info", &v6, 2u);
        }

        if (*(a1 + 1200) == 7)
        {
          sub_1003A9A70((a1 + 408));
          if (v4)
          {
            atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v9 = 0;
          operator new();
        }

        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v8 = 0;
        operator new();
      }

      sub_100004A34(v3);
    }
  }
}

void sub_1003A9A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1003B592C(va);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  sub_100004A34(v8);
  _Unwind_Resume(a1);
}

_BYTE *sub_1003A9A70(_BYTE *a1)
{
  if (*a1 != 1)
  {
    std::logic_error::logic_error(&v2, "Attempted to access the value of an uninitialized optional object.");
    v2.__vftable = &off_101E2CD58;
    sub_100174488(&v2);
  }

  return a1 + 8;
}

void sub_1003A9AFC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I launch websheet", buf, 2u);
  }

  if (*(a1 + 72))
  {
    if (*(a1 + 1200) == 5)
    {
      *(a1 + 1200) = 2;
    }

    sub_100004AA0(buf, (a1 + 8));
    v4 = *buf;
    v3 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
    }

    (*(**(a1 + 72) + 16))(&v21);
    Registry::getTimerService(buf, v21);
    v5 = *buf;
    sub_10000501C(__p, "DA checkin timer");
    v6 = *(a1 + 24);
    object = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_1003A9EE8;
    aBlock[3] = &unk_101E47D58;
    aBlock[4] = a1;
    aBlock[5] = v4;
    v16 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = _Block_copy(aBlock);
    sub_100D23364(v5, __p, 1, 15000000, &object, &v17);
    v7 = v23;
    v23 = 0;
    v8 = *(a1 + 1240);
    *(a1 + 1240) = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      v9 = v23;
      v23 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }

    if (v17)
    {
      _Block_release(v17);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v25)
    {
      sub_100004A34(v25);
    }

    if (v22)
    {
      sub_100004A34(v22);
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      v11 = std::__shared_weak_count::lock(v10);
      if (v11)
      {
        v12 = v11;
        v13 = *(a1 + 56);
        if (v13)
        {
          if (*(a1 + 408))
          {
            sub_10016F74C(__dst, (a1 + 416));
            v14 = 1;
          }

          else
          {
            v14 = 0;
            LOBYTE(__dst[0]) = 0;
          }

          v27 = v14;
          (*(*v13 + 56))(v13, __dst);
          if (v27 == 1)
          {
            sub_10016354C(__dst);
          }
        }

        sub_100004A34(v12);
      }
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void sub_1003A9E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_100004A34(v17);
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(a1);
}

void sub_1003A9EE8(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[5];
      if (v6 && *(v6 + 1240))
      {
        v7 = *(v3 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I waited too long for checkin, aborting", buf, 2u);
        }

        sub_1003ADD4C(*(v3 + 88), buf, 1);
        v8 = *(v3 + 1232);
        *(v3 + 1232) = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        v9 = *(v3 + 64);
        if (v9)
        {
          v10 = std::__shared_weak_count::lock(v9);
          if (v10)
          {
            v11 = v10;
            v12 = *(v3 + 56);
            if (v12 && *(v3 + 304) == 1)
            {
              *(v3 + 296) = 3;
              sub_1003AB290(&v13, (v3 + 128));
              (*(*v12 + 176))(v12, &v13);
              if (v25 < 0)
              {
                operator delete(__p);
              }

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

              if (v15 < 0)
              {
                operator delete(v14);
              }

              sub_1003AB1FC(v3 + 128);
            }

            sub_100004A34(v11);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1003AA09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1003A7E40(&a9);
  sub_100004A34(v10);
  sub_100004A34(v9);
  _Unwind_Resume(a1);
}

void sub_1003AA0D8(uint64_t a1)
{
  if (*(a1 + 408) == 1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = v3;
        v5 = *(a1 + 56);
        if (v5)
        {
          v6 = *(a1 + 40);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            if ((*(a1 + 408) & 1) == 0)
            {
              __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
            }

            v7 = (a1 + 448);
            if (*(a1 + 471) < 0)
            {
              v7 = *v7;
            }

            *buf = 136315138;
            v14 = v7;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I load url: %s", buf, 0xCu);
          }

          v8 = *(a1 + 1216);
          if (v8)
          {
            aBlock = _Block_copy(v8);
            if ((*(a1 + 408) & 1) == 0)
            {
              __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
            }

            (*(*v5 + 64))(v5, &aBlock, a1 + 416);
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            v9 = *(a1 + 1216);
            *(a1 + 1216) = 0;
            if (v9)
            {
              _Block_release(v9);
            }
          }

          if (*(a1 + 304) == 1)
          {
            v10 = *(a1 + 132);
            if (v10 <= 0xC && ((1 << v10) & 0x1820) != 0)
            {
              *(a1 + 160) = 3;
            }
          }
        }

        sub_100004A34(v4);
      }
    }
  }

  else
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#E missing websheet launch info", buf, 2u);
    }
  }
}

void sub_1003AA2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AA330(void *a1, unsigned __int8 a2)
{
  v3 = a1[8];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = a1[7];
      if (v7)
      {
        sub_100004AA0(&v15, a1 + 1);
        v9 = v15;
        v8 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v8);
        }

        v10[0] = _NSConcreteStackBlock;
        v10[1] = 1174405120;
        v10[2] = sub_1003AA4EC;
        v10[3] = &unk_101E47D88;
        v10[4] = a1;
        v10[5] = v9;
        v11 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = v7;
        v13 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        aBlock = _Block_copy(v10);
        (*(*v7 + 96))(v7, a1 + 12, a2, &aBlock);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v13)
        {
          sub_100004A34(v13);
        }

        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        if (v8)
        {
          std::__shared_weak_count::__release_weak(v8);
        }
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1003AA498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  sub_100004A34(v18);
  _Unwind_Resume(a1);
}

void sub_1003AA4EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 40) && (a2 & 0x100000000) != 0)
      {
        v8 = *(v5 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E unable to send user consent response, aborting", buf, 2u);
        }

        (*(**(a1 + 56) + 104))(*(a1 + 56), a2, v5 + 96);
        sub_1003ADD4C(*(v5 + 88), &v9, 1);
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1003AA5F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    v3 = 1;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v3 = 2;
LABEL_5:
    *(a1 + 1228) = v3;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 56);
      if (v7)
      {
        (*(*v7 + 136))(v7, *(a1 + 1228));
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1003AA6B4(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 56);
      if (v5)
      {
        (*(*v5 + 120))(v5, 1);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1003AA76C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = (*(*v5 + 128))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

uint64_t sub_1003AA808(uint64_t a1)
{
  if ((*(a1 + 1200) - 2) > 5)
  {
    return 0;
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = (*(*v5 + 160))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

uint64_t sub_1003AA96C(uint64_t a1)
{
  if (*(a1 + 1200))
  {
    return 1;
  }

  v4 = *(a1 + 64);
  if (!v4)
  {
    return 1;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = *(a1 + 56);
  if (v7)
  {
    v1 = (*(*v7 + 152))(v7);
  }

  else
  {
    v1 = 1;
  }

  sub_100004A34(v6);
  return v1;
}

uint64_t sub_1003AAA10(uint64_t a1)
{
  if (*(a1 + 408) == 1)
  {
    v1 = *(a1 + 440) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1003AAA34(uint64_t a1)
{
  if (*(a1 + 360) == 1)
  {
    v1 = *(a1 + 392) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_1003AAA78(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 40);
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

    v5 = 136446210;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I moved to state: %{public}s", &v5, 0xCu);
  }
}

void sub_1003AAB2C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*a2)
  {
    v6 = *(a2 + 1);
    v12[0] = *a2;
    v12[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = sub_1003AAC94(a1, v12);
    if (v6)
    {
      sub_100004A34(v6);
    }

    if (!v7)
    {
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *a2;
        if (*(*a2 + 23) < 0)
        {
          v9 = *v9;
        }

        *buf = 136315138;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Enqueuing server: (%s)", buf, 0xCu);
      }

      if (!*(a1 + 1296))
      {
        v10 = *(a1 + 112);
        v11 = *(v10 + 23);
        if (v11 < 0)
        {
          v11 = *(v10 + 8);
        }

        if (!v11)
        {
          if (*(a1 + 304))
          {
            a3 = a1 + 128;
          }
        }
      }

      sub_1003B59AC((a1 + 1304), a3);
      sub_1003B5C38((a1 + 1256), a2);
    }
  }
}

BOOL sub_1003AAC94(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 1;
  }

  v5 = *(v2 + 143);
  if (v5 < 0)
  {
    if (*(v2 + 128))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!*(v2 + 143))
  {
    return 0;
  }

LABEL_4:
  v6 = (v2 + 120);
  v7 = a1[14];
  if (v7)
  {
    if (v5 >= 0)
    {
      v8 = *(v2 + 143);
    }

    else
    {
      v8 = *(v2 + 128);
    }

    v9 = *(v7 + 143);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v7 + 128);
    }

    if (v8 == v9)
    {
      v11 = (v5 >= 0 ? v2 + 120 : *v6);
      v12 = v10 >= 0 ? (v7 + 120) : *(v7 + 120);
      if (!memcmp(v11, v12, v8))
      {
        v13 = *(v2 + 23);
        if (v13 >= 0)
        {
          v14 = *(v2 + 23);
        }

        else
        {
          v14 = *(v2 + 8);
        }

        v15 = *(v7 + 23);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v7 + 8);
        }

        if (v14 == v15)
        {
          v17 = v13 >= 0 ? v2 : *v2;
          v18 = v16 >= 0 ? v7 : *v7;
          if (!memcmp(v17, v18, v14))
          {
            v39 = a1[5];
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *v43 = 0;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I matching ongoing operation.", v43, 2u);
            }

            return 1;
          }
        }
      }
    }
  }

  v44 = 0u;
  v45 = 0u;
  *v43 = 0u;
  sub_1003B60C8(v43, a1 + 157);
  v19 = *(&v45 + 1);
  if (*(&v45 + 1))
  {
    v41 = a1;
    v20 = 1;
    v21 = *(&v45 + 1);
    v22 = 1;
    while (1)
    {
      v23 = (*(*&v43[8] + ((v45 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v45);
      v24 = *v23;
      v25 = v23[1];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v2 + 143);
      if (v26 >= 0)
      {
        v27 = *(v2 + 143);
      }

      else
      {
        v27 = *(v2 + 128);
      }

      v28 = *(v24 + 143);
      v29 = v28;
      if ((v28 & 0x80u) != 0)
      {
        v28 = *(v24 + 128);
      }

      if (v27 == v28)
      {
        v30 = (v26 >= 0 ? v2 + 120 : *v6);
        v31 = v29 >= 0 ? (v24 + 120) : *(v24 + 120);
        if (!memcmp(v30, v31, v27))
        {
          v32 = *(*a2 + 23);
          if (v32 >= 0)
          {
            v33 = *(*a2 + 23);
          }

          else
          {
            v33 = *(*a2 + 8);
          }

          v34 = *(v24 + 23);
          v35 = v34;
          if ((v34 & 0x80u) != 0)
          {
            v34 = *(v24 + 8);
          }

          if (v33 == v34)
          {
            v36 = v32 >= 0 ? *a2 : **a2;
            v37 = v35 >= 0 ? v24 : *v24;
            if (!memcmp(v36, v37, v33))
            {
              break;
            }
          }
        }
      }

      sub_1003B5EAC(v43);
      if (v25)
      {
        sub_100004A34(v25);
      }

      v22 = v20++ < v19;
      if (!--v21)
      {
        goto LABEL_64;
      }
    }

    v38 = v41[5];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I matching enqueued operation.", buf, 2u);
    }

    if (v25)
    {
      sub_100004A34(v25);
    }
  }

  else
  {
LABEL_64:
    v22 = 0;
  }

  sub_1003AB5CC(v43);
  return v22;
}

void sub_1003AAF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_1003AB5CC(va);
  _Unwind_Resume(a1);
}

void sub_1003AAFA4(uint64_t a1)
{
  sub_1003AB708(a1);

  operator delete();
}

void sub_1003AAFE4(uint64_t a1)
{
  sub_1003AB708(a1 - 48);

  operator delete();
}

void sub_1003AB020(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v3 = a2 + 8;

      sub_1003AB0A0(a1, v3);
    }

    else
    {
      sub_10016354C(a1 + 8);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    sub_10016F74C((a1 + 8), (a2 + 8));
    *a1 = 1;
  }
}

void sub_1003AB0A0(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), a2);
  v4 = *(a2 + 26);
  *(a1 + 32) = *(a2 + 24);
  *(a1 + 34) = v4;
  std::string::operator=((a1 + 40), (a2 + 32));
  sub_10016E6D0((a1 + 64), a2 + 56);
  sub_10016EBE4(a1 + 408, a2 + 400);

  sub_10012BF3C((a1 + 760), (a2 + 752));
}

void sub_1003AB118(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 176) == *(a2 + 176))
  {
    if (*(a1 + 176))
    {
      v4 = *a2;
      *(a1 + 4) = *(a2 + 4);
      *a1 = v4;
      std::string::operator=((a1 + 8), (a2 + 8));
      *(a1 + 32) = *(a2 + 32);
      std::string::operator=((a1 + 40), (a2 + 40));
      std::string::operator=((a1 + 64), (a2 + 64));
      std::string::operator=((a1 + 88), (a2 + 88));
      std::string::operator=((a1 + 112), (a2 + 112));
      *(a1 + 136) = *(a2 + 136);
      std::string::operator=((a1 + 144), (a2 + 144));
      *(a1 + 168) = *(a2 + 168);
    }
  }

  else if (*(a1 + 176))
  {

    sub_1003AB1FC(a1);
  }

  else
  {
    sub_1003AB290(a1, a2);
    *(a1 + 176) = 1;
  }
}

void sub_1003AB1FC(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    if (*(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }

    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 112));
    }

    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 176) = 0;
  }
}

uint64_t sub_1003AB290(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 4) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C((a1 + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v5 = *(a2 + 2);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 8) = v5;
  }

  *(a1 + 32) = *(a2 + 32);
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 10);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 40) = v6;
  }

  if (*(a2 + 87) < 0)
  {
    sub_100005F2C((a1 + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v7 = *(a2 + 4);
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v7;
  }

  if (*(a2 + 111) < 0)
  {
    sub_100005F2C((a1 + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v8 = *(a2 + 22);
    *(a1 + 104) = *(a2 + 13);
    *(a1 + 88) = v8;
  }

  if (*(a2 + 135) < 0)
  {
    sub_100005F2C((a1 + 112), *(a2 + 14), *(a2 + 15));
  }

  else
  {
    v9 = *(a2 + 7);
    *(a1 + 128) = *(a2 + 16);
    *(a1 + 112) = v9;
  }

  *(a1 + 136) = a2[34];
  if (*(a2 + 167) < 0)
  {
    sub_100005F2C((a1 + 144), *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = *(a2 + 9);
    *(a1 + 160) = *(a2 + 20);
    *(a1 + 144) = v10;
  }

  *(a1 + 168) = a2[42];
  return a1;
}

void sub_1003AB3D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AB44C(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v4;
      std::string::operator=((a1 + 40), (a2 + 40));

      sub_1001148D8(a1 + 64, a2 + 64);
    }

    else
    {

      sub_1003AB4FC(a1);
    }
  }

  else if (*a2)
  {
    sub_100F11B6C(a1 + 8, a2 + 8);
    *a1 = 1;
  }
}

void sub_1003AB4FC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v4[3] = v1;
    v4[4] = v2;
    if (*(a1 + 88) == 1)
    {
      v4[0] = (a1 + 64);
      sub_100112120(v4);
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    *a1 = 0;
  }
}

_BYTE *sub_1003AB564(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[176] = 0;
  if (*(a2 + 176) == 1)
  {
    sub_1003AB290(a1, a2);
    a1[176] = 1;
  }

  return a1;
}

void sub_1003AB5AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 176) == 1)
  {
    sub_1003A7E40(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003AB5CC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v2 + (((a1[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          sub_100004A34(v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 128;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 256;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_10001BD44(a1);
}

void sub_1003AB708(uint64_t a1)
{
  *a1 = off_101E479E0;
  *(a1 + 48) = off_101E47BA8;
  sub_1003AB8E0((a1 + 1304));
  sub_1003AB5CC((a1 + 1256));
  v2 = *(a1 + 1240);
  *(a1 + 1240) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 1232);
  *(a1 + 1232) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 1216);
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = *(a1 + 1208);
  if (v5)
  {
    _Block_release(v5);
  }

  if (*(a1 + 408) == 1)
  {
    sub_10016354C(a1 + 416);
    *(a1 + 408) = 0;
  }

  sub_1003AB4FC(a1 + 312);
  if (*(a1 + 304) == 1)
  {
    if (*(a1 + 295) < 0)
    {
      operator delete(*(a1 + 272));
    }

    if (*(a1 + 263) < 0)
    {
      operator delete(*(a1 + 240));
    }

    if (*(a1 + 239) < 0)
    {
      operator delete(*(a1 + 216));
    }

    if (*(a1 + 215) < 0)
    {
      operator delete(*(a1 + 192));
    }

    if (*(a1 + 191) < 0)
    {
      operator delete(*(a1 + 168));
    }

    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_1003ABC40((a1 + 88), 0);
  v7 = *(a1 + 80);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  TMKXPCServer.shutdown()();
}

uint64_t sub_1003AB8E0(void *a1)
{
  sub_1003AB938(a1);
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  return sub_10001BD44(a1);
}

void sub_1003AB938(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x16];
    v7 = *v6 + 184 * (v5 % 0x16);
    v8 = v2[(a1[5] + v5) / 0x16] + 184 * ((a1[5] + v5) % 0x16);
    if (v7 != v8)
    {
      do
      {
        if (*(v7 + 176) == 1)
        {
          if (*(v7 + 167) < 0)
          {
            operator delete(*(v7 + 144));
          }

          if (*(v7 + 135) < 0)
          {
            operator delete(*(v7 + 112));
          }

          if (*(v7 + 111) < 0)
          {
            operator delete(*(v7 + 88));
          }

          if (*(v7 + 87) < 0)
          {
            operator delete(*(v7 + 64));
          }

          if (*(v7 + 63) < 0)
          {
            operator delete(*(v7 + 40));
          }

          if (*(v7 + 31) < 0)
          {
            operator delete(*(v7 + 8));
          }
        }

        v7 += 184;
        if (v7 - *v6 == 4048)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v11 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = (v11 - v2) >> 3;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v12 = 11;
  }

  else
  {
    if (v10 != 2)
    {
      return;
    }

    v12 = 22;
  }

  a1[4] = v12;
}

void sub_1003ABB40(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1003ABC14);
  __cxa_rethrow();
}

void sub_1003ABB80(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003ABBD4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003ABC14(uint64_t result)
{
  if (result)
  {
    return (*(*result + 208))();
  }

  return result;
}

uint64_t *sub_1003ABC40(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_1000C030C((v2 + 32));
    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return result;
}

void (***sub_1003ABCAC(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1003ABCFC(uint64_t a1, void *a2)
{
  v3 = a2[1];
  if (*a2)
  {
    v4 = *a2 + 48;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  v7 = v3;
  *a2 = 0;
  a2[1] = 0;
  sub_1003ABD8C(a1, &v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 91) = 0;
  *(a1 + 99) = 0;
  *(a1 + 24) = 0;
  *(a1 + 84) = 0;
  return a1;
}

void sub_1003ABD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003ABD8C(uint64_t a1, uint64_t *a2)
{
  *(a1 + 4) = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 16);
    *(a1 + 8) = v4;
    *(a1 + 16) = v3;
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *(a1 + 8) = v4;
    *(a1 + 16) = 0;
  }

  return a1;
}

uint64_t sub_1003ABDE8(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003ABE6C(a1))
  {
    return 1;
  }

  v5 = sub_1003ABF1C(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003ABE6C(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003ABF1C(uint64_t a1)
{
  v1 = (*(&unk_101FB1CB0 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003ABFE4(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 16 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1003AC078(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F));
  *v8 = 0;
  result = sub_1003AC24C(v8, a2);
  ++a1[5];
  return result;
}

void *sub_1003AC078(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_1000FB8B8(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100129284(a1, &v10);
}

void sub_1003AC200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003AC24C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_1003AC2E0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

uint64_t sub_1003AC304(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_8DidStartEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_8DidStartEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003AC3FC(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

int64x2_t *sub_1003AC430(int64x2_t *result)
{
  if (result[4].i64[1])
  {
    v1 = result;
    do
    {
      memset(v5, 0, sizeof(v5));
      v2 = *(v1[2].i64[1] + ((v1[4].i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v1[4].i64[0] & 0x7F);
      v3 = *v2;
      if (*v2)
      {
        *&v5[0] = *v2;
        if (v3)
        {
          v4 = *(v2 + 8);
          *(&v5[1] + 1) = *(v2 + 24);
          *(v5 + 8) = v4;
        }

        else
        {
          (*v3)(v2 + 8, v5 + 8, 0);
        }
      }

      sub_1003AC4F4(v1 + 2);
      sub_1003AC560(v5);
      result = sub_1003ABCAC(v5);
    }

    while (v1[4].i64[1]);
  }

  return result;
}

uint64_t sub_1003AC4F4(int64x2_t *a1)
{
  sub_1003ABCAC((*(a1->i64[1] + ((a1[2].i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (a1[2].i64[0] & 0x7F)));
  a1[2] = vaddq_s64(a1[2], xmmword_1017CD970);

  return sub_100331AC4(a1, 1);
}

uint64_t sub_1003AC560(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &off_101E25EA8;
    sub_1001028A8(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

uint64_t sub_1003AC600(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3)
  {
    sub_10176E950();
  }

  if (!sub_1003AC678(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 0;
  sub_1003AC70C(a1);
  *(v7 + 24) = 0;
  sub_1003AC7A0(a1 + 96, a4, a1);
  *(v7 + 24) = 3;
  return 1;
}

uint64_t sub_1003AC678(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 192))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

void sub_1003AC70C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 24))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003AC7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForSubscription");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003AC7F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AC810(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        (*(*v7 + 232))(v7, a2);
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1003AC8B8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3)
  {
    sub_10176E97C();
  }

  if (!sub_1003AC924(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 0;
  sub_1003AC9B8(a1 + 92, a4, a1);
  *(v7 + 24) = 7;
  return 1;
}

uint64_t sub_1003AC924(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 160))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

void sub_1003AC9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "UserInWebsheet");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003ACA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003ACA28(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3)
  {
    sub_10176E950();
  }

  v7 = 2;
  if (sub_1003ACA9C(a1))
  {
    v8 = a1 + 4 * a2;
    *(v8 + 24) = 0;
    sub_1003ACB30(a1);
    *(v8 + 24) = 0;
    sub_1003ACBC4(a1 + 97, a4, a1);
    *(v8 + 24) = 2;
    return 1;
  }

  return v7;
}

uint64_t sub_1003ACA9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 144))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

void sub_1003ACB30(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 48))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003ACBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForWebsheet");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003ACC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003ACC34(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3)
  {
    sub_10176E950();
  }

  if (!sub_1003ACCA8(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 0;
  sub_1003ACD3C(a1);
  *(v7 + 24) = 0;
  sub_1003ACDD0(a1 + 98, a4, a1);
  result = 1;
  *(v7 + 24) = 1;
  return result;
}

uint64_t sub_1003ACCA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 208))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

void sub_1003ACD3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 16))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003ACDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForDeleteAllPlans");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003ACE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003ACE40(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3)
  {
    sub_10176E97C();
  }

  v7 = 2;
  if (sub_1003ACEA8(a1))
  {
    v8 = a1 + 4 * a2;
    *(v8 + 24) = 0;
    sub_1003ACBC4(a1 + 97, a4, a1);
    *(v8 + 24) = 2;
    return 1;
  }

  return v7;
}

uint64_t sub_1003ACEA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 152))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

uint64_t sub_1003ACF60(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003AC600(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003ACFE8(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003ACFE8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003AC8B8(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003AD070(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003AD070(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003ACA28(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003AD0F8(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003AD0F8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003ACC34(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003AD180(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003AD180(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003ACE40(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003AD218(a1, a2, a3, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1003AD218(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 0;
  sub_1003AD278(a1);
  *(v6 + 24) = 0;
  sub_1003AD30C(a1 + 95, a4, a1);
  *(v6 + 24) = 4;
  return 1;
}

void sub_1003AD278(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 32))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003AD30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForFetch");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003AD360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003AD37C(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003AD400(a1))
  {
    return 1;
  }

  v5 = sub_1003AD4B0(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003AD400(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003AD4B0(uint64_t a1)
{
  v1 = (*(&unk_101FB1D08 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003AD578(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_22DoesNeedInstallConsentEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_22DoesNeedInstallConsentEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003AD670(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003AD6AC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E9D4();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  sub_1003AD700(a1 + 94, a4, a1);
  *(v4 + 24) = 5;
  return 1;
}

void sub_1003AD700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForUserResponse");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1003AD784(a3, 0);
  sub_1003AD82C(a3);
}

void sub_1003AD768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AD784(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        (*(*v7 + 72))(v7, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1003AD82C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 104))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1003AD8C0(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003AD944(a1))
  {
    return 1;
  }

  v5 = sub_1003AD9F4(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003AD944(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003AD9F4(uint64_t a1)
{
  v1 = (*(&unk_101FB1D60 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003ADABC(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_25DoesNotNeedInstallConsentEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_25DoesNotNeedInstallConsentEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003ADBB4(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003ADBF0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E9D4();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 4;
  sub_1003ADC60(a1 + 95, a4, a1);
  *(v6 + 24) = 4;
  sub_1003ADCDC(a1 + 95, a4, a1);
  *(v6 + 24) = 4;
  return 1;
}

void sub_1003ADC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "Post installing");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1003AD784(a3, 1);
}

void sub_1003ADCC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003ADCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForFetch");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003ADD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003ADD4C(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003ADDD0(a1))
  {
    return 1;
  }

  v5 = sub_1003ADE80(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003ADDD0(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003ADE80(uint64_t a1)
{
  v1 = (*(&unk_101FB1DB8 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003ADF48(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_5AbortEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_5AbortEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003AE040(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003AE07C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 7;
  sub_1003AE0D4(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

void sub_1003AE0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003AE1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AE230(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 80))(v5, *(a1 + 4));
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1003AE2C8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 6;
  sub_1003AE0D4(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003AE320(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 5)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 5;
  sub_1003AE3A8(a1 + 94, a4, a1);
  *(v6 + 24) = 5;
  sub_1003AE4C0(a1);
  *(a1 + 4) = 3;
  *(v6 + 24) = 5;
  sub_1003AE0D4(a1 + 91, a4, a1);
  *(v6 + 24) = 8;
  return 1;
}

void sub_1003AE3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003AE42C(a3);
  sub_10000501C(__p, "Post installing");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1003AD784(a3, 1);
}

void sub_1003AE410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AE42C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 112))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003AE4C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 64))(v5, 2);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1003AE558(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 4;
  sub_1003AE0D4(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003AE5B0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 3;
  sub_1003AE0D4(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003AE608(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 2)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 2;
  sub_1003AE0D4(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003AE660(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 1)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 1;
  sub_1003AE0D4(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003AE6B8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 0;
  sub_1003AE0D4(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003AE708(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003AE78C(a1))
  {
    return 1;
  }

  v5 = sub_1003AE83C(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003AE78C(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003AE83C(uint64_t a1)
{
  v1 = (*(&unk_101FB1E10 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003AE904(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_19DidConsentToInstallEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_19DidConsentToInstallEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003AE9FC(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003AEA38(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 5)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 5;
  sub_1003AEAB8(a1 + 94, a4, a1);
  *(v6 + 24) = 5;
  sub_1003AEB3C(a1);
  *(v6 + 24) = 5;
  sub_1003AEBD4(a1 + 95, a4, a1);
  *(v6 + 24) = 4;
  return 1;
}

void sub_1003AEAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003AE42C(a3);
  sub_10000501C(__p, "Post installing");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1003AD784(a3, 1);
}

void sub_1003AEB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AEB3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 64))(v5, 1);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003AEBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForFetch");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003AEC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003AEC44(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003AECC8(a1))
  {
    return 1;
  }

  v5 = sub_1003AED78(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003AECC8(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003AED78(uint64_t a1)
{
  v1 = (*(&unk_101FB1E68 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003AEE40(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_22DidNotConsentToInstallEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_22DidNotConsentToInstallEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003AEF38(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003AEF74(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 5)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 5;
  sub_1003AEFF8(a1 + 94, a4, a1);
  *(v6 + 24) = 5;
  sub_1003AF07C(a1);
  *(a1 + 4) = 0;
  *(v6 + 24) = 5;
  sub_1003AF114(a1 + 91, a4, a1);
  *(v6 + 24) = 8;
  return 1;
}

void sub_1003AEFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003AE42C(a3);
  sub_10000501C(__p, "Post installing");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1003AD784(a3, 1);
}

void sub_1003AF060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AF07C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 64))(v5, 0);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003AF114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003AF238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003AF270(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003AF2F4(a1))
  {
    return 1;
  }

  v5 = sub_1003AF3A4(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003AF2F4(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003AF3A4(uint64_t a1)
{
  v1 = (*(&unk_101FB1EC0 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003AF46C(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_17DidGetMonitorModeEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_17DidGetMonitorModeEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003AF564(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003AF5A0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 7)
  {
    sub_10176E950();
  }

  if (!sub_1003AF63C(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 7;
  sub_1003AC70C(a1);
  *(v7 + 24) = 7;
  sub_1003AF854(a1 + 96, a4, a1);
  *(v7 + 24) = 3;
  return 1;
}

uint64_t sub_1003AF63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1003AF698(a3) && (sub_1003AF72C(a3) & 1) != 0)
  {
    return 1;
  }

  return sub_1003AF7C0(a3);
}

uint64_t sub_1003AF698(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 120))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

uint64_t sub_1003AF72C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 136))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

uint64_t sub_1003AF7C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 128))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

void sub_1003AF854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForSubscription");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003AF8A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003AF8C4(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 7)
  {
    sub_10176E950();
  }

  if (!sub_1003AF698(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  v8 = 1;
  *(a1 + 4) = 1;
  *(v7 + 24) = 7;
  sub_1003AF940(a1 + 91, a4, a1);
  *(v7 + 24) = 8;
  return v8;
}

void sub_1003AF940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003AFA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003AFAC0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003AF5A0(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003AFB48(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003AFB48(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003AF8C4(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003AFBE0(a1, a2, a3, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1003AFBE0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 7;
  sub_1003AD278(a1);
  *(v6 + 24) = 7;
  sub_1003AFC48(a1 + 95, a4, a1);
  *(v6 + 24) = 4;
  return 1;
}

void sub_1003AFC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForFetch");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003AFC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003AFCB8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 3)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 3;
  sub_1003AD278(a1);
  *(v6 + 24) = 3;
  sub_1003AFC48(a1 + 95, a4, a1);
  *(v6 + 24) = 4;
  return 1;
}

uint64_t sub_1003AFD20(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003AFDA4(a1))
  {
    return 1;
  }

  v5 = sub_1003AFE54(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003AFDA4(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003AFE54(uint64_t a1)
{
  v1 = (*(&unk_101FB1F18 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003AFF1C(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_17DidPendingReleaseEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_17DidPendingReleaseEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B0014(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B0050(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 7;
  sub_1003AC70C(a1);
  *(v6 + 24) = 7;
  sub_1003B00B8(a1 + 96, a4, a1);
  *(v6 + 24) = 3;
  return 1;
}

void sub_1003B00B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForSubscription");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B010C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B0128(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B01AC(a1))
  {
    return 1;
  }

  v5 = sub_1003B025C(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B01AC(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B025C(uint64_t a1)
{
  v1 = (*(&unk_101FB1F70 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B0324(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_21DidGetAvailableOptionEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_21DidGetAvailableOptionEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B041C(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B0458(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 4;
  *(a1 + 4) = 1;
  sub_1003B04C4(a1);
  *(v6 + 24) = 4;
  sub_1003B055C(a1 + 95, a4, a1);
  *(v6 + 24) = 4;
  return 1;
}

void sub_1003B04C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 96))(v5, *(a1 + 4));
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003B055C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForFetch");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B05B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B05CC(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B0650(a1))
  {
    return 1;
  }

  v5 = sub_1003B0700(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B0650(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B0700(uint64_t a1)
{
  v1 = (*(&unk_101FB1FC8 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B07C8(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_20DidLeaveCellularPaneEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_20DidLeaveCellularPaneEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B08C0(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B08FC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 7;
  sub_1003B0954(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

void sub_1003B0954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003B0A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B0AB0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 6)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 6;
  sub_1003B0954(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003B0B08(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 5)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 5;
  sub_1003B0B90(a1 + 94, a4, a1);
  *(v6 + 24) = 5;
  sub_1003AE4C0(a1);
  *(a1 + 4) = 3;
  *(v6 + 24) = 5;
  sub_1003B0954(a1 + 91, a4, a1);
  *(v6 + 24) = 8;
  return 1;
}

void sub_1003B0B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003AE42C(a3);
  sub_10000501C(__p, "Post installing");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1003AD784(a3, 1);
}

void sub_1003B0BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B0C14(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 2)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 2;
  sub_1003B0954(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003B0C6C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 1)
  {
    sub_10176E950();
  }

  if (!sub_1003ACEA8(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  v8 = 1;
  *(v7 + 24) = 1;
  sub_1003B0954(a1 + 91, a4, a1);
  *(v7 + 24) = 8;
  return v8;
}

uint64_t sub_1003B0CE4(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 1)
  {
    sub_10176E950();
  }

  if (!sub_1003ACA9C(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  v8 = 1;
  *(v7 + 24) = 1;
  sub_1003B0954(a1 + 91, a4, a1);
  *(v7 + 24) = 8;
  return v8;
}

uint64_t sub_1003B0D80(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003B0C6C(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B0E08(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003B0E08(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003B0CE4(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B0EA0(a1, a2, a3, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1003B0EA0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 1)
  {
    sub_10176E9D4();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 1;
  sub_1003B0EF0(a1 + 98, a4, a1);
  *(v4 + 24) = 1;
  return 1;
}

void sub_1003B0EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForDeleteAllPlans");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B0F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B0F60(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B0FE4(a1))
  {
    return 1;
  }

  v5 = sub_1003B1094(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B0FE4(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B1094(uint64_t a1)
{
  v1 = (*(&unk_101FB2020 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B115C(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_18DidDismissWebsheetEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_18DidDismissWebsheetEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B1254(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B1290(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 7)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 7;
  sub_1003AC70C(a1);
  *(v6 + 24) = 7;
  sub_1003B12F8(a1 + 96, a4, a1);
  *(v6 + 24) = 3;
  return 1;
}

void sub_1003B12F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForSubscription");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B134C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B1368(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B13EC(a1))
  {
    return 1;
  }

  v5 = sub_1003B149C(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B13EC(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B149C(uint64_t a1)
{
  v1 = (*(&unk_101FB2078 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B1564(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_17DidLaunchWebsheetEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_17DidLaunchWebsheetEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B165C(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B1698(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 2)
  {
    sub_10176E97C();
  }

  v7 = sub_1003ACEA8(a1);
  result = 2;
  if (v7)
  {
    v9 = a1 + 4 * a2;
    *(v9 + 24) = 2;
    sub_1003B1708(a1 + 92, a4, a1);
    *(v9 + 24) = 7;
    return 1;
  }

  return result;
}

void sub_1003B1708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "UserInWebsheet");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B175C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B1778(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 2)
  {
    sub_10176E950();
  }

  v7 = 2;
  if (sub_1003B17F4(a1))
  {
    v8 = a1 + 4 * a2;
    *(v8 + 24) = 2;
    sub_1003B1888(a1);
    *(v8 + 24) = 2;
    sub_1003B1708(a1 + 92, a4, a1);
    *(v8 + 24) = 7;
    return 1;
  }

  return v7;
}

uint64_t sub_1003B17F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 168))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

void sub_1003B1888(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 56))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1003B191C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 2)
  {
    sub_10176E950();
  }

  v7 = 2;
  if (sub_1003ACCA8(a1))
  {
    v8 = a1 + 4 * a2;
    *(v8 + 24) = 2;
    sub_1003ACD3C(a1);
    *(v8 + 24) = 2;
    sub_1003B1994(a1 + 98, a4, a1);
    v7 = 1;
    *(v8 + 24) = 1;
  }

  return v7;
}

void sub_1003B1994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForDeleteAllPlans");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B19E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B1A28(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003B1698(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B1AB0(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003B1AB0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003B1778(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B1B38(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003B1B38(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003B191C(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B1BD0(a1, a2, a3, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1003B1BD0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 2)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 2;
  sub_1003B1C38(a1);
  *(v6 + 24) = 2;
  sub_1003B1CCC(a1 + 93, a4, a1);
  *(v6 + 24) = 6;
  return 1;
}

void sub_1003B1C38(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003B1CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForWebsheetInfo");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B1D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B1D3C(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B1DC0(a1))
  {
    return 1;
  }

  v5 = sub_1003B1E70(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B1DC0(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B1E70(uint64_t a1)
{
  v1 = (*(&unk_101FB20D0 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B1F38(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_18DidConsentTimedOutEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_18DidConsentTimedOutEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B2030(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B206C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 5)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 5;
  sub_1003B20F0(a1 + 94, a4, a1);
  *(v6 + 24) = 5;
  sub_1003B2174(a1);
  *(a1 + 4) = 0;
  *(v6 + 24) = 5;
  sub_1003B220C(a1 + 91, a4, a1);
  *(v6 + 24) = 8;
  return 1;
}

void sub_1003B20F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003AE42C(a3);
  sub_10000501C(__p, "Post installing");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1003AD784(a3, 1);
}

void sub_1003B2158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003B2174(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 64))(v5, 3);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003B220C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003B2330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B2368(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B23EC(a1))
  {
    return 1;
  }

  v5 = sub_1003B249C(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B23EC(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B249C(uint64_t a1)
{
  v1 = (*(&unk_101FB2128 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B2564(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_9DidDeleteEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_9DidDeleteEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B265C(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B2698(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 1)
  {
    sub_10176E97C();
  }

  v7 = 2;
  if (sub_1003ACEA8(a1))
  {
    v8 = a1 + 4 * a2;
    *(v8 + 24) = 1;
    sub_1003B2708(a1 + 97, a4, a1);
    *(v8 + 24) = 2;
    return 1;
  }

  return v7;
}

void sub_1003B2708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForWebsheet");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B275C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B2778(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 1)
  {
    sub_10176E950();
  }

  if (!sub_1003ACA9C(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  v8 = 1;
  *(v7 + 24) = 1;
  sub_1003B1C38(a1);
  *(v7 + 24) = 1;
  sub_1003B27F8(a1 + 93, a4, a1);
  *(v7 + 24) = 6;
  return v8;
}

void sub_1003B27F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForWebsheetInfo");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B284C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B288C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003B2698(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B2914(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003B2914(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003B2778(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B29AC(a1, a2, a3, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1003B29AC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 1)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 1;
  sub_1003AD278(a1);
  *(v6 + 24) = 1;
  sub_1003B2A14(a1 + 95, a4, a1);
  *(v6 + 24) = 4;
  return 1;
}

void sub_1003B2A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForFetch");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B2A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B2A84(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B2B08(a1))
  {
    return 1;
  }

  v5 = sub_1003B2BB8(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B2B08(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B2BB8(uint64_t a1)
{
  v1 = (*(&unk_101FB2180 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B2C80(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_22DidGetSubscriptionInfoEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_22DidGetSubscriptionInfoEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B2D78(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B2DB4(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 3)
  {
    sub_10176E950();
  }

  if (!sub_1003B2E30(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  v8 = 1;
  *(a1 + 4) = 1;
  *(v7 + 24) = 3;
  sub_1003B2EC4(a1 + 91, a4, a1);
  *(v7 + 24) = 8;
  return v8;
}

uint64_t sub_1003B2E30(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 216))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

void sub_1003B2EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003B2FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B3020(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 3)
  {
    sub_10176E950();
  }

  if (!sub_1003AF63C(&v10, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 3;
  v8 = 1;
  *(a1 + 4) = 1;
  sub_1003B30CC(a1);
  *(v7 + 24) = 3;
  sub_1003B2EC4(a1 + 91, a4, a1);
  *(v7 + 24) = 8;
  return v8;
}

void sub_1003B30CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 88))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1003B3160(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 3)
  {
    sub_10176E950();
  }

  if (!sub_1003B31DC(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  v8 = 1;
  *(a1 + 4) = 1;
  *(v7 + 24) = 3;
  sub_1003B2EC4(a1 + 91, a4, a1);
  *(v7 + 24) = 8;
  return v8;
}

uint64_t sub_1003B31DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 200))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

uint64_t sub_1003B3294(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003B2DB4(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B331C(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003B331C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003B3020(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B33A4(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003B33A4(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003B3160(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B343C(a1, a2, a3, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1003B343C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 3)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 3;
  sub_1003AD278(a1);
  *(v6 + 24) = 3;
  sub_1003B34A4(a1 + 95, a4, a1);
  *(v6 + 24) = 4;
  return 1;
}

void sub_1003B34A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForFetch");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B34F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B3514(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B3598(a1))
  {
    return 1;
  }

  v5 = sub_1003B3648(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B3598(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B3648(uint64_t a1)
{
  v1 = (*(&unk_101FB21D8 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B3710(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_28DidFailToGetSubscriptionInfoEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_28DidFailToGetSubscriptionInfoEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B3808(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B3844(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 3)
  {
    sub_10176E950();
  }

  if (!sub_1003AF63C(&v9, a4, a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 3;
  *(a1 + 4) = 0;
  sub_1003B30CC(a1);
  *(v7 + 24) = 3;
  sub_1003B38E4(a1 + 91, a4, a1);
  *(v7 + 24) = 8;
  return 1;
}

void sub_1003B38E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003B3A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B3A64(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003B3844(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B3AFC(a1, a2, a3, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1003B3AFC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 3)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 3;
  sub_1003B38E4(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

uint64_t sub_1003B3B54(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B3BD8(a1))
  {
    return 1;
  }

  v5 = sub_1003B3C88(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B3BD8(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B3C88(uint64_t a1)
{
  v1 = (*(&unk_101FB2230 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B3D50(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_12DidFailFetchEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_12DidFailFetchEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B3E48(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B3E84(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E950();
  }

  if (!sub_1003B3F04(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 4;
  *(a1 + 4) = 0;
  sub_1003B04C4(a1);
  *(v7 + 24) = 4;
  sub_1003B3F98(a1 + 95, a4, a1);
  *(v7 + 24) = 4;
  return 1;
}

uint64_t sub_1003B3F04(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 224))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

void sub_1003B3F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForFetch");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003B3FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B402C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_1003B3E84(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003B40C4(a1, a2, a3, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1003B40C4(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E9A8();
  }

  v4 = a1 + 4 * a2;
  *(a1 + 4) = 0;
  *(v4 + 24) = 4;
  sub_1003B411C(a1 + 91, a4, a1);
  *(v4 + 24) = 8;
  return 1;
}

void sub_1003B411C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = *(a3 + 4);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
      HIBYTE(v10) = 6;
      qmemcpy(&v8, "Cancel", 6);
    }

    else if (v4 == 2)
    {
      HIBYTE(v10) = 10;
      LOWORD(v9) = 25972;
      v8 = *"Incomplete";
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_11;
      }

      HIBYTE(v10) = 7;
      LODWORD(v8) = 1667462483;
      v5 = 1936942435;
    }

    else
    {
      HIBYTE(v10) = 7;
      LODWORD(v8) = 1818845510;
      v5 = 1701999980;
    }

    *(&v8 + 3) = v5;
  }

LABEL_11:
  std::operator+<char>();
  sub_1003AC810(a3, &__p);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  sub_1003AE230(a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v8);
  }
}

void sub_1003B4240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003B4278(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003B42FC(a1))
  {
    return 1;
  }

  v5 = sub_1003B43AC(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003B42FC(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003B43AC(uint64_t a1)
{
  v1 = (*(&unk_101FB2288 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003B4474(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_16DidFetchProfilesEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_16DidFetchProfilesEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003B456C(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003B45A8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E950();
  }

  if (!sub_1003B3F04(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 4;
  v8 = 1;
  *(a1 + 4) = 1;
  sub_1003B04C4(a1);
  *(v7 + 24) = 4;
  sub_1003B4634(a1 + 95, a4, a1);
  *(v7 + 24) = 4;
  return v8;
}

void sub_1003B4634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForFetch");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}