void sub_1011D32D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  if (a67 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  __p = &a50;
  sub_1000087B4(&__p);
  __p = &a53;
  sub_1000B23E0(&__p);
  _Unwind_Resume(a1);
}

void sub_1011D3424(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  v11 = a2;
  v6 = *(a1 + 88);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = a1 + 88;
  do
  {
    if (*(v6 + 32) >= a2)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a2));
  }

  while (v6);
  if (v7 == a1 + 88 || *(v7 + 32) > a2)
  {
LABEL_8:
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I adding a new emergency list at index %u", buf, 8u);
    }

    memset(v10, 0, sizeof(v10));
    *buf = v10;
    v13 = 0;
    operator new();
  }

  v9 = (*sub_1011D4198(a1 + 80, &v11) + 24 * a3);
  if (v9 != a4)
  {
    sub_1001A7D40(v9, *a4, a4[1], 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 5));
  }
}

void sub_1011D3840(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v9 = a1;
  v10 = a2;
  if (!*(a1 + 32))
  {
    v7 = 1;
    goto LABEL_8;
  }

  if ((dispatch_workloop_is_current() & 1) == 0)
  {
    v7 = *(a1 + 32) == 0;
LABEL_8:
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_1011D59C0;
    v11[3] = &unk_101F198D8;
    v11[4] = a1 + 8;
    v11[5] = &v9;
    v12 = v11;
    v8 = *(a1 + 24);
    *(a3 + 128) = 0uLL;
    *(a3 + 144) = 0uLL;
    *(a3 + 96) = 0uLL;
    *(a3 + 112) = 0uLL;
    *(a3 + 64) = 0uLL;
    *(a3 + 80) = 0uLL;
    *(a3 + 32) = 0uLL;
    *(a3 + 48) = 0uLL;
    *a3 = 0uLL;
    *(a3 + 16) = 0uLL;
    if (v7)
    {
      CSIPhoneNumber::CSIPhoneNumber(a3);
      block = _NSConcreteStackBlock;
      v14 = 0x40000000;
      v15 = sub_1011D5104;
      v16 = &unk_101F197F8;
      v17 = a3;
      v18 = &v12;
      dispatch_sync(v8, &block);
    }

    else
    {
      CSIPhoneNumber::CSIPhoneNumber(a3);
      block = _NSConcreteStackBlock;
      v14 = 0x40000000;
      v15 = sub_1011D52AC;
      v16 = &unk_101F19818;
      v17 = a3;
      v18 = &v12;
      dispatch_async_and_wait(v8, &block);
    }

    return;
  }

  isValidSimSlot = subscriber::isValidSimSlot();
  v6 = &v10;
  if (!isValidSimSlot)
  {
    v6 = (a1 + 256);
  }

  sub_1000B24BC(a3, a1, *v6);
}

void sub_1011D3A2C(uint64_t a1, uint64_t a2)
{
  memset(&v12, 0, sizeof(v12));
  if (sub_1011D0F54(a1))
  {
    v11 = 0;
    (*(**(a1 + 208) + 96))(&v11);
    sub_10000501C(v10, "822");
    ctu::cf::assign();
    *&v12.__r_.__value_.__l.__data_ = *v10;
    *(&v12.__r_.__value_.__r.__words[1] + 7) = *&v10[15];
    v4 = v10[23];
    memset(v10, 0, sizeof(v10));
    *(&v12.__r_.__value_.__s + 23) = v4;
    v5 = sub_10005D028();
    sub_10000501C(&__p, "TestEmergencyNumber");
    v6 = sub_1002D5BC4(v5, &__p, &v12);
    v7 = v6;
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p);
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    else if (!v6)
    {
LABEL_10:
      sub_100005308((a1 + 128), &v12);
      __p = 0uLL;
      v15 = 0;
      sub_100005308(&__p, &v12);
      sub_1011D0918(a1, 0xAu, &__p, a2);
      p_p = &__p;
      sub_1000087B4(&p_p);
      sub_10000A1EC(&v11);
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      return;
    }

    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = &v12;
      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v9 = v12.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p) = 136446210;
      *(&__p + 4) = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Adding %{public}s as emergency test number from persistent properties", &__p, 0xCu);
    }

    goto LABEL_10;
  }
}

void sub_1011D3C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_10000A1EC(&a15);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_1011D3C9C(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

uint64_t sub_1011D3D78(void *a1)
{
  v1 = a1[29];
  v2 = a1 + 30;
  if (v1 == a1 + 30)
  {
    v9 = 1;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = (*(*a1 + 160))(a1, v1 + 7);
      if (v5)
      {
        break;
      }

      v6 = v1[1];
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
          v7 = v1[2];
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v4 |= v5 ^ 1;
      v1 = v7;
    }

    while (v7 != v2);
    v9 = v5 | v4 ^ 1;
  }

  return v9 & 1;
}

void sub_1011D3E38(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  subscriber::makeSimSlotRange();
  v3 = v33;
  if (v33 != v34)
  {
    do
    {
      if (v35(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v34);
    v27 = v34;
    if (v3 != v34)
    {
      v25 = v35;
      v26 = v34;
      do
      {
        v32 = *v3;
        v36 = &v32;
        v4 = sub_1001AB974(a2, &v32);
        v5 = 0;
        v6 = (v4 + 5);
        do
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          sub_1000B1F3C(a1, v32, v5, &v29);
          v7 = v29;
          v8 = v30;
          v9 = v30 - v29;
          if (v30 - v29 >= 1)
          {
            v11 = v4[6];
            v10 = v4[7];
            if (v10 - v11 >= v9)
            {
              v40 = v4[6];
              v41 = v11;
              v36 = (v4 + 5);
              v37 = &v40;
              v38 = &v41;
              if (v29 != v30)
              {
                v16 = v11;
                do
                {
                  sub_1000AE428(v16, v7);
                  v7 += 160;
                  v17 = v41;
                  v16 = v41 + 160;
                  v41 += 160;
                }

                while (v7 != v8);
                v11 = v17 + 160;
              }

              BYTE8(v38) = 1;
              sub_1000B2354(&v36);
              v4[6] = v11;
            }

            else
            {
              v12 = v4[5];
              v13 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v12) >> 5) - 0x3333333333333333 * (v9 >> 5);
              if (v13 > 0x199999999999999)
              {
                sub_1000CE3D4();
              }

              v14 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v12) >> 5);
              if (2 * v14 > v13)
              {
                v13 = 2 * v14;
              }

              if (v14 >= 0xCCCCCCCCCCCCCCLL)
              {
                v15 = 0x199999999999999;
              }

              else
              {
                v15 = v13;
              }

              v39 = v4 + 5;
              if (v15)
              {
                sub_1000B225C(v6, v15);
              }

              v18 = 32 * ((v11 - v12) >> 5);
              v36 = 0;
              v37 = v18;
              v38 = v18;
              v19 = v18 + v9;
              do
              {
                sub_1000AE428(v18, v7);
                v18 += 160;
                v7 += 160;
                v9 -= 160;
              }

              while (v9);
              *&v38 = v19;
              sub_1001AB6BC(v6, v11, v4[6], v19);
              v20 = v4[5];
              v21 = v37;
              *&v38 = v38 + v4[6] - v11;
              v4[6] = v11;
              v22 = v21 + v20 - v11;
              sub_1001AB6BC(v6, v20, v11, v22);
              v23 = v4[5];
              v4[5] = v22;
              v24 = v4[7];
              *(v4 + 3) = v38;
              *&v38 = v23;
              *(&v38 + 1) = v24;
              v36 = v23;
              v37 = v23;
              sub_1001AB810(&v36);
            }
          }

          v36 = &v29;
          sub_1000B23E0(&v36);
          ++v5;
        }

        while (v5 != 13);
        for (++v3; v3 != v26; ++v3)
        {
          if (v25(*v3))
          {
            break;
          }
        }
      }

      while (v3 != v27);
    }
  }
}

uint64_t *sub_1011D4198(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_1000A58E4("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1011D41F0(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_1011D5E2C(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_1011D431C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1011D432C(uint64_t a1)
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

uint64_t sub_1011D43AC(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v6;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  v7 = *(a2 + 60);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = v7;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v8 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v8;
  *(a2 + 87) = 0;
  *(a2 + 64) = 0;
  v9 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v9;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v10 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v10;
  *(a2 + 127) = 0;
  *(a2 + 104) = 0;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v11 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v11;
  *(a2 + 151) = 0;
  *(a2 + 128) = 0;
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

BOOL sub_1011D44D8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v2 == *(a2 + 32);
  if (v2 == *(a2 + 32) && v2 != 0)
  {
    v5 = *(a1 + 31);
    if (v5 >= 0)
    {
      v6 = *(a1 + 31);
    }

    else
    {
      v6 = *(a1 + 16);
    }

    v7 = *(a2 + 31);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 16);
    }

    if (v6 == v7)
    {
      if (v5 >= 0)
      {
        v9 = (a1 + 8);
      }

      else
      {
        v9 = *(a1 + 8);
      }

      if (v8 >= 0)
      {
        v10 = (a2 + 8);
      }

      else
      {
        v10 = *(a2 + 8);
      }

      return memcmp(v9, v10, v6) == 0;
    }

    return 0;
  }

  return v3;
}

void sub_1011D4590(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        sub_1000B23E0(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t sub_1011D4604(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    v4 = **(a1 + 16);
    while (v4 != v3)
    {
      v4 -= 3;
      v5 = v4;
      sub_1000B23E0(&v5);
    }
  }

  return a1;
}

uint64_t sub_1011D4668(uint64_t a1, uint64_t a2)
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

void sub_1011D4724(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1011D4724(a1, *a2);
    sub_1011D4724(a1, *(a2 + 1));
    v4 = (a2 + 40);
    sub_1011D4590(&v4);
    operator delete(a2);
  }
}

void sub_1011D4784(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1011D4784(a1, *a2);
    sub_1011D4784(a1, *(a2 + 1));
    if (a2[191] < 0)
    {
      operator delete(*(a2 + 21));
    }

    if (a2[167] < 0)
    {
      operator delete(*(a2 + 18));
    }

    if (a2[127] < 0)
    {
      operator delete(*(a2 + 13));
    }

    if (a2[95] < 0)
    {
      operator delete(*(a2 + 9));
    }

    if (a2[71] < 0)
    {
      operator delete(*(a2 + 6));
    }

    operator delete(a2);
  }
}

uint64_t *sub_1011D4828(void **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  v4 = v1[1];
  *buf = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v4);
  }

  (*(*v2 + 136))(v2, buf);
  if (*buf)
  {
    dispatch_group_leave(*buf);
    if (*buf)
    {
      dispatch_release(*buf);
    }
  }

  sub_1000FF844(&v7);
  return sub_1000049E0(&v6);
}

void sub_1011D490C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_1011D49B4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F196E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1011D49E4(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  v4 = v3 + 1;
  v5 = v3[1];
  v28 = *v3;
  v29 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v29;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v28 = &v29;
  }

  read_rest_value(v3, a2);
  v6 = *(a1 + 16);
  v7 = *(v6 + 232);
  if (v7 != (v6 + 240))
  {
    while (1)
    {
      v31 = 0;
      v32 = 0;
      ServiceMap = Registry::getServiceMap(*(v6 + 160));
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
      if (!v14)
      {
        break;
      }

      v16 = v14[3];
      v15 = v14[4];
      if (!v15)
      {
        goto LABEL_12;
      }

      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
LABEL_13:
      (**v16)(&v31, v16, (v7 + 4));
      if ((v17 & 1) == 0)
      {
        sub_100004A34(v15);
      }

      if (v31)
      {
        v18 = *(v31 + 52);
        v19 = sub_100007A6C(&v28, v7 + 4);
        v20 = v19;
        if (&v29 != v19 && !sub_1011D44D8((v19 + 7), (v7 + 7)))
        {
          v21 = (*(*v6 + 160))(v6, v20 + 7);
          v22 = sub_1011D3D78(v6);
          v23 = (*(**(v6 + 48) + 16))(*(v6 + 48), v18);
          if (((v21 | v22 ^ 1) & 1) == 0)
          {
            v24 = *v23;
            if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I VoWiFiProvState changed, making this model current. Sending emergency numbers update", buf, 2u);
            }

            (*(*v6 + 168))(v6, v18);
          }
        }
      }

      if (v32)
      {
        sub_100004A34(v32);
      }

      v25 = v7[1];
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
          v26 = v7[2];
          v27 = *v26 == v7;
          v7 = v26;
        }

        while (!v27);
      }

      v7 = v26;
      if (v26 == (v6 + 240))
      {
        goto LABEL_30;
      }
    }

    v16 = 0;
LABEL_12:
    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_13;
  }

LABEL_30:
  sub_1001A904C(&v28, v29);
}

uint64_t sub_1011D4D0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1011D4DD4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F19768;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1011D4E0C(void *a1)
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

uint64_t sub_1011D4E54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_DWORD *sub_1011D4EA0(_DWORD *result, void *a2)
{
  *result = 1;
  v4 = *a2;
  v2 = a2 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    while (*(v3 + 57) != 2 || *(v3 + 256) != 1 || *(v3 + 257) != 1 || (*(v3 + 258) & 1) != 0 || (*(v3 + 259) & 1) != 0)
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
        return result;
      }
    }

    *result = *(v3 + 8);
  }

  return result;
}

void sub_1011D4F30(void **a1)
{
  v1 = a1;
  (*(***a1 + 144))(**a1);
  operator delete();
}

uint64_t *sub_1011D4FD0(void **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  v4 = v1[1];
  *buf = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v4);
  }

  (*(*v2 + 152))(v2, buf);
  if (*buf)
  {
    dispatch_group_leave(*buf);
    if (*buf)
    {
      dispatch_release(*buf);
    }
  }

  sub_1000FF844(&v7);
  return sub_1000049E0(&v6);
}

void sub_1011D50B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1011D5104(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v12);
  v2 = *(a1 + 32);
  *v2 = v12;
  if (*(v2 + 31) < 0)
  {
    operator delete(*(v2 + 8));
  }

  v3 = v13;
  *(v2 + 24) = v14;
  *(v2 + 8) = v3;
  HIBYTE(v14) = 0;
  LOBYTE(v13) = 0;
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  v4 = v15;
  *(v2 + 48) = v16;
  *(v2 + 32) = v4;
  HIBYTE(v16) = 0;
  LOBYTE(v15) = 0;
  v5 = v18;
  *(v2 + 56) = v17;
  *(v2 + 60) = v5;
  if (*(v2 + 87) < 0)
  {
    operator delete(*(v2 + 64));
  }

  v6 = v19;
  *(v2 + 80) = v20;
  *(v2 + 64) = v6;
  HIBYTE(v20) = 0;
  LOBYTE(v19) = 0;
  v7 = v22;
  *(v2 + 88) = v21;
  *(v2 + 96) = v7;
  if (*(v2 + 127) < 0)
  {
    operator delete(*(v2 + 104));
  }

  v8 = __p;
  *(v2 + 120) = v24;
  *(v2 + 104) = v8;
  HIBYTE(v24) = 0;
  LOBYTE(__p) = 0;
  if (*(v2 + 151) < 0)
  {
    operator delete(*(v2 + 128));
    v10 = SHIBYTE(v24);
    v11 = v25;
    *(v2 + 144) = v26;
    *(v2 + 128) = v11;
    HIBYTE(v26) = 0;
    LOBYTE(v25) = 0;
    *(v2 + 152) = v27;
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v9 = v25;
    *(v2 + 144) = v26;
    *(v2 + 128) = v9;
    HIBYTE(v26) = 0;
    LOBYTE(v25) = 0;
    *(v2 + 152) = v27;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }
}

void sub_1011D52AC(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v12);
  v2 = *(a1 + 32);
  *v2 = v12;
  if (*(v2 + 31) < 0)
  {
    operator delete(*(v2 + 8));
  }

  v3 = v13;
  *(v2 + 24) = v14;
  *(v2 + 8) = v3;
  HIBYTE(v14) = 0;
  LOBYTE(v13) = 0;
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  v4 = v15;
  *(v2 + 48) = v16;
  *(v2 + 32) = v4;
  HIBYTE(v16) = 0;
  LOBYTE(v15) = 0;
  v5 = v18;
  *(v2 + 56) = v17;
  *(v2 + 60) = v5;
  if (*(v2 + 87) < 0)
  {
    operator delete(*(v2 + 64));
  }

  v6 = v19;
  *(v2 + 80) = v20;
  *(v2 + 64) = v6;
  HIBYTE(v20) = 0;
  LOBYTE(v19) = 0;
  v7 = v22;
  *(v2 + 88) = v21;
  *(v2 + 96) = v7;
  if (*(v2 + 127) < 0)
  {
    operator delete(*(v2 + 104));
  }

  v8 = __p;
  *(v2 + 120) = v24;
  *(v2 + 104) = v8;
  HIBYTE(v24) = 0;
  LOBYTE(__p) = 0;
  if (*(v2 + 151) < 0)
  {
    operator delete(*(v2 + 128));
    v10 = SHIBYTE(v24);
    v11 = v25;
    *(v2 + 144) = v26;
    *(v2 + 128) = v11;
    HIBYTE(v26) = 0;
    LOBYTE(v25) = 0;
    *(v2 + 152) = v27;
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v9 = v25;
    *(v2 + 144) = v26;
    *(v2 + 128) = v9;
    HIBYTE(v26) = 0;
    LOBYTE(v25) = 0;
    *(v2 + 152) = v27;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }
}

void sub_1011D545C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a1 + 8);
  sub_1001A918C(*a1, *v4);
  v5 = 0;
  *v3 = v4;
  v3[2] = 0;
  *v4 = 0;
  do
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    sub_1000B1F3C(v2, *a1[2], v5, &v15);
    v6 = v15;
    v7 = v16;
    if (v16 != v15)
    {
      v8 = *(*a1 + 8);
      if (!v8)
      {
LABEL_10:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v9 = v8;
          v10 = *(v8 + 32);
          if (v10 <= v5)
          {
            break;
          }

          v8 = *v9;
          if (!*v9)
          {
            goto LABEL_10;
          }
        }

        if (v10 >= v5)
        {
          break;
        }

        v8 = v9[1];
        if (!v8)
        {
          goto LABEL_10;
        }
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 0x40000000;
      v12 = sub_1011D565C;
      v13 = &unk_101F19898;
      v14 = v9 + 5;
      while (v6 != v7)
      {
        v12(v11, v6);
        v6 += 5;
      }
    }

    v18 = &v15;
    sub_1000B23E0(&v18);
    ++v5;
  }

  while (v5 != 13);
}

void sub_1011D563C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a15;
  sub_1000B23E0(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_1011D565C(uint64_t a1, CSIPhoneNumber *a2)
{
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__src = 0u;
  *v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  sub_10000D518(&v14);
  CSIPhoneNumber::getFullOriginalNumber(__p, a2);
  v4 = sub_10000C030(&v14);
  v31 = 44;
  sub_10000C030(v4);
  CSIPhoneNumber::getEmergencyCategory(a2);
  v5 = std::ostream::operator<<();
  v31 = 44;
  sub_10000C030(v5);
  CSIPhoneNumber::getIsEmSMSTextSupported(a2);
  v6 = std::ostream::operator<<();
  v31 = 44;
  sub_10000C030(v6);
  CSIPhoneNumber::getIsEmVoiceSupported(a2);
  std::ostream::operator<<();
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *(a1 + 32);
  if ((BYTE8(v20) & 0x10) != 0)
  {
    v9 = v20;
    if (v20 < __src[1])
    {
      *&v20 = __src[1];
      v9 = __src[1];
    }

    v10 = __src[0];
  }

  else
  {
    if ((BYTE8(v20) & 8) == 0)
    {
      v8 = 0;
      v13 = 0;
      goto LABEL_16;
    }

    v10 = *(&v15 + 1);
    v9 = *(&v16 + 1);
  }

  v8 = v9 - v10;
  if ((v9 - v10) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  v13 = v9 - v10;
  if (v8)
  {
    memmove(__p, v10, v8);
  }

LABEL_16:
  *(__p + v8) = 0;
  sub_1000D1054(v7, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[1]);
  }

  std::locale::~locale(&v15);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1011D5970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1011D59C0(uint64_t a1@<X0>, CSIPhoneNumber *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v5 = v3 + 1;
  isValidSimSlot = subscriber::isValidSimSlot();
  v7 = (v4 + 256);
  if (isValidSimSlot)
  {
    v7 = v5;
  }

  v8 = *v7;

  sub_1000B24BC(a2, v4, v8);
}

void sub_1011D5A24(void ***a1)
{
  v1 = **a1;
  subscriber::makeSimSlotRange();
  v2 = v3;
  if (v3 != v4)
  {
    do
    {
      if (v5(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v4);
    while (v2 != v4)
    {
      sub_1011D3A2C(v1, *v2);
      do
      {
        ++v2;
      }

      while (v2 != v4 && (v5(*v2) & 1) == 0);
    }
  }

  sub_1011D1160(v1);
  operator delete();
}

void sub_1011D5B34(std::string *a1, CSIPhoneNumber *this)
{
  CSIPhoneNumber::getFullNumber(&v25, this);
  v4 = std::string::insert(&v25, 0, "[", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v26, ",", 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  CSIPhoneNumber::getEmergencyCategoryURN(__p, this);
  v8 = v23;
  if ((v23 & 0x80u) != 0)
  {
    v8 = __p[1];
  }

  if (v8)
  {
    CSIPhoneNumber::getEmergencyCategoryURN(&v24, this);
  }

  else
  {
    EmergencyCategory = CSIPhoneNumber::getEmergencyCategory(this);
    std::to_string(&v24, EmergencyCategory);
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v24;
  }

  else
  {
    v10 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  v12 = std::string::append(&v27, v10, size);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v28, ",", 1uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  IsEmSMSTextSupported = CSIPhoneNumber::getIsEmSMSTextSupported(this);
  v17 = CSIBOOLAsString(IsEmSMSTextSupported);
  v18 = strlen(v17);
  v19 = std::string::append(&v29, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v30, "]", 1uLL);
  *a1 = *v21;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_1011D5D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 41) < 0)
  {
    operator delete(*(v40 - 64));
  }

  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
  }

  if (*(v40 - 105) < 0)
  {
    operator delete(*(v40 - 128));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011D5E2C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1011D5EAC(void **a1)
{
  v1 = *a1;
  v41 = a1;
  v42 = v1;
  v40 = v1;
  v2 = *v1;
  v51 = 0;
  v52 = 0;
  v50 = &v51;
  subscriber::makeSimSlotRange();
  v3 = v47;
  v4 = v48;
  if (v47 != v48)
  {
    v5 = v49;
    do
    {
      if (v49(*v3))
      {
        break;
      }

      v3 += 4;
    }

    while (v3 != v48);
    v6 = v48;
    if (v3 != v48)
    {
      while (1)
      {
        v7 = *v3;
        v46 = *v3;
        ServiceMap = Registry::getServiceMap(*(v2 + 160));
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
        __p = v10;
        v14 = sub_100009510(&v9[1].__m_.__sig, &__p);
        if (!v14)
        {
          break;
        }

        v16 = v14[3];
        v15 = v14[4];
        if (!v15)
        {
          goto LABEL_13;
        }

        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_14:
        (*(*v16 + 8))(&__p, v16, v7);
        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        if (__p && !*(__p + 49))
        {
          v18 = *(__p + 48);
        }

        else
        {
          v18 = 0;
        }

        if (v44)
        {
          sub_100004A34(v44);
        }

        if (v18)
        {
          sub_1000C4284(&v50, &v46);
        }

        do
        {
          v3 += 4;
        }

        while (v3 != v4 && (v5(*v3) & 1) == 0);
        if (v3 == v6)
        {
          goto LABEL_27;
        }
      }

      v16 = 0;
LABEL_13:
      std::mutex::unlock(v9);
      v15 = 0;
      v17 = 1;
      goto LABEL_14;
    }
  }

LABEL_27:
  v48 = 0;
  v49 = 0;
  v47 = &v48;
  v19 = *(v2 + 80);
  if (v19 != (v2 + 88))
  {
    do
    {
      if (!v52)
      {
        goto LABEL_43;
      }

      v20 = v51;
      if (v51)
      {
        v21 = *(v19 + 8);
        v22 = &v51;
        do
        {
          if (*(v20 + 7) >= v21)
          {
            v22 = v20;
          }

          v20 = v20[*(v20 + 7) < v21];
        }

        while (v20);
        if (v22 != &v51 && v21 >= *(v22 + 7))
        {
LABEL_43:
          v26 = v19[5];
          v27 = v19[6];
          while (v26 != v27)
          {
            v28 = *v26;
            v29 = v26[1];
            while (v28 != v29)
            {
              CSIPhoneNumber::getFullNumber(&__p, v28);
              sub_10017695C(&v47, &__p);
              if (v45 < 0)
              {
                operator delete(__p);
              }

              v28 += 5;
            }

            v26 += 3;
          }
        }
      }

      v23 = v19[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v19[2];
          v25 = *v24 == v19;
          v19 = v24;
        }

        while (!v25);
      }

      v19 = v24;
    }

    while (v24 != (v2 + 88));
  }

  v30 = *(v2 + 296);
  if (v30 != (v2 + 304))
  {
    do
    {
      if (!v52)
      {
        goto LABEL_67;
      }

      v31 = v51;
      if (v51)
      {
        v32 = *(v30 + 8);
        v33 = &v51;
        do
        {
          if (*(v31 + 7) >= v32)
          {
            v33 = v31;
          }

          v31 = v31[*(v31 + 7) < v32];
        }

        while (v31);
        if (v33 != &v51 && v32 >= *(v33 + 7))
        {
LABEL_67:
          v36 = v30[5];
          v37 = v30[6];
          while (v36 != v37)
          {
            sub_100005BA0(&v47, v36);
            v36 += 7;
          }
        }
      }

      v34 = v30[1];
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
          v35 = v30[2];
          v25 = *v35 == v30;
          v30 = v35;
        }

        while (!v25);
      }

      v30 = v35;
    }

    while (v35 != (v2 + 304));
  }

  v38 = v40[4];
  if (!v38)
  {
    sub_100022DB4();
  }

  (*(*v38 + 48))(v38, &v47);
  sub_100009970(&v47, v48);
  sub_10006DCAC(&v50, v51);
  sub_1011D633C(&v42);
  return sub_1000049E0(&v41);
}

void sub_1011D62BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, void *a24)
{
  sub_10006DCAC(&a23, a24);
  sub_1011D633C(&a12);
  sub_1000049E0(&a11);
  _Unwind_Resume(a1);
}

uint64_t *sub_1011D633C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100FFFBC0(v1 + 8);
    operator delete();
  }

  return result;
}

void *sub_1011D638C(void *a1, void *a2, NSObject **a3, void *a4, uint64_t a5, void *a6)
{
  ctu::OsLogContext::OsLogContext(&v20, kCtLoggingSystemName, "wea");
  *a1 = 0;
  a1[1] = 0;
  v12 = *a3;
  a1[2] = *a3;
  if (v12)
  {
    dispatch_retain(v12);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v21, &v20);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v21);
  ctu::OsLogLogger::~OsLogLogger(v21);
  ctu::OsLogContext::~OsLogContext(&v20);
  v13 = a2[1];
  a1[5] = *a2;
  a1[6] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *a3;
  a1[7] = *a3;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v15 = a4[1];
  a1[8] = *a4;
  a1[9] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1011D8830((a1 + 10), a5);
  v17 = *(*a4 + 16);
  v16 = *(*a4 + 24);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    a1[15] = *(v17 + 72);
    sub_100004A34(v16);
  }

  else
  {
    a1[15] = *(v17 + 72);
  }

  a1[16] = 0;
  a1[17] = 0;
  a1[18] = 0;
  v18 = a6[1];
  a1[19] = *a6;
  a1[20] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1011D64D4(_Unwind_Exception *a1)
{
  v3 = v1[9];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = v1[7];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = v1[6];
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 4));
  sub_1000C0544(v1);
  _Unwind_Resume(a1);
}

void *sub_1011D653C(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[18];
  a1[18] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[17];
  a1[17] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[16];
  a1[16] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_1011D8D24((a1 + 10));
  v6 = a1[9];
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = a1[6];
  if (v8)
  {
    sub_100004A34(v8);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 4));

  return sub_1000C0544(a1);
}

void *sub_1011D6640(void *result)
{
  v1 = result[16];
  if (v1)
  {
    v2 = result;
    v3 = result[4];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      sub_10160E230(__p);
      if (v6 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 136446210;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %{public}s Timer (Max Wait time) cancelled", buf, 0xCu);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }

      v1 = v2[16];
    }

    (*(*v1 + 16))(v1);
    result = v2[16];
    v2[16] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_1011D6778(uint64_t a1)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 32);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      sub_10160E230(__p);
      if (v8 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136446210;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %{public}s Timer (Geofence Timeout) cancelled", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = *(a1 + 136);
    }

    (*(*v2 + 16))(v2);
    v6 = *(a1 + 136);
    *(a1 + 136) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  else if (v4)
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I GF timer is null. No actions required", __p, 2u);
  }
}

void sub_1011D68E0(uint64_t a1)
{
  v2 = *(a1 + 144);
  v3 = *(a1 + 32);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      sub_10160E230(__p);
      if (v8 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136446210;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %{public}s Timer (Alert-Active) cancelled", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = *(a1 + 144);
    }

    (*(*v2 + 16))(v2);
    v6 = *(a1 + 144);
    *(a1 + 144) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  else if (v4)
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Alert Active timer is null. No actions required", __p, 2u);
  }
}

void sub_1011D6A48(uint64_t a1)
{
  v9 = 0;
  v10 = 0;
  Registry::getTimerService(&v9, *(a1 + 40));
  if (v9)
  {
    *v11 = *off_101F198F8;
    *&v12 = @"GeofenceTimeoutInSec";
    v14 = 0;
    v15 = 0;
    *buf = 0;
    sub_10005B328(buf, v11, &v12 + 8, 3uLL);
    v11[0] = 0;
    sub_10115B8EC(*(a1 + 152), *(*(a1 + 64) + 156), 2, buf, 0, 0, v16);
    sub_10010B240(v11, v16);
    v2 = sub_10000A1EC(v16);
    if (v11[0])
    {
      *v16 = 0;
      ctu::cf::assign(v2, v11[0], v3);
    }

    sub_100029A48(v11);
    if (*buf)
    {
      v14 = *buf;
      operator delete(*buf);
    }

    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v6);
        *v11 = 0u;
        v12 = 0u;
        v7 = *(a1 + 8);
        if (v7)
        {
          v8 = std::__shared_weak_count::lock(v7);
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v8);
            *(&v12 + 1) = 0;
            operator new();
          }
        }

        sub_100013CC4();
      }
    }

    sub_100013CC4();
  }

  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to get timer interface", buf, 2u);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1011D6E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  sub_10002B644(&a18);
  std::__shared_weak_count::__release_weak(v23);
  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(a1);
}

void sub_1011D6F1C(uint64_t a1)
{
  v7 = 0;
  v8 = 0;
  Registry::getTimerService(&v7, *(a1 + 40));
  if (v7)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v3);
        v9 = 0u;
        v10 = 0u;
        v4 = *(a1 + 8);
        if (v4)
        {
          v5 = std::__shared_weak_count::lock(v4);
          if (v5)
          {
            atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v5);
            *(&v10 + 1) = 0;
            operator new();
          }
        }

        sub_100013CC4();
      }
    }

    sub_100013CC4();
  }

  v6 = *(a1 + 32);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to get timer interface", buf, 2u);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_1011D7400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  sub_10002B644(&a18);
  std::__shared_weak_count::__release_weak(v23);
  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(a1);
}

void sub_1011D74E4(uint64_t a1)
{
  sub_1011D6A48(a1);
  sub_1011D6F1C(a1);
  v2 = (a1 + 96);
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (!sub_101565298(v2[2]))
    {
      v3 = *(a1 + 32);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        sub_10160E230(v20);
        v4 = v21;
        v5 = *v20;
        sub_1015653F8(v2[2], __p);
        v6 = v20;
        if (v4 < 0)
        {
          v6 = v5;
        }

        if ((SBYTE7(v19) & 0x80u) == 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        buf = 136446466;
        buf_4 = v6;
        buf_12 = 2080;
        buf_14 = v7;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %{public}s Timer (Max wait time) needed for (at least) - %s", &buf, 0x16u);
        if (SBYTE7(v19) < 0)
        {
          operator delete(__p[0]);
        }

        if (v21 < 0)
        {
          operator delete(*v20);
        }
      }

      v8 = *(a1 + 120);
      if (v8 == 255 || !v8)
      {
        *(a1 + 120) = 45;
      }

      v16 = 0;
      v17 = 0;
      Registry::getTimerService(&v16, *(a1 + 40));
      if (v16)
      {
        v9 = *(a1 + 8);
        if (v9)
        {
          v10 = std::__shared_weak_count::lock(v9);
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v10);
            *__p = 0u;
            v19 = 0u;
            v11 = *(a1 + 8);
            if (v11)
            {
              v12 = std::__shared_weak_count::lock(v11);
              if (v12)
              {
                atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                sub_100004A34(v12);
                *(&v19 + 1) = 0;
                operator new();
              }
            }

            sub_100013CC4();
          }
        }

        sub_100013CC4();
      }

      v15 = *(a1 + 32);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to get timer interface", v20, 2u);
      }

      if (v17)
      {
        sub_100004A34(v17);
      }

      return;
    }
  }

  v13 = *(a1 + 32);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sub_10160E230(v20);
    v14 = v21 >= 0 ? v20 : *v20;
    LODWORD(__p[0]) = 136446210;
    *(__p + 4) = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %{public}s Timer (Max wait time) not required...", __p, 0xCu);
    if (v21 < 0)
    {
      operator delete(*v20);
    }
  }
}

void sub_1011D79B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_10002B644(&a18);
  std::__shared_weak_count::__release_weak(v27);
  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1011D7A4C(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2 && !(*(*v2 + 24))(v2))
  {
    v6 = (a1 + 96);
    while (1)
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      if (sub_101565790(v6[2]))
      {
        v7 = *(a1 + 32);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          sub_10160E230(__p);
          v8 = v13;
          v9 = __p[0];
          sub_1015653F8(v6[2], buf);
          v10 = __p;
          if (v8 < 0)
          {
            v10 = v9;
          }

          if (v15 >= 0)
          {
            v11 = buf;
          }

          else
          {
            v11 = *buf;
          }

          *v16 = 136446466;
          v17 = v10;
          v18 = 2080;
          v19 = v11;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %{public}s will be dispatched, triggered from - %s", v16, 0x16u);
          if (v15 < 0)
          {
            operator delete(*buf);
          }

          if (v13 < 0)
          {
            operator delete(__p[0]);
          }
        }

        return 1;
      }
    }
  }

  else
  {
    v3 = *(a1 + 32);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    sub_10160E230(__p);
    if (v13 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %{public}s Alert is not active... Cannot dispatch", buf, 0xCu);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_1011D7C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011D7C54(void *a1)
{
  if (a1[13])
  {
    buf = 0uLL;
    v50 = 0;
    for (i = a1[12]; i; i = *i)
    {
      sub_1015653F8(i[2], &v41);
      sub_10000501C(v39, "<");
      if ((v40 & 0x80u) == 0)
      {
        v2 = v39;
      }

      else
      {
        v2 = v39[0];
      }

      if ((v40 & 0x80u) == 0)
      {
        v3 = v40;
      }

      else
      {
        v3 = v39[1];
      }

      v4 = std::string::append(&v41, v2, v3);
      v5 = *&v4->__r_.__value_.__l.__data_;
      v47.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
      *&v47.__r_.__value_.__l.__data_ = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      v6 = i[3];
      if (v6)
      {
        v7 = *(v6 + 8) + 1;
      }

      else
      {
        v7 = 0;
      }

      std::to_string(&v38, v7);
      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v38;
      }

      else
      {
        v8 = v38.__r_.__value_.__r.__words[0];
      }

      if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v38.__r_.__value_.__l.__size_;
      }

      v10 = std::string::append(&v47, v8, size);
      v11 = *&v10->__r_.__value_.__l.__data_;
      v42.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v42.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      sub_10000501C(__p, ">");
      if ((v37 & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      if ((v37 & 0x80u) == 0)
      {
        v13 = v37;
      }

      else
      {
        v13 = __p[1];
      }

      v14 = std::string::append(&v42, v12, v13);
      v15 = v14->__r_.__value_.__r.__words[0];
      v48[0] = v14->__r_.__value_.__l.__size_;
      *(v48 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
      v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v17 = *(&buf + 1);
      if (*(&buf + 1) >= v50)
      {
        v20 = 0xAAAAAAAAAAAAAAABLL * ((*(&buf + 1) - buf) >> 3);
        v21 = v20 + 1;
        if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1000CE3D4();
        }

        if (0x5555555555555556 * ((v50 - buf) >> 3) > v21)
        {
          v21 = 0x5555555555555556 * ((v50 - buf) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v50 - buf) >> 3) >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v21;
        }

        p_buf = &buf;
        if (v22)
        {
          sub_100005348(&buf, v22);
        }

        v23 = 8 * ((*(&buf + 1) - buf) >> 3);
        v24 = v48[0];
        *v23 = v15;
        *(v23 + 8) = v24;
        *(v23 + 15) = *(v48 + 7);
        *(v23 + 23) = v16;
        v48[0] = 0;
        *(v48 + 7) = 0;
        v19 = 24 * v20 + 24;
        v25 = (24 * v20 - (*(&buf + 1) - buf));
        memcpy(v25, buf, *(&buf + 1) - buf);
        v26 = buf;
        v27 = v50;
        *&buf = v25;
        *(&buf + 1) = v19;
        v50 = 0;
        v44 = v26;
        v45 = v27;
        v43[0] = v26;
        v43[1] = v26;
        sub_1000054E0(v43);
      }

      else
      {
        v18 = v48[0];
        **(&buf + 1) = v15;
        *(v17 + 8) = v18;
        *(v17 + 15) = *(v48 + 7);
        *(v17 + 23) = v16;
        v48[0] = 0;
        *(v48 + 7) = 0;
        v19 = v17 + 24;
      }

      *(&buf + 1) = v19;
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (v40 < 0)
      {
        operator delete(v39[0]);
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }
    }

    v28 = a1[4];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      sub_10160E230(v43);
      v29 = SHIBYTE(v44);
      v30 = v43[0];
      sub_1000D1184(buf, *(&buf + 1), ", ", 2uLL, &v42);
      v31 = v43;
      if (v29 < 0)
      {
        v31 = v30;
      }

      if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v42;
      }

      else
      {
        v32 = v42.__r_.__value_.__r.__words[0];
      }

      LODWORD(v47.__r_.__value_.__l.__data_) = 136446466;
      *(v47.__r_.__value_.__r.__words + 4) = v31;
      WORD2(v47.__r_.__value_.__r.__words[1]) = 2082;
      *(&v47.__r_.__value_.__r.__words[1] + 6) = v32;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %{public}s %{public}s", &v47, 0x16u);
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v44) < 0)
      {
        operator delete(v43[0]);
      }
    }

    v43[0] = &buf;
    sub_1000087B4(v43);
  }

  else
  {
    v33 = a1[4];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      sub_10160E230(v43);
      v34 = SHIBYTE(v44) >= 0 ? v43 : v43[0];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s <-- No associated shapes...", &buf, 0xCu);
      if (SHIBYTE(v44) < 0)
      {
        operator delete(v43[0]);
      }
    }
  }
}

void sub_1011D81A0(void *a1)
{
  v2 = a1[4];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_10160E230(__p);
    if (v5 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *buf = 136446210;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %{public}s Releasing timers and shapes...", buf, 0xCu);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_1011D68E0(a1);
  sub_1011D6778(a1);
  sub_1011D6640(a1);
  sub_1011D8294(a1);
}

void sub_1011D8294(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    while (1)
    {
      v3 = v2[3];
      if (!v3)
      {
        v4 = *(a1 + 32);
LABEL_20:
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          sub_1015653F8(v2[2], __p);
          if (v20 >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          v18 = v2[3];
          if (v18)
          {
            v18 = *(v18 + 8) + 1;
          }

          *buf = 136446466;
          v22 = v17;
          v23 = 2048;
          v24 = v18;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %{public}s is in use: <%lu>...", buf, 0x16u);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }
        }

        goto LABEL_33;
      }

      v4 = *(a1 + 32);
      if (*(v3 + 8))
      {
        goto LABEL_20;
      }

      if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEFAULT))
      {
        sub_1015653F8(v2[2], __p);
        if (v20 >= 0)
        {
          v5 = __p;
        }

        else
        {
          v5 = __p[0];
        }

        v6 = v2[3];
        if (v6)
        {
          v6 = *(v6 + 8) + 1;
        }

        *buf = 136446466;
        v22 = v5;
        v23 = 2048;
        v24 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %{public}s will stop the geofence: <%lu>...", buf, 0x16u);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 40));
      v8 = ServiceMap;
      if (v9 < 0)
      {
        v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
        v11 = 5381;
        do
        {
          v9 = v11;
          v12 = *v10++;
          v11 = (33 * v11) ^ v12;
        }

        while (v12);
      }

      std::mutex::lock(ServiceMap);
      __p[0] = v9;
      v13 = sub_100009510(&v8[1].__m_.__sig, __p);
      if (!v13)
      {
        break;
      }

      v14 = v13[3];
      v15 = v13[4];
      if (!v15)
      {
        goto LABEL_29;
      }

      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v16 = 0;
      if (v14)
      {
        goto LABEL_30;
      }

LABEL_31:
      if ((v16 & 1) == 0)
      {
        sub_100004A34(v15);
      }

LABEL_33:
      v2 = *v2;
      if (!v2)
      {
        goto LABEL_34;
      }
    }

    v14 = 0;
LABEL_29:
    std::mutex::unlock(v8);
    v15 = 0;
    v16 = 1;
    if (!v14)
    {
      goto LABEL_31;
    }

LABEL_30:
    sub_1015655C0(v2[2]);
    goto LABEL_31;
  }

LABEL_34:
  sub_1011D9C18(a1 + 80);
}

void sub_1011D8528(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011D8558(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 32);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      sub_10160E230(__p);
      if (v8 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136446210;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %{public}s Refreshing...", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_1011D68E0(a1);
    sub_1011D6F1C(a1);
    sub_1011D6778(a1);
    sub_1011D6A48(a1);
  }

  else if (v4)
  {
    sub_10160E230(__p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %{public}s Not Refreshing...", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1011D86C0(uint64_t a1)
{
  v2 = (a1 + 96);
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (!sub_101565298(v2[2]))
    {
      v3 = *(a1 + 32);
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v6 = 0;
      v4 = "#I Not all shapes monitoring";
      v5 = &v6;
      goto LABEL_8;
    }
  }

  v3 = *(a1 + 32);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    return;
  }

  *buf = 0;
  v4 = "#I All shapes monitoring";
  v5 = buf;
LABEL_8:
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
}

void sub_1011D876C(void *a1)
{
  v2 = a1 + 12;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (!sub_101565298(v2[2]))
    {
      v3 = a1[4];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Not all shapes monitoring", v5, 2u);
      }

      return;
    }
  }

  v4 = a1[4];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I All shapes ready...", buf, 2u);
  }

  sub_1011D6640(a1);
}

uint64_t sub_1011D8830(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10011CF40(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1011D88A8(a1, i + 2);
  }

  return a1;
}

void *sub_1011D88A8(void *a1, uint64_t *a2)
{
  v4 = sub_1011D8B24(a1, a2);
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

  if (!sub_1011D8B98(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

unint64_t sub_1011D8B24(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(*a2 + 63) < 0)
  {
    sub_100005F2C(__p, *(v2 + 40), *(v2 + 48));
  }

  else
  {
    *__p = *(v2 + 40);
    v6 = *(v2 + 56);
  }

  v3 = sub_1000D3314(&v7, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

BOOL sub_1011D8B98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  if (*(*a2 + 63) < 0)
  {
    sub_100005F2C(__dst, *(v4 + 40), *(v4 + 48));
  }

  else
  {
    *__dst = *(v4 + 40);
    v17 = *(v4 + 56);
  }

  v5 = *a3;
  if (*(*a3 + 63) < 0)
  {
    sub_100005F2C(__p, *(v5 + 40), *(v5 + 48));
  }

  else
  {
    *__p = *(v5 + 40);
    v15 = *(v5 + 56);
  }

  v6 = HIBYTE(v17);
  if (v17 >= 0)
  {
    v7 = HIBYTE(v17);
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = HIBYTE(v15);
  v9 = SHIBYTE(v15);
  if (v15 < 0)
  {
    v8 = __p[1];
  }

  if (v7 == v8)
  {
    if (v17 >= 0)
    {
      v10 = __dst;
    }

    else
    {
      v10 = __dst[0];
    }

    if (v15 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = memcmp(v10, v11, v7) == 0;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 0;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }
  }

  operator delete(__p[0]);
  v6 = HIBYTE(v17);
LABEL_23:
  if (v6 < 0)
  {
    operator delete(__dst[0]);
  }

  return v12;
}

void sub_1011D8CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011D8CC4(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      sub_100004A34(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1011D8D24(uint64_t a1)
{
  sub_1011D8D60(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1011D8D60(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        sub_100004A34(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_1011D8DA8(void *a1)
{
  *a1 = off_101F19938;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1011D8DF4(void *a1)
{
  *a1 = off_101F19938;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1011D8ED4(uint64_t result, uint64_t a2)
{
  *a2 = off_101F19938;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1011D8F14(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1011D8F24(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1011D8F64(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(a1 + 16))
      {
        operator new();
      }

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_1011D9010(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1011D905C(uint64_t *a1)
{
  v1 = *a1;
  ServiceMap = Registry::getServiceMap(*(*a1 + 40));
  v3 = ServiceMap;
  if (v4 < 0)
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
  __p = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &__p);
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
      if (v10)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = *(v1 + 32);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p) = 0;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to get Geofence Manager", &__p, 2u);
  }

LABEL_12:
  v13 = *(v1 + 32);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sub_10160E230(&__p);
    v14 = v18 >= 0 ? &__p : __p;
    *buf = 136315138;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s Timer (Max Wait Time) expiry..", buf, 0xCu);
    if (v18 < 0)
    {
      operator delete(__p);
    }
  }

  v15 = *(v1 + 72);
  __p = *(v1 + 64);
  v17 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v10 + 40))(v10, &__p);
  if (v17)
  {
    sub_100004A34(v17);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  operator delete();
}

void sub_1011D92A4()
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v0);
  }

  operator delete();
}

void *sub_1011D9300(void *a1)
{
  *a1 = off_101F199B8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1011D934C(void *a1)
{
  *a1 = off_101F199B8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1011D942C(uint64_t result, uint64_t a2)
{
  *a2 = off_101F199B8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1011D946C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1011D947C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1011D94BC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(a1 + 16))
      {
        operator new();
      }

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_1011D9568(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1011D95B4(uint64_t *a1)
{
  v1 = *a1;
  ServiceMap = Registry::getServiceMap(*(*a1 + 40));
  v3 = ServiceMap;
  if (v4 < 0)
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
  __p = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &__p);
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
      if (v10)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = *(v1 + 32);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p) = 0;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to get Geofence Manager", &__p, 2u);
  }

LABEL_12:
  v13 = *(v1 + 32);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sub_10160E230(&__p);
    v14 = v18 >= 0 ? &__p : __p;
    *buf = 136446210;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %{public}s Timer (Geofence Timeout) expiry ..", buf, 0xCu);
    if (v18 < 0)
    {
      operator delete(__p);
    }
  }

  v15 = *(v1 + 72);
  __p = *(v1 + 64);
  v17 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v10 + 32))(v10, &__p);
  if (v17)
  {
    sub_100004A34(v17);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  operator delete();
}

void sub_1011D97FC()
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v0);
  }

  operator delete();
}

void *sub_1011D9858(void *a1)
{
  *a1 = off_101F19A38;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1011D98A4(void *a1)
{
  *a1 = off_101F19A38;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1011D9984(uint64_t result, uint64_t a2)
{
  *a2 = off_101F19A38;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1011D99C4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1011D99D4(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1011D9A14(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(a1 + 16))
      {
        operator new();
      }

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_1011D9AC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1011D9B0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Timer (Alert-Active) expiry...", v5, 2u);
  }

  v3 = *(v1 + 144);
  if (v3)
  {
    (*(*v3 + 16))(v3);
    v4 = *(v1 + 144);
    *(v1 + 144) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  operator delete();
}

void sub_1011D9C18(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1011D8D60(a1, *(a1 + 16));
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

void sub_1011D9C74(os_log_t *a1, Registry **a2, uint64_t a3, uint64_t **a4)
{
  memset(&v37, 0, sizeof(v37));
  sub_1011DA688(&v37, a1, a2, a4);
  v36 = 0;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__dst, v37.__r_.__value_.__l.__data_, v37.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v37;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&v39, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v39 = __dst;
  }

  v22.__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(__p, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&v39.__r_.__value_.__l.__data_;
    v34[0] = v39.__r_.__value_.__r.__words[2];
  }

  v23.__r_.__value_.__r.__words[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v22.__r_.__value_.__r.__words[0];
    v22.__r_.__value_.__r.__words[0] = v23.__r_.__value_.__r.__words[0];
    v38.__r_.__value_.__r.__words[0] = v6;
    sub_100005978(&v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v36 = v22.__r_.__value_.__r.__words[0];
  v22.__r_.__value_.__r.__words[0] = 0;
  sub_100005978(&v22.__r_.__value_.__l.__data_);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  memset(v34, 0, sizeof(v34));
  *__p = 0u;
  (*(**a3 + 32))(__p);
  v32 = 0;
  if (SHIBYTE(v34[0]) < 0)
  {
    sub_100005F2C(&v31, __p[0], __p[1]);
  }

  else
  {
    *&v31.__r_.__value_.__l.__data_ = *__p;
    v31.__r_.__value_.__r.__words[2] = v34[0];
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&v38, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    v38 = v31;
  }

  v21.__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&v39, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    v39 = v38;
  }

  v22.__r_.__value_.__r.__words[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v7 = v21.__r_.__value_.__r.__words[0];
    v21.__r_.__value_.__r.__words[0] = v22.__r_.__value_.__r.__words[0];
    v23.__r_.__value_.__r.__words[0] = v7;
    sub_100005978(&v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  v32 = v21.__r_.__value_.__r.__words[0];
  v21.__r_.__value_.__r.__words[0] = 0;
  sub_100005978(&v21.__r_.__value_.__l.__data_);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v30 = 0;
  if (SHIBYTE(v34[3]) < 0)
  {
    sub_100005F2C(&v29, v34[1], v34[2]);
  }

  else
  {
    v29 = *&v34[1];
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&v38, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v38 = v29;
  }

  v21.__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&v39, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
  }

  else
  {
    v39 = v38;
  }

  v22.__r_.__value_.__r.__words[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = v21.__r_.__value_.__r.__words[0];
    v21.__r_.__value_.__r.__words[0] = v22.__r_.__value_.__r.__words[0];
    v23.__r_.__value_.__r.__words[0] = v8;
    sub_100005978(&v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  v30 = v21.__r_.__value_.__r.__words[0];
  v21.__r_.__value_.__r.__words[0] = 0;
  sub_100005978(&v21.__r_.__value_.__l.__data_);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  ServiceMap = Registry::getServiceMap(*a2);
  v10 = ServiceMap;
  if ((v11 & 0x8000000000000000) != 0)
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
  v39.__r_.__value_.__r.__words[0] = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v39);
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
      goto LABEL_60;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
LABEL_60:
  theString = 0;
  v18 = kDataUsageLocalizationTable;
  (*(*v17 + 16))(&theString, v17, kDataUsageLocalizationTable, v32, 1);
  v27 = 0;
  MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, theString);
  v27 = MutableCopy;
  v20 = v36;
  v40.length = CFStringGetLength(MutableCopy);
  v40.location = 0;
  CFStringFindAndReplace(MutableCopy, @"%@", v20, v40, 0);
  v26 = 0;
  (*(*v17 + 16))(&v26, v17, v18, v30, 1);
  v25 = 0;
  (*(*v17 + 16))(&v25, v17, v18, @"OK", 1);
  v24 = 0;
  (*(*v17 + 16))(&v24, v17, v18, @"SETTINGS", 1);
  memset(&v38, 0, sizeof(v38));
  memset(&v39, 0, sizeof(v39));
  ctu::cf::assign();
  v38 = v39;
  memset(&v23, 0, sizeof(v23));
  memset(&v39, 0, sizeof(v39));
  ctu::cf::assign();
  v23 = v39;
  memset(&v22, 0, sizeof(v22));
  memset(&v39, 0, sizeof(v39));
  ctu::cf::assign();
  v22 = v39;
  memset(&v21, 0, sizeof(v21));
  memset(&v39, 0, sizeof(v39));
  ctu::cf::assign();
  v21 = v39;
  operator new();
}

void sub_1011DA408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, const void *a35, void *a36)
{
  sub_100005978(&a9);
  if (*(v37 - 121) < 0)
  {
    operator delete(*(v37 - 144));
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a35);
  sub_1000D6F38(&a36);
  sub_100005978((v37 - 176));
  if (v36 < 0)
  {
    operator delete(*(v37 - 168));
  }

  _Unwind_Resume(a1);
}

void sub_1011DA688(std::string *a1, os_log_t *a2, Registry **a3, uint64_t **a4)
{
  v8 = *a4;
  v10 = 0xAAAAAAAAAAAAAAABLL * (a4[1] - v8);
  if (v10 != 1)
  {
    if (!v10)
    {
      a1->__r_.__value_.__r.__words[0] = 0;
      a1->__r_.__value_.__l.__size_ = 0;
      a1->__r_.__value_.__r.__words[2] = 0;
      return;
    }

    ServiceMap = Registry::getServiceMap(*a3);
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
    buf.__r_.__value_.__r.__words[0] = v13;
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
        goto LABEL_15;
      }
    }

    else
    {
      v19 = 0;
    }

    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
LABEL_15:
    v21 = *a4;
    if (a4[1] - *a4 != 48)
    {
      memset(&buf, 0, sizeof(buf));
      sub_1011DBA20(&buf, a2, a3, v21);
      v30 = a4[1];
      v31 = (*a4 + 3);
      v64[1] = 0;
      v65 = 0;
      v64[0] = 0;
      sub_100D5EDA4(v64, v31, v30, 0xAAAAAAAAAAAAAAABLL * ((v30 - v31) >> 3));
      v32 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = buf.__r_.__value_.__l.__size_;
      }

      memset(&v63, 0, sizeof(v63));
      v34 = &v63;
      sub_1000677C4(&v63, size + 2);
      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v34 = v63.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if (v32 >= 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        memmove(v34, p_buf, size);
      }

      strcpy(v34 + size, ", ");
      sub_1011DA688(&__p, a2, a3, v64);
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
        v37 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v37 = __p.__r_.__value_.__l.__size_;
      }

      v38 = std::string::append(&v63, p_p, v37);
      *a1 = *v38;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      v63.__r_.__value_.__r.__words[0] = v64;
      sub_1000087B4(&v63);
      if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_104;
      }

      v39 = buf.__r_.__value_.__r.__words[0];
      goto LABEL_103;
    }

    v64[0] = 0;
    v64[1] = 0;
    v65 = 0;
    sub_1011DBA20(v64, a2, a3, v21);
    memset(&v63, 0, sizeof(v63));
    sub_1011DBA20(&v63, a2, a3, *a4 + 3);
    v22 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    v23 = SHIBYTE(v63.__r_.__value_.__r.__words[2]);
    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v63.__r_.__value_.__l.__size_;
    }

    v24 = HIBYTE(v65);
    if (v22)
    {
      v25 = v65 < 0;
      if (v65 >= 0)
      {
        v26 = HIBYTE(v65);
      }

      else
      {
        v26 = v64[1];
      }

      if (!v26)
      {
        v27 = *a2;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *a4;
          if (*(*a4 + 23) < 0)
          {
            v28 = *v28;
          }

          v29 = v63.__r_.__value_.__r.__words[0];
          if (v23 >= 0)
          {
            v29 = &v63;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
          *(buf.__r_.__value_.__r.__words + 4) = v28;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v29;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Bundle %{public}s is localized empty, returning %{public}s", &buf, 0x16u);
        }

        *a1 = v63;
        memset(&v63, 0, sizeof(v63));
LABEL_99:
        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v65) & 0x80000000) == 0)
        {
          goto LABEL_104;
        }

        v39 = v64[0];
LABEL_103:
        operator delete(v39);
LABEL_104:
        if ((v20 & 1) == 0)
        {
          sub_100004A34(v18);
        }

        return;
      }
    }

    else
    {
      v25 = v65 < 0;
      v40 = v64[1];
      if (v65 >= 0)
      {
        v40 = HIBYTE(v65);
      }

      if (v40)
      {
        v41 = *a2;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = *a4 + 3;
          if (*(*a4 + 47) < 0)
          {
            v42 = *v42;
          }

          v43 = v64;
          if (v24 < 0)
          {
            v43 = v64[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
          *(buf.__r_.__value_.__r.__words + 4) = v42;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v43;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Bundle %{public}s is localized empty, returning %{public}s", &buf, 0x16u);
        }

        *&a1->__r_.__value_.__l.__data_ = *v64;
        a1->__r_.__value_.__r.__words[2] = v65;
        v64[1] = 0;
        v65 = 0;
        v64[0] = 0;
        goto LABEL_99;
      }
    }

    v44 = *a2;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v64[0];
      if (!v25)
      {
        v45 = v64;
      }

      v46 = v63.__r_.__value_.__r.__words[0];
      if (v23 >= 0)
      {
        v46 = &v63;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
      *(buf.__r_.__value_.__r.__words + 4) = v45;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v46;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I Returning %{public}s & %{public}s", &buf, 0x16u);
    }

    v62 = 0;
    (*(*v19 + 16))(&v62, v19, kDataUsageLocalizationTable, @"&", 1);
    memset(&buf, 0, sizeof(buf));
    ctu::cf::assign();
    __p = buf;
    if (v65 >= 0)
    {
      v47 = HIBYTE(v65);
    }

    else
    {
      v47 = v64[1];
    }

    memset(&v59, 0, sizeof(v59));
    v48 = &v59;
    sub_1000677C4(&v59, v47 + 1);
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v48 = v59.__r_.__value_.__r.__words[0];
    }

    if (v47)
    {
      if (v65 >= 0)
      {
        v49 = v64;
      }

      else
      {
        v49 = v64[0];
      }

      memmove(v48, v49, v47);
    }

    *(&v48->__r_.__value_.__l.__data_ + v47) = 32;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = &__p;
    }

    else
    {
      v50 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v51 = __p.__r_.__value_.__l.__size_;
    }

    v52 = std::string::append(&v59, v50, v51);
    v53 = *&v52->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    v54 = std::string::append(&v60, " ", 1uLL);
    v55 = *&v54->__r_.__value_.__l.__data_;
    buf.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
    *&buf.__r_.__value_.__l.__data_ = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = &v63;
    }

    else
    {
      v56 = v63.__r_.__value_.__r.__words[0];
    }

    if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v57 = v63.__r_.__value_.__l.__size_;
    }

    v58 = std::string::append(&buf, v56, v57);
    *a1 = *v58;
    v58->__r_.__value_.__l.__size_ = 0;
    v58->__r_.__value_.__r.__words[2] = 0;
    v58->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_100005978(&v62);
    goto LABEL_99;
  }

  sub_1011DBA20(a1, a2, a3, v8);
}

void sub_1011DAD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, const void *a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v44 - 105) < 0)
  {
    operator delete(*(v44 - 128));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  sub_100005978(&a30);
  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if ((v43 & 1) == 0)
  {
    sub_100004A34(v42);
  }

  _Unwind_Resume(a1);
}

void sub_1011DAEB8(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x1011DAEB0);
}

void sub_1011DAEC8(os_log_t *a1, Registry **a2, std::string::size_type a3, int a4, uint64_t **a5, uint64_t a6, uint64_t a7)
{
  memset(&v40, 0, sizeof(v40));
  sub_1011DA688(&v40, a1, a2, a5);
  v39 = 0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__p, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v40;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst[0] = __p;
  }

  *v30 = 0;
  if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(v42, __dst[0].__r_.__value_.__l.__data_, __dst[0].__r_.__value_.__l.__size_);
  }

  else
  {
    v42[0] = __dst[0];
  }

  *&v30[32] = 0;
  if (ctu::cf::convert_copy())
  {
    v11 = *v30;
    *v30 = *&v30[32];
    v43[0] = v11;
    sub_100005978(v43);
  }

  if (SHIBYTE(v42[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42[0].__r_.__value_.__l.__data_);
  }

  v39 = *v30;
  *v30 = 0;
  sub_100005978(v30);
  if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v37 = 0;
  v43[0] = 0;
  __dst[0].__r_.__value_.__r.__words[0] = 0;
  if (ctu::cf::convert_copy(__dst, "ALLOW_DATA_FOR_APP_NAME", 0x8000100, kCFAllocatorDefault, v12))
  {
    v13 = v43[0];
    v43[0] = __dst[0].__r_.__value_.__l.__data_;
    v42[0].__r_.__value_.__r.__words[0] = v13;
    sub_100005978(&v42[0].__r_.__value_.__l.__data_);
  }

  v37 = v43[0];
  v43[0] = 0;
  sub_100005978(v43);
  ServiceMap = Registry::getServiceMap(*a2);
  v15 = ServiceMap;
  if ((v16 & 0x8000000000000000) != 0)
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
  v42[0].__r_.__value_.__r.__words[0] = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, v42);
  if (v20)
  {
    v21 = a7;
    v23 = v20[3];
    v22 = v20[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      a7 = v21;
      goto LABEL_29;
    }

    a7 = v21;
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v15);
LABEL_29:
  theString = 0;
  v24 = kDataUsageLocalizationTable;
  (*(*v23 + 16))(&theString, v23, kDataUsageLocalizationTable, v37, 1);
  v35 = 0;
  MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, theString);
  v35 = MutableCopy;
  v26 = v39;
  v44.length = CFStringGetLength(MutableCopy);
  v44.location = 0;
  CFStringFindAndReplace(MutableCopy, @"%@", v26, v44, 0);
  v34 = 0;
  (*(*v23 + 16))(&v34, v23, v24, @"FUNCTIONALITY_WILL_NOT_WORK_ON_DATA_OFF", 1);
  v27 = sub_1011DB8AC(*a2, a3);
  v28 = sub_1011DB8AC(*a2, SHIDWORD(a3));
  v29 = sub_1011DB8AC(*a2, a4);
  v33 = 0;
  (*(*v23 + 16))(&v33, v23, v24, v27, 1);
  v32 = 0;
  (*(*v23 + 16))(&v32, v23, v24, v28, 1);
  v31 = 0;
  (*(*v23 + 16))(&v31, v23, v24, v29, 1);
  memset(&v30[32], 0, 24);
  memset(v42, 0, 24);
  ctu::cf::assign();
  *&v30[32] = v42[0];
  memset(v30, 0, 24);
  memset(v42, 0, 24);
  ctu::cf::assign();
  *v30 = v42[0];
  memset(v42, 0, 24);
  ctu::cf::assign();
  memset(v42, 0, 24);
  ctu::cf::assign();
  memset(v42, 0, 24);
  ctu::cf::assign();
  __dst[0].__r_.__value_.__r.__words[0] = a3;
  LODWORD(__dst[0].__r_.__value_.__r.__words[1]) = a4;
  sub_1011DBE9C(&__dst[0].__r_.__value_.__r.__words[2], a7);
  operator new();
}

void sub_1011DB614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  sub_100005978(&a27);
  if (*(v47 - 201) < 0)
  {
    operator delete(*(v47 - 224));
  }

  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (v46 < 0)
  {
    operator delete(*(v47 - 256));
  }

  _Unwind_Resume(a1);
}

const __CFString *sub_1011DB8AC(Registry *a1, int a2)
{
  ServiceMap = Registry::getServiceMap(a1);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
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
  v17 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v17);
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
  v13 = (*(*v11 + 80))(v11);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (a2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        return @"DONT_ALLOW";
      }

      else
      {
        return 0;
      }
    }

    v15 = @"WIFI_ONLY";
    v16 = @"WLAN_ONLY";
  }

  else
  {
    v15 = @"WIFI_AND_CELLULAR";
    v16 = @"WLAN_AND_CELLULAR";
  }

  if (v13)
  {
    return v16;
  }

  else
  {
    return v15;
  }
}

void sub_1011DBA04(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011DBA20(void *a1, os_log_t *a2, Registry **a3, uint64_t *a4)
{
  ServiceMap = Registry::getServiceMap(*a3);
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
  if (!v14)
  {
    std::mutex::unlock(v9);
    goto LABEL_9;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v9);
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v15);
    if (!v16)
    {
      sub_100004A34(v15);
LABEL_9:
      v17 = *a2;
      if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
      {
        if (*(a4 + 23) >= 0)
        {
          v31 = a4;
        }

        else
        {
          v31 = *a4;
        }

        *buf = 136446210;
        *&buf[4] = v31;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not get SBServicesInterface for localized application name for %{public}s", buf, 0xCu);
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }
  }

  else
  {
    std::mutex::unlock(v9);
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  theString = 0;
  (*(*v16 + 40))(&theString, v16, a4);
  if (theString && CFStringGetLength(theString) >= 1)
  {
    v18 = Registry::getServiceMap(*a3);
    v19 = v18;
    if (v20 < 0)
    {
      v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v20 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    std::mutex::lock(v18);
    *buf = v20;
    v24 = sub_100009510(&v19[1].__m_.__sig, buf);
    if (v24)
    {
      v26 = v24[3];
      v25 = v24[4];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v19);
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v25);
        v27 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v26 = 0;
    }

    std::mutex::unlock(v19);
    v25 = 0;
    v27 = 1;
LABEL_26:
    v34 = 0;
    (*(*v26 + 16))(&v34, v26, kDataUsageLocalizationTable, @"QUOTED_STRING_TEMPLATE", 0);
    v29 = v34;
    if (!v34)
    {
      *buf = @"“%@”";
      sub_10021D11C(&v34, buf);
      v29 = v34;
    }

    MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v29);
    v30 = theString;
    v38.length = CFStringGetLength(MutableCopy);
    v38.location = 0;
    CFStringFindAndReplace(MutableCopy, @"%@", v30, v38, 0);
    memset(buf, 0, sizeof(buf));
    v37 = 0;
    ctu::cf::assign();
    *a1 = *buf;
    a1[2] = v37;
    sub_100305E28(&MutableCopy);
    sub_100005978(&v34);
    if ((v27 & 1) == 0)
    {
      sub_100004A34(v25);
    }

    sub_100005978(&theString);
    if (!v15)
    {
      return;
    }

LABEL_22:
    sub_100004A34(v15);
    return;
  }

  sub_100005978(&theString);
  v28 = *a2;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    if (*(a4 + 23) >= 0)
    {
      v32 = a4;
    }

    else
    {
      v32 = *a4;
    }

    *buf = 136446210;
    *&buf[4] = v32;
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Localized application name for bundle %{public}s is empty!", buf, 0xCu);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (v15)
  {
    goto LABEL_22;
  }
}

void sub_1011DBE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_100005978(&a12);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  sub_100005978(&a13);
  if (v19)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1011DBE9C(uint64_t a1, uint64_t a2)
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

void sub_1011DBF54(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F19AB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1011DBFD0(void *a1)
{
  *a1 = off_101F19B08;
  sub_100D6E818((a1 + 3));
  return a1;
}

void sub_1011DC014(void *a1)
{
  *a1 = off_101F19B08;
  sub_100D6E818((a1 + 3));

  operator delete();
}

uint64_t sub_1011DC100(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F19B08;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return sub_1011DBE9C(a2 + 24, a1 + 24);
}

void sub_1011DC144(void *a1)
{
  sub_100D6E818(a1 + 24);

  operator delete(a1);
}

uint64_t sub_1011DC180(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  switch(v2)
  {
    case 1:
      v3 = (a1 + 8);
      goto LABEL_7;
    case 3:
      v3 = (a1 + 16);
      goto LABEL_7;
    case 2:
      v3 = (a1 + 12);
LABEL_7:
      v4 = *v3;
      goto LABEL_9;
  }

  v4 = 3;
LABEL_9:
  v5 = *(a1 + 48);
  v7 = v4;
  if (!v5)
  {
    sub_100022DB4();
  }

  return (*(*v5 + 48))(v5, &v7);
}

uint64_t sub_1011DC210(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const char *sub_1011DC25C(int a1)
{
  v1 = "lazuli.msg.ctr.?";
  if (a1 == 2)
  {
    v1 = "lazuli.msg.ctr.2";
  }

  if (a1 == 1)
  {
    return "lazuli.msg.ctr.1";
  }

  else
  {
    return v1;
  }
}

void sub_1011DC288(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Powering on", buf, 2u);
  }

  sub_10000501C(&__p, "/cc/props/lazuli_client_state");
  operator new();
}

void sub_1011DC668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011DC6D4(uint64_t a1, void *a2)
{
  v4 = a1 + 152;
  v5 = *(a1 + 152);
  v6 = (a1 + 160);
  if (v5 != (a1 + 160))
  {
    do
    {
      v7 = SlotIdFromPersonalityId();
      if (isReal())
      {
        if (v5[7])
        {
          v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v7);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = *(v5 + 55);
            v10 = (v9 & 0x80u) != 0;
            if ((v9 & 0x80u) != 0)
            {
              v9 = v5[5];
            }

            if (v10)
            {
              v11 = v5[4];
            }

            else
            {
              v11 = (v5 + 4);
            }

            if (v9)
            {
              v12 = v11;
            }

            else
            {
              v12 = "<invalid>";
            }

            *buf = 136315138;
            v28 = v12;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Adding IMS delegate: %s", buf, 0xCu);
          }

          sub_1011DEDF8(a1, (v5 + 4));
        }

        else
        {
          sub_1011DF334(a1, v5 + 4);
        }
      }

      v13 = v5[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v5[2];
          v15 = *v14 == v5;
          v5 = v14;
        }

        while (!v15);
      }

      v5 = v14;
    }

    while (v14 != v6);
  }

  v18 = *a2;
  v16 = a2 + 1;
  v17 = v18;
  if (v18 != v16)
  {
    do
    {
      if (v6 == sub_100007A6C(v4, v17 + 4))
      {
        v19 = SlotIdFromPersonalityId();
        v20 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(v17 + 55);
          v22 = (v21 & 0x80u) != 0;
          if ((v21 & 0x80u) != 0)
          {
            v21 = v17[5];
          }

          if (v22)
          {
            v23 = v17[4];
          }

          else
          {
            v23 = (v17 + 4);
          }

          if (v21)
          {
            v24 = v23;
          }

          else
          {
            v24 = "<invalid>";
          }

          *buf = 136315138;
          v28 = v24;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Removing IMS delegate: personality removed from: %s", buf, 0xCu);
        }

        sub_1011DF334(a1, v17 + 4);
      }

      v25 = v17[1];
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
          v26 = v17[2];
          v15 = *v26 == v17;
          v17 = v26;
        }

        while (!v15);
      }

      v17 = v26;
    }

    while (v26 != v16);
  }
}

void sub_1011DC9A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 200);
  v3 = (a1 + 208);
  if (v2 != (a1 + 208))
  {
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      v7 = *(v2 + 8);
      v8 = v5;
      do
      {
        if (*(v6 + 32) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 8))
      {
        goto LABEL_12;
      }

      if (!sub_1004D09B0(v8 + 5, v2 + 5))
      {
        break;
      }

LABEL_13:
      v9 = v2[1];
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
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
      if (v10 == v3)
      {
        return;
      }
    }

    v7 = *(v2 + 8);
LABEL_12:
    sub_1011DD004(a1, v7);
    goto LABEL_13;
  }
}

void sub_1011DCA6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 224);
  v3 = (a1 + 232);
  if (v2 != (a1 + 232))
  {
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      v7 = *(v2 + 8);
      v8 = v5;
      do
      {
        if (*(v6 + 32) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 8))
      {
        goto LABEL_12;
      }

      if ((sub_1004CE640(v8 + 40, v2 + 40) & 1) == 0)
      {
        break;
      }

LABEL_13:
      v9 = *(v2 + 1);
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
          v10 = *(v2 + 2);
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
      if (v10 == v3)
      {
        return;
      }
    }

    v7 = *(v2 + 8);
LABEL_12:
    sub_1011DD004(a1, v7);
    goto LABEL_13;
  }
}

void sub_1011DCB38(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == *(a1 + 344))
  {
    v3 = (a2 + 8);
    v4 = *a2;
    if (*a2 == a2 + 8)
    {
      return;
    }

    v5 = *(a1 + 328);
    while (sub_100071DF8(v4 + 4, v5 + 4) && sub_1008DFB14((v4 + 7), (v5 + 7)))
    {
      v6 = v4[1];
      v7 = v4;
      if (v6)
      {
        do
        {
          v4 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v8 = *v4 == v7;
          v7 = v4;
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
      if (v4 == v3)
      {
        return;
      }
    }
  }

  v11 = *(a1 + 328);
  if (v11 != (a1 + 336))
  {
    do
    {
      if (*(v11 + 14) == 1)
      {
        sub_1011DEDF8(a1, (v11 + 4));
      }

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
          v8 = *v13 == v11;
          v11 = v13;
        }

        while (!v8);
      }

      v11 = v13;
    }

    while (v13 != (a1 + 336));
  }
}

void sub_1011DCC70(uint64_t a1, const void **a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), *a2);
  v7 = 0;
  v8 = 0;
  sub_1011DF388(&v7, a1, *a2);
  if (v7)
  {
    sub_10069F790(v7, a2 + 1);
  }

  else
  {
    v5 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "No active models for discovery completion", v6, 2u);
    }
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_1011DCD48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011DCD64(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  if (a2 == 3)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Erasing model for all slots", buf, 2u);
    }

    if (*(a1 + 144))
    {
      v7 = *(a1 + 136);
      v6 = (a1 + 136);
      v8 = *(v6 - 1);
      *(v6 - 1) = v6;
      *(v7 + 16) = 0;
      *v6 = 0;
      v6[1] = 0;
      if (v8[1])
      {
        v9 = v8[1];
      }

      else
      {
        v9 = v8;
      }

      if (v9)
      {
        v10 = v9[2];
        if (v10)
        {
          v11 = *v10;
          if (*v10 == v9)
          {
            *v10 = 0;
            while (1)
            {
              v16 = v10[1];
              if (!v16)
              {
                break;
              }

              do
              {
                v10 = v16;
                v16 = *v16;
              }

              while (v16);
            }
          }

          else
          {
            for (v10[1] = 0; v11; v11 = v10[1])
            {
              do
              {
                v10 = v11;
                v11 = *v11;
              }

              while (v11);
            }
          }

          sub_100DE3E98(v9);
          for (i = v10[2]; i; i = i[2])
          {
            v10 = i;
          }

          v9 = v10;
        }
      }

      sub_100DE3E98(v9);
    }
  }

  else
  {
    *buf = 0;
    v19 = 0;
    v20 = 0;
    PersonalityIdFromSlotId();
    v13 = sub_100007A6C(a1 + 128, buf);
    if (a1 + 136 != v13)
    {
      v14 = v13;
      v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17[0] = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Erasing model", v17, 2u);
      }

      sub_100D7A2B0((a1 + 128), v14);
      sub_1000D57F4((v14 + 4));
      operator delete(v14);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_1011DCF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011DCF98(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Shut down complete", v4, 2u);
  }

  return ctu::RestModule::disconnect((a1 + 64));
}

void sub_1011DD004(uint64_t a1, uint64_t a2)
{
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  PersonalityIdFromSlotId();
  v4 = sub_100007A6C(a1 + 128, v19);
  if (a1 + 136 == v4)
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v9 = "#I Bailing out, no models";
    goto LABEL_13;
  }

  v5 = *(a1 + 232);
  if (v5)
  {
    v6 = v4;
    v7 = a1 + 232;
    do
    {
      if (*(v5 + 32) >= a2)
      {
        v7 = v5;
      }

      v5 = *(v5 + 8 * (*(v5 + 32) < a2));
    }

    while (v5);
    if (v7 != a1 + 232 && *(v7 + 32) <= a2)
    {
      v10 = *(a1 + 208);
      *__p = 0u;
      v18 = 0u;
      *v15 = 0u;
      v16 = 0u;
      *buf = 0u;
      if (!v10)
      {
        goto LABEL_24;
      }

      v11 = a1 + 208;
      do
      {
        if (*(v10 + 32) >= a2)
        {
          v11 = v10;
        }

        v10 = *(v10 + 8 * (*(v10 + 32) < a2));
      }

      while (v10);
      if (v11 != a1 + 208 && *(v11 + 32) <= a2)
      {
        std::string::operator=(buf, (v11 + 352));
      }

      else
      {
LABEL_24:
        v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Registration information not available", v13, 2u);
        }
      }

      std::string::operator=(&v15[1], (v7 + 112));
      std::string::operator=(__p, (v7 + 40));
      BYTE8(v18) = *(v7 + 236);
      BYTE9(v18) = *(v7 + 239);
      sub_10069FD1C(*(v6 + 56), buf);
    }
  }

  v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v9 = "#I Provisioning information not available";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
  }

LABEL_14:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }
}

void sub_1011DD2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000CFBA0(va);
  if (*(v3 - 33) < 0)
  {
    operator delete(*(v3 - 56));
  }

  _Unwind_Resume(a1);
}

BOOL sub_1011DD2D8(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  PersonalityIdFromSlotId();
  v2 = *(a1 + 328);
  v3 = (a1 + 336);
  if (v2 == v3)
  {
LABEL_9:
    v7 = 0;
  }

  else
  {
    while (!sub_100071DF8(__p, v2 + 4))
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

    v7 = *(v2 + 14) == 1;
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_1011DD394(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 400);
  *(a1 + 392) = v3;
  *(a1 + 400) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1011DD3C0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  PersonalityIdFromSlotId();
  v10 = sub_100007A6C(a2 + 128, &v41);
  if (a2 + 136 == v10)
  {
    v12 = *(a2 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v25 = HIBYTE(v43);
      if (v43 < 0)
      {
        v25 = v42;
      }

      v26 = &v41;
      if (v43 < 0)
      {
        v26 = v41;
      }

      if (v25)
      {
        v27 = v26;
      }

      else
      {
        v27 = "<invalid>";
      }

      *buf = 136315138;
      *&buf[4] = v27;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Not model found for sending disposition notification: %s", buf, 0xCu);
    }

    *a1 = 0;
    a1[288] = 0;
  }

  else
  {
    v11 = v10;
    *v39 = 0u;
    v40 = 0u;
    sub_1011DDA4C(v39, a2, a3);
    if (BYTE8(v40))
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v38 = 0;
      if (SBYTE7(v40) < 0)
      {
        sub_100005F2C(__dst, v39[0], v39[1]);
      }

      else
      {
        *__dst = *v39;
        v38 = v40;
      }

      __p[0] = 0;
      __p[1] = 0;
      v36 = 0;
      sub_100C18024(__p);
      v14 = *(a5 + 47);
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(a5 + 32);
      }

      if (v14)
      {
        v15 = *(a2 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Using client provided focus", buf, 2u);
        }

        sub_100C17FB8(buf, a5 + 24);
      }

      else
      {
        sub_100C17FB8(buf, a5);
      }

      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *buf;
      v36 = v45;
      v17 = *(v11 + 56);
      v16 = *(v11 + 64);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v17)
      {
        v34 = 0;
        *v32 = 0u;
        v33 = 0u;
        v18 = *(a2 + 88);
        v30 = *(a2 + 80);
        v31 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100A94AFC(&v30, buf);
        sub_100C184C4(v32);
        if (SHIBYTE(v45) < 0)
        {
          operator delete(*buf);
        }

        if (v31)
        {
          sub_100004A34(v31);
        }

        v29 = 0;
        Registry::getTimerService(buf, *(a2 + 80));
        v29 = (***buf)(*buf);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        v19 = *(a2 + 256);
        if (!v19)
        {
          goto LABEL_38;
        }

        v20 = a2 + 256;
        do
        {
          if (*(v19 + 32) >= a3)
          {
            v20 = v19;
          }

          v19 = *(v19 + 8 * (*(v19 + 32) < a3));
        }

        while (v19);
        if (v20 != a2 + 256 && *(v20 + 32) <= a3)
        {
          v21 = *(v20 + 40);
        }

        else
        {
LABEL_38:
          v21 = 0;
        }

        memset(v28, 0, sizeof(v28));
        sub_100C18BF4(v28, __p, a4, __dst, v32, &v29, v21 & 1);
        v22 = *(a5 + 71);
        if ((v22 & 0x80u) != 0)
        {
          v22 = *(a5 + 56);
        }

        if (v22)
        {
          v23 = *(a2 + 40);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Using client provided conversation ID", buf, 2u);
          }

          sub_1001696A4((&v28[11] + 8), (a5 + 48));
        }

        sub_1006A0A6C(buf, v28);
        *buf = off_101EC8DD8;
        if (SHIBYTE(v28[16]) < 0)
        {
          sub_100005F2C(&v46, *(&v28[15] + 1), *&v28[16]);
        }

        else
        {
          v46 = *(&v28[15] + 8);
          v47 = *(&v28[16] + 1);
        }

        v48 = v17;
        v49 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1011E68A8(a1, buf);
        a1[288] = 1;
        if (v49)
        {
          sub_100004A34(v49);
        }

        sub_100C18C58(buf);
        sub_100C18C58(v28);
        if (SBYTE7(v33) < 0)
        {
          operator delete(v32[0]);
        }
      }

      else
      {
        v24 = *(a2 + 40);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Invalid model when sending group message", buf, 2u);
        }

        *a1 = 0;
        a1[288] = 0;
      }

      if (v16)
      {
        sub_100004A34(v16);
      }

      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    else
    {
      v13 = *(a2 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid phone number when sending transaction", buf, 2u);
      }

      *a1 = 0;
      a1[288] = 0;
    }

    if (BYTE8(v40) == 1 && SBYTE7(v40) < 0)
    {
      operator delete(v39[0]);
    }
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(v41);
  }
}

void sub_1011DD934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, void *a63)
{
  sub_100C18630(&a76);
  sub_100C18C58(&a9);
  if (a52 < 0)
  {
    operator delete(__p);
  }

  if (v76)
  {
    sub_100004A34(v76);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a68 < 0)
  {
    operator delete(a63);
  }

  if (a73 == 1 && a72 < 0)
  {
    operator delete(a70);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  _Unwind_Resume(a1);
}

void sub_1011DDA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 232);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a2 + 232;
  do
  {
    if (*(v5 + 32) >= a3)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a3));
  }

  while (v5);
  if (v6 != a2 + 232 && *(v6 + 32) <= a3)
  {
    memset(buf, 0, sizeof(buf));
    v14 = 0;
    if (*(v6 + 135) < 0)
    {
      sub_100005F2C(buf, *(v6 + 112), *(v6 + 120));
    }

    else
    {
      *buf = *(v6 + 112);
      v14 = *(v6 + 128);
    }

    v8 = HIBYTE(v14);
    if (v14 < 0)
    {
      v8 = *&buf[8];
    }

    if (v8)
    {
      __p[0] = 0;
      __p[1] = 0;
      v12 = 0;
      sub_100C17E6C(__p, buf);
      if (SHIBYTE(v12) < 0)
      {
        sub_100005F2C(a1, __p[0], __p[1]);
        v10 = SHIBYTE(v12);
        *(a1 + 24) = 1;
        if (v10 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *a1 = *__p;
        *(a1 + 16) = v12;
        *(a1 + 24) = 1;
      }
    }

    else
    {
      v9 = *(a2 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Invalid phone number when sending transaction", __p, 2u);
      }

      *a1 = 0;
      *(a1 + 24) = 0;
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
LABEL_8:
    v7 = *(*(**(a2 + 48) + 16))(*(a2 + 48), a3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to retrieve phone number", buf, 2u);
    }

    *a1 = 0;
    *(a1 + 24) = 0;
  }
}

void sub_1011DDC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_1011DDC60(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  PersonalityIdFromSlotId();
  v10 = sub_100007A6C(a2 + 128, &v35);
  if (a2 + 136 == v10)
  {
    v12 = *(a2 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v19 = HIBYTE(v37);
      if (v37 < 0)
      {
        v19 = v36;
      }

      v20 = &v35;
      if (v37 < 0)
      {
        v20 = v35;
      }

      if (v19)
      {
        v21 = v20;
      }

      else
      {
        v21 = "<invalid>";
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v21;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Not model found for sending disposition notification: %s", &__p, 0xCu);
    }

    *a1 = 0;
    a1[288] = 0;
  }

  else
  {
    v11 = v10;
    *v33 = 0u;
    v34 = 0u;
    sub_1011DDA4C(v33, a2, a3);
    if (BYTE8(v34))
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v32 = 0;
      if (SBYTE7(v34) < 0)
      {
        sub_100005F2C(__dst, v33[0], v33[1]);
      }

      else
      {
        *__dst = *v33;
        v32 = v34;
      }

      v29[0] = 0;
      v29[1] = 0;
      v30 = 0;
      sub_100C161EC(v29, a4);
      v28 = 0;
      *v26 = 0u;
      v27 = 0u;
      v14 = *(a2 + 88);
      v24 = *(a2 + 80);
      v25 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100A94AFC(&v24, &__p);
      sub_100C184C4(v26);
      if (v39 < 0)
      {
        operator delete(__p);
      }

      if (v25)
      {
        sub_100004A34(v25);
      }

      v23 = 0;
      Registry::getTimerService(&__p, *(a2 + 80));
      v23 = (**__p)(__p);
      if (*(&__p + 1))
      {
        sub_100004A34(*(&__p + 1));
      }

      v15 = *(a2 + 256);
      if (!v15)
      {
        goto LABEL_26;
      }

      v16 = a2 + 256;
      do
      {
        if (*(v15 + 32) >= a3)
        {
          v16 = v15;
        }

        v15 = *(v15 + 8 * (*(v15 + 32) < a3));
      }

      while (v15);
      if (v16 != a2 + 256 && *(v16 + 32) <= a3)
      {
        v17 = *(v16 + 40);
      }

      else
      {
LABEL_26:
        v17 = 0;
      }

      memset(v22, 0, sizeof(v22));
      sub_100C161EC(&__p, a4);
      sub_100C18944(v22, __dst, &__p, a5, v26, &v23, v17 & 1);
      if (v39 < 0)
      {
        operator delete(__p);
      }

      sub_1006A0A6C(&__p, v22);
      *&__p = off_101EC8DB8;
      if (SHIBYTE(v22[16]) < 0)
      {
        sub_100005F2C(&v40, *(&v22[15] + 1), *&v22[16]);
      }

      else
      {
        v40 = *(&v22[15] + 8);
        v41 = *(&v22[16] + 1);
      }

      v42 = *(v11 + 56);
      v18 = *(v11 + 64);
      v43 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1011E6934(a1, &__p);
      a1[288] = 1;
      if (v43)
      {
        sub_100004A34(v43);
      }

      sub_100C189A8(&__p);
      sub_100C189A8(v22);
      if (SBYTE7(v27) < 0)
      {
        operator delete(v26[0]);
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(v29[0]);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    else
    {
      v13 = *(a2 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p) = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid phone number when sending transaction", &__p, 2u);
      }

      *a1 = 0;
      a1[288] = 0;
    }

    if (BYTE8(v34) == 1 && SBYTE7(v34) < 0)
    {
      operator delete(v33[0]);
    }
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }
}

void sub_1011DE098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  sub_100C18630(&a76);
  sub_100C189A8(&a9);
  if (a52 < 0)
  {
    operator delete(__p);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a66 < 0)
  {
    operator delete(a61);
  }

  if (a73 == 1 && a72 < 0)
  {
    operator delete(a68);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  _Unwind_Resume(a1);
}

void sub_1011DE1AC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *(a2 + 256);
  if (!v8)
  {
    goto LABEL_8;
  }

  v11 = a2 + 256;
  do
  {
    if (*(v8 + 32) >= a3)
    {
      v11 = v8;
    }

    v8 = *(v8 + 8 * (*(v8 + 32) < a3));
  }

  while (v8);
  if (v11 == a2 + 256 || *(v11 + 32) > a3)
  {
LABEL_8:
    v12 = *(*(**(a2 + 48) + 16))(*(a2 + 48), a3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Device cannot send 1-to-many message", __str, 2u);
    }

    *a1 = 0;
    a1[312] = 0;
    return;
  }

  v13 = (*(**(a2 + 48) + 16))(*(a2 + 48), a3);
  v74 = 0;
  v73 = 0u;
  memset(v72, 0, sizeof(v72));
  v44 = a4;
  if (*(v11 + 95) < 0)
  {
    sub_100005F2C(__str, *(v11 + 72), *(v11 + 80));
  }

  else
  {
    *__str = *(v11 + 72);
    *&__str[16] = *(v11 + 88);
  }

  v81 = 0;
  v82 = 0;
  v85 = 0;
  __p = 0;
  v84 = 0;
  v79 = 0;
  *&__str[24] = 0;
  v78 = 0;
  v80 = 0;
  sub_1011DDC60(v72, a2, a3, __str, a4);
  if (SHIBYTE(v85) < 0)
  {
    operator delete(__p);
  }

  if (v82 == 1)
  {
    *buf = &v81;
    sub_1000087B4(buf);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(*&__str[24]);
  }

  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((v74 & 1) == 0)
  {
    v15 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to determine model while sending one to many text", __str, 2u);
    }

    *a1 = 0;
    a1[312] = 0;
    goto LABEL_76;
  }

  v71 = 0u;
  memset(v70, 0, sizeof(v70));
  memset(v69, 0, sizeof(v69));
  sub_1011DEA54(v69, v72);
  memset(__str, 0, sizeof(__str));
  sub_1011DEAEC(__str, a2);
  if (__str[24] == 1)
  {
    v14 = v13;
    std::string::operator=((v69 + 8), __str);
  }

  else
  {
    v14 = v13;
    v16 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", buf, 2u);
    }
  }

  if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  *v67 = 0u;
  v68 = 0u;
  sub_1011DDA4C(v67, a2, a3);
  if ((BYTE8(v68) & 1) == 0)
  {
    v40 = *v14;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Invalid phone number when sending transaction", __str, 2u);
    }

    *a1 = 0;
    a1[312] = 0;
    goto LABEL_70;
  }

  v43 = v14;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v17 = *a5;
  v18 = a5[1];
  if (*a5 != v18)
  {
    do
    {
      sub_100C161EC(buf, v17);
      v19 = v65;
      if (v65 >= v66)
      {
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v64) >> 3) + 1;
        if (v21 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1000CE3D4();
        }

        if (0x5555555555555556 * ((v66 - v64) >> 3) > v21)
        {
          v21 = 0x5555555555555556 * ((v66 - v64) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v66 - v64) >> 3) >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          sub_100005348(&v64, v22);
        }

        v23 = 8 * ((v65 - v64) >> 3);
        v24 = *buf;
        *(v23 + 16) = v46;
        *v23 = v24;
        *&v46 = 0;
        memset(buf, 0, sizeof(buf));
        v26 = v64;
        v25 = v65;
        *__str = &v64;
        *&__str[8] = &v75;
        *&__str[24] = 0;
        *&__str[16] = &v76;
        v27 = v64;
        v28 = (v23 + v64 - v65);
        v76 = v28;
        v75 = v28;
        v29 = v28;
        if (v64 == v65)
        {
          __str[24] = 1;
        }

        else
        {
          do
          {
            v30 = *v27;
            *(v29 + 2) = v27[2];
            *v29 = v30;
            v29 += 24;
            v27[1] = 0;
            v27[2] = 0;
            *v27 = 0;
            v27 += 3;
          }

          while (v27 != v25);
          v76 = v29;
          __str[24] = 1;
          do
          {
            if (*(v26 + 23) < 0)
            {
              operator delete(*v26);
            }

            v26 += 3;
          }

          while (v26 != v25);
        }

        v31 = (v23 + 24);
        sub_10071F564(__str);
        v32 = v64;
        v64 = v28;
        v65 = v31;
        v66 = 0;
        if (v32)
        {
          operator delete(v32);
        }

        v65 = v31;
        if (SBYTE7(v46) < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        v20 = *buf;
        v65[2] = v46;
        *v19 = v20;
        v65 = v19 + 3;
      }

      v17 += 112;
    }

    while (v17 != v18);
  }

  v33 = *(v11 + 56);
  if (v33)
  {
    v34 = v64;
    v35 = v65;
    if (v64 != v65 && 0xAAAAAAAAAAAAAAABLL * ((v65 - v64) >> 3) <= v33)
    {
      v42 = *(v11 + 64);
      v63 = 0;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      *buf = 0u;
      v46 = 0u;
      if ((BYTE8(v68) & 1) == 0)
      {
        sub_1000D1644();
      }

      sub_100C161EC(__str, v11 + 72);
      sub_100C18F38(buf, v67, __str, &v64, v44, v70, &v70[2] + 1, v42 == 2);
      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      sub_1011E69C0(__str, buf);
      v86 = v71;
      if (*(&v71 + 1))
      {
        atomic_fetch_add_explicit((*(&v71 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      sub_1011E6A90(a1, __str);
      sub_1011DEC30(__str);
      sub_100C18FA8(buf);
      goto LABEL_69;
    }

    v36 = *v43;
    if (os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
    {
      *__str = 134217984;
      *&__str[4] = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 3);
      v37 = "Invalid number of recepients: %zu";
      v38 = v36;
      v39 = 12;
LABEL_87:
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, v37, __str, v39);
    }
  }

  else
  {
    v41 = *v43;
    if (os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      v37 = "Invalid OneToMany max size";
      v38 = v41;
      v39 = 2;
      goto LABEL_87;
    }
  }

  *a1 = 0;
  a1[312] = 0;
LABEL_69:
  *__str = &v64;
  sub_10005AAF8(__str);
LABEL_70:
  if (BYTE8(v68) == 1 && SBYTE7(v68) < 0)
  {
    operator delete(v67[0]);
  }

  if (*(&v71 + 1))
  {
    sub_100004A34(*(&v71 + 1));
  }

  sub_100C189A8(v69);
LABEL_76:
  if (v74 == 1)
  {
    if (*(&v73 + 1))
    {
      sub_100004A34(*(&v73 + 1));
    }

    sub_100C189A8(v72);
  }
}

void sub_1011DE968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, char a57, int a58, __int16 a59)
{
  sub_1011DEC30(&STACK[0x3D0]);
  sub_100C18FA8(&a11);
  STACK[0x3D0] = &a48;
  sub_10005AAF8(&STACK[0x3D0]);
  if (a57 == 1 && a56 < 0)
  {
    operator delete(__p);
  }

  sub_1006A0C08(&a59);
  sub_10067AAC8(&STACK[0x290]);
  _Unwind_Resume(a1);
}

uint64_t sub_1011DEA54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006A0A6C(a1, a2);
  *v4 = off_101EC8DB8;
  v5 = v4 + 31;
  if (*(a2 + 271) < 0)
  {
    sub_100005F2C(v5, *(a2 + 248), *(a2 + 256));
  }

  else
  {
    v6 = *(a2 + 248);
    v5[2] = *(a2 + 264);
    *v5 = v6;
  }

  v7 = *(a2 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1011DEAEC(uint64_t a1, uint64_t a2)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  PersonalityIdFromSlotId();
  v4 = sub_100007A6C(a2 + 176, v10);
  if (a2 + 184 != v4)
  {
    v5 = *(v4 + 152);
    v6 = *(v4 + 160);
    while (v5 != v6)
    {
      __p[0] = 0;
      __p[1] = 0;
      v9 = 0;
      sub_100C17E6C(__p, v5);
      if (sub_100C17440(__p))
      {
        if (SHIBYTE(v9) < 0)
        {
          sub_100005F2C(a1, __p[0], __p[1]);
          v7 = SHIBYTE(v9);
          *(a1 + 24) = 1;
          if (v7 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *a1 = *__p;
          *(a1 + 16) = v9;
          *(a1 + 24) = 1;
        }

        goto LABEL_9;
      }

      if (SHIBYTE(v9) < 0)
      {
        operator delete(__p[0]);
      }

      v5 += 24;
    }
  }

  *a1 = 0;
  *(a1 + 24) = 0;
LABEL_9:
  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_1011DEBF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_1011DEC30(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return sub_100C18FA8(a1);
}

void sub_1011DEC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  PersonalityIdFromSlotId();
  if (a1 + 136 != sub_100007A6C(a1 + 128, &__p))
  {
    v7 = *sub_100005C2C(a1 + 128, buf, &__p);
    if (v7)
    {
      sub_100686430(*(v7 + 56), a3, a4);
    }

    sub_1000A58E4("map::at:  key not found");
  }

  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = HIBYTE(v15);
    if (v15 < 0)
    {
      v9 = v14;
    }

    p_p = &__p;
    if (v15 < 0)
    {
      p_p = __p;
    }

    v11 = v9 == 0;
    v12 = *(a1 + 144);
    if (v11)
    {
      p_p = "<invalid>";
    }

    *buf = 136315394;
    v17 = p_p;
    v18 = 2048;
    v19 = v12;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Not handling geo push: missing personality %s, map-size: %lu", buf, 0x16u);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }
}

void sub_1011DEDF8(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 128);
  v5 = sub_100007A6C(a1 + 128, a2);
  v6 = SlotIdFromPersonalityId();
  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), v6);
  if ((a1 + 136) != v5)
  {
    if (sub_100678354(v5[7]) == v6)
    {
      goto LABEL_67;
    }

    v8 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a2 + 23);
      v10 = (v9 & 0x80u) != 0;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(a2 + 8);
      }

      if (v10)
      {
        v11 = *a2;
      }

      else
      {
        v11 = a2;
      }

      if (v9)
      {
        v12 = v11;
      }

      else
      {
        v12 = "<invalid>";
      }

      sub_100678354(v5[7]);
      *buf = 136315394;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Erasing messaging model for personality: %s at slot: %s", buf, 0x16u);
    }

    sub_100D7A2B0(v4, v5);
    sub_1000D57F4((v5 + 4));
    operator delete(v5);
  }

  v13 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a2 + 23);
    v15 = (v14 & 0x80u) != 0;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a2 + 8);
    }

    if (v15)
    {
      v16 = *a2;
    }

    else
    {
      v16 = a2;
    }

    if (v14)
    {
      v17 = v16;
    }

    else
    {
      v17 = "<invalid>";
    }

    *buf = 136315138;
    *&buf[4] = v17;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Creating messaging model for personality: %s", buf, 0xCu);
  }

  v18 = *(a1 + 16);
  if (!v18 || (v19 = *(a1 + 8), (v20 = std::__shared_weak_count::lock(v18)) == 0))
  {
    sub_100013CC4();
  }

  v21 = v20;
  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v20);
  v46 = 0;
  v44 = 0u;
  *v45 = 0u;
  v43 = 0u;
  memset(buf, 0, sizeof(buf));
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(buf, *a2, *(a2 + 8));
  }

  else
  {
    *buf = *a2;
    *&buf[16] = *(a2 + 16);
  }

  v22 = *(a1 + 368);
  *&buf[24] = *(a1 + 360);
  *&v43 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v23 = *(a1 + 120);
  *(&v43 + 1) = *(a1 + 112);
  *&v44 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  *(&v44 + 1) = 0;
  v45[0] = 0;
  v24 = std::__shared_weak_count::lock(v21);
  if (v24)
  {
    v25 = v24;
    v26 = v19 + 56;
    atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v27 = v45[0];
    if (!v19)
    {
      v26 = 0;
    }

    *(&v44 + 1) = v26;
    v45[0] = v25;
    if (v27)
    {
      std::__shared_weak_count::__release_weak(v27);
    }

    sub_100004A34(v25);
  }

  else
  {
    v28 = v45[0];
    *(&v44 + 1) = 0;
    v45[0] = 0;
    if (v28)
    {
      std::__shared_weak_count::__release_weak(v28);
    }
  }

  v29 = *(a1 + 400);
  v45[1] = *(a1 + 392);
  v46 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = *(a1 + 96);
  v31 = *(a1 + 24);
  object = v31;
  if (v31)
  {
    dispatch_retain(v31);
  }

  v32 = *(a1 + 88);
  v37 = *(a1 + 80);
  v38 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v30 + 16))(&v40, v30, &object, &v37, buf);
  v41 = 0;
  v33 = *sub_100005C2C(v4, &v41, a2);
  if (!v33)
  {
    operator new();
  }

  v34 = v40;
  v40 = 0uLL;
  v35 = *(v33 + 64);
  *(v33 + 56) = v34;
  if (v35)
  {
    sub_100004A34(v35);
    if (*(&v40 + 1))
    {
      sub_100004A34(*(&v40 + 1));
    }
  }

  if (v38)
  {
    sub_100004A34(v38);
  }

  if (object)
  {
    dispatch_release(object);
  }

  sub_1011DD004(a1, v6);
  if (v46)
  {
    std::__shared_weak_count::__release_weak(v46);
  }

  if (v45[0])
  {
    std::__shared_weak_count::__release_weak(v45[0]);
  }

  if (v44)
  {
    sub_100004A34(v44);
  }

  if (v43)
  {
    sub_100004A34(v43);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  std::__shared_weak_count::__release_weak(v21);
LABEL_67:
  v36 = *sub_100005C2C(v4, buf, a2);
  if (!v36)
  {
    sub_1000A58E4("map::at:  key not found");
  }

  sub_10067835C(*(v36 + 56));
}

void sub_1011DF2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t object, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_1000D57A8(&a15);
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  sub_1011E6B74(&a19);
  std::__shared_weak_count::__release_weak(v19);
  _Unwind_Resume(a1);
}

void sub_1011DF334(uint64_t a1, void **a2)
{
  v3 = sub_100007A6C(a1 + 128, a2);
  if (a1 + 136 != v3)
  {
    v4 = *(v3 + 56);

    sub_10067892C(v4);
  }
}

void sub_1011DF388(void *a1, uint64_t a2, uint64_t a3)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  PersonalityIdFromSlotId();
  v6 = sub_100007A6C(a2 + 128, &__p);
  v7 = (*(**(a2 + 48) + 16))(*(a2 + 48), a3);
  if (a2 + 136 == v6)
  {
    v9 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v10 = HIBYTE(v15);
      if (v15 < 0)
      {
        v10 = v14;
      }

      p_p = &__p;
      if (v15 < 0)
      {
        p_p = __p;
      }

      if (v10)
      {
        v12 = p_p;
      }

      else
      {
        v12 = "<invalid>";
      }

      *buf = 136315138;
      v17 = v12;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to retrieve message: Couldn't find personality in messaging model: %s", buf, 0xCu);
    }

    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    v8 = *(v6 + 64);
    *a1 = *(v6 + 56);
    a1[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }
}

void sub_1011DF4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011DF518(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  if (sub_1011DD2D8(a1))
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    *v43 = 0u;
    v44 = 0u;
    sub_1011DDC60(v43, a1, a2, a3, a4);
    if ((v61 & 1) == 0)
    {
      v15 = *(*(*a1[6] + 16))(a1[6], a2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v25 = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to determine model while sending text", v25, 2u);
      }

      v13 = &_mh_execute_header;
      v14 = 3;
      goto LABEL_36;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *v25 = 0u;
    v26 = 0u;
    sub_1011DEA54(v25, v43);
    *__p = 0u;
    *v20 = 0u;
    sub_1011DEAEC(__p, a1);
    if (v20[8] == 1)
    {
      std::string::operator=(&v25[8], __p);
    }

    else
    {
      v16 = *(*(*a1[6] + 16))(a1[6], a2);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", buf, 2u);
      }
    }

    if (v20[8] == 1 && (v20[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    if (!sub_10067AB0C(v42, a3))
    {
      sub_100697EA4(v42, v25, a5, a6);
    }

    v17 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Switching to group-text", __p, 2u);
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(__p, *a3, *(a3 + 8));
      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(&v20[8], *a3, *(a3 + 8));
        goto LABEL_24;
      }
    }

    else
    {
      *__p = *a3;
      *v20 = *(a3 + 16);
    }

    *&v20[8] = *a3;
    v21 = *(a3 + 16);
LABEL_24:
    if (*(a3 + 111) < 0)
    {
      sub_100005F2C(v22, *(a3 + 88), *(a3 + 96));
    }

    else
    {
      *v22 = *(a3 + 88);
      v23 = *(a3 + 104);
    }

    v14 = ((*a1)[25])(a1, a2, __p, a4, a5, a6);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(*&v20[8]);
    }

    if ((v20[7] & 0x80000000) != 0)
    {
      operator delete(__p[0]);
    }

    if (*(&v42 + 1))
    {
      sub_100004A34(*(&v42 + 1));
    }

    sub_100C189A8(v25);
    v13 = v14 & 0xFF00000000;
    v14 = v14;
LABEL_36:
    if (v61 == 1)
    {
      if (*(&v60 + 1))
      {
        sub_100004A34(*(&v60 + 1));
      }

      sub_100C189A8(v43);
    }

    return v13 | v14;
  }

  v12 = *(*(*a1[6] + 16))(a1[6], a2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *v43 = 0;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Device not IMS registered", v43, 2u);
  }

  v13 = &_mh_execute_header;
  v14 = 1;
  return v13 | v14;
}

void sub_1011DF970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1006A0C08(&a24);
  sub_10067AAC8(&a60);
  _Unwind_Resume(a1);
}

uint64_t sub_1011DF9FC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  if (sub_1011DD2D8(a1))
  {
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    *v44 = 0u;
    v45 = 0u;
    sub_1011DDC60(v44, a1, a2, a3, a4);
    if (v62)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      *v26 = 0u;
      v27 = 0u;
      sub_1011DEA54(v26, v44);
      *__p = 0u;
      *v20 = 0u;
      sub_1011DEAEC(__p, a1);
      if (LOBYTE(v20[1]) == 1)
      {
        std::string::operator=(&v26[8], __p);
      }

      else
      {
        v16 = *(*(*a1[6] + 16))(a1[6], a2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", buf, 2u);
        }
      }

      if (LOBYTE(v20[1]) == 1 && SHIBYTE(v20[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (!sub_10067AB0C(v43, a3))
      {
        sub_100698C40(v43, v26, a5, a6);
      }

      v17 = *(*(*a1[6] + 16))(a1[6], a2);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Switching to group-file-transfer", __p, 2u);
      }

      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(__p, *a3, *(a3 + 8));
      }

      else
      {
        *__p = *a3;
        v20[0] = *(a3 + 16);
      }

      v20[1] = 0;
      v21 = 0;
      v22 = 0;
      if (*(a3 + 111) < 0)
      {
        sub_100005F2C(v23, *(a3 + 88), *(a3 + 96));
      }

      else
      {
        *v23 = *(a3 + 88);
        v24 = *(a3 + 104);
      }

      v14 = ((*a1)[28])(a1, a2, __p, a4, a5, a6);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }

      if (SHIBYTE(v22) < 0)
      {
        operator delete(v20[1]);
      }

      if (SHIBYTE(v20[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (*(&v43 + 1))
      {
        sub_100004A34(*(&v43 + 1));
      }

      sub_100C189A8(v26);
      v13 = v14 & 0xFF00000000;
      v14 = v14;
    }

    else
    {
      v15 = *(*(*a1[6] + 16))(a1[6], a2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v26 = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid configuration while sending file transfer information", v26, 2u);
      }

      v13 = &_mh_execute_header;
      v14 = 3;
    }

    if (v62 == 1)
    {
      if (*(&v61 + 1))
      {
        sub_100004A34(*(&v61 + 1));
      }

      sub_100C189A8(v44);
    }
  }

  else
  {
    v12 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v44 = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Device not IMS registered", v44, 2u);
    }

    v13 = &_mh_execute_header;
    v14 = 1;
  }

  return v13 | v14;
}

void sub_1011DFE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1006A0C08(&a27);
  sub_10067AAC8(&a63);
  _Unwind_Resume(a1);
}

uint64_t sub_1011DFEA8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  if (sub_1011DD2D8(a1))
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    *v46 = 0u;
    v47 = 0u;
    sub_1011DDC60(v46, a1, a2, a3, a4);
    if (v64)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      *v28 = 0u;
      v29 = 0u;
      sub_1011DEA54(v28, v46);
      *__p = 0u;
      *v22 = 0u;
      sub_1011DEAEC(__p, a1);
      if (LOBYTE(v22[1]) == 1)
      {
        std::string::operator=(&v28[8], __p);
      }

      else
      {
        v18 = *(*(*a1[6] + 16))(a1[6], a2);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", buf, 2u);
        }
      }

      if (LOBYTE(v22[1]) == 1 && SHIBYTE(v22[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (!sub_10067AB0C(v45, a3))
      {
        sub_100698B68(v45, v28, a5, a6, a7);
      }

      v19 = *(*(*a1[6] + 16))(a1[6], a2);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Switching to group-file-transfer", __p, 2u);
      }

      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(__p, *a3, *(a3 + 8));
      }

      else
      {
        *__p = *a3;
        v22[0] = *(a3 + 16);
      }

      v22[1] = 0;
      v23 = 0;
      v24 = 0;
      if (*(a3 + 111) < 0)
      {
        sub_100005F2C(v25, *(a3 + 88), *(a3 + 96));
      }

      else
      {
        *v25 = *(a3 + 88);
        v26 = *(a3 + 104);
      }

      v16 = ((*a1)[27])(a1, a2, __p, a4, a5, a6, a7);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }

      if (SHIBYTE(v24) < 0)
      {
        operator delete(v22[1]);
      }

      if (SHIBYTE(v22[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (*(&v45 + 1))
      {
        sub_100004A34(*(&v45 + 1));
      }

      sub_100C189A8(v28);
      v15 = v16 & 0xFF00000000;
      v16 = v16;
    }

    else
    {
      v17 = *(*(*a1[6] + 16))(a1[6], a2);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v28 = 0;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid configuration while sending geolocation", v28, 2u);
      }

      v15 = &_mh_execute_header;
      v16 = 3;
    }

    if (v64 == 1)
    {
      if (*(&v63 + 1))
      {
        sub_100004A34(*(&v63 + 1));
      }

      sub_100C189A8(v46);
    }
  }

  else
  {
    v14 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v46 = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Device not IMS registered", v46, 2u);
    }

    v15 = &_mh_execute_header;
    v16 = 1;
  }

  return v15 | v16;
}

void sub_1011E02E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1006A0C08(&a27);
  sub_10067AAC8(&a63);
  _Unwind_Resume(a1);
}

unint64_t sub_1011E0368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_1011DD2D8(a1))
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
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
    *buf = 0u;
    v36 = 0u;
    sub_1011DDC60(buf, a1, a2, a3, a4);
    if (v53)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      *v17 = 0u;
      v18 = 0u;
      sub_1011DEA54(v17, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&v17[8], __str);
      }

      else
      {
        v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v15, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      sub_10069956C(v34, v17, a5);
    }

    v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid configuration while sending response for suggested reply", v17, 2u);
    }

    v11 = 3;
    if (v53 == 1)
    {
      if (*(&v52 + 1))
      {
        sub_100004A34(*(&v52 + 1));
      }

      sub_100C189A8(buf);
    }
  }

  else
  {
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v11 = 1;
  }

  return &_mh_execute_header | v11;
}

void sub_1011E0638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1006A0C08(&a19);
  sub_10067AAC8(&a57);
  _Unwind_Resume(a1);
}

unint64_t sub_1011E068C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_1011DD2D8(a1))
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
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
    *buf = 0u;
    v36 = 0u;
    sub_1011DDC60(buf, a1, a2, a3, a4);
    if (v53)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      *v17 = 0u;
      v18 = 0u;
      sub_1011DEA54(v17, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&v17[8], __str);
      }

      else
      {
        v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v15, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      sub_100699700(v34, v17, a5);
    }

    v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid configuration while sending response for suggested action", v17, 2u);
    }

    v11 = 3;
    if (v53 == 1)
    {
      if (*(&v52 + 1))
      {
        sub_100004A34(*(&v52 + 1));
      }

      sub_100C189A8(buf);
    }
  }

  else
  {
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v11 = 1;
  }

  return &_mh_execute_header | v11;
}

void sub_1011E095C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1006A0C08(&a19);
  sub_10067AAC8(&a57);
  _Unwind_Resume(a1);
}

unint64_t sub_1011E09B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1011DD2D8(a1))
  {
    v63 = 0u;
    v64 = 0u;
    memset(v62, 0, sizeof(v62));
    v60 = 0u;
    v61 = 0u;
    __dst = 0u;
    if (*(a3 + 31) < 0)
    {
      sub_100005F2C(&__dst, *(a3 + 8), *(a3 + 16));
    }

    else
    {
      __dst = *(a3 + 8);
      *&v60 = *(a3 + 24);
    }

    *(&v60 + 1) = 0;
    v61 = 0uLL;
    LOBYTE(v62[0]) = *a3;
    BYTE8(v62[0]) = 0;
    LOBYTE(v63) = 0;
    v64 = 0uLL;
    *(&v63 + 1) = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    sub_100A972E8(&v53);
    BYTE8(v54) = 0;
    BYTE8(v55) = 0;
    LOBYTE(v56) = 0;
    BYTE8(v58) = 0;
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    *buf = 0u;
    v35 = 0u;
    sub_1011DDC60(buf, a1, a2, &__dst, &v53);
    if (v52)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
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
      *v16 = 0u;
      v17 = 0u;
      sub_1011DEA54(v16, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&v16[8], __str);
      }

      else
      {
        v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v14, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      v10 = sub_10069D6F8(v33, v16, a3, a4);
      if (*(&v33 + 1))
      {
        sub_100004A34(*(&v33 + 1));
      }

      sub_100C189A8(v16);
      v9 = v10 & 0xFF00000000;
      v10 = v10;
    }

    else
    {
      v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Invalid configuration while reporting spam", v16, 2u);
      }

      v9 = &_mh_execute_header;
      v10 = 3;
    }

    if (v52 == 1)
    {
      if (*(&v51 + 1))
      {
        sub_100004A34(*(&v51 + 1));
      }

      sub_100C189A8(buf);
    }

    if (BYTE8(v58) == 1 && SBYTE7(v57) < 0)
    {
      operator delete(v56);
    }

    if (SBYTE7(v54) < 0)
    {
      operator delete(v53);
    }

    if (SHIBYTE(v64) < 0)
    {
      operator delete(*(&v63 + 1));
    }

    if (v63 == 1)
    {
      *buf = v62 + 8;
      sub_1000087B4(buf);
    }

    if (SHIBYTE(v61) < 0)
    {
      operator delete(*(&v60 + 1));
    }

    if (SBYTE7(v60) < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v9 = &_mh_execute_header;
    v10 = 1;
  }

  return v9 | v10;
}

void sub_1011E0D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1006A0C08(&a19);
  sub_10067AAC8(&a57);
  sub_10067A5EC(v57 - 256);
  sub_10067AA50(v57 - 160);
  _Unwind_Resume(a1);
}

void sub_1011E0DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 360);
  if (!v6)
  {
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v13 = 0;
    v10 = "Dropping spam report response. Notification sender has disappeared";
    v11 = &v13;
    goto LABEL_13;
  }

  if (*(a3 + 48) == 1)
  {
    (*(*v6 + 120))(v6, a2, a3, a4);
  }

  v7 = *(a1 + 376);
  if (!v7)
  {
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = 0;
    v10 = "Dropping spam report response. Notification router has disappeared";
    v11 = &v12;
LABEL_13:
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    return;
  }

  v8 = *(*v7 + 520);

  v8();
}

void sub_1011E0FA4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = 0;
  v15 = 0;
  sub_1011DF388(&v14, a1, a2);
  v8 = v14;
  if (v14)
  {
    bzero(buf, 0x468uLL);
    sub_10069D1E8(v8, a3, buf);
    if (v38)
    {
      *(a4 + 1120) = 0;
      *a4 = *buf;
      *(a4 + 8) = *v18;
      *(a4 + 24) = v19;
      v18[0] = 0;
      v18[1] = 0;
      *(a4 + 32) = *v20;
      *(a4 + 48) = v21;
      v19 = 0;
      v20[0] = 0;
      v20[1] = 0;
      v21 = 0;
      *(a4 + 56) = v22;
      *(a4 + 64) = 0;
      *(a4 + 88) = 0;
      if (v25 == 1)
      {
        *(a4 + 64) = v23;
        *(a4 + 80) = v24;
        v24 = 0;
        v23 = 0uLL;
        *(a4 + 88) = 1;
      }

      *(a4 + 96) = *v26;
      v9 = v29;
      *(a4 + 112) = v27;
      v26[0] = 0;
      v26[1] = 0;
      v10 = v28;
      v27 = 0;
      *&v28 = 0;
      *(a4 + 120) = v10;
      *(a4 + 136) = v9;
      *(&v28 + 1) = 0;
      v29 = 0;
      *(a4 + 160) = v31;
      *(a4 + 144) = v30;
      *(a4 + 168) = 0;
      *(a4 + 208) = 0;
      if (v35 == 1)
      {
        *(a4 + 168) = __p;
        *(a4 + 184) = v33;
        v33 = 0;
        __p = 0uLL;
        *(a4 + 192) = v34;
        *(a4 + 208) = 1;
      }

      *(a4 + 216) = v36;
      sub_1006AB798(a4 + 232, v37);
      *(a4 + 1120) = 1;
    }

    else
    {
      v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a3 + 23) >= 0)
        {
          v13 = a3;
        }

        else
        {
          v13 = *a3;
        }

        *v16 = 136446210;
        *&v16[4] = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Message has disappeared: %{public}s", v16, 0xCu);
      }

      *a4 = 0;
      *(a4 + 1120) = 0;
    }

    if (v38 == 1)
    {
      sub_1006A9CB8(v37);
      if (v35 == 1 && SHIBYTE(v33) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(v28);
      }

      if (SHIBYTE(v27) < 0)
      {
        operator delete(v26[0]);
      }

      if (v25 == 1)
      {
        *v16 = &v23;
        sub_1000087B4(v16);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18[0]);
      }
    }
  }

  else
  {
    v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to determine model while retrieving message", buf, 2u);
    }
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  if (!v8)
  {
    *a4 = 0;
    *(a4 + 1120) = 0;
  }
}

void sub_1011E1310(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1006FA698(va);
  if (a3)
  {
    sub_100004A34(a3);
  }

  _Unwind_Resume(a1);
}

void sub_1011E1344(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v9 = 0;
  v10 = 0;
  sub_1011DF388(&v9, a1, a2);
  v6 = v9;
  if (v9)
  {
    sub_10069D674(v9, a3);
  }

  else
  {
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to determine model while retrieving all incoming message IDs", v8, 2u);
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (!v6)
  {
    *a3 = 0;
    a3[24] = 0;
  }
}

void sub_1011E142C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011E1448(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = 0;
  v13 = 0;
  sub_1011DF388(&v12, a1, a2);
  if (v12)
  {
    v6 = sub_10069D6D8(v12, a3);
    v7 = v6 & 0xFF00000000;
    v8 = v6;
  }

  else
  {
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to determine model while acknowledging incoming messages", v11, 2u);
    }

    v7 = &_mh_execute_header;
    v8 = 5;
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  return v8 | v7;
}

void sub_1011E1534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1011E1550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_1011DD2D8(a1))
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
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
    *buf = 0u;
    v36 = 0u;
    sub_1011DDC60(buf, a1, a2, a3, a4);
    if (v53)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      *v17 = 0u;
      v18 = 0u;
      sub_1011DEA54(v17, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&v17[8], __str);
      }

      else
      {
        v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v15, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      sub_1006993D8(v34, v17, a5);
    }

    v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to determine model while sending composing indicator", v17, 2u);
    }

    v11 = 3;
    if (v53 == 1)
    {
      if (*(&v52 + 1))
      {
        sub_100004A34(*(&v52 + 1));
      }

      sub_100C189A8(buf);
    }
  }

  else
  {
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v11 = 1;
  }

  return &_mh_execute_header | v11;
}

void sub_1011E1830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1006A0C08(&a19);
  sub_10067AAC8(&a57);
  _Unwind_Resume(a1);
}

uint64_t sub_1011E1884(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  if (sub_1011DD2D8(a1))
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *v41 = 0u;
    v42 = 0u;
    sub_1011DDC60(v41, a1, a2, a3, a4);
    if (v59)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      *v23 = 0u;
      v24 = 0u;
      sub_1011DEA54(v23, v41);
      *__p = 0u;
      *v19 = 0u;
      sub_1011DEAEC(__p, a1);
      if (v19[8] == 1)
      {
        std::string::operator=(&v23[8], __p);
      }

      else
      {
        v16 = *(*(*a1[6] + 16))(a1[6], a2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", buf, 2u);
        }
      }

      if (v19[8] == 1 && (v19[7] & 0x80000000) != 0)
      {
        operator delete(__p[0]);
      }

      if (!sub_10067AB0C(v40, a3))
      {
        sub_100697FE4(v40, v23, a5);
      }

      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(__p, *a3, *(a3 + 8));
      }

      else
      {
        *__p = *a3;
        *v19 = *(a3 + 16);
      }

      v21 = 0u;
      *v20 = 0u;
      *&v19[8] = 0u;
      v14 = ((*a1)[26])(a1, a2, __p, a3, a4, a5, a6);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[1]);
      }

      if (SHIBYTE(v20[0]) < 0)
      {
        operator delete(*&v19[8]);
      }

      if ((v19[7] & 0x80000000) != 0)
      {
        operator delete(__p[0]);
      }

      if (*(&v40 + 1))
      {
        sub_100004A34(*(&v40 + 1));
      }

      sub_100C189A8(v23);
      v13 = v14 & 0xFF00000000;
      v14 = v14;
    }

    else
    {
      v15 = *(*(*a1[6] + 16))(a1[6], a2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid configuration while sending disposition notification", v23, 2u);
      }

      v13 = &_mh_execute_header;
      v14 = 3;
    }

    if (v59 == 1)
    {
      if (*(&v58 + 1))
      {
        sub_100004A34(*(&v58 + 1));
      }

      sub_100C189A8(v41);
    }
  }

  else
  {
    v12 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v41 = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Device not IMS registered", v41, 2u);
    }

    v13 = &_mh_execute_header;
    v14 = 1;
  }

  return v13 | v14;
}

void sub_1011E1C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  sub_1006A0C08(&a24);
  sub_10067AAC8(&a60);
  _Unwind_Resume(a1);
}

uint64_t sub_1011E1C8C(uint64_t a1, uint64_t a2)
{
  if (sub_1011DD2D8(a1))
  {
    return 0x100000004;
  }

  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Device not IMS registered", v6, 2u);
  }

  return 0x100000001;
}

unint64_t sub_1011E1D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1011DD2D8(a1))
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
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
    *buf = 0u;
    v34 = 0u;
    sub_1011DDC60(buf, a1, a2, a3, a4);
    if (v51)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      *v15 = 0u;
      v16 = 0u;
      sub_1011DEA54(v15, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&v15[8], __str);
      }

      else
      {
        v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v13, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      sub_100699894(v32, v15);
    }

    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Invalid configuration while sending device action", v15, 2u);
    }

    v9 = 3;
    if (v51 == 1)
    {
      if (*(&v50 + 1))
      {
        sub_100004A34(*(&v50 + 1));
      }

      sub_100C189A8(buf);
    }
  }

  else
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v9 = 1;
  }

  return &_mh_execute_header | v9;
}

void sub_1011E200C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1006A0C08(&a19);
  sub_10067AAC8(&a57);
  _Unwind_Resume(a1);
}

unint64_t sub_1011E2060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1011DD2D8(a1))
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
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
    *buf = 0u;
    v34 = 0u;
    sub_1011DDC60(buf, a1, a2, a3, a4);
    if (v51)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      *v15 = 0u;
      v16 = 0u;
      sub_1011DEA54(v15, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&v15[8], __str);
      }

      else
      {
        v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v13, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      sub_100699A28(v32, v15);
    }

    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Invalid configuration while sending revoke", v15, 2u);
    }

    v9 = 3;
    if (v51 == 1)
    {
      if (*(&v50 + 1))
      {
        sub_100004A34(*(&v50 + 1));
      }

      sub_100C189A8(buf);
    }
  }

  else
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v9 = 1;
  }

  return &_mh_execute_header | v9;
}

void sub_1011E232C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1006A0C08(&a19);
  sub_10067AAC8(&a57);
  _Unwind_Resume(a1);
}

uint64_t sub_1011E2380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_1011DD2D8(a1))
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    *buf = 0u;
    v37 = 0u;
    sub_1011DD3C0(buf, a1, a2, a4, a3);
    if (v54)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      *v18 = 0u;
      v19 = 0u;
      sub_1011E26B4(v18, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&v18[8], __str);
      }

      else
      {
        v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v16, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      v12 = sub_10069B3F0(v35, v18, a5);
      if (*(&v35 + 1))
      {
        sub_100004A34(*(&v35 + 1));
      }

      sub_100C18C58(v18);
      v11 = v12 & 0xFF00000000;
      v12 = v12;
    }

    else
    {
      v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v18 = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to determine model while sending composing indicator", v18, 2u);
      }

      v11 = &_mh_execute_header;
      v12 = 3;
    }

    if (v54 == 1)
    {
      if (*(&v53 + 1))
      {
        sub_100004A34(*(&v53 + 1));
      }

      sub_100C18C58(buf);
    }
  }

  else
  {
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v11 = &_mh_execute_header;
    v12 = 1;
  }

  return v11 | v12;
}

void sub_1011E2660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1006A09AC(&a19);
  sub_10067A63C(&a57);
  _Unwind_Resume(a1);
}