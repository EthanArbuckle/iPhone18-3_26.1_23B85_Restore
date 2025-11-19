void sub_1011F5CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011F5D58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_100F4B410(a2, *(a1 + 64), *(a1 + 72), 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 72) - *(a1 + 64)) >> 3));
}

void sub_1011F5D80(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  MCC::MCC(&v10, a2);
  MCC::MCC(&v13, (a2 + 32));
  if (v6 != v7)
  {
    while (1)
    {
      NetworkListOperator::getMCC(v22, v6);
      MCCAndMNC::getMcc(v20, &v10);
      if (MCC::operator==())
      {
        NetworkListOperator::getMNC(v18, v6);
        MCCAndMNC::getMnc(v16, &v10);
        v8 = MCC::operator==();
        if (v17 < 0)
        {
          operator delete(v16[1]);
        }

        if (v19 < 0)
        {
          operator delete(v18[1]);
        }
      }

      else
      {
        v8 = 0;
      }

      if (v21 < 0)
      {
        operator delete(v20[1]);
      }

      if (v23 < 0)
      {
        operator delete(v22[1]);
      }

      if (v8)
      {
        break;
      }

      v6 = (v6 + 136);
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v6 == *(a1 + 72))
  {
    v9 = 0;
    *a3 = 0;
  }

  else
  {
    sub_100F4B020(a3, v6);
    v9 = 1;
  }

  a3[136] = v9;
}

void sub_1011F5EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1011F5F74(uint64_t a1, void **a2, void **a3, _DWORD *a4)
{
  if (*(a1 + 159) < 0)
  {
    sub_100005F2C(__p, *(a1 + 136), *(a1 + 144));
  }

  else
  {
    *__p = *(a1 + 136);
    *&__p[16] = *(a1 + 152);
  }

  if ((__p[23] & 0x80000000) == 0)
  {
    if (__p[23])
    {
      goto LABEL_6;
    }

LABEL_9:
    v11 = *(a1 + 8);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *__p = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Selected network code is empty", __p, 2u);
    return 0;
  }

  v10 = *&__p[8];
  operator delete(*__p);
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_6:
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  if (*(a1 + 159) < 0)
  {
    sub_100005F2C(__p, *(a1 + 136), *(a1 + 144));
  }

  else
  {
    *__p = *(a1 + 136);
    *&__p[16] = *(a1 + 152);
  }

  if (v8 != v9)
  {
    while ((NetworkListOperator::operator==() & 1) == 0)
    {
      v8 = (v8 + 136);
      if (v8 == v9)
      {
        v8 = v9;
        break;
      }
    }
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v8 == *(a1 + 72))
  {
    v15 = *(a1 + 8);
    result = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 159) < 0)
    {
      sub_100005F2C(__p, *(a1 + 136), *(a1 + 144));
    }

    else
    {
      *__p = *(a1 + 136);
      *&__p[16] = *(a1 + 152);
    }

    v16 = __p;
    if (__p[23] < 0)
    {
      v16 = *__p;
    }

    *buf = 136446210;
    v20 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#N Failed to find the current selected NetworkListOperator (%{public}s) in the scanned list", buf, 0xCu);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    return 0;
  }

  NetworkListOperator::getCompositeName(__p, v8);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = *__p;
  a2[2] = *&__p[16];
  NetworkListOperator::getKey(__p, v8);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = *__p;
  a3[2] = *&__p[16];
  *a4 = NetworkListOperator::getRAT(v8);
  v13 = *(a1 + 8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    v14 = asString();
    *__p = 136446722;
    *&__p[4] = a2;
    *&__p[12] = 2080;
    *&__p[14] = a3;
    *&__p[22] = 2080;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Filling current selected Network List Operator name: %{public}s, code: %s, RAT: %s", __p, 0x20u);
  }

  return 1;
}

BOOL sub_1011F6284(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  if (v4 != v5)
  {
    while ((NetworkListOperator::operator==() & 1) == 0)
    {
      v4 += 136;
      if (v4 == v5)
      {
        v4 = v5;
        break;
      }
    }

    v5 = *(a1 + 72);
  }

  v6 = *(a1 + 8);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4 == v5)
  {
    if (!v7)
    {
      return v4 != v5;
    }

    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    v19 = 136446210;
    v20 = v11;
    v12 = "#N Failed to find the given NetworkListOperator %{public}s in the NetworkListOperator list";
    v13 = v6;
    v14 = 12;
LABEL_28:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &v19, v14);
    return v4 != v5;
  }

  if (v7)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v19 = 136446210;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Setting the selected network to %{public}s", &v19, 0xCu);
  }

  sub_1011F5468(a1 + 96, a2, *(a1 + 160));
  (*(*a1 + 72))(a1);
  v9 = *(a1 + 351);
  if (v9 < 0)
  {
    v10 = *(a1 + 336);
  }

  else
  {
    v10 = *(a1 + 351);
  }

  v15 = *(a1 + 8);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (!v16)
    {
      return v4 != v5;
    }

    LOWORD(v19) = 0;
    v12 = "#N Active ICCID is blank";
    v13 = v15;
    v14 = 2;
    goto LABEL_28;
  }

  if (v16)
  {
    v17 = (a1 + 328);
    if ((v9 & 0x80000000) != 0)
    {
      v17 = *(a1 + 328);
    }

    v19 = 136380675;
    v20 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I persisting active ICCID %{private}s", &v19, 0xCu);
  }

  sub_1011F5468(a1 + 224, (a1 + 328), *(a1 + 288));
  return v4 != v5;
}

uint64_t sub_1011F64B8(uint64_t a1, uint64_t a2)
{
  if (sub_1011F6758(a1) == 1)
  {
    if (sub_1011F3B38(a1))
    {
      memset(buf, 0, sizeof(buf));
      v18 = 0;
      if (*(a1 + 159) < 0)
      {
        sub_100005F2C(buf, *(a1 + 136), *(a1 + 144));
      }

      else
      {
        *buf = *(a1 + 136);
        v18 = *(a1 + 152);
      }

      v8 = *(a1 + 64);
      v7 = *(a1 + 72);
      if (v8 != v7)
      {
        while ((NetworkListOperator::operator==() & 1) == 0)
        {
          v8 += 136;
          if (v8 == v7)
          {
            v8 = v7;
            break;
          }
        }

        v7 = *(a1 + 72);
      }

      v9 = v8 == v7;
      v5 = v8 != v7;
      if (v9)
      {
        v10 = *(a1 + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a1 + 159) < 0)
          {
            sub_100005F2C(__p, *(a1 + 136), *(a1 + 144));
          }

          else
          {
            *__p = *(a1 + 136);
            v14 = *(a1 + 152);
          }

          v11 = __p;
          if (v14 < 0)
          {
            v11 = __p[0];
          }

          *v15 = 136446210;
          v16 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Could not find the selected code %{public}s in the Network List Operator list", v15, 0xCu);
          if (SHIBYTE(v14) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else
      {
        std::string::operator=(a2, v8);
        *(a2 + 24) = *(v8 + 24);
        MCC::operator=();
        MCC::operator=();
        std::string::operator=((a2 + 96), (v8 + 96));
        *(a2 + 120) = *(v8 + 120);
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      v6 = *(a1 + 8);
      v5 = 0;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Validation of the selected operator has failed, selection mode will be changed to automatic", buf, 2u);
        return 0;
      }
    }
  }

  else
  {
    v4 = *(a1 + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Mode is not manual selection: %s, giving default NetworkListOperator", buf, 0xCu);
    }

    return 1;
  }

  return v5;
}

void sub_1011F672C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011F6758(void *a1)
{
  result = (*(*a1 + 208))(a1);
  if (result == 1)
  {
    if ((*(*a1 + 248))(a1) == 2)
    {
      v3 = a1[1];
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      result = 0;
      if (v4)
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Selection mode is currently Manual, but that is not allowed any more. Changing it to Automatic", v5, 2u);
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

void sub_1011F682C(uint64_t a1, int a2)
{
  v4 = *(a1 + 208);
  v5 = *(a1 + 8);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == a2)
  {
    if (v6)
    {
      v9 = 136315394;
      v10 = asString();
      v11 = 2080;
      v12 = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Current selection mode: %s is same as the one being set: %s", &v9, 0x16u);
    }
  }

  else
  {
    if (v6)
    {
      v9 = 136315394;
      v10 = asString();
      v11 = 2080;
      v12 = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Setting selection mode from %s to %s", &v9, 0x16u);
    }

    v7 = *(a1 + 216);
    *(a1 + 208) = a2;
    *(a1 + 217) = 1;
    if (v7 == 1)
    {
      sub_1011F5124(a1 + 168);
    }

    if (!a2)
    {
      v8 = *(a1 + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Network selection mode is being set to Automatic, clearing off the network list timestamp", &v9, 2u);
      }

      sub_1011F3FEC(a1, 3u);
      *(a1 + 88) = 0;
    }
  }
}

std::string *sub_1011F69D0(uint64_t a1, const std::string *a2)
{
  v2 = a2;
  v4 = (a1 + 328);
  v5 = *(a1 + 351);
  if (v5 >= 0)
  {
    v6 = *(a1 + 351);
  }

  else
  {
    v6 = *(a1 + 336);
  }

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v8 = size;
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (v6 != size)
  {
    goto LABEL_13;
  }

  if (v5 >= 0)
  {
    v9 = (a1 + 328);
  }

  else
  {
    v9 = v4->__r_.__value_.__r.__words[0];
  }

  if (v8 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  result = memcmp(v9, a2, v6);
  if (result)
  {
LABEL_13:
    v11 = *(a1 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v4;
      if (v5 < 0)
      {
        v12 = v4->__r_.__value_.__r.__words[0];
      }

      v13 = v2->__r_.__value_.__r.__words[0];
      if (v8 >= 0)
      {
        v13 = v2;
      }

      v14 = 136380931;
      v15 = v12;
      v16 = 2081;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Setting active ICCID from: '%{private}s' to '%{private}s'", &v14, 0x16u);
    }

    return std::string::operator=(v4, v2);
  }

  return result;
}

uint64_t sub_1011F6B04(uint64_t a1)
{
  v2 = sub_1011F6758(a1);
  v3 = *(a1 + 8);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 != 1)
  {
    if (v4)
    {
      *buf = 136315138;
      *&buf[4] = asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Mode is not manual: %s, bypassing ICCID validation", buf, 0xCu);
    }

    return 1;
  }

  if (v4)
  {
    v5 = (a1 + 328);
    if (*(a1 + 351) < 0)
    {
      v5 = *v5;
    }

    if (*(a1 + 287) < 0)
    {
      sub_100005F2C(buf, *(a1 + 264), *(a1 + 272));
    }

    else
    {
      *buf = *(a1 + 264);
      v23 = *(a1 + 280);
    }

    v7 = buf;
    if (v23 < 0)
    {
      v7 = *buf;
    }

    *__p = 136380931;
    *&__p[4] = v5;
    v19 = 2081;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Active ICCID %{private}s, selected ICCID %{private}s", __p, 0x16u);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(*buf);
    }
  }

  memset(buf, 0, sizeof(buf));
  v23 = 0;
  if (*(a1 + 287) < 0)
  {
    sub_100005F2C(buf, *(a1 + 264), *(a1 + 272));
  }

  else
  {
    *buf = *(a1 + 264);
    v23 = *(a1 + 280);
  }

  v8 = SHIBYTE(v23);
  if (v23 >= 0)
  {
    v9 = HIBYTE(v23);
  }

  else
  {
    v9 = *&buf[8];
  }

  if (!v9)
  {
    goto LABEL_48;
  }

  v10 = *(a1 + 351);
  if (v10 < 0)
  {
    if (!*(a1 + 336))
    {
      goto LABEL_48;
    }
  }

  else if (!*(a1 + 351))
  {
    goto LABEL_48;
  }

  v11 = (a1 + 328);
  v12 = *(a1 + 336);
  if (v10 >= 0)
  {
    v12 = *(a1 + 351);
  }

  if (v12 != v9 || (v10 >= 0 ? (v13 = (a1 + 328)) : (v13 = *v11), v23 >= 0 ? (v14 = buf) : (v14 = *buf), memcmp(v13, v14, v9)))
  {
    v15 = *(a1 + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if ((v10 & 0x80000000) != 0)
      {
        v11 = *v11;
      }

      v16 = *buf;
      if (v8 >= 0)
      {
        v16 = buf;
      }

      *__p = 136380931;
      *&__p[4] = v11;
      v19 = 2081;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#N Mismatch between %{private}s and %{private}s, clearing", __p, 0x16u);
    }

    sub_10000501C(__p, "");
    sub_1011F5468(a1 + 224, __p, *(a1 + 288));
    if (v21 < 0)
    {
      operator delete(*__p);
    }

    sub_10000501C(__p, "");
    sub_1011F5468(a1 + 96, __p, 1);
    if (v21 < 0)
    {
      operator delete(*__p);
    }

    (*(*a1 + 200))(a1, 0);
    v6 = 0;
    if (v23 < 0)
    {
      goto LABEL_49;
    }

    return v6;
  }

LABEL_48:
  v6 = 1;
  if ((v8 & 0x80) != 0)
  {
LABEL_49:
    operator delete(*buf);
  }

  return v6;
}

void sub_1011F6E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011F6E78(uint64_t a1, int a2)
{
  if (*(a1 + 352) != a2)
  {
    v4 = *(a1 + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = subscriber::asString();
      v9 = 2080;
      v10 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Setting GW SIM State from %s to %s", &v7, 0x16u);
    }

    *(a1 + 352) = a2;
    if (a2 != 5)
    {
      v5 = *(a1 + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I GW SIM card state has moved away from ready, clearing the current ICCID", &v7, 2u);
        v5 = *(a1 + 8);
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = (a1 + 328);
        if (*(a1 + 351) < 0)
        {
          v6 = *v6;
        }

        v7 = 136380675;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Clearing the active ICCID: '%{private}s'", &v7, 0xCu);
      }

      if (*(a1 + 351) < 0)
      {
        **(a1 + 328) = 0;
        *(a1 + 336) = 0;
      }

      else
      {
        *(a1 + 328) = 0;
        *(a1 + 351) = 0;
      }
    }
  }
}

void sub_1011F700C(uint64_t a1, int a2)
{
  if (*(a1 + 360) != a2)
  {
    v4 = *(a1 + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = asString();
      v7 = 2080;
      v8 = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Menu selection allowed from SIM card is changing from %s to %s", &v5, 0x16u);
    }

    *(a1 + 360) = a2;
  }
}

void sub_1011F70E4(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  v7 = *(a1 + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = asString();
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Evaluating Network Selection: %s on RAT %s", buf, 0x16u);
    v7 = *(a1 + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_100072578(*(a1 + 396));
    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Device type: %s", buf, 0xCu);
  }

  if ((a4 & 1) == 0)
  {
    v19 = *(a1 + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v20 = "#I Baseband and wireless are not ready";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
    }

LABEL_19:
    sub_1011F77A0(a1, 0, 0);
    return;
  }

  if (*(a1 + 352) != 5)
  {
    v19 = *(a1 + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v20 = "#I GW SIM state is not ready";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (!*(a1 + 396))
  {
    v21 = *(a1 + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Device type is not determined yet", buf, 2u);
    }

    return;
  }

  cf1 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 32));
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
LABEL_25:
  (*(*v17 + 80))(&cf, v17, *(a1 + 48), 1, @"OverrideCarrierMenuTo", 0, 0);
  sub_10002FE1C(&cf1, &cf);
  sub_10000A1EC(&cf);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  if (cf1)
  {
    if (CFEqual(cf1, kCFBooleanTrue))
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    v23 = *(a1 + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = asString();
      *buf = 67109378;
      *&buf[4] = v22;
      *&buf[8] = 2080;
      *&buf[10] = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Carrier bundle is overriding the carrier menu to: %d (%s)", buf, 0x12u);
    }

    v25 = 2;
    goto LABEL_34;
  }

  v26 = *(a1 + 360);
  if (v26 == 2)
  {
    v29 = *(a1 + 8);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
LABEL_47:
      sub_100045C8C(&cf1);
      goto LABEL_48;
    }

    *buf = 0;
    v30 = "#I SIM card's setting allowing the menu to be shown";
LABEL_46:
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
    goto LABEL_47;
  }

  if (!v26)
  {
    v27 = *(a1 + 8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I SIM card's setting for manual selection is not known yet, cannot decide", buf, 2u);
    }

    sub_100045C8C(&cf1);
    return;
  }

  v31 = mapRoamingResultToTriBOOL();
  v32 = v31;
  v22 = *(a1 + 360);
  v33 = *(a1 + 396);
  if ((v33 - 1) < 2)
  {
    cf = 0;
    v34 = Registry::getServiceMap(*(a1 + 32));
    sub_100099CD8(v34, buf);
    (*(**buf + 80))(&cf);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v35 = cf;
    buf[0] = 0;
    if (cf)
    {
      v36 = CFGetTypeID(cf);
      if (v36 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(buf, v35, v37);
        if ((buf[0] & 1) != 0 && !v32)
        {
          v38 = *(a1 + 8);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v22 = 2;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I Carrier menu is not allowed when not roaming, and Device is not roaming, do not allow carrier menu", buf, 2u);
          }

          else
          {
            v22 = 2;
          }
        }
      }
    }

    sub_10000A1EC(&cf);
    goto LABEL_70;
  }

  if (v33 == 3 && !v31)
  {
    v29 = *(a1 + 8);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_47;
    }

    *buf = 0;
    v30 = "#I Carrier menu is not allowed when not roaming for a CDMA centric device, and Device is not roaming, do not allow carrier menu";
    goto LABEL_46;
  }

LABEL_70:
  v25 = 1;
LABEL_34:
  sub_100045C8C(&cf1);
  if (v22 != 1)
  {
    if (v22 != 2)
    {
      return;
    }

LABEL_48:
    sub_1011F77A0(a1, 2, 0);
    return;
  }

  v28 = 1;
  if (*(a1 + 396) == 2)
  {
    v25 = 3;
  }

  else if (a3 <= 8 && ((1 << a3) & 0x138) != 0)
  {
    v39 = *(a1 + 8);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v28 = 2;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I Device is camped on CDMA tech, cannot support carrier selection", buf, 2u);
      v25 = 0;
    }

    else
    {
      v25 = 0;
      v28 = 2;
    }
  }

  sub_1011F77A0(a1, v28, v25);
}

void sub_1011F7720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100045C8C(&a10);
  _Unwind_Resume(a1);
}

void sub_1011F77A0(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 364) != a2)
  {
    v6 = *(a1 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = asString();
      v12 = 2080;
      v13 = asString();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Carrier selection is changing from %s to %s", &v10, 0x16u);
    }

    *(a1 + 364) = a2;
    (*(**(a1 + 376) + 48))(*(a1 + 376), *(a1 + 48), a2 == 1);
  }

  if (*(a1 + 368) != a3)
  {
    v7 = *(a1 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = asString();
      v9 = asString();
      v10 = 136315394;
      v11 = v8;
      v12 = 2080;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Carrier menu allowed reason is changing from %s to %s", &v10, 0x16u);
    }

    *(a1 + 368) = a3;
  }
}

uint64_t sub_1011F7940(uint64_t a1, char *a2)
{
  v3 = *(a1 + 52);
  if (v3 < 2)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (v3 != 2)
  {
    v4 = v3 == 3;
    goto LABEL_5;
  }

  v12 = *(a1 + 56);
  if ((v12 - 1) < 2)
  {
    v4 = 4;
    goto LABEL_5;
  }

  if (v12 != 3)
  {
    if (v12)
    {
      v4 = 0;
    }

    else
    {
      v4 = 3;
    }

    goto LABEL_5;
  }

  if ((*(*a1 + 208))(a1) != 1)
  {
    v22 = *(a1 + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Not in manual mode, so not updating the state with the registration status", buf, 2u);
    }

    goto LABEL_55;
  }

  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 11;
  if (!(*(*a1 + 160))(a1, v37, &v34, &v33))
  {
    v23 = *(a1 + 8);
    v4 = 0;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Serving PLMN is different from the selected NetworkListOperator", buf, 2u);
      v4 = 0;
    }

    goto LABEL_49;
  }

  __p[0] = 0;
  __p[1] = 0;
  v32 = 0;
  v14 = HIBYTE(v36);
  if (v36 >= 0)
  {
    v15 = &v34;
  }

  else
  {
    v15 = v34;
  }

  if (v36 < 0)
  {
    v14 = v35;
  }

  buf[0] = 45;
  v16 = sub_1007DF8F4(v15, &v15[v14], buf);
  sub_1001CD6B4(__p, v15, v16, v16 - v15);
  v17 = sub_100071DF8(__p, a2);
  v18 = *(a1 + 8);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      if (a2[23] >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      *buf = 136446210;
      v40 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Serving PLMN %{public}s and the manually selected NetworkListOperator are same", buf, 0xCu);
    }

    v4 = 6;
    v21 = 3;
  }

  else
  {
    if (v19)
    {
      v24 = a2[23];
      v25 = *a2;
      v26 = SHIBYTE(v32);
      v27 = __p[0];
      v28 = asString();
      v29 = __p;
      if (v26 < 0)
      {
        v29 = v27;
      }

      *buf = 136446722;
      if (v24 >= 0)
      {
        v30 = a2;
      }

      else
      {
        v30 = v25;
      }

      v40 = v30;
      v41 = 2082;
      v42 = v29;
      v43 = 2080;
      v44 = v28;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Different serving PLMN %{public}s, selected: %{public}s, selected: %s", buf, 0x20u);
    }

    v21 = 0;
    v4 = 0;
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v17)
  {
LABEL_49:
    v21 = 0;
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  if (!v21)
  {
LABEL_55:
    v4 = 5;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 52);
    if (v6 > 3)
    {
      v7 = "Fetch State Unknown";
    }

    else
    {
      v7 = off_101F1B118[v6];
    }

    v8 = *(a1 + 56);
    if (v8 > 3)
    {
      v9 = "Selection State Unknown";
    }

    else
    {
      v9 = off_101F1B138[v8];
    }

    v10 = asString();
    *buf = 136315650;
    v40 = v7;
    v41 = 2080;
    v42 = v9;
    v43 = 2080;
    v44 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Request for Selection State, Fetch State: %s, Selection State: %s, Current State: %s", buf, 0x20u);
  }

  return v4;
}

void sub_1011F7D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011F7D9C(uint64_t a1, int *a2)
{
  v4 = sub_1011F6758(a1);
  *a2 = v4;
  v5 = *(a1 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136315394;
    *&__p[4] = asString();
    *&__p[12] = 2080;
    *&__p[14] = asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Current network selection mode %s, requested %s", __p, 0x16u);
    v4 = *a2;
    v5 = *(a1 + 8);
  }

  v6 = *(a1 + 320);
  v7 = v4 != v6;
  v8 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  v9 = v4;
  if (v8)
  {
    v10 = CSIBOOLAsString(v4 == v6);
    *__p = 136315138;
    *&__p[4] = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Are the selection modes matching: %s", __p, 0xCu);
    v9 = *a2;
  }

  if (v9 == 1)
  {
    v11 = *(a1 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = (a1 + 296);
      if (*(a1 + 319) < 0)
      {
        v12 = *v12;
      }

      if (*(a1 + 159) < 0)
      {
        sub_100005F2C(__p, *(a1 + 136), *(a1 + 144));
      }

      else
      {
        *__p = *(a1 + 136);
        *&__p[16] = *(a1 + 152);
      }

      v13 = __p;
      if (__p[23] < 0)
      {
        v13 = *__p;
      }

      *buf = 136446466;
      v23 = v12;
      v24 = 2082;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Current selected network operator: %{public}s, requested: %{public}s", buf, 0x16u);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    if (v4 != v6)
    {
      return 1;
    }

    if (*(a1 + 159) < 0)
    {
      sub_100005F2C(__p, *(a1 + 136), *(a1 + 144));
    }

    else
    {
      *__p = *(a1 + 136);
      *&__p[16] = *(a1 + 152);
    }

    v14 = *(a1 + 319);
    if (v14 >= 0)
    {
      v15 = *(a1 + 319);
    }

    else
    {
      v15 = *(a1 + 304);
    }

    v16 = __p[23];
    v17 = __p[23];
    if (__p[23] < 0)
    {
      v16 = *&__p[8];
    }

    if (v15 != v16)
    {
      v7 = 1;
      if ((__p[23] & 0x80000000) == 0)
      {
        return v7;
      }

LABEL_36:
      operator delete(*__p);
      return v7;
    }

    if (v14 >= 0)
    {
      v18 = (a1 + 296);
    }

    else
    {
      v18 = *(a1 + 296);
    }

    if (__p[23] >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = *__p;
    }

    v7 = memcmp(v18, v19, v15) != 0;
    if (v17 < 0)
    {
      goto LABEL_36;
    }
  }

  return v7;
}

BOOL sub_1011F804C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 396);
  if (v3 != a2)
  {
    v5 = *(a1 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = sub_100072578(v3);
      v9 = 2080;
      v10 = sub_100072578(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Device type changing from %s to %s", &v7, 0x16u);
    }

    *(a1 + 396) = a2;
  }

  return v3 != a2;
}

void sub_1011F8220(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011F825C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1011F8294(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1011F82C4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011F8304(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, char a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C((a1 + 16), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 32) = *(a4 + 2);
    *(a1 + 16) = v9;
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C((a1 + 40), *a5, *(a5 + 1));
  }

  else
  {
    v10 = *a5;
    *(a1 + 56) = *(a5 + 2);
    *(a1 + 40) = v10;
  }

  *(a1 + 64) = a6;
  *(a1 + 65) = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v12 = ServiceMap;
  if ((v13 & 0x8000000000000000) != 0)
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
  v22 = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &v22);
  if (!v17)
  {
    v19 = 0;
LABEL_17:
    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
    if (!v19)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v19 = v17[3];
  v18 = v17[4];
  if (!v18)
  {
    goto LABEL_17;
  }

  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v12);
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v18);
  v20 = 0;
  if (v19)
  {
LABEL_18:
    (*(*v19 + 48))(v19, a1 + 16, a1 + 40);
  }

LABEL_19:
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  return a1;
}

void sub_1011F8490(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011F84F4(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

uint64_t sub_1011F8544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1014F2908(a1, a2, a3);
  *v6 = &off_101F1B178;
  v6[17] = a4;
  if (!a4)
  {
    __assert_rtn("VoLTECallAgent", "EmergencyVoLTECallAgent.cpp", 18, "driver && Need valid search driver");
  }

  return a1;
}

const char *sub_1011F85CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 3)
  {
    return "???";
  }

  else
  {
    return off_101F1B208[v1];
  }
}

uint64_t sub_1011F85FC(uint64_t a1)
{
  result = (*(**(a1 + 136) + 64))(*(a1 + 136), *(a1 + 8));
  if (result)
  {
    v3 = *(**(a1 + 136) + 80);

    return v3();
  }

  return result;
}

void sub_1011F869C(emergency::CallAgent *a1)
{
  emergency::CallAgent::~CallAgent(a1);

  operator delete();
}

uint64_t sub_1011F86D4(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"KB"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"MB"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"GB"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"TB"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1011F877C(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSISO8601DateFormatter);
  v3 = [v2 dateFromString:v1];

  return v3;
}

const __CFArray *sub_1011F8800(Registry **a1, uint64_t a2, uint64_t a3)
{
  v24 = 0;
  v25 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
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
  v22.__r_.__value_.__r.__words[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v22);
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
  v24 = v12;
  v25 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v11);
  }

  if (v12)
  {
    v13 = *(a3 + 23);
    if ((v13 & 0x8000000000000000) != 0)
    {
      v13 = *(a3 + 8);
    }

    if (v13 >= 0xA)
    {
      std::string::basic_string(&v22, a3, 0, 0xAuLL, &theArray);
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v22;
      }

      else
      {
        v16 = v22.__r_.__value_.__r.__words[0];
      }

      v17 = CFStringCreateWithCString(kCFAllocatorDefault, v16, 0x8000100u);
      v18 = v17;
      value = v17;
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
        if (v18)
        {
LABEL_22:
          v22.__r_.__value_.__r.__words[0] = 0;
          carrier_space::getCarrierSpaceValueForKey();
          v19 = v22.__r_.__value_.__r.__words[0];
          if (v22.__r_.__value_.__r.__words[0] && (v20 = CFGetTypeID(v22.__r_.__value_.__l.__data_), v20 == CFArrayGetTypeID()))
          {
            sub_10000A1EC(&v22.__r_.__value_.__l.__data_);
            theArray = v19;
            CFRetain(v19);
            v14 = theArray;
            if (theArray)
            {
              v26.length = CFArrayGetCount(theArray);
              v26.location = 0;
              v14 = (CFArrayContainsValue(v14, v26, value) != 0);
            }
          }

          else
          {
            sub_10000A1EC(&v22.__r_.__value_.__l.__data_);
            v14 = 0;
            theArray = 0;
          }

          sub_100010250(&theArray);
LABEL_30:
          sub_100005978(&value);
          v11 = v25;
          if (!v25)
          {
            return v14;
          }

          goto LABEL_15;
        }
      }

      else if (v17)
      {
        goto LABEL_22;
      }

      v14 = 0;
      goto LABEL_30;
    }
  }

  v14 = 0;
  if (v11)
  {
LABEL_15:
    sub_100004A34(v11);
  }

  return v14;
}

void sub_1011F8A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  sub_100010250(&a10);
  sub_100005978(&a17);
  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1011F8A8C(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"monday"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"tuesday"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"wednesday"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"thursday"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"friday"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"saturday"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"sunday"])
  {
    v2 = 0;
  }

  else
  {
    v2 = 7;
  }

  return v2;
}

void NetworkListController::create(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  if (capabilities::ct::getRadioModuleType(a1) == 2)
  {
    operator new();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Device does not support manual network selection, skipping", &__p, 2u);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1011F948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v8);
  ctu::OsLogContext::~OsLogContext(va1);
  JUMPOUT(0x1011F943CLL);
}

void sub_1011F94BC(uint64_t a1)
{
  *a1 = off_101F1B250;
  sub_10006DCAC(a1 + 432, *(a1 + 440));
  sub_10006DCAC(a1 + 408, *(a1 + 416));
  sub_10006DCAC(a1 + 384, *(a1 + 392));
  sub_10006DCAC(a1 + 360, *(a1 + 368));
  sub_10006DCAC(a1 + 336, *(a1 + 344));
  sub_10006DCAC(a1 + 312, *(a1 + 320));
  sub_10032D3A4(a1 + 288, *(a1 + 296));
  sub_10006DCAC(a1 + 264, *(a1 + 272));
  v11 = (a1 + 216);
  sub_1000B2AF8(&v11);
  v2 = *(a1 + 208);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 184);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 152);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_10006EC28(a1 + 120, *(a1 + 128));
  v6 = *(a1 + 112);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 80);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  NetworkListInterface::~NetworkListInterface(a1);
}

void sub_1011F9628(uint64_t a1)
{
  sub_1011F94BC(a1);

  operator delete();
}

void sub_1011F9660(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
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

void sub_1011F9760(uint64_t a1, uint64_t a2, dispatch_object_t *a3)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1011F98A0(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  v4 = dispatch_group_create();
  v5 = v4;
  *a2 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1011F99AC(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v27 = 0;
  v28 = 0;
  NetworkListController::getModel_sync(a1, a2, &v27);
  v5 = v27;
  v6 = *v4;
  v7 = *v4;
  if (!v27)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find model for fetching network list", buf, 2u);
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Issuing fetch Network Operator List", buf, 2u);
  }

  if (((*(*v5 + 64))(v5) & 1) != 0 || (*(*v5 + 48))(v5))
  {
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Fetch is already in progress, piggy backing another fetch request received", buf, 2u);
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  if (*(a1 + 256) == 1)
  {
    v11 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N Voice call is currently active, cannot issue network fetch", buf, 2u);
    }

    (*(**(a1 + 160) + 72))(*(a1 + 160));
    goto LABEL_10;
  }

  v12 = (*(*v5 + 120))(v5);
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v14 = ServiceMap;
  if (v15 < 0)
  {
    v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(ServiceMap);
  *buf = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, buf);
  if (!v19)
  {
    v21 = 0;
    goto LABEL_25;
  }

  v21 = v19[3];
  v20 = v19[4];
  if (!v20)
  {
LABEL_25:
    std::mutex::unlock(v14);
    v20 = 0;
    v22 = 1;
    goto LABEL_26;
  }

  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v14);
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v20);
  v22 = 0;
LABEL_26:
  v23 = (*(*v21 + 88))(v21);
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  v24 = v23 - v12;
  v25 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v12;
    v30 = 1024;
    v31 = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Last network scan was done with timestamp %d, %d seconds ago", buf, 0xEu);
  }

  if (v12 && v24 <= 0x383)
  {
    v26 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Not going to scan again as last fetch is still valid, declaring that the fetch is already complete", buf, 2u);
    }

    sub_1011F9E48(a1, a2, 0);
  }

  else
  {
    subscriber::simSlotAsInstance();
    WISPostSimpleMetricWithUnsignedInteger();
    (*(*v5 + 32))(v5);
    sub_1011FA050(a1);
  }

  v9 = 1;
LABEL_11:
  if (v28)
  {
    sub_100004A34(v28);
  }

  return v9;
}

void sub_1011F9E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011F9E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  NetworkListController::getModel_sync(a1, a2, &v11);
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (v11)
  {
    buf = 0uLL;
    v15 = 0;
    (*(*v11 + 144))(&buf);
    v7 = *(a1 + 160);
    memset(v10, 0, sizeof(v10));
    sub_100F4B410(v10, buf, *(&buf + 1), 0xF0F0F0F0F0F0F0F1 * ((*(&buf + 1) - buf) >> 3));
    (*(*v7 + 64))(v7, a2, a3, v10);
    p_buf = v10;
    sub_100F4B580(&p_buf);
    p_buf = &buf;
    sub_100F4B580(&p_buf);
  }

  else
  {
    v8 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v9 = asString();
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v9;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not get model for sending %s notification", &buf, 0xCu);
    }
  }

  if (v12)
  {
    sub_100004A34(v12);
  }
}

void sub_1011FA004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, char a15)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011FA050(uint64_t a1)
{
  v2 = *(a1 + 192);
  v3 = *(a1 + 196);
  v4 = v2 - v3;
  if (v2 == v3)
  {
    v30 = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v6 = ServiceMap;
    if (v7 < 0)
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
    *buf = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, buf);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
LABEL_16:
    (*(*v13 + 32))(&v29, v13, kCarrier1BundleId, @"ManualNetworkScanDelay", 0, 0);
    sub_10010B240(&v30, &v29);
    sub_10000A1EC(&v29);
    if ((v14 & 1) == 0)
    {
      sub_100004A34(v12);
    }

    if (v30)
    {
      *buf = 0;
      ctu::cf::assign(buf, v30, v18);
      v19 = *buf;
      if (*buf > 0)
      {
        v20 = *(a1 + 40);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Delaying performing the network scan by %llu seconds", buf, 0xCu);
        }

        Registry::getTimerService(buf, *(a1 + 56));
        v21 = *buf;
        sub_10000501C(__p, "Delay Manual Scan Timer");
        v22 = *(a1 + 24);
        object = v22;
        if (v22)
        {
          dispatch_retain(v22);
        }

        v24[0] = _NSConcreteStackBlock;
        v24[1] = 0x40000000;
        v24[2] = sub_1011FB988;
        v24[3] = &unk_101F1B2D8;
        v24[4] = a1;
        aBlock = _Block_copy(v24);
        sub_100E34D88(v21, __p, 1, 1000000 * v19, &object, &aBlock);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (object)
        {
          dispatch_release(object);
        }

        if (v28 < 0)
        {
          operator delete(__p[0]);
        }

        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        goto LABEL_35;
      }

      v23 = *(a1 + 40);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v19;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#N Invalid ManualNetworkScanDelay carrier bundle key value: %d", buf, 8u);
      }
    }

    sub_1011FB990(a1);
LABEL_35:
    sub_100029A48(&v30);
    return;
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = "are";
    if (v4 == 1)
    {
      v16 = "is";
    }

    *buf = 136315650;
    *&buf[4] = v16;
    v17 = "'s";
    if (v4 <= 1)
    {
      v17 = "";
    }

    *&buf[12] = 1024;
    *&buf[14] = v4;
    v32 = 2080;
    v33 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I There %s %d PDP%s active, waiting", buf, 0x1Cu);
  }
}

void sub_1011FA3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, dispatch_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1011FA498(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  NetworkListController::getModel_sync(a1, a2, &v8);
  v5 = v8;
  if (v8)
  {
    if ((*(*v8 + 64))(v8))
    {
      v2 = 1;
    }

    else
    {
      v2 = (*(*v5 + 48))(v5);
    }
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (!v5)
  {
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find model for fetch in progress query", &v8, 2u);
    }

    v2 = 0;
  }

  return v2 & 1;
}

void sub_1011FA5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011FA5E0(uint64_t a1, int a2, uint64_t a3)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v12 = 0;
  v13 = 0;
  NetworkListController::getModel_sync(a1, a2, &v12);
  v7 = v12;
  if (v12)
  {
    a3 = (*(*v12 + 184))(v12, a3);
    v8 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = asString();
      *buf = 136315138;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Request for current network selection state, returning: %s", buf, 0xCu);
    }
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  if (!v7)
  {
    v10 = *v6;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not get model for selection state query", &v12, 2u);
    }

    return 0;
  }

  return a3;
}

void sub_1011FA768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011FA784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  NetworkListController::getModel_sync(a1, a2, &v9);
  v6 = v9;
  if (v9)
  {
    (*(*v9 + 200))(v9, a3);
    (*(*v6 + 320))(v6, 0);
  }

  else
  {
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = asString();
      *buf = 136315138;
      v12 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not get model for setting selection mode to %s", buf, 0xCu);
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1011FA8EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011FA90C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = 0;
  v17 = 0;
  NetworkListController::getModel_sync(a1, a2, &v16);
  v6 = v16;
  if (v16)
  {
    *buf = 0;
    v14 = 0;
    v15 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    v10 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0;
    NetworkListOperator::NetworkListOperator(a3);
    if ((*(*v6 + 160))(v6, buf, __p, &v10))
    {
      NetworkListOperator::setName();
      NetworkListOperator::setRAT();
      NetworkListOperator::decodeKey();
    }

    else
    {
      v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not get selected network", v9, 2u);
      }
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(*buf);
    }
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  if (!v6)
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not find model for getting selected network info", buf, 2u);
    }

    NetworkListOperator::NetworkListOperator(a3);
  }
}

void sub_1011FAB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  sub_100F4B3AC(v24);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a24)
  {
    sub_100004A34(a24);
  }

  _Unwind_Resume(a1);
}

void sub_1011FAB50(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = 0;
  v9 = 0;
  NetworkListController::getModel_sync(a1, a2, &v8);
  v6 = v8;
  if (v8)
  {
    (*(*v8 + 144))(v8);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (!v6)
  {
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not find model for getting network list", &v8, 2u);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_1011FAC4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011FAC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  NetworkListController::getModel_sync(a1, a2, &v8);
  if (v8)
  {
    (*(*v8 + 240))(v8, a3);
    sub_1011FAD7C(a1, a2);
  }

  else
  {
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find model for SIM support", v7, 2u);
    }
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1011FAD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011FAD7C(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0;
  NetworkListController::getModel_sync(a1, a2, &v14);
  v4 = v14;
  if (!v14)
  {
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *v13 = 0;
    v8 = "Could not find model to evaluation network selection support";
    goto LABEL_22;
  }

  v5 = *(a1 + 320);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a1 + 320;
  do
  {
    if (*(v5 + 28) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 28) < a2));
  }

  while (v5);
  if (v6 == a1 + 320 || *(v6 + 28) > a2)
  {
LABEL_9:
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *v13 = 0;
    v8 = "Could not find RoamingResult";
LABEL_22:
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v8, v13, 2u);
    goto LABEL_23;
  }

  v9 = *(a1 + 344);
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = a1 + 344;
  do
  {
    if (*(v9 + 28) >= a2)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 28) < a2));
  }

  while (v9);
  if (v10 == a1 + 344 || *(v10 + 28) > a2)
  {
LABEL_20:
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *v13 = 0;
    v8 = "Could not find RAT";
    goto LABEL_22;
  }

  v11 = (*(a1 + 252) & 1) == 0 && *(a1 + 248) == 2;
  (*(*v14 + 264))(v14, *(v6 + 32), *(v10 + 32), v11);
  sub_1011FB288(a1, a2);
  if ((*(*v4 + 248))(v4) == 2)
  {
    v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N Network selection is not allowed, Setting selection mode to automatic", v13, 2u);
    }

    sub_1011FA784(a1, a2, 0);
  }

LABEL_23:
  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_1011FB06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1011FB094(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  NetworkListController::getModel_sync(a1, a2, &v8);
  v5 = v8;
  if (v8)
  {
    v2 = (*(*v8 + 248))(v8) == 1;
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (!v5)
  {
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not get model for manual network selection allowed query", &v8, 2u);
    }

    return 0;
  }

  return v2;
}

void sub_1011FB194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011FB1AC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Network setting is being reset", v8, 2u);
  }

  v3 = *(a1 + 120);
  v4 = (a1 + 128);
  if (v3 != v4)
  {
    do
    {
      (*(*v3[5] + 296))(v3[5]);
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
    }

    while (v6 != v4);
  }
}

void sub_1011FB288(uint64_t a1, uint64_t a2)
{
  v29 = 0;
  v30 = 0;
  NetworkListController::getModel_sync(a1, a2, &v29);
  v4 = v29;
  v5 = *(**(a1 + 48) + 16);
  if (v29)
  {
    v6 = *v5();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Applying Network Selection", &buf, 2u);
    }

    (*(*v4 + 224))(v4);
    v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    v42 = 0;
    v43 = 0;
    NetworkListController::getModel_sync(a1, a2, &v42);
    if (a2 == 1)
    {
      v8 = 240;
    }

    else
    {
      if (a2 != 2)
      {
        if (v42)
        {
          goto LABEL_24;
        }

        goto LABEL_26;
      }

      v8 = 243;
    }

    v10 = v42;
    if (v42)
    {
      v11 = *(a1 + v8);
      if (*(a1 + v8))
      {
        if ((*(*v42 + 248))(v42))
        {
          v41 = 0;
          if ((*(*v10 + 192))(v10, &v41))
          {
            v12 = *v7;
            if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
            {
              v13 = asString();
              LODWORD(buf) = 136315138;
              *(&buf + 4) = v13;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Setting Network Selection Mode change to %s", &buf, 0xCu);
            }

            v56 = 0;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            buf = 0u;
            v49 = 0u;
            NetworkListOperator::NetworkListOperator(&buf);
            if (((*(*v10 + 176))(v10, &buf) & 1) == 0)
            {
              v14 = *v7;
              if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
              {
                *__dst = 0;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#N Failed to retrieve selected operator, mode selection has been set to automatic", __dst, 2u);
              }

              v41 = 0;
            }

            if ((*(*v10 + 104))(v10))
            {
              v15 = *v7;
              if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
              {
                *__dst = 0;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Selection already in progress, waiting for it to complete", __dst, 2u);
              }
            }

            else
            {
              v23 = *(a1 + 72);
              v24 = v41;
              sub_100F4B020(__dst, &buf);
              v25 = (*(*v10 + 256))(v10);
              (*(*v23 + 56))(v23, a2, v24, __dst, v11, v25);
              if (v40 < 0)
              {
                operator delete(__p);
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
                operator delete(*__dst);
              }

              v26 = *v7;
              if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
              {
                v27 = asString();
                NetworkListOperator::getAsString(v31, &buf);
                v28 = v32 >= 0 ? v31 : v31[0];
                *v44 = 136315394;
                v45 = v27;
                v46 = 2082;
                v47 = v28;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Successfully sent selection with mode: %s and operator %{public}s to baseband, setting selection to be in progress", v44, 0x16u);
                if (v32 < 0)
                {
                  operator delete(v31[0]);
                }
              }

              if (v41 == 1)
              {
                (*(*v10 + 80))(v10);
              }
            }

            if (SBYTE7(v55) < 0)
            {
              operator delete(v54);
            }

            if (SHIBYTE(v53) < 0)
            {
              operator delete(*(&v52 + 1));
            }

            if (SHIBYTE(v51) < 0)
            {
              operator delete(*(&v50 + 1));
            }

            if (SBYTE7(v49) < 0)
            {
              operator delete(buf);
            }

            goto LABEL_32;
          }

          (*(*v10 + 88))(v10, 1, v41);
          v21 = *v7;
          if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
LABEL_32:
            if (v43)
            {
              sub_100004A34(v43);
            }

            goto LABEL_34;
          }

          v22 = asString();
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v22;
          v17 = "#I No need to change the mode from %s";
          v19 = v21;
          v20 = 12;
LABEL_31:
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v17, &buf, v20);
          goto LABEL_32;
        }

        v16 = *v7;
        if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }

        LOWORD(buf) = 0;
        v17 = "#N Carrier selection support is still unknown, cannot perform any network selection yet";
LABEL_30:
        v19 = v16;
        v20 = 2;
        goto LABEL_31;
      }

LABEL_24:
      v16 = *v7;
      if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      LOWORD(buf) = 0;
      v17 = "#N RAT selection is still unknown, not performing any network selection yet";
      goto LABEL_30;
    }

LABEL_26:
    v18 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not get model for applying network selection if possible", &buf, 2u);
    }

    goto LABEL_32;
  }

  v9 = *v5();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not get model for applying network selection", &buf, 2u);
  }

LABEL_34:
  if (v30)
  {
    sub_100004A34(v30);
  }
}

void sub_1011FB91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34)
{
  sub_100F4B3AC(v34 - 208);
  if (a34)
  {
    sub_100004A34(a34);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1011FB990(uint64_t a1)
{
  v2 = *(a1 + 120);
  v3 = (a1 + 128);
  if (v2 == (a1 + 128))
  {
LABEL_9:
    v7 = 0;
LABEL_10:
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Scan was not requested, aborting", buf, 2u);
    }

    goto LABEL_12;
  }

  while (!(*(*v2[5] + 48))(v2[5]))
  {
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
    if (v5 == v3)
    {
      goto LABEL_9;
    }
  }

  v9 = v2[5];
  v7 = v2[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v2 + 8));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Scan was requested", buf, 2u);
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  v11 = (*(*v9 + 256))(v9);
  v12 = (*(*v9 + 312))(v9);
  v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), v12);
  if ((v11 - 1) < 2)
  {
    v14 = *v13;
    if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v15 = "#I CDMA roaming is not supported, issuing a scan right away";
LABEL_27:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
LABEL_28:
    v16 = (*(*v9 + 312))(v9);
    v17 = (*(**(a1 + 48) + 16))(*(a1 + 48), v16);
    v18 = (*(*v9 + 312))(v9);
    if (v18 == 1)
    {
      v19 = 242;
      v20 = 241;
      v21 = 240;
    }

    else
    {
      if (v18 != 2)
      {
        v25 = 0;
        v23 = 0;
        v24 = 0;
LABEL_37:
        v49[0] = a1;
        v49[1] = v9;
        v50 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v51 = v17;
        ServiceMap = Registry::getServiceMap(*(a1 + 56));
        v27 = ServiceMap;
        if (v28 < 0)
        {
          v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
          v30 = 5381;
          do
          {
            v28 = v30;
            v31 = *v29++;
            v30 = (33 * v30) ^ v31;
          }

          while (v31);
        }

        std::mutex::lock(ServiceMap);
        *buf = v28;
        v32 = sub_100009510(&v27[1].__m_.__sig, buf);
        v37 = v24;
        if (v32)
        {
          v34 = v32[3];
          v33 = v32[4];
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v27);
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v33);
            v35 = 0;
            if (!v34)
            {
LABEL_45:
              v36 = *v17;
              if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Could not get MaxDataRateManager to query supported data rates", buf, 2u);
              }

              sub_1011FC374(v49, v25);
              if ((v35 & 1) == 0)
              {
                sub_100004A34(v33);
              }

              if (v50)
              {
                sub_100004A34(v50);
              }

              goto LABEL_12;
            }

LABEL_50:
            (*(*v9 + 312))(v9);
            *buf = a1;
            *&buf[8] = v17;
            v39 = v25;
            v40 = v23 | (v37 << 8);
            v41 = v9;
            v42 = v7;
            if (v7)
            {
              atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
              v43 = a1;
              v44 = v9;
              v45 = v7;
              atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            else
            {
              v43 = a1;
              v44 = v9;
              v45 = 0;
            }

            v46 = v17;
            v47 = v34;
            v48 = v33;
            if ((v35 & 1) == 0)
            {
              atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v52 = 0;
            operator new();
          }
        }

        else
        {
          v34 = 0;
        }

        std::mutex::unlock(v27);
        v33 = 0;
        v35 = 1;
        if (!v34)
        {
          goto LABEL_45;
        }

        goto LABEL_50;
      }

      v19 = 245;
      v20 = 244;
      v21 = 243;
    }

    v23 = *(a1 + v20);
    v24 = *(a1 + v19);
    v25 = *(a1 + v21) & 0xF3;
    goto LABEL_37;
  }

  if (!v11)
  {
    v22 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I CDMA roaming support is not known, erroring out of scan", buf, 2u);
    }

    sub_1011FC0A4();
  }

  if (v11 == 3)
  {
    v14 = *v13;
    if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v15 = "#I CDMA roaming allowed but RAT selection does not matter, issuing a scan right away";
    goto LABEL_27;
  }

LABEL_12:
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1011FC028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  sub_10010B9AC(v30 - 128);
  sub_1011FC4E4(&a13);
  if ((v29 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  if (a27)
  {
    sub_100004A34(a27);
  }

  if (v27)
  {
    sub_100004A34(v27);
  }

  _Unwind_Resume(a1);
}

void sub_1011FC330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100F4B580(va);
  sub_100004A34(v7);
  _Unwind_Resume(a1);
}

uint64_t sub_1011FC374(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  (*(*a1[1] + 56))(a1[1]);
  v5 = *a1[3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    ratSelectionAsStr(__p, a2);
    if (v11 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136446210;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Requesting network scan with RAT selection: %{public}s", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = *(v4 + 72);
  v8 = (*(*a1[1] + 312))(a1[1]);
  return (*(*v7 + 48))(v7, v8, a2);
}

void *sub_1011FC4E4(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_1011FC52C(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v8 = 0;
  v9 = 0;
  NetworkListController::getModel_sync(a1, a2, &v8);
  v5 = v8;
  v6 = *v4;
  if (v8)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Setting the network selection to Automatic", v7, 2u);
    }

    subscriber::simSlotAsInstance();
    WISPostSimpleMetricWithUnsignedInteger();
    WISPostSimpleMetricWithUnsignedInteger();
    sub_1011FA784(a1, a2, 0);
    (*(*v5 + 272))(v5, 1);
    sub_1011FB288(a1, a2);
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not get model for automatically selecting network", v7, 2u);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1011FC6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011FC6BC(void **a1, uint64_t a2, uint64_t *a3)
{
  v6 = (*(*a1[6] + 16))(a1[6]);
  v13 = 0;
  v14 = 0;
  NetworkListController::getModel_sync(a1, a2, &v13);
  v7 = v13;
  v8 = *v6;
  if (v13)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a3;
      if (*(a3 + 23) < 0)
      {
        v9 = *a3;
      }

      *buf = 136446210;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Setting the network selection to Manual with code: %{public}s", buf, 0xCu);
    }

    subscriber::simSlotAsInstance();
    WISPostSimpleMetricWithUnsignedInteger();
    if (((*a1)[9])(a1, a2))
    {
      WISPostSimpleMetricWithUnsignedInteger();
      sub_1011FA784(a1, a2, 1);
      v10 = (*(*v7 + 312))(v7);
      v11 = *(*(*a1[6] + 16))(a1[6], v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a3 + 23) >= 0)
        {
          v12 = a3;
        }

        else
        {
          v12 = *a3;
        }

        *buf = 136446210;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I User selected network operator: %{public}s", buf, 0xCu);
      }

      (*(*v7 + 168))(v7, a3);
      sub_1011FB288(a1, a2);
      (*(*v7 + 272))(v7, 1);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    *buf = 136446210;
    v16 = a3;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not find model to select %{public}s network", buf, 0xCu);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }
}

void sub_1011FC9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011FC9C8(uint64_t a1, unsigned int *a2)
{
  if (a2[1] == 27)
  {
    v8 = v2;
    v9 = v3;
    if (*(a2 + 1) == *(a2 + 2))
    {
      v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *a2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I CSP File update received and it is of 0 length, marking network selection as allowed by SIM", v7, 2u);
      }

      sub_1011FAC64(a1, *a2, 1);
    }
  }
}

void sub_1011FCA90(uint64_t a1)
{
  v1 = *(a1 + 224);
  v2 = *(a1 + 216);
  if (v2 != v1)
  {
    v4 = 1;
    do
    {
      v5 = *v2;
      v11 = 0;
      v12 = 0;
      NetworkListController::getModel_sync(a1, v5, &v11);
      v6 = v11;
      if (v11)
      {
        v7 = v2[2];
        if (subscriber::isSimReady())
        {
          (*(**(a1 + 72) + 72))(*(a1 + 72), v5);
          (*(*v6 + 216))(v6, v2 + 18);
        }

        isSimSettled = subscriber::isSimSettled();
        (*(*v11 + 232))(v11, v7);
        sub_1011FAD7C(a1, v5);
        v4 &= isSimSettled;
      }

      else
      {
        v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v5);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *v10 = 0;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not get model for SIM state change", v10, 2u);
        }
      }

      if (v12)
      {
        sub_100004A34(v12);
      }

      v2 += 42;
    }

    while (v2 != v1);
    if (v4)
    {
      sub_1011FCC7C(a1);
    }
  }
}

void sub_1011FCC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011FCC7C(uint64_t a1)
{
  if (*(a1 + 252) == 1)
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Radio is in reset", buf, 2u);
    }

    v3 = *(a1 + 120);
    v4 = (a1 + 128);
    if (v3 != v4)
    {
      do
      {
        (*(*v3[5] + 288))(v3[5]);
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
      }

      while (v6 != v4);
    }
  }

  else
  {
    v8 = *(a1 + 224);
    v9 = *(a1 + 216);
    if (v9 == v8)
    {
      v21 = *(a1 + 40);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Radio not in reset, but we have no SIM information. Ignoring radio mode change.", buf, 2u);
      }
    }

    else
    {
      v10 = 1;
      do
      {
        v11 = *v9;
        if ((subscriber::isSimSettled() & 1) == 0)
        {
          v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v11);
          v10 = 0;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = subscriber::asString();
            v14 = asString();
            *buf = 136315394;
            v23 = v13;
            v24 = 2080;
            v25 = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s is not settled, ignoring radio mode %s", buf, 0x16u);
            v10 = 0;
          }
        }

        v9 += 42;
      }

      while (v9 != v8);
      v15 = *(a1 + 248);
      if (v10 & 1 | (v15 != 2))
      {
        v16 = *(a1 + 40);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = asString();
          if (*(a1 + 224) - *(a1 + 216) == 168)
          {
            v18 = "SIM is";
          }

          else
          {
            v18 = "SIMs are";
          }

          *buf = 136315394;
          v23 = v17;
          v24 = 2080;
          v25 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Radio (%s), %s settled", buf, 0x16u);
          v15 = *(a1 + 248);
        }

        if (v15 == 2)
        {
          v19 = (*(*a1 + 120))(a1);
          if (!capabilities::ct::shouldRadioInitInAirplaneMode(v19))
          {
            return;
          }

          v20 = *(**(a1 + 88) + 32);
        }

        else
        {
          v20 = *(**(a1 + 88) + 32);
        }

        v20();
      }
    }
  }
}

void sub_1011FCFEC(uint64_t a1)
{
  (*(**(a1 + 72) + 40))(*(a1 + 72));
  v2 = *(a1 + 120);
  if (v2 != (a1 + 128))
  {
    do
    {
      (*(*v2[5] + 304))(v2[5]);
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (a1 + 128));
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 192);
    *__p = 67109120;
    *&__p[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Number of activated data contexts: %d", __p, 8u);
    v6 = *(a1 + 40);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 196);
    *__p = 67109120;
    *&__p[4] = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Number of data contexts rejected deactivation: %d", __p, 8u);
    v6 = *(a1 + 40);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 246))
    {
      v9 = "enabled";
    }

    else
    {
      v9 = "disabled";
    }

    *__p = 136315138;
    *&__p[4] = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Airplane mode: %s", __p, 0xCu);
    v6 = *(a1 + 40);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = asString();
    v11 = CSIBOOLAsString(*(a1 + 252));
    *__p = 136315394;
    *&__p[4] = v10;
    v18 = 2080;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Radio operating mode: %s in reset: %s", __p, 0x16u);
  }

  v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), 1);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    ratSelectionAsStr(__p, *(a1 + 240));
    v14 = v20 >= 0 ? __p : *__p;
    *buf = 136446210;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I RAT selection: %{public}s", buf, 0xCu);
    if (v20 < 0)
    {
      operator delete(*__p);
    }
  }

  if (capabilities::ct::supportsGemini(v13))
  {
    v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), 2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      ratSelectionAsStr(__p, *(a1 + 243));
      if (v20 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = *__p;
      }

      *buf = 136446210;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I RAT selection: %{public}s", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(*__p);
      }
    }
  }
}

void sub_1011FD398(uint64_t a1, uint64_t a2)
{
  if ((rest::operator==() & 1) == 0)
  {
    v4 = *(a1 + 288);
    if (v4 != (a1 + 296))
    {
      v5 = (a2 + 8);
      v6 = &_mh_execute_header;
      v7 = "#I Carrier bundle is now %s (%s)";
      do
      {
        v8 = *v5;
        v9 = *(v4 + 8);
        if (!*v5)
        {
          goto LABEL_11;
        }

        v10 = v5;
        do
        {
          if (*(v8 + 32) >= v9)
          {
            v10 = v8;
          }

          v8 = *(v8 + 8 * (*(v8 + 32) < v9));
        }

        while (v8);
        if (v10 != v5 && v9 >= *(v10 + 8))
        {
          if (rest::operator==())
          {
            goto LABEL_15;
          }

          v21 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v4 + 8));
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = asString();
            v23 = asString();
            v24 = v6;
            v25 = v7;
            v26 = asString();
            v27 = asString();
            *buf = 136315906;
            v29 = v22;
            v30 = 2080;
            v31 = v23;
            v32 = 2080;
            v33 = v26;
            v7 = v25;
            v6 = v24;
            v34 = 2080;
            v35 = v27;
            v14 = v24;
            v15 = v21;
            v16 = "#I Carrier bundle changing from %s (%s) to %s (%s)";
            v17 = 42;
            goto LABEL_13;
          }
        }

        else
        {
LABEL_11:
          v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v9);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = asString();
            v13 = asString();
            *buf = 136315394;
            v29 = v12;
            v30 = 2080;
            v31 = v13;
            v14 = v6;
            v15 = v11;
            v16 = v7;
            v17 = 22;
LABEL_13:
            _os_log_impl(v14, v15, OS_LOG_TYPE_DEFAULT, v16, buf, v17);
          }
        }

        sub_1011FAD7C(a1, *(v4 + 8));
LABEL_15:
        v18 = v4[1];
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
            v19 = v4[2];
            v20 = *v19 == v4;
            v4 = v19;
          }

          while (!v20);
        }

        v4 = v19;
      }

      while (v19 != (a1 + 296));
    }
  }
}

void sub_1011FD63C(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 280))
  {
    v5 = *a2;
    v3 = a2 + 1;
    v4 = v5;
    if (v5 == v3)
    {
      return;
    }

    v6 = *(a1 + 264);
    v7 = v6;
    while (1)
    {
      v8 = *(v4 + 7) == *(v7 + 7) && *(v4 + 8) == *(v7 + 8);
      if (!v8)
      {
        break;
      }

      v9 = v4[1];
      v10 = v4;
      if (v9)
      {
        do
        {
          v4 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v4 = v10[2];
          v8 = *v4 == v10;
          v10 = v4;
        }

        while (!v8);
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
          v8 = *v12 == v7;
          v7 = v12;
        }

        while (!v8);
      }

      v7 = v12;
      if (v4 == v3)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 264);
  }

  v13 = (a1 + 272);
  if (v6 != (a1 + 272))
  {
    do
    {
      v18 = 0;
      v19 = 0;
      NetworkListController::getModel_sync(a1, *(v6 + 7), &v18);
      if (v18)
      {
        if ((*(*v18 + 336))(v18, *(v6 + 8)))
        {
          sub_1011FAD7C(a1, *(v6 + 7));
        }
      }

      else
      {
        v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v6 + 7));
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v17 = sub_100072578(*(v6 + 8));
          *buf = 136315138;
          v21 = v17;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not find model for device type (%s) change", buf, 0xCu);
        }
      }

      if (v19)
      {
        sub_100004A34(v19);
      }

      v15 = v6[1];
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
          v16 = v6[2];
          v8 = *v16 == v6;
          v6 = v16;
        }

        while (!v8);
      }

      v6 = v16;
    }

    while (v16 != v13);
  }
}

void sub_1011FD88C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011FD8AC(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 328))
  {
    v3 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v4 = *(a1 + 312);
    v5 = v4;
    while (1)
    {
      v6 = *(v3 + 7) == *(v5 + 7) && *(v3 + 8) == *(v5 + 8);
      if (!v6)
      {
        break;
      }

      v7 = v3[1];
      v8 = v3;
      if (v7)
      {
        do
        {
          v3 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v3 = v8[2];
          v6 = *v3 == v8;
          v8 = v3;
        }

        while (!v6);
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
          v6 = *v10 == v5;
          v5 = v10;
        }

        while (!v6);
      }

      v5 = v10;
      if (v3 == a2 + 1)
      {
        return;
      }
    }
  }

  else
  {
    v4 = *(a1 + 312);
  }

  v11 = (a1 + 320);
  if (v4 != (a1 + 320))
  {
    v12 = a2 + 1;
    do
    {
      v13 = *v12;
      v14 = *(v4 + 7);
      if (!*v12)
      {
        goto LABEL_31;
      }

      v15 = v12;
      do
      {
        if (*(v13 + 28) >= v14)
        {
          v15 = v13;
        }

        v13 = *(v13 + 8 * (*(v13 + 28) < v14));
      }

      while (v13);
      if (v15 != v12 && v14 >= *(v15 + 7))
      {
        if (*(v15 + 8) == *(v4 + 8))
        {
          goto LABEL_35;
        }

        v23 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = asString();
          v25 = asString();
          *buf = 136315394;
          v27 = v24;
          v28 = 2080;
          v29 = v25;
          v18 = v23;
          v19 = "#I RoamingResult changing from %s to %s";
          v20 = 22;
          goto LABEL_33;
        }
      }

      else
      {
LABEL_31:
        v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = asString();
          *buf = 136315138;
          v27 = v17;
          v18 = v16;
          v19 = "#I RoamingResult is now %s";
          v20 = 12;
LABEL_33:
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, buf, v20);
        }
      }

      sub_1011FAD7C(a1, *(v4 + 7));
LABEL_35:
      v21 = v4[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v4[2];
          v6 = *v22 == v4;
          v4 = v22;
        }

        while (!v6);
      }

      v4 = v22;
    }

    while (v22 != v11);
  }
}

void sub_1011FDB90(uint64_t a1)
{
  v2 = *(a1 + 360);
  if (v2 == (a1 + 368))
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = v2[1];
      v5 = v2;
      if (v4)
      {
        do
        {
          v6 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v6 = v5[2];
          v7 = *v6 == v5;
          v5 = v6;
        }

        while (!v7);
      }

      v3 += *(v2 + 8);
      v2 = v6;
    }

    while (v6 != (a1 + 368));
  }

  if (v3 != *(a1 + 192))
  {
    *(a1 + 192) = v3;
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I There are now %d activated contexts, rechecking to see if we can request the manual network scan.", v9, 8u);
    }

    sub_1011FA050(a1);
  }
}

void sub_1011FDCAC(uint64_t a1)
{
  v2 = *(a1 + 384);
  if (v2 == (a1 + 392))
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = v2[1];
      v5 = v2;
      if (v4)
      {
        do
        {
          v6 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v6 = v5[2];
          v7 = *v6 == v5;
          v5 = v6;
        }

        while (!v7);
      }

      v3 += *(v2 + 8);
      v2 = v6;
    }

    while (v6 != (a1 + 392));
  }

  if (v3 != *(a1 + 196))
  {
    *(a1 + 196) = v3;
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I There are now %d contexts that rejected deactivation, rechecking to see if we can request the manual network scan.", v9, 8u);
    }

    sub_1011FA050(a1);
  }
}

void sub_1011FDDC8(uint64_t a1, int a2)
{
  v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Baseband refresh start received", &v5, 2u);
  }

  v5 = 0;
  v6 = 0;
  NetworkListController::getModel_sync(a1, a2, &v5);
  if (v5)
  {
    (*(*v5 + 288))(v5);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1011FDEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011FDECC(uint64_t a1, int a2)
{
  v8 = 0;
  v2 = a2;
  v3 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(&v8, v2, v3, v4);
  sub_10000501C(&__p, "/cc/events/network_list_fetch_complete");
  object = v8;
  v8 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_1011FDF70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_1011FDFB4(std::string *a1, uint64_t *a2, MCCAndMNC *this)
{
  v6 = *a2;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  MCCAndMNC::getMcc(&v31, this);
  MCCAndMNC::getMnc(&buf, this);
  formPLMN(&v31, &buf);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(*(&buf + 1));
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(*(&v31 + 1));
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v7 = a2[1];
  if (v7 && ((*(*v7 + 152))(&v31), (BYTE8(v39) & 1) != 0))
  {
    RAT = NetworkListOperator::getRAT(&v31);
    v9 = RAT;
    if (RAT == 11 || RAT == -1)
    {
      v10 = *a2[3];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = a1;
        }

        else
        {
          v11 = a1->__r_.__value_.__r.__words[0];
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E Invalid RAT for network operator %{public}s", &buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  buf = 0u;
  v41 = 0u;
  MCCAndMNC::getMcc(&__str, this);
  MCCAndMNC::getMnc(&v28, this);
  MCCAndMNC::MCCAndMNC(&buf, &__str, &v28);
  LODWORD(v44) = v9;
  if (v30 < 0)
  {
    operator delete(*(&v28 + 1));
  }

  if (SHIBYTE(__str_16) < 0)
  {
    operator delete(*(&__str + 1));
  }

  v27 = 0;
  __str_16 = 0u;
  v26 = 0u;
  __str = 0u;
  v12 = *(v6 + 144);
  v13 = *(a2 + 8);
  MCC::MCC(v17, &buf);
  MCC::MCC(&v20, &v42);
  v23 = v44;
  (*(*v12 + 16))(&__str, v12, v13, v17, 5);
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v27 == 1)
  {
    v14 = HIBYTE(v26);
    if (v26 < 0)
    {
      v14 = v26;
    }

    if (v14)
    {
      p_str = (&__str_16 + 8);
LABEL_36:
      std::string::operator=(a1, p_str);
      goto LABEL_37;
    }

    v16 = BYTE7(__str_16);
    if (SBYTE7(__str_16) < 0)
    {
      v16 = *(&__str + 1);
    }

    if (v16)
    {
      p_str = &__str;
      goto LABEL_36;
    }
  }

  else if (BYTE8(v39) == 1)
  {
    NetworkListOperator::getCompositeName(&v28, &v31);
    if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(a1->__r_.__value_.__l.__data_);
    }

    *&a1->__r_.__value_.__l.__data_ = v28;
    a1->__r_.__value_.__r.__words[2] = v29;
  }

LABEL_37:
  if (v27 == 1)
  {
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*(&__str_16 + 1));
    }

    if (SBYTE7(__str_16) < 0)
    {
      operator delete(__str);
    }
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(*(&v42 + 1));
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(*(&buf + 1));
  }

  if (BYTE8(v39) == 1)
  {
    if (SBYTE7(v38) < 0)
    {
      operator delete(v37);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(*(&v35 + 1));
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(*(&v33 + 1));
    }

    if (SBYTE7(v32) < 0)
    {
      operator delete(v31);
    }
  }
}

void sub_1011FE370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  sub_10038E598(&a22);
  sub_1002FECBC(v47 - 144);
  sub_1011FF1F4(&a40);
  if (*(v46 + 23) < 0)
  {
    operator delete(*v46);
  }

  _Unwind_Resume(a1);
}

void sub_1011FEABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_group_t group, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, char a42)
{
  sub_100F4B3AC(&a42);
  sub_10065F7C8(v43 - 224);
  if (v42)
  {
    dispatch_release(v42);
  }

  _Unwind_Resume(a1);
}

void sub_1011FEBB0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = (*(**(*a1 + 48) + 16))(*(*a1 + 48));
  v8 = (*(**a3 + 272))();
  if (capabilities::ct::shouldRadioInitInAirplaneMode(v8))
  {
    v9 = *v7;
    if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v10 = "#I Device supports radio init in airplane mode, bringing baseband online";
LABEL_30:
    v20 = v9;
    v21 = 2;
LABEL_31:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v10, buf, v21);
    return;
  }

  v11 = (*(**(v6 + 88) + 40))(*(v6 + 88), a2);
  v12 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v33 = asString();
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Network attach state is %s", buf, 0xCu);
  }

  if ((v11 - 1) < 2)
  {
    v9 = *v7;
    if (!os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v10 = "#I Skipping network attach";
    goto LABEL_30;
  }

  if (v11)
  {
    v13 = v11 == 3;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = *(v6 + 248);
    v15 = *v7;
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14 == 2)
    {
      if (v16)
      {
        v17 = asString();
        *buf = 136315138;
        v33 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Radio mode is %s, initiating network attach", buf, 0xCu);
      }

      (*(**(v6 + 88) + 32))(*(v6 + 88), a2, 1);
      v18 = *(v6 + 72);
      NetworkListOperator::NetworkListOperator(v24);
      v19 = a1[1];
      group = v19;
      if (v19)
      {
        dispatch_retain(v19);
        dispatch_group_enter(v19);
      }

      (*(*v18 + 64))(v18, a2, 0, v24, &group);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      if (v31 < 0)
      {
        operator delete(__p);
      }

      if (v29 < 0)
      {
        operator delete(v28);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 < 0)
      {
        operator delete(v24[0]);
      }
    }

    else if (v16)
    {
      v22 = asString();
      *buf = 136315138;
      v33 = v22;
      v10 = "#I Delaying network attach until radio mode (%s) is online";
      v20 = v15;
      v21 = 12;
      goto LABEL_31;
    }
  }
}

void sub_1011FEF28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, char a10)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  sub_100F4B3AC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1011FEF5C(uint64_t a1, int a2, int a3)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if (a3)
  {
    v7 = *(a1 + 440);
    if (v7)
    {
      v8 = a1 + 440;
      v9 = a1 + 440;
      do
      {
        if (*(v7 + 28) >= a2)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * (*(v7 + 28) < a2));
      }

      while (v7);
      goto LABEL_13;
    }

LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v10 = *(a1 + 416);
  if (!v10)
  {
    goto LABEL_15;
  }

  v8 = a1 + 416;
  v9 = a1 + 416;
  do
  {
    if (*(v10 + 28) >= a2)
    {
      v9 = v10;
    }

    v10 = *(v10 + 8 * (*(v10 + 28) < a2));
  }

  while (v10);
LABEL_13:
  if (v9 == v8 || *(v9 + 28) > a2)
  {
    goto LABEL_15;
  }

  v11 = *(v9 + 32);
LABEL_16:
  v12 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v13 = "Operator";
    }

    else
    {
      v13 = "Carrier";
    }

    v15 = 136315394;
    v16 = v13;
    v17 = 2080;
    v18 = asStringBool(v11 & 1);
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %sBlocksCallsOverCS: %s", &v15, 0x16u);
  }

  return v11 & 1;
}

uint64_t sub_1011FF0D8(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  NetworkListController::getModel_sync(a1, a2, &v8);
  v5 = v8;
  if (v8)
  {
    v2 = (*(*v8 + 328))(v8);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (!v5)
  {
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find model for network needs reselect query", &v8, 2u);
    }

    v2 = 0;
  }

  return v2 & 1;
}

void sub_1011FF1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011FF1F4(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void sub_1011FF268(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1011FF2BC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011FF2FC(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_1011FF34C(void **a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  v4 = v2[9];
  v5 = v1[1];
  *buf = v5;
  if (v5)
  {
    dispatch_retain(v5);
    if (*buf)
    {
      dispatch_group_enter(*buf);
    }
  }

  (*(*v4 + 32))(v4, buf);
  if (*buf)
  {
    dispatch_group_leave(*buf);
    if (*buf)
    {
      dispatch_release(*buf);
    }
  }

  v6 = v2[15];
  if (v6 != v2 + 16)
  {
    do
    {
      v7 = v6[5];
      v8 = v1[1];
      group = v8;
      if (v8)
      {
        dispatch_retain(v8);
        if (group)
        {
          dispatch_group_enter(group);
        }
      }

      (*(*v7 + 24))(v7, &group);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
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

    while (v10 != v2 + 16);
  }

  v12 = v2[11];
  v13 = v1[1];
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
    dispatch_group_enter(v13);
  }

  (*(*v12 + 24))(v12, &object);
  if (object)
  {
    dispatch_group_leave(object);
    if (object)
    {
      dispatch_release(object);
    }
  }

  ctu::RestModule::disconnect((v2 + 25));
  sub_1000FF844(&v16);
  return sub_1000049E0(&v15);
}

void sub_1011FF554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group, dispatch_group_t a12, dispatch_group_t a13)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1011FF5C8(void **a1)
{
  v1 = *a1;
  v18 = a1;
  v19 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
LABEL_11:
  v13 = *(v2 + 184);
  *(v2 + 176) = v12;
  *(v2 + 184) = v11;
  if (v13)
  {
    sub_100004A34(v13);
  }

  v15 = v1[1];
  v14 = v1[2];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(v2 + 152);
  *(v2 + 144) = v15;
  *(v2 + 152) = v14;
  if (v16)
  {
    sub_100004A34(v16);
  }

  v17 = *(v2 + 16);
  if (v17)
  {
    if (std::__shared_weak_count::lock(v17))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101200188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group, dispatch_group_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_group_t a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  if (a32)
  {
    std::__shared_weak_count::__release_weak(a32);
  }

  std::__shared_weak_count::__release_weak(v33);
  sub_100004A34(v32);
  sub_100E1156C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1012002F0(void *a1)
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
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 0x40000000;
        v11[2] = sub_101200430;
        v11[3] = &unk_101F1B460;
        v11[4] = v3;
        v6 = v3[2];
        if (!v6 || (v7 = v3[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
        {
          sub_100013CC4();
        }

        v9 = v8;
        v10 = v3[3];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_101203714;
        block[3] = &unk_101F1B5D8;
        block[5] = v7;
        v13 = v9;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v11;
        dispatch_async(v10, block);
        if (v13)
        {
          sub_100004A34(v13);
        }

        sub_100004A34(v9);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_101200430(uint64_t a1)
{
  AwdSelectionTypeForSlot_sync = NetworkListController::getAwdSelectionTypeForSlot_sync(*(a1 + 32), 1);

  return sNetworkListPostMetric_SelectionChanged(AwdSelectionTypeForSlot_sync);
}

uint64_t sub_101200464(uint64_t result, uint64_t a2)
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

void sub_101200480(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1012004B0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F1B4C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10120052C(void *a1)
{
  *a1 = off_101F1B590;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101200578(void *a1)
{
  *a1 = off_101F1B590;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1012005E4(uint64_t a1, int a2)
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
        v8 = *(v7 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315138;
          v10 = CSIBOOLAsString(a2);
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Command driver state update received with ready %s", &v9, 0xCu);
        }

        (*(**(v7 + 88) + 32))(*(v7 + 88), 3, 3);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_101200734(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = (*(**(v9 + 48) + 16))(*(v9 + 48), a2);
    v23 = 0;
    v24 = 0;
    NetworkListController::getModel_sync(v9, a2, &v23);
    v11 = v23;
    if (v23)
    {
      if (a3)
      {
        if (a3 == 2)
        {
          if (HIDWORD(a3) == 4)
          {
            v15 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I UIM is still not initialized, not sending processing further", buf, 2u);
            }
          }

          else
          {
            v16 = (*(*v23 + 208))(v23);
            v17 = v16;
            switch(v16)
            {
              case 0:
                goto LABEL_23;
              case 1:
                v20 = *v10;
                if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Current mode is manual, and network selection has failed", buf, 2u);
                }

                (*(*v11 + 88))(v11, 0, 1);
                (*(*v11 + 320))(v11, 1);
                v21 = *(v9 + 104);
                v22 = (*(*v11 + 208))(v11);
                (*(*v21 + 112))(v21, a2, 0, v22);
                (*(**(v9 + 104) + 120))(*(v9 + 104), a2);
                break;
              case 2:
LABEL_23:
                v18 = *v10;
                if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
                {
                  v19 = asString();
                  *buf = 136315138;
                  v26 = v19;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#N Current mode is %s and received network selection error", buf, 0xCu);
                }

                (*(*v11 + 88))(v11, 0, v17);
                break;
            }
          }
        }

        else if (a3 == 1)
        {
          v12 = *v10;
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N Received error from driver for network scan command", buf, 2u);
          }

          sub_1011FC0A4();
        }

LABEL_29:
        if (v24)
        {
          sub_100004A34(v24);
        }

        goto LABEL_31;
      }

      v13 = *v10;
      if (!os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      *buf = 0;
      v14 = "Unknown command failure";
    }

    else
    {
      v13 = *v10;
      if (!os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      *buf = 0;
      v14 = "Could not find model for network response error";
    }

    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_29;
  }

LABEL_31:

  sub_100004A34(v8);
}

void sub_101200B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_101200B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = *a3;
    v10 = *(a3 + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v75 = (*(**(v9 + 48) + 16))(*(v9 + 48), a2);
    v77 = 0;
    v78 = 0;
    NetworkListController::getModel_sync(v9, a2, &v77);
    if (v77)
    {
      if (v11)
      {
        v71 = v8;
        State = NetworkListScanResult::getState(v11);
        v12 = *v75;
        if (os_log_type_enabled(*v75, OS_LOG_TYPE_DEFAULT))
        {
          v13 = asString();
          *buf = 136315138;
          *&buf[4] = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Network Scan Result received: %s", buf, 0xCu);
        }

        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v76 = (*(**(v9 + 48) + 16))(*(v9 + 48), a2);
        *v109 = 0;
        v110 = 0;
        v111 = 0;
        NetworkListScanResult::getOperators();
        v92[0] = 0;
        v92[1] = 0;
        theArray = v92;
        v14 = *v109;
        v15 = v110;
        v74 = v9;
        v72 = a2;
        if (*v109 == v110)
        {
          v17 = v92;
        }

        else
        {
          do
          {
            v108 = 0;
            v106 = 0u;
            v107 = 0u;
            *buf = 0u;
            v105 = 0u;
            NetworkListOperator::getMCC(__dst, v14);
            NetworkListOperator::getMNC(&v87, v14);
            RAT = NetworkListOperator::getRAT(v14);
            MCCAndMNC::MCCAndMNC(buf, __dst, &v87);
            LODWORD(v108) = RAT;
            if (v90 < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v80[1]) < 0)
            {
              operator delete(*&__dst[8]);
            }

            NetworkListOperator::getNetworkNameSource(v14);
            v87 = 0;
            if (!*sub_100DA6A80(&theArray, &v87))
            {
              operator new();
            }

            if (SHIBYTE(v107) < 0)
            {
              operator delete(*(&v106 + 1));
            }

            if (SHIBYTE(v105) < 0)
            {
              operator delete(*&buf[8]);
            }

            v14 = (v14 + 136);
          }

          while (v14 != v15);
          v17 = theArray;
          a2 = a2;
        }

        v85 = 0;
        v86[0] = 0;
        v86[1] = 0;
        v20 = *(v9 + 144);
        v84[0] = 0;
        v84[1] = 0;
        v83 = v84;
        if (v17 != v92)
        {
          v21 = 0;
          v22 = v84;
          while (1)
          {
            *__dst = 0;
            if (v22 == v84)
            {
              break;
            }

            v23 = v84;
            if (v21)
            {
              do
              {
                v24 = v21;
                v21 = v21[1];
              }

              while (v21);
            }

            else
            {
              do
              {
                v24 = v23[2];
                v25 = *v24 == v23;
                v23 = v24;
              }

              while (v25);
            }

            if (MCCAndMNC::operator<())
            {
              if (!v84[0])
              {
                goto LABEL_41;
              }

LABEL_43:
              *__dst = v24;
              v26 = v24 + 1;
              goto LABEL_45;
            }

            v26 = sub_100DA6A80(&v83, __dst);
LABEL_45:
            if (!*v26)
            {
              goto LABEL_46;
            }

            v27 = *(v17 + 1);
            if (v27)
            {
              do
              {
                v28 = v27;
                v27 = *v27;
              }

              while (v27);
            }

            else
            {
              do
              {
                v28 = *(v17 + 2);
                v25 = *v28 == v17;
                v17 = v28;
              }

              while (!v25);
            }

            if (v28 == v92)
            {
              goto LABEL_54;
            }

            v22 = v83;
            v21 = v84[0];
            v17 = v28;
          }

          v24 = v84;
          if (!v21)
          {
LABEL_41:
            *__dst = v84;
LABEL_46:
            memset(buf, 0, sizeof(buf));
            *&v105 = 0;
            sub_101206150();
          }

          goto LABEL_43;
        }

LABEL_54:
        v29 = v11;
        (*(*v20 + 24))(&v85, v20, a2, &v83);
        sub_100B770E0(&v83, v84[0]);
        for (i = *v109; i != v110; i = (i + 136))
        {
          v108 = 0;
          v106 = 0u;
          v107 = 0u;
          *buf = 0u;
          v105 = 0u;
          NetworkListOperator::getMCC(__dst, i);
          NetworkListOperator::getMNC(&v87, i);
          v31 = NetworkListOperator::getRAT(i);
          MCCAndMNC::MCCAndMNC(buf, __dst, &v87);
          LODWORD(v108) = v31;
          if (v90 < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v80[1]) < 0)
          {
            operator delete(*&__dst[8]);
          }

          v32 = sub_100DA6360(&v85);
          if (v86 == v32)
          {
            v37 = *v76;
            if (!os_log_type_enabled(*v76, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_104;
            }

            NetworkListOperator::getMCC(__dst, i);
            IntValue = MCC::getIntValue(__dst);
            NetworkListOperator::getMNC(&v87, i);
            IntegerWidth = MNC::getIntegerWidth(&v87);
            NetworkListOperator::getMNC(v102, i);
            v40 = MCC::getIntValue(v102);
            NetworkListOperator::getRAT(i);
            v41 = asString();
            *v93 = 67109890;
            *&v93[4] = IntValue;
            LOWORD(v94) = 1024;
            *(&v94 + 2) = IntegerWidth;
            HIWORD(v94) = 1024;
            *v95 = v40;
            *&v95[4] = 2080;
            *&v95[6] = v41;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Did not find overridden name for %03d-%0.*d (%s)", v93, 0x1Eu);
            if (v103 < 0)
            {
              operator delete(*&v102[8]);
            }

            if (v90 < 0)
            {
              operator delete(__p);
            }

            if ((SHIBYTE(v80[1]) & 0x80000000) == 0)
            {
              goto LABEL_104;
            }

            v42 = *&__dst[8];
            goto LABEL_103;
          }

          v82 = 0;
          *v80 = 0u;
          v81 = 0u;
          *__dst = 0u;
          sub_100DA65B8(__dst, (v32 + 13));
          if ((v82 & 1) == 0)
          {
            v43 = *v76;
            if (os_log_type_enabled(*v76, OS_LOG_TYPE_DEFAULT))
            {
              NetworkListOperator::getMCC(&v87, i);
              v44 = MCC::getIntValue(&v87);
              NetworkListOperator::getMNC(v102, i);
              v45 = MNC::getIntegerWidth(v102);
              NetworkListOperator::getMNC(v93, i);
              v46 = MCC::getIntValue(v93);
              NetworkListOperator::getRAT(i);
              v47 = asString();
              *v97 = 67109890;
              *&v97[4] = v44;
              v98 = 1024;
              v99 = v45;
              v100 = 1024;
              v101[0] = v46;
              LOWORD(v101[1]) = 2080;
              *(&v101[1] + 2) = v47;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I Found overridden name for %03d-%0.*d (%s) but it has no value", v97, 0x1Eu);
              if (v96 < 0)
              {
                operator delete(v94);
              }

              if (v103 < 0)
              {
                operator delete(*&v102[8]);
              }

              if (v90 < 0)
              {
                operator delete(__p);
              }
            }

            goto LABEL_98;
          }

          v33 = HIBYTE(v81);
          if (v81 < 0)
          {
            v33 = v81;
          }

          if (v33)
          {
            v34 = *v76;
            if (os_log_type_enabled(*v76, OS_LOG_TYPE_DEFAULT))
            {
              NetworkListOperator::getCompositeName(&v87, i);
              v35 = &v87;
              if (v89 < 0)
              {
                v35 = v87;
              }

              if (v81 >= 0)
              {
                v36 = &v80[1];
              }

              else
              {
                v36 = v80[1];
              }

              *v102 = 136446466;
              *&v102[4] = v35;
              *&v102[12] = 2082;
              *&v102[14] = v36;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Network name is being overridden with long name from %{public}s to %{public}s", v102, 0x16u);
              if (v89 < 0)
              {
                operator delete(v87);
              }
            }
          }

          else
          {
            v48 = HIBYTE(v80[0]);
            if (SHIBYTE(v80[0]) < 0)
            {
              v48 = *&__dst[8];
            }

            if (!v48)
            {
              goto LABEL_98;
            }

            v49 = *v76;
            if (os_log_type_enabled(*v76, OS_LOG_TYPE_DEFAULT))
            {
              NetworkListOperator::getCompositeName(&v87, i);
              v50 = &v87;
              if (v89 < 0)
              {
                v50 = v87;
              }

              v51 = __dst;
              if (SHIBYTE(v80[0]) < 0)
              {
                v51 = *__dst;
              }

              *v102 = 136446466;
              *&v102[4] = v50;
              *&v102[12] = 2082;
              *&v102[14] = v51;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I Network name is being overridden with short name from %{public}s to %{public}s", v102, 0x16u);
              if (v89 < 0)
              {
                operator delete(v87);
              }
            }
          }

          NetworkListOperator::setName();
LABEL_98:
          if (v82 != 1)
          {
            goto LABEL_104;
          }

          if (SHIBYTE(v81) < 0)
          {
            operator delete(v80[1]);
          }

          if ((SHIBYTE(v80[0]) & 0x80000000) == 0)
          {
            goto LABEL_104;
          }

          v42 = *__dst;
LABEL_103:
          operator delete(v42);
LABEL_104:
          if (SHIBYTE(v107) < 0)
          {
            operator delete(*(&v106 + 1));
          }

          if (SHIBYTE(v105) < 0)
          {
            operator delete(*&buf[8]);
          }
        }

        v52 = v29;
        NetworkListScanResult::replaceOperators();
        sub_100DA68DC(&v85, v86[0]);
        sub_100B770E0(&theArray, v92[0]);
        *buf = v109;
        sub_100F4B580(buf);
        v8 = v71;
        if (v10)
        {
          sub_100004A34(v10);
        }

        theArray = 0;
        ServiceMap = Registry::getServiceMap(*(v9 + 56));
        v54 = ServiceMap;
        if (v55 < 0)
        {
          v56 = (v55 & 0x7FFFFFFFFFFFFFFFLL);
          v57 = 5381;
          do
          {
            v55 = v57;
            v58 = *v56++;
            v57 = (33 * v57) ^ v58;
          }

          while (v58);
        }

        std::mutex::lock(ServiceMap);
        *buf = v55;
        v59 = sub_100009510(&v54[1].__m_.__sig, buf);
        if (v59)
        {
          v60 = v59[3];
          v61 = v59[4];
          if (v61)
          {
            atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v54);
            atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v61);
            v62 = 0;
            goto LABEL_119;
          }
        }

        else
        {
          v60 = 0;
        }

        std::mutex::unlock(v54);
        v61 = 0;
        v62 = 1;
LABEL_119:
        (*(*v60 + 80))(__dst, v60, v72, 1, @"RemoveNetworksFromManualScanResult", 0, 0);
        sub_10006DD00(&theArray, __dst);
        sub_10000A1EC(__dst);
        if ((v62 & 1) == 0)
        {
          sub_100004A34(v61);
        }

        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
          v64 = Count;
          if (Count)
          {
            *&v102[8] = 0;
            *&v102[16] = 0;
            *v102 = &v102[8];
            if (Count >= 1)
            {
              v65 = 0;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(theArray, v65);
                if (ValueAtIndex)
                {
                  CFGetTypeID(ValueAtIndex);
                  CFStringGetTypeID();
                }

                memset(buf, 0, sizeof(buf));
                *&v105 = 0;
                ctu::cf::assign();
                *__dst = *buf;
                v80[0] = v105;
                sub_10017695C(v102, __dst);
                if (SHIBYTE(v80[0]) < 0)
                {
                  operator delete(*__dst);
                }

                ++v65;
              }

              while (v64 != v65);
            }

            *v93 = 0;
            v94 = 0;
            *v95 = 0;
            NetworkListScanResult::getOperators();
            operator new();
          }

          v67 = *v75;
          if (!os_log_type_enabled(*v75, OS_LOG_TYPE_DEFAULT))
          {
LABEL_136:
            sub_100010250(&theArray);
            v69 = v77;
            *buf = v52;
            *&buf[8] = v10;
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v69 + 40))(v69, buf);
            if (*&buf[8])
            {
              sub_100004A34(*&buf[8]);
            }

            if (State <= 1)
            {
              if (State)
              {
                if (State != 1)
                {
                  goto LABEL_150;
                }

                goto LABEL_149;
              }
            }

            else
            {
              if ((State - 2) < 2)
              {
                goto LABEL_142;
              }

              if (State != 4)
              {
                goto LABEL_150;
              }
            }

            if (!(*(*v69 + 112))(v69))
            {
              v70 = *v75;
              if (os_log_type_enabled(*v75, OS_LOG_TYPE_DEFAULT))
              {
                *__dst = 0;
                _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#N No operators in scanned result", __dst, 2u);
              }

LABEL_142:
              sub_1011FC0A4();
            }

            sub_1011FDECC(v74 + 200, v72);
LABEL_149:
            sub_1011F9E48(v74, v72, State);
            goto LABEL_150;
          }

          *buf = 0;
          v68 = "#I Filter PLMNs key value in the carrier bundle is empty";
        }

        else
        {
          v67 = *v75;
          if (!os_log_type_enabled(*v75, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_136;
          }

          *buf = 0;
          v68 = "#I There are no PLMNs mentioned in the bundle to filter";
        }

        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, v68, buf, 2u);
        goto LABEL_136;
      }

      v18 = *v75;
      if (os_log_type_enabled(*v75, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v19 = "Invalid NetworkListScanResult";
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *v75;
      if (os_log_type_enabled(*v75, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v19 = "Could not get model for scan result";
LABEL_30:
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v19, buf, 2u);
      }
    }

LABEL_150:
    if (v78)
    {
      sub_100004A34(v78);
    }

    if (v10)
    {
      sub_100004A34(v10);
    }
  }

  sub_100004A34(v8);
}

void sub_101201BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, const void *a40, uint64_t a41, uint64_t a42, char a43)
{
  *(v44 - 208) = &a43;
  sub_100F4B580((v44 - 208));
  sub_100009970(v44 - 240, *(v44 - 232));
  sub_100010250(&a40);
  if (a22)
  {
    sub_100004A34(a22);
  }

  if (v43)
  {
    sub_100004A34(v43);
  }

  sub_100004A34(a10);
  _Unwind_Resume(a1);
}

void sub_101201F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        v11 = *a3;
        v10 = *(a3 + 8);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = (*(**(v9 + 48) + 16))(*(v9 + 48), a2);
        v13 = v12;
        if (v11)
        {
          v28 = 0;
          v29 = 0;
          NetworkListController::getModel_sync(v9, a2, &v28);
          v14 = v28;
          if (v28)
          {
            Result = NetworkListSelectionResult::getResult(v11);
            v16 = *v13;
            v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
            if (Result)
            {
              if (v17)
              {
                NetworkListSelectionResult::getMode(v11);
                v18 = asString();
                ResultAsString = NetworkListSelectionResult::getResultAsString(v11);
                *buf = 136315394;
                v31 = v18;
                v32 = 2080;
                v33 = ResultAsString;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#N Network %s Selection failed: %s", buf, 0x16u);
              }

              v20 = 3;
            }

            else if (v17)
            {
              *buf = 0;
              v20 = 2;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Network Selection Result received, selection has successfully completed", buf, 2u);
            }

            else
            {
              v20 = 2;
            }

            (*(**(v9 + 88) + 32))(*(v9 + 88), a2, v20);
            v24 = NetworkListSelectionResult::getResult(v11);
            Mode = NetworkListSelectionResult::getMode(v11);
            (*(*v14 + 88))(v14, v24 == 0, Mode);
            (*(*v14 + 320))(v14, 0);
            v26 = *(v9 + 104);
            v27 = NetworkListSelectionResult::getMode(v11);
            (*(*v26 + 112))(v26, a2, 1, v27);
          }

          else
          {
            v22 = *v13;
            if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
            {
              NetworkListSelectionResult::getMode(v11);
              v23 = asString();
              *buf = 136315138;
              v31 = v23;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Could not find model for %s selection result", buf, 0xCu);
            }
          }

          if (v29)
          {
            sub_100004A34(v29);
          }
        }

        else
        {
          v21 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#N Invalid network selection result", buf, 2u);
          }
        }

        if (v10)
        {
          sub_100004A34(v10);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_1012022E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_101202320(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (!v11)
      {
LABEL_137:
        sub_100004A34(v10);
        return;
      }

      sub_10002D960(v65, a3);
      sub_10002D960(v59, a4);
      v12 = (*(**(v11 + 48) + 16))(*(v11 + 48), a2);
      v83 = 0;
      v84 = 0;
      NetworkListController::getModel_sync(v11, a2, &v83);
      v13 = v83;
      if (!v83)
      {
        v40 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Could not find model for manual selection update", buf, 2u);
        }

        goto LABEL_125;
      }

      (*(*v83 + 128))(v83);
      if (v70 == 1 && v64 == 1)
      {
        v14 = *v12;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          MCCAndMNC::getMcc(&v71, v59);
          IntValue = MCC::getIntValue(&v71);
          MCCAndMNC::getMnc(&v88, v59);
          IntegerWidth = MNC::getIntegerWidth(&v88);
          MCCAndMNC::getMnc(&v112, v59);
          v17 = MCC::getIntValue(&v112);
          MCCAndMNC::getMcc(&type, v65);
          v18 = MCC::getIntValue(&type);
          MCCAndMNC::getMnc(&v79, v65);
          v19 = MNC::getIntegerWidth(&v79);
          MCCAndMNC::getMnc(&__dst, v65);
          v20 = MCC::getIntValue(&__dst);
          *buf = 67110400;
          v100 = IntValue;
          LOWORD(v101) = 1024;
          *(&v101 + 2) = IntegerWidth;
          HIWORD(v101) = 1024;
          v102 = v17;
          v103 = 1024;
          v104 = v18;
          v105 = 1024;
          v106 = v19;
          v107 = 1024;
          v108 = v20;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Baseband has selected a different PLMN %03d-%0.*d than the one selected by user %03d-%0.*d", buf, 0x26u);
          if (v78 < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__size_);
          }

          if (v80 < 0)
          {
            operator delete(v79.__r_.__value_.__l.__size_);
          }

          if (v82 < 0)
          {
            operator delete(type.__r_.__value_.__l.__size_);
          }

          if (v113 < 0)
          {
            operator delete(v112.__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(v91) < 0)
          {
            operator delete(v89);
          }

          if (v73 < 0)
          {
            operator delete(v72);
          }
        }
      }

      else
      {
        v21 = *v12;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Baseband has selected a different PLMN than the one selected by user", buf, 2u);
        }
      }

      sub_10002D960(buf, v65);
      sub_10002D960(&v71, v59);
      v22 = (*(**(v11 + 48) + 16))(*(v11 + 48), a2);
      v94 = 0;
      v95 = 0;
      NetworkListController::getModel_sync(v11, a2, &v94);
      theString = 0;
      v88 = v11;
      v89 = v94;
      v90 = v95;
      if (v95)
      {
        atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v91 = v22;
      v92 = a2;
      memset(&v79, 0, sizeof(v79));
      if ((v111 & 1) == 0)
      {
        sub_1000D1644();
      }

      sub_1011FDFB4(&v79, &v88, buf);
      v23 = *v22;
      if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = &v79;
        if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v24 = v79.__r_.__value_.__r.__words[0];
        }

        LODWORD(v112.__r_.__value_.__l.__data_) = 136446210;
        *(v112.__r_.__value_.__r.__words + 4) = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I User selected PLMN's network name %{public}s", &v112, 0xCu);
      }

      if (v76 != 1)
      {
        v96 = 0;
        (*(**(v11 + 176) + 16))(&v96);
        MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v96);
        v42 = theString;
        theString = MutableCopy;
        v112.__r_.__value_.__r.__words[0] = v42;
        sub_100305E28(&v112.__r_.__value_.__l.__data_);
        v43 = theString;
        if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&__dst, v79.__r_.__value_.__l.__data_, v79.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = v79;
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&type, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        }

        else
        {
          type = __dst;
        }

        v97 = 0;
        if (SHIBYTE(type.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&v112, type.__r_.__value_.__l.__data_, type.__r_.__value_.__l.__size_);
        }

        else
        {
          v112 = type;
        }

        v98 = 0;
        if (ctu::cf::convert_copy())
        {
          v44 = v97;
          v97 = v98;
          v85.__r_.__value_.__r.__words[0] = v44;
          sub_100005978(&v85.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v112.__r_.__value_.__l.__data_);
        }

        v87 = v97;
        v97 = 0;
        sub_100005978(&v97);
        if (SHIBYTE(type.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(type.__r_.__value_.__l.__data_);
        }

        v45 = v87;
        v114.length = CFStringGetLength(theString);
        v114.location = 0;
        CFStringFindAndReplace(v43, @"%@", v45, v114, 0);
        sub_100005978(&v87);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        sub_100005978(&v96);
LABEL_106:
        v97 = 0;
        (*(**(v11 + 176) + 16))(&v97);
        v96 = 0;
        (*(**(v11 + 176) + 16))(&v96);
        v87 = 0;
        (*(**(v11 + 176) + 16))(&v87);
        v57 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
        dispatch_queue_create("com.apple.commcenter.show_network_select", v57);
        operator new();
      }

      memset(&__dst, 0, sizeof(__dst));
      sub_1011FDFB4(&__dst, &v88, &v71);
      v25 = *v22;
      if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
      {
        p_dst = &__dst;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        LODWORD(v112.__r_.__value_.__l.__data_) = 136446210;
        *(v112.__r_.__value_.__r.__words + 4) = p_dst;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Baseband selected PLMN's network name %{public}s", &v112, 0xCu);
      }

      v27 = *(v11 + 272);
      if (v27)
      {
        v28 = v11 + 272;
        do
        {
          if (*(v27 + 28) >= a2)
          {
            v28 = v27;
          }

          v27 = *(v27 + 8 * (*(v27 + 28) < a2));
        }

        while (v27);
        if (v28 != v11 + 272 && *(v28 + 28) <= a2)
        {
          v29 = *(v28 + 32);
          if (v29 >= 3)
          {
            if (v29 == 3)
            {
              v58 = *v22;
              if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v112.__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I CDMA based, marking menu as not available", &v112, 2u);
              }

              goto LABEL_77;
            }

            goto LABEL_87;
          }
        }
      }

      type.__r_.__value_.__r.__words[0] = 0;
      ServiceMap = Registry::getServiceMap(*(v11 + 56));
      v31 = ServiceMap;
      if ((v32 & 0x8000000000000000) != 0)
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

      std::mutex::lock(ServiceMap);
      v112.__r_.__value_.__r.__words[0] = v32;
      v36 = sub_100009510(&v31[1].__m_.__sig, &v112);
      if (v36)
      {
        v38 = v36[3];
        v37 = v36[4];
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v31);
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v37);
          v39 = 0;
          goto LABEL_70;
        }
      }

      else
      {
        v38 = 0;
      }

      std::mutex::unlock(v31);
      v37 = 0;
      v39 = 1;
LABEL_70:
      (*(*v38 + 80))(&v85, v38, a2, 1, @"DisallowCarrierMenuAtHome", 0, 0);
      sub_10002FE1C(&type, &v85.__r_.__value_.__l.__data_);
      sub_10000A1EC(&v85.__r_.__value_.__l.__data_);
      if ((v39 & 1) == 0)
      {
        sub_100004A34(v37);
      }

      if (type.__r_.__value_.__r.__words[0])
      {
        v112.__r_.__value_.__s.__data_[0] = 0;
        ctu::cf::assign(&v112, type.__r_.__value_.__l.__data_, v46);
        v47 = v112.__r_.__value_.__s.__data_[0];
        v48 = *v22;
        v49 = os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT);
        if (v47)
        {
          if (v49)
          {
            LOWORD(v112.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Disallow carrier menu is set to true, menu not available", &v112, 2u);
          }

          sub_100045C8C(&type.__r_.__value_.__l.__data_);
LABEL_77:
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v50 = *v22;
          if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v112.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Not showing an alert as menu will be taken away", &v112, 2u);
          }

          if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v79.__r_.__value_.__l.__data_);
          }

          if (v90)
          {
            sub_100004A34(v90);
          }

          sub_100305E28(&theString);
          if (v95)
          {
            sub_100004A34(v95);
          }

          if (v76 == 1)
          {
            if (v75 < 0)
            {
              operator delete(v74);
            }

            if (v73 < 0)
            {
              operator delete(v72);
            }
          }

          if (v111 == 1)
          {
            if (v110 < 0)
            {
              operator delete(v109);
            }

            if (SHIBYTE(v106) < 0)
            {
              operator delete(v101);
            }
          }

          if (v64 == 1)
          {
            (*(*v13 + 96))(v13, v59);
          }

LABEL_125:
          if (v84)
          {
            sub_100004A34(v84);
          }

          if (v64 == 1)
          {
            if (v63 < 0)
            {
              operator delete(v62);
            }

            if (v61 < 0)
            {
              operator delete(v60);
            }
          }

          if (v70 == 1)
          {
            if (v69 < 0)
            {
              operator delete(v68);
            }

            if (v67 < 0)
            {
              operator delete(v66);
            }
          }

          goto LABEL_137;
        }

        if (!v49)
        {
          goto LABEL_86;
        }

        LOWORD(v112.__r_.__value_.__l.__data_) = 0;
        v51 = "#I Disallow carrier menu is set to false";
      }

      else
      {
        v48 = *v22;
        if (!os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
        {
LABEL_86:
          sub_100045C8C(&type.__r_.__value_.__l.__data_);
LABEL_87:
          v87 = 0;
          (*(**(v11 + 176) + 16))(&v87);
          v52 = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v87);
          v53 = theString;
          theString = v52;
          v112.__r_.__value_.__r.__words[0] = v53;
          sub_100305E28(&v112.__r_.__value_.__l.__data_);
          v54 = theString;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&v85, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          }

          else
          {
            v85 = __dst;
          }

          if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&type, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
          }

          else
          {
            type = v85;
          }

          v96 = 0;
          if (SHIBYTE(type.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&v112, type.__r_.__value_.__l.__data_, type.__r_.__value_.__l.__size_);
          }

          else
          {
            v112 = type;
          }

          v97 = 0;
          if (ctu::cf::convert_copy())
          {
            v55 = v96;
            v96 = v97;
            v98 = v55;
            sub_100005978(&v98);
          }

          if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v112.__r_.__value_.__l.__data_);
          }

          object = v96;
          v96 = 0;
          sub_100005978(&v96);
          if (SHIBYTE(type.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(type.__r_.__value_.__l.__data_);
          }

          v56 = object;
          v115.length = CFStringGetLength(theString);
          v115.location = 0;
          CFStringFindAndReplace(v54, @"%@", v56, v115, 0);
          sub_100005978(&object);
          if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v85.__r_.__value_.__l.__data_);
          }

          sub_100005978(&v87);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          goto LABEL_106;
        }

        LOWORD(v112.__r_.__value_.__l.__data_) = 0;
        v51 = "#I No disallow carrier menu at home key in the bundle";
      }

      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v51, &v112, 2u);
      goto LABEL_86;
    }
  }
}

void sub_101203204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (*(v73 - 113) < 0)
  {
    operator delete(*(v73 - 136));
  }

  if (a72 < 0)
  {
    operator delete(a69);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a62)
  {
    sub_100004A34(a62);
  }

  sub_100EBBF84(&a10);
  sub_100EBBF84(&a19);
  sub_100004A34(v72);
  _Unwind_Resume(a1);
}

void sub_101203534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    if (a3 != 1)
    {
      if (a3 == 3)
      {
        v10 = *(*(**(v9 + 48) + 16))(*(v9 + 48), a2);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I GW SIM is ready, and there is no PLMN Mode Bit file in the card, assuming that SIM supports Network Selection", v11, 2u);
        }

        a3 = 1;
      }

      else if (a3 != 2)
      {
        goto LABEL_13;
      }
    }

    sub_1011FAC64(v9, a2, a3);
  }

LABEL_13:

  sub_100004A34(v8);
}

void *sub_10120365C(void *a1)
{
  *a1 = off_101F1B590;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1012036A8(void *a1)
{
  *a1 = off_101F1B590;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101203724(uint64_t result, uint64_t a2)
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

void sub_101203740(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void *sub_101203750(void *a1)
{
  *a1 = off_101F1B618;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10120379C(void *a1)
{
  *a1 = off_101F1B618;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101203874(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F1B618;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1012038AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1012038BC(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1012038FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v5 = *(v4 + 16);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_101203A14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101203A60(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5[0] = v1;
  v2 = *v1;
  v5[1] = _NSConcreteStackBlock;
  v5[2] = 0x40000000;
  v5[3] = sub_100FF00AC;
  v5[4] = &unk_101EFEC88;
  v5[5] = v2;
  sub_100FEFF00(0x80120);
  sub_10024BAAC(v5);
  return sub_1000049E0(&v4);
}

void sub_101203AF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_10024BAAC(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_101203B14(uint64_t *a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  (*(**(v2 + 72) + 24))(*(v2 + 72));
  Registry::createRestModuleOneTimeUseConnection(&v19, *(v2 + 56));
  ctu::RestModule::connect();
  if (v20)
  {
    sub_100004A34(v20);
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
  if (!v10)
  {
    v12 = 0;
LABEL_13:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
  if (v12)
  {
LABEL_14:
    v21 = 0x160000001BLL;
    sub_1008235B0(buf, &v21, 2);
    (*(*v12 + 160))(v12, buf);
    sub_10006DCAC(buf, v18);
  }

LABEL_15:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  sub_1000FF844(&v16);
  return sub_1000049E0(&v15);
}

void sub_101203D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14)
{
  sub_10006DCAC(&a13, a14);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void *sub_101203D80(void *a1)
{
  *a1 = off_101F1B698;
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

  v4 = a1[5];
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_101203DE4(void *a1)
{
  *a1 = off_101F1B698;
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

  v4 = a1[5];
  if (v4)
  {
    sub_100004A34(v4);
  }

  operator delete();
}

uint64_t sub_101203F24(uint64_t result, uint64_t a2)
{
  *a2 = off_101F1B698;
  v2 = *(result + 8);
  *(a2 + 23) = *(result + 23);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 48) = *(result + 48);
  v4 = *(result + 64);
  *(a2 + 64) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 72) = *(result + 72);
  v5 = *(result + 88);
  *(a2 + 88) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101203FAC(void *a1)
{
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

  v4 = a1[5];
  if (v4)
  {

    sub_100004A34(v4);
  }
}

void sub_101204008(void *__p)
{
  v2 = __p[11];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = __p[8];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = __p[5];
  if (v4)
  {
    sub_100004A34(v4);
  }

  operator delete(__p);
}

void sub_101204060(void *a1)
{
  v1 = a1[1];
  v2 = a1[5];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a1[8];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[11];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_101204240(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10120428C(void *a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *v1;
  if (*(v1 + 8) == 3)
  {
    v3 = **(v1 + 16);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I 3G has been disabled, removing UMTS technologies before issuing network scan", buf, 2u);
    }

    *(v1 + 24) &= 0xDDu;
  }

  v4 = (*(**(v1 + 32) + 312))(*(v1 + 32));
  v5 = (*(**(v2 + 48) + 16))(*(v2 + 48), v4);
  if ((sub_1011FEF5C(v2, v4, 1) & 1) == 0)
  {
    v6 = *(v2 + 320);
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = v2 + 320;
    do
    {
      if (*(v6 + 28) >= v4)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 28) < v4));
    }

    while (v6);
    if (v7 != v2 + 320 && *(v7 + 28) <= v4)
    {
      if (*(v7 + 32) != 5)
      {
        goto LABEL_20;
      }
    }

    else
    {
LABEL_13:
      v8 = *v5;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not find RoamingResult", buf, 2u);
      }
    }

    if (sub_1011FEF5C(v2, v4, 0))
    {
      goto LABEL_16;
    }

LABEL_20:
    (*(**(v1 + 32) + 312))(*(v1 + 32));
    v15 = *(v1 + 24);
    v16 = *(v1 + 26);
    v12 = *(v1 + 64);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = 0;
    operator new();
  }

LABEL_16:
  v9 = **(v1 + 16);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Current carrier or operator blocks calls over CS, adding LTE technologies to network scan", buf, 2u);
  }

  v10 = *(v1 + 24);
  *(v1 + 24) = v10 | 0x10;
  sub_1011FC374((v1 + 48), v10 | 0x10u);
  sub_10120462C(&v14);
  return sub_1000049E0(&v13);
}

void sub_1012045EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  sub_10010B9AC(va2);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_10120462C(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

void *sub_10120462C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[11];
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = v1[8];
    if (v3)
    {
      sub_100004A34(v3);
    }

    v4 = v1[5];
    if (v4)
    {
      sub_100004A34(v4);
    }

    operator delete();
  }

  return result;
}

void *sub_101204698(void *a1)
{
  *a1 = off_101F1B708;
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1012046E4(void *a1)
{
  *a1 = off_101F1B708;
  v1 = a1[6];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1012047DC(uint64_t result, uint64_t a2)
{
  *a2 = off_101F1B708;
  v2 = *(result + 8);
  *(a2 + 23) = *(result + 23);
  *(a2 + 8) = v2;
  *(a2 + 32) = *(result + 32);
  v3 = *(result + 48);
  *(a2 + 48) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 56) = *(result + 56);
  return result;
}

void sub_101204834(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_101204844(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_101204884(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 48);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(v1 + 16))
  {
    if (std::__shared_weak_count::lock(*(v1 + 16)))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012049EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101204A38(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  if (*v1 == 3)
  {
    v2 = **(v1 + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I LTE has been disabled, removing LTE technologies before issuing network scan", buf, 2u);
    }

    v3 = *(v1 + 16) & 0xEF;
    *(v1 + 16) = v3;
  }

  else
  {
    v3 = *(v1 + 16);
  }

  sub_1011FC374((v1 + 24), v3);
  sub_101204AFC(&v6);
  return sub_1000049E0(&v5);
}

void sub_101204AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_101204AFC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101204AFC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

__n128 sub_101204BCC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1B798;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101204C04(void *a1)
{
  __p[0] = 0x2800000000;
  __p[1] = 0;
  v6 = 0uLL;
  v7 = 0;
  rest::read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, __p);
  if (__p[1])
  {
    *&v6 = __p[1];
    operator delete(__p[1]);
  }
}

void sub_101204CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101204CC8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101204D90(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1B818;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101204DC8(uint64_t a1, xpc_object_t *a2)
{
  sub_10010A62C(*(a1 + 8), a2);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (*(a1 + 16) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_101204E44(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101204F00(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F1B898;
  a2[1] = v2;
  return result;
}

uint64_t sub_101204F34(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101204FF0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F1B918;
  a2[1] = v2;
  return result;
}

uint64_t sub_101205024(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012050EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1B998;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101205124(void *a1)
{
  read_rest_value();
  v2 = a1[3];
  v3 = a1[4];
  v4 = (a1[2] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4);
}

uint64_t sub_1012051A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101205268(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1BA18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012052A0(void *a1)
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

uint64_t sub_1012052E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012053B0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1BA98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012053E8(void *a1, xpc_object_t *a2)
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

  sub_10032CF1C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10032D3A4(&v9, v10);
}

uint64_t sub_1012054C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101205588(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1BB18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012055C0(void *a1, xpc_object_t *a2)
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

  sub_1008FC53C(v3, a2);
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

uint64_t sub_101205698(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101205760(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1BB98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101205798(void *a1, xpc_object_t *a2)
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

uint64_t sub_101205870(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101205938(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1BC18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101205970(uint64_t *a1, xpc_object_t *a2)
{
  sub_100904E88(a1[1], a2);
  v3 = a1[3];
  v4 = a1[4];
  v5 = (a1[2] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_1012059EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101205AB4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1BC98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101205AEC(uint64_t *a1, xpc_object_t *a2)
{
  sub_100904E88(a1[1], a2);
  v3 = a1[3];
  v4 = a1[4];
  v5 = (a1[2] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_101205B68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101205C30(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1BD18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101205C68(void *a1, xpc_object_t *a2)
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

uint64_t sub_101205D4C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101205DB8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F1BD98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_101205E3C(void *a1)
{
  *a1 = off_101F1BDE8;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101205E88(void *a1)
{
  *a1 = off_101F1BDE8;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_101205F60(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F1BDE8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101205F98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_101205FA8(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

uint64_t sub_101205FE8(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 2)
  {
    return launchURL();
  }

  return result;
}

uint64_t sub_101206008(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101206054(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      sub_100004A34(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1012060B4(void *a1)
{
  v6 = a1;
  v2 = a1[3];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (a1[2])
      {
        (*(**a1 + 16))();
      }

      sub_100004A34(v4);
    }
  }

  return sub_101206054(&v6);
}

void sub_101206134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004A34(v2);
  sub_101206054(va);
  _Unwind_Resume(a1);
}

void sub_1012061D4(_Unwind_Exception *a1)
{
  if (*(v2 + 63) < 0)
  {
    operator delete(*(v2 + 40));
  }

  sub_100B83574(v1);
  _Unwind_Resume(a1);
}

void sub_101206200(uint64_t a1)
{
  v1 = *(*a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Bringing baseband online", buf, 2u);
  }

  sub_10000501C(buf, "/cc/events/bring_baseband_online");
  object = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(*buf);
  }

  operator delete();
}

void sub_1012062D0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_101206320(uint64_t a1, Registry **a2, os_log_t *a3, uint64_t a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ServiceMap = Registry::getServiceMap(*a2);
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
        goto LABEL_7;
      }

LABEL_11:
      cf = 0;
      v81 = 0;
      v19 = *(a4 + 119);
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(a4 + 104);
      }

      if (!v19)
      {
        goto LABEL_24;
      }

      v20 = *(a4 + 143);
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(a4 + 128);
      }

      if (v20)
      {
        memset(&v80, 0, sizeof(v80));
        createPLMN();
        size = HIBYTE(v80.__r_.__value_.__r.__words[2]);
        if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v80.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (Mutable)
          {
            v23 = v81;
            v81 = Mutable;
            *buf = v23;
            sub_1000296E0(buf);
          }

          if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__str, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
          }

          else
          {
            __str = v80;
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = __str;
          }

          v75.__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          }

          else
          {
            *buf = *&__dst.__r_.__value_.__l.__data_;
            v66[0] = __dst.__r_.__value_.__r.__words[2];
          }

          v77.__r_.__value_.__r.__words[0] = 0;
          if (ctu::cf::convert_copy())
          {
            v24 = v75.__r_.__value_.__r.__words[0];
            v75.__r_.__value_.__r.__words[0] = v77.__r_.__value_.__r.__words[0];
            __p.__r_.__value_.__r.__words[0] = v24;
            sub_100005978(&__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v66[0]) < 0)
          {
            operator delete(*buf);
          }

          v84 = v75.__r_.__value_.__r.__words[0];
          v75.__r_.__value_.__r.__words[0] = 0;
          sub_100005978(&v75.__r_.__value_.__l.__data_);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          sub_1001768B8(v81, qword_101FCB6F0, v84);
          sub_100005978(&v84);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (*(a4 + 167) < 0)
          {
            sub_100005F2C(&__p, *(a4 + 144), *(a4 + 152));
          }

          else
          {
            __p = *(a4 + 144);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = __p;
          }

          v84 = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          }

          else
          {
            *buf = *&__dst.__r_.__value_.__l.__data_;
            v66[0] = __dst.__r_.__value_.__r.__words[2];
          }

          v75.__r_.__value_.__r.__words[0] = 0;
          if (ctu::cf::convert_copy())
          {
            v25 = v84;
            v84 = v75.__r_.__value_.__r.__words[0];
            v77.__r_.__value_.__r.__words[0] = v25;
            sub_100005978(&v77.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v66[0]) < 0)
          {
            operator delete(*buf);
          }

          v83 = v84;
          v84 = 0;
          sub_100005978(&v84);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          sub_1001768B8(v81, @"GID1", v83);
          sub_100005978(&v83);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (*(a4 + 191) < 0)
          {
            sub_100005F2C(&v77, *(a4 + 168), *(a4 + 176));
          }

          else
          {
            v77 = *(a4 + 168);
          }

          if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__dst, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = v77;
          }

          v83 = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          }

          else
          {
            *buf = *&__dst.__r_.__value_.__l.__data_;
            v66[0] = __dst.__r_.__value_.__r.__words[2];
          }

          v84 = 0;
          if (ctu::cf::convert_copy())
          {
            v26 = v83;
            v83 = v84;
            v75.__r_.__value_.__r.__words[0] = v26;
            sub_100005978(&v75.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v66[0]) < 0)
          {
            operator delete(*buf);
          }

          v82 = v83;
          v83 = 0;
          sub_100005978(&v83);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          sub_1001768B8(v81, @"GID2", v82);
          sub_100005978(&v82);
          if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v77.__r_.__value_.__l.__data_);
          }

          if (*(a4 + 39) < 0)
          {
            sub_100005F2C(&v75, *(a4 + 16), *(a4 + 24));
          }

          else
          {
            v75 = *(a4 + 16);
          }

          if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__dst, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = v75;
          }

          v82 = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          }

          else
          {
            *buf = *&__dst.__r_.__value_.__l.__data_;
            v66[0] = __dst.__r_.__value_.__r.__words[2];
          }

          v83 = 0;
          if (ctu::cf::convert_copy())
          {
            v27 = v82;
            v82 = v83;
            v84 = v27;
            sub_100005978(&v84);
          }

          if (SHIBYTE(v66[0]) < 0)
          {
            operator delete(*buf);
          }

          v28 = v82;
          v76 = v82;
          v82 = 0;
          sub_100005978(&v82);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          sub_1001768B8(v81, qword_101FCB6E8, v28);
          sub_100005978(&v76);
          if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v75.__r_.__value_.__l.__data_);
          }
        }

        sub_100010180(&cf, &v81);
        if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v80.__r_.__value_.__l.__data_);
        }
      }

      else
      {
LABEL_24:
        sub_100010180(&cf, &v81);
      }

      sub_1000296E0(&v81);
      if (!cf)
      {
        v29 = *a3;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "No matching bundle info", buf, 2u);
        }

        goto LABEL_171;
      }

      memset(&v73, 0, sizeof(v73));
      *v71 = 0u;
      v72 = 0u;
      *v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      *v68 = 0u;
      *buf = 0u;
      *v66 = 0u;
      v64 = cf;
      CFRetain(cf);
      (*(*v16 + 32))(buf, v16, &v64);
      sub_10001021C(&v64);
      memset(&v80, 0, sizeof(v80));
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&v80, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
      }

      else
      {
        v80 = v73;
      }

      v30 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
      if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v30 = v80.__r_.__value_.__l.__size_;
      }

      if (!v30)
      {
        v38 = *a3;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
          _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Bundle lookup failed", &__dst, 2u);
        }

        goto LABEL_157;
      }

      __p.__r_.__value_.__r.__words[0] = 0;
      Registry::getFileSystemInterface(&__dst, *a2);
      (*(*__dst.__r_.__value_.__l.__data_ + 152))(&__p);
      if (__dst.__r_.__value_.__l.__size_)
      {
        sub_100004A34(__dst.__r_.__value_.__l.__size_);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        Value = CFDictionaryGetValue(__p.__r_.__value_.__l.__data_, @"BootstrapSettings");
        v32 = Value;
        if (Value && (v33 = CFGetTypeID(Value), v33 == CFDictionaryGetTypeID()))
        {
          v34 = CFDictionaryGetValue(v32, @"BootstrapSignallingReductionTimeout");
          v35 = v34;
          LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
          if (v34)
          {
            v36 = CFGetTypeID(v34);
            if (v36 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&__dst, v35, v37);
            }
          }

          *(a1 + 28) = __dst.__r_.__value_.__l.__data_;
        }

        else
        {
          v39 = *a3;
          if (os_log_type_enabled(*a3, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I No bootstrap settings", &__dst, 2u);
          }
        }

        v40 = CFDictionaryGetValue(__p.__r_.__value_.__l.__data_, @"CellularPlanSettings");
        v41 = v40;
        if (v40)
        {
          v42 = CFGetTypeID(v40);
          if (v42 == CFDictionaryGetTypeID())
          {
            v43 = CFDictionaryGetValue(v41, @"Proxy");
            v44 = v43;
            if (v43)
            {
              v45 = CFGetTypeID(v43);
              if (v45 == CFDictionaryGetTypeID())
              {
                v46 = CFDictionaryGetValue(v44, @"ProxySettings");
                v47 = v46;
                if (v46)
                {
                  v48 = CFGetTypeID(v46);
                  if (v48 != CFDictionaryGetTypeID())
                  {
                    v47 = 0;
                  }
                }

                memset(&__str, 0, sizeof(__str));
                CFDictionaryGetValue(v47, @"HOST");
                memset(&__dst, 0, sizeof(__dst));
                ctu::cf::assign();
                __str = __dst;
                v49 = CFDictionaryGetValue(v47, @"PORT");
                v50 = v49;
                LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
                if (v49)
                {
                  v51 = CFGetTypeID(v49);
                  if (v51 == CFNumberGetTypeID())
                  {
                    ctu::cf::assign(&__dst, v50, v52);
                  }
                }

                data = __dst.__r_.__value_.__l.__data_;
                v54 = *a3;
                if (os_log_type_enabled(*a3, OS_LOG_TYPE_DEFAULT))
                {
                  p_str = &__str;
                  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    p_str = __str.__r_.__value_.__r.__words[0];
                  }

                  LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
                  *(__dst.__r_.__value_.__r.__words + 4) = p_str;
                  WORD2(__dst.__r_.__value_.__r.__words[1]) = 1024;
                  *(&__dst.__r_.__value_.__r.__words[1] + 6) = data;
                  _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I cellular plan settings found : %s : %u", &__dst, 0x12u);
                }

                if (!sub_10000BAA0())
                {
                  goto LABEL_154;
                }

                LODWORD(v77.__r_.__value_.__l.__data_) = -1;
                v56 = sub_10005D028();
                sub_10000501C(&__dst, "TestProxyIndexKey");
                sub_1002D5DB8(v56, &__dst.__r_.__value_.__l.__data_, &v77);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }

                v57 = v77.__r_.__value_.__l.__data_;
                if ((v77.__r_.__value_.__l.__data_ & 0x80000000) != 0)
                {
                  goto LABEL_154;
                }

                v58 = *a3;
                if (os_log_type_enabled(*a3, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
                  HIDWORD(__dst.__r_.__value_.__r.__words[0]) = v57;
                  _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I override cellular plan settings found : %d", &__dst, 8u);
                  v57 = v77.__r_.__value_.__l.__data_;
                }

                if (v57 > 1)
                {
                  if (v57 == 3)
                  {
                    v59 = &unk_101FC8D90;
LABEL_153:
                    std::string::operator=(&__str, v59);
                    data = 443;
LABEL_154:
                    std::string::operator=(a1, &__str);
                    *(a1 + 24) = data;
                    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__str.__r_.__value_.__l.__data_);
                    }

                    goto LABEL_156;
                  }

                  if (v57 != 2)
                  {
                    goto LABEL_150;
                  }

                  v59 = &unk_101FC8D90;
                }

                else
                {
                  v59 = &unk_101FC8D78;
                  if (v57)
                  {
                    if (v57 != 1)
                    {
LABEL_150:
                      v62 = *a3;
                      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                      {
                        LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
                        _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "unknown test proxy index", &__dst, 2u);
                      }

                      goto LABEL_154;
                    }

                    goto LABEL_153;
                  }
                }

                std::string::operator=(&__str, v59);
                data = 80;
                goto LABEL_154;
              }
            }

            v60 = *a3;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
              v61 = "No proxy key";
              goto LABEL_145;
            }

LABEL_156:
            sub_10001021C(&__p.__r_.__value_.__l.__data_);
LABEL_157:
            if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v80.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v73.__r_.__value_.__l.__data_);
            }

            if (SBYTE7(v72) < 0)
            {
              operator delete(v71[0]);
            }

            if (SHIBYTE(v70) < 0)
            {
              operator delete(v69[1]);
            }

            if (SHIBYTE(v69[0]) < 0)
            {
              operator delete(v68[0]);
            }

            if (SHIBYTE(v67) < 0)
            {
              operator delete(v66[1]);
            }

            if (SHIBYTE(v66[0]) < 0)
            {
              operator delete(*buf);
            }

LABEL_171:
            sub_10001021C(&cf);
            goto LABEL_172;
          }
        }

        v60 = *a3;
        if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_156;
        }

        LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
        v61 = "No cellular plan settings key";
      }

      else
      {
        v60 = *a3;
        if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_156;
        }

        LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
        v61 = "Missing carrier bundle";
      }

LABEL_145:
      _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, v61, &__dst, 2u);
      goto LABEL_156;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
  if (v16)
  {
    goto LABEL_11;
  }

LABEL_7:
  v18 = *a3;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing carrier bundle interface", buf, 2u);
  }

LABEL_172:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  return a1;
}

void sub_101206FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, const void *a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (*(v56 - 89) < 0)
  {
    operator delete(*(v56 - 112));
  }

  if (*(v56 - 185) < 0)
  {
    operator delete(*(v56 - 208));
  }

  sub_10001021C(&a48);
  if (*(v56 - 153) < 0)
  {
    operator delete(*(v56 - 176));
  }

  sub_1002F27AC(&a11);
  sub_10001021C(&a33);
  if ((v55 & 1) == 0)
  {
    sub_100004A34(v54);
  }

  if (*(v53 + 23) < 0)
  {
    operator delete(*v53);
  }

  _Unwind_Resume(a1);
}

double sub_1012072A4@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    if (!*(a1 + 1))
    {
LABEL_8:
      *a2 = 0;
      *(a2 + 32) = 0;
      return result;
    }
  }

  else if (!*(a1 + 23))
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 6);
  if (!v5)
  {
    goto LABEL_8;
  }

  if ((v4 & 0x80000000) != 0)
  {
    sub_100005F2C(&v7, *a1, *(a1 + 1));
    v5 = *(a1 + 6);
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 2);
  }

  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v5;
  *(a2 + 32) = 1;
  return result;
}

uint64_t sub_101207340()
{
  sub_10000501C(byte_101FC8D78, "sq-device-proxy-stage.apple.com");
  __cxa_atexit(&std::string::~string, byte_101FC8D78, &_mh_execute_header);
  sub_10000501C(byte_101FC8D90, "sq-device-proxy.apple.com");

  return __cxa_atexit(&std::string::~string, byte_101FC8D90, &_mh_execute_header);
}

const void **sub_1012073D0(const void **result, const void *a2, const void *a3)
{
  if (a3)
  {
    sub_101209738(result, &theDict);
    CFDictionarySetValue(theDict, a2, a3);
    return sub_1000296E0(&theDict);
  }

  return result;
}

void sub_101207420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

void sub_101207434(uint64_t a1, const void *a2)
{
  ctu::cf_to_xpc(&object, *(a1 + 8), a2);
  v3 = object;
  if (object && xpc_get_type(object) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  xpc_release(object);
  v4 = *a1;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  v5 = xpc_null_create();
  sub_10002A37C(v4, &object, &v5);
  xpc_release(v5);
  xpc_release(object);
  xpc_release(v3);
}

void sub_101207500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

const void **sub_101207540(int a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, uint64_t a8)
{
  v23 = 60;
  v24 = 0;
  sub_101207C9C(&v23, kCTSIMToolkitSimSlot, a1);
  sub_101207C9C(&v23, kCTSIMToolkitSession, a2);
  sub_101207738(&v23, a4);
  if ((a8 & 0x100000000) != 0)
  {
    sub_101207C9C(&v23, kCTSIMToolkitIcon, a8);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v21 = *(a3 + 16);
  }

  v22 = 1;
  sub_101207ACC(&v23, kCTSIMToolkitText, __p);
  if (v22 == 1 && SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  v15 = &kCTSIMToolkitDisplayTextPriorityNormal;
  if (a5)
  {
    v15 = &kCTSIMToolkitDisplayTextPriorityHigh;
  }

  sub_1012073D0(&v23, kCTSIMToolkitDisplayTextPriority, *v15);
  v16 = &kCTSIMToolkitDisplayTextOrderOutBehaviorSendOK;
  if (a7)
  {
    v16 = &kCTSIMToolkitDisplayTextOrderOutBehaviorClose;
  }

  sub_1012073D0(&v23, kCTSIMToolkitDisplayTextOrderOutBehavior, *v16);
  v17 = &kCTSIMToolkitDisplayTextTerminalDelayDisabled;
  if (a6)
  {
    v17 = &kCTSIMToolkitDisplayTextTerminalDelayEnabled;
  }

  sub_1012073D0(&v23, kCTSIMToolkitDisplayTextTerminalDelay, *v17);
  sub_101207434(&v23, v18);
  return sub_1000296E0(&v24);
}

void sub_101207700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0((v15 + 8));
  _Unwind_Resume(a1);
}

const void **sub_101207738(const void **result, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    v2 = result;
    v7 = 0;
    valuePtr = a2 / 10.0;
    v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
    if (v3)
    {
      v7 = v3;
      valuePtr = 0.0;
      sub_100029A48(&valuePtr);
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }

    v6 = v4;
    v7 = 0;
    sub_100029A48(&v7);
    v5 = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    sub_101208204(v2, kCTSIMToolkitTimeout, &v5);
    sub_10000A1EC(&v5);
    return sub_100029A48(&v6);
  }

  return result;
}

void sub_1012077F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a9);
  sub_100029A48(&a10);
  _Unwind_Resume(a1);
}

const void **sub_10120781C(int a1, int a2, uint64_t a3)
{
  if (*(a3 + 64) == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = &_mh_execute_header & 0xFFFFFFFF00000000 | *(a3 + 64);
  }

  return sub_101207540(a1, a2, a3 + 24, v3, *(a3 + 48) == 1, *(a3 + 52) == 0, *(a3 + 56) == 1, 0);
}

const void **sub_10120785C(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, char a9, char a10, char a11, char a12, uint64_t a13)
{
  v29 = 61;
  v30 = 0;
  sub_101207C9C(&v29, kCTSIMToolkitSimSlot, a1);
  sub_101207C9C(&v29, kCTSIMToolkitSession, a2);
  sub_101207738(&v29, a5);
  if ((a13 & 0x100000000) != 0)
  {
    sub_101207C9C(&v29, kCTSIMToolkitIcon, a13);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v27 = *(a3 + 16);
  }

  v28 = 1;
  sub_101207ACC(&v29, kCTSIMToolkitText, __p);
  if (v28 == 1 && SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (a12)
  {
    v20 = kCFBooleanTrue;
  }

  else
  {
    v20 = kCFBooleanFalse;
  }

  sub_1012073D0(&v29, kCTSIMToolkitHelpAvailable, v20);
  if (a11)
  {
    v21 = kCFBooleanTrue;
  }

  else
  {
    v21 = kCFBooleanFalse;
  }

  sub_1012073D0(&v29, kCTSIMToolkitGetInputIsSecret, v21);
  if (a10)
  {
    v22 = kCFBooleanTrue;
  }

  else
  {
    v22 = kCFBooleanFalse;
  }

  sub_1012073D0(&v29, kCTSIMToolkitGetInputIsEditable, v22);
  v23 = 1;
  if (!a9)
  {
    v23 = 2;
  }

  if (a8)
  {
    v23 = 0;
  }

  sub_1012073D0(&v29, kCTSIMToolkitGetInputType, **(&off_101F1BE58 + v23));
  if (*(a4 + 24) == 1)
  {
    sub_101207ACC(&v29, kCTSIMToolkitGetInputDefaultText, a4);
  }

  sub_101207C9C(&v29, kCTSIMToolkitGetInputMaximumLength, a7);
  sub_101207C9C(&v29, kCTSIMToolkitGetInputMinimumLength, a6);
  sub_101207434(&v29, v24);
  return sub_1000296E0(&v30);
}