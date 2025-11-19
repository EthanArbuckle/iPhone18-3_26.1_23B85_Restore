void sub_100790CA8(uint64_t a1, void **a2)
{
  v3 = *(a1 + 128);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 120);
      if (v6)
      {
        (*(*v6 + 224))(v8, *(a1 + 120));
        v7 = sub_10016FA58(v8, a2);
        sub_100009970(v8, v8[1]);
        if (!v7)
        {
          (*(*v6 + 208))(v6, a2);
          sub_10078DB1C(a1);
        }

LABEL_10:
        sub_100004A34(v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177DF4C();
  }

  if (v5)
  {
    goto LABEL_10;
  }
}

void sub_100790DCC(uint64_t a1, std::string::size_type a2)
{
  v3 = *(a1 + 128);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 120);
      if (v6)
      {
        if ((*(*v6 + 248))(*(a1 + 120), a2))
        {
          (*(*v6 + 168))(v16, v6, a2);
          if (v18 != 1)
          {
            goto LABEL_26;
          }

          size = HIBYTE(v17[0].__r_.__value_.__r.__words[2]);
          v8 = SHIBYTE(v17[0].__r_.__value_.__r.__words[2]);
          if ((v17[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v17[0].__r_.__value_.__l.__size_;
          }

          if (size)
          {
            v9 = *(a1 + 40);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = v17[0].__r_.__value_.__r.__words[0];
              if (v8 >= 0)
              {
                v10 = v17;
              }

              if (*(a2 + 23) >= 0)
              {
                v11 = a2;
              }

              else
              {
                v11 = *a2;
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
              *(buf.__r_.__value_.__r.__words + 4) = v10;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = v11;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I ODA transfer %s -> %s complete", &buf, 0x16u);
            }

            sub_10000501C(&buf, "");
            sub_10000501C(__p, "");
            sub_1007902A8(a1, &buf, __p, v17, a1 + 440, a2);
            if (v14 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          else
          {
LABEL_26:
            v12 = *(a1 + 40);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I SourceIccid is not present", &buf, 2u);
            }
          }

          if (v18 == 1)
          {
            sub_1002813D0(v16);
          }
        }

LABEL_24:
        sub_100004A34(v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177DF80();
  }

  if (v5)
  {
    goto LABEL_24;
  }
}

void sub_100791034(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (LOBYTE(STACK[0x540]) == 1)
  {
    sub_1002813D0(va);
  }

  sub_100004A34(v15);
  _Unwind_Resume(a1);
}

__n128 sub_1007910A0(uint64_t a1, __n128 *a2, __n128 result)
{
  if (*(a1 + 80))
  {
    result = *a2;
    v4 = *a2;
    if (v4.n128_u64[0] != v4.n128_u64[1])
    {
      v6 = *(a1 + 40);
      v13 = *a2;
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      v8 = v13;
      if (v7)
      {
        sub_100798FE0(v4.n128_i64[0], &__s);
        __p = __s;
        for (i = v4.n128_u64[0] + 72; v4.n128_u64[0] + 72 != v4.n128_u64[1]; i = v4.n128_u64[0] + 72)
        {
          *(&__s.__r_.__value_.__s + 23) = 2;
          strcpy(&__s, "\n\t");
          std::string::append(&__p, &__s, 2uLL);
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s.__r_.__value_.__l.__data_);
          }

          sub_100798FE0(i, &__s);
          if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_s = &__s;
          }

          else
          {
            p_s = __s.__r_.__value_.__r.__words[0];
          }

          if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __s.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, p_s, size);
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s.__r_.__value_.__l.__data_);
          }
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(__s.__r_.__value_.__l.__data_) = 136315138;
        *(__s.__r_.__value_.__r.__words + 4) = p_p;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I deleting denylist items:\n\t%s", &__s, 0xCu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v8 = *a2;
      }

      sub_1007963E8((a1 + 264), *(a1 + 272), v8.n128_u64[0], v8.n128_u64[1], 0x8E38E38E38E38E39 * ((v8.n128_u64[1] - v8.n128_u64[0]) >> 3));
      (*(**(a1 + 104) + 120))(*(a1 + 104), a1 + 264);
      *&__s.__r_.__value_.__l.__data_ = 0uLL;
      __p.__r_.__value_.__r.__words[0] = "CellularPlanUploadTriggersModel";
      sub_1001048A4();
    }
  }

  return result;
}

void sub_100791494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  operator delete(v33);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1002832A8(&a18);
  v36 = *(v34 - 104);
  if (v36)
  {
    sub_100004A34(v36);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100791570(uint64_t a1)
{
  if ((*(a1 + 415) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 400))
    {
      goto LABEL_6;
    }

    return 1;
  }

  if (*(a1 + 415))
  {
    return 1;
  }

LABEL_6:
  v2 = *(a1 + 368);
  if (v2 != (a1 + 376))
  {
    do
    {
      if (*(v2 + 8))
      {
        v3 = *(v2 + 63);
        if (v3 < 0)
        {
          v3 = v2[6];
        }

        if (v3)
        {
          return 1;
        }
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
    }

    while (v5 != (a1 + 376));
  }

  for (i = *(a1 + 160); i != *(a1 + 168); i += 88)
  {
    if (*(i + 4) && *(i + 16) != 0)
    {
      return 1;
    }
  }

  result = os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_10177DFB4();
    return 0;
  }

  return result;
}

uint64_t sub_10079168C(uint64_t a1)
{
  if (*(a1 + 489) != 1 || (*(a1 + 488) & 1) == 0)
  {
    v2 = *(a1 + 184);
    v3 = (a1 + 192);
    if (v2 == (a1 + 192))
    {
      return 0;
    }

    while (1)
    {
      if (*(v2 + 55) < 0)
      {
        sub_100005F2C(&__p, v2[4], v2[5]);
      }

      else
      {
        __p = *(v2 + 4);
      }

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size >= 0x15)
      {
        break;
      }

      v1 = 0;
      if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_23;
      }

LABEL_24:
      if (v1)
      {
        return 1;
      }

      v7 = v2[1];
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
        do
        {
          v8 = v2[2];
          v5 = *v8 == v2;
          v2 = v8;
        }

        while (!v5);
      }

      v2 = v8;
      if (v8 == v3)
      {
        return v1;
      }
    }

    std::string::basic_string(&v13, &__p, 0, 0x14uLL, &v14);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      v1 = v13.__r_.__value_.__l.__size_ == 20 && *v13.__r_.__value_.__l.__data_ == 0x72616C756C6C6543 && *(v13.__r_.__value_.__r.__words[0] + 8) == 0x6E6172546E616C50 && *(v13.__r_.__value_.__r.__words[0] + 16) == 1919247987;
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    else if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) == 20)
    {
      v5 = v13.__r_.__value_.__r.__words[0] == 0x72616C756C6C6543 && v13.__r_.__value_.__l.__size_ == 0x6E6172546E616C50;
      v1 = v5 && LODWORD(v13.__r_.__value_.__r.__words[2]) == 1919247987;
    }

    else
    {
      v1 = 0;
    }

    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_24;
    }

LABEL_23:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_24;
  }

  return 1;
}

void sub_100791838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100791854(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = *a2 + 168;
    do
    {
      if (sub_10064AF30(v6 - 168))
      {
        if ((*(v6 + 23) & 0x8000000000000000) != 0)
        {
          if (*(v6 + 8))
          {
LABEL_8:
            sub_1007996B4(a3, v6);
            v7 = *(a1 + 40);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v8 = v6;
              if (*(v6 + 23) < 0)
              {
                v8 = *v6;
              }

              *buf = 136315138;
              v11 = v8;
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Blocklist phone number: %s", buf, 0xCu);
            }
          }
        }

        else if (*(v6 + 23))
        {
          goto LABEL_8;
        }
      }

      v9 = v6 + 64;
      v6 += 232;
    }

    while (v9 != v4);
  }
}

BOOL sub_1007919AC(uint64_t a1)
{
  if (*(a1 + 336) != 1)
  {
    return 0;
  }

  v14 = v1;
  v15 = v2;
  if ((*(a1 + 490) & 1) == 0)
  {
    v6 = *(a1 + 40);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v13 = 0;
    v8 = "#I Device never unlocked since boot, abort saving and uploading";
    v9 = &v13;
    goto LABEL_17;
  }

  if (*(a1 + 160) == *(a1 + 168))
  {
    v6 = *(a1 + 40);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v8 = "#I vinylInfo is empty";
    v9 = buf;
    goto LABEL_17;
  }

  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  if (v4 != v5)
  {
    while ((subscriber::isSimSettled() & 1) != 0)
    {
      v4 += 168;
      if (v4 == v5)
      {
        if (!sub_10079168C(a1))
        {
          return 1;
        }

        v6 = *(a1 + 40);
        result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        v10 = 0;
        v8 = "#I Transfer ongoing on target device";
        v9 = &v10;
        goto LABEL_17;
      }
    }
  }

  v6 = *(a1 + 40);
  result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v11 = 0;
    v8 = "#I Not all sims are settled";
    v9 = &v11;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    return 0;
  }

  return result;
}

void sub_100791B10(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 344);
    if (*(v3 + 23) < 0)
    {
      v3 = *v3;
    }

    if (*(a1 + 232) == 1)
    {
      v14 = *(a1 + 224);
    }

    else
    {
      v14 = 0;
    }

    v4 = 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 144) - *(a1 + 136)) >> 3);
    v5 = *(a1 + 200);
    v13 = *(a1 + 336);
    v6 = (a1 + 416);
    v7 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 168) - *(a1 + 160)) >> 3);
    if (*(a1 + 439) < 0)
    {
      v6 = *v6;
    }

    v8 = *(a1 + 490);
    v9 = *(a1 + 491);
    v10 = *(a1 + 492);
    v11 = sub_100649BE0(*(a1 + 489));
    v12 = *(a1 + 488);
    *buf = 136317954;
    v16 = v3;
    v17 = 2048;
    v18 = v4;
    v19 = 2048;
    v20 = v7;
    v21 = 2048;
    v22 = v5;
    v23 = 2048;
    v24 = v14;
    v25 = 256;
    v26 = v13;
    v27 = 2080;
    v28 = v6;
    v29 = 1024;
    v30 = v8;
    v31 = 1024;
    v32 = v9;
    v33 = 1024;
    v34 = v10;
    v35 = 2080;
    v36 = v11;
    v37 = 1024;
    v38 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DeviceName[%s], SimInfo[%lu], VinylInfo[%lu], Entitlements[%lu], AssignedSimLabels[%lu], InternetStatus[%hhu], IdsDeviceId[%s], DeviceFirstUnlock[%d], PasscodeSet[%d], CKSignedInWithEncryption[%d], TransferState[%s:%d]", buf, 0x63u);
  }
}

void sub_100791CDC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Delay upload for 1 min", buf, 2u);
  }

  v16 = 0;
  v17 = 0;
  (***(a1 + 48))(buf);
  Registry::getTimerService(&v16, *buf);
  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v16)
  {
    sub_100004AA0(buf, (a1 + 8));
    v4 = *buf;
    v3 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
    }

    v5 = v16;
    sub_10000501C(__p, "Delay Manatee Upload");
    v6 = *(a1 + 24);
    object = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3321888768;
    v10[2] = sub_100791FCC;
    v10[3] = &unk_101E7CBA0;
    v10[4] = a1;
    v10[5] = v4;
    v11 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    aBlock = _Block_copy(v10);
    sub_100D23364(v5, __p, 0, 60000000, &object, &aBlock);
    v7 = *buf;
    *buf = 0;
    v8 = *(a1 + 96);
    *(a1 + 96) = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      v9 = *buf;
      *buf = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177DFE8();
  }

  if (v17)
  {
    sub_100004A34(v17);
  }
}

void sub_100791F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, dispatch_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  v26 = *(v24 - 56);
  if (v26)
  {
    sub_100004A34(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_100791FBC()
{
  if (!*(v0 - 40))
  {
    JUMPOUT(0x100791FB4);
  }

  JUMPOUT(0x100791FB0);
}

void sub_100791FCC(void *a1)
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
        sub_100792054(v3);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100792054(uint64_t a1)
{
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I 1 min expiry - start saveAndUpload", buf, 2u);
  }

  if (sub_1007919AC(a1) && sub_100791570(a1))
  {
    v4 = *(a1 + 72);
    if (v4)
    {
      v4 = std::__shared_weak_count::lock(v4);
      v5 = v4;
      if (v4)
      {
        v4 = *(a1 + 64);
      }
    }

    else
    {
      v5 = 0;
    }

    if (*(a1 + 491) == 1 && (!v4 || ((v4->__vftable[1].~__shared_weak_count_0)(v4) & 1) != 0))
    {
      v26 = 0;
      v27 = 0;
      v25 = &v26;
      v6 = *(a1 + 128);
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        if (v7)
        {
          v8 = v7;
          v9 = *(a1 + 120);
          if (v9)
          {
            (*(*v9 + 232))(buf);
            sub_100009970(&v25, v26);
            v10 = *&buf[8];
            v25 = *buf;
            v26 = *&buf[8];
            v27 = v20;
            if (v20)
            {
              *(*&buf[8] + 16) = &v26;
              *buf = &buf[8];
              *&buf[8] = 0;
              *&v20 = 0;
              v10 = 0;
            }

            else
            {
              v25 = &v26;
            }

            sub_100009970(buf, v10);
          }

          sub_100004A34(v8);
        }
      }

      v24 = 0;
      v23 = 0u;
      memset(v22, 0, sizeof(v22));
      v20 = 0u;
      v21 = 0u;
      *buf = 0u;
      sub_10027E628(buf, *(a1 + 160), *(a1 + 168), 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 168) - *(a1 + 160)) >> 3));
      *(&v20 + 1) = 0;
      v21 = 0uLL;
      sub_1000B2128(&v20 + 8, *(a1 + 136), *(a1 + 144), 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 144) - *(a1 + 136)) >> 3));
      sub_100288F04(v22, a1 + 368);
      if (*(a1 + 415) < 0)
      {
        sub_100005F2C(&v22[1] + 8, *(a1 + 392), *(a1 + 400));
      }

      else
      {
        *(&v22[1] + 8) = *(a1 + 392);
        *(&v22[2] + 1) = *(a1 + 408);
      }

      LOBYTE(v22[3]) = 1;
      if (*(a1 + 439) < 0)
      {
        sub_100005F2C(&v22[3] + 8, *(a1 + 416), *(a1 + 424));
      }

      else
      {
        *(&v22[3] + 8) = *(a1 + 416);
        *(&v22[4] + 1) = *(a1 + 432);
      }

      sub_10078F5C4(a1, a1 + 184, a1 + 464, &v23);
      memset(v18, 0, sizeof(v18));
      sub_10078F5C4(a1, a1 + 184, a1 + 464, v17);
      sub_100792668(a1, v17, v18);
      sub_10028C89C(v17, v17[1]);
      v12 = *(a1 + 104);
      v13 = *(a1 + 493);
      v14 = *(a1 + 352);
      v15 = *(a1 + 344);
      v16 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29[0] = off_101E7D118;
      v29[1] = a1;
      v29[3] = v29;
      (*(*v12 + 152))(v12, v13, v18, buf, &v15, &v25, v29);
      sub_10044FE7C(v29);
      if (v16)
      {
        sub_100004A34(v16);
      }

      *(a1 + 493) = 0;
      v17[0] = v18;
      sub_10027B454(v17);
      sub_10028C89C(&v23, *(&v23 + 1));
      if (SHIBYTE(v22[4]) < 0)
      {
        operator delete(*(&v22[3] + 1));
      }

      if (LOBYTE(v22[3]) == 1 && SHIBYTE(v22[2]) < 0)
      {
        operator delete(*(&v22[1] + 1));
      }

      sub_100077CD4(v22, *(&v22[0] + 1));
      v18[0] = &v20 + 1;
      sub_1000B2AF8(v18);
      v18[0] = buf;
      sub_100112048(v18);
      sub_100009970(&v25, v26);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v11 = *(a1 + 104);
      sub_100288F04(v28, a1 + 368);
      v30[0] = off_101E7D098;
      v30[1] = a1;
      v30[3] = v30;
      (*(*v11 + 176))(v11, v28, v30);
      sub_1003F2928(v30);
      sub_100077CD4(v28, v28[1]);
      if (!v5)
      {
        return;
      }
    }

    sub_100004A34(v5);
  }
}

void sub_100792510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_100004A34(v39);
  sub_100009970(v40 - 168, *(v40 - 160));
  if (v38)
  {
    sub_100004A34(v38);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10079263C(uint64_t result, uint64_t a2)
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

void sub_100792658(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100792668(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v118[0] = 0;
  v118[1] = 0;
  v116[1] = 0;
  v117 = v118;
  v115 = v116;
  v116[0] = 0;
  v114[0] = 0;
  v114[1] = 0;
  v112 = 0;
  v113 = v114;
  *&v111 = &v111 + 8;
  *(&v111 + 1) = 0;
  v5 = *(a1 + 128);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 120);
      if (v8)
      {
        (*(*v8 + 232))(v92);
        sub_100009970(&v111, *(&v111 + 1));
        v9 = *&v92[8];
        v111 = *v92;
        v112 = *&v92[16];
        if (*&v92[16])
        {
          *(*&v92[8] + 16) = &v111 + 8;
          *v92 = &v92[8];
          *&v92[8] = 0uLL;
          v9 = 0;
        }

        else
        {
          *&v111 = &v111 + 8;
        }

        sub_100009970(v92, v9);
      }

      sub_100004A34(v7);
    }
  }

  memset(&v110, 0, sizeof(v110));
  memset(&v109, 0, sizeof(v109));
  memset(&v108, 0, sizeof(v108));
  memset(&v107, 0, sizeof(v107));
  memset(&v106, 0, sizeof(v106));
  memset(&v105, 0, sizeof(v105));
  v10 = *(a1 + 344);
  v83 = a3;
  if (v10)
  {
    if (*(v10 + 47) < 0)
    {
      sub_100005F2C(&__p, *(v10 + 24), *(v10 + 32));
    }

    else
    {
      __p = *(v10 + 24);
      v104 = *(v10 + 40);
    }

    v82 = sub_100927A9C(&__p);
    if (SHIBYTE(v104) < 0)
    {
      operator delete(__p);
    }

    std::string::operator=(&v110, (*(a1 + 344) + 96));
    std::string::operator=(&v109, (*(a1 + 344) + 48));
    std::string::operator=(&v108, (*(a1 + 344) + 144));
    std::string::operator=(&v107, *(a1 + 344));
    std::string::operator=(&v106, (*(a1 + 344) + 168));
  }

  else
  {
    v82 = 0;
  }

  v84 = (a1 + 376);
  v11 = *(a1 + 376);
  if (!v11)
  {
    goto LABEL_241;
  }

  v12 = a1 + 376;
  do
  {
    if (*(v11 + 32) >= 1)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * (*(v11 + 32) < 1));
  }

  while (v11);
  if (v12 == v84 || *(v12 + 32) > 1)
  {
LABEL_241:
    if (*(a1 + 384))
    {
      std::string::operator=(&v105, (*(a1 + 368) + 40));
    }
  }

  else
  {
    *v92 = 1;
    v13 = sub_100007DEC(a1 + 368, v92);
    std::string::operator=(&v105, v13);
  }

  (***(a1 + 48))(v92);
  ServiceMap = Registry::getServiceMap(*v92);
  v15 = ServiceMap;
  if (v16 < 0)
  {
    v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v16 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(ServiceMap);
  *__dst = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, __dst);
  if (!v20)
  {
    v86 = 0;
    goto LABEL_34;
  }

  v21 = v20[4];
  v86 = v20[3];
  if (!v21)
  {
LABEL_34:
    std::mutex::unlock(v15);
    v22 = 0;
    v81 = 1;
    goto LABEL_35;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v15);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = v21;
  sub_100004A34(v21);
  v81 = 0;
LABEL_35:
  v80 = v22;
  if (*&v92[8])
  {
    sub_100004A34(*&v92[8]);
  }

  v24 = *(a1 + 136);
  v23 = *(a1 + 144);
  if (v24 == v23)
  {
    goto LABEL_140;
  }

  v25 = a2 + 8;
  do
  {
    if (!*(v24 + 64))
    {
      goto LABEL_139;
    }

    if ((*(v24 + 95) & 0x8000000000000000) != 0)
    {
      if (!*(v24 + 80))
      {
        goto LABEL_139;
      }
    }

    else if (!*(v24 + 95))
    {
      goto LABEL_139;
    }

    if ((&v111 + 8) != sub_100007A6C(&v111, (v24 + 72)))
    {
      goto LABEL_139;
    }

    memset(&__str, 0, sizeof(__str));
    if ((*(v24 + 119) & 0x8000000000000000) != 0)
    {
      if (*(v24 + 104))
      {
LABEL_49:
        std::string::operator=(&__str, (v24 + 96));
        *__dst = v24 + 72;
        v26 = sub_100173F08(&v115, (v24 + 72));
        std::string::operator=((v26 + 56), &__str);
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          goto LABEL_56;
        }
      }
    }

    else if (*(v24 + 119))
    {
      goto LABEL_49;
    }

    if (v25 != sub_100007A6C(a2, (v24 + 72)) && *(sub_1000E20F0(a2, (v24 + 72)) + 184) == 1)
    {
      v28 = sub_1000E20F0(a2, (v24 + 72));
      if ((*(v28 + 184) & 1) == 0)
      {
        sub_1000D1644();
      }

      std::string::operator=(&__str, (v28 + 160));
    }

LABEL_56:
    memset(&v101, 0, sizeof(v101));
    v29 = *v84;
    if (!*v84)
    {
      goto LABEL_64;
    }

    v30 = *v24;
    while (1)
    {
      v31 = *(v29 + 8);
      if (v30 >= v31)
      {
        break;
      }

LABEL_61:
      v29 = *v29;
      if (!v29)
      {
        goto LABEL_64;
      }
    }

    if (v31 < v30)
    {
      ++v29;
      goto LABEL_61;
    }

    v32 = sub_100007DEC(a1 + 368, v24);
    std::string::operator=(&v101, v32);
    *__dst = v24 + 72;
    v33 = sub_100173F08(&v117, (v24 + 72));
    std::string::operator=((v33 + 56), &v101);
LABEL_64:
    v34 = *v24;
    *__dst = v24 + 72;
    *(sub_10079C794(&v113, (v24 + 72)) + 56) = v34;
    if (*(v24 + 64) == 1)
    {
      v100 = 0;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v95 = 0u;
      v93 = 0u;
      *v94 = 0u;
      memset(v92, 0, sizeof(v92));
      (***(a1 + 48))(v88);
      v35 = Registry::getServiceMap(v88[0]);
      v36 = v35;
      if (v37 < 0)
      {
        v38 = (v37 & 0x7FFFFFFFFFFFFFFFLL);
        v39 = 5381;
        do
        {
          v37 = v39;
          v40 = *v38++;
          v39 = (33 * v39) ^ v40;
        }

        while (v40);
      }

      std::mutex::lock(v35);
      *__dst = v37;
      v41 = sub_100009510(&v36[1].__m_.__sig, __dst);
      if (v41)
      {
        v43 = v41[3];
        v42 = v41[4];
        if (v42)
        {
          atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v36);
          atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v42);
          v44 = 0;
          goto LABEL_73;
        }
      }

      else
      {
        v43 = 0;
      }

      std::mutex::unlock(v36);
      v42 = 0;
      v44 = 1;
LABEL_73:
      if (*(v24 + 95) < 0)
      {
        sub_100005F2C(__dst, *(v24 + 72), *(v24 + 80));
      }

      else
      {
        *__dst = *(v24 + 72);
        *&__dst[16] = *(v24 + 88);
      }

      (*(*v43 + 184))(v92, v43, __dst);
      v45 = v83;
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
        if ((v44 & 1) == 0)
        {
LABEL_78:
          sub_100004A34(v42);
        }
      }

      else if ((v44 & 1) == 0)
      {
        goto LABEL_78;
      }

      if (v88[1])
      {
        sub_100004A34(v88[1]);
      }

      v91 = 0u;
      memset(__dst, 0, sizeof(__dst));
      sub_100A34BC8(__dst);
      v46 = v83[1];
      if (v46 >= v83[2])
      {
        v47 = sub_10079741C(v83);
        v45 = v83;
      }

      else
      {
        bzero(v83[1], 0x2A0uLL);
        *(v46 + 297) = 4;
        *(v46 + 308) = 0u;
        *(v46 + 324) = 0u;
        *(v46 + 340) = 0u;
        *(v46 + 356) = 0u;
        *(v46 + 372) = 0u;
        *(v46 + 388) = 0u;
        *(v46 + 404) = 0u;
        *(v46 + 420) = 0u;
        *(v46 + 436) = 0u;
        *(v46 + 452) = 0u;
        *(v46 + 468) = 0u;
        *(v46 + 484) = 0u;
        *(v46 + 500) = 0u;
        *(v46 + 516) = 0u;
        *(v46 + 532) = 0u;
        *(v46 + 548) = 0u;
        *(v46 + 564) = 0u;
        *(v46 + 580) = 0u;
        *(v46 + 596) = 0u;
        *(v46 + 612) = 0u;
        *(v46 + 628) = 0u;
        v47 = v46 + 672;
        *(v46 + 642) = 0;
      }

      v45[1] = v47;
      std::string::operator=((v47 - 672), (a1 + 440));
      std::string::operator=((v47 - 648), (v24 + 72));
      std::string::operator=((v47 - 624), __dst);
      std::string::operator=((v47 - 600), &__dst[24]);
      std::string::operator=((v47 - 576), (v24 + 120));
      std::string::operator=((v47 - 552), (v24 + 144));
      v48 = __dst[23];
      if (__dst[23] < 0)
      {
        v48 = *&__dst[8];
      }

      if (v48)
      {
        v49 = HIBYTE(v91);
        if (v91 < 0)
        {
          v49 = v91;
        }

        if (v49)
        {
          if ((*(v47 - 553) & 0x8000000000000000) != 0)
          {
            if (!*(v47 - 568))
            {
              goto LABEL_103;
            }
          }

          else if (!*(v47 - 553))
          {
            goto LABEL_103;
          }

          if ((*(v47 - 529) & 0x8000000000000000) != 0)
          {
            if (!*(v47 - 544))
            {
              goto LABEL_103;
            }
          }

          else if (!*(v47 - 529))
          {
            goto LABEL_103;
          }

          (*(**(a1 + 48) + 160))(v88);
          v50 = (v47 - 528);
          if (*(v47 - 505) < 0)
          {
            operator delete(*v50);
          }

          v51 = *v88;
          *(v47 - 512) = v89;
          *v50 = v51;
        }
      }

LABEL_103:
      if ((*(v47 - 601) & 0x8000000000000000) != 0)
      {
        if (!*(v47 - 616))
        {
          goto LABEL_111;
        }
      }

      else if (!*(v47 - 601))
      {
        goto LABEL_111;
      }

      if (v86)
      {
        (*(*v86 + 24))(v88);
        v52 = (v47 - 144);
        if (*(v47 - 121) < 0)
        {
          operator delete(*v52);
        }

        v53 = *v88;
        *(v47 - 128) = v89;
        *v52 = v53;
      }

LABEL_111:
      std::string::operator=((v47 - 504), &__str);
      v54 = BYTE7(v95);
      if (SBYTE7(v95) < 0)
      {
        v54 = v94[1];
      }

      if (v54)
      {
        std::string::operator=((v47 - 480), &v96);
        std::string::operator=((v47 - 168), &v92[24]);
        std::string::operator=((v47 - 192), v92);
      }

      std::string::operator=((v47 - 456), &v101);
      *(v47 - 384) = 257;
      *(v47 - 372) = *v24;
      *(v47 - 364) = v82;
      std::string::operator=((v47 - 360), &v110);
      std::string::operator=((v47 - 336), &v109);
      std::string::operator=((v47 - 312), &v108);
      std::string::operator=((v47 - 288), &v107);
      std::string::operator=((v47 - 264), (a1 + 416));
      std::string::operator=((v47 - 240), &v105);
      std::string::operator=((v47 - 216), &v106);
      if (v25 != sub_100007A6C(a2, (v24 + 72)))
      {
        v55 = sub_1000E20F0(a2, (v24 + 72));
        if (*(v55 + 25) == 1)
        {
          *(v47 - 378) = *(v55 + 24);
        }

        *(v47 - 377) = *(v55 + 224);
        *(v47 - 24) = *(v55 + 280);
        *(v47 - 382) = *(v55 + 225);
      }

      if (SHIBYTE(v91) < 0)
      {
        operator delete(*&__dst[24]);
      }

      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      if (SHIBYTE(v100) < 0)
      {
        operator delete(v99);
      }

      if (SHIBYTE(v98) < 0)
      {
        operator delete(*(&v97 + 1));
      }

      if (SBYTE7(v97) < 0)
      {
        operator delete(v96);
      }

      if (SBYTE7(v95) < 0)
      {
        operator delete(v94[0]);
      }

      if (SHIBYTE(v93) < 0)
      {
        operator delete(*&v92[24]);
      }

      if ((v92[23] & 0x80000000) != 0)
      {
        operator delete(*v92);
      }
    }

    if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v101.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

LABEL_139:
    v24 += 168;
  }

  while (v24 != v23);
LABEL_140:
  v56 = *(a1 + 160);
  v85 = *(a1 + 168);
  if (v56 != v85)
  {
    while (1)
    {
      if (*(v56 + 12) == 3 && *(v56 + 80) == 1)
      {
        v57 = *(v56 + 56);
        v58 = *(v56 + 64);
        if (v58 != v57)
        {
          break;
        }
      }

LABEL_222:
      v56 += 88;
      if (v56 == v85)
      {
        goto LABEL_223;
      }
    }

    while (2)
    {
      if ((*(v57 + 39) & 0x8000000000000000) != 0)
      {
        if (!*(v57 + 24))
        {
          goto LABEL_221;
        }
      }

      else if (!*(v57 + 39))
      {
        goto LABEL_221;
      }

      if ((*(v57 + 89) & 1) == 0 && (&v111 + 8) == sub_100007A6C(&v111, (v57 + 16)))
      {
        v100 = 0;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v95 = 0u;
        v93 = 0u;
        *v94 = 0u;
        memset(v92, 0, sizeof(v92));
        (***(a1 + 48))(&__str);
        v59 = Registry::getServiceMap(__str.__r_.__value_.__l.__data_);
        v60 = v59;
        if (v61 < 0)
        {
          v62 = (v61 & 0x7FFFFFFFFFFFFFFFLL);
          v63 = 5381;
          do
          {
            v61 = v63;
            v64 = *v62++;
            v63 = (33 * v63) ^ v64;
          }

          while (v64);
        }

        std::mutex::lock(v59);
        *__dst = v61;
        v65 = sub_100009510(&v60[1].__m_.__sig, __dst);
        if (v65)
        {
          v67 = v65[3];
          v66 = v65[4];
          if (v66)
          {
            atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v60);
            atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v66);
            v68 = 0;
            goto LABEL_158;
          }
        }

        else
        {
          v67 = 0;
        }

        std::mutex::unlock(v60);
        v66 = 0;
        v68 = 1;
LABEL_158:
        if (*(v57 + 39) < 0)
        {
          sub_100005F2C(__dst, *(v57 + 16), *(v57 + 24));
        }

        else
        {
          *__dst = *(v57 + 16);
          *&__dst[16] = *(v57 + 32);
        }

        (*(*v67 + 184))(v92, v67, __dst);
        if ((__dst[23] & 0x80000000) != 0)
        {
          operator delete(*__dst);
          if ((v68 & 1) == 0)
          {
LABEL_163:
            sub_100004A34(v66);
          }
        }

        else if ((v68 & 1) == 0)
        {
          goto LABEL_163;
        }

        if (__str.__r_.__value_.__l.__size_)
        {
          sub_100004A34(__str.__r_.__value_.__l.__size_);
        }

        v69 = v83[1];
        if (v69 >= v83[2])
        {
          v70 = sub_10079741C(v83);
        }

        else
        {
          bzero(v83[1], 0x2A0uLL);
          *(v69 + 297) = 4;
          *(v69 + 308) = 0u;
          *(v69 + 324) = 0u;
          *(v69 + 340) = 0u;
          *(v69 + 356) = 0u;
          *(v69 + 372) = 0u;
          *(v69 + 388) = 0u;
          *(v69 + 404) = 0u;
          *(v69 + 420) = 0u;
          *(v69 + 436) = 0u;
          *(v69 + 452) = 0u;
          *(v69 + 468) = 0u;
          *(v69 + 484) = 0u;
          *(v69 + 500) = 0u;
          *(v69 + 516) = 0u;
          *(v69 + 532) = 0u;
          *(v69 + 548) = 0u;
          *(v69 + 564) = 0u;
          *(v69 + 580) = 0u;
          *(v69 + 596) = 0u;
          *(v69 + 612) = 0u;
          *(v69 + 628) = 0u;
          v70 = v69 + 672;
          *(v69 + 642) = 0;
        }

        v83[1] = v70;
        std::string::operator=((v70 - 672), (a1 + 440));
        std::string::operator=((v70 - 648), (v57 + 16));
        std::string::operator=((v70 - 624), (v57 + 96));
        std::string::operator=((v70 - 600), (v57 + 120));
        std::string::operator=((v70 - 576), (v57 + 144));
        std::string::operator=((v70 - 552), (v57 + 168));
        if ((*(v70 - 601) & 0x8000000000000000) != 0)
        {
          if (!*(v70 - 616))
          {
            goto LABEL_190;
          }
        }

        else if (!*(v70 - 601))
        {
          goto LABEL_190;
        }

        if ((*(v70 - 577) & 0x8000000000000000) != 0)
        {
          if (!*(v70 - 592))
          {
            goto LABEL_190;
          }
        }

        else if (!*(v70 - 577))
        {
          goto LABEL_190;
        }

        if ((*(v70 - 553) & 0x8000000000000000) != 0)
        {
          if (!*(v70 - 568))
          {
            goto LABEL_190;
          }
        }

        else if (!*(v70 - 553))
        {
          goto LABEL_190;
        }

        if ((*(v70 - 529) & 0x8000000000000000) != 0)
        {
          if (!*(v70 - 544))
          {
            goto LABEL_190;
          }
        }

        else if (!*(v70 - 529))
        {
          goto LABEL_190;
        }

        (*(**(a1 + 48) + 160))(__dst);
        v71 = (v70 - 528);
        if (*(v70 - 505) < 0)
        {
          operator delete(*v71);
        }

        v72 = *__dst;
        *(v70 - 512) = *&__dst[16];
        *v71 = v72;
LABEL_190:
        if (v116 != sub_100007A6C(&v115, (v57 + 16)))
        {
          v73 = sub_1000E20F0(&v115, (v57 + 16));
          std::string::operator=((v70 - 504), v73);
          *(v70 - 383) = 1;
        }

        v74 = BYTE7(v95);
        if (SBYTE7(v95) < 0)
        {
          v74 = v94[1];
        }

        if (v74)
        {
          std::string::operator=((v70 - 480), &v96);
          std::string::operator=((v70 - 168), &v92[24]);
          std::string::operator=((v70 - 192), v92);
        }

        if (v118 == sub_100007A6C(&v117, (v57 + 16)))
        {
          v75 = (v57 + 192);
        }

        else
        {
          v75 = sub_1000E20F0(&v117, (v57 + 16));
        }

        std::string::operator=((v70 - 456), v75);
        *(v70 - 384) = 0;
        if (a2 + 8 != sub_100007A6C(a2, (v57 + 16)))
        {
          v76 = sub_1000E20F0(a2, (v57 + 16));
          *(v70 - 382) = *(v76 + 225);
          if (*(v76 + 25) == 1)
          {
            *(v70 - 378) = *(v76 + 24);
          }

          *(v70 - 377) = *(v76 + 224);
          *(v70 - 24) = *(v76 + 280);
          v77 = *(v76 + 264);
          *(v70 - 8) = *(v76 + 272);
          *(v70 - 16) = v77;
        }

        if (v114 != sub_100007A6C(&v113, (v57 + 16)))
        {
          *(v70 - 372) = *sub_1000E20F0(&v113, (v57 + 16));
        }

        *(v70 - 364) = v82;
        std::string::operator=((v70 - 360), &v110);
        std::string::operator=((v70 - 336), &v109);
        std::string::operator=((v70 - 312), &v108);
        std::string::operator=((v70 - 288), &v107);
        std::string::operator=((v70 - 264), (a1 + 416));
        std::string::operator=((v70 - 240), &v105);
        std::string::operator=((v70 - 216), &v106);
        if (v86)
        {
          (*(*v86 + 24))(__dst);
          v78 = (v70 - 144);
          if (*(v70 - 121) < 0)
          {
            operator delete(*v78);
          }

          v79 = *__dst;
          *(v70 - 128) = *&__dst[16];
          *v78 = v79;
        }

        if (SHIBYTE(v100) < 0)
        {
          operator delete(v99);
        }

        if (SHIBYTE(v98) < 0)
        {
          operator delete(*(&v97 + 1));
        }

        if (SBYTE7(v97) < 0)
        {
          operator delete(v96);
        }

        if (SBYTE7(v95) < 0)
        {
          operator delete(v94[0]);
        }

        if (SHIBYTE(v93) < 0)
        {
          operator delete(*&v92[24]);
        }

        if ((v92[23] & 0x80000000) != 0)
        {
          operator delete(*v92);
        }
      }

LABEL_221:
      v57 += 216;
      if (v57 == v58)
      {
        goto LABEL_222;
      }

      continue;
    }
  }

LABEL_223:
  if ((v81 & 1) == 0)
  {
    sub_100004A34(v80);
  }

  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v108.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }

  sub_100009970(&v111, *(&v111 + 1));
  sub_100009970(&v113, v114[0]);
  sub_1000DD0AC(&v115, v116[0]);
  sub_1000DD0AC(&v117, v118[0]);
}

void sub_100793834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  sub_1000D6F38(&a26);
  sub_100FB0A00(&a32);
  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if ((a12 & 1) == 0)
  {
    sub_100004A34(a10);
  }

  if (a72 < 0)
  {
    operator delete(a68);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (*(v78 - 217) < 0)
  {
    operator delete(*(v78 - 240));
  }

  if (*(v78 - 193) < 0)
  {
    operator delete(*(v78 - 216));
  }

  sub_100009970(v78 - 192, *(v78 - 184));
  sub_100009970(v78 - 168, *(v78 - 160));
  sub_1000DD0AC(v78 - 144, *(v78 - 136));
  sub_1000DD0AC(v78 - 120, *(v78 - 112));
  a32 = a19;
  sub_10027B454(&a32);
  _Unwind_Resume(a1);
}

BOOL sub_100793A5C(uint64_t a1)
{
  if (*(a1 + 240) == *(a1 + 248) && *(a1 + 264) == *(a1 + 272))
  {
    result = os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10177E01C();
      return 0;
    }
  }

  else
  {
    if (*(a1 + 336) == 1)
    {
      return 1;
    }

    v2 = *(a1 + 40);
    result = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Internet is not available for blacklist upload", v3, 2u);
      return 0;
    }
  }

  return result;
}

void sub_100793B10(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = 1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Delay blacklist upload for %lu min", buf, 0xCu);
  }

  v15 = 0;
  v16 = 0;
  (***(a1 + 48))(buf);
  Registry::getTimerService(&v15, *buf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v15)
  {
    sub_100004AA0(buf, (a1 + 8));
    v3 = *buf;
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(*(&v3 + 1));
    }

    v4 = v15;
    sub_10000501C(__p, "Delay Blacklist Upload");
    v5 = *(a1 + 24);
    object = v5;
    if (v5)
    {
      dispatch_retain(v5);
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3321888768;
    v9[2] = sub_100793E4C;
    v9[3] = &unk_101E7CBA0;
    v9[4] = a1;
    v10 = v3;
    if (*(&v3 + 1))
    {
      atomic_fetch_add_explicit((*(&v3 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    aBlock = _Block_copy(v9);
    sub_100D23364(v4, __p, 0, 60000000, &object, &aBlock);
    v6 = *buf;
    *buf = 0;
    v7 = *(a1 + 360);
    *(a1 + 360) = v6;
    if (v7)
    {
      (*(*v7 + 8))(v7);
      v8 = *buf;
      *buf = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (*(&v10 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v10 + 1));
    }

    if (*(&v3 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v3 + 1));
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177DFE8();
  }

  if (v16)
  {
    sub_100004A34(v16);
  }
}

void sub_100793DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, dispatch_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100793E4C(void *a1)
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
        v6[0] = off_101E7D1A8;
        v6[3] = v6;
        sub_10079099C(v3, v6);
        sub_10002B644(v6);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100793F08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  sub_100004A34(v2);
  _Unwind_Resume(a1);
}

void sub_100793F24(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 64);
      if (v7)
      {
        v10[1] = v7;
        v10[2] = &v5->__vftable;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_10079B8D8(v11, a2);
        v11[8] = 0;
        operator new();
      }
    }
  }

  else
  {
    v6 = 0;
  }

  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  sub_100795EA8(a2, v9, v8, 5);
  v10[0] = v8;
  sub_10027B2AC(v10);
  v10[0] = v9;
  sub_100111BA8(v10);
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1007940B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10079C550(v10 - 72);
  sub_100795EFC(va);
  sub_100004A34(v9);
  _Unwind_Resume(a1);
}

void sub_100794108(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 240);
  v7 = *(a1 + 248);
  v8 = (a1 + 240);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_10044EDCC(a3, v6, v7, 0x34F72C234F72C235 * ((v7 - v6) >> 3));
  v9 = *v8;
  v10 = v8[1];
  v74 = 0;
  v75 = 0;
  v76 = 0;
  sub_10092F704(v8 + 16, &v74);
  v73[0] = 0;
  v73[1] = 0;
  v72 = v73;
  v12 = *a2;
  v11 = a2[1];
  while (v12 != v11)
  {
    if (sub_10016FA58(&v74, (v12 + 24)))
    {
      sub_100796844(&v72, (v12 + 72));
    }

    v12 += 200;
  }

  sub_100009970(&v74, v75);
  v75 = 0;
  v76 = 0;
  v74 = &v75;
  v13 = *(a1 + 136);
  v14 = *(a1 + 144);
  if (v13 != v14)
  {
    v15 = v13 + 72;
    do
    {
      if ((*(v15 + 23) & 0x8000000000000000) != 0)
      {
        if (*(v15 + 8))
        {
LABEL_12:
          if (subscriber::isSimSettled())
          {
            sub_100005BA0(&v74, v15);
          }
        }
      }

      else if (*(v15 + 23))
      {
        goto LABEL_12;
      }

      v16 = v15 + 96;
      v15 += 168;
    }

    while (v16 != v14);
  }

  v71[0] = 0;
  v71[1] = 0;
  v70 = v71;
  v17 = *(a1 + 160);
  v18 = *(a1 + 168);
  while (v17 != v18)
  {
    if (*(v17 + 80) == 1)
    {
      v19 = *(v17 + 56);
      v20 = *(v17 + 64);
      while (1)
      {
        if (v19 == v20)
        {
          goto LABEL_26;
        }

        if ((*(v19 + 39) & 0x8000000000000000) != 0)
        {
          break;
        }

        if (*(v19 + 39))
        {
          goto LABEL_24;
        }

LABEL_25:
        v19 += 216;
      }

      if (!*(v19 + 24))
      {
        goto LABEL_25;
      }

LABEL_24:
      sub_100005BA0(&v70, (v19 + 16));
      goto LABEL_25;
    }

LABEL_26:
    v17 += 88;
  }

  v21 = *(a1 + 240);
  v22 = *(a1 + 248);
  if (v21 == v22)
  {
    goto LABEL_126;
  }

  v23 = *a3;
  if (*a3 == a3[1])
  {
    goto LABEL_125;
  }

  do
  {
    if (!sub_10064AF30(v21) || sub_1007949D8(a1, v21 + 120))
    {
      goto LABEL_31;
    }

    if ((*(v21 + 191) & 0x8000000000000000) != 0)
    {
      if (!*(v21 + 176))
      {
LABEL_47:
        v31 = *(a1 + 40);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10177E050(&v68, v69, v31);
        }

LABEL_31:
        v21 += 232;
        v23 += 232;
        goto LABEL_32;
      }
    }

    else if (!*(v21 + 191))
    {
      goto LABEL_47;
    }

    v24 = (v21 + 168);
    if (sub_10016FA58(&v72, (v21 + 120)))
    {
      v25 = *(a1 + 40);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v21 + 191) < 0)
        {
          v24 = *v24;
        }

        *buf = 136315138;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I ignore blocklisted plan with phone number: %s", buf, 0xCu);
      }

      v26 = v9;
      v27 = *(a1 + 248);
      if (v21 + 232 == v27)
      {
        v29 = v21;
      }

      else
      {
        v28 = v21;
        do
        {
          v29 = v28 + 232;
          sub_100796250(v28, (v28 + 232));
          v30 = v28 + 464;
          v28 += 232;
        }

        while (v30 != v27);
        v27 = *(a1 + 248);
      }

      while (v27 != v29)
      {
        v27 -= 232;
        sub_10044F1E0(v27);
      }

      *(a1 + 248) = v29;
      v40 = a3[1];
      if (v23 + 232 == v40)
      {
        v38 = v23;
      }

      else
      {
        v41 = v23;
        do
        {
          v38 = v41 + 232;
          sub_100796250(v41, (v41 + 232));
          v42 = v41 + 464;
          v41 += 232;
        }

        while (v42 != v40);
        v40 = a3[1];
      }

      v9 = v26;
      while (v40 != v38)
      {
        v40 -= 232;
        sub_10044F1E0(v40);
      }

      goto LABEL_83;
    }

    if (!sub_10016FA58(&v74, (v21 + 120)))
    {
      v66 = v10;
      v43 = a3[1];
      if (v23 + 232 == v43)
      {
        v45 = v23;
      }

      else
      {
        v65 = v9;
        v44 = v23;
        do
        {
          v45 = v44 + 232;
          sub_100796250(v44, (v44 + 232));
          v46 = v44 + 464;
          v44 += 232;
        }

        while (v46 != v43);
        v43 = a3[1];
        v9 = v65;
      }

      while (v43 != v45)
      {
        v43 -= 232;
        sub_10044F1E0(v43);
      }

      a3[1] = v45;
      v47 = sub_10016FA58(&v70, (v21 + 120));
      v48 = *(a1 + 40);
      v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
      if (v47)
      {
        v10 = v66;
        if (v49)
        {
          if (*(v21 + 191) < 0)
          {
            v24 = *v24;
          }

          *buf = 136315138;
          *&buf[4] = v24;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I ignore disabled plan with phone number: %s", buf, 0xCu);
        }

        v21 += 232;
      }

      else
      {
        v10 = v66;
        if (v49)
        {
          if (*(v21 + 191) < 0)
          {
            v24 = *v24;
          }

          *buf = 136315138;
          *&buf[4] = v24;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I ignore dangling plan with phone number: %s", buf, 0xCu);
        }

        v50 = *(a1 + 248);
        if (v21 + 232 == v50)
        {
          v53 = v21;
        }

        else
        {
          v51 = v9;
          v52 = v21;
          do
          {
            v53 = v52 + 232;
            sub_100796250(v52, (v52 + 232));
            v54 = v52 + 464;
            v52 += 232;
          }

          while (v54 != v50);
          v50 = *(a1 + 248);
          v9 = v51;
        }

        while (v50 != v53)
        {
          v50 -= 232;
          sub_10044F1E0(v50);
        }

        *(a1 + 248) = v53;
      }

      goto LABEL_32;
    }

    if (!sub_10016FA58(a1 + 464, (v21 + 120)) || (*buf = v21 + 120, (v32 = *(sub_10079B054(a1 + 464, (v21 + 120)) + 64)) == 0))
    {
LABEL_56:
      v34 = *(a1 + 40);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v21 + 191) < 0)
        {
          v24 = *v24;
        }

        *buf = 136315138;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I ignore plan without entitlement result. phone number: %s", buf, 0xCu);
      }

      v35 = a3[1];
      if (v23 + 232 == v35)
      {
        v38 = v23;
      }

      else
      {
        v36 = v9;
        v37 = v23;
        do
        {
          v38 = v37 + 232;
          sub_100796250(v37, (v37 + 232));
          v39 = v37 + 464;
          v37 += 232;
        }

        while (v39 != v35);
        v35 = a3[1];
        v9 = v36;
      }

      while (v35 != v38)
      {
        v35 -= 232;
        sub_10044F1E0(v35);
      }

      v21 += 232;
      goto LABEL_83;
    }

    while (1)
    {
      v33 = *(v32 + 7);
      if (v33 <= 13)
      {
        break;
      }

LABEL_55:
      v32 = *v32;
      if (!v32)
      {
        goto LABEL_56;
      }
    }

    if (v33 != 13)
    {
      ++v32;
      goto LABEL_55;
    }

    *buf = v21 + 120;
    v55 = sub_10079B054(a1 + 464, (v21 + 120));
    v67 = 13;
    *buf = &v67;
    if (*(sub_10030C46C(v55 + 56, &v67) + 8) == 2)
    {
      goto LABEL_31;
    }

    v56 = *(a1 + 40);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v21 + 191) < 0)
      {
        v24 = *v24;
      }

      *buf = 136315138;
      *&buf[4] = v24;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I ignore entitlement forbidden plan : %s", buf, 0xCu);
    }

    v57 = v9;
    v58 = *(a1 + 248);
    if (v21 + 232 == v58)
    {
      v60 = v21;
    }

    else
    {
      v59 = v21;
      do
      {
        v60 = v59 + 232;
        sub_100796250(v59, (v59 + 232));
        v61 = v59 + 464;
        v59 += 232;
      }

      while (v61 != v58);
      v58 = *(a1 + 248);
    }

    while (v58 != v60)
    {
      v58 -= 232;
      sub_10044F1E0(v58);
    }

    *(a1 + 248) = v60;
    v62 = a3[1];
    if (v23 + 232 == v62)
    {
      v38 = v23;
    }

    else
    {
      v63 = v23;
      do
      {
        v38 = v63 + 232;
        sub_100796250(v63, (v63 + 232));
        v64 = v63 + 464;
        v63 += 232;
      }

      while (v64 != v62);
      v62 = a3[1];
    }

    v9 = v57;
    while (v62 != v38)
    {
      v62 -= 232;
      sub_10044F1E0(v62);
    }

LABEL_83:
    a3[1] = v38;
LABEL_32:
    v22 = *(a1 + 248);
  }

  while (v21 != v22 && v23 != a3[1]);
LABEL_125:
  v21 = *v8;
LABEL_126:
  if (v10 - v9 != v22 - v21)
  {
    while (v21 != v22)
    {
      sub_10064AF7C(v21, (a1 + 40));
      v21 += 232;
    }

    (*(**(a1 + 104) + 104))(*(a1 + 104), v8);
  }

  sub_100009970(&v70, v71[0]);
  sub_100009970(&v74, v75);
  sub_1007975A0(&v72, v73[0]);
}

void sub_100794954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, char *a18, uint64_t a19, void **a20, void *a21, uint64_t a22, char a23, char *a24)
{
  sub_100009970(&a17, a18);
  sub_100009970(&a23, a24);
  sub_1007975A0(&a20, a21);
  sub_10044F294(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1007949D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 128);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 120);
  if (v7)
  {
    v8 = (*(*v7 + 248))(v7, a2);
  }

  else
  {
    v8 = 0;
  }

  sub_100004A34(v6);
  return v8;
}

void sub_100794A7C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const std::string *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  memset(&__str, 0, sizeof(__str));
  v10 = *(a3 + 8);
  if (!v10)
  {
LABEL_6:
    v94[0].var0 = 1;
    p_buf = v94;
    goto LABEL_8;
  }

  while (1)
  {
    v11 = *(v10 + 8);
    if (v11 <= 2)
    {
      break;
    }

LABEL_5:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  if (v11 != 2)
  {
    ++v10;
    goto LABEL_5;
  }

  buf.var0 = 2;
  p_buf = &buf;
LABEL_8:
  v13 = sub_100007DEC(a3, &p_buf->var0);
  if (*(v13 + 23) < 0)
  {
    sub_100005F2C(&__str, *v13, v13[1]);
  }

  else
  {
    v14 = *v13;
    __str.__r_.__value_.__r.__words[2] = v13[2];
    *&__str.__r_.__value_.__l.__data_ = v14;
  }

  v78 = 0;
  v79 = 0;
  v80 = 0;
  sub_100791854(a1, a5, &v78);
  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    buf.var0 = 134217984;
    *&buf.var1 = v80;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Found %ld new phone numbers", &buf, 0xCu);
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  memset(&v77, 0, sizeof(v77));
  v16 = *(a1 + 344);
  if (v16)
  {
    std::string::operator=(&v77, v16 + 7);
  }

  v17 = *a2;
  v69 = *(a2 + 8);
  if (*a2 != v69)
  {
    v73 = a1;
    do
    {
      sub_100316560(v17, &buf);
      v74 = v17;
      v18 = *(a1 + 344);
      v19 = buf.var2.__rep_.__s.__data_[15];
      if (buf.var2.__rep_.__s.__data_[15] >= 0)
      {
        data = buf.var2.__rep_.__s.__data_[15];
      }

      else
      {
        data = buf.var2.__rep_.__l.__data_;
      }

      v21 = *(v18 + 167);
      v22 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(v18 + 152);
      }

      if (data == v21)
      {
        if (buf.var2.__rep_.__s.__data_[15] >= 0)
        {
          v23 = &buf;
        }

        else
        {
          v23 = *&buf.var0;
        }

        v26 = *(v18 + 144);
        v24 = (v18 + 144);
        v25 = v26;
        if (v22 >= 0)
        {
          v27 = v24;
        }

        else
        {
          v27 = v25;
        }

        v28 = memcmp(v23, v27, data) == 0;
        if ((v19 & 0x80000000) == 0)
        {
LABEL_30:
          if (v28)
          {
            goto LABEL_31;
          }

          goto LABEL_74;
        }
      }

      else
      {
        v28 = 0;
        if ((buf.var2.__rep_.__s.__data_[15] & 0x80000000) == 0)
        {
          goto LABEL_30;
        }
      }

      operator delete(*&buf.var0);
      if (v28)
      {
LABEL_31:
        v76[0] = 0;
        v76[1] = 0;
        v75 = v76;
        v30 = *(v74 + 47);
        v29 = *(v74 + 48);
        v70 = v29;
        while (v30 != v29)
        {
          v31 = *(v30 + 56);
          if (v31 != (v30 + 64))
          {
            do
            {
              v32 = v78;
              if (v78 != &v79)
              {
                while (1)
                {
                  v89 = 0u;
                  v90 = 0u;
                  v87 = 0u;
                  v88 = 0u;
                  v85 = 0u;
                  v86 = 0u;
                  v83 = 0u;
                  v84 = 0u;
                  memset(&buf, 0, sizeof(buf));
                  CSIPhoneNumber::CSIPhoneNumber();
                  __p = 0u;
                  v100 = 0u;
                  v97 = 0u;
                  v98 = 0u;
                  v95 = 0u;
                  v96 = 0u;
                  memset(v94, 0, sizeof(v94));
                  CSIPhoneNumber::CSIPhoneNumber();
                  isOriginalNumberSame = CSIPhoneNumber::isOriginalNumberSame(&buf, v94);
                  if (SBYTE7(v100) < 0)
                  {
                    operator delete(__p);
                  }

                  if (SHIBYTE(v98) < 0)
                  {
                    operator delete(*(&v97 + 1));
                  }

                  if (SBYTE7(v96) < 0)
                  {
                    operator delete(v95);
                  }

                  if (v94[1].var2.__rep_.__s.__data_[15] < 0)
                  {
                    operator delete(*&v94[1].var0);
                  }

                  if (*(&v94[0].var2.__rep_.__l + 23) < 0)
                  {
                    operator delete(v94[0].var2.__rep_.__l.__data_);
                  }

                  if (SBYTE7(v90) < 0)
                  {
                    operator delete(v89);
                  }

                  if (SHIBYTE(v88) < 0)
                  {
                    operator delete(*(&v87 + 1));
                  }

                  if (SBYTE7(v86) < 0)
                  {
                    operator delete(v85);
                  }

                  if (SBYTE7(v84) < 0)
                  {
                    operator delete(v83);
                  }

                  if (*(&buf.var2.__rep_.__l + 23) < 0)
                  {
                    operator delete(buf.var2.__rep_.__l.__data_);
                  }

                  if (isOriginalNumberSame)
                  {
                    break;
                  }

                  v34 = v32[1];
                  if (v34)
                  {
                    do
                    {
                      v35 = v34;
                      v34 = *v34;
                    }

                    while (v34);
                  }

                  else
                  {
                    do
                    {
                      v35 = v32[2];
                      v36 = *v35 == v32;
                      v32 = v35;
                    }

                    while (!v36);
                  }

                  v32 = v35;
                  if (v35 == &v79)
                  {
                    goto LABEL_65;
                  }
                }
              }

              if (v32 != &v79)
              {
                v37 = v32[7];
                *&buf.var0 = v31 + 4;
                *(sub_10079B1AC(&v75, v31 + 4) + 56) = v37;
              }

LABEL_65:
              v38 = v31[1];
              if (v38)
              {
                do
                {
                  v39 = v38;
                  v38 = *v38;
                }

                while (v38);
              }

              else
              {
                do
                {
                  v39 = v31[2];
                  v36 = *v39 == v31;
                  v31 = v39;
                }

                while (!v36);
              }

              v31 = v39;
            }

            while (v39 != (v30 + 64));
          }

          v30 += 80;
          v29 = v70;
        }

        if (v74[240])
        {
          v46 = *(v74 + 25);
          v45 = *(v74 + 26);
          v71 = v45;
          while (v46 != v45)
          {
            if (*(v46 + 80) == 1)
            {
              v48 = *(v46 + 56);
              v47 = *(v46 + 64);
              while (v48 != v47)
              {
                v49 = v75;
                if (v75 != v76)
                {
                  do
                  {
                    v50 = *(v48 + 39);
                    if (v50 >= 0)
                    {
                      v51 = *(v48 + 39);
                    }

                    else
                    {
                      v51 = *(v48 + 24);
                    }

                    v52 = *(v49 + 55);
                    v53 = v52;
                    if (v52 < 0)
                    {
                      v52 = v49[5];
                    }

                    if (v51 == v52)
                    {
                      v54 = v50 >= 0 ? (v48 + 16) : *(v48 + 16);
                      v55 = v53 >= 0 ? v49 + 4 : v49[4];
                      if (!memcmp(v54, v55, v51))
                      {
                        v93 = 0;
                        v91 = 0u;
                        v92 = 0u;
                        v89 = 0u;
                        v90 = 0u;
                        v87 = 0u;
                        v88 = 0u;
                        v85 = 0u;
                        v86 = 0u;
                        v83 = 0u;
                        v84 = 0u;
                        memset(&buf, 0, sizeof(buf));
                        if (v74[56] == 1)
                        {
                          std::string::operator=((&buf.var2.__rep_.__l + 1), (v74 + 64));
                        }

                        sub_100922314((v46 + 16), v56, &v94[0].var0);
                        if (SBYTE7(v85) < 0)
                        {
                          operator delete(v84);
                        }

                        v84 = *&v94[0].var0;
                        *&v85 = v94[0].var2.__rep_.__l.__size_;
                        std::string::operator=((&v85 + 8), (v48 + 16));
                        std::string::operator=(&v87, &__str);
                        std::string::operator=((&v88 + 8), a4);
                        v94[0].var0 = 1;
                        v94[0].var2.__rep_.__l.__data_ = v49[7];
                        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
                        {
                          sub_100005F2C(&v94[0].var2.__rep_.__s.__data_[8], v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          *(&v94[0].var2 + 8) = v77;
                        }

                        v94[1].var2.__rep_.__s.__data_[0] = 0;
                        v90 = *&v94[0].var0;
                        if (v93 == 1)
                        {
                          if (SBYTE7(v92) < 0)
                          {
                            operator delete(v91);
                            v57 = v94[1].var2.__rep_.__s.__data_[0];
                          }

                          else
                          {
                            v57 = 0;
                          }

                          v91 = *&v94[0].var2.__rep_.__l.__size_;
                          *&v92 = *&v94[1].var0;
                          BYTE8(v92) = v57;
                        }

                        else
                        {
                          v91 = *&v94[0].var2.__rep_.__l.__size_;
                          *&v92 = *&v94[1].var0;
                          BYTE8(v92) = 0;
                          LOBYTE(v93) = 1;
                        }

                        v58 = *(v73 + 40);
                        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                        {
                          v59 = &buf.var2.__rep_.__l + 1;
                          if (v83 < 0)
                          {
                            v59 = *(&buf.var2.__rep_.__l + 2);
                          }

                          if ((SBYTE7(v85) & 0x80u) == 0)
                          {
                            v60 = &v84;
                          }

                          else
                          {
                            v60 = v84;
                          }

                          v61 = &v85 + 8;
                          if (v86 < 0)
                          {
                            v61 = *(&v85 + 1);
                          }

                          v62 = &v87;
                          if (SBYTE7(v88) < 0)
                          {
                            v62 = v87;
                          }

                          v63 = &v88 + 8;
                          if (v89 < 0)
                          {
                            v63 = *(&v88 + 1);
                          }

                          v64 = v49[7];
                          v94[0].var0 = 136316418;
                          *&v94[0].var1 = v59;
                          WORD2(v94[0].var2.__rep_.__l.__data_) = 2080;
                          *(&v94[0].var2.__rep_.__l.__data_ + 6) = v60;
                          HIWORD(v94[0].var2.__rep_.__l.__size_) = 2080;
                          *(&v94[0].var2.__rep_.__l + 2) = v61;
                          LOWORD(v94[1].var0) = 2080;
                          *(&v94[1].var0 + 2) = v62;
                          WORD1(v94[1].var2.__rep_.__l.__data_) = 2080;
                          *(&v94[1].var2.__rep_.__l.__data_ + 4) = v63;
                          WORD2(v94[1].var2.__rep_.__l.__size_) = 2048;
                          *(&v94[1].var2.__rep_.__l.__size_ + 6) = v64;
                          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I Add blocklist plan [IMEI: [%s], EID: [%s], ICCID: [%s], UploaderIMEI: [%s], UploaderEID: [%s], out-of-band, createdAt:%lf ]", v94, 0x3Eu);
                        }

                        v65 = *(a6 + 8);
                        if (v65 >= *(a6 + 16))
                        {
                          v66 = sub_100796A88(a6, &buf.var0);
                        }

                        else
                        {
                          sub_10028ABF0(*(a6 + 8), &buf.var0);
                          v66 = v65 + 200;
                        }

                        *(a6 + 8) = v66;
                        if (v93 == 1 && SBYTE7(v92) < 0)
                        {
                          operator delete(v91);
                        }

                        if (SHIBYTE(v89) < 0)
                        {
                          operator delete(*(&v88 + 1));
                        }

                        if (SBYTE7(v88) < 0)
                        {
                          operator delete(v87);
                        }

                        if (SHIBYTE(v86) < 0)
                        {
                          operator delete(*(&v85 + 1));
                        }

                        if (SBYTE7(v85) < 0)
                        {
                          operator delete(v84);
                        }

                        if (SHIBYTE(v83) < 0)
                        {
                          operator delete(*(&buf.var2.__rep_.__l + 2));
                        }

                        if (buf.var2.__rep_.__s.__data_[15] < 0)
                        {
                          operator delete(*&buf.var0);
                        }
                      }
                    }

                    v67 = v49[1];
                    if (v67)
                    {
                      do
                      {
                        v68 = v67;
                        v67 = *v67;
                      }

                      while (v67);
                    }

                    else
                    {
                      do
                      {
                        v68 = v49[2];
                        v36 = *v68 == v49;
                        v49 = v68;
                      }

                      while (!v36);
                    }

                    v49 = v68;
                  }

                  while (v68 != v76);
                  v47 = *(v46 + 64);
                }

                v48 += 216;
              }
            }

            v46 += 88;
            v45 = v71;
          }
        }

        sub_100009970(&v75, v76[0]);
        a1 = v73;
        v41 = v74;
        goto LABEL_155;
      }

LABEL_74:
      v40 = *(a1 + 40);
      v41 = v74;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *(a1 + 344);
        v43 = (v42 + 144);
        if (*(v42 + 167) < 0)
        {
          v43 = *v43;
        }

        sub_100316560(v74, &buf);
        v44 = &buf;
        if (buf.var2.__rep_.__s.__data_[15] < 0)
        {
          v44 = *&buf.var0;
        }

        v94[0].var0 = 136446466;
        *&v94[0].var1 = v43;
        WORD2(v94[0].var2.__rep_.__l.__data_) = 2082;
        *(&v94[0].var2.__rep_.__l.__data_ + 6) = v44;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I ignore non %{public}s record. model:%{public}s", v94, 0x16u);
        if (buf.var2.__rep_.__s.__data_[15] < 0)
        {
          operator delete(*&buf.var0);
        }
      }

LABEL_155:
      v17 = v41 + 408;
    }

    while (v17 != v69);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  sub_100009970(&v78, v79);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_100795384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, void *a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, void *a54, uint64_t a55, void *a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_10027B2AC(&a67);
  sub_100009970(&a31, a32);
  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

void sub_10079553C(void *a1, void *a2)
{
  v29 = 0;
  v30 = 0;
  v31 = 0;
  memset(&v28, 0, sizeof(v28));
  v4 = a1[43];
  if (v4)
  {
    std::string::operator=(&v28, v4 + 7);
  }

  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = (*a2 + 200);
    do
    {
      if (!sub_10064AF30((v6 - 25)))
      {
        v27 = 0;
        *__p = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        *v21 = 0u;
        *v22 = 0u;
        *v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        *v18 = 0u;
        *v15 = 0u;
        *v16 = 0u;
        std::string::operator=(&v16[1], (v6 - 25));
        std::string::operator=(v18, (v6 - 22));
        std::string::operator=(&v19[1], (v6 - 19));
        std::string::operator=(v21, (v6 - 16));
        std::string::operator=(&v22[1], (v6 - 13));
        v7 = *(v6 - 2);
        if ((v7 - 1) >= 4)
        {
          v7 = 0;
        }

        LODWORD(v12) = v7;
        *(&v12 + 1) = *v6;
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&v13, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
        }

        else
        {
          v13 = v28;
        }

        v14 = 0;
        v24 = v12;
        if (v27 == 1)
        {
          if (SBYTE7(v26) < 0)
          {
            operator delete(__p[0]);
            v8 = v14;
          }

          else
          {
            v8 = 0;
          }

          *__p = *&v13.__r_.__value_.__l.__data_;
          *&v26 = *(&v13.__r_.__value_.__l + 2);
          BYTE8(v26) = v8;
        }

        else
        {
          *__p = *&v13.__r_.__value_.__l.__data_;
          *&v26 = *(&v13.__r_.__value_.__l + 2);
          BYTE8(v26) = 0;
          LOBYTE(v27) = 1;
        }

        v9 = v30;
        if (v30 >= v31)
        {
          v10 = sub_100796D70(&v29, v15);
        }

        else
        {
          sub_10028ABF0(v30, v15);
          v10 = (v9 + 200);
        }

        v30 = v10;
        if (v27 == 1 && SBYTE7(v26) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v23) < 0)
        {
          operator delete(v22[1]);
        }

        if (SHIBYTE(v22[0]) < 0)
        {
          operator delete(v21[0]);
        }

        if (SHIBYTE(v20) < 0)
        {
          operator delete(v19[1]);
        }

        if (SHIBYTE(v19[0]) < 0)
        {
          operator delete(v18[0]);
        }

        if (SHIBYTE(v17) < 0)
        {
          operator delete(v16[1]);
        }

        if (SHIBYTE(v16[0]) < 0)
        {
          operator delete(v15[0]);
        }
      }

      v11 = v6 + 4;
      v6 += 29;
    }

    while (v11 != v5);
  }

  sub_100796EB8(a1 + 36, a1[37], v29, v30, 0x8F5C28F5C28F5C29 * ((v30 - v29) >> 3));
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v15[0] = &v29;
  sub_10027B2AC(v15);
}

void sub_1007957DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  if (*(v15 - 89) < 0)
  {
    operator delete(*(v15 - 112));
  }

  a15 = (v15 - 88);
  sub_10027B2AC(&a15);
  _Unwind_Resume(a1);
}

void sub_100795830(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    do
    {
      if (sub_1007949D8(a1, v3 + 120))
      {
        v7 = *a2;
        v8 = a2[1];
        while (v7 != v8)
        {
          if (*(v7 + 240) == 1)
          {
            v9 = *(v7 + 200);
            v10 = *(v7 + 208);
            while (v9 != v10)
            {
              v15 = 0u;
              v16 = 0u;
              memset(v14, 0, sizeof(v14));
              VinylInfo::findProfile();
              if (BYTE8(v16) == 1)
              {
                std::string::operator=(v3, &v15);
                sub_100922314((v9 + 16), v11, &v12);
                if (*(v3 + 47) < 0)
                {
                  operator delete(*(v3 + 24));
                }

                *(v3 + 24) = v12;
                *(v3 + 40) = v13;
                if (BYTE8(v16))
                {
                  sub_100E3A5D4(v14);
                }
              }

              v9 += 88;
            }
          }

          v7 += 408;
        }
      }

      v3 += 232;
    }

    while (v3 != v4);
  }
}

void sub_100795990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a40 == 1)
  {
    sub_100E3A5D4(&a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007959BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2[1] != *a2 || a2[4] != a2[3])
  {
    *buf = 0;
    v9 = 0;
    v7 = "CellularPlanUploadTriggersModel";
    sub_1001048A4();
  }

  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Nothing to update blacklist", buf, 2u);
  }

  return sub_100456F04(a4, 0x1388000000000);
}

void sub_100795D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_100297224(v23 - 128);
  sub_100795E48(&a23);
  sub_1002832A8(&a9);
  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100795E48(uint64_t a1)
{
  v2 = (a1 + 56);
  v5 = (a1 + 80);
  sub_10027E114(&v5);
  v5 = v2;
  sub_10027B2AC(&v5);
  sub_100297224(a1 + 24);
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

uint64_t sub_100795EA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  return (*(*v4 + 48))(v4, a2, a3, &v6);
}

uint64_t sub_100795EFC(uint64_t a1)
{
  sub_10079AFD4(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100795F34(void *a1, int a2, int a3, unsigned __int8 a4, char a5, int a6)
{
  v7 = a1[9];
  if (v7)
  {
    v13 = std::__shared_weak_count::lock(v7);
    if (v13)
    {
      v14 = a1[8];
      if (v14)
      {
        v16[0] = a2;
        v16[1] = a3;
        v18 = a6;
        v17 = a4;
        BYTE1(v17) = a5;
        (*(*v14 + 32))(v14, v16);
LABEL_9:
        sub_100004A34(v13);
        return;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = a1[5];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I No delegate to submit CKUploadDetails", v16, 2u);
  }

  if (v13)
  {
    goto LABEL_9;
  }
}

void sub_100796040(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v4 = (a2 + 8);
      v3 = *a2;

      sub_1001707A0(a1, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    sub_1001704B0(a1, *(a1 + 8));
    *(a1 + 24) = 0;
  }

  else
  {
    sub_1007960D0(a1, a2);
    *(a1 + 24) = 1;
  }
}

void *sub_1007960D0(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100796128(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_100796128(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007961B0(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

void *sub_1007961B0(void *a1, uint64_t a2, void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *sub_100074A00(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_100170A84();
  }

  return v3;
}

uint64_t sub_100796250(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v9;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v10 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v10;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v11 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 168) = v11;
  *(a2 + 191) = 0;
  *(a2 + 168) = 0;
  *(a1 + 192) = a2[12];
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 208) = v12;
  *(a2 + 231) = 0;
  *(a2 + 208) = 0;
  return a1;
}

std::string *sub_1007963E8(uint64_t *a1, uint64_t a2, std::string *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0x8E38E38E38E38E39 * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0x8E38E38E38E38E39 * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 3 * a5;
        sub_10027CEF0(a1, a2, a1[1], a2 + 72 * a5);
        v17 = &a3[v18];
      }

      else
      {
        a1[1] = sub_100796708(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        sub_10027CEF0(a1, v5, v10, &v5[3 * a5]);
        v17 = (a3 + v16);
      }

      sub_10027D3C8(&v20, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x71C71C71C71C71C7 * ((v10 - *a1) >> 3);
    if (v12 > 0x38E38E38E38E38ELL)
    {
      sub_1000CE3D4();
    }

    v13 = a2 - v11;
    v14 = 0x8E38E38E38E38E39 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x1C71C71C71C71C7)
    {
      v15 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v15 = v12;
    }

    v24 = a1;
    if (v15)
    {
      sub_10027CA44(a1, v15);
    }

    v20 = 0;
    v21 = 8 * (v13 >> 3);
    v22 = v21;
    v23 = 0;
    sub_1007965C8(&v20, a3, a5);
    v5 = sub_10027D0D8(a1, &v20, v5);
    sub_10027CC90(&v20);
  }

  return v5;
}

void *sub_1007965C8(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = 0;
    v7 = v4 + 72 * a3;
    v8 = 72 * a3;
    do
    {
      result = (v4 + v6);
      v9 = (a2 + v6);
      if (*(a2 + v6 + 23) < 0)
      {
        result = sub_100005F2C(result, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        result[2] = *(v9 + 2);
        *result = v10;
      }

      v11 = v4 + v6;
      v12 = a2 + v6;
      if (*(a2 + v6 + 47) < 0)
      {
        result = sub_100005F2C((v11 + 24), *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        *(v11 + 40) = *(v12 + 40);
        *(v11 + 24) = v13;
      }

      v14 = v4 + v6;
      v15 = a2 + v6;
      if (*(a2 + v6 + 71) < 0)
      {
        result = sub_100005F2C((v14 + 48), *(v15 + 48), *(v15 + 56));
      }

      else
      {
        v16 = *(v15 + 48);
        *(v14 + 64) = *(v15 + 64);
        *(v14 + 48) = v16;
      }

      v6 += 72;
    }

    while (v8 != v6);
  }

  else
  {
    v7 = result[2];
  }

  v3[2] = v7;
  return result;
}

void sub_1007966BC(_Unwind_Exception *exception_object)
{
  if (*(v2 + v3 + 23) < 0)
  {
    operator delete(*(v2 + v3));
  }

  *(v1 + 16) = v2 + v3;
  _Unwind_Resume(exception_object);
}

char *sub_100796708(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v13 = __dst;
  v14 = __dst;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      if (*(v6 + 47) < 0)
      {
        sub_100005F2C(v4 + 24, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v8 = *(v6 + 24);
        *(v4 + 5) = *(v6 + 5);
        *(v4 + 24) = v8;
      }

      if (*(v6 + 71) < 0)
      {
        sub_100005F2C(v4 + 48, *(v6 + 6), *(v6 + 7));
      }

      else
      {
        v9 = v6[3];
        *(v4 + 8) = *(v6 + 8);
        *(v4 + 3) = v9;
      }

      v6 = (v6 + 72);
      v4 = v14 + 72;
      v14 += 72;
    }

    while (v6 != a3);
  }

  LOBYTE(v12) = 1;
  sub_10027CC04(v11);
  return v4;
}

void sub_100796800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_10027CC04(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100796844(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_1007968F0();
  }

  return v2;
}

uint64_t sub_100796970(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100796A38(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

_BYTE *sub_1007969BC(_BYTE *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  sub_10028ABF0(__dst + 24, a3);
  return __dst;
}

void sub_100796A1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100796A38(uint64_t a1)
{
  sub_10027B330(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_100796A88(uint64_t a1, __int128 *a2)
{
  v2 = 0x8F5C28F5C28F5C29 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x147AE147AE147AELL)
  {
    sub_1000CE3D4();
  }

  if (0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((*(a1 + 16) - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v6 = 0x147AE147AE147AELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10028AEBC(a1, v6);
  }

  v13 = 0;
  v14 = 200 * v2;
  sub_10028ABF0((200 * v2), a2);
  v15 = 200 * v2 + 200;
  v7 = *(a1 + 8);
  v8 = 200 * v2 + *a1 - v7;
  sub_100796BD0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100796D20(&v13);
  return v12;
}

void sub_100796BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100796D20(va);
  _Unwind_Resume(a1);
}

void sub_100796BD0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      sub_100796C44(a4, v7);
      v7 = (v7 + 200);
      a4 += 200;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_10027B330(v6);
      v6 += 200;
    }
  }
}

__n128 sub_100796C44(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v3;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v4 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v4;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  v5 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v5;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  v6 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v6;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  result = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = result;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a1 + 144) = 0;
  *(a1 + 192) = 0;
  if (*(a2 + 192) == 1)
  {
    *(a1 + 144) = a2[9];
    result = a2[10];
    *(a1 + 176) = *(a2 + 22);
    *(a1 + 160) = result;
    *(a2 + 21) = 0;
    *(a2 + 22) = 0;
    *(a2 + 20) = 0;
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = 1;
  }

  return result;
}

uint64_t sub_100796D20(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 200;
    sub_10027B330(i - 200);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100796D70(uint64_t a1, __int128 *a2)
{
  v2 = 0x8F5C28F5C28F5C29 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x147AE147AE147AELL)
  {
    sub_1000CE3D4();
  }

  if (0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((*(a1 + 16) - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v6 = 0x147AE147AE147AELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10028AEBC(a1, v6);
  }

  v13 = 0;
  v14 = 200 * v2;
  sub_10028ABF0((200 * v2), a2);
  v15 = 200 * v2 + 200;
  v7 = *(a1 + 8);
  v8 = 200 * v2 + *a1 - v7;
  sub_100796BD0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100796D20(&v13);
  return v12;
}

void sub_100796EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100796D20(va);
  _Unwind_Resume(a1);
}

std::string *sub_100796EB8(void *a1, uint64_t a2, std::string *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0x8F5C28F5C28F5C29 * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0x8F5C28F5C28F5C29 * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 200 * a5;
        sub_1007970C0(a1, a2, a1[1], a2 + 200 * a5);
        v17 = (v7 + v18);
      }

      else
      {
        a1[1] = sub_10028AB6C(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        sub_1007970C0(a1, v5, v10, v5 + 200 * a5);
        v17 = (v7 + v16);
      }

      sub_10028AE10(v23, v7, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x70A3D70A3D70A3D7 * ((v10 - *a1) >> 3);
    if (v12 > 0x147AE147AE147AELL)
    {
      sub_1000CE3D4();
    }

    v13 = a2 - v11;
    v14 = 0x8F5C28F5C28F5C29 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0xA3D70A3D70A3D7)
    {
      v15 = 0x147AE147AE147AELL;
    }

    else
    {
      v15 = v12;
    }

    v26 = a1;
    if (v15)
    {
      sub_10028AEBC(a1, v15);
    }

    v19 = (8 * (v13 >> 3));
    v23[0] = 0;
    v23[1] = v19;
    v24 = v19;
    v25 = 0;
    v20 = 200 * a5;
    v21 = &v19[200 * a5];
    do
    {
      sub_10028ABF0(v19, v7);
      v19 += 200;
      v7 = (v7 + 200);
      v20 -= 200;
    }

    while (v20);
    v24 = v21;
    v5 = sub_100797178(a1, v23, v5);
    sub_100796D20(v23);
  }

  return v5;
}

void sub_1007970C0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = (a2 + v7 - a4);
  if (v8 >= a3)
  {
    v10 = *(a1 + 8);
  }

  else
  {
    v10 = *(a1 + 8);
    do
    {
      sub_100796C44(v10, v8);
      v8 = (v8 + 200);
      v10 += 200;
    }

    while (v8 < a3);
  }

  *(a1 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 200;
    v12 = a4 - v7;
    v13 = (a2 + v7 - 200 - a4);
    do
    {
      sub_100797234(v11, v13);
      v11 -= 200;
      v13 = (v13 - 200);
      v12 += 200;
    }

    while (v12);
  }
}

uint64_t sub_100797178(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  sub_100796BD0(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  sub_100796BD0(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_100797234(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v9;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  sub_10079735C(a1 + 144, (a2 + 9));
  return a1;
}

__n128 sub_10079735C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      *a1 = *a2;
      if (*(a1 + 39) < 0)
      {
        operator delete(*(a1 + 16));
      }

      result = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 16) = result;
      *(a2 + 39) = 0;
      *(a2 + 16) = 0;
      *(a1 + 40) = *(a2 + 40);
    }
  }

  else if (*(a1 + 48))
  {
    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }

    *(a1 + 48) = 0;
  }

  else
  {
    *a1 = *a2;
    result = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = result;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = 1;
  }

  return result;
}

uint64_t sub_10079741C(uint64_t *a1)
{
  v1 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 5);
  v2 = v1 + 1;
  if (v1 + 1 > 0x61861861861861)
  {
    sub_1000CE3D4();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 5) > v2)
  {
    v2 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 5) >= 0x30C30C30C30C30)
  {
    v4 = 0x61861861861861;
  }

  else
  {
    v4 = v2;
  }

  v16 = a1;
  if (v4)
  {
    sub_10027C24C(a1, v4);
  }

  v5 = 672 * v1;
  v13 = 0;
  v14 = 672 * v1;
  *(&v15 + 1) = 0;
  bzero((672 * v1), 0x2A0uLL);
  *(v5 + 297) = 4;
  *(v5 + 308) = 0u;
  *(v5 + 324) = 0u;
  *(v5 + 340) = 0u;
  *(v5 + 356) = 0u;
  *(v5 + 372) = 0u;
  *(v5 + 388) = 0u;
  *(v5 + 404) = 0u;
  *(v5 + 420) = 0u;
  *(v5 + 436) = 0u;
  *(v5 + 452) = 0u;
  *(v5 + 468) = 0u;
  *(v5 + 484) = 0u;
  *(v5 + 500) = 0u;
  *(v5 + 516) = 0u;
  *(v5 + 532) = 0u;
  *(v5 + 548) = 0u;
  *(v5 + 564) = 0u;
  *(v5 + 580) = 0u;
  *(v5 + 596) = 0u;
  *(v5 + 612) = 0u;
  *(v5 + 628) = 0u;
  *(v5 + 642) = 0;
  v6 = *a1;
  v7 = a1[1];
  v8 = 672 * v1 + *a1 - v7;
  *&v15 = v5 + 672;
  sub_10028224C(a1, v6, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1002822F0(&v13);
  return v12;
}

void sub_10079758C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002822F0(va);
  _Unwind_Resume(a1);
}

void sub_1007975A0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1007975A0(a1, *a2);
    sub_1007975A0(a1, a2[1]);
    sub_100796A38((a2 + 4));

    operator delete(a2);
  }
}

void sub_10079767C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100797750);
  __cxa_rethrow();
}

void sub_1007976BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100797710(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100797750(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1007977EC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E7CCE8;
  a2[1] = v2;
  return result;
}

void sub_100797818(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v2 = v5;
  v6 = *(a2 + 8);
  v3 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = *(a1 + 8);
  v7[0] = v4;
  v7[1] = 0uLL;
  sub_10044EDCC(v7 + 8, v2, v3, 0x34F72C234F72C235 * ((v3 - v2) >> 3));
  v8[0] = 0;
  v8[1] = 0;
  sub_100004AA0(v8, (v4 + 8));
  operator new();
}

void sub_100797974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = &a10;
  sub_10044F294(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_100797994(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1007979E0(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *v1 + 240;
  if (v3 != v1 + 8)
  {
    sub_100797A78(v3, *(v1 + 8), *(v1 + 16), 0x34F72C234F72C235 * ((*(v1 + 16) - *(v1 + 8)) >> 3));
  }

  sub_10078DA48(v2);
  sub_10045194C(&v6);
  return sub_1000049E0(&v5);
}

void sub_100797A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10045194C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100797A78(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x34F72C234F72C235 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_100797BF0(a1);
    if (a4 <= 0x11A7B9611A7B961)
    {
      v9 = 0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x34F72C234F72C235 * ((*(a1 + 16) - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
      {
        v10 = 0x11A7B9611A7B961;
      }

      else
      {
        v10 = v9;
      }

      sub_10044EE54(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = *(a1 + 8) - v8;
  if (0x34F72C234F72C235 * (v11 >> 3) >= a4)
  {
    sub_100797C50(&v16, __str, a3, v8);
    v14 = v13;
    result = *(a1 + 8);
    if (result != v13)
    {
      do
      {
        result = sub_10044F1E0(result - 232);
      }

      while (result != v14);
    }

    *(a1 + 8) = v14;
  }

  else
  {
    sub_100797C50(&v15, __str, (__str + v11), v8);
    result = sub_10044EF00(a1, (__str + v11), a3, *(a1 + 8));
    *(a1 + 8) = result;
  }

  return result;
}

void sub_100797BF0(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_10044F1E0(v3 - 232);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

std::string *sub_100797C50(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    std::string::operator=(this + 2, v5 + 2);
    std::string::operator=(this + 3, v5 + 3);
    std::string::operator=(this + 4, v5 + 4);
    std::string::operator=(this + 5, v5 + 5);
    std::string::operator=(this + 6, v5 + 6);
    std::string::operator=(this + 7, v5 + 7);
    *&this[8].__r_.__value_.__l.__data_ = *&v5[8].__r_.__value_.__l.__data_;
    std::string::operator=((this + 208), (v5 + 208));
    this = (this + 232);
    v5 = (v5 + 232);
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_100797D8C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E7CD78;
  a2[1] = v2;
  return result;
}

void sub_100797DB8(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v2 = v5;
  v6 = *(a2 + 8);
  v3 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = *(a1 + 8);
  v7[0] = v4;
  v7[1] = 0uLL;
  sub_1002831D0(v7 + 8, v2, v3, 0x8E38E38E38E38E39 * ((v3 - v2) >> 3));
  v8[0] = 0;
  v8[1] = 0;
  sub_100004AA0(v8, (v4 + 8));
  operator new();
}

void sub_100797F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = &a10;
  sub_10027E114(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_100797F34(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100797F80(uint64_t *a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *v1;
  v3 = *v1 + 264;
  if (v3 != v1 + 8)
  {
    sub_1007981C8(v3, *(v1 + 8), *(v1 + 16), 0x8E38E38E38E38E39 * ((*(v1 + 16) - *(v1 + 8)) >> 3));
  }

  v4 = v2[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 0x8E38E38E38E38E39 * ((v2[34] - v2[33]) >> 3);
    *buf = 134217984;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I load [%lu] deleting blocklist info from preferences.", buf, 0xCu);
  }

  v6 = v2[33];
  for (i = v2[34]; v6 != i; v6 += 9)
  {
    v8 = v2[5];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v6 + 3;
      if (*(v6 + 47) < 0)
      {
        v9 = *v9;
      }

      v10 = v6 + 6;
      if (*(v6 + 71) < 0)
      {
        v10 = *v10;
      }

      v11 = v6;
      if (*(v6 + 23) < 0)
      {
        v11 = *v6;
      }

      *buf = 136315650;
      v16 = v9;
      v17 = 2080;
      v18 = v10;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I \tdelete record: { eid:%s, iccid:%s, imei:%s }", buf, 0x20u);
    }
  }

  sub_10078DA48(v2);
  sub_100798168(&v14);
  return sub_1000049E0(&v13);
}

void sub_10079814C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_100798168(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100798168(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (v1 + 8);
    sub_10027E114(&v2);
    operator delete();
  }

  return result;
}

void sub_1007981C8(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_100798324(a1);
    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v9 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
      {
        v10 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v10 = v9;
      }

      sub_100283258(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = *(a1 + 8) - v8;
  if (0x8E38E38E38E38E39 * (v11 >> 3) >= a4)
  {
    sub_10027D3C8(&v14, __str, a3, v8);
    sub_10027E168(a1, v12);
  }

  else
  {
    sub_10027D3C8(&v13, __str, (__str + v11), v8);
    *(a1 + 8) = sub_10027D194(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void sub_100798324(uint64_t *a1)
{
  if (*a1)
  {
    sub_10027E168(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t **sub_100798364(uint64_t **result, void *a2, void *a3)
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
          v16[0] = (v8 + 4);
          v16[1] = (v8 + 7);
          sub_1007984F8(v16, (v9 + 4));
          v16[0] = 0;
          v10 = sub_1001355F4(v5, v16, v15 + 4);
          sub_1000070DC(v5, v16[0], v10, v15);
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

    result = sub_10024FC44(&v13);
  }

  if (a2 != a3)
  {
    sub_100798544();
  }

  return result;
}

void sub_1007984E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10024FC44(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007984F8(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != (a2 + 24))
  {
    sub_10006EAC4(v4, *(a2 + 24), (a2 + 32));
  }

  return a1;
}

void sub_100798544()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_1007985CC();
}

void sub_1007985B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10024E1F8(va);
  _Unwind_Resume(a1);
}

void *sub_100798644(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_100172EF0(__dst + 3, a2 + 24);
  return __dst;
}

void sub_1007986A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007986BC(void *a1)
{
  *a1 = off_101E7CE08;
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50((a1 + 2));
  return a1;
}

void sub_100798710(void *a1)
{
  *a1 = off_101E7CE08;
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50((a1 + 2));

  operator delete();
}

uint64_t sub_100798818(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = off_101E7CE08;
  a2[1] = v4;
  result = sub_1000224C8((a2 + 2), (a1 + 2));
  v6 = a1[7];
  a2[6] = a1[6];
  a2[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100798888(void *a1)
{
  sub_1007989EC(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1007988C4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = v4[5];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3 & 1;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Delete blacklist record result: %d", v7, 8u);
  }

  if ((v3 & 0x100) != 0)
  {
    sub_100795F34(v4, 4096, 8, v3 & 1, 1, SHIDWORD(v3));
  }

  return sub_10000FFD0(a1 + 16, v3 & 1);
}

uint64_t sub_1007989A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007989EC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return sub_10000FF50(a1 + 8);
}

void sub_100798AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = *a3;
  v5 = *(a3 + 23);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (v5 < 0)
  {
    operator delete(v4);
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  operator delete(v3);
}

uint64_t sub_100798B1C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100798B68(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_100798C1C();
  }

  return v2;
}

uint64_t sub_100798D70(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100798DBC(void *a1)
{
  *a1 = off_101E7CF98;
  sub_10002B644((a1 + 1));
  return a1;
}

void sub_100798E00(void *a1)
{
  *a1 = off_101E7CF98;
  sub_10002B644((a1 + 1));

  operator delete();
}

void sub_100798F10(void *a1)
{
  sub_10002B644(a1 + 8);

  operator delete(a1);
}

uint64_t sub_100798F4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_100798F94(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100798FE0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v22, ", IMEI:", 7uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = std::string::append(&v23, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v24, ", EID:", 6uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v15 = *(a1 + 24);
  v14 = a1 + 24;
  v13 = v15;
  v16 = *(v14 + 23);
  if (v16 >= 0)
  {
    v17 = v14;
  }

  else
  {
    v17 = v13;
  }

  if (v16 >= 0)
  {
    v18 = *(v14 + 23);
  }

  else
  {
    v18 = *(v14 + 8);
  }

  v19 = std::string::append(&v25, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v26, " }", 2uLL);
  *a2 = *v21;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_100799168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

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

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007991E4(uint64_t a1)
{
  *a1 = off_101E7D018;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_100799234(uint64_t a1)
{
  *a1 = off_101E7D018;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

char *sub_100799340(char *result, uint64_t a2)
{
  v2 = *(result + 1);
  *a2 = off_101E7D018;
  *(a2 + 8) = v2;
  if (result[39] < 0)
  {
    return sub_100005F2C((a2 + 16), *(result + 2), *(result + 3));
  }

  v3 = *(result + 1);
  *(a2 + 32) = *(result + 4);
  *(a2 + 16) = v3;
  return result;
}

void sub_10079938C(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void sub_1007993A0(void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void sub_1007993E4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(v4 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "fail";
    if (v3)
    {
      v6 = "succeed";
    }

    *buf = 136315650;
    *&buf[4] = v6;
    if ((v3 & 0x100) != 0)
    {
      v7 = "true";
    }

    else
    {
      v7 = "false";
    }

    *&buf[12] = 2080;
    *&buf[14] = v7;
    *&buf[22] = 1024;
    v20 = HIDWORD(v3);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I deleting denylist %s. modified: %s, with error code: %d", buf, 0x1Cu);
  }

  if (v3)
  {
    if (*(v4 + 232))
    {
      memset(buf, 0, sizeof(buf));
      if (*(a1 + 39) < 0)
      {
        sub_100005F2C(buf, *(a1 + 16), *(a1 + 24));
      }

      else
      {
        *buf = *(a1 + 16);
        *&buf[16] = *(a1 + 32);
      }

      v9 = sub_100007A6C(v4 + 208, buf);
      if (v4 + 216 == v9)
      {
        goto LABEL_28;
      }

      v10 = *(v9 + 159);
      if (v10 < 0)
      {
        if (!*(v9 + 144))
        {
          goto LABEL_28;
        }
      }

      else if (!*(v9 + 159))
      {
LABEL_28:
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        return;
      }

      v11 = (v9 + 136);
      v12 = *(v4 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 39) >= 0)
        {
          v13 = a1 + 16;
        }

        else
        {
          v13 = *(a1 + 16);
        }

        v14 = v11;
        if ((v10 & 0x80000000) != 0)
        {
          v14 = v11->__r_.__value_.__r.__words[0];
        }

        v15 = 136315394;
        v16 = v13;
        v17 = 2080;
        v18 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Add iccid (%s) and phone number (%s) to deny list", &v15, 0x16u);
      }

      v15 = 4;
      sub_10078E9F4(v4, (a1 + 16), v11, &v15);
      sub_10078DA48(v4);
      goto LABEL_28;
    }

    v8 = *(v4 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I fLastKnownAssignedSimLabels is empty", buf, 2u);
    }
  }
}

uint64_t sub_100799668(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007996B4(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_100799748();
  }

  return result;
}

void sub_1007997E8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100799874(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E7D098;
  a2[1] = v2;
  return result;
}

void sub_1007998A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (v1 + 8));
  operator new();
}

uint64_t sub_10079998C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007999D8(uint64_t **a1)
{
  v6 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 8))
    {
      v4 = "success";
    }

    else
    {
      v4 = "failure";
    }

    v5 = "out";
    if (*(v1 + 9))
    {
      v5 = "";
    }

    *buf = 136315394;
    v8 = v4;
    v9 = 2080;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Delete transfer plan from cloud result: %s, with%s CK modification", buf, 0x16u);
  }

  if (*(v1 + 9) == 1)
  {
    sub_100795F34(v2, *(v2 + 496), 8, *(v1 + 8), 0, 80000);
    *(v2 + 496) = 0;
  }

  operator delete();
}

uint64_t sub_100799BAC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E7D118;
  a2[1] = v2;
  return result;
}

void sub_100799BD8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (v1 + 8));
  operator new();
}

uint64_t sub_100799CCC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100799D18(uint64_t **a1)
{
  v8 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 8))
    {
      v4 = "success";
    }

    else
    {
      v4 = "failure";
    }

    v5 = "out";
    v6 = *(v1 + 9);
    v10 = v4;
    v7 = *(v1 + 3);
    *buf = 136315650;
    if (v6)
    {
      v5 = "";
    }

    v11 = 2080;
    v12 = v5;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Saved and uploaded to cloud result: %s, with%s CK modification, with error code: %d", buf, 0x1Cu);
  }

  if (*(v1 + 9) == 1)
  {
    sub_100795F34(v2, *(v1 + 4) | *(v2 + 496), *(v1 + 5), *(v1 + 8), 0, *(v1 + 3));
    *(v2 + 496) = 0;
  }

  operator delete();
}

uint64_t sub_100799F18(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E7D208))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100799F64(void *a1)
{
  *a1 = off_101E7D228;
  sub_10002B644((a1 + 2));
  return a1;
}

void sub_100799FA8(void *a1)
{
  *a1 = off_101E7D228;
  sub_10002B644((a1 + 2));

  operator delete();
}

uint64_t sub_10079A088(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E7D228;
  a2[1] = v2;
  return sub_10009CF40((a2 + 2), a1 + 16);
}

void sub_10079A0C0(void *a1)
{
  sub_10002B644(a1 + 16);

  operator delete(a1);
}

void sub_10079A0FC(uint64_t a1, __int128 *a2, __int128 *a3, _BYTE *a4)
{
  v11 = *a2;
  v12 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *a3;
  v10 = *(a3 + 2);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v5 = *(a1 + 8);
  if (!*a4)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    sub_100794108(v5, &v9, &v16);
    sub_100795830(v5, &v11, &v16);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    sub_100794A7C(v5, &v11, v5 + 368, (v5 + 440), &v16, &v13);
    memset(buf, 0, sizeof(buf));
    v20 = 0;
    sub_1005C9648(buf, v13, v14, 0x8F5C28F5C28F5C29 * ((v14 - v13) >> 3));
    v21 = 0uLL;
    v22 = 0;
    sub_1002831D0(&v21, *(v5 + 264), *(v5 + 272), 0x8E38E38E38E38E39 * ((*(v5 + 272) - *(v5 + 264)) >> 3));
    sub_10028AABC((v5 + 288));
    *(v5 + 288) = *buf;
    *(v5 + 304) = v20;
    v20 = 0;
    memset(buf, 0, sizeof(buf));
    sub_100798324((v5 + 312));
    *(v5 + 312) = v21;
    *(v5 + 328) = v22;
    v22 = 0;
    v21 = 0uLL;
    v26 = &v21;
    sub_10027E114(&v26);
    v26 = buf;
    sub_10027B2AC(&v26);
    sub_10079553C(v5, &v16);
    *buf = v5;
    sub_100004AA0(&v26, (v5 + 8));
    v8 = v27;
    *&buf[8] = v26;
    v20 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
    }

    sub_10009CF40(&v21, a1 + 16);
    memset(v23, 0, sizeof(v23));
    sub_10044EDCC(v23, v16, v17, 0x34F72C234F72C235 * ((v17 - v16) >> 3));
    v24 = 0uLL;
    v25 = 0;
    sub_1002831D0(&v24, *(v5 + 264), *(v5 + 272), 0x8E38E38E38E38E39 * ((*(v5 + 272) - *(v5 + 264)) >> 3));
    v28 = 0;
    operator new();
  }

  v6 = *(v5 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#E upload blacklist failure: %s", buf, 0xCu);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(*v7 + 48))(v7);
  }

  *buf = &v9;
  sub_10027B2AC(buf);
  *buf = &v11;
  sub_100111BA8(buf);
}

void sub_10079A508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t *a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  sub_100297224(v25 - 120);
  sub_10079A628(&a23);
  a22 = &a16;
  sub_10027B2AC(&a22);
  a16 = &a19;
  sub_10044F294(&a16);
  a16 = &a9;
  sub_10027B2AC(&a16);
  a16 = &a13;
  sub_100111BA8(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_10079A5DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10079A628(uint64_t a1)
{
  v4 = (a1 + 80);
  sub_10027E114(&v4);
  v4 = (a1 + 56);
  sub_10044F294(&v4);
  sub_10002B644(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_10079A688(uint64_t a1)
{
  *a1 = off_101E7D2A8;
  v4 = (a1 + 88);
  sub_10027E114(&v4);
  v4 = (a1 + 64);
  sub_10044F294(&v4);
  sub_10002B644(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10079A704(uint64_t a1)
{
  *a1 = off_101E7D2A8;
  v3 = (a1 + 88);
  sub_10027E114(&v3);
  v3 = (a1 + 64);
  sub_10044F294(&v3);
  sub_10002B644(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10079A838(uint64_t a1)
{
  v3 = (a1 + 88);
  sub_10027E114(&v3);
  v3 = (a1 + 64);
  sub_10044F294(&v3);
  sub_10002B644(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_10079A894(uint64_t a1)
{
  v3 = (a1 + 88);
  sub_10027E114(&v3);
  v3 = (a1 + 64);
  sub_10044F294(&v3);
  sub_10002B644(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void sub_10079A8F8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a1[1];
  v5 = a1[7];
  if (v5)
  {
    (*(*v5 + 48))(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      if (a1[2])
      {
        if (v3)
        {
          v41 = v3;
          v42 = v7;
          v9 = *(v4 + 240);
          if (v9 != *(v4 + 248))
          {
            do
            {
              v10 = a1[8];
              v11 = a1[9];
              sub_10044EF84(v52, v9);
              if (v10 == v11)
              {
LABEL_49:
                sub_10044F1E0(v52);
                v9 = (v9 + 232);
                v27 = *(v4 + 248);
              }

              else
              {
                if ((v55 & 0x80u) == 0)
                {
                  v12 = v55;
                }

                else
                {
                  v12 = v54[1];
                }

                if ((v55 & 0x80u) == 0)
                {
                  v13 = v54;
                }

                else
                {
                  v13 = v54[0];
                }

                if ((v57 & 0x80u) == 0)
                {
                  v14 = v57;
                }

                else
                {
                  v14 = v56[1];
                }

                if ((v57 & 0x80u) == 0)
                {
                  v15 = v56;
                }

                else
                {
                  v15 = v56[0];
                }

                if ((v53 & 0x80u) == 0)
                {
                  v16 = v53;
                }

                else
                {
                  v16 = v52[1];
                }

                v17 = v52;
                if ((v53 & 0x80u) != 0)
                {
                  v17 = v52[0];
                }

                __s1 = v17;
                while (1)
                {
                  v18 = *(v10 + 47);
                  v19 = v18;
                  if ((v18 & 0x80u) != 0)
                  {
                    v18 = *(v10 + 32);
                  }

                  if (v12 == v18)
                  {
                    v20 = v19 >= 0 ? (v10 + 24) : *(v10 + 24);
                    if (!memcmp(v13, v20, v12))
                    {
                      v21 = *(v10 + 71);
                      v22 = v21;
                      if ((v21 & 0x80u) != 0)
                      {
                        v21 = *(v10 + 56);
                      }

                      if (v14 == v21)
                      {
                        v23 = v22 >= 0 ? (v10 + 48) : *(v10 + 48);
                        if (!memcmp(v15, v23, v14))
                        {
                          v24 = *(v10 + 23);
                          v25 = v24;
                          if ((v24 & 0x80u) != 0)
                          {
                            v24 = *(v10 + 8);
                          }

                          if (v16 == v24)
                          {
                            v26 = v25 >= 0 ? v10 : *v10;
                            if (!memcmp(__s1, v26, v16))
                            {
                              break;
                            }
                          }
                        }
                      }
                    }
                  }

                  v10 += 232;
                  if (v10 == v11)
                  {
                    goto LABEL_49;
                  }
                }

                sub_10044F1E0(v52);
                v28 = *(v4 + 248);
                if ((v9 + 232) == v28)
                {
                  v27 = v9;
                }

                else
                {
                  v29 = v9;
                  do
                  {
                    v27 = (v29 + 232);
                    sub_100796250(v29, (v29 + 232));
                    v30 = v29 + 464;
                    v29 += 232;
                  }

                  while (v30 != v28);
                  v28 = *(v4 + 248);
                }

                while (v28 != v27)
                {
                  v28 -= 232;
                  sub_10044F1E0(v28);
                }

                *(v4 + 248) = v27;
              }
            }

            while (v9 != v27);
          }

          v31 = *(v4 + 264);
          while (v31 != *(v4 + 272))
          {
            v33 = a1[11];
            v32 = a1[12];
            if (*(v31 + 23) < 0)
            {
              sub_100005F2C(__dst, *v31, *(v31 + 8));
            }

            else
            {
              v34 = *v31;
              v47 = *(v31 + 16);
              *__dst = v34;
            }

            if (*(v31 + 47) < 0)
            {
              sub_100005F2C(&v48, *(v31 + 24), *(v31 + 32));
            }

            else
            {
              v35 = *(v31 + 24);
              v49 = *(v31 + 40);
              v48 = v35;
            }

            if (*(v31 + 71) < 0)
            {
              sub_100005F2C(&__p, *(v31 + 48), *(v31 + 56));
            }

            else
            {
              v36 = *(v31 + 48);
              v51 = *(v31 + 64);
              __p = v36;
            }

            if (v33 == v32)
            {
              v38 = 0;
            }

            else
            {
              do
              {
                v37 = rest::DeleteCloudCellularPlanBlacklistRecord::operator==();
                v38 = v37;
                v33 += 72;
                if (v33 == v32)
                {
                  v39 = 1;
                }

                else
                {
                  v39 = v37;
                }
              }

              while (v39 != 1);
            }

            if (SHIBYTE(v51) < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v49) < 0)
            {
              operator delete(v48);
            }

            if (SHIBYTE(v47) < 0)
            {
              operator delete(__dst[0]);
              if (!v38)
              {
LABEL_85:
                v31 += 72;
                continue;
              }
            }

            else if (!v38)
            {
              goto LABEL_85;
            }

            sub_10079AF08(v44, (v31 + 72), *(v4 + 272), v31);
            sub_10027E168(v4 + 264, v40);
          }

          sub_10028AABC((v4 + 288));
          *(v4 + 288) = 0;
          *(v4 + 296) = 0;
          *(v4 + 304) = 0;
          memset(v44, 0, sizeof(v44));
          sub_100798324((v4 + 312));
          *(v4 + 312) = 0;
          *(v4 + 320) = 0;
          *(v4 + 328) = 0;
          memset(v45, 0, sizeof(v45));
          v58[0] = v45;
          sub_10027E114(v58);
          v58[0] = v44;
          sub_10027B2AC(v58);
          v8 = v42;
          (*(**(v4 + 104) + 104))(*(v4 + 104), v4 + 240);
          LOWORD(v3) = v41;
          (*(**(v4 + 104) + 120))(*(v4 + 104), v4 + 264);
        }

        if ((v3 & 0x100) != 0)
        {
          *(v4 + 500) = 0;
        }
      }

      sub_100004A34(v8);
    }
  }
}

uint64_t sub_10079ADB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10079AE04(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_10009CF40(a1 + 24, a2 + 24);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_10044EDCC(a1 + 56, *(a2 + 56), *(a2 + 64), 0x34F72C234F72C235 * ((*(a2 + 64) - *(a2 + 56)) >> 3));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_1002831D0(a1 + 80, *(a2 + 80), *(a2 + 88), 0x8E38E38E38E38E39 * ((*(a2 + 88) - *(a2 + 80)) >> 3));
  return a1;
}

void sub_10079AECC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10044F294(va);
  sub_10002B644(v2 + 24);
  v4 = *(v2 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

__int128 *sub_10079AF08(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      if (*(a4 + 47) < 0)
      {
        operator delete(*(a4 + 24));
      }

      v8 = *(v5 + 24);
      *(a4 + 40) = *(v5 + 5);
      *(a4 + 24) = v8;
      *(v5 + 47) = 0;
      *(v5 + 24) = 0;
      if (*(a4 + 71) < 0)
      {
        operator delete(*(a4 + 48));
      }

      v9 = v5[3];
      *(a4 + 64) = *(v5 + 8);
      *(a4 + 48) = v9;
      *(v5 + 71) = 0;
      *(v5 + 48) = 0;
      v5 = (v5 + 72);
      a4 += 72;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_10079AFD4(uint64_t a1)
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

uint64_t sub_10079B054(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_10079B108();
  }

  return v2;
}

uint64_t sub_10079B1AC(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_10079B250();
  }

  return result;
}

void sub_10079B2EC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10079B308(uint64_t a1)
{
  *a1 = off_101E7D338;
  v2 = (a1 + 64);
  v5 = (a1 + 88);
  sub_10027E114(&v5);
  v5 = v2;
  sub_10027B2AC(&v5);
  sub_100297224(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_10079B384(uint64_t a1)
{
  *a1 = off_101E7D338;
  v2 = (a1 + 64);
  v4 = (a1 + 88);
  sub_10027E114(&v4);
  v4 = v2;
  sub_10027B2AC(&v4);
  sub_100297224(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete();
}

uint64_t sub_10079B490(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7D338;
  result = sub_10079B7CC(a2 + 8, a1 + 8);
  *(a2 + 116) = 0;
  return result;
}

void sub_10079B4E0(uint64_t a1)
{
  v2 = (a1 + 64);
  v4 = (a1 + 88);
  sub_10027E114(&v4);
  v4 = v2;
  sub_10027B2AC(&v4);
  sub_100297224(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_10079B53C(uint64_t a1)
{
  v2 = (a1 + 64);
  v4 = (a1 + 88);
  sub_10027E114(&v4);
  v4 = v2;
  sub_10027B2AC(&v4);
  sub_100297224(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(a1);
}

uint64_t sub_10079B5A0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = *(a1 + 8);
  v6 = v5[5];
  v7 = *a2 >> 8;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 0x8E38E38E38E38E39 * ((*(a1 + 96) - *(a1 + 88)) >> 3);
    v9 = (*(a1 + 72) - *(a1 + 64)) >> 3;
    v15 = 134219010;
    v16 = v8;
    v10 = "";
    v17 = 2048;
    v18 = 0x8F5C28F5C28F5C29 * v9;
    if ((v7 & 1) == 0)
    {
      v10 = "out";
    }

    v19 = 1024;
    v20 = v3 & 1;
    v21 = 2080;
    v22 = v10;
    v23 = 1024;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Remove %ld self in blacklist table, and save %ld blacklist plans, result: %d, with%s CK modification, with error code: %d", &v15, 0x2Cu);
  }

  if (*(a1 + 96) == *(a1 + 88))
  {
    v11 = 2 * (*(a1 + 72) != *(a1 + 64));
  }

  else
  {
    v11 = (2 * (*(a1 + 72) != *(a1 + 64))) | 8;
  }

  if (v7)
  {
    v12 = v5[5];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 112);
      v15 = 67109120;
      LODWORD(v16) = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I fBlacklistUploadReasons:0x%x", &v15, 8u);
    }

    sub_100795F34(v5, *(a1 + 112), v11, v3 & 1, 1, v4);
  }

  return sub_100456F04(a1 + 32, v3);
}

uint64_t sub_10079B780(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10079B7CC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100456684(a1 + 24, a2 + 24);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_1005C9648(a1 + 56, *(a2 + 56), *(a2 + 64), 0x8F5C28F5C28F5C29 * ((*(a2 + 64) - *(a2 + 56)) >> 3));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_1002831D0(a1 + 80, *(a2 + 80), *(a2 + 88), 0x8E38E38E38E38E39 * ((*(a2 + 88) - *(a2 + 80)) >> 3));
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

void sub_10079B89C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10027B2AC(va);
  sub_100297224(v2 + 24);
  v4 = *(v2 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10079B8D8(uint64_t a1, uint64_t a2)
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

void *sub_10079B958(void *a1)
{
  *a1 = off_101E7D3B8;
  sub_10079AFD4((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10079B9A8(void *a1)
{
  *a1 = off_101E7D3B8;
  sub_10079AFD4((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_10079BA98(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10079BAB8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E7D3B8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_10079BD5C((a2 + 3), a1 + 24);
}

void sub_10079BB1C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079BB3C(void *a1)
{
  sub_10079BDF4(a1 + 8);

  operator delete(a1);
}

void sub_10079BB78(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 2);
  v3 = *a2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v7 = v3;
  v8 = v2;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_10079BD5C(v9, a1 + 24);
  v9[7] = 0;
  operator new();
}

void sub_10079BCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void *a13)
{
  sub_10079C4D0(v13 - 72);
  sub_10079BE40(&a13);
  a12 = &a9;
  sub_100111BA8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_10079BD10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10079BD5C(uint64_t a1, uint64_t a2)
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

void sub_10079BDF4(uint64_t a1)
{
  sub_10079AFD4(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void **sub_10079BE40(void **a1)
{
  sub_10079AFD4((a1 + 3));
  v3 = a1;
  sub_100111BA8(&v3);
  return a1;
}

uint64_t sub_10079BE80(uint64_t a1)
{
  *a1 = off_101E7D438;
  sub_10079AFD4(a1 + 32);
  v3 = (a1 + 8);
  sub_100111BA8(&v3);
  return a1;
}

void sub_10079BEDC(uint64_t a1)
{
  *a1 = off_101E7D438;
  sub_10079AFD4(a1 + 32);
  v2 = (a1 + 8);
  sub_100111BA8(&v2);
  operator delete();
}

void sub_10079BFF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100111BA8(va);
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10079C020(uint64_t a1, void *a2)
{
  *a2 = off_101E7D438;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  sub_10079C2D8((a2 + 1), *(a1 + 8), *(a1 + 16), 0xFAFAFAFAFAFAFAFBLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  return sub_10079BD5C((a2 + 4), a1 + 32);
}

void sub_10079C0B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100111BA8(va);
  _Unwind_Resume(a1);
}

void sub_10079C0C8(uint64_t a1)
{
  v1 = (a1 + 8);
  sub_10079AFD4(a1 + 32);
  v2 = v1;
  sub_100111BA8(&v2);
}

void sub_10079C104(void **a1)
{
  v2 = a1 + 1;
  sub_10079AFD4((a1 + 4));
  v3 = v2;
  sub_100111BA8(&v3);
  operator delete(a1);
}

void sub_10079C14C(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v3 = v5;
  v6 = *(a2 + 8);
  v4 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  memset(v8, 0, sizeof(v8));
  sub_10079C2D8(v8, *(a1 + 8), *(a1 + 16), 0xFAFAFAFAFAFAFAFBLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  memset(v7, 0, sizeof(v7));
  sub_1005C9648(v7, v3, v4, 0x8F5C28F5C28F5C29 * ((v4 - v3) >> 3));
  sub_100795EA8(a1 + 32, v8, v7, 0);
  v9 = v7;
  sub_10027B2AC(&v9);
  v9 = v8;
  sub_100111BA8(&v9);
  v8[0] = &v5;
  sub_10027B2AC(v8);
}

void sub_10079C244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v18 - 40) = v17;
  sub_10027B2AC((v18 - 40));
  *(v18 - 40) = &a17;
  sub_100111BA8((v18 - 40));
  *(v18 - 40) = &a11;
  sub_10027B2AC((v18 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_10079C28C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10079C2D8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10079C360(result, a4);
  }

  return result;
}

void sub_10079C340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100111BA8(&a9);
  _Unwind_Resume(a1);
}

void sub_10079C360(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xA0A0A0A0A0A0A1)
  {
    sub_10079C3B0(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_10079C3B0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xA0A0A0A0A0A0A1)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10079C40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = sub_10031A3B0((a4 + v7), a2 + v7);
      sub_10027F834(v8 + 248, (a2 + v7 + 248));
      *(a4 + v7 + 400) = *(a2 + v7 + 400);
      v7 += 408;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_10079C494(_Unwind_Exception *exception_object)
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

uint64_t sub_10079C4D0(uint64_t a1)
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

uint64_t sub_10079C550(uint64_t a1)
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

__n128 sub_10079C64C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7D4D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void sub_10079C684(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = rest::asString();
    v7 = 1024;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I subscribeRecordChange. type: [%s] result: [%d]", &v5, 0x12u);
  }

  *(v3 + 494) = v2;
}

uint64_t sub_10079C748(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10079C794(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_10079C838();
  }

  return result;
}

void sub_10079C8D4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_10079C9DC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10079D310(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_10079CC90(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  return a1;
}

void sub_10079CCE4(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  operator delete();
}

uint64_t sub_10079CD58(uint64_t a1, void *a2, const void *a3, const void *a4, CFTypeRef **a5, int a6)
{
  *a1 = &off_101E7D630;
  *(a1 + 8) = *a2;
  v10 = a2[1];
  *(a1 + 16) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = a3;
  sub_10079D2D0((a1 + 24), &v28);
  v28 = a4;
  sub_10079D2D0((a1 + 32), &v28);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v11 = (a1 + 40);
  *(a1 + 56) = 0;
  *(a1 + 64) = a6;
  v12 = *a5;
  v13 = a5[1];
  if (*a5 != v13)
  {
    do
    {
      v14 = *v12;
      CFRetain(*v12);
      v16 = *(a1 + 48);
      v15 = *(a1 + 56);
      if (v16 >= v15)
      {
        v18 = (v16 - *v11) >> 3;
        if ((v18 + 1) >> 61)
        {
          sub_1000CE3D4();
        }

        v19 = v15 - *v11;
        v20 = v19 >> 2;
        if (v19 >> 2 <= (v18 + 1))
        {
          v20 = v18 + 1;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          sub_10005B2E0(a1 + 40, v21);
        }

        v22 = (8 * v18);
        *v22 = v14;
        v17 = 8 * v18 + 8;
        v23 = *(a1 + 40);
        v24 = *(a1 + 48) - v23;
        v25 = v22 - v24;
        memcpy(v22 - v24, v23, v24);
        v26 = *(a1 + 40);
        *(a1 + 40) = v25;
        *(a1 + 48) = v17;
        *(a1 + 56) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v16 = v14;
        v17 = (v16 + 1);
      }

      *(a1 + 48) = v17;
      ++v12;
    }

    while (v12 != v13);
  }

  return a1;
}

void sub_10079CEE4(_Unwind_Exception *a1)
{
  sub_100005978((v1 + 24));
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10079CF30(uint64_t a1, const void *a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
  v5 = ServiceMap;
  v6 = "8UStorage";
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v7 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
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
  v16 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v16);
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
  v14 = sub_10071C318(v12, *(a1 + 24), a2, (a1 + 40), *(a1 + 64), 0, 0);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return v14 == 0;
}

void sub_10079D044(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079D060(uint64_t a1@<X0>, void *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
  v5 = ServiceMap;
  v6 = "8UStorage";
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v7 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
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
  v14 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v14);
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
  sub_10071C330(v12, *(a1 + 24), (a1 + 40), *(a1 + 64), a2);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10079D160(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10079D17C(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
  v3 = ServiceMap;
  v4 = "8UStorage";
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v5 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
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
  v14 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v14);
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
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  v12 = sub_10071C340(v10, *(a1 + 24), (a1 + 40), *(a1 + 64));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  return v12 == 0;
}

void sub_10079D278(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079D298(uint64_t a1)
{
  sub_10079D310(a1);

  operator delete();
}

const void **sub_10079D2D0(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

uint64_t sub_10079D310(uint64_t a1)
{
  *a1 = &off_101E7D630;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 != v3)
  {
    do
    {
      CFRelease(*v2++);
    }

    while (v2 != v3);
    v2 = *(a1 + 40);
  }

  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  sub_100005978((a1 + 32));
  sub_100005978((a1 + 24));
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

BOOL sub_10079D3AC(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
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
  v16 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v16);
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
  v14 = (*(*v12 + 48))(v12, a1 + 72, *(a1 + 24), a2, *(a1 + 32), a1 + 40, *(a1 + 64), 0);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return v14 == 0;
}

void sub_10079D4E0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079D4FC(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
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
  v12 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v12);
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
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  (*(*v10 + 64))(v10, a1 + 72, *(a1 + 24), *(a1 + 32), a1 + 40, *(a1 + 64));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_10079D620(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10079D63C(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
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
  v14 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v14);
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
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  v12 = (*(*v10 + 72))(v10, a1 + 72, *(a1 + 24), *(a1 + 32), a1 + 40, *(a1 + 64));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  return v12 == 0;
}

void sub_10079D75C(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10079D778(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  return sub_10079D310(a1);
}

void sub_10079D7BC(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  sub_10079D310(a1);

  operator delete();
}

uint64_t sub_10079D818()
{
  v0 = sub_10001C650(8);
  v1 = *v0;
  v2 = *(v0 + 1);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v1)
  {
    isMetricNecessary = 0;
    if (!v2)
    {
      return isMetricNecessary;
    }

    goto LABEL_5;
  }

  isMetricNecessary = wis::WISServerConnection::isMetricNecessary(v1);
  if (v2)
  {
LABEL_5:
    sub_100004A34(v2);
  }

  return isMetricNecessary;
}

void sub_10079D888(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079D8A0()
{
  v0 = sub_10001C650(8);
  v1 = *v0;
  v2 = *(v0 + 1);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v1)
  {
    wis::WISServerConnection::RegisterQueriableMetricCallbackForIdentifier();
  }

  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_10079D95C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10079D984(int a1, int a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, __int128 *a7, int a8, int a9)
{
  v25 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&v15, *a3, *(a3 + 1));
  }

  else
  {
    v15 = *a3;
    v16 = *(a3 + 2);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(&v17, *a4, *(a4 + 1));
  }

  else
  {
    v17 = *a4;
    v18 = *(a4 + 2);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(&v19, *a5, *(a5 + 1));
  }

  else
  {
    v19 = *a5;
    v20 = *(a5 + 2);
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C(&v21, *a6, *(a6 + 1));
  }

  else
  {
    v21 = *a6;
    v22 = *(a6 + 2);
  }

  if (*(a7 + 23) < 0)
  {
    sub_100005F2C(&__p, *a7, *(a7 + 1));
  }

  else
  {
    __p = *a7;
    v24 = *(a7 + 2);
  }

  v26 = a8;
  v27 = a9;
  v28 = a1;
  sub_10079DBD8(0x80013);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }
}

void sub_10079DB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10079DBD8(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v8)
  {
    v3 = sub_10001C650(8);
    v5 = *v3;
    v4 = *(v3 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10001C0A0(&v8);
  return v6;
}

void sub_10079DD18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10079DD98(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 76);
  *(a2 + 24) = *(a1 + 152);
  *(a2 + 76) = v4 | 3;
  v5 = *(a2 + 8);
  if (v5 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v5, (a1 + 32));
  *(a2 + 76) |= 4u;
  v6 = *(a2 + 16);
  if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v6, (a1 + 56));
  *(a2 + 76) |= 0x20u;
  v7 = *(a2 + 40);
  if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v7, (a1 + 80));
  *(a2 + 76) |= 0x40u;
  v8 = *(a2 + 48);
  if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v8, (a1 + 104));
  *(a2 + 76) |= 0x80u;
  v9 = *(a2 + 56);
  if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v9, (a1 + 128));
  v10 = *(a1 + 156);
  v11 = *(a2 + 76);
  *(a2 + 76) = v11 | 0x10;
  *(a2 + 28) = v10;
  v12 = v11 | 0x110;
  v13 = *(a1 + 160);
  *(a2 + 76) = v12;
  *(a2 + 64) = v13;
  result = subscriber::simSlotAsInstance();
  *(a2 + 76) |= 0x200u;
  *(a2 + 68) = result;
  return result;
}

_BYTE *sub_10079DF38(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 55) < 0)
  {
    result = sub_100005F2C(result + 32, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(result + 6) = *(a2 + 48);
    *(result + 2) = v4;
  }

  if (*(a2 + 79) < 0)
  {
    result = sub_100005F2C(v3 + 56, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(v3 + 9) = *(a2 + 72);
    *(v3 + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    result = sub_100005F2C(v3 + 80, *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v6 = *(a2 + 80);
    *(v3 + 12) = *(a2 + 96);
    *(v3 + 5) = v6;
  }

  if (*(a2 + 127) < 0)
  {
    result = sub_100005F2C(v3 + 104, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(v3 + 15) = *(a2 + 120);
    *(v3 + 104) = v7;
  }

  if (*(a2 + 151) < 0)
  {
    return sub_100005F2C(v3 + 128, *(a2 + 128), *(a2 + 136));
  }

  v8 = *(a2 + 128);
  *(v3 + 18) = *(a2 + 144);
  *(v3 + 8) = v8;
  return result;
}

void sub_10079E024(_Unwind_Exception *exception_object)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void sub_10079E088(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

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
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void sub_10079E110(int a1, __int128 *a2, __int128 *a3, int a4, __int128 *a5, int a6)
{
  v16 = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v10, *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&v12, *a3, *(a3 + 1));
  }

  else
  {
    v12 = *a3;
    v13 = *(a3 + 2);
  }

  v17 = a4;
  v18 = a6;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(&__p, *a5, *(a5 + 1));
  }

  else
  {
    __p = *a5;
    v15 = *(a5 + 2);
  }

  sub_10079E2A8(0x80009);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }
}

void sub_10079E25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10079E2A8(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v8)
  {
    v3 = sub_10001C650(8);
    v5 = *v3;
    v4 = *(v3 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10001C0A0(&v8);
  return v6;
}

void sub_10079E3E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

std::string *sub_10079E468(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  *(a2 + 16) = *(a1 + 104);
  *(a2 + 56) = v4 | 3;
  v5 = *(a2 + 8);
  if (v5 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v5, (a1 + 32));
  *(a2 + 56) |= 4u;
  v6 = *(a2 + 24);
  if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v6, (a1 + 56));
  v7 = *(a1 + 108);
  v8 = *(a2 + 56);
  *(a2 + 56) = v8 | 8;
  *(a2 + 20) = v7;
  *(a2 + 48) = *(a1 + 112);
  *(a2 + 56) = v8 | 0x68;
  v9 = *(a2 + 40);
  if (v9 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  return std::string::operator=(v9, (a1 + 80));
}

_BYTE *sub_10079E584(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 55) < 0)
  {
    result = sub_100005F2C(result + 32, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(result + 6) = *(a2 + 48);
    *(result + 2) = v4;
  }

  if (*(a2 + 79) < 0)
  {
    result = sub_100005F2C(v3 + 56, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(v3 + 9) = *(a2 + 72);
    *(v3 + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    return sub_100005F2C(v3 + 80, *(a2 + 80), *(a2 + 88));
  }

  v6 = *(a2 + 80);
  *(v3 + 12) = *(a2 + 96);
  *(v3 + 5) = v6;
  return result;
}

void sub_10079E620(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void sub_10079E654(uint64_t a1)
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
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void sub_10079E6BC(int a1, int a2, char a3, int a4, std::string *this, uint64_t a6, uint64_t a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, uint64_t a19)
{
  if (std::string::find(this, 58, 0) == -1)
  {
    v27 = std::string::find(this, 46, 0);
    if (v27 != -1)
    {
      v28 = std::string::find(this, 46, v27 + 1);
      if (v28 != -1)
      {
        v29 = std::string::basic_string(&v61, this, 0, v28 + 1, &v62);
        v30 = std::string::append(v29, "0.0", 3uLL);
        v31 = v30->__r_.__value_.__r.__words[0];
        v63[0] = v30->__r_.__value_.__l.__size_;
        *(v63 + 7) = *(&v30->__r_.__value_.__r.__words[1] + 7);
        v32 = HIBYTE(v30->__r_.__value_.__r.__words[2]);
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(this->__r_.__value_.__l.__data_);
        }

        v33 = v63[0];
        this->__r_.__value_.__r.__words[0] = v31;
        this->__r_.__value_.__l.__size_ = v33;
        *(&this->__r_.__value_.__r.__words[1] + 7) = *(v63 + 7);
        *(&this->__r_.__value_.__s + 23) = v32;
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  else if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v60 = a3;
  v51 = a2;
  v52 = a4;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(v34, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    *v34 = *&this->__r_.__value_.__l.__data_;
    v35 = this->__r_.__value_.__r.__words[2];
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C(v36, *a6, *(a6 + 8));
  }

  else
  {
    *v36 = *a6;
    v37 = *(a6 + 16);
  }

  if (*(a7 + 23) < 0)
  {
    sub_100005F2C(v38, *a7, *(a7 + 8));
  }

  else
  {
    *v38 = *a7;
    v39 = *(a7 + 16);
  }

  v53 = a8;
  if (*(a9 + 23) < 0)
  {
    sub_100005F2C(v40, *a9, *(a9 + 8));
  }

  else
  {
    *v40 = *a9;
    v41 = *(a9 + 16);
  }

  v54 = a10;
  v55 = a11;
  v42 = a12;
  v56 = a1;
  if (*(a13 + 23) < 0)
  {
    sub_100005F2C(v43, *a13, *(a13 + 8));
  }

  else
  {
    *v43 = *a13;
    v44 = *(a13 + 16);
  }

  if (*(a14 + 23) < 0)
  {
    sub_100005F2C(v45, *a14, *(a14 + 8));
  }

  else
  {
    *v45 = *a14;
    v46 = *(a14 + 16);
  }

  if (*(a15 + 23) < 0)
  {
    sub_100005F2C(v47, *a15, *(a15 + 8));
  }

  else
  {
    *v47 = *a15;
    v48 = *(a15 + 16);
  }

  v57 = a16;
  v58 = a17;
  v59 = a18;
  if (*(a19 + 23) < 0)
  {
    sub_100005F2C(__p, *a19, *(a19 + 8));
  }

  else
  {
    *__p = *a19;
    v50 = *(a19 + 16);
  }

  sub_10079EB90(0x8000A);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[0]);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }
}

void sub_10079EAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (*(v61 - 121) < 0)
  {
    operator delete(*(v61 - 144));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10079EB90(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v8)
  {
    v3 = sub_10001C650(8);
    v5 = *v3;
    v4 = *(v3 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10001C0A0(&v8);
  return v6;
}

void sub_10079ECD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

std::string *sub_10079ED50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 132);
  *(a2 + 24) = *(a1 + 232);
  v5 = *(a1 + 268);
  *(a2 + 132) = v4 | 0x11;
  *(a2 + 28) = v5;
  *(a2 + 48) = *(a1 + 236);
  *(a2 + 132) = v4 | 0x33;
  v6 = *(a2 + 8);
  if (v6 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v6, (a1 + 32));
  *(a2 + 132) |= 4u;
  v7 = *(a2 + 16);
  if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v7, (a1 + 56));
  *(a2 + 132) |= 8u;
  v8 = *(a2 + 32);
  if (v8 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v8, (a1 + 80));
  v9 = *(a2 + 132);
  *(a2 + 92) = *(a1 + 240);
  *(a2 + 132) = v9 | 0xA000;
  v10 = *(a2 + 96);
  if (v10 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v10, (a1 + 104));
  v11 = *(a1 + 244);
  v12 = *(a2 + 132);
  *(a2 + 132) = v12 | 0x80;
  *(a2 + 52) = v11;
  *(a2 + 104) = *(a1 + 248);
  v13 = *(a1 + 128);
  *(a2 + 132) = v12 | 0x4180;
  *(a2 + 56) = v13;
  v14 = subscriber::simSlotAsInstance();
  v15 = *(a2 + 132);
  *(a2 + 132) = v15 | 0x40000;
  *(a2 + 116) = v14;
  v16 = *(a1 + 159);
  if (v16 < 0)
  {
    v16 = *(a1 + 144);
  }

  if (v16)
  {
    *(a2 + 132) = v15 | 0x40200;
    v17 = *(a2 + 64);
    if (v17 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v17, (a1 + 136));
  }

  v18 = *(a1 + 183);
  if (v18 < 0)
  {
    v18 = *(a1 + 168);
  }

  if (v18)
  {
    *(a2 + 132) |= 0x400u;
    v19 = *(a2 + 72);
    if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v19, (a1 + 160));
  }

  v20 = *(a1 + 207);
  if (v20 < 0)
  {
    v20 = *(a1 + 192);
  }

  v21 = *(a2 + 132);
  if (v20)
  {
    *(a2 + 132) = v21 | 0x800;
    v22 = *(a2 + 80);
    if (v22 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v22, (a1 + 184));
    v21 = *(a2 + 132);
  }

  v23 = *(a1 + 256);
  *(a2 + 132) = v21 | 0x1000;
  *(a2 + 88) = v23;
  v24 = *(a1 + 260);
  *(a2 + 132) = v21 | 0x11000;
  *(a2 + 108) = v24;
  *(a2 + 112) = *(a1 + 264);
  *(a2 + 132) = v21 | 0xB1000;
  v25 = *(a2 + 120);
  if (v25 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  return std::string::operator=(v25, (a1 + 208));
}

_BYTE *sub_10079F044(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 55) < 0)
  {
    result = sub_100005F2C(result + 32, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(result + 6) = *(a2 + 48);
    *(result + 2) = v4;
  }

  if (*(a2 + 79) < 0)
  {
    result = sub_100005F2C(v3 + 56, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(v3 + 9) = *(a2 + 72);
    *(v3 + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    result = sub_100005F2C(v3 + 80, *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v6 = *(a2 + 80);
    *(v3 + 12) = *(a2 + 96);
    *(v3 + 5) = v6;
  }

  if (*(a2 + 127) < 0)
  {
    result = sub_100005F2C(v3 + 104, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(v3 + 15) = *(a2 + 120);
    *(v3 + 104) = v7;
  }

  if (*(a2 + 159) < 0)
  {
    result = sub_100005F2C(v3 + 136, *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v8 = *(a2 + 136);
    *(v3 + 19) = *(a2 + 152);
    *(v3 + 136) = v8;
  }

  if (*(a2 + 183) < 0)
  {
    result = sub_100005F2C(v3 + 160, *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v9 = *(a2 + 160);
    *(v3 + 22) = *(a2 + 176);
    *(v3 + 10) = v9;
  }

  if (*(a2 + 207) < 0)
  {
    result = sub_100005F2C(v3 + 184, *(a2 + 184), *(a2 + 192));
  }

  else
  {
    v10 = *(a2 + 184);
    *(v3 + 25) = *(a2 + 200);
    *(v3 + 184) = v10;
  }

  if (*(a2 + 231) < 0)
  {
    return sub_100005F2C(v3 + 208, *(a2 + 208), *(a2 + 216));
  }

  v11 = *(a2 + 208);
  *(v3 + 28) = *(a2 + 224);
  *(v3 + 13) = v11;
  return result;
}

void sub_10079F1A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 207) < 0)
  {
    operator delete(*(v1 + 184));
  }

  if (*(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
  }

  if (*(v1 + 159) < 0)
  {
    operator delete(*(v1 + 136));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void sub_10079F254(uint64_t a1)
{
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

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
    v2 = *(a1 + 32);

    operator delete(v2);
  }
}

void sub_10079F514(uint64_t *a1, unsigned int a2)
{
  v4 = sub_10001C650(8);
  v6 = *v4;
  v5 = *(v4 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v9 = v8;
    if (v8)
    {
      v10 = *a1;
      *a1 = 0;
      if (v10)
      {
        if (*(v10 + 68))
        {
          WISTimestamp = *(v10 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v8);
          *(v10 + 68) |= 1u;
          *(v10 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v9, WISTimestamp, *v9, v10);
        (*(*v10 + 8))(v10);
      }

      wis::WISServerConnection::SubmitMetric(v6, v9);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_10079F620(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

void sub_10079F7C0(uint64_t *a1, unsigned int a2)
{
  v4 = sub_10001C650(8);
  v6 = *v4;
  v5 = *(v4 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v9 = v8;
    if (v8)
    {
      v10 = *a1;
      *a1 = 0;
      if (v10)
      {
        if (*(v10 + 40))
        {
          WISTimestamp = *(v10 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v8);
          *(v10 + 40) |= 1u;
          *(v10 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v9, WISTimestamp, *v9, v10);
        (*(*v10 + 8))(v10);
      }

      wis::WISServerConnection::SubmitMetric(v6, v9);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_10079F8CC(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

void sub_10079FA1C(uint64_t *a1, unsigned int a2)
{
  v4 = sub_10001C650(8);
  v6 = *v4;
  v5 = *(v4 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v9 = v8;
    if (v8)
    {
      v10 = *a1;
      *a1 = 0;
      if (v10)
      {
        if (*(v10 + 36))
        {
          WISTimestamp = *(v10 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v8);
          *(v10 + 36) |= 1u;
          *(v10 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v9, WISTimestamp, *v9, v10);
        (*(*v10 + 8))(v10);
      }

      wis::WISServerConnection::SubmitMetric(v6, v9);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_10079FB28(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

void sub_10079FC64(uint64_t *a1, unsigned int a2)
{
  v4 = sub_10001C650(8);
  v6 = *v4;
  v5 = *(v4 + 1);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v9 = v8;
    if (v8)
    {
      v10 = *a1;
      *a1 = 0;
      if (v10)
      {
        if (*(v10 + 28))
        {
          WISTimestamp = *(v10 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v8);
          *(v10 + 28) |= 1u;
          *(v10 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v9, WISTimestamp, *v9, v10);
        (*(*v10 + 8))(v10);
      }

      wis::WISServerConnection::SubmitMetric(v6, v9);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_10079FD70(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10079FE2C(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v8)
  {
    v3 = sub_10001C650(8);
    v5 = *v3;
    v4 = *(v3 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10001C0A0(&v8);
  return v6;
}

void sub_10079FF6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10079FFEC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  *(a2 + 24) |= 1u;
  *(a2 + 16) = v2;
  return result;
}

BOOL sub_1007A0170(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v8)
  {
    v3 = sub_10001C650(8);
    v5 = *v3;
    v4 = *(v3 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10001C0A0(&v8);
  return v6;
}

void sub_1007A02B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007A0330(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 28);
  *(a2 + 18) = *(result + 36);
  *(a2 + 16) = *(result + 37);
  v3 = *(result + 38);
  *(a2 + 28) = v2 | 0xE;
  *(a2 + 17) = v3;
  v4 = *(result + 32);
  *(a2 + 28) = v2 | 0x1E;
  *(a2 + 20) = v4;
  return result;
}

BOOL sub_1007A03DC(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v8)
  {
    v3 = sub_10001C650(8);
    v5 = *v3;
    v4 = *(v3 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10001C0A0(&v8);
  return v6;
}

void sub_1007A051C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007A059C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  *(a2 + 24) |= 2u;
  *(a2 + 16) = v2;
  return result;
}

BOOL sub_1007A062C(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v8)
  {
    v3 = sub_10001C650(8);
    v5 = *v3;
    v4 = *(v3 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10001C0A0(&v8);
  return v6;
}

void sub_1007A076C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007A07EC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 36);
  v3 = *(a2 + 28);
  *(a2 + 28) = v3 | 2;
  *(a2 + 16) = v2;
  v4 = *(result + 32);
  *(a2 + 28) = v3 | 6;
  *(a2 + 20) = v4;
  return result;
}

void sub_1007A0814(__int128 *a1, int a2, int a3, char a4, char a5)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(&__p, *a1, *(a1 + 1));
  }

  else
  {
    __p = *a1;
    v6 = *(a1 + 2);
  }

  sub_1007A08EC(0x80107);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }
}

void sub_1007A08D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1007A08EC(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v8)
  {
    v3 = sub_10001C650(8);
    v5 = *v3;
    v4 = *(v3 + 1);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10001C0A0(&v8);
  return v6;
}