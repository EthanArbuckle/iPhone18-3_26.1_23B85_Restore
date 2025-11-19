uint64_t sub_2AAD24(uint64_t a1)
{
  v2 = a1 + 584;
  v3 = (*(*(a1 + 584) + 16))(a1 + 584);
  v4 = *(a1 + 688);
  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  return v4;
}

void sub_2AADA8(uint64_t a1)
{
  v2 = a1 + 584;
  v3 = (*(*(a1 + 584) + 16))(a1 + 584);
  *(a1 + 688) = 0;
  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  sub_24D354(a1);
}

uint64_t sub_2AAE3C(os_unfair_lock_s *a1)
{
  sub_24EA34(a1);
  sub_2AAE6C(a1);
  return 1;
}

uint64_t sub_2AAE6C(uint64_t a1)
{
  v2 = a1 + 584;
  v3 = (*(*(a1 + 584) + 16))(a1 + 584);
  v4 = *(a1 + 144);
  v5 = sub_3419E4();
  if (v4 == 1886745455)
  {
    v6 = 1684500341;
  }

  else
  {
    v6 = 1819176821;
  }

  result = sub_340A14(v5, v6);
  *(a1 + 688) = result;
  if (v3)
  {
    return (*(*v2 + 24))(v2);
  }

  return result;
}

void sub_2AAF48(void *a1)
{
  *a1 = off_6BF6D8;
  sub_42A4D8((a1 + 73));
  sub_24EBDC(a1);

  operator delete();
}

uint64_t sub_2AAFB4(void *a1)
{
  *a1 = off_6BF6D8;
  sub_42A4D8((a1 + 73));

  return sub_24EBDC(a1);
}

uint64_t sub_2AB00C(uint64_t a1, unsigned int *a2, void *a3, uint64_t a4)
{
  qmemcpy(v22, "gcrvmorvtshv", sizeof(v22));
  memset(&__dst, 0, sizeof(__dst));
  sub_4625C(&__dst, v22, &v23, 3uLL);
  sub_24FEE8(v15, *a2);
  memset(v14, 0, sizeof(v14));
  sub_53E8(__p, "");
  sub_250178(a1, a2, a3, &__dst, v15, a4, v14, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v14;
  sub_72C14(__p);
  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (__dst.__r_.__value_.__r.__words[0])
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  *a1 = off_6BF6D8;
  if (*(a4 + 23) < 0)
  {
    sub_54A0(&__dst, *a4, *(a4 + 8));
  }

  else
  {
    __dst = *a4;
  }

  std::string::append(&__dst, " Port_IAPLineOut_Aspen mutex", 0x1CuLL);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  sub_53E8(v15, p_dst);
  *(a1 + 584) = off_6D3C50;
  v9 = (a1 + 592);
  if (SHIBYTE(v16) < 0)
  {
    sub_54A0(v9, v15[0], v15[1]);
    v10 = SHIBYTE(v16);
    *(a1 + 616) = 850045863;
    *(a1 + 624) = 0u;
    *(a1 + 640) = 0u;
    *(a1 + 656) = 0u;
    *(a1 + 672) = 0u;
    if (v10 < 0)
    {
      operator delete(v15[0]);
    }
  }

  else
  {
    *v9 = *v15;
    *(a1 + 608) = v16;
    *(a1 + 616) = 850045863;
    *(a1 + 624) = 0u;
    *(a1 + 640) = 0u;
    *(a1 + 656) = 0u;
    *(a1 + 672) = 0u;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  *(a1 + 688) = 0;
  (*(*a1 + 104))(a1, 1768513904);
  return a1;
}

void sub_2AB294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 57) < 0)
  {
    operator delete(*(v25 - 80));
  }

  sub_24EBDC(v24);
  _Unwind_Resume(a1);
}

std::string *sub_2AB344(std::string *a1, void *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2[9])
  {
    sub_53E8(v11, "Persistent input ports");
    sub_2AB550(&__p, (a2 + 6), v11);
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

    std::string::append(a1, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  if (a2[19])
  {
    sub_53E8(v11, "Persistent tapStream ports");
    sub_2AB550(&__p, (a2 + 16), v11);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &__p;
    }

    else
    {
      v6 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v7 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, v6, v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  if (a2[14])
  {
    sub_53E8(v11, "Persistent output ports");
    sub_2AB550(&__p, (a2 + 11), v11);
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

    std::string::append(a1, v8, v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v12 < 0)
    {
      operator delete(v11[0]);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_2AB4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2AB550(std::string *a1, uint64_t a2, const void **a3)
{
  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  v7 = sub_B0848(a1, v6 + 4);
  if (*(v7 + 23) >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = *v7;
  }

  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    memmove(v8, v9, v6);
  }

  strcpy(v8 + v6, ": [ ");
  v10 = *(a2 + 16);
  if (v10)
  {
    while (1)
    {
      std::string::append(a1, "(", 1uLL);
      sub_22170(&__p, *(v10 + 4));
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

      std::string::append(a1, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::append(a1, ", ", 2uLL);
      sub_23E748(&__p, v10[3], v10[4]);
      v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      std::string::append(a1, v13, v14);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::append(a1, ")", 1uLL);
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " ] ", 3uLL);
}

void sub_2AB6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2AB730(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 184))
  {
    if (sub_108CA8(*(a2 + 144)))
    {
      sub_34CCB0(v11, a2);
      v4 = v11[1];
      if (v11[1])
      {
        v5 = std::__shared_weak_count::lock(v11[1]);
        v6 = v11[0];
        std::__shared_weak_count::__release_weak(v4);
        if (v5 && v6)
        {
          if (SHIBYTE(v6[12].__shared_owners_) < 0)
          {
            sub_54A0(v11, v6[11].__shared_weak_owners_, v6[12].__vftable);
          }

          else
          {
            *v11 = *&v6[11].__shared_weak_owners_;
            shared_owners = v6[12].__shared_owners_;
          }

          v9 = sub_2AB8B0(a1[3], a1[4], v11);
          if (SHIBYTE(shared_owners) < 0)
          {
            operator delete(v11[0]);
          }

          sub_1A8C0(v5);
          return v9;
        }

        if (v5)
        {
          sub_1A8C0(v5);
        }
      }

      return 0;
    }

    if (*(a2 + 303) < 0)
    {
      sub_54A0(v11, *(a2 + 280), *(a2 + 288));
    }

    else
    {
      *v11 = *(a2 + 280);
      shared_owners = *(a2 + 296);
    }

    v7 = *a1;
    v8 = a1[1];
  }

  else
  {
    if (*(a2 + 303) < 0)
    {
      sub_54A0(v11, *(a2 + 280), *(a2 + 288));
    }

    else
    {
      *v11 = *(a2 + 280);
      shared_owners = *(a2 + 296);
    }

    v7 = a1[3];
    v8 = a1[4];
  }

  v9 = sub_2AB8B0(v7, v8, v11);
  if (SHIBYTE(shared_owners) < 0)
  {
    operator delete(v11[0]);
  }

  return v9;
}

BOOL sub_2AB8B0(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = a3[1];
    }

    if (v5 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    while (1)
    {
      v8 = *(v4 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v4 + 8);
      }

      if (v8 == v6)
      {
        v10 = v9 >= 0 ? v4 : *v4;
        if (!memcmp(v10, v7, v6))
        {
          break;
        }
      }

      v4 += 24;
      if (v4 == a2)
      {
        v4 = a2;
        return v4 != a2;
      }
    }
  }

  return v4 != a2;
}

uint64_t sub_2AB94C(void *a1, unsigned int a2, __int128 *a3)
{
  v6 = sub_23B090(a1, a2);
  if (v6 && sub_2AB8B0(v6[3], v6[4], a3))
  {
    return 0;
  }

  v8 = a1[1];
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = a2;
    if (v8 <= a2)
    {
      v10 = a2 % v8;
    }
  }

  else
  {
    v10 = (v8 - 1) & a2;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == a2)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= v8)
      {
        v13 %= v8;
      }
    }

    else
    {
      v13 &= v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  if (*(v12 + 4) != a2)
  {
    goto LABEL_20;
  }

  v15 = v12[4];
  v14 = v12[5];
  if (v15 >= v14)
  {
    v17 = v12[3];
    v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v17) >> 3);
    if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_189A00();
    }

    v19 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v17) >> 3);
    v20 = 2 * v19;
    if (2 * v19 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    if (v19 >= 0x555555555555555)
    {
      v21 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v21 = v20;
    }

    v36 = v12 + 3;
    if (v21)
    {
      sub_1D8BB8(v21);
    }

    v23 = 24 * v18;
    v32 = 0;
    v33 = v23;
    v24 = 0;
    v34 = v23;
    v35 = 0;
    if (*(a3 + 23) < 0)
    {
      sub_54A0(v23, *a3, *(a3 + 1));
      v23 = v33;
      v26 = v34;
      v24 = v35;
    }

    else
    {
      v25 = *a3;
      *(v23 + 16) = *(a3 + 2);
      *v23 = v25;
      v26 = v23;
    }

    v22 = v26 + 24;
    v27 = v12[3];
    v28 = v12[4] - v27;
    v29 = v23 - v28;
    memcpy((v23 - v28), v27, v28);
    v30 = v12[3];
    v12[3] = v29;
    v12[4] = v22;
    v31 = v12[5];
    v12[5] = v24;
    v34 = v30;
    v35 = v31;
    v32 = v30;
    v33 = v30;
    sub_12574(&v32);
  }

  else
  {
    if (*(a3 + 23) < 0)
    {
      sub_54A0(v12[4], *a3, *(a3 + 1));
    }

    else
    {
      v16 = *a3;
      *(v15 + 16) = *(a3 + 2);
      *v15 = v16;
    }

    v22 = v15 + 24;
    v12[4] = v15 + 24;
  }

  v12[4] = v22;
  return 1;
}

void sub_2ABCD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_12574(va);
  _Unwind_Resume(a1);
}

BOOL sub_2ABD94(void *a1, void *a2, void *a3, void *a4)
{
  v4 = a3 == a4;
  if (a3 != a4 && a1 != a2)
  {
    while (1)
    {
      v5 = *(a3 + 7);
      v6 = *(a1 + 7);
      if (v5 < v6)
      {
        break;
      }

      if (v6 >= v5)
      {
        v8 = a3[1];
        if (v8)
        {
          do
          {
            v7 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v7 = a3[2];
            v9 = *v7 == a3;
            a3 = v7;
          }

          while (!v9);
        }
      }

      else
      {
        v7 = a3;
      }

      v10 = a1[1];
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
          v11 = a1[2];
          v9 = *v11 == a1;
          a1 = v11;
        }

        while (!v9);
      }

      v4 = v7 == a4;
      if (v7 != a4)
      {
        a1 = v11;
        a3 = v7;
        if (v11 != a2)
        {
          continue;
        }
      }

      return v4;
    }

    return 0;
  }

  return v4;
}

void sub_2ABE4C(uint64_t a1)
{
  sub_5659C(&v16, (a1 + 8), "", 46);
  v14 = *(a1 + 24);
  v15 = 1735159650;
  v2 = v16;
  if ((*(*v16 + 16))(v16, &v14))
  {
    v3 = sub_5544(20);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(v12, *(a1 + 24));
      v5 = v13;
      v6 = v12[0];
      v7 = *(a1 + 32);
      (*(*v2 + 128))(__p, v2);
      v8 = v12;
      if (v5 < 0)
      {
        v8 = v6;
      }

      if (v11 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 136316162;
      v19 = "RoutingHandlerAction_BluetoothSoftwareVolume.cpp";
      v20 = 1024;
      v21 = 52;
      v22 = 2080;
      v23 = v8;
      v24 = 1024;
      v25 = v7;
      v26 = 2080;
      v27 = v9;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Resetting property(%s) = %u for device %s back to its old value", buf, 0x2Cu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }

    (*(*v2 + 48))(v2, &v14, 0, 0, 4, a1 + 32);
  }

  if (v17)
  {
    sub_1A8C0(v17);
  }
}

void sub_2AC06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (a18)
  {
    sub_1A8C0(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_2AC0A8(uint64_t a1)
{
  sub_5659C(&v34, (a1 + 8), "", 13);
  v32 = *(a1 + 24);
  v33 = 1735159650;
  v2 = v34;
  v3 = (*(*v34 + 376))(v34);
  if ((v3 & 0x100000000) != 0 && v3)
  {
    if ((*(*v2 + 16))(v2, &v32))
    {
      if ((*(*v2 + 24))(v2, &v32))
      {
        v4 = sub_5544(20);
        v5 = *v4;
        if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(v30, *(a1 + 24));
          v6 = v31;
          v7 = v30[0];
          v8 = *(a1 + 28);
          (*(*v2 + 128))(__p, v2);
          v9 = v30;
          if (v6 < 0)
          {
            v9 = v7;
          }

          if (v29 >= 0)
          {
            v10 = __p;
          }

          else
          {
            v10 = __p[0];
          }

          *buf = 136316162;
          v37 = "RoutingHandlerAction_BluetoothSoftwareVolume.cpp";
          v38 = 1024;
          v39 = 39;
          v40 = 2080;
          v41 = v9;
          v42 = 1024;
          LODWORD(v43[0]) = v8;
          WORD2(v43[0]) = 2080;
          *(v43 + 6) = v10;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting property(%s) = %u for device %s", buf, 0x2Cu);
          if (v29 < 0)
          {
            operator delete(__p[0]);
          }

          if (v31 < 0)
          {
            operator delete(v30[0]);
          }
        }

        (*(*v2 + 48))(v2, &v32, 0, 0, 4, a1 + 28);
        goto LABEL_45;
      }

      v23 = sub_5544(20);
      v12 = *v23;
      if (!*v23 || !os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      sub_22170(v30, v32);
      v24 = v31;
      v25 = v30[0];
      (*(*v2 + 128))(__p, v2);
      v26 = v30;
      if (v24 < 0)
      {
        v26 = v25;
      }

      if (v29 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = __p[0];
      }

      *buf = 136315906;
      v37 = "RoutingHandlerAction_BluetoothSoftwareVolume.cpp";
      v38 = 1024;
      v39 = 34;
      v40 = 2080;
      v41 = v26;
      v42 = 2080;
      v43[0] = v27;
      v17 = "%25s:%-5d Property %s is not settable on device %s";
    }

    else
    {
      v18 = sub_5544(20);
      v12 = *v18;
      if (!*v18 || !os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }

      sub_22170(v30, v32);
      v19 = v31;
      v20 = v30[0];
      (*(*v2 + 128))(__p, v2);
      v21 = v30;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if (v29 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      *buf = 136315906;
      v37 = "RoutingHandlerAction_BluetoothSoftwareVolume.cpp";
      v38 = 1024;
      v39 = 27;
      v40 = 2080;
      v41 = v21;
      v42 = 2080;
      v43[0] = v22;
      v17 = "%25s:%-5d Property %s is not available on device %s";
    }
  }

  else
  {
    v11 = sub_5544(20);
    v12 = *v11;
    if (!*v11 || !os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    sub_22170(v30, 0x73777370u);
    v13 = v31;
    v14 = v30[0];
    (*(*v2 + 128))(__p, v2);
    v15 = v30;
    if (v13 < 0)
    {
      v15 = v14;
    }

    if (v29 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    *buf = 136315906;
    v37 = "RoutingHandlerAction_BluetoothSoftwareVolume.cpp";
    v38 = 1024;
    v39 = 20;
    v40 = 2080;
    v41 = v15;
    v42 = 2080;
    v43[0] = v16;
    v17 = "%25s:%-5d Software volume mode (%s) is not supported on device %s";
  }

  _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, v17, buf, 0x26u);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

LABEL_45:
  if (v35)
  {
    sub_1A8C0(v35);
  }
}

void sub_2AC5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (a18)
  {
    sub_1A8C0(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_2AC64C(void *a1)
{
  *a1 = off_6C0F48;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_2AC6B8(void *a1)
{
  *a1 = off_6C0F48;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

double sub_2AC704(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = sub_310AF4();
  *(a1 + 20) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v2 = sub_106F10();
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 76) = (v2 > 0xFFu) & v2;
  *(a1 + 77) = 1;
  *(a1 + 78) = 0;
  *(a1 + 86) = 0;
  *(a1 + 88) = 16777473;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 122) = 0;
  *(a1 + 128) = -1044381696;
  *(a1 + 132) = 1;
  *(a1 + 136) = -1044381696;
  *(a1 + 140) = 1;
  *(a1 + 144) = 0;
  *(a1 + 148) = 1;
  *(a1 + 152) = -1056964608;
  *(a1 + 156) = 1;
  *(a1 + 160) = -1033371648;
  *(a1 + 164) = 1;
  *(a1 + 168) = 0;
  *(a1 + 172) = 1;
  *(a1 + 176) = -1033371648;
  *(a1 + 180) = 1;
  *(a1 + 184) = 0;
  *(a1 + 188) = 1;
  *(a1 + 192) = -1044381696;
  *(a1 + 196) = 1;
  *(a1 + 200) = 0;
  *(a1 + 204) = 1;
  *(a1 + 208) = -1033371648;
  *(a1 + 212) = 1;
  *(a1 + 216) = 0;
  *(a1 + 220) = 1;
  *(a1 + 224) = -1033371648;
  *(a1 + 228) = 1;
  *(a1 + 232) = -1055916032;
  *(a1 + 236) = 1;
  *(a1 + 240) = -1033371648;
  *(a1 + 244) = 1;
  *(a1 + 248) = 0;
  *(a1 + 252) = 1;
  *(a1 + 256) = -1055916032;
  *(a1 + 260) = 1;
  *(a1 + 264) = -1033371648;
  *(a1 + 268) = 1;
  *(a1 + 272) = -1055916032;
  *(a1 + 276) = 1;
  *(a1 + 280) = -1033371648;
  *(a1 + 284) = 1;
  *(a1 + 288) = 0;
  *(a1 + 292) = 1;
  *(a1 + 296) = -1055916032;
  *(a1 + 300) = 1;
  *(a1 + 304) = -1043333120;
  *(a1 + 308) = 1;
  *(a1 + 312) = 0x40000000;
  *(a1 + 316) = 1;
  *(a1 + 320) = 16777472;
  *(a1 + 324) = 0;
  *(a1 + 328) = 1;
  *(a1 + 332) = 0;
  *(a1 + 336) = 1;
  *(a1 + 340) = 1103626240;
  *(a1 + 344) = 1;
  *(a1 + 348) = 0;
  *(a1 + 352) = 1;
  *(a1 + 356) = 1094713344;
  *(a1 + 360) = 1;
  *(a1 + 364) = 1094713344;
  *(a1 + 368) = 1;
  *(a1 + 372) = 1094713344;
  *(a1 + 376) = 1;
  *(a1 + 380) = -1061158912;
  *(a1 + 384) = 1;
  *(a1 + 388) = 1107296256;
  *(a1 + 392) = 1;
  *(a1 + 396) = 1107296256;
  *(a1 + 400) = 1;
  *(a1 + 404) = 1092616192;
  *(a1 + 408) = 1;
  *(a1 + 412) = 0;
  *(a1 + 416) = 1;
  *(a1 + 420) = 0;
  *(a1 + 424) = 1;
  *(a1 + 428) = 16777472;
  *(a1 + 432) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 692) = 0;
  *(a1 + 696) = 0;
  *(a1 + 700) = 0;
  *(a1 + 704) = 0;
  *(a1 + 708) = 0;
  *(a1 + 712) = 0;
  *(a1 + 716) = 0;
  *(a1 + 720) = 0;
  *(a1 + 724) = 0;
  *(a1 + 728) = 0;
  *(a1 + 732) = 0;
  *(a1 + 736) = 0;
  *(a1 + 740) = 0;
  *(a1 + 744) = 0;
  *(a1 + 748) = 0;
  *(a1 + 752) = 0;
  *(a1 + 756) = 0;
  *(a1 + 760) = 0;
  *(a1 + 764) = 0;
  *(a1 + 768) = 0;
  *(a1 + 772) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  *(a1 + 784) = 0;
  *(a1 + 788) = 0;
  *(a1 + 792) = 0;
  *(a1 + 796) = 0;
  *(a1 + 800) = 0;
  *(a1 + 804) = 0;
  *(a1 + 808) = 0;
  *(a1 + 812) = 0;
  *(a1 + 816) = 1;
  *(a1 + 820) = 0;
  *(a1 + 824) = 0;
  *(a1 + 828) = 0;
  *(a1 + 832) = 0;
  *(a1 + 836) = 0;
  *(a1 + 840) = 0;
  *(a1 + 844) = 0;
  *(a1 + 848) = 0;
  *(a1 + 852) = 0;
  *(a1 + 856) = 0;
  *(a1 + 860) = 0;
  *(a1 + 864) = 0;
  *(a1 + 868) = 0;
  *(a1 + 872) = 0;
  *(a1 + 876) = 0;
  *(a1 + 880) = 0;
  *(a1 + 884) = 0;
  *(a1 + 888) = 0;
  *(a1 + 892) = 0;
  *(a1 + 896) = 0;
  *(a1 + 900) = 0;
  *(a1 + 904) = 0;
  *(a1 + 908) = 0;
  *(a1 + 912) = 0;
  *(a1 + 916) = 0;
  *(a1 + 920) = 0;
  *(a1 + 924) = 0;
  *(a1 + 928) = 0;
  *(a1 + 932) = 0;
  *(a1 + 936) = 0;
  *(a1 + 940) = 0;
  *(a1 + 944) = 0;
  *(a1 + 948) = 0;
  *(a1 + 952) = 0;
  *(a1 + 976) = 0;
  *(a1 + 984) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 256;
  *(a1 + 1084) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1092) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1100) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 80) = 257;
  *(a1 + 72) = 16843009;
  *(a1 + 76) = 257;
  *(a1 + 82) = 16843009;
  if ((*(a1 + 20) & 1) == 0)
  {
    *(a1 + 20) = 1;
  }

  *(a1 + 16) = 4;
  *&v5 = 0x300000002;
  sub_1F8148((a1 + 48), &v5, &v5 + 8, 2uLL);
  LODWORD(v5) = 4;
  sub_1F8148((a1 + 24), &v5, &v5 + 4, 1uLL);
  v5 = xmmword_517160;
  sub_1DFEA0((a1 + 96), &v5, &v6);
  *(a1 + 420) = 1090519040;
  *(a1 + 424) = 1;
  *(a1 + 404) = 1077936128;
  *(a1 + 408) = 1;
  *(a1 + 322) = 257;
  *(a1 + 912) = 15;
  *(a1 + 916) = 1;
  *(a1 + 828) = 15;
  *(a1 + 832) = 1;
  *(a1 + 904) = 7;
  *(a1 + 908) = 1;
  *(a1 + 728) = 2;
  *(a1 + 732) = 1;
  *(a1 + 736) = 9;
  *(a1 + 740) = 1;
  *(a1 + 744) = 12;
  *(a1 + 748) = 1;
  *(a1 + 752) = 2;
  *(a1 + 756) = 1;
  *(a1 + 768) = 2;
  *(a1 + 772) = 1;
  if ((*(a1 + 948) & 1) == 0)
  {
    *(a1 + 948) = 1;
  }

  *(a1 + 944) = 2;
  if ((*(a1 + 700) & 1) == 0)
  {
    *(a1 + 700) = 1;
  }

  *(a1 + 696) = 2;
  if ((*(a1 + 708) & 1) == 0)
  {
    *(a1 + 708) = 1;
  }

  *(a1 + 704) = 2;
  if ((*(a1 + 716) & 1) == 0)
  {
    *(a1 + 716) = 1;
  }

  *(a1 + 712) = 4;
  *(a1 + 860) = 257;
  if ((*(a1 + 868) & 1) == 0)
  {
    *(a1 + 868) = 1;
  }

  *(a1 + 864) = 4;
  if ((*(a1 + 884) & 1) == 0)
  {
    *(a1 + 884) = 1;
  }

  *(a1 + 880) = 2;
  if ((*(a1 + 876) & 1) == 0)
  {
    *(a1 + 876) = 1;
  }

  *(a1 + 872) = 2;
  sub_30F70C(&v5, 46);
  v3 = (a1 + 952);
  if (*(a1 + 976) == 1)
  {
    if (*(a1 + 975) < 0)
    {
      operator delete(*v3);
    }

    result = *&v5;
    *v3 = v5;
    *(a1 + 968) = v6;
  }

  else
  {
    result = *&v5;
    *v3 = v5;
    *(a1 + 968) = v6;
    *(a1 + 976) = 1;
  }

  return result;
}

void sub_2ACCD4()
{
  sub_2AC704(v0);
  sub_18B160(v0);
  sub_1E0054(&v6);
  sub_477A0(v5);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }

  if (v1)
  {
    v2 = v1;
    operator delete(v1);
  }
}

void sub_2ACD54(void *a1@<X8>)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
}

uint64_t sub_2ACD60(uint64_t a1, __int128 *a2, int a3)
{
  if (a3 != 1885762592 && a3 != 1936092532)
  {
    v38 = sub_5544(14);
    v39 = *v38;
    if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Stream_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 406;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): specified inSelector is not valid", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "specified inSelector is not valid");
  }

  v6 = sub_5544(23);
  v7 = sub_5544(36);
  v8 = 0;
  *buf = 0x100000002;
  v9 = *(v6 + 8);
  while (1)
  {
    v10 = *&buf[v8];
    if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
    {
      break;
    }

    v8 += 4;
    if (v8 == 8)
    {
      goto LABEL_9;
    }
  }

  if ((v9 & v10) == 0)
  {
    v6 = v7;
  }

LABEL_9:
  v11 = *v6;
  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    sub_618A4(&v67);
  }

  v12 = 2003332927;
  if (a3 == 1936092532 || a3 == 1885762592)
  {
    v13 = *(a1 + 80);
    *v41 = a3;
    *&v41[4] = 1735159650;
    v14 = sub_5544(14);
    if ((*(v14 + 8) & 1) != 0 && *v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
    {
      v66.__cv_.__sig = *v41;
      *v66.__cv_.__opaque = *&v41[8];
      sub_22CE0(&v67);
    }

    *buf = *v41;
    *&buf[8] = *&v41[8];
    if (AudioObjectHasProperty(v13, buf))
    {
      memset(v67.__m_.__opaque, 0, sizeof(v67.__m_.__opaque));
      v66.__cv_.__sig = 1018212795;
      memset(v66.__cv_.__opaque, 0, sizeof(v66.__cv_.__opaque));
      v67.__m_.__sig = 850045863;
      v64 = 0;
      sub_745E8(v63, v13, v41, &v66, &v67, &v64);
      v59 = *v41;
      v58 = v13;
      v60 = *&v41[8];
      v61 = 0;
      v62 = 0;
      *buf = *v41;
      *&buf[8] = *&v41[8];
      if (!sub_66E40(v13, buf))
      {
        v19 = sub_5544(14);
        v20 = 1852797029;
        if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
        {
          *&v50 = *v41;
          DWORD2(v50) = *&v41[8];
          sub_22CE0(&v54);
        }

        goto LABEL_80;
      }

      sub_2ADB7C(&v54, &v58);
      if (!v57)
      {
        *buf = v54;
        *&buf[16] = v55;
        *&buf[32] = v56;
        v15 = a2[1];
        v50 = *a2;
        v51 = v15;
        v52 = *(a2 + 4);
        if (sub_5FB04(buf, &v50))
        {
          v16 = sub_5544(14);
          if ((*(v16 + 8) & 1) == 0)
          {
            goto LABEL_79;
          }

          v17 = *v16;
          if (!*v16 || !os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_79;
          }

          *buf = 136315650;
          *&buf[4] = "HALPropertySynchronizer.h";
          *&buf[12] = 1024;
          *&buf[14] = 294;
          *&buf[18] = 1024;
          *&buf[20] = v13;
LABEL_46:
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", buf, 0x18u);
LABEL_79:
          v20 = 0;
LABEL_80:
          sub_73C20(v63);
          std::condition_variable::~condition_variable(&v66);
          std::mutex::~mutex(&v67);
          return v20;
        }
      }

      v21 = sub_5544(14);
      if ((*(v21 + 8) & 1) != 0 && *v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_DEBUG))
      {
        __p[0] = *v41;
        LODWORD(__p[1]) = *&v41[8];
        sub_22CE0(&v50);
      }

      *buf = *v41;
      *&buf[8] = *&v41[8];
      v20 = AudioObjectSetPropertyData(v13, buf, 0, 0, 0x28u, a2);
      if (v20)
      {
        v22 = sub_5544(14);
        if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
        {
          sub_22170(&v50, v20);
          v42 = *v41;
          v43 = *&v41[8];
          sub_22CE0(__p);
        }

        goto LABEL_80;
      }

      sub_2ADB7C(&v54, &v58);
      if (!v57)
      {
        *buf = v54;
        *&buf[16] = v55;
        *&buf[32] = v56;
        v23 = a2[1];
        v50 = *a2;
        v51 = v23;
        v52 = *(a2 + 4);
        if (sub_5FB04(buf, &v50))
        {
          v24 = sub_5544(14);
          if ((*(v24 + 8) & 1) == 0)
          {
            goto LABEL_79;
          }

          v17 = *v24;
          if (!*v24 || !os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_79;
          }

          *buf = 136315650;
          *&buf[4] = "HALPropertySynchronizer.h";
          *&buf[12] = 1024;
          *&buf[14] = 322;
          *&buf[18] = 1024;
          *&buf[20] = v13;
          goto LABEL_46;
        }
      }

      v25 = 2000;
LABEL_48:
      sub_2ADB7C(&v50, &v58);
      v20 = v53;
      if (v53)
      {
        goto LABEL_80;
      }

      *buf = v50;
      *&buf[16] = v51;
      *&buf[32] = v52;
      v26 = a2[1];
      *__p = *a2;
      v48 = v26;
      v49 = *(a2 + 4);
      if (sub_5FB04(buf, __p))
      {
        v35 = sub_5544(14);
        if ((*(v35 + 8) & 1) != 0 && *v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_DEBUG))
        {
          __p[0] = *v41;
          LODWORD(__p[1]) = *&v41[8];
          sub_22CE0(&v50);
        }

        goto LABEL_79;
      }

      if (v25 <= 0)
      {
        v37 = sub_5544(14);
        v20 = 2003329396;
        if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
        {
          v44 = *v41;
          v45 = *&v41[8];
          sub_22CE0(&v46);
        }

        goto LABEL_80;
      }

      v27.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      v28 = sub_5544(14);
      if (*(v28 + 8))
      {
        v29 = *v28;
        if (*v28)
        {
          if (os_log_type_enabled(*v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *&buf[4] = "HALPropertySynchronizer.h";
            *&buf[12] = 1024;
            *&buf[14] = 354;
            *&buf[18] = 2080;
            *&buf[20] = "with timeout";
            *&buf[28] = 1024;
            *&buf[30] = v13;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", buf, 0x22u);
          }
        }
      }

      sub_27A4();
      LOBYTE(__p[0]) = sub_2E6B08();
      *buf = &v67;
      buf[8] = 1;
      std::mutex::lock(&v67);
      v30.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
      while (1)
      {
        if ((v64 & 1) != 0 || v30.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
        {
LABEL_72:
          if (buf[8] == 1)
          {
            std::mutex::unlock(*buf);
          }

          sub_1DB4C4(__p);
          v25 += (std::chrono::system_clock::now().__d_.__rep_ - v27.__d_.__rep_) / -1000;
          goto LABEL_48;
        }

        v31.__d_.__rep_ = v30.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
        if (v31.__d_.__rep_ >= 1)
        {
          break;
        }

LABEL_71:
        if (std::chrono::steady_clock::now().__d_.__rep_ >= v30.__d_.__rep_)
        {
          goto LABEL_72;
        }
      }

      std::chrono::steady_clock::now();
      v32.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v32.__d_.__rep_)
      {
        v33 = 0;
        goto LABEL_69;
      }

      if (v32.__d_.__rep_ < 1)
      {
        if (v32.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v33 = 0x8000000000000000;
          goto LABEL_69;
        }
      }

      else if (v32.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v33 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_67;
      }

      v33 = 1000 * v32.__d_.__rep_;
LABEL_67:
      if (v33 > (v31.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v34.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_70:
        std::condition_variable::__do_timed_wait(&v66, buf, v34);
        std::chrono::steady_clock::now();
        goto LABEL_71;
      }

LABEL_69:
      v34.__d_.__rep_ = v33 + v31.__d_.__rep_;
      goto LABEL_70;
    }

    v18 = sub_5544(14);
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v66.__cv_.__sig = *v41;
      *v66.__cv_.__opaque = *&v41[8];
      sub_22CE0(&v67);
    }
  }

  return v12;
}

void sub_2ADAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, AudioObjectPropertySelector a45)
{
  sub_73C20(&a45);
  std::condition_variable::~condition_variable((v45 - 216));
  std::mutex::~mutex((v45 - 168));
  _Unwind_Resume(a1);
}

__n128 sub_2ADB7C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 4);
  *buf = *(a2 + 4);
  v4 = *(a2 + 16);
  *&buf[8] = *(a2 + 12);
  sub_2ADD84(&v14, a2, buf, v4, *(a2 + 24));
  v5 = v14;
  if (v14)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v13, v5);
        v10 = *v3;
        v11 = *(v3 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  v7 = v15;
  v18 = 0;
  v17 = 0u;
  *buf = 0u;
  if (!v15[40])
  {
    v7 = buf;
  }

  result = *v7;
  v9 = *(v7 + 1);
  *a1 = *v7;
  *(a1 + 16) = v9;
  *(a1 + 32) = *(v7 + 4);
  *(a1 + 40) = v5;
  return result;
}

void sub_2ADD64(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2ADD84(uint64_t a1, AudioObjectID *a2, AudioObjectPropertyAddress *inAddress, UInt32 a4, const void *a5)
{
  result = AudioObjectHasProperty(*a2, inAddress);
  if (result)
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 48) = 0;
    result = sub_543D0(*a2, inAddress, a4, a5);
    ioDataSize = result;
    if (result)
    {
      result = AudioObjectGetPropertyData(*a2, inAddress, a4, a5, &ioDataSize, v12);
      *a1 = result;
      if (!result)
      {
        v11 = v12[1];
        *(a1 + 8) = v12[0];
        *(a1 + 24) = v11;
        *(a1 + 40) = v13;
        *(a1 + 48) = 1;
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 48) = 0;
  }

  return result;
}

uint64_t sub_2ADE94(uint64_t a1, const void *a2, AudioObjectPropertySelector a3)
{
  if (a3 != 1885762592 && a3 != 1936092532)
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19)
    {
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Stream_HAL_Common.cpp";
        v26 = 1024;
        v27 = 382;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): specified inSelector is not valid", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "specified inSelector is not valid");
  }

  v7 = sub_5544(23);
  v8 = sub_5544(36);
  v9 = 0;
  *buf = 0x100000002;
  v10 = *(v7 + 8);
  while (1)
  {
    v11 = *&buf[v9];
    if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
    {
      break;
    }

    v9 += 4;
    if (v9 == 8)
    {
      goto LABEL_12;
    }
  }

  if ((v10 & v11) == 0)
  {
    v7 = v8;
  }

LABEL_12:
  v12 = *v7;
  if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    sub_618A4(__p);
  }

  inAddress.mSelector = a3;
  *&inAddress.mScope = 1735159650;
  v13 = AudioObjectSetPropertyData(*(a1 + 80), &inAddress, 0, 0, 0x28u, a2);
  if (v13)
  {
    v14 = sub_5544(23);
    v15 = *v14;
    if (*v14)
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v13);
        v16 = v24 >= 0 ? __p : __p[0];
        v17 = *(a1 + 80);
        *buf = 136316162;
        *&buf[4] = "Stream_HAL_Common.cpp";
        v26 = 1024;
        v27 = 388;
        v28 = 1024;
        v29 = v13;
        v30 = 2080;
        v31 = v16;
        v32 = 1024;
        v33 = v17;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d ('%s') setting the current stream format for stream %u", buf, 0x28u);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return v13;
}

void sub_2AE238(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  sub_6ACD8();
}

uint64_t sub_2AE294(uint64_t a1)
{
  sub_4E890();
  v2 = *(a1 + 80);

  return sub_13EB84(v2);
}

void sub_2AE2CC(os_unfair_lock_s *a1)
{
  sub_F7240(a1);
  v2 = sub_5544(23);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
  {
    sub_23148(__p, a1 + 2);
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v8 = "Stream_HAL_Common.cpp";
    v9 = 1024;
    v10 = 84;
    v11 = 2080;
    v12 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created Stream: %s.", buf, 0x1Cu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

std::string *sub_2AE3D4@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&__dst, *(a1 + 80));
  v4 = std::string::insert(&__dst, 0, "[ id: ", 6uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v21 = v4->__r_.__value_.__r.__words[2];
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (v21 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v21 >= 0)
  {
    v7 = HIBYTE(v21);
  }

  else
  {
    v7 = __p[1];
  }

  std::string::append(a2, v6, v7);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  snprintf(__str, 0x13uLL, "%p", a1);
  sub_53E8(&__dst, __str);
  v8 = std::string::insert(&__dst, 0, "; addr: ", 8uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v21 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v21 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v21 >= 0)
  {
    v11 = HIBYTE(v21);
  }

  else
  {
    v11 = __p[1];
  }

  std::string::append(a2, v10, v11);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 84))
  {
    v12 = "out";
  }

  else
  {
    v12 = "in";
  }

  if (*(a1 + 84))
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  *(&__dst.__r_.__value_.__s + 23) = v13;
  memcpy(&__dst, v12, v13);
  *(&__dst | v13) = 0;
  v14 = std::string::insert(&__dst, 0, "; dir: ", 7uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v21 = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (v21 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if (v21 >= 0)
  {
    v17 = HIBYTE(v21);
  }

  else
  {
    v17 = __p[1];
  }

  std::string::append(a2, v16, v17);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return std::string::append(a2, " ]", 2uLL);
}

void sub_2AE61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2AE680(AudioObjectID *a1, AudioObjectPropertyAddress *inAddress, UInt32 a3, const void *a4, UInt32 inDataSize, void *inData)
{
  if (inAddress->mSelector == 1936092532 || inAddress->mSelector == 1885762592)
  {
    if ((*(*a1 + 32))(a1, inAddress) != inDataSize)
    {
      v25 = sub_5544(14);
      v26 = *v25;
      if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Stream_HAL_Common.cpp";
        v32 = 1024;
        v33 = 215;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): Bad data size for property kAudioStreamPropertyPhysical/VirtualFormat", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 561211770;
    }

    v10 = sub_5544(23);
    v11 = sub_5544(36);
    v12 = 0;
    *buf = 0x100000002;
    v13 = *(v10 + 8);
    while (1)
    {
      v14 = *&buf[v12];
      if (((v13 & v14) != 0) != ((*(v11 + 8) & v14) != 0))
      {
        break;
      }

      v12 += 4;
      if (v12 == 8)
      {
        goto LABEL_13;
      }
    }

    if ((v13 & v14) == 0)
    {
      v10 = v11;
    }

LABEL_13:
    v15 = *v10;
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v28 = *&inAddress->mSelector;
      mElement = inAddress->mElement;
      sub_22CE0(&v30);
    }

    result = (*(*a1 + 136))(a1, inData);
    v16 = result;
    if (result)
    {
      v17 = sub_5544(14);
      v18 = *v17;
      if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Stream_HAL_Common.cpp";
        v32 = 1024;
        v33 = 218;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: error setting stream format", buf, 0x12u);
      }

      v19 = __cxa_allocate_exception(0x10uLL);
      *v19 = &off_6DDDD0;
      v19[2] = v16;
    }
  }

  else
  {
    result = AudioObjectSetPropertyData(a1[20], inAddress, a3, a4, inDataSize, inData);
    if (result)
    {
      v21 = result;
      v22 = sub_5544(14);
      v23 = *v22;
      if (*v22)
      {
        if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Stream_HAL_Common.cpp";
          v32 = 1024;
          v33 = 225;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unable to set property data.", buf, 0x12u);
        }
      }

      v24 = __cxa_allocate_exception(0x10uLL);
      *v24 = &off_6DDDD0;
      v24[2] = v21;
    }
  }

  return result;
}

void sub_2AEB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2AEB80(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  v2 = *(a1 + 80);
  outIsSettable = 0;
  IsPropertySettable = AudioObjectIsPropertySettable(v2, a2, &outIsSettable);
  if (IsPropertySettable)
  {
    v5 = *sub_5544(14);
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "Stream_HAL_Common.cpp";
        v14 = 1024;
        v15 = 111;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unable to determine whether the property is settable.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = IsPropertySettable;
  }

  if (outIsSettable >= 2u)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "Stream_HAL_Common.cpp";
      v14 = 1024;
      v15 = 112;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL returned a bad value", buf, 0x12u);
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "The HAL returned a bad value");
  }

  return outIsSettable != 0;
}

void sub_2AED70(void *a1)
{
  *a1 = off_6BF930;
  sub_13BFA8(a1);

  operator delete();
}

uint64_t sub_2AEDE4(uint64_t a1, AudioObjectID inObjectID)
{
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 72) = 1065353216;
  *a1 = off_6BF930;
  *(a1 + 80) = inObjectID;
  *&inAddress.mSelector = 0x676C6F6273646972;
  inAddress.mElement = 0;
  ioDataSize = 4;
  outData = 2;
  PropertyData = AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, &outData);
  if (PropertyData)
  {
    v4 = sub_5544(23);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, PropertyData);
      if (v12 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 136315906;
      v17 = "Stream_HAL_Common.cpp";
      v18 = 1024;
      v19 = 56;
      v20 = 1024;
      v21 = PropertyData;
      v22 = 2080;
      v23 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d ('%s') determining stream direction", buf, 0x22u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_15:
    v7 = 1;
    goto LABEL_16;
  }

  if (ioDataSize != 4 || outData > 1)
  {
    v8 = sub_5544(23);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "Stream_HAL_Common.cpp";
      v18 = 1024;
      v19 = 51;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d The HAL returned unexpected results upon reading the stream direction", buf, 0x12u);
    }

    goto LABEL_15;
  }

  v7 = outData != 1;
LABEL_16:
  *(a1 + 84) = v7;
  return a1;
}

uint64_t sub_2AF024(uint64_t a1)
{
  sub_EBA7C();
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    v5 = caulk::rt_safe_memory_resource::rt_allocate(caulk::g_realtime_safe_resource, 0x30uLL, 8uLL);
    *(v5 + 16) = 0;
    *(v5 + 24) = v3;
    *(v5 + 32) = v2;
    *v5 = off_6BFB60;
    *(v5 + 8) = 0;

    return caulk::concurrent::messenger::enqueue(&unk_6FD6F8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::concurrent::message **sub_2AF0BC(caulk::concurrent::message *a1)
{
  v2 = a1;
  sub_2AF104(a1);
  return sub_2AF4BC(&v2);
}

void sub_2AF0F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2AF4BC(va);
  _Unwind_Resume(a1);
}

void sub_2AF104(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = *(a1 + 24);
  v2[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2AF604(&v3, v2, 211);
  if (v3)
  {
    sub_2AF7B0(v3);
  }

  if (v4)
  {
    sub_1A8C0(v4);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

caulk::concurrent::message **sub_2AF4BC(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = off_6BFB88;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  caulk::concurrent::message::~message(v2);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    caulk::rt_safe_memory_resource::rt_deallocate(caulk::g_realtime_safe_resource, v2, 0x30uLL, 8uLL);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2AF538(caulk::concurrent::message *this)
{
  *this = off_6BFB88;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2AF5A8(caulk::concurrent::message *this)
{
  *this = off_6BFB88;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

std::__shared_weak_count *sub_2AF604(uint64_t *a1, uint64_t *a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = a2[1];
  if (!v5 || (result = std::__shared_weak_count::lock(v5), (a1[1] = result) == 0) || (v8 = *a2, *a1 = *a2, !v8))
  {
    v9 = sub_5544(14);
    v10 = sub_468EC(1, *v9, *(v9 + 8));
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v15 = "StandardUtilities.h";
        v16 = 1024;
        v17 = 284;
        v18 = 2080;
        v19 = "";
        v20 = 1024;
        v21 = a3;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not lock weak ptr (%s:%d).", buf, 0x22u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not lock weak ptr (%s:%d).");
  }

  return result;
}

void sub_2AF778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2AF7B0(uint64_t a1)
{
  sub_2AF908(&v12);
  v2 = v12;
  std::mutex::lock(v12);
  v3 = *v2[1].__m_.__opaque;
  if (v3)
  {
    opaque = v2[1].__m_.__opaque;
    v5 = *v2[1].__m_.__opaque;
    do
    {
      v6 = sub_6F834(v5 + 4, (a1 + 24));
      if ((v6 & 0x80u) == 0)
      {
        opaque = v5;
      }

      v5 = *&v5[(v6 >> 4) & 8];
    }

    while (v5);
    if (opaque != v2[1].__m_.__opaque && (sub_6F834((a1 + 24), opaque + 4) & 0x80) == 0)
    {
      v7 = *(opaque + 1);
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
        v9 = opaque;
        do
        {
          v8 = *(v9 + 2);
          v10 = *v8 == v9;
          v9 = v8;
        }

        while (!v10);
      }

      if (v2[1].__m_.__sig == opaque)
      {
        v2[1].__m_.__sig = v8;
      }

      --*&v2[1].__m_.__opaque[8];
      sub_75234(v3, opaque);
      sub_ED13C((opaque + 32));
      operator delete(opaque);
    }
  }

  std::mutex::unlock(v2);
  v11 = v13;
  if (v13)
  {

    sub_1A8C0(v11);
  }
}

void sub_2AF8F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

std::__shared_weak_count *sub_2AF908(void *a1)
{
  if (!qword_6E9018 || (result = std::__shared_weak_count::lock(qword_6E9018)) == 0 || !qword_6E9010)
  {
    operator new();
  }

  *a1 = qword_6E9010;
  a1[1] = result;
  return result;
}

id sub_2AFB14(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(a1 + 96);
    *(a1 + 96) = 0;
  }

  v4 = objc_alloc_init(HMServiceClient);
  v5 = *(a1 + 96);
  *(a1 + 96) = v4;

  sub_8BEE4();
  v6 = qword_709F20;
  v7 = qword_709F20;
  objc_claimAutoreleasedReturnValue();
  [*(a1 + 96) setDispatchQueue:v6];

  [*(a1 + 96) setInterruptionHandler:&stru_6BFA78];
  [*(a1 + 96) setDeviceRecordChangedHandler:&stru_6BFAB8];
  return [*(a1 + 96) activateWithCompletion:&stru_6BFAF8];
}

void sub_2AFEE8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2 && [(NSError *)v2 code]!= -71148)
  {
    v4 = *sub_5544(25);
    v5 = v4;
    if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v9 = 136315394;
      *&v9[4] = "HearingModeServiceIODelegate.mm";
      *&v9[12] = 1024;
      *&v9[14] = 134;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to activate Hearing Mode client", v9, 0x12u);
    }

    sub_2AF908(v9);
    v6 = *v9;
    v7 = *(*v9 + 96);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(v6 + 96);
      *(v6 + 96) = 0;
    }

    if (*&v9[8])
    {
      sub_1A8C0(*&v9[8]);
    }
  }
}

void sub_2B0008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(a1);
}

void sub_2B003C(id a1, HMDeviceRecord *a2)
{
  v2 = a2;
  v3 = [(HMDeviceRecord *)v2 hearingProtectionPPEEnabled];
  v4 = [(HMDeviceRecord *)v2 hearingProtectionPPECapLevel];
  [v4 floatValue];
  v6 = v5;

  v7 = *sub_5544(25);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(HMDeviceRecord *)v2 bluetoothUUID];
      *buf = 136316162;
      *&buf[4] = "HearingModeServiceIODelegate.mm";
      *&buf[12] = 1024;
      *&buf[14] = 165;
      *&buf[18] = 1024;
      *&buf[20] = v3 == 1;
      *v25 = 2048;
      *&v25[2] = v6;
      *&v25[10] = 2112;
      *&v25[12] = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d enable %d, cap %.2f for device %@", buf, 0x2Cu);
    }
  }

  sub_2AF908(&v22);
  v11 = v22;
  v12 = atomic_load(&v22[1].__m_.__opaque[16]);
  if ((((v3 == 1) ^ v12) & 1) != 0 || (v13 = COERCE_FLOAT(atomic_load(&v22[1].__m_.__opaque[20])), v6 != v13))
  {
    v14 = atomic_load(&v22[1].__m_.__opaque[16]);
    if (((v3 == 1) ^ v14) & 1) != 0 || (v15 = atomic_load(&v22[1].__m_.__opaque[16]), (v15))
    {
      atomic_store(v3 == 1, &v22[1].__m_.__opaque[16]);
      atomic_store(LODWORD(v6), &v11[1].__m_.__opaque[20]);
      std::mutex::lock(v11);
      sig = v11[1].__m_.__sig;
      if (sig != v11[1].__m_.__opaque)
      {
        do
        {
          if (sig[55] < 0)
          {
            sub_54A0(buf, *(sig + 4), *(sig + 5));
          }

          else
          {
            *buf = *(sig + 2);
            *&buf[16] = *(sig + 6);
          }

          v17 = *(sig + 8);
          *v25 = *(sig + 7);
          *&v25[8] = v17;
          if (v17)
          {
            atomic_fetch_add_explicit((v17 + 16), 1uLL, memory_order_relaxed);
            if (*&v25[8])
            {
              v18 = std::__shared_weak_count::lock(*&v25[8]);
              if (v18)
              {
                if (*v25)
                {
                  atomic_load(&v11[1].__m_.__opaque[16]);
                  atomic_load(&v11[1].__m_.__opaque[20]);
                  sub_2B0388(*v25);
                }

                sub_1A8C0(v18);
              }

              if (*&v25[8])
              {
                std::__shared_weak_count::__release_weak(*&v25[8]);
              }
            }
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v19 = *(sig + 1);
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
              v20 = *(sig + 2);
              v21 = *v20 == sig;
              sig = v20;
            }

            while (!v21);
          }

          sig = v20;
        }

        while (v20 != v11[1].__m_.__opaque);
      }

      std::mutex::unlock(v11);
    }

    else
    {
      atomic_store(LODWORD(v6), &v22[1].__m_.__opaque[20]);
    }
  }

  if (v23)
  {
    sub_1A8C0(v23);
  }
}

void sub_2B0388(uint64_t a1)
{
  sub_8BEE4();
  v3 = v2 = qword_709F20;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = v3;
  operator new();
}

uint64_t *sub_2B0450(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_2B04A4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v12 = a1;
  v13[0] = v1;
  v13[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 16);
  v14 = *(a1 + 16);
  v4 = *(a1 + 20);
  v15 = v4;
  sub_2AF604(&v18, v13, 229);
  v5 = v18;
  if (v18)
  {
    v6 = *sub_5544(25);
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        if (*(v5 + 47) < 0)
        {
          sub_54A0(__p, *(v5 + 24), *(v5 + 32));
        }

        else
        {
          *__p = *(v5 + 24);
          v17 = *(v5 + 40);
        }

        v9 = __p;
        if (v17 < 0)
        {
          v9 = __p[0];
        }

        v21 = "HearingModeServiceIODelegate.mm";
        v10 = "false";
        v22 = 1024;
        v23 = 236;
        *buf = 136316162;
        if (v3)
        {
          v10 = "true";
        }

        v24 = 2080;
        v25 = v9;
        v26 = 2080;
        v27 = v10;
        v28 = 2048;
        v29 = v4;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Handling Hearing Mode Service IO delegate for chain %s. Enabling? %s. Cap? %.2f", buf, 0x30u);
        if (SHIBYTE(v17) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    sub_278050(*(v5 + 72), v3, v4);
  }

  if (v19)
  {
    sub_1A8C0(v19);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_2B0450(&v12);
}

void sub_2B09C8(id a1)
{
  v1 = *sub_5544(25);
  v2 = v1;
  if (v1 && os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v3 = 136315394;
    *&v3[4] = "HearingModeServiceIODelegate.mm";
    *&v3[12] = 1024;
    *&v3[14] = 121;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d Hearing Mode Server was interrupted, restart client", v3, 0x12u);
  }

  sub_2AF908(v3);
  sub_2AFB14(*v3);
  if (*&v3[8])
  {
    sub_1A8C0(*&v3[8]);
  }
}

void sub_2B0AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2B0AD0(uint64_t a1)
{
  v2 = *sub_5544(25);
  v3 = v2;
  if (v2 && os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "HearingModeServiceIODelegate.mm";
    v9 = 1024;
    v10 = 110;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d Central Hearing Mode Service SPI handler is destroyed", &v7, 0x12u);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(a1 + 120);
    *(a1 + 120) = 0;

    v6 = *(a1 + 120);
  }

  else
  {
    v6 = 0;
  }

  sub_20D854(*(a1 + 96));
  std::mutex::~mutex((a1 + 24));
}

void sub_2B0BD8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2B0BE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6BFA50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2B0C58(caulk::concurrent::message *this)
{
  *this = off_6BFB88;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_2B0CC8(caulk::concurrent::message *this)
{
  *this = off_6BFB88;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_2B0D24(uint64_t a1)
{
  sub_8BEE4();
  v3 = v2 = qword_709F20;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = v3;
  operator new();
}

uint64_t *sub_2B0DD4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v31 = a1;
  v32 = v2;
  v33 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2AF604(&v36, &v32, 188);
  v3 = v36;
  if (v36)
  {
    v5 = *(v36 + 8);
    v4 = *(v36 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_2AF908(&v34);
    if (v4)
    {
      v6 = v34;
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v7 = std::__shared_weak_count::lock(v4);
      if (v7 && v5)
      {
        v8 = *sub_5544(25);
        v9 = v8;
        if (v8)
        {
          v10 = v8;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            if (*(v5 + 47) < 0)
            {
              sub_54A0(__p, *(v5 + 24), *(v5 + 32));
            }

            else
            {
              *__p = *(v5 + 24);
              v39 = *(v5 + 40);
            }

            v15 = __p;
            if (v39 < 0)
            {
              v15 = __p[0];
            }

            *buf = 136315650;
            v43 = "HearingModeServiceIODelegate.mm";
            v44 = 1024;
            v45 = 72;
            v46 = 2080;
            v47 = v15;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d Adding Hearing Mode Service IO delegate %s", buf, 0x1Cu);
            if (SHIBYTE(v39) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        std::mutex::lock(v6);
        v17 = (v6 + 72);
        v16 = *(v6 + 72);
        if (v16)
        {
          v18 = (v6 + 72);
          do
          {
            v19 = sub_6F834(v16 + 4, (v3 + 24));
            if ((v19 & 0x80u) == 0)
            {
              v18 = v16;
            }

            v16 = *(v16 + ((v19 >> 4) & 8));
          }

          while (v16);
          if (v17 != v18)
          {
            if ((sub_6F834((v3 + 24), v18 + 4) & 0x80) == 0)
            {
              atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v20 = v18[8];
              v18[7] = v5;
              v18[8] = v4;
              if (v20)
              {
                std::__shared_weak_count::__release_weak(v20);
              }

              goto LABEL_67;
            }

            if ((sub_6F834((v3 + 24), v18 + 4) & 0x80) == 0)
            {
              if ((sub_6F834(v18 + 4, (v3 + 24)) & 0x80) == 0)
              {
                v40 = v18;
                v41 = v18;
                goto LABEL_65;
              }

              v25 = v18[1];
              if (v25)
              {
                v26 = v18[1];
                do
                {
                  v27 = v26;
                  v26 = *v26;
                }

                while (v26);
              }

              else
              {
                v28 = v18;
                do
                {
                  v27 = v28[2];
                  v24 = *v27 == v28;
                  v28 = v27;
                }

                while (!v24);
              }

              if (v27 == v17 || (v29 = v18[1], v30 = sub_6F834((v3 + 24), v27 + 4), v25 = v29, v30 < 0))
              {
                if (v25)
                {
                  v41 = v27;
                  v18 = v27;
                }

                else
                {
                  v41 = v18++;
                }

                goto LABEL_64;
              }

LABEL_60:
              v18 = sub_6F86C(v6 + 64, &v41, (v3 + 24));
LABEL_64:
              v18 = *v18;
LABEL_65:
              if (!v18)
              {
                operator new();
              }

LABEL_67:
              std::mutex::unlock(v6);
              atomic_load((v6 + 88));
              atomic_load((v6 + 92));
              sub_2B0388(v5);
            }
          }

          v16 = *v18;
        }

        else
        {
          v18 = (v6 + 72);
        }

        v21 = v18;
        if (*(v6 + 64) == v18)
        {
          goto LABEL_61;
        }

        if (v16)
        {
          v22 = v16;
          do
          {
            v21 = v22;
            v22 = v22[1];
          }

          while (v22);
        }

        else
        {
          v23 = v18;
          do
          {
            v21 = v23[2];
            v24 = *v21 == v23;
            v23 = v21;
          }

          while (v24);
        }

        if ((sub_6F834(v21 + 4, (v3 + 24)) & 0x80) != 0)
        {
LABEL_61:
          if (v16)
          {
            v41 = v21;
            v18 = v21 + 1;
          }

          else
          {
            v41 = v18;
          }

          goto LABEL_64;
        }

        goto LABEL_60;
      }
    }

    else
    {
      v7 = 0;
    }

    v11 = *sub_5544(25);
    v12 = v11;
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (*(v3 + 47) >= 0)
      {
        v13 = v3 + 24;
      }

      else
      {
        v13 = *(v3 + 24);
      }

      *buf = 136315650;
      v43 = "HearingModeServiceIODelegate.mm";
      v44 = 1024;
      v45 = 87;
      v46 = 2080;
      v47 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to add Hearing Mode Service IO delegate for chain %s to central SPI handler", buf, 0x1Cu);
    }

    if (v7)
    {
      sub_1A8C0(v7);
      if (!v4)
      {
        goto LABEL_23;
      }
    }

    else if (!v4)
    {
LABEL_23:
      if (v35)
      {
        sub_1A8C0(v35);
      }

      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      goto LABEL_27;
    }

    std::__shared_weak_count::__release_weak(v4);
    goto LABEL_23;
  }

LABEL_27:
  if (v37)
  {
    sub_1A8C0(v37);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_weak(v33);
  }

  return sub_8BE90(&v31);
}

void sub_2B16D8(uint64_t a1)
{
  sub_2B1710(a1);

  operator delete();
}

uint64_t sub_2B1710(uint64_t a1)
{
  v2 = sub_5544(25);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        if (*(a1 + 47) < 0)
        {
          sub_54A0(__p, *(a1 + 24), *(a1 + 32));
        }

        else
        {
          *__p = *(a1 + 24);
          v10 = *(a1 + 40);
        }

        v5 = __p;
        if (v10 < 0)
        {
          v5 = __p[0];
        }

        *buf = 136315650;
        v12 = "HearingModeServiceIODelegate.mm";
        v13 = 1024;
        v14 = 221;
        v15 = 2080;
        v16 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Destroying Hearing Mode Service IO delegate for chain %s", buf, 0x1Cu);
        if (SHIBYTE(v10) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  sub_2AF7B0(a1);
  v6 = *(a1 + 88);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  sub_27781C(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

void sub_2B1880(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_2B189C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6BFB28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_2B1910(uint64_t result)
{
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  strcpy((result + 48), "tlfd");
  *(result + 56) = 0;
  *(result + 128) = 0;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 208) = 0u;
  *(result + 224) = 0u;
  *(result + 240) = 0u;
  *(result + 256) = 0;
  strcpy((result + 264), "tlfd");
  *(result + 272) = 0;
  *(result + 344) = 0;
  *(result + 472) = 0;
  *(result + 440) = 0u;
  *(result + 456) = 0u;
  *(result + 408) = 0u;
  *(result + 424) = 0u;
  *(result + 376) = 0u;
  *(result + 392) = 0u;
  *(result + 360) = 0u;
  strcpy((result + 480), "tlfd");
  *(result + 488) = 0;
  *(result + 560) = 0;
  *(result + 576) = 0u;
  *(result + 592) = 0u;
  *(result + 608) = 0u;
  *(result + 624) = 0u;
  *(result + 640) = 0u;
  *(result + 656) = 0u;
  *(result + 672) = 0u;
  *(result + 688) = 0;
  strcpy((result + 696), "tlfd");
  *(result + 704) = 0;
  *(result + 776) = 0;
  *(result + 792) = 0u;
  *(result + 808) = 0u;
  *(result + 824) = 0u;
  *(result + 840) = 0u;
  *(result + 856) = 0u;
  *(result + 872) = 0u;
  *(result + 888) = 0u;
  *(result + 904) = 0;
  strcpy((result + 912), "tlfd");
  *(result + 920) = 0;
  *(result + 992) = 0;
  *(result + 1008) = 0u;
  *(result + 1024) = 0u;
  *(result + 1040) = 0u;
  *(result + 1056) = 0u;
  *(result + 1072) = 0u;
  *(result + 1088) = 0u;
  *(result + 1104) = 0u;
  *(result + 1120) = 0;
  strcpy((result + 1128), "tlfd");
  *(result + 1136) = 0;
  *(result + 1208) = 0;
  *(result + 1336) = 0;
  *(result + 1304) = 0u;
  *(result + 1320) = 0u;
  *(result + 1272) = 0u;
  *(result + 1288) = 0u;
  *(result + 1240) = 0u;
  *(result + 1256) = 0u;
  *(result + 1224) = 0u;
  strcpy((result + 1344), "tlfd");
  *(result + 1352) = 0;
  *(result + 1424) = 0;
  *(result + 1552) = 0;
  *(result + 1536) = 0u;
  *(result + 1520) = 0u;
  *(result + 1504) = 0u;
  *(result + 1488) = 0u;
  *(result + 1472) = 0u;
  *(result + 1456) = 0u;
  *(result + 1440) = 0u;
  strcpy((result + 1560), "tlfd");
  *(result + 1568) = 0;
  *(result + 1640) = 0;
  *(result + 1768) = 0;
  *(result + 1736) = 0u;
  *(result + 1752) = 0u;
  *(result + 1704) = 0u;
  *(result + 1720) = 0u;
  *(result + 1672) = 0u;
  *(result + 1688) = 0u;
  *(result + 1656) = 0u;
  strcpy((result + 1776), "tlfd");
  *(result + 1784) = 0;
  *(result + 1856) = 0;
  *(result + 1984) = 0;
  *(result + 1968) = 0u;
  *(result + 1952) = 0u;
  *(result + 1936) = 0u;
  *(result + 1920) = 0u;
  *(result + 1904) = 0u;
  *(result + 1888) = 0u;
  *(result + 1872) = 0u;
  strcpy((result + 1992), "tlfd");
  *(result + 2000) = 0;
  *(result + 2072) = 0;
  *(result + 2200) = 0;
  *(result + 2168) = 0u;
  *(result + 2184) = 0u;
  *(result + 2136) = 0u;
  *(result + 2152) = 0u;
  *(result + 2104) = 0u;
  *(result + 2120) = 0u;
  *(result + 2088) = 0u;
  strcpy((result + 2208), "tlfd");
  *(result + 2216) = 0;
  *(result + 2288) = 0;
  *(result + 2416) = 0;
  *(result + 2400) = 0u;
  *(result + 2384) = 0u;
  *(result + 2368) = 0u;
  *(result + 2352) = 0u;
  *(result + 2336) = 0u;
  *(result + 2320) = 0u;
  *(result + 2304) = 0u;
  strcpy((result + 2424), "tlfd");
  *(result + 2432) = 0;
  *(result + 2504) = 0;
  *(result + 2632) = 0;
  *(result + 2600) = 0u;
  *(result + 2616) = 0u;
  *(result + 2568) = 0u;
  *(result + 2584) = 0u;
  *(result + 2536) = 0u;
  *(result + 2552) = 0u;
  *(result + 2520) = 0u;
  strcpy((result + 2640), "tlfd");
  *(result + 2648) = 0;
  *(result + 2720) = 0;
  *(result + 2848) = 0;
  *(result + 2832) = 0u;
  *(result + 2816) = 0u;
  *(result + 2800) = 0u;
  *(result + 2784) = 0u;
  *(result + 2768) = 0u;
  *(result + 2752) = 0u;
  *(result + 2736) = 0u;
  strcpy((result + 2856), "tlfd");
  *(result + 2864) = 0;
  *(result + 2936) = 0;
  *(result + 3064) = 0;
  *(result + 3032) = 0u;
  *(result + 3048) = 0u;
  *(result + 3000) = 0u;
  *(result + 3016) = 0u;
  *(result + 2968) = 0u;
  *(result + 2984) = 0u;
  *(result + 2952) = 0u;
  strcpy((result + 3072), "tlfd");
  *(result + 3080) = 0;
  *(result + 3152) = 0;
  *(result + 3280) = 0;
  *(result + 3264) = 0u;
  *(result + 3248) = 0u;
  *(result + 3232) = 0u;
  *(result + 3216) = 0u;
  *(result + 3200) = 0u;
  *(result + 3184) = 0u;
  *(result + 3168) = 0u;
  strcpy((result + 3288), "tlfd");
  *(result + 3296) = 0;
  *(result + 3368) = 0;
  *(result + 3496) = 0;
  *(result + 3464) = 0u;
  *(result + 3480) = 0u;
  *(result + 3432) = 0u;
  *(result + 3448) = 0u;
  *(result + 3400) = 0u;
  *(result + 3416) = 0u;
  *(result + 3384) = 0u;
  strcpy((result + 3504), "tlfd");
  *(result + 3512) = 0;
  *(result + 3584) = 0;
  *(result + 3712) = 0;
  *(result + 3696) = 0u;
  *(result + 3680) = 0u;
  *(result + 3664) = 0u;
  *(result + 3648) = 0u;
  *(result + 3632) = 0u;
  *(result + 3616) = 0u;
  *(result + 3600) = 0u;
  strcpy((result + 3720), "tlfd");
  *(result + 3728) = 0;
  *(result + 3800) = 0;
  *(result + 3928) = 0;
  *(result + 3896) = 0u;
  *(result + 3912) = 0u;
  *(result + 3864) = 0u;
  *(result + 3880) = 0u;
  *(result + 3832) = 0u;
  *(result + 3848) = 0u;
  *(result + 3816) = 0u;
  strcpy((result + 3936), "tlfd");
  *(result + 3944) = 0;
  *(result + 4016) = 0;
  *(result + 4144) = 0;
  *(result + 4128) = 0u;
  *(result + 4112) = 0u;
  *(result + 4096) = 0u;
  *(result + 4080) = 0u;
  *(result + 4064) = 0u;
  *(result + 4048) = 0u;
  *(result + 4032) = 0u;
  strcpy((result + 4152), "tlfd");
  *(result + 4160) = 0;
  *(result + 4232) = 0;
  *(result + 4360) = 0;
  *(result + 4328) = 0u;
  *(result + 4344) = 0u;
  *(result + 4296) = 0u;
  *(result + 4312) = 0u;
  *(result + 4264) = 0u;
  *(result + 4280) = 0u;
  *(result + 4248) = 0u;
  strcpy((result + 4368), "tlfd");
  *(result + 4376) = 0;
  *(result + 4448) = 0;
  *(result + 4576) = 0;
  *(result + 4560) = 0u;
  *(result + 4544) = 0u;
  *(result + 4528) = 0u;
  *(result + 4512) = 0u;
  *(result + 4496) = 0u;
  *(result + 4480) = 0u;
  *(result + 4464) = 0u;
  strcpy((result + 4584), "tlfd");
  *(result + 4592) = 0;
  *(result + 4664) = 0;
  *(result + 4792) = 0;
  *(result + 4760) = 0u;
  *(result + 4776) = 0u;
  *(result + 4728) = 0u;
  *(result + 4744) = 0u;
  *(result + 4696) = 0u;
  *(result + 4712) = 0u;
  *(result + 4680) = 0u;
  strcpy((result + 4800), "tlfd");
  *(result + 4808) = 0;
  *(result + 4880) = 0;
  *(result + 5008) = 0;
  *(result + 4992) = 0u;
  *(result + 4976) = 0u;
  *(result + 4960) = 0u;
  *(result + 4944) = 0u;
  *(result + 4928) = 0u;
  *(result + 4912) = 0u;
  *(result + 4896) = 0u;
  strcpy((result + 5016), "tlfd");
  *(result + 5024) = 0;
  *(result + 5096) = 0;
  *(result + 5224) = 0;
  *(result + 5192) = 0u;
  *(result + 5208) = 0u;
  *(result + 5160) = 0u;
  *(result + 5176) = 0u;
  *(result + 5128) = 0u;
  *(result + 5144) = 0u;
  *(result + 5112) = 0u;
  strcpy((result + 5232), "tlfd");
  *(result + 5240) = 0;
  *(result + 5312) = 0;
  *(result + 5440) = 0;
  *(result + 5424) = 0u;
  *(result + 5408) = 0u;
  *(result + 5392) = 0u;
  *(result + 5376) = 0u;
  *(result + 5360) = 0u;
  *(result + 5344) = 0u;
  *(result + 5328) = 0u;
  strcpy((result + 5448), "tlfd");
  *(result + 5456) = 0;
  *(result + 5528) = 0;
  *(result + 5656) = 0;
  *(result + 5624) = 0u;
  *(result + 5640) = 0u;
  *(result + 5592) = 0u;
  *(result + 5608) = 0u;
  *(result + 5560) = 0u;
  *(result + 5576) = 0u;
  *(result + 5544) = 0u;
  strcpy((result + 5664), "tlfd");
  *(result + 5672) = 0;
  *(result + 5744) = 0;
  *(result + 5872) = 0;
  *(result + 5856) = 0u;
  *(result + 5840) = 0u;
  *(result + 5824) = 0u;
  *(result + 5808) = 0u;
  *(result + 5792) = 0u;
  *(result + 5776) = 0u;
  *(result + 5760) = 0u;
  strcpy((result + 5880), "tlfd");
  *(result + 5888) = 0;
  *(result + 5960) = 0;
  *(result + 6088) = 0;
  *(result + 6056) = 0u;
  *(result + 6072) = 0u;
  *(result + 6024) = 0u;
  *(result + 6040) = 0u;
  *(result + 5992) = 0u;
  *(result + 6008) = 0u;
  *(result + 5976) = 0u;
  strcpy((result + 6096), "tlfd");
  *(result + 6104) = 0;
  *(result + 6176) = 0;
  *(result + 6256) = 0;
  *(result + 6240) = 0u;
  *(result + 6224) = 0u;
  *(result + 6208) = 0u;
  *(result + 6192) = 0u;
  return result;
}

uint64_t sub_2B1E18(uint64_t a1)
{
  v3 = (a1 + 192);
  sub_2B2060(&v3);
  v3 = (a1 + 168);
  sub_2B2060(&v3);
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 128) == 1)
  {
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
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = a1;
  sub_2B20B4(&v3);
  return a1;
}

uint64_t sub_2B1ECC(uint64_t a1)
{
  sub_2B1E18(a1 + 6696);
  sub_2B1E18(a1 + 6480);
  sub_2B1E18(a1 + 6264);

  return sub_2B1F24(a1);
}

uint64_t sub_2B1F24(uint64_t a1)
{
  sub_2B1E18(a1 + 6048);
  sub_2B1E18(a1 + 5832);
  sub_2B1E18(a1 + 5616);
  sub_2B1E18(a1 + 5400);
  sub_2B1E18(a1 + 5184);
  sub_2B1E18(a1 + 4968);
  sub_2B1E18(a1 + 4752);
  sub_2B1E18(a1 + 4536);
  sub_2B1E18(a1 + 4320);
  sub_2B1E18(a1 + 4104);
  sub_2B1E18(a1 + 3888);
  sub_2B1E18(a1 + 3672);
  sub_2B1E18(a1 + 3456);
  sub_2B1E18(a1 + 3240);
  sub_2B1E18(a1 + 3024);
  sub_2B1E18(a1 + 2808);
  sub_2B1E18(a1 + 2592);
  sub_2B1E18(a1 + 2376);
  sub_2B1E18(a1 + 2160);
  sub_2B1E18(a1 + 1944);
  sub_2B1E18(a1 + 1728);
  sub_2B1E18(a1 + 1512);
  sub_2B1E18(a1 + 1296);
  sub_2B1E18(a1 + 1080);
  sub_2B1E18(a1 + 864);
  sub_2B1E18(a1 + 648);
  sub_2B1E18(a1 + 432);
  sub_2B1E18(a1 + 216);

  return sub_2B1E18(a1);
}

void sub_2B2060(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2B2160(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2B20B4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2B2108(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2B2108(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_2B2160(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 16);
    if (v4)
    {
      sub_1A8C0(v4);
    }
  }

  a1[1] = v2;
}

void sub_2B21AC(uint64_t *a1)
{
  if (*a1)
  {
    sub_2B2108(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2B21EC(uint64_t *a1)
{
  if (*a1)
  {
    sub_2B2160(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_2B222C(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
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

    *(a1 + 72) = 0;
  }
}

uint64_t sub_2B2290(uint64_t a1)
{
  sub_2B1E18(a1 + 6480);
  sub_2B1E18(a1 + 6264);

  return sub_2B1F24(a1);
}

void sub_2B22DC(uint64_t a1, std::string::size_type a2)
{
  v4 = (a1 + 4096);
  v5 = sub_2B1910(a1);
  v6 = v5 + 6264;
  *(v5 + 6280) = 0u;
  *(v5 + 6296) = 0u;
  *(v5 + 6264) = 0u;
  *(v5 + 6312) = 1684434036;
  v4[2220] = 0;
  v4[2224] = 0;
  v4[2296] = 0;
  *(v5 + 6408) = 0u;
  *(v5 + 6424) = 0u;
  *(v5 + 6440) = 0u;
  *(v5 + 6456) = 0u;
  *(v5 + 6472) = 0u;
  *(v5 + 6488) = 0u;
  *(v5 + 6504) = 0u;
  *(v5 + 6520) = 0;
  *(v5 + 6528) = 1684434036;
  v4[2436] = 0;
  v4[2440] = 0;
  v4[2512] = 0;
  *(v5 + 6736) = 0;
  *(v5 + 6720) = 0u;
  *(v5 + 6704) = 0u;
  *(v5 + 6688) = 0u;
  *(v5 + 6672) = 0u;
  *(v5 + 6656) = 0u;
  *(v5 + 6640) = 0u;
  *(v5 + 6624) = 0u;
  *(v5 + 6744) = 1684434036;
  v4[2652] = 0;
  v4[2656] = 0;
  v4[2728] = 0;
  *(v5 + 6840) = 0u;
  *(v5 + 6856) = 0u;
  *(v5 + 6872) = 0u;
  *(v5 + 6888) = 0u;
  *(v5 + 6904) = 0;
  v17 = 0;
  *v15 = 0u;
  v16 = 0u;
  v48 = 2;
  v47 = xmmword_5C76D0;
  sub_123D6C(v15, &v47, 3);
  sub_2B2584(a1, "headset_general", "headset_latenight_general", "headset_movie", "headset_latenight_general", "headset_latenight_movie", a2, v15, 0, 1, v7, v8, v9, v10, v11, __p, v13, v14, v15[0], v15[1], SBYTE2(v15[1]), SHIBYTE(v15[1]), v15[2], v16, *(&v16 + 1), v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  sub_DDE50(v15);
  sub_430E4C(v15, 0x200000002uLL);
  sub_1C3874(v6, v15);
  sub_2B1E18(v15);
  LODWORD(v47) = -1046478848;
  sub_43379C(v15, &v47);
}

void sub_2B252C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_DDE50(&a11);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_2B1ECC(v22);
  _Unwind_Resume(a1);
}

void sub_2B2584(uint64_t a1, char *__s, char *a3, char *a4, char *a5, char *a6, std::string::size_type a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  sub_434DE4(v71, 0, __s, __s, a7, 0x77646566u, 0, 0, __s, a8);
  sub_1C3874(a1, v71);
  sub_2B1E18(v71);
  sub_53E8(&__p, __s);
  sub_DDBBC(v69, a8);
  sub_2B2E4C(v71, 0, &__p, v69, a7, 1);
  sub_1C3874(a1 + 216, v71);
  sub_2B1E18(v71);
  sub_DDE50(v69);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_53E8(&v68, a3);
  sub_DDBBC(v67, a8);
  sub_2B2E4C(v71, 1, &v68, v67, a7, 1);
  sub_1C3874(a1 + 432, v71);
  sub_2B1E18(v71);
  sub_DDE50(v67);
  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  sub_53E8(&v66, a5);
  sub_DDBBC(v65, a8);
  sub_2B2E4C(v71, 3, &v66, v65, a7, 1);
  sub_1C3874(a1 + 648, v71);
  sub_2B1E18(v71);
  sub_DDE50(v65);
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  sub_434DE4(v71, 0, __s, __s, a7, 0x48623135u, 1, 0, __s, a8);
  sub_1C3874(a1 + 864, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 1, a3, a3, a7, 0x48623135u, 1, 0, a3, a8);
  sub_1C3874(a1 + 1080, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 2, a4, a4, a7, 0x48623135u, 1, 0, a4, a8);
  sub_1C3874(a1 + 1296, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 3, a5, a6, a7, 0x48623135u, 1, 0, a6, a8);
  sub_1C3874(a1 + 1512, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 0, __s, __s, a7, 0x48613336u, 1, 0, __s, a8);
  sub_1C3874(a1 + 1728, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 1, a3, a3, a7, 0x48613336u, 1, 0, a3, a8);
  sub_1C3874(a1 + 1944, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 2, a4, a4, a7, 0x48613336u, 1, 0, a4, a8);
  sub_1C3874(a1 + 2160, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 3, a5, a6, a7, 0x48613336u, 1, 0, a6, a8);
  sub_1C3874(a1 + 2376, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 0, __s, __s, a7, 0x62363066u, 1, 0, __s, a8);
  sub_1C3874(a1 + 2592, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 1, a3, a3, a7, 0x62363066u, 1, 0, a3, a8);
  sub_1C3874(a1 + 2808, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 2, a4, a4, a7, 0x62363066u, 1, 0, a4, a8);
  sub_1C3874(a1 + 3024, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 3, a5, a6, a7, 0x62363066u, 1, 0, a6, a8);
  sub_1C3874(a1 + 3240, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 0, __s, __s, a7, 0x62363067u, 1, 0, __s, a8);
  sub_1C3874(a1 + 3456, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 1, a3, a3, a7, 0x62363067u, 1, 0, a3, a8);
  sub_1C3874(a1 + 3672, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 2, a4, a4, a7, 0x62363067u, 1, 0, a4, a8);
  sub_1C3874(a1 + 3888, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 3, a5, a6, a7, 0x62363067u, 1, 0, a6, a8);
  sub_1C3874(a1 + 4104, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 0, __s, __s, a7, 0, 1, 0, __s, a8);
  sub_1C3874(a1 + 4320, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 1, a3, a3, a7, 0, 1, 0, a3, a8);
  sub_1C3874(a1 + 4536, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 2, a4, a4, a7, 0, 1, 0, a4, a8);
  sub_1C3874(a1 + 4752, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 3, a5, a6, a7, 0, 1, 0, a6, a8);
  sub_1C3874(a1 + 4968, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 0, __s, __s, a7, 0x68783930u, 0, 0, __s, a8);
  sub_1C3874(a1 + 5184, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 1, a3, a3, a7, 0x68783930u, 0, 0, a3, a8);
  sub_1C3874(a1 + 5400, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 2, a4, a4, a7, 0x68783930u, 0, 0, a4, a8);
  sub_1C3874(a1 + 5616, v71);
  sub_2B1E18(v71);
  sub_434DE4(v71, 3, a5, a6, a7, 0x68783930u, 0, 0, a6, a8);
  sub_1C3874(a1 + 5832, v71);
  sub_2B1E18(v71);
  sub_53E8(&v64, __s);
  sub_DDBBC(v63, a8);
  sub_2B2E4C(v71, 0, &v64, v63, a7, 1);
  sub_1C3874(a1 + 6048, v71);
  sub_2B1E18(v71);
  sub_DDE50(v63);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }
}

void sub_2B2E4C(void *a1, int a2, std::string *a3, void *a4, std::string::size_type a5, int a6)
{
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_34;
  }

  v36 = a6;
  v35 = a1;
  v12 = a4;
  v13 = a2;
  v14 = a5;
  v15 = 0;
  v16 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v18 = a3->__r_.__value_.__r.__words[0];
  size = a3->__r_.__value_.__l.__size_;
  while (1)
  {
    v19 = strlen(off_6BFBA0[v15]);
    v20 = v19;
    if ((v16 & 0x80) == 0)
    {
      break;
    }

    if (v19 == size)
    {
      v21 = v18;
      if (size == -1)
      {
        sub_1DE47C();
      }

      goto LABEL_8;
    }

LABEL_9:
    if (++v15 == 6)
    {
      a5 = v14;
      a2 = v13;
      a4 = v12;
      a1 = v35;
      goto LABEL_33;
    }
  }

  v21 = a3;
  if (v20 != v16)
  {
    goto LABEL_9;
  }

LABEL_8:
  if (memcmp(v21, off_6BFBA0[v15], v20))
  {
    goto LABEL_9;
  }

  a5 = v14;
  a2 = v13;
  a4 = v12;
  a1 = v35;
  sub_2B3100(v37, a4, 1);
  sub_2B3338(a4, v37);
  sub_DDE50(v37);
  v22 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v22 < 0)
  {
    v23 = a3->__r_.__value_.__r.__words[0];
    v25 = a3->__r_.__value_.__l.__size_;
    if (v25 == 11)
    {
      goto LABEL_15;
    }

    __s1 = a3->__r_.__value_.__r.__words[0];
    v36 = 1;
  }

  else
  {
    v23 = a3;
    if (v22 != 11)
    {
      v24 = 1;
      goto LABEL_21;
    }

LABEL_15:
    v26 = *v23;
    v27 = *(v23 + 3);
    v24 = v26 != 0x74756F5F69726973 || v27 != 0x74757074756F5F69;
LABEL_21:
    v36 = v24;
    v25 = a3->__r_.__value_.__l.__size_;
    __s1 = a3->__r_.__value_.__r.__words[0];
  }

  v29 = 0;
  while (2)
  {
    v30 = strlen(off_6BFBD0[v29]);
    v31 = v30;
    if ((v22 & 0x80000000) != 0)
    {
      if (v30 != v25)
      {
        goto LABEL_29;
      }

      v32 = __s1;
      if (v25 == -1)
      {
        sub_1DE47C();
      }
    }

    else
    {
      v32 = a3;
      if (v31 != v22)
      {
LABEL_29:
        if (++v29 == 3)
        {
          goto LABEL_32;
        }

        continue;
      }
    }

    break;
  }

  if (memcmp(v32, off_6BFBD0[v29], v31))
  {
    goto LABEL_29;
  }

  sub_2B3100(v37, a4, 2);
  sub_2B3338(a4, v37);
  sub_DDE50(v37);
LABEL_32:
  std::string::append(a3, "_av", 3uLL);
LABEL_33:
  a6 = v36;
LABEL_34:
  if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
  {
    a3 = a3->__r_.__value_.__r.__words[0];
  }

  if (a6)
  {
    __s = a3;
  }

  else
  {
    __s = 0;
  }

  sub_434DE4(a1, a2, a3, a3, a5, 0x61613264u, 1, 1, __s, a4);
}

uint64_t sub_2B3100(void *a1, uint64_t a2, int a3)
{
  result = sub_DDBBC(a1, a2);
  v6 = *(result + 8);
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = a3;
    if (v6 <= a3)
    {
      v8 = a3 % v6;
    }
  }

  else
  {
    v8 = (v6 - 1) & a3;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == a3)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= v6)
      {
        v11 %= v6;
      }
    }

    else
    {
      v11 &= v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (*(v10 + 4) != a3)
  {
    goto LABEL_17;
  }

  *(v10 + 20) = 1;
  return result;
}

void sub_2B3314(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_DDE50(v1);
  _Unwind_Resume(a1);
}

void sub_2B3338(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 16) = 0;
    v6 = *(a1 + 8);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v8 = *a2;
  *a2 = 0;
  v9 = *a1;
  *a1 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v12 = a2[2];
  v11 = a2 + 2;
  v10 = v12;
  v13 = *(v11 - 1);
  *(a1 + 16) = v12;
  *(a1 + 8) = v13;
  *(v11 - 1) = 0;
  v14 = v11[1];
  *(a1 + 24) = v14;
  *(a1 + 32) = *(v11 + 4);
  if (v14)
  {
    v15 = *(v10 + 8);
    v16 = *(a1 + 8);
    if ((v16 & (v16 - 1)) != 0)
    {
      if (v15 >= v16)
      {
        v15 %= v16;
      }
    }

    else
    {
      v15 &= v16 - 1;
    }

    *(*a1 + 8 * v15) = a1 + 16;
    *v11 = 0;
    v11[1] = 0;
  }
}

void sub_2B379C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_DDE50(&a14);
  sub_DDE50(&a9);
  sub_2B2290(v14);
  _Unwind_Resume(a1);
}

void sub_2B37D4(std::string *__dst, std::string *__str)
{
  if (__dst[3].__r_.__value_.__s.__data_[0] == __str[3].__r_.__value_.__s.__data_[0])
  {
    if (__dst[3].__r_.__value_.__s.__data_[0])
    {
      std::string::operator=(__dst, __str);
      std::string::operator=(__dst + 1, __str + 1);

      std::string::operator=(__dst + 2, __str + 2);
    }
  }

  else if (__dst[3].__r_.__value_.__s.__data_[0])
  {

    sub_2B222C(__dst);
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_54A0(__dst, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v4 = *&__str->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v4;
    }

    if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_54A0(&__dst[1], __str[1].__r_.__value_.__l.__data_, __str[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = *&__str[1].__r_.__value_.__l.__data_;
      __dst[1].__r_.__value_.__r.__words[2] = __str[1].__r_.__value_.__r.__words[2];
      *&__dst[1].__r_.__value_.__l.__data_ = v5;
    }

    if (SHIBYTE(__str[2].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_54A0(&__dst[2], __str[2].__r_.__value_.__l.__data_, __str[2].__r_.__value_.__l.__size_);
    }

    else
    {
      v6 = *&__str[2].__r_.__value_.__l.__data_;
      __dst[2].__r_.__value_.__r.__words[2] = __str[2].__r_.__value_.__r.__words[2];
      *&__dst[2].__r_.__value_.__l.__data_ = v6;
    }

    __dst[3].__r_.__value_.__s.__data_[0] = 1;
  }
}

void sub_2B38EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2B3920(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  if (v6)
  {
    sub_1A8C0(v6);
  }

  *(a1 + 16) = *(a2 + 4);
  return a1;
}

uint64_t sub_2B3974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (result = a4; a2 != a3; result += 24)
  {
    v5 = *(a2 + 8);
    *result = *a2;
    *(result + 8) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    *(result + 16) = *(a2 + 16);
    a2 += 24;
  }

  return result;
}

void sub_2B39B4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_2761D8(a2);
  }

  sub_189A00();
}

char **sub_2B3A04(char **a1, char **a2, uint64_t a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      if (v4 != a3)
      {
        v6 = *v4;
        v7 = v4[1];
        v8 = v7 - *v4;
        v9 = *(a3 + 16);
        v10 = *a3;
        if (v9 - *a3 < v8)
        {
          if (v10)
          {
            *(a3 + 8) = v10;
            operator delete(v10);
            v9 = 0;
            *a3 = 0;
            *(a3 + 8) = 0;
            *(a3 + 16) = 0;
          }

          v11 = v8 >> 3;
          if (!((v8 >> 3) >> 61))
          {
            if (v9 >> 2 > v11)
            {
              v11 = v9 >> 2;
            }

            if (v9 >= 0x7FFFFFFFFFFFFFF8)
            {
              v12 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v12 = v11;
            }

            sub_99B50(a3, v12);
          }

          sub_189A00();
        }

        v13 = *(a3 + 8);
        v14 = v13 - v10;
        if (v13 - v10 >= v8)
        {
          if (v7 != v6)
          {
            memmove(v10, v6, v8);
          }

          v17 = &v10[v8];
        }

        else
        {
          if (v13 != v10)
          {
            memmove(*a3, *v4, v13 - v10);
            v13 = *(a3 + 8);
          }

          v15 = &v6[v14];
          v16 = v7 - &v6[v14];
          if (v16)
          {
            memmove(v13, v15, v16);
          }

          v17 = &v13[v16];
        }

        *(a3 + 8) = v17;
      }

      v4 += 3;
      a3 += 24;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void *sub_2B3B58(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        sub_99B50(v4, (v6 - *v5) >> 3);
      }

      v5 += 3;
      v4 += 3;
      v11 = v4;
    }

    while (v5 != a3);
  }

  v9 = 1;
  sub_2815B0(v8);
  return v4;
}

void sub_2B3C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_2815B0(&a9);
  _Unwind_Resume(a1);
}

void sub_2B3C44(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_2B3C94(a2);
  }

  sub_189A00();
}

void sub_2B3C94(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_2B3CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v5 = a5;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  sub_1C2D48(a1, a2, a3, a4);
}

void sub_2B410C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 256) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
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
  sub_1C2D48(a1, a2, a3, a4);
}

void sub_2B42C4(uint64_t *a1, int a2)
{
  v4 = 0;
  v18 = 0x757362446A333237;
  do
  {
    v5 = *a1;
    v6 = *(&v18 + v4);
    sub_C57B4(v15, 1, a2, v6);
    sub_3FC3D0(v5, v15, &unk_707CC8);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v7 = *a1;
    sub_C57B4(v15, 1, a2, v6);
    sub_3FD764(v7, v15, qword_708650, 0);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v8 = *a1;
    DWORD2(v14) = 0;
    *&v14 = 3;
    sub_C8A18(v15, a2, &v14, v6);
    sub_3FD29C(v8, v15, &unk_707CC8);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v9 = *a1;
    DWORD2(v14) = 0;
    *&v14 = 3;
    sub_C8A18(v15, a2, &v14, v6);
    sub_3FD764(v9, v15, qword_708650, 0);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v10 = *a1;
    DWORD2(v14) = 0;
    *&v14 = 2;
    sub_C8A18(v15, a2, &v14, v6);
    sub_3FD29C(v10, v15, &unk_707CC8);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v11 = *a1;
    DWORD2(v14) = 0;
    *&v14 = 2;
    sub_C8A18(v15, a2, &v14, v6);
    sub_3FD764(v11, v15, qword_708650, 0);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v12 = *a1;
    DWORD2(v14) = 0;
    *&v14 = 1;
    sub_C8A18(v15, a2, &v14, v6);
    sub_3FD29C(v12, v15, &unk_707CC8);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v13 = *a1;
    DWORD2(v14) = 0;
    *&v14 = 1;
    sub_C8A18(v15, a2, &v14, v6);
    sub_3FD764(v13, v15, qword_708650, 0);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v4 += 4;
  }

  while (v4 != 8);
}

void sub_2B4578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2B45B8(uint64_t a1, unsigned int **a2, int a3)
{
  v3 = *(a1 + 904);
  if (!v3)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "Device_Codec_Aspen.cpp";
      v9 = 1024;
      v10 = 984;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): No valid support policy present", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "No valid support policy present");
  }

  sub_408A74(v3, a2, a3);
}

void sub_2B46E4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 144);
  switch(v5)
  {
    case 1886216809:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      sub_310328(&theData);
      v47 = v51;
      if (v51 == 1)
      {
        v6 = theData;
        __p[1] = 0;
        v49 = 0;
        __p[0] = 0;
        if (theData && (BytePtr = CFDataGetBytePtr(theData), Length = CFDataGetLength(v6), BytePtr))
        {
          v9 = Length;
          if (Length <= 3)
          {
            v42 = sub_5544(14);
            v43 = *v42;
            if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v55 = "Device_Codec_Aspen.cpp";
              v56 = 1024;
              v57 = 1701;
              _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }
          }

          else
          {
            LODWORD(v10) = *BytePtr;
            v11 = sub_5544(18);
            v12 = *v11;
            if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316162;
              v55 = "Device_Codec_Aspen.cpp";
              v56 = 1024;
              v57 = 1708;
              v58 = 1024;
              *v59 = WORD1(v10);
              *&v59[4] = 1024;
              *&v59[6] = BYTE1(v10);
              LOWORD(v60) = 1024;
              *(&v60 + 2) = v10;
              _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Mic Trim gains: version %d, size %d, entries %d", buf, 0x24u);
            }

            if (WORD1(v10) == 1 && (v10 & 0xFF00) == 0x200)
            {
              v10 = v10;
              if (v10)
              {
                if (v9 > 7)
                {
                  v29 = (BytePtr + 4);
                  v10 = v10;
                  while (1)
                  {
                    v14 = __p[0];
                    v13 = __p[1];
                    if (v10 <= ((__p[1] - __p[0]) >> 2))
                    {
                      break;
                    }

                    v30 = (*v29 >> 16) * 0.1;
                    v31 = *v29 * 0.1;
                    v52 = v31;
                    v53 = v30;
                    sub_2B4F3C(__p, &v53);
                    sub_2B4F3C(__p, &v52);
                    v32 = sub_5544(18);
                    v33 = *v32;
                    if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315906;
                      v55 = "Device_Codec_Aspen.cpp";
                      v56 = 1024;
                      v57 = 1729;
                      v58 = 2048;
                      *v59 = v30;
                      *&v59[8] = 2048;
                      v60 = v31;
                      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Parsed trim gains: %f %f", buf, 0x26u);
                    }

                    if (++v29 > &BytePtr[v9 - 4])
                    {
                      v14 = __p[0];
                      v13 = __p[1];
                      break;
                    }
                  }
                }

                else
                {
                  v13 = 0;
                  v14 = 0;
                }

                v34 = v13 - v14;
                if (v10 < v34 >> 2)
                {
                  v35 = v34 - 4;
                  do
                  {
                    v13 -= 4;
                    v21 = v10 >= v35 >> 2;
                    v35 -= 4;
                  }

                  while (!v21);
                  __p[1] = v13;
                }
              }

              else
              {
                v27 = sub_5544(18);
                v28 = *v27;
                if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v55 = "Device_Codec_Aspen.cpp";
                  v56 = 1024;
                  v57 = 1714;
                  _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Number of Mic trim gain entries is zero", buf, 0x12u);
                }
              }

              v36 = v49;
              *a3 = *__p;
              a3[2] = v36;
              goto LABEL_57;
            }

            v44 = sub_5544(14);
            v45 = *v44;
            if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v55 = "Device_Codec_Aspen.cpp";
              v56 = 1024;
              v57 = 1710;
              _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }
          }
        }

        else
        {
          v40 = sub_5544(14);
          v41 = *v40;
          if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v55 = "Device_Codec_Aspen.cpp";
            v56 = 1024;
            v57 = 1700;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Precondition failure.");
      }

      v15 = *(a1 + 904);
      v18 = *(v15 + 72);
      v16 = v15 + 72;
      v17 = v18;
      if (!v18)
      {
        goto LABEL_61;
      }

      v19 = v16;
      do
      {
        v20 = *(v17 + 32);
        v21 = v20 >= 0x706D6269;
        v22 = v20 < 0x706D6269;
        if (v21)
        {
          v19 = v17;
        }

        v17 = *(v17 + 8 * v22);
      }

      while (v17);
      if (v19 == v16 || *(v19 + 32) > 0x706D6269u)
      {
LABEL_61:
        v37 = sub_5544(14);
        v38 = *v37;
        if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v55 = "Device_Codec_Aspen.cpp";
          v56 = 1024;
          v57 = 1753;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unable to locate built-in mic sub-port information", buf, 0x12u);
        }

        v39 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v39, "Unable to locate built-in mic sub-port information");
      }

      for (i = *(v19 + 40); i != *(v19 + 48); ++i)
      {
        v24 = sub_5544(18);
        if (*(v24 + 8))
        {
          v25 = *v24;
          if (*v24)
          {
            if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
            {
              sub_22170(__p, *i);
              v26 = __p;
              if (v49 < 0)
              {
                v26 = __p[0];
              }

              *buf = 136315650;
              v55 = "Device_Codec_Aspen.cpp";
              v56 = 1024;
              v57 = 1759;
              v58 = 2080;
              *v59 = v26;
              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting trim for Data Source ID %s", buf, 0x1Cu);
              if (SHIBYTE(v49) < 0)
              {
                operator delete(__p[0]);
              }
            }
          }
        }

        *buf = 0;
        if (sub_2B5014(a1, 1768845428, *i, buf))
        {
          sub_2B4F3C(a3, buf);
        }
      }

LABEL_57:
      if (v47)
      {
        if (theData)
        {
          CFRelease(theData);
        }
      }

      return;
    case 1886545251:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      *buf = 0;
      if (sub_2B5014(a1, 1869968496, 3, buf))
      {
        goto LABEL_5;
      }

      break;
    case 1886613611:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      *buf = 0;
      if (sub_2B5014(a1, 1869968496, 4, buf))
      {
LABEL_5:
        sub_2B4F3C(a3, buf);
      }

      break;
    default:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      break;
  }
}

void sub_2B4EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16)
{
  __cxa_free_exception(v17);
  sub_2B50D0(&a16);
  v19 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void sub_2B4F3C(uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_189A00();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_1D7C28(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_2B5014(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v9[0] = 1635021667;
  v9[1] = a2;
  v9[2] = a3;
  v6 = (*(*a1 + 16))(a1, v9);
  if (v6)
  {
    v8 = 4;
    (*(*a1 + 40))(a1, v9, 0, 0, &v8, a4);
  }

  return v6;
}

uint64_t sub_2B50D0(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void *sub_2B5110@<X0>(void *result@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  if (a2 == 1886216809)
  {
    v3 = *(result[114] + 32);
    if (!v3)
    {
      v10 = *sub_5544(14);
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v13 = 136315394;
          v14 = "Device_Codec_Aspen.cpp";
          v15 = 1024;
          v16 = 993;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [mTransducerDatabase.mBuiltInMicDefaultSubPort is NULL]: No default sub-port specified for built-in mic.", &v13, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "No default sub-port specified for built-in mic.");
    }

    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    if ((v5 - v4) >= 0x41 && v4 != v5)
    {
      v9 = v4;
      while (v9[8] != 1869442665)
      {
        v9 += 16;
        if (v9 == v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v9;
    }

LABEL_8:
    v13 = *v4;
    return sub_1E54B0(a3, &v13, 1);
  }

  else
  {
    v8 = result[113];
    if (v8)
    {

      return sub_40AC30(a3, v8, a2);
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }
  }

  return result;
}

void sub_2B52EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_5544(18);
  if (*(v4 + 8))
  {
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(a2 + 16);
        sub_2B54B0(&__p, *(a2 + 8), a2);
        v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315906;
        v13 = "Device_Codec_Aspen.cpp";
        v14 = 1024;
        v15 = 973;
        v16 = 2048;
        v17 = v6;
        v18 = 2080;
        v19 = v7;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d inPortList (%zu): %s.", buf, 0x26u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v8 = sub_346C5C(1886154613, a2);
  if (!sub_2B55C8(a1) && v8)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "Device_Codec_Aspen.cpp";
        v14 = 1024;
        v15 = 976;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unexpected lineout port", buf, 0x12u);
      }
    }
  }

  *(a1 + 896) = v8;
}

std::string *sub_2B54B0(std::string *a1, uint64_t a2, uint64_t a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      sub_FC33C(__p, a2 + 16);
      v7 = (v10 & 0x80u) == 0 ? __p : __p[0];
      v8 = (v10 & 0x80u) == 0 ? v10 : __p[1];
      std::string::append(a1, v7, v8);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      a2 = *(a2 + 8);
      if (a2 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_2B558C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2B55B0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2B5598);
}

BOOL sub_2B55C8(uint64_t a1)
{
  v1 = (*(*a1 + 120))(a1);
  *&v3.mSelector = 0x6F757470766F6C6DLL;
  v3.mElement = 2;
  return AudioObjectHasProperty(v1, &v3) != 0;
}

uint64_t sub_2B5630(uint64_t a1, signed int a2)
{
  if (a2 > 1886545250)
  {
    switch(a2)
    {
      case 1886545251:
        return 3;
      case 1886613611:
        return 4;
      case 1886680175:
        return 1;
      default:
        goto LABEL_13;
    }
  }

  else
  {
    if (a2 != 1885888867)
    {
      if (a2 != 1885892727)
      {
        if (a2 == 1886154613)
        {
          return 2;
        }

LABEL_13:
        v3 = sub_5544(18);
        v4 = *v3;
        if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, a2);
          v5 = v12 >= 0 ? __p : __p[0];
          *buf = 136315650;
          v14 = "Device_Codec_Aspen.cpp";
          v15 = 1024;
          v16 = 962;
          v17 = 2080;
          v18 = v5;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v6 = sub_5544(14);
        v7 = *v6;
        if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, a2);
          if (v12 >= 0)
          {
            v8 = __p;
          }

          else
          {
            v8 = __p[0];
          }

          *buf = 136315650;
          v14 = "Device_Codec_Aspen.cpp";
          v15 = 1024;
          v16 = 963;
          v17 = 2080;
          v18 = v8;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType: %s.", buf, 0x1Cu);
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType: %s.");
      }

      return 1;
    }

    return 5;
  }
}

void sub_2B58C0(void *a1@<X8>)
{
  if (sub_310A30())
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    sub_CE168();
    sub_53E8(__p, "AOP Audio-1");
    sub_CDEB8(a1, __p);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2B5928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2B5944(uint64_t a1)
{
  if (*(a1 + 896) == 1)
  {
    sub_2B595C(a1, 0);
  }
}

void sub_2B595C(uint64_t a1, int a2)
{
  if (!sub_2B55C8(a1))
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13)
    {
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315394;
        v19 = "Device_Codec_Aspen.cpp";
        v20 = 1024;
        v21 = 1641;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Does not support lineout", &v18, 0x12u);
      }
    }
  }

  if (*(a1 + 896) == 1)
  {
    v4 = sub_5544(18);
    if (*(v4 + 8))
    {
      v5 = *v4;
      if (*v4)
      {
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
        {
          v6 = "down";
          v19 = "Device_Codec_Aspen.cpp";
          v18 = 136315650;
          if (a2)
          {
            v6 = "up";
          }

          v20 = 1024;
          v21 = 1644;
          v22 = 2080;
          v23 = v6;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Will attempt to power %s the output accessory.", &v18, 0x1Cu);
        }
      }
    }

    v7 = *(sub_3419E4() + 104);
    if (a2)
    {
      started = IAPAudioStartPlaybackForTransport();
      v9 = sub_5544(11);
      v10 = *v9;
      if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
      {
        v18 = 136315650;
        v19 = "IAPManager.cpp";
        v20 = 1024;
        v21 = 303;
        v22 = 1024;
        LODWORD(v23) = started;
        v11 = "%25s:%-5d IAPAudioStartPlaybackForTransport() returned %u.";
LABEL_16:
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, v11, &v18, 0x18u);
      }
    }

    else
    {
      started = IAPAudioStopPlaybackForTransport();
      v12 = sub_5544(11);
      v10 = *v12;
      if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
      {
        v18 = 136315650;
        v19 = "IAPManager.cpp";
        v20 = 1024;
        v21 = 308;
        v22 = 1024;
        LODWORD(v23) = started;
        v11 = "%25s:%-5d IAPAudioStopPlaybackForTransport() returned %u.";
        goto LABEL_16;
      }
    }

    if (started != 1)
    {
      v15 = sub_5544(14);
      v16 = *v15;
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
        {
          v18 = 136315394;
          v19 = "Device_Codec_Aspen.cpp";
          v20 = 1024;
          v21 = 1646;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): IAPManager::SetPlaybackAccessoryEnabled failed.", &v18, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 2003329396;
    }
  }
}

void sub_2B5C8C(uint64_t a1)
{
  if (*(a1 + 896) == 1)
  {
    sub_2B595C(a1, 1);
  }
}

uint64_t sub_2B5CA4(void *a1)
{
  sub_4ADCC0(a1);
  v103[0] = 1;
  *&v103[1] = 0x6F7574706D757465;
  v103[3] = 1;
  if ((*(*a1 + 16))(a1, &v103[1]))
  {
    (*(*a1 + 48))(a1, &v103[1], 0, 0, 4, v103);
  }

  v103[3] = 2;
  if ((*(*a1 + 16))(a1, &v103[1]))
  {
    (*(*a1 + 48))(a1, &v103[1], 0, 0, 4, v103);
  }

  v103[3] = 3;
  if ((*(*a1 + 16))(a1, &v103[1]))
  {
    (*(*a1 + 48))(a1, &v103[1], 0, 0, 4, v103);
  }

  v103[3] = 4;
  if ((*(*a1 + 16))(a1, &v103[1]))
  {
    (*(*a1 + 48))(a1, &v103[1], 0, 0, 4, v103);
  }

  v103[0] = 0;
  strcpy(&v103[1], "w2bburtp");
  BYTE1(v103[3]) = 0;
  HIWORD(v103[3]) = 0;
  if ((*(*a1 + 16))(a1, &v103[1]))
  {
    (*(*a1 + 48))(a1, &v103[1], 0, 0, 4, v103);
  }

  v103[1] = 1999790690;
  if ((*(*a1 + 16))(a1, &v103[1]))
  {
    (*(*a1 + 48))(a1, &v103[1], 0, 0, 4, v103);
  }

  v103[1] = 1718432370;
  if ((*(*a1 + 16))(a1, &v103[1]))
  {
    (*(*a1 + 48))(a1, &v103[1], 0, 0, 4, v103);
  }

  v103[0] = 0;
  strcpy(&v103[1], "tumdptuo");
  BYTE1(v103[3]) = 0;
  HIWORD(v103[3]) = 0;
  if ((*(*a1 + 16))(a1, &v103[1]))
  {
    (*(*a1 + 48))(a1, &v103[1], 0, 0, 4, v103);
  }

  v101 = 4;
  v102 = 0.0;
  strcpy(&v103[1], "dlovptuo");
  BYTE1(v103[3]) = 0;
  HIWORD(v103[3]) = 0;
  if ((*(*a1 + 16))(a1, &v103[1]))
  {
    (*(*a1 + 40))(a1, &v103[1], 0, 0, &v101, &v102);
    v2 = v102;
    if (v102 != 0.0)
    {
      v102 = 0.0;
      (*(*a1 + 48))(a1, &v103[1], 0, 0, 4, &v102, v2);
    }
  }

  BYTE1(v103[3]) = 0;
  HIWORD(v103[3]) = 0;
  strcpy(v103, "Ms2icrscbolg");
  if ((*(*a1 + 16))(a1, &v103[1]))
  {
    (*(*a1 + 48))(a1, &v103[1], 0, 0, 4, v103);
  }

  inAddress = 0x6F7574706A61636BLL;
  LODWORD(inAddress_8) = 0;
  v3 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v3, &inAddress))
  {
    v4 = (*(*a1 + 120))(a1);
    *v129 = sub_2BB884(v4, 1);
    *&v129[8] = v5;
    v6 = a1[11];
    *&v127 = a1[10];
    *(&v127 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    v122.mSelector = 1869968496;
    v120.mSelector = 1;
    LODWORD(v111) = 0;
    LODWORD(v104) = 74;
    sub_2BBA64();
  }

  if (sub_2B55C8(a1))
  {
    v7 = (*(*a1 + 120))(a1);
    *v129 = sub_2BB884(v7, 2);
    *&v129[8] = v8;
    v9 = a1[11];
    *&v127 = a1[10];
    *(&v127 + 1) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  *&v122.mSelector = 0x6F7574706D757465;
  v122.mElement = 4;
  v10 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v10, &v122))
  {
    if (qword_6E8528 != -1)
    {
      dispatch_once(&qword_6E8528, &stru_6BD0C8);
    }

    if (byte_6E8520 == 1)
    {
      sub_15DCEC();
    }

    v11 = (*(*a1 + 120))(a1);
    *v129 = sub_2BB884(v11, 4);
    *&v129[8] = v12;
    v13 = a1[11];
    *&v127 = a1[10];
    *(&v127 + 1) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
    }

    v120.mSelector = 1869968496;
    LODWORD(v111) = 4;
    LODWORD(v104) = 0;
    v123.mSelector = 74;
    sub_2BBA64();
  }

  *&v120.mSelector = 0x6F7574706D757465;
  v120.mElement = 3;
  v14 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v14, &v120))
  {
    v15 = (*(*a1 + 120))(a1);
    *v129 = sub_2BB884(v15, 3);
    *&v129[8] = v16;
    v17 = a1[11];
    *&v127 = a1[10];
    *(&v127 + 1) = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 16), 1uLL, memory_order_relaxed);
    }

    LODWORD(v111) = 1869968496;
    LODWORD(v104) = 3;
    v123.mSelector = 0;
    v121.mSelector = 74;
    sub_2BBA64();
  }

  v111 = 0x6F7574706D757465;
  LODWORD(v112) = 5;
  v104 = 0x6F757470766F6C6DLL;
  LODWORD(v105) = 5;
  v18 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v18, &v111))
  {
    v19 = (*(*a1 + 120))(a1);
    if (AudioObjectHasProperty(v19, &v104))
    {
      v20 = (*(*a1 + 120))(a1);
      *v129 = sub_2BB884(v20, 5);
      *&v129[8] = v21;
      v22 = a1[11];
      *&v127 = a1[10];
      *(&v127 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 16), 1uLL, memory_order_relaxed);
      }

      v123.mSelector = 1869968496;
      v121.mSelector = 5;
      v119 = 0;
      v118 = 74;
      sub_2BBA64();
    }

    sub_15DCEC();
  }

  sub_147688();
  *&v123.mSelector = 0x696E70746D757465;
  v123.mElement = 0;
  v23 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v23, &v123))
  {
    *&v127 = 0x676C6F626D757465;
    DWORD2(v127) = 0;
    operator new();
  }

  *&v121.mSelector = 0x696E7074766F6C64;
  v121.mElement = 0;
  v24 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v24, &v121))
  {
    v25 = a1[11];
    *&v127 = a1[10];
    *(&v127 + 1) = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 16), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if (sub_2B8E28(a1))
  {
    *buf = 0x6F757470534E5263;
    *&buf[8] = 1;
    if ((*(*a1 + 16))(a1, buf))
    {
      *v129 = 0;
      LODWORD(v127) = 4;
      (*(*a1 + 40))(a1, buf, 0, 0, &v127, v129);
      v26 = *v129 > 96.0;
    }

    else
    {
      v26 = 0;
    }

    v117 = v26;
    v27 = sub_5544(18);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_DEBUG))
    {
      v29 = "16-bit";
      *&buf[4] = "Device_Codec_Aspen.cpp";
      *buf = 136315650;
      if (v26)
      {
        v29 = "24-bit";
      }

      *&buf[12] = 1024;
      *&buf[14] = 1279;
      *&buf[18] = 2080;
      *&buf[20] = v29;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a %s wired-headphones port", buf, 0x1Cu);
    }

    v30 = a1[11];
    *buf = a1[10];
    *&buf[8] = v30;
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 16), 1uLL, memory_order_relaxed);
    }

    sub_2B9F64();
  }

  if (sub_2B55C8(a1))
  {
    v31 = sub_5544(18);
    v32 = *v31;
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_Codec_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1321;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a line-out port", buf, 0x12u);
    }

    v33 = a1[11];
    *&v127 = a1[10];
    *(&v127 + 1) = v33;
    if (v33)
    {
      atomic_fetch_add_explicit((v33 + 16), 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 128))(buf, a1);
    sub_2BA8F0();
  }

  *&v116.mSelector = 0x6F7574706D757465;
  v116.mElement = 4;
  v34 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v34, &v116))
  {
    v35 = sub_5544(18);
    v36 = *v35;
    if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_Codec_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1331;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a speaker port", buf, 0x12u);
    }

    v37 = a1[11];
    v111 = a1[10];
    v112 = v37;
    if (v37)
    {
      atomic_fetch_add_explicit((v37 + 16), 1uLL, memory_order_relaxed);
    }

    memset(v129, 0, sizeof(v129));
    sub_24FEE8(buf, qword_6E9158);
    v127 = 0uLL;
    v128 = 0;
    sub_2BAA08();
  }

  *&v115.mSelector = 0x6F7574706D757465;
  v115.mElement = 3;
  v38 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v38, &v115))
  {
    qmemcpy(buf, "rvmiplmimacmpcpspcts", 20);
    memset(v129, 0, sizeof(v129));
    sub_4625C(v129, buf, &buf[20], 5uLL);
    v39 = sub_5544(18);
    v40 = *v39;
    if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_Codec_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1350;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a receiver port", buf, 0x12u);
    }

    v41 = a1[11];
    v111 = a1[10];
    v112 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit((v41 + 16), 1uLL, memory_order_relaxed);
    }

    sub_24FEE8(buf, qword_6E9128);
    v127 = 0uLL;
    v128 = 0;
    sub_2BADEC();
  }

  *&v114.mSelector = 0x6F7574706D757465;
  v114.mElement = 5;
  v42 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v42, &v114))
  {
    v43 = sub_5544(18);
    v44 = *v43;
    if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_Codec_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1361;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a HAC port", buf, 0x12u);
    }

    qmemcpy(buf, "rvmiplmimacmpcpspcts", 20);
    v112 = 0;
    v113 = 0;
    v111 = 0;
    sub_4625C(&v111, buf, &buf[20], 5uLL);
    v45 = a1[11];
    v107 = a1[10];
    v108 = v45;
    if (v45)
    {
      atomic_fetch_add_explicit((v45 + 16), 1uLL, memory_order_relaxed);
    }

    sub_24FEE8(buf, qword_6E9188);
    v104 = 0;
    v105 = 0;
    v106 = 0;
    operator new();
  }

  if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
  {
    byte_709638 = MGGetBoolAnswer();
    __cxa_guard_release(&qword_709640);
  }

  if (byte_709638 == 1)
  {
    v46 = sub_5544(18);
    v47 = *v46;
    if (*v46 && os_log_type_enabled(*v46, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_Codec_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1421;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEBUG, "%25s:%-5d No input sources are present - no builtin mic on codec", buf, 0x12u);
    }

    goto LABEL_144;
  }

  LODWORD(v111) = (*(*a1 + 120))(a1);
  *&v127 = 0x696E707473736323;
  DWORD2(v127) = 0;
  sub_127F10(buf, &v111, &v127, 0, 0);
  v48 = *buf;
  if (*buf || (buf[32] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v48;
  }

  memset(v129, 0, sizeof(v129));
  v49 = *&buf[8];
  sub_46980(v129, *&buf[8], *&buf[16], (*&buf[16] - *&buf[8]) >> 2);
  if (v49)
  {
    operator delete(v49);
  }

  if ((atomic_load_explicit(&qword_6E91F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E91F0))
  {
    qmemcpy(buf, "cimicimscimfcimlcimtcimu1imi2imi3imi4imi", sizeof(buf));
    qword_6E91E0 = 0;
    unk_6E91E8 = 0;
    qword_6E91D8 = 0;
    sub_4625C(&qword_6E91D8, buf, &v141, 0xAuLL);
    __cxa_guard_release(&qword_6E91F0);
  }

  v50 = *v129;
  v51 = *&v129[8];
  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  memset(buf, 0, 24);
  v53 = qword_6E91D8;
  v52 = qword_6E91E0;
  if (qword_6E91D8 == qword_6E91E0)
  {
    v62 = 1;
    if (v50)
    {
      goto LABEL_123;
    }

    goto LABEL_124;
  }

  v54 = 0;
  v55 = 0;
  v56 = v50;
  do
  {
    v57 = sub_2BAF74(v56, v51, *v53);
    v58 = v57;
    if (v56 == v57)
    {
      if (v55)
      {
        v59 = 0;
        v54 = sub_2BB038(buf, v54, v57) + 4;
        v56 = v58 + 1;
        ++v53;
        goto LABEL_112;
      }

      v59 = 1;
    }

    else
    {
      v59 = 0;
    }

    v56 = v57;
LABEL_112:
    if (v56 == v51)
    {
      break;
    }

    v60 = sub_2BAF74(v53, v52, *v56);
    v61 = v60;
    if (v53 == v60)
    {
      if (v59)
      {
        v55 = 0;
        v54 = sub_2BB038(buf, v54, v56++) + 4;
        v53 = v61 + 1;
        continue;
      }

      v55 = 1;
    }

    else
    {
      v55 = 0;
    }

    v53 = v60;
  }

  while (v53 != v52);
  v62 = *&buf[8] == *buf;
  if (*buf)
  {
    operator delete(*buf);
  }

  if (v50)
  {
LABEL_123:
    operator delete(v50);
  }

LABEL_124:
  if (!v62 && (sub_40ADD4(a1[113], 0x696D6963u) || sub_40ADD4(a1[113], 0x696D6931u)))
  {
    v63 = sub_5544(18);
    v64 = *v63;
    if (*v63 && os_log_type_enabled(*v63, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Device_Codec_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1385;
      _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating an internal microphone port", buf, 0x12u);
    }

    sub_33E58C(v129);
    v65 = sub_5544(18);
    if (*(v65 + 8))
    {
      v66 = *v65;
      if (*v65)
      {
        if (os_log_type_enabled(*v65, OS_LOG_TYPE_DEBUG))
        {
          v67 = v129;
          if ((v129[23] & 0x80u) != 0)
          {
            v67 = *v129;
          }

          *buf = 136315650;
          *&buf[4] = "Device_Codec_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1388;
          *&buf[18] = 2080;
          *&buf[20] = v67;
          _os_log_impl(&dword_0, v66, OS_LOG_TYPE_DEBUG, "%25s:%-5d Localized microphone name: '%s'", buf, 0x1Cu);
        }
      }
    }

    v68 = a1[11];
    v109 = a1[10];
    v110 = v68;
    if (v68)
    {
      atomic_fetch_add_explicit((v68 + 16), 1uLL, memory_order_relaxed);
    }

    v127 = 0uLL;
    v128 = 0;
    if (v129[23] < 0)
    {
      sub_54A0(buf, *v129, *&v129[8]);
    }

    else
    {
      *buf = *v129;
      *&buf[16] = *&v129[16];
    }

    v142 = 0u;
    v141 = 0u;
    *&buf[24] = 0u;
    sub_46AC8C();
    sub_2360B8();
  }

LABEL_144:
  if ((sub_2B8E28(a1) & 1) != 0 || (sub_2B8EF4(a1) & 1) != 0 || sub_2B902C(a1))
  {
    if (!a1[67])
    {
      v69 = sub_2B8E28(a1);
      *buf = 1885892727;
      *&buf[8] = 0;
      *&buf[16] = 0;
      buf[24] = v69;
      v70 = sub_2B8EF4(a1);
      *&buf[32] = 1886222185;
      v141 = 0uLL;
      LOBYTE(v142) = v70;
      v71 = sub_2B902C(a1);
      DWORD2(v142) = 1886680169;
      v143 = 0;
      v144 = 0;
      v145 = v71;
      v72 = sub_2B902C(a1);
      v73 = 0;
      v146 = 1886680175;
      v147 = 0;
      v148 = 0;
      v149 = v72;
      while (1)
      {
        v122.mSelector = *&buf[v73];
        v128 = 0;
        v127 = 0uLL;
        sub_4625C(&v127, &v122, &v122.mScope, 1uLL);
        *v129 = v127;
        *&v129[16] = v128;
        strcpy(v130, "cwdv");
        v130[8] = 0;
        v135[0] = 0;
        v135[1] = 0;
        v134 = v135;
        v133 = 3;
        v136 = 44739242;
        v138 = 0;
        v139 = 0;
        v137 = 0;
        sub_161C7C(&inAddress, a1, v129);
        if (SHIBYTE(v139) < 0)
        {
          operator delete(v137);
        }

        sub_477A0(v135[0]);
        if (*v129)
        {
          *&v129[8] = *v129;
          operator delete(*v129);
        }

        v74 = buf[v73 + 24];
        if (v126 != v74)
        {
          v79 = sub_5544(14);
          v80 = *v79;
          if (*v79)
          {
            if (os_log_type_enabled(*v79, OS_LOG_TYPE_ERROR))
            {
              v100 = v126;
              sub_22170(&v127, *&buf[v73]);
              v81 = &v127;
              if (v128 < 0)
              {
                v81 = v127;
              }

              *v129 = 136316162;
              *&v129[4] = "Device_Codec_Aspen.cpp";
              *&v129[12] = 1024;
              *&v129[14] = 1489;
              *&v129[18] = 1024;
              *&v129[20] = v100;
              *v130 = 2080;
              *&v130[2] = v81;
              v131 = 1024;
              v132 = v74;
              _os_log_impl(&dword_0, v80, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Found %u ports of type '%s' (expected %u)", v129, 0x28u);
              if (SHIBYTE(v128) < 0)
              {
                operator delete(v127);
              }
            }
          }
        }

        if (v74 && v126 == 1)
        {
          v76 = *(inAddress_8 + 16);
          v75 = *(inAddress_8 + 24);
          if (v75)
          {
            atomic_fetch_add_explicit((v75 + 16), 1uLL, memory_order_relaxed);
          }

          v77 = &buf[v73];
          v78 = *&buf[v73 + 16];
          *(v77 + 1) = v76;
          *(v77 + 2) = v75;
          if (v78)
          {
            std::__shared_weak_count::__release_weak(v78);
          }
        }

        sub_65310(&inAddress);
        v73 += 32;
        if (v73 == 128)
        {
          operator new();
        }
      }
    }

    v97 = sub_5544(14);
    v98 = *v97;
    if (*v97 && os_log_type_enabled(*v97, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_Codec_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1472;
      _os_log_impl(&dword_0, v98, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v99 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v99, "Precondition failure.");
  }

  v82 = sub_8703C();
  (*(*v82 + 48))(v82, sub_2B9E94, a1);
  sub_2B90DC(a1);
  if (sub_2B55C8(a1))
  {
    v83 = sub_3419E4();
    sub_341B04(v83, sub_2B9D64, a1);
    sub_2B988C(a1);
    v84 = sub_3419E4();
    sub_342180(v84, 1819176821, sub_2B9C18, a1);
  }

  *&v127 = 0x707472755354656ELL;
  DWORD2(v127) = 0;
  if ((*(*a1 + 16))(a1, &v127))
  {
    *buf = 0;
    (*(*a1 + 48))(a1, &v127, 0, 0, 4, buf);
  }

  inAddress = 0x6F7574706D757465;
  LODWORD(inAddress_8) = 5;
  if ((*(*a1 + 16))(a1, &inAddress))
  {
    *buf = 1;
    (*(*a1 + 48))(a1, &inAddress, 0, 0, 4, buf);
  }

  *&v122.mSelector = 0x676C6F624D434373;
  v122.mElement = 0;
  if ((*(*a1 + 16))(a1, &v122))
  {
    *&v120.mSelector = 0;
    v101 = 8;
    (*(*a1 + 40))(a1, &v122, 0, 0, &v101, &v120);
    v85 = *&v120.mSelector;
    if (!*&v120.mSelector)
    {
      v93 = sub_5544(14);
      v94 = *v93;
      if (*v93 && os_log_type_enabled(*v93, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Device_Codec_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 847;
        _os_log_impl(&dword_0, v94, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [maxChannelInfo is NULL]: Invalid Maximum Channel Info", buf, 0x12u);
      }

      v95 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v95, "Invalid Maximum Channel Info");
    }

    *v129 = *&v120.mSelector;
    *&v129[8] = 1;
    if (CFDictionaryContainsKey(*&v120.mSelector, @"MaxInputChannelCount"))
    {
      if ((sub_2E7334(v85, @"MaxInputChannelCount", a1 + 924) & 1) == 0)
      {
        v86 = sub_5544(18);
        v87 = *v86;
        if (*v86)
        {
          if (os_log_type_enabled(*v86, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "Device_Codec_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 854;
            _os_log_impl(&dword_0, v87, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to convert max num input channels to UInt32", buf, 0x12u);
          }
        }
      }

      v88 = sub_5544(18);
      if (*(v88 + 8))
      {
        v89 = *v88;
        if (*v88)
        {
          if (os_log_type_enabled(*v88, OS_LOG_TYPE_DEBUG))
          {
            v90 = *(a1 + 231);
            *buf = 136315650;
            *&buf[4] = "Device_Codec_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 855;
            *&buf[18] = 1024;
            *&buf[20] = v90;
            _os_log_impl(&dword_0, v89, OS_LOG_TYPE_DEBUG, "%25s:%-5d Codec specified a maximum number of input channels: %u", buf, 0x18u);
          }
        }
      }
    }

    sub_A1D30(v129);
  }

  if (_os_feature_enabled_impl())
  {
    v91 = sub_46AC8C();
    (*(*a1 + 408))(a1, v91 + 96, 1);
  }

  return 1;
}

void sub_2B88B8(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_6E91F0);
  v3 = *(v1 + 288);
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2B8E28(uint64_t a1)
{
  *&inAddress.mSelector = 0x6F7574706A61636BLL;
  inAddress.mElement = 0;
  if ((atomic_load_explicit(&qword_6E91C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E91C0))
  {
    v2 = (*(*a1 + 120))(a1);
    byte_6E91B8 = AudioObjectHasProperty(v2, &inAddress) != 0;
    __cxa_guard_release(&qword_6E91C0);
  }

  return byte_6E91B8;
}

uint64_t sub_2B8EF4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
  {
    byte_709638 = MGGetBoolAnswer();
    __cxa_guard_release(&qword_709640);
  }

  if (byte_709638)
  {
    v2 = 0;
  }

  else
  {
    *&v7.mSelector = 0x696E70746A61636BLL;
    v7.mElement = 0;
    v3 = &unk_6E9000;
    if ((atomic_load_explicit(&qword_6E91D0, memory_order_acquire) & 1) == 0)
    {
      v5 = __cxa_guard_acquire(&qword_6E91D0);
      v3 = &unk_6E9000;
      if (v5)
      {
        v6 = (*(*a1 + 120))(a1);
        byte_6E91C8 = AudioObjectHasProperty(v6, &v7) == 1;
        __cxa_guard_release(&qword_6E91D0);
        v3 = &unk_6E9000;
      }
    }

    v2 = v3[456];
  }

  return v2 & 1;
}

uint64_t sub_2B902C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_6E9200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9200))
  {
    v3 = sub_2B8E28(a1) && (v2 = sub_2B8EF4(a1), v2) && caulk::product::get_device_class(v2) == 1;
    byte_6E91F8 = v3;
    __cxa_guard_release(&qword_6E9200);
  }

  return byte_6E91F8;
}

void sub_2B90DC(os_unfair_lock_s *a1)
{
  LODWORD(v18[0]) = 1885888867;
  memset(&v24, 0, sizeof(v24));
  sub_4625C(&v24, v18, v18 + 4, 1uLL);
  *buf = v24;
  strcpy(&buf[24], "cwdv");
  BYTE2(v26) = 0;
  LODWORD(v27) = 3;
  v29 = 0;
  v30 = 0;
  v28 = &v29;
  v31 = 44739242;
  v33 = 0;
  v34 = 0;
  __p = 0;
  sub_161C7C(v22, a1, buf);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v29);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (v23 >= 2)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_23148(&v24, a1 + 2);
      v7 = (v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v24 : v24.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "Device_Codec_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1608;
      *&buf[18] = 2080;
      *&buf[20] = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Encountered more than one Hearing Aid Compliance port in device %s", buf, 0x1Cu);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Encountered more than one Hearing Aid Compliance port in device %s");
  }

  if (v23)
  {
    sub_25704(&v20, (v22[1] + 16), "", 1612);
    v2 = v20;
    v3 = (*(*v20 + 152))(v20);
    (*(*v2 + 512))(v2);
    if (v3 != (*(*v2 + 152))(v2))
    {
      LODWORD(v16) = 1886545251;
      memset(&v24, 0, sizeof(v24));
      sub_4625C(&v24, &v16, &v16 + 4, 1uLL);
      *buf = v24;
      strcpy(&buf[24], "cwdv");
      BYTE2(v26) = 0;
      LODWORD(v27) = 3;
      v29 = 0;
      v30 = 0;
      v28 = &v29;
      v31 = 44739242;
      v33 = 0;
      v34 = 0;
      __p = 0;
      sub_161C7C(v18, a1, buf);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p);
      }

      sub_477A0(v29);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (__val == 1)
      {
        sub_25704(buf, (v18[1] + 16), "", 1626);
        if (v3)
        {
          v4 = 0;
        }

        else
        {
          v4 = 1919443299;
        }

        (*(**buf + 104))(*buf, v4);
        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_2B9E50(&v16);
      }

      v9 = sub_5544(14);
      v10 = *v9;
      if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        std::to_string(&v24, __val);
        v11 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
        v12 = v24.__r_.__value_.__r.__words[0];
        sub_23148(&v16, a1 + 2);
        v13 = &v24;
        if (v11 < 0)
        {
          v13 = v12;
        }

        if (v17 >= 0)
        {
          v14 = &v16;
        }

        else
        {
          v14 = v16;
        }

        *buf = 136315906;
        *&buf[4] = "Device_Codec_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1621;
        *&buf[18] = 2080;
        *&buf[20] = v13;
        *&buf[28] = 2080;
        v26 = v14;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Encountered %s receiver ports in device %s (expected 1)", buf, 0x26u);
        if (SHIBYTE(v17) < 0)
        {
          operator delete(v16);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }
      }

      v15 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v15, "Encountered %s receiver ports in device %s (expected 1)");
    }

    if (v21)
    {
      sub_1A8C0(v21);
    }
  }

  sub_65310(v22);
}

void sub_2B9724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_65310(&a17);
  if (a21)
  {
    sub_1A8C0(a21);
  }

  sub_65310(&a22);
  _Unwind_Resume(a1);
}

void sub_2B988C(os_unfair_lock_s *a1)
{
  v18 = 1886154613;
  v19[1] = 0;
  v20 = 0;
  v19[0] = 0;
  sub_4625C(v19, &v18, v19, 1uLL);
  *buf = *v19;
  *&buf[16] = v20;
  strcpy(&buf[24], "cwdv");
  BYTE2(v22) = 0;
  LODWORD(v24) = 3;
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v27 = 44739242;
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_161C7C(v13, a1, buf);
  sub_B0484(&v15, v13);
  sub_65310(v13);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v26[0]);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (v17 != 1)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v8 = v17;
        sub_22170(v19, 0x706C6F75u);
        v9 = SHIBYTE(v20);
        v10 = v19[0];
        sub_23148(v13, a1 + 2);
        v11 = v19;
        if (v9 < 0)
        {
          v11 = v10;
        }

        if (v14 >= 0)
        {
          v12 = v13;
        }

        else
        {
          v12 = v13[0];
        }

        *buf = 136316418;
        *&buf[4] = "Device_Codec_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1583;
        *&buf[18] = 2048;
        *&buf[20] = v8;
        *&buf[28] = 2080;
        v22 = v11;
        v23 = 2080;
        v24 = v12;
        LOWORD(v25) = 1024;
        *(&v25 + 2) = 1;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Found %lu ports of type '%s' in device %s (looking for exactly %d)", buf, 0x36u);
        if (v14 < 0)
        {
          operator delete(v13[0]);
        }

        if (SHIBYTE(v20) < 0)
        {
          operator delete(v19[0]);
        }
      }
    }
  }

  for (i = v16; i != &v15; i = i[1])
  {
    v3 = (*(*i[2] + 152))(i[2]);
    sub_2AAE6C(i[2]);
    if (v3 != (*(*i[2] + 152))(i[2]))
    {
      v4 = sub_809C0();
      v5 = i[3];
      *buf = i[2];
      *&buf[8] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_257CE8(v4, buf);
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  sub_87980(&v15);
}

void sub_2B9BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(v21);
  }

  sub_87980(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_2B9C18(uint64_t result, uint64_t a2)
{
  if (result == 1819176821)
  {
    if (!a2)
    {
      v3 = sub_5544(14);
      v4 = *v3;
      if (*v3)
      {
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
        {
          v5 = 136315394;
          v6 = "Device_Codec_Aspen.cpp";
          v7 = 1024;
          v8 = 1555;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: IAPManager passed clientData as NULL.", &v5, 0x12u);
        }
      }
    }

    result = sub_6FE08(a2 + 552, &qword_6E9108);
    if (result)
    {
      return sub_6FF5C(a2 + 552, &qword_6E9108);
    }
  }

  return result;
}

uint64_t sub_2B9D14(uint64_t a1)
{
  sub_71E0C(*(a1 + 16));
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

    sub_71E0C(v2);
  }

  return a1;
}

void sub_2B9D64(int a1, os_unfair_lock_s *a2)
{
  if (!a2)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "Device_Codec_Aspen.cpp";
        v8 = 1024;
        v9 = 1532;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: IAPManager passed clientData as NULL.", &v6, 0x12u);
      }
    }
  }

  if (a1 == 1819176821)
  {
    sub_2B988C(a2);
  }
}

void sub_2B9E50(void *a1)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  sub_849B8();
}

void sub_2B9E94(os_unfair_lock_s *a1)
{
  if (!a1)
  {
    v2 = sub_5544(14);
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        v4 = 136315394;
        v5 = "Device_Codec_Aspen.cpp";
        v6 = 1024;
        v7 = 1600;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: SystemSettingsManager passed clientData as NULL.", &v4, 0x12u);
      }
    }
  }

  sub_2B90DC(a1);
}

void sub_2BA0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  *(v21 - 56) = v20;
  sub_72C14((v21 - 56));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1E19A0(&a19);
  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v23);
  _Unwind_Resume(a1);
}

void sub_2BA1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_2BA370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1E19A0(&a16);
  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v18);
  _Unwind_Resume(a1);
}

void sub_2BA5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1E19A0(&a22);
  sub_477A0(a19);
  sub_477A0(*(v23 - 104));
  std::__shared_weak_count::~__shared_weak_count(v22);
  operator delete(v25);
  _Unwind_Resume(a1);
}

void sub_2BA890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1E19A0(&a22);
  sub_477A0(a19);
  sub_477A0(*(v23 - 104));
  std::__shared_weak_count::~__shared_weak_count(v22);
  operator delete(v25);
  _Unwind_Resume(a1);
}

void sub_2BA9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  sub_477A0(a12);
  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v14);
  _Unwind_Resume(a1);
}

void sub_2BAB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

void sub_2BAD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a16;
  sub_72C14(&__p);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  sub_1E19A0(&a25);
  std::__shared_weak_count::~__shared_weak_count(v25);
  operator delete(v27);
  _Unwind_Resume(a1);
}

void sub_2BAF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  _Unwind_Resume(a1);
}

unsigned int *sub_2BAF74(unsigned int *a1, unsigned int *a2, unsigned int a3)
{
  if (a2 != a1)
  {
    if (*a1 >= a3)
    {
      return a1;
    }

    v3 = a2 - a1;
    if (v3 >= 1)
    {
      v3 = 1;
    }

    v4 = &a1[v3];
    if (v4 == a2)
    {
LABEL_17:
      v6 = a2;
    }

    else
    {
      v5 = 1;
      while (1)
      {
        v6 = v4;
        if (*v4 >= a3)
        {
          break;
        }

        v3 = a2 - v4;
        v7 = v3 <= 2 * v5;
        v5 *= 2;
        if (v7)
        {
          v8 = v5;
        }

        else
        {
          v8 = a2 - v4;
        }

        if (!v7)
        {
          v3 = v5;
        }

        if (v5 < 0)
        {
          v3 = v8;
        }

        v4 = &v6[v3];
        a1 = v6;
        if (v4 == a2)
        {
          a1 = v6;
          goto LABEL_17;
        }
      }
    }

    if (v3)
    {
      if (v3 == 1)
      {
        return v6;
      }

      do
      {
        v9 = v3 >> 1;
        v10 = &a1[v3 >> 1];
        v12 = *v10;
        v11 = v10 + 1;
        v3 += ~(v3 >> 1);
        if (v12 < a3)
        {
          a1 = v11;
        }

        else
        {
          v3 = v9;
        }
      }

      while (v3);
    }

    return a1;
  }

  return a2;
}

char *sub_2BB038(uint64_t a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_189A00();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    if (v14)
    {
      sub_1D7C28(v14);
    }

    v16 = (4 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == __src)
        {
          v24 = 1;
        }

        else
        {
          v24 = v12 >> 1;
        }

        sub_1D7C28(v24);
      }

      v16 = (v16 - (((v12 >> 1) + 2) & 0xFFFFFFFFFFFFFFFCLL));
    }

    *v16 = *a3;
    memcpy(v16 + 1, __src, *(a1 + 8) - __src);
    v17 = *a1;
    v25 = v16 + *(a1 + 8) - v4 + 4;
    *(a1 + 8) = v4;
    v18 = v4 - v17;
    v19 = v16 - (v4 - v17);
    memcpy(v19, v17, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v25;
    if (v20)
    {
      operator delete(v20);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    *(a1 + 8) = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 4;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
      v9 = *(a1 + 8);
    }

    v21 = v9 <= a3 || v4 > a3;
    v22 = 4;
    if (v21)
    {
      v22 = 0;
    }

    *v4 = *&a3[v22];
  }

  return v4;
}

void sub_2BB244(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2BB358(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DBFC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2BB3F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD300;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2BB47C(void *a1)
{
  *a1 = off_6DD960;
  sub_24EBDC(a1);

  operator delete();
}

void sub_2BB518(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2BB5A0(void *a1)
{
  *a1 = off_6DD4F8;
  sub_24EBDC(a1);

  operator delete();
}

void sub_2BB63C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD4C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2BB6D8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD2A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2BB774(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD450;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2BB810(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD488;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

double sub_2BB884(AudioObjectID a1, signed int a2)
{
  if (!a1)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      inAddress.mSelector = 136315394;
      *&inAddress.mScope = "Device_Codec_Aspen.cpp";
      v13 = 1024;
      v14 = 128;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &inAddress, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  outData[0] = 0;
  outData[1] = 0;
  *&inAddress.mSelector = 0x6F75747076646223;
  inAddress.mElement = a2;
  ioDataSize = 16;
  if (AudioObjectHasProperty(a1, &inAddress))
  {
    AudioObjectGetPropertyData(a1, &inAddress, 0, 0, &ioDataSize, outData);
  }

  if (a2 > 2)
  {
    if (a2 == 4)
    {
      result = -58.0;
      v5 = *outData;
      goto LABEL_13;
    }

    v5 = *outData;
    goto LABEL_11;
  }

  if (a2 != 1)
  {
    v5 = *outData;
LABEL_11:
    v6 = -58.0;
    goto LABEL_12;
  }

  v5 = *outData;
  v6 = -76.0;
LABEL_12:
  result = v6;
LABEL_13:
  if (v5 >= result)
  {
    return v5;
  }

  return result;
}

void sub_2BBB44(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_2BBBF4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_2BBC0C(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_318678(a1, &v4);
  if (*(&v4 + 1))
  {
    sub_1A8C0(*(&v4 + 1));
  }

  return v3;
}

void sub_2BBC58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2BBC98(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DBF88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_2BBD0C(uint64_t a1, double a2)
{
  v17 = a2;
  v4 = sub_4AF738(a1, a2);
  (*(*a1 + 200))(buf, a1);
  if (*&buf[8])
  {
    v5 = std::__shared_weak_count::lock(*&buf[8]);
    if (v5)
    {
      v6 = *buf;
    }

    else
    {
      v6 = 0;
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_weak(*&buf[8]);
    }

    v15 = 0x676C6F62616F7372;
    v16 = 0;
    if (v6)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7 && (*(*v6 + 16))(v6, &v15))
    {
      v8 = sub_5544(18);
      v9 = sub_5544(37);
      v10 = 0;
      *buf = 0x100000002;
      v11 = *(v8 + 8);
      while (1)
      {
        v12 = *&buf[v10];
        if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
        {
          break;
        }

        v10 += 4;
        if (v10 == 8)
        {
          goto LABEL_19;
        }
      }

      if ((v11 & v12) == 0)
      {
        v8 = v9;
      }

LABEL_19:
      v13 = *v8;
      if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "Device_Codec_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 893;
        v19 = 2048;
        v20 = a2;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Informing AOP of Codec sample rate %f Hz", buf, 0x1Cu);
      }

      (*(*v6 + 48))(v6, &v15, 0, 0, 8, &v17);
    }

    if (v5)
    {
      sub_1A8C0(v5);
    }
  }

  return v4;
}

void sub_2BBF3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_2BBF60(uint64_t a1)
{
  v2 = sub_8703C();
  (*(*v2 + 56))(v2, sub_2B9E94);
  if (sub_2B55C8(a1))
  {
    v3 = sub_3419E4();
    sub_342570(v3, 1819176821, sub_2B9C18);
    v4 = sub_3419E4();
    sub_341E40(v4, sub_2B9D64);
  }

  v5 = *(a1 + 536);
  if (v5)
  {
    sub_3539A4(v5);
    v6 = *(a1 + 536);
    *(a1 + 536) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  return sub_4B08A4(a1);
}

BOOL sub_2BC04C(uint64_t a1, AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), unint64_t a4)
{
  mScope = a2->mScope;
  if (*&a2->mSelector == qword_6E90E8 && a2->mElement == dword_6E90F0 || *&a2->mSelector == qword_6E90F8 && a2->mElement == dword_6E9100 || *&a2->mSelector == qword_6E9108 && a2->mElement == dword_6E9110)
  {
    v14 = v4;
    v15 = v5;
    v12 = *&a2->mSelector;
    mElement = a2->mElement;
    v8 = *&a2->mSelector;
    v9 = a2->mElement;
    v10 = a3;
    v11 = a4;
    sub_185D3C((a1 + 552), &v12, &v8);
    return 1;
  }

  else
  {

    return sub_187634(a1, a2, a3, a4);
  }
}

BOOL sub_2BC15C(char *a1, uint64_t a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v10 = sub_5544(14);
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *a2;
      v13 = *(a2 + 8);
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v8 = *(a2 + 4);
  if (*a2 == qword_6E90E8 && *(a2 + 8) == dword_6E90F0 || *a2 == qword_6E90F8 && *(a2 + 8) == dword_6E9100 || *a2 == qword_6E9108 && *(a2 + 8) == dword_6E9110)
  {
    __p = *a2;
    v15 = *(a2 + 8);
    *buf = *a2;
    v17 = *(a2 + 8);
    v18 = a3;
    v19 = a4;
    sub_17C118(a1 + 552, &__p, buf);
  }

  return sub_17C9AC(a1, a2, a3, a4);
}

void sub_2BC420(uint64_t a1, const AudioObjectPropertyAddress *a2, uint64_t a3, const void *a4, uint64_t a5, unsigned int *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v49 = sub_5544(14);
    if (*v49 && os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
    {
      v76 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v51 = sub_5544(14);
    if (*v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
    {
      v77 = *&a2->mSelector;
      v89 = a2->mElement;
      sub_22CE0(__p);
    }

    v52 = __cxa_allocate_exception(0x10uLL);
    *v52 = &off_6DDDD0;
    v52[2] = 561211770;
  }

  if (!a6)
  {
    v53 = sub_5544(14);
    if (*v53 && os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
    {
      v78 = *&a2->mSelector;
      v90 = a2->mElement;
      sub_22CE0(__p);
    }

    v54 = __cxa_allocate_exception(0x10uLL);
    *v54 = &off_6DDDD0;
    v54[2] = 561211770;
  }

  mSelector = a2->mSelector;
  if (a2->mSelector <= 1685483629)
  {
    if (mSelector <= 1162701935)
    {
      if (mSelector == 913796710)
      {
        if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
        {
          v55 = sub_5544(14);
          if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
          {
            v79 = *&a2->mSelector;
            v91 = a2->mElement;
            sub_22CE0(__p);
          }

          v56 = __cxa_allocate_exception(0x10uLL);
          *v56 = &off_6DDDD0;
          v56[2] = 561211770;
        }

        v27 = *a6 != 0;

        sub_2BEAC0(a1, v27);
        return;
      }

      if (mSelector != 1162046576)
      {
LABEL_74:

        sub_FDAC4(a1, a2, a3, a4, a5, a6);
        return;
      }

      v24 = *a6;
      v25 = sub_5544(18);
      v26 = *v25;
      if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v102 = "Device_Codec_Aspen.cpp";
        v103 = 1024;
        v104 = 612;
        v105 = 1024;
        LODWORD(v106) = v24;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d set DevicePropertyCodecLowPowerModeEnable = %u.", buf, 0x18u);
      }
    }

    else
    {
      if (mSelector != 1162701936)
      {
        if (mSelector == 1634759542)
        {
          if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
          {
            v57 = sub_5544(14);
            if (*v57 && os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
            {
              v80 = *&a2->mSelector;
              v92 = a2->mElement;
              sub_22CE0(__p);
            }

            v58 = __cxa_allocate_exception(0x10uLL);
            *v58 = &off_6DDDD0;
            v58[2] = 561211770;
          }

          mScope = a2->mScope;
          *buf = 1987013732;
          v102 = mScope;
          (*(*a1 + 48))(a1, buf, a3, a4, a5, a6);
          return;
        }

        if (mSelector == 1650602615)
        {
          if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
          {
            v59 = sub_5544(14);
            if (*v59 && os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
            {
              v81 = *&a2->mSelector;
              v93 = a2->mElement;
              sub_22CE0(__p);
            }

            v60 = __cxa_allocate_exception(0x10uLL);
            *v60 = &off_6DDDD0;
            v60[2] = 561211770;
          }

          v14 = sub_2BDF88(*(a1 + 268), a2, a3, a4, a6);
          if (v14)
          {
            v15 = v14;
            v16 = sub_5544(14);
            v17 = *v16;
            if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v102 = "Device_Codec_Aspen.cpp";
              v103 = 1024;
              v104 = 596;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (theResult) [error theResult is an error]: error setting kAudioDevicePropertyBasebandToCodecPlayThrough", buf, 0x12u);
            }

            v18 = __cxa_allocate_exception(0x10uLL);
            *v18 = &off_6DDDD0;
            v18[2] = v15;
          }

          return;
        }

        goto LABEL_74;
      }

      v37 = *a6;
      v38 = sub_5544(18);
      v39 = *v38;
      if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v102 = "Device_Codec_Aspen.cpp";
        v103 = 1024;
        v104 = 621;
        v105 = 1024;
        LODWORD(v106) = v37;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%25s:%-5d set DevicePropertyMicrophoneLowPowerModeEnable = %u.", buf, 0x18u);
      }
    }

    sub_FDAC4(a1, a2, a3, a4, a5, a6);
    return;
  }

  if (mSelector > 1836414052)
  {
    switch(mSelector)
    {
      case 1836414053:
        if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
        {
          v69 = sub_5544(14);
          if (*v69 && os_log_type_enabled(*v69, OS_LOG_TYPE_ERROR))
          {
            v86 = *&a2->mSelector;
            v98 = a2->mElement;
            sub_22CE0(__p);
          }

          v70 = __cxa_allocate_exception(0x10uLL);
          *v70 = &off_6DDDD0;
          v70[2] = 561211770;
        }

        if (a2->mElement == 6 && a2->mScope == 1869968496)
        {
          v40 = sub_3419E4();
          v41 = *a6 != 0;

          sub_34332C(v40, v41);
          return;
        }

        break;
      case 1987013732:
        if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
        {
          v63 = sub_5544(14);
          if (*v63 && os_log_type_enabled(*v63, OS_LOG_TYPE_ERROR))
          {
            v83 = *&a2->mSelector;
            v95 = a2->mElement;
            sub_22CE0(__p);
          }

          v64 = __cxa_allocate_exception(0x10uLL);
          *v64 = &off_6DDDD0;
          v64[2] = 561211770;
        }

        if (a2->mElement == 6 && a2->mScope == 1869968496)
        {
          v34 = sub_3419E4();
          if (sub_3428D4(v34))
          {
            v35 = (*a6 + 100.0) / 100.0;
            v36 = sub_3419E4();
            sub_342CD8(v36, v35);
            if (sub_6FE08(a1 + 552, &qword_6E90E8))
            {
              sub_6FF5C(a1 + 552, &qword_6E90E8);
            }

            if (sub_6FE08(a1 + 552, &qword_6E90F8))
            {

              sub_6FF5C(a1 + 552, &qword_6E90F8);
            }
          }

          return;
        }

        break;
      case 1999790690:
        if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
        {
          v65 = sub_5544(14);
          if (*v65 && os_log_type_enabled(*v65, OS_LOG_TYPE_ERROR))
          {
            v84 = *&a2->mSelector;
            v96 = a2->mElement;
            sub_22CE0(__p);
          }

          v66 = __cxa_allocate_exception(0x10uLL);
          *v66 = &off_6DDDD0;
          v66[2] = 561211770;
        }

        v19 = sub_2BDF88(*(a1 + 268), a2, a3, a4, a6);
        if (v19)
        {
          v20 = v19;
          v21 = sub_5544(14);
          v22 = *v21;
          if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v102 = "Device_Codec_Aspen.cpp";
            v103 = 1024;
            v104 = 604;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (theResult) [error theResult is an error]: error setting kAudioDevicePropertyCodecToBasebandPlayThrough", buf, 0x12u);
          }

          v23 = __cxa_allocate_exception(0x10uLL);
          *v23 = &off_6DDDD0;
          v23[2] = v20;
        }

        return;
    }

    goto LABEL_74;
  }

  if (mSelector == 1685483630)
  {
    if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
    {
      v67 = sub_5544(14);
      if (*v67 && os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
      {
        v85 = *&a2->mSelector;
        v97 = a2->mElement;
        sub_22CE0(__p);
      }

      v68 = __cxa_allocate_exception(0x10uLL);
      *v68 = &off_6DDDD0;
      v68[2] = 561211770;
    }

    *(a1 + 928) = *a6 != 0;
    return;
  }

  if (mSelector == 1718432370)
  {
    if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
    {
      v61 = sub_5544(14);
      if (*v61 && os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
      {
        v82 = *&a2->mSelector;
        v94 = a2->mElement;
        sub_22CE0(__p);
      }

      v62 = __cxa_allocate_exception(0x10uLL);
      *v62 = &off_6DDDD0;
      v62[2] = 561211770;
    }

    v29 = sub_2BDF88(*(a1 + 268), a2, a3, a4, a6);
    if (v29)
    {
      v30 = v29;
      v31 = sub_5544(14);
      v32 = *v31;
      if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v102 = "Device_Codec_Aspen.cpp";
        v103 = 1024;
        v104 = 630;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (theResult) [error theResult is an error]: error setting kAudioDevicePropertyFMTunerPlayThrough", buf, 0x12u);
      }

      v33 = __cxa_allocate_exception(0x10uLL);
      *v33 = &off_6DDDD0;
      v33[2] = v30;
    }

    return;
  }

  if (mSelector != 1768255076)
  {
    goto LABEL_74;
  }

  if (__PAIR64__(a2->mScope, 1768255076) == qword_6E9118 && a2->mElement == dword_6E9120)
  {
    if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
    {
      v71 = sub_5544(14);
      if (*v71 && os_log_type_enabled(*v71, OS_LOG_TYPE_ERROR))
      {
        v87 = *&a2->mSelector;
        v99 = a2->mElement;
        sub_22CE0(__p);
      }

      v72 = __cxa_allocate_exception(0x10uLL);
      *v72 = &off_6DDDD0;
      v72[2] = 561211770;
    }

    v13 = *a6;
    if (v13)
    {
      if (atomic_fetch_add((a1 + 932), 1u))
      {
        return;
      }

      goto LABEL_82;
    }

    if (!atomic_load((a1 + 932)))
    {
      v73 = sub_5544(14);
      v74 = *v73;
      if (*v73 && os_log_type_enabled(*v73, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v102 = "Device_Codec_Aspen.cpp";
        v103 = 1024;
        v104 = 685;
        _os_log_impl(&dword_0, v74, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Attempt to power off the built-in mic when mMicPowerOnCount is 0.", buf, 0x12u);
      }

      v75 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v75, "Attempt to power off the built-in mic when mMicPowerOnCount is 0.");
    }

    if (atomic_fetch_add((a1 + 932), 0xFFFFFFFF) == 1)
    {
LABEL_82:
      v45 = sub_5544(18);
      v46 = *v45;
      if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_INFO))
      {
        v47 = "dis";
        v102 = "Device_Codec_Aspen.cpp";
        *buf = 136315650;
        if (v13)
        {
          v47 = "en";
        }

        v103 = 1024;
        v104 = 688;
        v105 = 2080;
        v106 = v47;
        _os_log_impl(&dword_0, v46, OS_LOG_TYPE_INFO, "%25s:%-5d Non-redundant requesting to %sable microphone power. Calling the HAL.", buf, 0x1Cu);
      }

      v48 = *(a1 + 268);
      *buf = v13 != 0;
      sub_2BDF88(v48, a2, a3, a4, buf);
    }
  }

  else
  {
    v42 = sub_5544(18);
    v43 = *v42;
    if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v102 = "Device_Codec_Aspen.cpp";
      v103 = 1024;
      v104 = 694;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown property address using selector kAppleEmbeddedAudio_DevicePropertyInputEnableDevice. Ignoring.", buf, 0x12u);
    }
  }
}

void sub_2BDF34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2BDF88(AudioObjectID a1, uint64_t a2, UInt32 a3, const void *a4, _DWORD *a5)
{
  v10 = sub_5544(14);
  if ((*(v10 + 8) & 1) != 0 && *v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
  {
    v53.__cv_.__sig = *a2;
    *v53.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v54);
  }

  buf = *a2;
  if (AudioObjectHasProperty(a1, &buf))
  {
    memset(v54.__m_.__opaque, 0, sizeof(v54.__m_.__opaque));
    v54.__m_.__sig = 850045863;
    memset(v53.__cv_.__opaque, 0, sizeof(v53.__cv_.__opaque));
    v53.__cv_.__sig = 1018212795;
    v45 = 0;
    sub_745E8(v44, a1, a2, &v53, &v54, &v45);
    v39 = a1;
    v40 = *a2;
    v41 = *(a2 + 8);
    v42 = a3;
    v43 = a4;
    buf = *a2;
    if (!sub_66E40(a1, &buf))
    {
      v16 = sub_5544(14);
      v15 = 1852797029;
      if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        v36 = *a2;
        v37 = *(a2 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_67;
    }

    v11 = sub_2BEE60(&v39);
    if (!HIDWORD(v11) && *a5 == v11)
    {
      v12 = sub_5544(14);
      if ((*(v12 + 8) & 1) == 0)
      {
        goto LABEL_66;
      }

      v13 = *v12;
      if (!*v12 || !os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v47 = 1024;
      v48 = 294;
      v49 = 1024;
      LODWORD(v50) = a1;
LABEL_13:
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
LABEL_66:
      v15 = 0;
LABEL_67:
      sub_73C20(v44);
      std::condition_variable::~condition_variable(&v53);
      std::mutex::~mutex(&v54);
      return v15;
    }

    v17 = sub_5544(14);
    if ((*(v17 + 8) & 1) != 0 && *v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
    {
      v36 = *a2;
      v37 = *(a2 + 8);
      sub_22CE0(__p);
    }

    buf = *a2;
    v15 = AudioObjectSetPropertyData(a1, &buf, a3, a4, 4u, a5);
    if (v15)
    {
      v18 = sub_5544(14);
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v15);
        v34 = *a2;
        v35 = *(a2 + 8);
        sub_22CE0(&v36);
      }

      goto LABEL_67;
    }

    v19 = sub_2BEE60(&v39);
    if (!HIDWORD(v19) && *a5 == v19)
    {
      v20 = sub_5544(14);
      if ((*(v20 + 8) & 1) == 0)
      {
        goto LABEL_66;
      }

      v13 = *v20;
      if (!*v20 || !os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v47 = 1024;
      v48 = 322;
      v49 = 1024;
      LODWORD(v50) = a1;
      goto LABEL_13;
    }

    v21 = 2000;
LABEL_35:
    v22 = sub_2BEE60(&v39);
    v15 = HIDWORD(v22);
    if (HIDWORD(v22))
    {
      goto LABEL_67;
    }

    if (*a5 == v22)
    {
      v31 = sub_5544(14);
      if ((*(v31 + 8) & 1) != 0 && *v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
      {
        v36 = *a2;
        v37 = *(a2 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_66;
    }

    if (v21 <= 0)
    {
      v33 = sub_5544(14);
      v15 = 2003329396;
      if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
      {
        v36 = *a2;
        v37 = *(a2 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_67;
    }

    v23.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v24 = sub_5544(14);
    if (*(v24 + 8))
    {
      v25 = *v24;
      if (*v24)
      {
        if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315906;
          *&buf.mScope = "HALPropertySynchronizer.h";
          v47 = 1024;
          v48 = 354;
          v49 = 2080;
          v50 = "with timeout";
          v51 = 1024;
          v52 = a1;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
        }
      }
    }

    sub_27A4();
    LOBYTE(__p[0]) = sub_2E6B08();
    *&buf.mSelector = &v54;
    LOBYTE(buf.mElement) = 1;
    std::mutex::lock(&v54);
    v26.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
    while (1)
    {
      if ((v45 & 1) != 0 || v26.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
      {
LABEL_59:
        if (LOBYTE(buf.mElement) == 1)
        {
          std::mutex::unlock(*&buf.mSelector);
        }

        sub_1DB4C4(__p);
        v21 += (std::chrono::system_clock::now().__d_.__rep_ - v23.__d_.__rep_) / -1000;
        goto LABEL_35;
      }

      v27.__d_.__rep_ = v26.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v27.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_58:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v26.__d_.__rep_)
      {
        goto LABEL_59;
      }
    }

    std::chrono::steady_clock::now();
    v28.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v28.__d_.__rep_)
    {
      v29 = 0;
      goto LABEL_56;
    }

    if (v28.__d_.__rep_ < 1)
    {
      if (v28.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v29 = 0x8000000000000000;
        goto LABEL_56;
      }
    }

    else if (v28.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v29 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_54;
    }

    v29 = 1000 * v28.__d_.__rep_;
LABEL_54:
    if (v29 > (v27.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v30.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_57:
      std::condition_variable::__do_timed_wait(&v53, &buf, v30);
      std::chrono::steady_clock::now();
      goto LABEL_58;
    }

LABEL_56:
    v30.__d_.__rep_ = v29 + v27.__d_.__rep_;
    goto LABEL_57;
  }

  v14 = sub_5544(14);
  v15 = 2003332927;
  if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
  {
    v53.__cv_.__sig = *a2;
    *v53.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v54);
  }

  return v15;
}

void sub_2BEA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_73C20(va);
  std::condition_variable::~condition_variable((v15 - 216));
  std::mutex::~mutex((v15 - 168));
  _Unwind_Resume(a1);
}

void sub_2BEAC0(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  sub_147688();
  if (byte_6E6560)
  {
    if ((byte_6E844A & 1) == 0)
    {
      v17 = 0;
      if (sub_1235F4(@"DisableCodecWindFilter", @"com.apple.audio.virtualaudio", &v17))
      {
        v4 = *sub_5544(14);
        v5 = v4;
        if (v4)
        {
          v6 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
          v7 = v17;
          if (v6)
          {
            buf.mSelector = 136315906;
            *&buf.mScope = "RunTimeDefaults.mm";
            v19 = 1024;
            v20 = 1378;
            v21 = 2080;
            v22 = "DisableCodecWindFilter";
            v23 = 1024;
            v24 = v17;
            _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Default %s: %d.", &buf, 0x22u);
          }
        }

        else
        {
          v7 = v17;
        }

        byte_6E8449 = v7 != 0;
      }

      byte_6E844A = 1;
    }

    if (byte_6E8449 == 1)
    {
      v10 = sub_5544(18);
      v2 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
        {
          buf.mSelector = 136315394;
          *&buf.mScope = "Device_Codec_Aspen.cpp";
          v19 = 1024;
          v20 = 1797;
          v9 = "%25s:%-5d The defaults write to disable the codec wind filter has been specified.";
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
    v8 = sub_5544(18);
    v2 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        buf.mSelector = 136315394;
        *&buf.mScope = "Device_Codec_Aspen.cpp";
        v19 = 1024;
        v20 = 1792;
        v9 = "%25s:%-5d Use of codec wind filter is not allowed on this device. Disabling it.";
LABEL_17:
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, v9, &buf, 0x12u);
      }

LABEL_18:
      LODWORD(v2) = 0;
    }
  }

  v11 = sub_5544(18);
  v12 = *v11;
  if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = "Disabling";
    *&buf.mScope = "Device_Codec_Aspen.cpp";
    buf.mSelector = 136315650;
    if (v2)
    {
      v13 = "Enabling";
    }

    v19 = 1024;
    v20 = 1801;
    v21 = 2080;
    v22 = v13;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s wind filter.", &buf, 0x1Cu);
  }

  if (*(a1 + 920) == v2)
  {
    v14 = sub_5544(18);
    if (*(v14 + 8))
    {
      v15 = *v14;
      if (*v14)
      {
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = "Disabled";
          *&buf.mScope = "Device_Codec_Aspen.cpp";
          buf.mSelector = 136315650;
          if (v2)
          {
            v16 = "Enabled";
          }

          v19 = 1024;
          v20 = 1812;
          v21 = 2080;
          v22 = v16;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d The wind filter was already %s.  Using cached state.", &buf, 0x1Cu);
        }
      }
    }
  }

  else
  {
    v17 = v2;
    strcpy(&buf, "fnw6tpni");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    sub_FDAC4(a1, &buf, 0, 0, 4u, &v17);
    *(a1 + 920) = v2;
  }
}

unint64_t sub_2BEE60(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  v3 = sub_542F0(a1, &buf, v2, *(a1 + 24));
  v5 = v4;
  if (v3)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v12, v3);
        v9 = *v1;
        v10 = *(v1 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  v7 = HIDWORD(v3);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
  }

  return v7 | (v3 << 32);
}

void sub_2BF00C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2BF02C(unsigned __int8 *a1, const AudioObjectPropertyAddress *a2, uint64_t a3, const void *a4, UInt32 *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v37 = sub_5544(14);
    if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
    {
      v59 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v39 = sub_5544(14);
    if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
    {
      v59 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p);
    }

    v40 = __cxa_allocate_exception(0x10uLL);
    *v40 = &off_6DDDD0;
    v40[2] = 561211770;
  }

  if (!a6)
  {
    v41 = sub_5544(14);
    if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
    {
      v59 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p);
    }

    v42 = __cxa_allocate_exception(0x10uLL);
    *v42 = &off_6DDDD0;
    v42[2] = 561211770;
  }

  mSelector = a2->mSelector;
  if (a2->mSelector > 1835103843)
  {
    if (mSelector > 1986229103)
    {
      if (mSelector != 1986229104)
      {
        if (mSelector == 1986290211)
        {
          v36 = *a5;
          if (v36 != (*(*a1 + 32))(a1, a2, a3, a4))
          {
            v57 = sub_5544(14);
            if (*v57 && os_log_type_enabled(*v57, OS_LOG_TYPE_ERROR))
            {
              v59 = *&a2->mSelector;
              mElement = a2->mElement;
              sub_22CE0(&__p);
            }

            v58 = __cxa_allocate_exception(0x10uLL);
            *v58 = &off_6DDDD0;
            v58[2] = 561211770;
          }

          if (a2->mElement == 6 && a2->mScope == 1869968496)
          {
            *a6 = xmmword_517240;
            return;
          }
        }

        else if (mSelector == 1987013732)
        {
          v13 = *a5;
          if (v13 != (*(*a1 + 32))(a1, a2, a3, a4))
          {
            v51 = sub_5544(14);
            if (*v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
            {
              v59 = *&a2->mSelector;
              mElement = a2->mElement;
              sub_22CE0(&__p);
            }

            v52 = __cxa_allocate_exception(0x10uLL);
            *v52 = &off_6DDDD0;
            v52[2] = 561211770;
          }

          if (a2->mElement == 6 && a2->mScope == 1869968496)
          {
            v14 = sub_3419E4();
            v15 = (sub_342A00(v14) * 100.0) + -100.0;
LABEL_59:
            *a6 = v15;
            return;
          }
        }

        goto LABEL_55;
      }

      v31 = *a5;
      if (v31 != (*(*a1 + 32))(a1, a2, a3, a4))
      {
        v53 = sub_5544(14);
        if (*v53 && os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
        {
          v59 = *&a2->mSelector;
          mElement = a2->mElement;
          sub_22CE0(&__p);
        }

        v54 = __cxa_allocate_exception(0x10uLL);
        *v54 = &off_6DDDD0;
        v54[2] = 561211770;
      }

      if (a2->mElement == 6 && a2->mScope == 1869968496)
      {
        v32 = sub_3419E4();
        v23 = sub_3428D4(v32);
        goto LABEL_45;
      }

      goto LABEL_55;
    }

    if (mSelector != 1835103844)
    {
      if (mSelector == 1836414053)
      {
        v21 = *a5;
        if (v21 != (*(*a1 + 32))(a1, a2, a3, a4))
        {
          v45 = sub_5544(14);
          if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
          {
            v59 = *&a2->mSelector;
            mElement = a2->mElement;
            sub_22CE0(&__p);
          }

          v46 = __cxa_allocate_exception(0x10uLL);
          *v46 = &off_6DDDD0;
          v46[2] = 561211770;
        }

        if (a2->mElement == 6 && a2->mScope == 1869968496)
        {
          v22 = sub_3419E4();
          v23 = sub_343174(v22);
LABEL_45:
          *a6 = v23;
          return;
        }
      }

LABEL_55:

      sub_5C0D8(a1, a2, a3, a4, a5, a6);
      return;
    }

    v33 = *a5;
    if (v33 != (*(*a1 + 32))(a1, a2, a3, a4))
    {
      v55 = sub_5544(14);
      if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
      {
        v59 = *&a2->mSelector;
        mElement = a2->mElement;
        sub_22CE0(&__p);
      }

      v56 = __cxa_allocate_exception(0x10uLL);
      *v56 = &off_6DDDD0;
      v56[2] = 561211770;
    }

    mScope = a2->mScope;
    v34 = a2->mElement;
    if (v34 != 6 || mScope != 1869968496)
    {
      __p.mSelector = 1986290211;
      __p.mScope = mScope;
      __p.mElement = v34;
      LODWORD(v59) = 16;
      sub_5C0D8(a1, &__p, 0, 0, &v59, buf);
      v15 = *buf;
      goto LABEL_59;
    }

    v17 = -1027131310;
LABEL_50:
    *a6 = v17;
    return;
  }

  if (mSelector > 1634759541)
  {
    if (mSelector == 1634759542)
    {
      v29 = *a5;
      if (v29 != (*(*a1 + 32))(a1, a2, a3, a4))
      {
        v49 = sub_5544(14);
        if (*v49 && os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
        {
          v59 = *&a2->mSelector;
          mElement = a2->mElement;
          sub_22CE0(&__p);
        }

        v50 = __cxa_allocate_exception(0x10uLL);
        *v50 = &off_6DDDD0;
        v50[2] = 561211770;
      }

      v30 = a2->mScope;
      *buf = 1987013732;
      *&buf[4] = v30;
      *&buf[8] = 0;
      (*(*a1 + 40))(a1, buf, a3, a4, a5, a6);
    }

    else
    {
      if (mSelector != 1685483630)
      {
        goto LABEL_55;
      }

      v18 = sub_5544(18);
      v19 = *v18;
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(&__p, a2->mSelector);
        v20 = v62 >= 0 ? &__p : *&__p.mSelector;
        *buf = 136315650;
        *&buf[4] = "Device_Codec_Aspen.cpp";
        v64 = 1024;
        v65 = 557;
        v66 = 2080;
        *v67 = v20;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Property '%s' is write-only", buf, 0x1Cu);
        if (v62 < 0)
        {
          operator delete(*&__p.mSelector);
        }
      }

      *a5 = 0;
    }
  }

  else
  {
    if (mSelector != 913796710)
    {
      if (mSelector != 1064725619)
      {
        goto LABEL_55;
      }

      v16 = *a5;
      if (v16 != (*(*a1 + 32))(a1, a2, a3, a4))
      {
        v43 = sub_5544(14);
        if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
        {
          v59 = *&a2->mSelector;
          mElement = a2->mElement;
          sub_22CE0(&__p);
        }

        v44 = __cxa_allocate_exception(0x10uLL);
        *v44 = &off_6DDDD0;
        v44[2] = 561211770;
      }

      v17 = 1;
      goto LABEL_50;
    }

    v24 = *a5;
    if (v24 != (*(*a1 + 32))(a1, a2, a3, a4))
    {
      v47 = sub_5544(14);
      if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
      {
        v59 = *&a2->mSelector;
        mElement = a2->mElement;
        sub_22CE0(&__p);
      }

      v48 = __cxa_allocate_exception(0x10uLL);
      *v48 = &off_6DDDD0;
      v48[2] = 561211770;
    }

    sub_5C0D8(a1, a2, a3, a4, a5, a6);
    if (*a6 != a1[920])
    {
      v25 = sub_5544(14);
      v26 = *v25;
      if (*v25)
      {
        if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
        {
          v27 = a1[920];
          v28 = *a6;
          *buf = 136315906;
          *&buf[4] = "Device_Codec_Aspen.cpp";
          v64 = 1024;
          v65 = 553;
          v66 = 1024;
          *v67 = v27;
          *&v67[4] = 1024;
          *&v67[6] = v28;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Internal state for wind filter property is out of sync.  State:%u, Value:%u", buf, 0x1Eu);
        }
      }
    }
  }
}

void sub_2C04C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2C0504(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v11 = sub_5544(14);
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 2003332927;
LABEL_30:
    exception[2] = v13;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *&a2->mSelector;
      v18 = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 561211770;
    goto LABEL_30;
  }

  mSelector = a2->mSelector;
  result = 4;
  if (a2->mSelector <= 1836414052)
  {
    if (mSelector > 1685483629)
    {
      if (mSelector == 1685483630)
      {
        return result;
      }

      v10 = 1835103844;
    }

    else
    {
      if (mSelector == 1064725619)
      {
        return result;
      }

      v10 = 1634759542;
    }

LABEL_16:
    if (mSelector == v10)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (mSelector > 1986290210)
  {
    if (mSelector == 1986290211)
    {
      return 16;
    }

    v10 = 1987013732;
    goto LABEL_16;
  }

  if (mSelector != 1836414053)
  {
    v10 = 1986229104;
    goto LABEL_16;
  }

  if (a2->mElement == 6)
  {
    mSelector = a2->mScope;
    v10 = 1869968496;
    goto LABEL_16;
  }

LABEL_18:

  return sub_5BD20(a1, a2, a3, a4);
}

uint64_t sub_2C08C8(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  if (a2->mSelector > 1836414052)
  {
    if (mSelector > 1986290210)
    {
      if (mSelector == 1986290211)
      {
LABEL_18:
        if (a2->mElement != 6 || a2->mScope != 1869968496)
        {
          return sub_BE734(a1, a2);
        }

        return 0;
      }

      if (mSelector != 1987013732)
      {
        return sub_BE734(a1, a2);
      }
    }

    else if (mSelector != 1836414053)
    {
      if (mSelector != 1986229104)
      {
        return sub_BE734(a1, a2);
      }

      goto LABEL_18;
    }

    if (a2->mElement != 6 || a2->mScope != 1869968496)
    {
      return sub_BE734(a1, a2);
    }

    return 1;
  }

  v3 = 1;
  if (mSelector > 1685483629)
  {
    if (mSelector == 1685483630)
    {
      return v3;
    }

    if (mSelector != 1835103844)
    {
      return sub_BE734(a1, a2);
    }

    return 0;
  }

  if (mSelector == 1064725619)
  {
    return 0;
  }

  if (mSelector != 1634759542)
  {
    return sub_BE734(a1, a2);
  }

  return v3;
}

BOOL sub_2C09DC(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  mSelector = a2->mSelector;
  if (a2->mSelector > 1836414052)
  {
    if (mSelector > 1986290210)
    {
      v6 = mSelector == 1987013732;
      v7 = 1986290211;
    }

    else
    {
      v6 = mSelector == 1836414053;
      v7 = 1986229104;
    }

    v9 = v6 || mSelector == v7;
    if (v9 && a2->mElement == 6 && a2->mScope == 1869968496)
    {
      return 1;
    }

    goto LABEL_22;
  }

  result = 1;
  if (mSelector > 1685483629)
  {
    if (mSelector != 1685483630 && mSelector != 1835103844)
    {
LABEL_22:
      sub_4DFC0(a1);
      return AudioObjectHasProperty(*(a1 + 268), a2) != 0;
    }
  }

  else
  {
    if (mSelector != 1064725619)
    {
      if (mSelector == 1634759542)
      {
        return result;
      }

      goto LABEL_22;
    }

    return a2->mScope == 1869968496;
  }

  return result;
}

void sub_2C0B0C(void *a1)
{
  sub_2C0B44(a1);

  operator delete();
}

uint64_t sub_2C0B44(void *a1)
{
  *a1 = off_6BFBF8;
  v2 = a1[113];
  a1[113] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_13A300((a1 + 69));
  sub_2C0C04(a1 + 68);
  v3 = a1[67];
  a1[67] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_4B2820(a1);
}

uint64_t *sub_2C0C04(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_292110(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_2C0C50(uint64_t a1, UInt32 a2, uint64_t a3)
{
  v6 = sub_4B1A68(a1, a2, a3, a3, 0);
  *v6 = off_6BFBF8;
  *(v6 + 536) = 0u;
  *(v6 + 552) = 0u;
  *(v6 + 568) = 0u;
  *(v6 + 584) = 0u;
  *(v6 + 600) = 0u;
  *(v6 + 616) = 0u;
  *(v6 + 632) = 0u;
  *(v6 + 648) = 0u;
  *(v6 + 664) = 0u;
  *(v6 + 680) = 0u;
  *(v6 + 696) = 0u;
  *(v6 + 712) = 0u;
  *(v6 + 728) = 0u;
  *(v6 + 744) = 0u;
  *(v6 + 760) = 0u;
  *(v6 + 776) = 0u;
  *(v6 + 792) = 0u;
  *(v6 + 808) = 0u;
  *(v6 + 824) = 0u;
  *(v6 + 840) = 0u;
  *(v6 + 856) = 0u;
  *(v6 + 872) = 0u;
  *(v6 + 888) = 0;
  sub_165D0C(v6 + 552);
  *(a1 + 896) = 0;
  if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
  {
    byte_709638 = MGGetBoolAnswer();
    __cxa_guard_release(&qword_709640);
  }

  if (byte_709638 != 1)
  {
    *inAddress = &inAddress[8];
    *&inAddress[8] = 0;
    v26[0] = 0;
    v26[1] = 0;
    *&inAddress[16] = 0;
    v25 = v26;
    sub_407194(inAddress, 0x706D6269u, 1768778083);
    sub_407194(inAddress, 0x706D6269u, 1768778033);
    sub_407194(inAddress, 0x706D7769u, 1701669219);
    sub_407194(inAddress, 0x70747469u, 1701669219);
    sub_40736C(inAddress, 0x656D6963u, 1886222185);
    sub_40736C(inAddress, 0x656D6963u, 1886680169);
    sub_40736C(inAddress, 0x696D6963u, 1886216809);
    sub_40736C(inAddress, 0x696D6931u, 1886216809);
    sub_40736C(inAddress, 0x736D6963u, 1886216809);
    sub_40736C(inAddress, 0x696D6932u, 1886216809);
    sub_40736C(inAddress, 0x6C6D6963u, 1886216809);
    sub_40736C(inAddress, 0x666D6963u, 1886216809);
    sub_40736C(inAddress, 0x6265616Du, 1886216809);
    operator new();
  }

  *(a1 + 904) = 0;
  *(a1 + 912) = sub_46AC8C();
  *(a1 + 920) = 0;
  *(a1 + 924) = 2;
  *(a1 + 928) = 0;
  *(a1 + 932) = 0;
  if (!a2)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *inAddress = 136315394;
      *&inAddress[4] = "Device_Codec_Aspen.cpp";
      *&inAddress[12] = 1024;
      *&inAddress[14] = 282;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", inAddress, 0x12u);
    }

LABEL_27:
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v7 = *(a3 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  if (!v7)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *inAddress = 136315394;
      *&inAddress[4] = "Device_Codec_Aspen.cpp";
      *&inAddress[12] = 1024;
      *&inAddress[14] = 283;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", inAddress, 0x12u);
    }

    goto LABEL_27;
  }

  *&v23.mSelector = 0x696E707436776E66;
  v23.mElement = 0;
  if ((*(*a1 + 16))(a1, &v23))
  {
    *inAddress = 4;
    inData = 0;
    sub_5C0D8(a1, &v23, 0, 0, inAddress, &inData);
    *(a1 + 920) = inData != 0;
    sub_147688();
    sub_2BEAC0(a1, byte_6E6560);
  }

  v8 = (*(*a1 + 120))(a1);
  if (AudioObjectHasProperty(v8, &qword_6E9118))
  {
    v9 = (*(*a1 + 120))(a1);
    inData = 0;
    strcpy(inAddress, "dneitpni");
    inAddress[9] = 0;
    *&inAddress[10] = 0;
    v10 = AudioObjectSetPropertyData(v9, inAddress, 0, 0, 4u, &inData);
    if (v10)
    {
      v18 = __cxa_allocate_exception(0x10uLL);
      *v18 = &off_6DDDD0;
      v18[2] = v10;
    }

    if (atomic_load((a1 + 932)))
    {
      v19 = sub_5544(14);
      v20 = *v19;
      if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *inAddress = 136315394;
        *&inAddress[4] = "Device_Codec_Aspen.cpp";
        *&inAddress[12] = 1024;
        *&inAddress[14] = 300;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", inAddress, 0x12u);
      }

      v21 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v21, "Postcondition failure.");
    }
  }

  if (sub_2B8E28(a1) & 1) != 0 || (*inAddress = 0x6F7574706D757465, *&inAddress[8] = 4, ((*(*a1 + 16))(a1, inAddress)))
  {
    sub_4B4F1C(a1, 1, 0x6F757470u, 0);
  }

  return a1;
}

void sub_2C12FC(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_709640);
  sub_13A300(v1 + 552);
  sub_2C0C04((v1 + 544));
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_4B2820(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2C1420(uint64_t a1)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8), &qword_6E9118);
  if (result)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        v6 = 136315394;
        v7 = "Device_Codec_Aspen.cpp";
        v8 = 1024;
        v9 = 110;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Requesting that the codec disable microphone power.", &v6, 0x12u);
      }
    }

    v5 = *(a1 + 8);
    v6 = 0;
    return sub_2C152C(v5);
  }

  return result;
}

uint64_t sub_2C152C(uint64_t a1)
{
  result = sub_147610(a1);
  if (result)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v2;
  }

  return result;
}

uint64_t sub_2C15C4(uint64_t a1)
{
  result = (*(**(a1 + 8) + 16))(*(a1 + 8), &qword_6E9118);
  if (result)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        v6 = 136315394;
        v7 = "Device_Codec_Aspen.cpp";
        v8 = 1024;
        v9 = 101;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Requesting that the codec enable microphone power.", &v6, 0x12u);
      }
    }

    v5 = *(a1 + 8);
    v6 = 1;
    return sub_2C152C(v5);
  }

  return result;
}

void sub_2C1714(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6BFDE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2C1788(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1 + 48;
  v31 = 1;
  v24 = a1 + 48;
  sub_26C0(a1 + 48);
  v4 = *(a1 + 24);
  v5 = *(a1 + 24);
  v25 = *(a1 + 32);
  if (v25 == v5)
  {
    v20 = sub_5544(14);
    v21 = sub_468EC(1, *v20, *(v20 + 8));
    v22 = v21;
    if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "DSPChain.mm";
      v34 = 1024;
      v35 = 1514;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v6 = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  do
  {
    v8 = *(v5 + 8);
    v7 = *(v5 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = 0;
    v9 = (*(*v8 + 232))(v8, 1, &v29);
    if (v9)
    {
      v16 = sub_5544(14);
      v17 = sub_468EC(1, *v16, *(v16 + 8));
      v18 = v17;
      if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v33 = "DSPChain.mm";
        v34 = 1024;
        v35 = 1522;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unexpected error from GetBusCount", buf, 0x12u);
      }

      v19 = __cxa_allocate_exception(0x10uLL);
      *v19 = &off_6DDDD0;
      v19[2] = v9;
    }

    if (!v6 && v29)
    {
      v10 = 1;
      do
      {
        v11 = (*(*v8 + 136))(v8, 1, v10 - 1);
        v12 = *(v11 + 16);
        v27[0] = *v11;
        v27[1] = v12;
        v28 = *(v11 + 32);
        sub_902B0(a2, v27);
        v13 = *sub_5544(25);
        v14 = v13;
        if (v13)
        {
          v15 = v13;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            sub_618A4(&v26);
          }
        }

        v6 = *(a2 + 40);
        if (v10 >= v29)
        {
          break;
        }

        ++v10;
      }

      while (!v6);
    }

    if (v7)
    {
      sub_1A8C0(v7);
    }

    v5 += 24;
  }

  while (v5 != v25);
  sub_3174(v24);
}