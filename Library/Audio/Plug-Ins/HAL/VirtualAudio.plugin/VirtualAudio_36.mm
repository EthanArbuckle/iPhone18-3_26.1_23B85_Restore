uint64_t sub_2FA4B0(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = *a2;
  v5 = a2[1];
  *a1 = off_6C0F48;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 1937204590;
  *(a1 + 28) = a3;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  v7 = a2[1];
  if (!v7 || (v8 = std::__shared_weak_count::lock(v7)) == 0 || (v9 = *a2, sub_1A8C0(v8), !v9))
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "RoutingHandlerAction_BluetoothSoftwareVolume.h";
      v16 = 1024;
      v17 = 28;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return a1;
}

void sub_2FA624(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2FA650(unsigned int a1, unsigned int a2)
{
  v4 = sub_5544(20);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_22170(v29, a1);
    v6 = v30;
    v7 = v29[0];
    sub_22170(__p, a2);
    v8 = v29;
    if (v6 < 0)
    {
      v8 = v7;
    }

    if (v28 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
    v32 = 1024;
    v33 = 77;
    v34 = 2080;
    v35 = v8;
    v36 = 2080;
    v37 = *&v9;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CheckCodecInputGainDefaultForCall input port: %s output port: %s", buf, 0x26u);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }
  }

  if (a1 == 1886216809 && a2 == 1886545251)
  {
    v10 = &byte_6E83C0;
    if (byte_6E83C8)
    {
      goto LABEL_54;
    }

    byte_6E83C8 = 1;
    *buf = 0;
    v11 = sub_286A88(@"HandsetUplinkGain", buf);
    v12 = *buf;
    if (!v11)
    {
      v12 = 0.0;
    }

    byte_6E83C0 = v11;
    dword_6E83C4 = LODWORD(v12);
    if (!v11)
    {
      goto LABEL_54;
    }

    v13 = *sub_5544(14);
    v14 = v13;
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "RunTimeDefaults.mm";
      v32 = 1024;
      v33 = 719;
      v34 = 2080;
      v35 = "HandsetUplinkGain";
      v36 = 2048;
      v37 = *&dword_6E83C4;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %f dB", buf, 0x26u);
    }

LABEL_53:

LABEL_54:
    v21 = *v10;
    v22 = *(v10 + 1) << 32;
    return v22 | v21;
  }

  if (a1 == 1886216809 && a2 == 1886613611 || a1 == 1886216809 && a2 == 1885892727)
  {
    v10 = &byte_6E83CC;
    if (byte_6E83D4)
    {
      goto LABEL_54;
    }

    byte_6E83D4 = 1;
    *buf = 0;
    v15 = sub_286A88(@"SpeakerphoneUplinkGain", buf);
    v16 = *buf;
    if (!v15)
    {
      v16 = 0.0;
    }

    byte_6E83CC = v15;
    dword_6E83D0 = LODWORD(v16);
    if (!v15)
    {
      goto LABEL_54;
    }

    v17 = *sub_5544(14);
    v14 = v17;
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "RunTimeDefaults.mm";
      v32 = 1024;
      v33 = 735;
      v34 = 2080;
      v35 = "SpeakerphoneUplinkGain";
      v36 = 2048;
      v37 = *&dword_6E83D0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %f dB", buf, 0x26u);
    }

    goto LABEL_53;
  }

  if (a1 == 1886222185 && a2 == 1885892727)
  {
    v10 = &byte_6E83D8;
    if (byte_6E83E0)
    {
      goto LABEL_54;
    }

    byte_6E83E0 = 1;
    *buf = 0;
    v18 = sub_286A88(@"HeadsetUplinkGain", buf);
    v19 = *buf;
    if (!v18)
    {
      v19 = 0.0;
    }

    byte_6E83D8 = v18;
    dword_6E83DC = LODWORD(v19);
    if (!v18)
    {
      goto LABEL_54;
    }

    v20 = *sub_5544(14);
    v14 = v20;
    if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "RunTimeDefaults.mm";
      v32 = 1024;
      v33 = 751;
      v34 = 2080;
      v35 = "HeadsetUplinkGain";
      v36 = 2048;
      v37 = *&dword_6E83DC;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %f dB", buf, 0x26u);
    }

    goto LABEL_53;
  }

  v21 = 0;
  v22 = 0x4479C00000000000;
  if (a1 == 1886680169 && a2 == 1886680175)
  {
    v10 = &byte_6E83E4;
    if (byte_6E83EC)
    {
      goto LABEL_54;
    }

    byte_6E83EC = 1;
    *buf = 0;
    v23 = sub_286A88(@"TTYUplinkGain", buf);
    v24 = *buf;
    if (!v23)
    {
      v24 = 0.0;
    }

    byte_6E83E4 = v23;
    dword_6E83E8 = LODWORD(v24);
    if (!v23)
    {
      goto LABEL_54;
    }

    v25 = *sub_5544(14);
    v14 = v25;
    if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "RunTimeDefaults.mm";
      v32 = 1024;
      v33 = 767;
      v34 = 2080;
      v35 = "TTYUplinkGain";
      v36 = 2048;
      v37 = *&dword_6E83E8;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %f dB", buf, 0x26u);
    }

    goto LABEL_53;
  }

  return v22 | v21;
}

void sub_2FAC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2FAC4C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = sub_3FC1B4(a3 + 8, a2);
  if (v4 & 0x100) != 0 && (v4)
  {
    (*(*a1 + 144))(&v12, a1);
    v5 = v12;
    for (i = v13; v5 != i; v5 += 16)
    {
      v8 = *v5;
      v7 = *(v5 + 8);
      v11[0] = *v5;
      v11[1] = &v7->__vftable;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v9 = std::__shared_weak_count::lock(v7);
        if (v9)
        {
          v10 = v9;
          if (v8)
          {
            if ((*(*v8 + 19))(v8))
            {
              operator new();
            }
          }

          sub_1A8C0(v10);
        }

        std::__shared_weak_count::__release_weak(v7);
      }
    }

    v11[0] = &v12;
    sub_202B60(v11);
  }
}

void sub_2FAE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, char a16)
{
  if (v18)
  {
    sub_1A8C0(v18);
  }

  sub_1A8C0(v17);
  std::__shared_weak_count::__release_weak(v16);
  a14 = &a16;
  sub_202B60(&a14);
  _Unwind_Resume(a1);
}

BOOL sub_2FAEE0(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v4 = 1;
  if (a4 != 1633759844 && a4 != 1634231920 && a4 != 1635085420)
  {
    sub_3FBFD8(&v8, a1 + 8, a2);
    if (v10 == 1)
    {
      if (v8 != v9)
      {
        v6 = v8;
        while (*v6 != a3)
        {
          if (++v6 == v9)
          {
            v6 = v9;
            break;
          }
        }

        v4 = v6 == v9;
      }

      if (v8)
      {
        v9 = v8;
        operator delete(v8);
      }
    }
  }

  return v4;
}

BOOL sub_2FAFA0(signed int a1)
{
  result = 1;
  if (a1 > 1919776354)
  {
    if (a1 > 1987077986)
    {
      if (a1 > 1987208038)
      {
        if (a1 > 1987212136)
        {
          if (a1 == 2003133027)
          {
            return 0;
          }

          v6 = 29545;
        }

        else
        {
          if (a1 == 1987208039)
          {
            return 0;
          }

          v6 = 28525;
        }

        v3 = v6 | 0x76720000;
        goto LABEL_49;
      }

      if (a1 > 1987081832)
      {
        if (a1 == 1987081833)
        {
          return 0;
        }

        v4 = 30319;
      }

      else
      {
        if (a1 == 1987077987)
        {
          return 0;
        }

        v4 = 29293;
      }

      v3 = v4 | 0x76700000;
      goto LABEL_49;
    }

    if (a1 <= 1937007471)
    {
      if (a1 == 1919776355)
      {
        return 0;
      }

      if (a1 == 1936745328)
      {
        return result;
      }

      v3 = 1936747374;
    }

    else
    {
      if (a1 > 1986556787)
      {
        if (a1 != 1986556788)
        {
          v3 = 1986884455;
          goto LABEL_49;
        }

        return 0;
      }

      if (a1 == 1937007472)
      {
        return result;
      }

      v3 = 1986098036;
    }
  }

  else if (a1 <= 1768778863)
  {
    if (a1 > 1735222131)
    {
      if (a1 > 1768057202)
      {
        if (a1 != 1768057203)
        {
          v7 = 25702;
LABEL_38:
          v5 = v7 | 0x696D0000;
          goto LABEL_44;
        }
      }

      else if (a1 != 1735222132)
      {
        v5 = 1751212899;
        goto LABEL_44;
      }

      return 0;
    }

    if (a1 == 1701013792 || a1 == 1701013869)
    {
      return 0;
    }

    v3 = 1701017120;
  }

  else
  {
    if (a1 <= 1835229548)
    {
      if (a1 <= 1768781410)
      {
        if (a1 == 1768778864)
        {
          return result;
        }

        v3 = 1768779619;
        goto LABEL_49;
      }

      if (a1 != 1768781411)
      {
        v7 = 30322;
        goto LABEL_38;
      }

      return 0;
    }

    if (a1 > 1836281203)
    {
      if (a1 == 1836281204)
      {
        return result;
      }

      v5 = 1918990112;
LABEL_44:
      if (a1 == v5)
      {
        return result;
      }

      goto LABEL_52;
    }

    if (a1 == 1835229549)
    {
      return result;
    }

    v3 = 1836021360;
  }

LABEL_49:
  if (a1 == v3)
  {
    return 0;
  }

LABEL_52:
  v8 = sub_5544(14);
  v9 = *v8;
  if (!*v8)
  {
    return 0;
  }

  result = os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_22170(__p, a1);
    if (v12 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315650;
    v14 = "RoutingHandlerUtilities_Aspen.cpp";
    v15 = 1024;
    v16 = 1074;
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unhandled mode '%s' in switch statement", buf, 0x1Cu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_2FB328(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  sub_C4A80(a1, a2, a3, a4, a5, 1);
  if (*a1 == a1[1])
  {
    v6 = sub_5544(21);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "RoutingHandlerUtilities_Aspen.cpp";
        v10 = 1024;
        v11 = 1091;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unable to locate a set of sub-ports.", &v8, 0x12u);
      }
    }
  }
}

void sub_2FB400(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2FB41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  if (*(a2 + 144) != 1886216809 || *(a2 + 96) == *(a2 + 104))
  {
    v20 = 0;
  }

  else
  {
    sub_2883D8(buf);
    v14 = *buf;
    v15 = *&buf[8];
    if (*buf)
    {
      operator delete(*buf);
    }

    if (v14 != v15)
    {
      v16 = sub_4DE428(a2);
      v17 = sub_5544(21);
      if (*(v17 + 8))
      {
        v18 = *v17;
        if (*v17)
        {
          if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(&__p, v16);
            v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            *buf = 136315650;
            *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 284;
            *&buf[18] = 2080;
            *&buf[20] = v19;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Resolved sub-port set inquiry using system defaults override: %s.", buf, 0x1Cu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }

LABEL_42:
      *buf = v16;
      sub_1E54B0(a1, buf, 1);
      goto LABEL_54;
    }

    v20 = 1;
  }

  sub_8BD14(&__p, *(a2 + 80), *(a2 + 88));
  size = __p.__r_.__value_.__l.__size_;
  *buf = *&__p.__r_.__value_.__l.__data_;
  if (__p.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
    v22 = sub_C4FD4(a3, buf);
    std::__shared_weak_count::__release_weak(size);
  }

  else
  {
    v22 = sub_C4FD4(a3, buf);
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    sub_1A8C0(__p.__r_.__value_.__l.__size_);
  }

  if (a3 + 8 != v22 && *(v22 + 48) != *(v22 + 56))
  {
    v23 = sub_5544(21);
    if (*(v23 + 8))
    {
      v24 = *v23;
      if (*v23)
      {
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
        {
          sub_10898C(&__p, *(v22 + 48), *(v22 + 56));
          v25 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 298;
          *&buf[18] = 2080;
          *&buf[20] = v25;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Resolved sub-port set inquiry using client-specified sub-ports: %s.", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_46980(a1, *(v22 + 48), *(v22 + 56), (*(v22 + 56) - *(v22 + 48)) >> 2);
    goto LABEL_54;
  }

  if (v20)
  {
    if (sub_3FC368(a4, a6))
    {
      v26 = sub_8703C();
      if ((*(*v26 + 192))(v26) <= 1)
      {
        v16 = sub_4DE7FC(a2);
        v27 = sub_5544(21);
        v28 = *v27;
        if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(&__p, v16);
          v29 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 319;
          *&buf[18] = 2080;
          *&buf[20] = v29;
          _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Resolved sub-port set inquiry using internal sub-port override: %s.", buf, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        goto LABEL_42;
      }
    }
  }

  *buf = a7;
  *&buf[4] = a6;
  *&buf[8] = *sub_C53D8();
  *&buf[24] = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  sub_C5058(&__p, a5, buf);
  v30 = *&__p.__r_.__value_.__l.__data_;
  if (__p.__r_.__value_.__r.__words[0] == __p.__r_.__value_.__l.__size_)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (!v30)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v31 = sub_5544(21);
  if (*(v31 + 8))
  {
    v32 = *v31;
    if (*v31)
    {
      if (os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
      {
        sub_10898C(&v43, v30, *(&v30 + 1));
        v33 = (v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v43 : v43.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 332;
        *&buf[18] = 2080;
        *&buf[20] = v33;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d Resolved sub-port set inquiry using the connection's ModeMap: %s.", buf, 0x1Cu);
        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_46980(a1, v30, *(&v30 + 1), (*(&v30 + 1) - v30) >> 2);
  if (v30)
  {
LABEL_53:
    operator delete(v30);
  }

LABEL_54:
  if (*a1 == *(a1 + 8))
  {
    v34 = *(a2 + 200);
    if (v34)
    {
      v35 = *(a2 + 192);
      atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v36 = std::__shared_weak_count::lock(v34);
      std::__shared_weak_count::__release_weak(v34);
      if (v36)
      {
        if (v35)
        {
          (*(*v35 + 280))(buf, v35, *(a2 + 144));
          v37 = *a1;
          if (*a1)
          {
            *(a1 + 8) = v37;
            operator delete(v37);
          }

          v38 = *buf;
          *a1 = *buf;
          v39 = *&buf[8];
          *(a1 + 8) = *&buf[8];
          if (v38 != v39)
          {
            v40 = sub_5544(21);
            if (*(v40 + 8))
            {
              v41 = *v40;
              if (*v40)
              {
                if (os_log_type_enabled(*v40, OS_LOG_TYPE_DEBUG))
                {
                  sub_24C060(&__p, *a1, *(a1 + 8));
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    p_p = &__p;
                  }

                  else
                  {
                    p_p = __p.__r_.__value_.__r.__words[0];
                  }

                  *buf = 136315650;
                  *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1139;
                  *&buf[18] = 2080;
                  *&buf[20] = p_p;
                  _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEBUG, "%25s:%-5d Resolved sub-port set inquiry using the device's default sub-port lookup mechanism: %s.", buf, 0x1Cu);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }
              }
            }
          }
        }

        sub_1A8C0(v36);
      }
    }
  }
}

void sub_2FBAA8(_Unwind_Exception *a1)
{
  sub_1A8C0(v2);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_2FBAF8(void *result, int a2, int a3, char a4, uint64_t a5, uint64_t a6)
{
  if ((a4 & 1) == 0)
  {
    v8 = result;
    *buf = a2;
    *&buf[4] = a3;
    v20 = *sub_C53D8();
    LODWORD(v21) = 0;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    result = sub_C8588(a5, buf);
    if (v9)
    {
      if (result)
      {
        v10 = *result;
        v11 = result[1];
        if (*result != v11)
        {
          do
          {
            if (((*(*v8 + 16))(v8, v10) & 1) == 0)
            {
              v12 = sub_5544(20);
              if (*v12)
              {
                if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*v8 + 128))(v18, v8);
                  sub_22CE0(__p);
                }
              }
            }

            if (*(v10 + 80) != 1 || (v13 = *(v10 + 72), v14 = (*(*v8 + 120))(v8), result = (**v13)(v13, v14), result))
            {
              LOBYTE(__p[0]) = *(v10 + 64);
              v16 = *(v10 + 65);
              *buf = v8;
              *&v20 = v10;
              *(&v20 + 1) = __p;
              v21 = &v16;
              v22 = a6;
              v23 = v8;
              v24 = v10;
              v25 = __p;
              v26 = &v16;
              v27 = a6;
              v28 = v8;
              v29 = v10;
              v30 = __p;
              v31 = &v16;
              v32 = a6;
              v33 = v10;
              v15 = *(v10 + 56);
              if (v15 == -1)
              {
                sub_20B4EC();
              }

              v18[0] = buf;
              result = (off_6C0F70[v15])(v18, v10 + 16);
            }

            v10 += 88;
          }

          while (v10 != v11);
        }
      }
    }
  }

  return result;
}

void sub_2FBDE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2FBE08(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_129E80(__p, *(v1 + 120) + 16);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "RoutingHandlerUtilities_Aspen.cpp";
    v10 = 1024;
    v11 = 1208;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal remote property Variant type: %s", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Illegal remote property Variant type: %s");
}

void sub_2FBF34(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_129E80(__p, *(v1 + 120) + 16);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "RoutingHandlerUtilities_Aspen.cpp";
    v10 = 1024;
    v11 = 1208;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal remote property Variant type: %s", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Illegal remote property Variant type: %s");
}

void sub_2FC060(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_129E80(__p, *(v1 + 120) + 16);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "RoutingHandlerUtilities_Aspen.cpp";
    v10 = 1024;
    v11 = 1208;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal remote property Variant type: %s", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Illegal remote property Variant type: %s");
}

void sub_2FC18C(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_129E80(__p, *(v1 + 120) + 16);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "RoutingHandlerUtilities_Aspen.cpp";
    v10 = 1024;
    v11 = 1208;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal remote property Variant type: %s", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Illegal remote property Variant type: %s");
}

void sub_2FC2B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_129E80(__p, *(v1 + 120) + 16);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "RoutingHandlerUtilities_Aspen.cpp";
    v10 = 1024;
    v11 = 1208;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal remote property Variant type: %s", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Illegal remote property Variant type: %s");
}

void sub_2FC3E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_129E80(__p, *(v1 + 120) + 16);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "RoutingHandlerUtilities_Aspen.cpp";
    v10 = 1024;
    v11 = 1208;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal remote property Variant type: %s", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Illegal remote property Variant type: %s");
}

void sub_2FC510(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_129E80(__p, *(v1 + 120) + 16);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "RoutingHandlerUtilities_Aspen.cpp";
    v10 = 1024;
    v11 = 1208;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal remote property Variant type: %s", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Illegal remote property Variant type: %s");
}

uint64_t sub_2FC63C(uint64_t *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  v24 = *a2;
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  v6 = **(v2 + 96);
  v7 = **(v2 + 104);
  v8 = *(v2 + 112);
  v9 = sub_5544(20);
  if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    sub_22CE0(v27);
  }

  outData = 0.0;
  ioDataSize = 8;
  v10 = (*(*v4 + 120))(v4);
  result = AudioObjectGetPropertyData(v10, v5, 0, 0, &ioDataSize, &outData);
  v12 = result;
  if (result)
  {
    v20 = sub_5544(14);
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      sub_22CE0(v27);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v12;
  }

  if (ioDataSize != 8)
  {
    v22 = sub_5544(14);
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      sub_22CE0(v27);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v23, "Property %s for device %s failed returned size %u (expected %lu).");
  }

  if (outData != v3)
  {
    v13 = sub_5544(20);
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      sub_22CE0(v27);
    }

    if (v6)
    {
      operator new();
    }

    v14 = *v4;
    if (v7)
    {
      v15 = (*(v14 + 120))(v4);
      result = sub_2FCD9C(v15, v5, &v24);
      v16 = result;
      if (result)
      {
        v17 = sub_5544(14);
        v18 = *v17;
        if (*v17)
        {
          if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
          {
            buf[0] = 136315394;
            *&buf[1] = "RoutingHandlerUtilities_Aspen.cpp";
            v29 = 1024;
            v30 = 368;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Error setting device property synchronously", buf, 0x12u);
          }
        }

        v19 = __cxa_allocate_exception(0x10uLL);
        *v19 = &off_6DDDD0;
        v19[2] = v16;
      }
    }

    else
    {
      return (*(v14 + 48))(v4, v5, 0, 0, 8, &v24);
    }
  }

  return result;
}

void sub_2FCD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2FCD9C(AudioObjectID a1, uint64_t a2, double *a3)
{
  v6 = sub_5544(14);
  if ((*(v6 + 8) & 1) != 0 && *v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v52.__cv_.__sig = *a2;
    *v52.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v53);
  }

  buf = *a2;
  if (AudioObjectHasProperty(a1, &buf))
  {
    memset(v53.__m_.__opaque, 0, sizeof(v53.__m_.__opaque));
    v53.__m_.__sig = 850045863;
    memset(v52.__cv_.__opaque, 0, sizeof(v52.__cv_.__opaque));
    v52.__cv_.__sig = 1018212795;
    v44 = 0;
    sub_745E8(v43, a1, a2, &v52, &v53, &v44);
    v38 = a1;
    v39 = *a2;
    v40 = *(a2 + 8);
    v41 = 0;
    v42 = 0;
    buf = *a2;
    if (!sub_66E40(a1, &buf))
    {
      v13 = sub_5544(14);
      v10 = 1852797029;
      if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        v35 = *a2;
        v36 = *(a2 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_67;
    }

    v7 = COERCE_DOUBLE(sub_2FD8D8(&v38));
    if (!v8 && *a3 == v7)
    {
      v14 = sub_5544(14);
      if ((*(v14 + 8) & 1) == 0)
      {
        goto LABEL_66;
      }

      v15 = *v14;
      if (!*v14 || !os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v46 = 1024;
      v47 = 294;
      v48 = 1024;
      LODWORD(v49) = a1;
      goto LABEL_61;
    }

    v9 = sub_5544(14);
    if ((*(v9 + 8) & 1) != 0 && *v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      v35 = *a2;
      v36 = *(a2 + 8);
      sub_22CE0(__p);
    }

    buf = *a2;
    v10 = AudioObjectSetPropertyData(a1, &buf, 0, 0, 8u, a3);
    if (v10)
    {
      v11 = sub_5544(14);
      if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v10);
        v33 = *a2;
        v34 = *(a2 + 8);
        sub_22CE0(&v35);
      }

      goto LABEL_67;
    }

    v16 = COERCE_DOUBLE(sub_2FD8D8(&v38));
    if (!v17 && *a3 == v16)
    {
      v29 = sub_5544(14);
      if ((*(v29 + 8) & 1) == 0)
      {
        goto LABEL_66;
      }

      v15 = *v29;
      if (!*v29 || !os_log_type_enabled(*v29, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v46 = 1024;
      v47 = 322;
      v48 = 1024;
      LODWORD(v49) = a1;
LABEL_61:
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
LABEL_66:
      v10 = 0;
LABEL_67:
      sub_73C20(v43);
      std::condition_variable::~condition_variable(&v52);
      std::mutex::~mutex(&v53);
      return v10;
    }

    v18 = 2000;
LABEL_29:
    v19 = COERCE_DOUBLE(sub_2FD8D8(&v38));
    v10 = v20;
    if (v20)
    {
      goto LABEL_67;
    }

    if (*a3 == v19)
    {
      v30 = sub_5544(14);
      if ((*(v30 + 8) & 1) != 0 && *v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
      {
        v35 = *a2;
        v36 = *(a2 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_66;
    }

    if (v18 <= 0)
    {
      v32 = sub_5544(14);
      v10 = 2003329396;
      if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
      {
        v35 = *a2;
        v36 = *(a2 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_67;
    }

    v21.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v22 = sub_5544(14);
    if (*(v22 + 8))
    {
      v23 = *v22;
      if (*v22)
      {
        if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315906;
          *&buf.mScope = "HALPropertySynchronizer.h";
          v46 = 1024;
          v47 = 354;
          v48 = 2080;
          v49 = "with timeout";
          v50 = 1024;
          v51 = a1;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
        }
      }
    }

    sub_27A4();
    LOBYTE(__p[0]) = sub_2E6B08();
    *&buf.mSelector = &v53;
    LOBYTE(buf.mElement) = 1;
    std::mutex::lock(&v53);
    v24.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
    while (1)
    {
      if ((v44 & 1) != 0 || v24.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
      {
LABEL_53:
        if (LOBYTE(buf.mElement) == 1)
        {
          std::mutex::unlock(*&buf.mSelector);
        }

        sub_1DB4C4(__p);
        v18 += (std::chrono::system_clock::now().__d_.__rep_ - v21.__d_.__rep_) / -1000;
        goto LABEL_29;
      }

      v25.__d_.__rep_ = v24.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v25.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_52:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v24.__d_.__rep_)
      {
        goto LABEL_53;
      }
    }

    std::chrono::steady_clock::now();
    v26.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v26.__d_.__rep_)
    {
      v27 = 0;
      goto LABEL_50;
    }

    if (v26.__d_.__rep_ < 1)
    {
      if (v26.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v27 = 0x8000000000000000;
        goto LABEL_50;
      }
    }

    else if (v26.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v27 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_48;
    }

    v27 = 1000 * v26.__d_.__rep_;
LABEL_48:
    if (v27 > (v25.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v28.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_51:
      std::condition_variable::__do_timed_wait(&v52, &buf, v28);
      std::chrono::steady_clock::now();
      goto LABEL_52;
    }

LABEL_50:
    v28.__d_.__rep_ = v27 + v25.__d_.__rep_;
    goto LABEL_51;
  }

  v12 = sub_5544(14);
  v10 = 2003332927;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    v52.__cv_.__sig = *a2;
    *v52.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v53);
  }

  return v10;
}

void sub_2FD82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::condition_variable *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_73C20(&a23);
  std::condition_variable::~condition_variable(&a38);
  std::mutex::~mutex((v38 - 184));
  _Unwind_Resume(a1);
}

uint64_t sub_2FD8D8(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  sub_1FE35C(&v10, a1, &buf, v2, *(a1 + 24));
  v3 = v10;
  if (v10)
  {
    v4 = sub_5544(14);
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v9, v3);
        v6 = *v1;
        v7 = *(v1 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  if (v12)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

void sub_2FDA84(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2FDAA4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 8);
  if (v2 == 1)
  {
    v4 = (*(*v3 + 120))(v3);
    result = sub_2FCD9C(v4, a1 + 16, (a1 + 40));
    if (result)
    {
      v7 = result;
      v8 = *sub_5544(14);
      if (v8)
      {
        log = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v12 = "RoutingHandlerAction_SetObjectProperty.h";
          v13 = 1024;
          v14 = 109;
          _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Error setting device property synchronously", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v7;
    }
  }

  else
  {
    v6 = *(*v3 + 48);

    return v6();
  }

  return result;
}

uint64_t sub_2FDC5C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 8);
  if (v2 == 1)
  {
    v4 = (*(*v3 + 120))(v3);
    result = sub_2FCD9C(v4, a1 + 16, (a1 + 32));
    if (result)
    {
      v7 = result;
      v8 = *sub_5544(14);
      if (v8)
      {
        log = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v12 = "RoutingHandlerAction_SetObjectProperty.h";
          v13 = 1024;
          v14 = 95;
          _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Error setting device property synchronously", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v7;
    }
  }

  else
  {
    v6 = *(*v3 + 48);

    return v6();
  }

  return result;
}

uint64_t sub_2FDE2C(uint64_t *a1, float *a2)
{
  v2 = *a1;
  v3 = *a2;
  v24 = *a2;
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v6 = **(v2 + 56);
  v7 = **(v2 + 64);
  v8 = *(v2 + 72);
  v9 = sub_5544(20);
  if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    sub_22CE0(v27);
  }

  ioDataSize = 4;
  outData = 0.0;
  v10 = (*(*v4 + 120))(v4);
  result = AudioObjectGetPropertyData(v10, v5, 0, 0, &ioDataSize, &outData);
  v12 = result;
  if (result)
  {
    v20 = sub_5544(14);
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      sub_22CE0(v27);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v12;
  }

  if (ioDataSize != 4)
  {
    v22 = sub_5544(14);
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      sub_22CE0(v27);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v23, "Property %s for device %s failed returned size %u (expected %lu).");
  }

  if (outData != v3)
  {
    v13 = sub_5544(20);
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      sub_22CE0(v27);
    }

    if (v6)
    {
      operator new();
    }

    v14 = *v4;
    if (v7)
    {
      v15 = (*(v14 + 120))(v4);
      result = sub_2FE588(v15, v5, &v24);
      v16 = result;
      if (result)
      {
        v17 = sub_5544(14);
        v18 = *v17;
        if (*v17)
        {
          if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
          {
            buf[0] = 136315394;
            *&buf[1] = "RoutingHandlerUtilities_Aspen.cpp";
            v29 = 1024;
            v30 = 368;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Error setting device property synchronously", buf, 0x12u);
          }
        }

        v19 = __cxa_allocate_exception(0x10uLL);
        *v19 = &off_6DDDD0;
        v19[2] = v16;
      }
    }

    else
    {
      return (*(v14 + 48))(v4, v5, 0, 0, 4, &v24);
    }
  }

  return result;
}

void sub_2FE514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2FE588(AudioObjectID a1, uint64_t a2, float *a3)
{
  v6 = sub_5544(14);
  if ((*(v6 + 8) & 1) != 0 && *v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v49.__cv_.__sig = *a2;
    *v49.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v50);
  }

  buf = *a2;
  if (AudioObjectHasProperty(a1, &buf))
  {
    memset(v50.__m_.__opaque, 0, sizeof(v50.__m_.__opaque));
    v50.__m_.__sig = 850045863;
    memset(v49.__cv_.__opaque, 0, sizeof(v49.__cv_.__opaque));
    v49.__cv_.__sig = 1018212795;
    v41 = 0;
    sub_745E8(v40, a1, a2, &v49, &v50, &v41);
    v35 = a1;
    v36 = *a2;
    v37 = *(a2 + 8);
    v38 = 0;
    v39 = 0;
    buf = *a2;
    if (!sub_66E40(a1, &buf))
    {
      v12 = sub_5544(14);
      v11 = 1852797029;
      if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        v32 = *a2;
        v33 = *(a2 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_67;
    }

    v7 = sub_2FF0CC(&v35);
    if (!HIDWORD(v7) && *a3 == *&v7)
    {
      v8 = sub_5544(14);
      if ((*(v8 + 8) & 1) == 0)
      {
        goto LABEL_66;
      }

      v9 = *v8;
      if (!*v8 || !os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v43 = 1024;
      v44 = 294;
      v45 = 1024;
      LODWORD(v46) = a1;
LABEL_33:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
LABEL_66:
      v11 = 0;
LABEL_67:
      sub_73C20(v40);
      std::condition_variable::~condition_variable(&v49);
      std::mutex::~mutex(&v50);
      return v11;
    }

    v13 = sub_5544(14);
    if ((*(v13 + 8) & 1) != 0 && *v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
    {
      v32 = *a2;
      v33 = *(a2 + 8);
      sub_22CE0(__p);
    }

    buf = *a2;
    v11 = AudioObjectSetPropertyData(a1, &buf, 0, 0, 4u, a3);
    if (v11)
    {
      v14 = sub_5544(14);
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v11);
        v30 = *a2;
        v31 = *(a2 + 8);
        sub_22CE0(&v32);
      }

      goto LABEL_67;
    }

    v15 = sub_2FF0CC(&v35);
    if (!HIDWORD(v15) && *a3 == *&v15)
    {
      v16 = sub_5544(14);
      if ((*(v16 + 8) & 1) == 0)
      {
        goto LABEL_66;
      }

      v9 = *v16;
      if (!*v16 || !os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v43 = 1024;
      v44 = 322;
      v45 = 1024;
      LODWORD(v46) = a1;
      goto LABEL_33;
    }

    v17 = 2000;
LABEL_35:
    v18 = sub_2FF0CC(&v35);
    v11 = HIDWORD(v18);
    if (HIDWORD(v18))
    {
      goto LABEL_67;
    }

    if (*a3 == *&v18)
    {
      v27 = sub_5544(14);
      if ((*(v27 + 8) & 1) != 0 && *v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_DEBUG))
      {
        v32 = *a2;
        v33 = *(a2 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_66;
    }

    if (v17 <= 0)
    {
      v29 = sub_5544(14);
      v11 = 2003329396;
      if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
      {
        v32 = *a2;
        v33 = *(a2 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_67;
    }

    v19.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v20 = sub_5544(14);
    if (*(v20 + 8))
    {
      v21 = *v20;
      if (*v20)
      {
        if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315906;
          *&buf.mScope = "HALPropertySynchronizer.h";
          v43 = 1024;
          v44 = 354;
          v45 = 2080;
          v46 = "with timeout";
          v47 = 1024;
          v48 = a1;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
        }
      }
    }

    sub_27A4();
    LOBYTE(__p[0]) = sub_2E6B08();
    *&buf.mSelector = &v50;
    LOBYTE(buf.mElement) = 1;
    std::mutex::lock(&v50);
    v22.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
    while (1)
    {
      if ((v41 & 1) != 0 || v22.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
      {
LABEL_59:
        if (LOBYTE(buf.mElement) == 1)
        {
          std::mutex::unlock(*&buf.mSelector);
        }

        sub_1DB4C4(__p);
        v17 += (std::chrono::system_clock::now().__d_.__rep_ - v19.__d_.__rep_) / -1000;
        goto LABEL_35;
      }

      v23.__d_.__rep_ = v22.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v23.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_58:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v22.__d_.__rep_)
      {
        goto LABEL_59;
      }
    }

    std::chrono::steady_clock::now();
    v24.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v24.__d_.__rep_)
    {
      v25 = 0;
      goto LABEL_56;
    }

    if (v24.__d_.__rep_ < 1)
    {
      if (v24.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v25 = 0x8000000000000000;
        goto LABEL_56;
      }
    }

    else if (v24.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_54;
    }

    v25 = 1000 * v24.__d_.__rep_;
LABEL_54:
    if (v25 > (v23.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v26.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_57:
      std::condition_variable::__do_timed_wait(&v49, &buf, v26);
      std::chrono::steady_clock::now();
      goto LABEL_58;
    }

LABEL_56:
    v26.__d_.__rep_ = v25 + v23.__d_.__rep_;
    goto LABEL_57;
  }

  v10 = sub_5544(14);
  v11 = 2003332927;
  if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    v49.__cv_.__sig = *a2;
    *v49.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v50);
  }

  return v11;
}

void sub_2FF020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::condition_variable *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_73C20(&a23);
  std::condition_variable::~condition_variable(&a38);
  std::mutex::~mutex((v38 - 184));
  _Unwind_Resume(a1);
}

unint64_t sub_2FF0CC(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  v3 = sub_2CAA28(a1, &buf, v2, *(a1 + 24));
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

void sub_2FF278(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2FF298(uint64_t a1)
{
  v2 = *(a1 + 36);
  v3 = *(a1 + 8);
  if (v2 == 1)
  {
    v4 = (*(*v3 + 120))(v3);
    result = sub_2FE588(v4, a1 + 16, (a1 + 32));
    if (result)
    {
      v7 = result;
      v8 = *sub_5544(14);
      if (v8)
      {
        log = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v12 = "RoutingHandlerAction_SetObjectProperty.h";
          v13 = 1024;
          v14 = 109;
          _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Error setting device property synchronously", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v7;
    }
  }

  else
  {
    v6 = *(*v3 + 48);

    return v6();
  }

  return result;
}

uint64_t sub_2FF450(uint64_t a1)
{
  v2 = *(a1 + 36);
  v3 = *(a1 + 8);
  if (v2 == 1)
  {
    v4 = (*(*v3 + 120))(v3);
    result = sub_2FE588(v4, a1 + 16, (a1 + 28));
    if (result)
    {
      v7 = result;
      v8 = *sub_5544(14);
      if (v8)
      {
        log = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v12 = "RoutingHandlerAction_SetObjectProperty.h";
          v13 = 1024;
          v14 = 95;
          _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Error setting device property synchronously", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v7;
    }
  }

  else
  {
    v6 = *(*v3 + 48);

    return v6();
  }

  return result;
}

uint64_t sub_2FF620(uint64_t ***a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v24 = *a2;
  v4 = *v2;
  v5 = v2[1];
  v6 = *v2[2];
  v7 = *v2[3];
  v8 = v2[4];
  v9 = sub_5544(20);
  if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    sub_22CE0(v27);
  }

  ioDataSize = 4;
  outData = 0;
  v10 = (*(*v4 + 120))(v4);
  result = AudioObjectGetPropertyData(v10, v5, 0, 0, &ioDataSize, &outData);
  v12 = result;
  if (result)
  {
    v20 = sub_5544(14);
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      sub_22CE0(v27);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v12;
  }

  if (ioDataSize != 4)
  {
    v22 = sub_5544(14);
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      sub_22CE0(v27);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v23, "Property %s for device %s failed returned size %u (expected %lu).");
  }

  if (outData != v3)
  {
    v13 = sub_5544(20);
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      sub_22CE0(v27);
    }

    if (v6)
    {
      operator new();
    }

    v14 = *v4;
    if (v7)
    {
      v15 = (*(v14 + 120))(v4);
      result = sub_2FFD74(v15, v5, &v24);
      v16 = result;
      if (result)
      {
        v17 = sub_5544(14);
        v18 = *v17;
        if (*v17)
        {
          if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
          {
            buf[0] = 136315394;
            *&buf[1] = "RoutingHandlerUtilities_Aspen.cpp";
            v29 = 1024;
            v30 = 368;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Error setting device property synchronously", buf, 0x12u);
          }
        }

        v19 = __cxa_allocate_exception(0x10uLL);
        *v19 = &off_6DDDD0;
        v19[2] = v16;
      }
    }

    else
    {
      return (*(v14 + 48))(v4, v5, 0, 0, 4, &v24);
    }
  }

  return result;
}

void sub_2FFD00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2FFD74(AudioObjectID a1, uint64_t a2, _DWORD *a3)
{
  v6 = sub_5544(14);
  if ((*(v6 + 8) & 1) != 0 && *v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v49.__cv_.__sig = *a2;
    *v49.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v50);
  }

  buf = *a2;
  if (AudioObjectHasProperty(a1, &buf))
  {
    memset(v50.__m_.__opaque, 0, sizeof(v50.__m_.__opaque));
    v50.__m_.__sig = 850045863;
    memset(v49.__cv_.__opaque, 0, sizeof(v49.__cv_.__opaque));
    v49.__cv_.__sig = 1018212795;
    v41 = 0;
    sub_745E8(v40, a1, a2, &v49, &v50, &v41);
    v35 = a1;
    v36 = *a2;
    v37 = *(a2 + 8);
    v38 = 0;
    v39 = 0;
    buf = *a2;
    if (!sub_66E40(a1, &buf))
    {
      v12 = sub_5544(14);
      v11 = 1852797029;
      if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        v32 = *a2;
        v33 = *(a2 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_67;
    }

    v7 = sub_3008A4(&v35);
    if (!HIDWORD(v7) && *a3 == v7)
    {
      v8 = sub_5544(14);
      if ((*(v8 + 8) & 1) == 0)
      {
        goto LABEL_66;
      }

      v9 = *v8;
      if (!*v8 || !os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v43 = 1024;
      v44 = 294;
      v45 = 1024;
      LODWORD(v46) = a1;
LABEL_13:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", &buf, 0x18u);
LABEL_66:
      v11 = 0;
LABEL_67:
      sub_73C20(v40);
      std::condition_variable::~condition_variable(&v49);
      std::mutex::~mutex(&v50);
      return v11;
    }

    v13 = sub_5544(14);
    if ((*(v13 + 8) & 1) != 0 && *v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
    {
      v32 = *a2;
      v33 = *(a2 + 8);
      sub_22CE0(__p);
    }

    buf = *a2;
    v11 = AudioObjectSetPropertyData(a1, &buf, 0, 0, 4u, a3);
    if (v11)
    {
      v14 = sub_5544(14);
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v11);
        v30 = *a2;
        v31 = *(a2 + 8);
        sub_22CE0(&v32);
      }

      goto LABEL_67;
    }

    v15 = sub_3008A4(&v35);
    if (!HIDWORD(v15) && *a3 == v15)
    {
      v16 = sub_5544(14);
      if ((*(v16 + 8) & 1) == 0)
      {
        goto LABEL_66;
      }

      v9 = *v16;
      if (!*v16 || !os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      buf.mSelector = 136315650;
      *&buf.mScope = "HALPropertySynchronizer.h";
      v43 = 1024;
      v44 = 322;
      v45 = 1024;
      LODWORD(v46) = a1;
      goto LABEL_13;
    }

    v17 = 2000;
LABEL_35:
    v18 = sub_3008A4(&v35);
    v11 = HIDWORD(v18);
    if (HIDWORD(v18))
    {
      goto LABEL_67;
    }

    if (*a3 == v18)
    {
      v27 = sub_5544(14);
      if ((*(v27 + 8) & 1) != 0 && *v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_DEBUG))
      {
        v32 = *a2;
        v33 = *(a2 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_66;
    }

    if (v17 <= 0)
    {
      v29 = sub_5544(14);
      v11 = 2003329396;
      if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
      {
        v32 = *a2;
        v33 = *(a2 + 8);
        sub_22CE0(__p);
      }

      goto LABEL_67;
    }

    v19.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v20 = sub_5544(14);
    if (*(v20 + 8))
    {
      v21 = *v20;
      if (*v20)
      {
        if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
        {
          buf.mSelector = 136315906;
          *&buf.mScope = "HALPropertySynchronizer.h";
          v43 = 1024;
          v44 = 354;
          v45 = 2080;
          v46 = "with timeout";
          v47 = 1024;
          v48 = a1;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", &buf, 0x22u);
        }
      }
    }

    sub_27A4();
    LOBYTE(__p[0]) = sub_2E6B08();
    *&buf.mSelector = &v50;
    LOBYTE(buf.mElement) = 1;
    std::mutex::lock(&v50);
    v22.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
    while (1)
    {
      if ((v41 & 1) != 0 || v22.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
      {
LABEL_59:
        if (LOBYTE(buf.mElement) == 1)
        {
          std::mutex::unlock(*&buf.mSelector);
        }

        sub_1DB4C4(__p);
        v17 += (std::chrono::system_clock::now().__d_.__rep_ - v19.__d_.__rep_) / -1000;
        goto LABEL_35;
      }

      v23.__d_.__rep_ = v22.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
      if (v23.__d_.__rep_ >= 1)
      {
        break;
      }

LABEL_58:
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v22.__d_.__rep_)
      {
        goto LABEL_59;
      }
    }

    std::chrono::steady_clock::now();
    v24.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v24.__d_.__rep_)
    {
      v25 = 0;
      goto LABEL_56;
    }

    if (v24.__d_.__rep_ < 1)
    {
      if (v24.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v25 = 0x8000000000000000;
        goto LABEL_56;
      }
    }

    else if (v24.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_54;
    }

    v25 = 1000 * v24.__d_.__rep_;
LABEL_54:
    if (v25 > (v23.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v26.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_57:
      std::condition_variable::__do_timed_wait(&v49, &buf, v26);
      std::chrono::steady_clock::now();
      goto LABEL_58;
    }

LABEL_56:
    v26.__d_.__rep_ = v25 + v23.__d_.__rep_;
    goto LABEL_57;
  }

  v10 = sub_5544(14);
  v11 = 2003332927;
  if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    v49.__cv_.__sig = *a2;
    *v49.__cv_.__opaque = *(a2 + 8);
    sub_22CE0(&v50);
  }

  return v11;
}

void sub_3007F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_73C20(va);
  std::condition_variable::~condition_variable((v15 - 216));
  std::mutex::~mutex((v15 - 168));
  _Unwind_Resume(a1);
}

unint64_t sub_3008A4(uint64_t a1)
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

void sub_300A50(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_300A70(uint64_t a1)
{
  v2 = *(a1 + 36);
  v3 = *(a1 + 8);
  if (v2 == 1)
  {
    v4 = (*(*v3 + 120))(v3);
    result = sub_2FFD74(v4, a1 + 16, (a1 + 28));
    if (result)
    {
      v7 = result;
      v8 = *sub_5544(14);
      if (v8)
      {
        log = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v12 = "RoutingHandlerAction_SetObjectProperty.h";
          v13 = 1024;
          v14 = 95;
          _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Error setting device property synchronously", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v7;
    }
  }

  else
  {
    v6 = *(*v3 + 48);

    return v6();
  }

  return result;
}

void sub_300C2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_129E80(__p, *(v1 + 120) + 16);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "RoutingHandlerUtilities_Aspen.cpp";
    v10 = 1024;
    v11 = 1208;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal remote property Variant type: %s", buf, 0x1Cu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Illegal remote property Variant type: %s");
}

uint64_t sub_300D58(int a1, uint64_t a2)
{
  v3 = 2;
  if (a1 <= 1986884454)
  {
    if (a1 == 1836281204)
    {
      v3 = 5;
      return sub_4F5668(a2, v3);
    }

    v4 = 1986556788;
  }

  else
  {
    if (a1 == 1986884455 || a1 == 1987208039)
    {
      return sub_4F5668(a2, v3);
    }

    v4 = 1987211117;
  }

  if (a1 != v4)
  {
    v3 = 0;
  }

  return sub_4F5668(a2, v3);
}

uint64_t sub_300DD0(int a1, uint64_t a2)
{
  v5 = 0;
  v6 = a1 ^ 1;
  v4 = 0x696E707436776E66;
  result = (*(*a2 + 16))(a2, &v4);
  if (result)
  {
    return (*(*a2 + 48))(a2, &v4, 0, 0, 4, &v6);
  }

  return result;
}

void sub_300E78(uint64_t a1, __n128 **a2)
{
  if (*(a2 + 256) == 1 && *(a2 + 184) == 1 && (v4 = a2[29]) != 0 && (v5 = std::__shared_weak_count::lock(v4)) != 0 && (v6 = a2[28], sub_1A8C0(v5), v6))
  {
    if ((a2[32] & 1) == 0)
    {
      sub_1EC054();
    }

    v8 = a2[28];
    v7 = a2[29];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_809C0();
    v21 = 1885433888;
    v23 = 0;
    v22 = 0uLL;
    sub_4625C(&v22, &v21, &v22, 1uLL);
    *buf = v22;
    *&buf[16] = v23;
    strcpy(&v26, "cwdv");
    LOBYTE(v27) = 0;
    LODWORD(v28) = 3;
    *(&v29 + 1) = 0;
    v30 = 0;
    *&v29 = &v29 + 8;
    v31 = 44739242;
    v33 = 0;
    v34 = 0;
    __p = 0;
    *&v22 = off_6C1080;
    v24 = &v22;
    sub_256FB0(v20, v9, buf, &v22);
    sub_85148(&v22);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p);
    }

    sub_477A0(*(&v29 + 1));
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if (!v20[2])
    {
      v17 = sub_5544(14);
      v18 = *v17;
      if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1292;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    v10 = v20[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
    }

    LOBYTE(v29) = 0;
    *(&v29 + 1) = &qword_709380;
    *a1 = v8;
    *(a1 + 8) = v7;
    *buf = 0;
    *&buf[8] = 0;
    *(a1 + 16) = v12;
    *(a1 + 24) = v11;
    *&buf[16] = 0;
    v26 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v27 = 0;
    v28 = 0;
    *(a1 + 48) = v29;
    *(a1 + 64) = 1;
    sub_84F9C(buf);
    sub_65310(v20);
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  else
  {
    v13 = *a2;
    v14 = *a2 + 1;
    v15 = (*a2)[1].n128_u64[1];
    if (v15 != v14)
    {
      while (1)
      {
        sub_25704(buf, &v15[1], "", 1299);
        v16 = sub_108CA8(*(*buf + 144));
        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        if (v16)
        {
          break;
        }

        v15 = v15->n128_u64[1];
        if (v15 == v14)
        {
          goto LABEL_27;
        }
      }

      v14 = v15;
LABEL_27:
      v13 = *a2;
    }

    if (v14 == &v13[1])
    {
      *a1 = 0;
      *(a1 + 64) = 0;
    }

    else
    {
      sub_86C6C(a1, v14 + 1);
      *(a1 + 64) = 1;
    }
  }
}

void sub_3011E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_65310(&a9);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3012EC(uint64_t a1, int a2, int a3)
{
  v5 = sub_168F08(a1);
  v6 = sub_45168();
  v7 = a3 ^ 1;
  if (a2 != 1919776355)
  {
    v7 = 1;
  }

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = 1;
  if (a2 <= 1987077986)
  {
    if (a2 == 1768057203)
    {
      goto LABEL_14;
    }

    v10 = 1919776355;
  }

  else
  {
    if (a2 == 1987077987 || a2 == 1987081833)
    {
      goto LABEL_14;
    }

    v10 = 1987081839;
  }

  if (a2 != v10)
  {
    v9 = 0;
  }

LABEL_14:
  if (a2 == 1936745326)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  v12 = sub_DD858();
  if (sub_1192CC(v12) == 3)
  {
LABEL_18:
    v13 = (v5 & 0xFFFFFFFD) == 1;
    return v13 | v5 & 0x100000000;
  }

  if (a3)
  {
    if ((v8 & v11 & 1) == 0)
    {
      v13 = 0;
      return v13 | v5 & 0x100000000;
    }

    goto LABEL_18;
  }

  v13 = 0;
  if (a2 <= 1987077986)
  {
    if (a2 == 1768057203)
    {
      return v13 | v5 & 0x100000000;
    }

    v15 = 1919776355;
    goto LABEL_29;
  }

  if (a2 != 1987077987 && a2 != 1987081833)
  {
    v15 = 1987081839;
LABEL_29:
    if (a2 == v15)
    {
      return v13 | v5 & 0x100000000;
    }

    goto LABEL_18;
  }

  return v13 | v5 & 0x100000000;
}

void sub_301460(void *a1, os_unfair_lock_s *a2, unsigned int a3)
{
  v3 = a1;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v5 = a1 + 1;
  v4 = *a1;
  if (*a1 != a1 + 1)
  {
    do
    {
      sub_25704(&v61, v4 + 4, "", 1430);
      v7 = sub_5544(21);
      if (*(v7 + 8))
      {
        v8 = *v7;
        if (*v7)
        {
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
          {
            v9 = v61;
            if (v61[46]._os_unfair_lock_opaque)
            {
              v10 = "";
            }

            else
            {
              v10 = "not ";
            }

            sub_10898C(&v60, v4[6], v4[7]);
            if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v11 = &v60;
            }

            else
            {
              v11 = v60.__r_.__value_.__r.__words[0];
            }

            sub_23148(v58, v9 + 2);
            v12 = v59;
            v13 = v58[0];
            sub_23148(__p, a2 + 2);
            v14 = v58;
            if (v12 < 0)
            {
              v14 = v13;
            }

            v15 = __p;
            if (v57 < 0)
            {
              v15 = __p[0];
            }

            *buf = 136316418;
            *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1435;
            *&buf[18] = 2080;
            *&buf[20] = v10;
            v67 = 2080;
            v68 = v11;
            v69 = 2080;
            v70 = v14;
            v71 = 2080;
            v72 = v15;
            _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Will %sadd sub-ports %s for port %s to activation sub-port group for device %s.", buf, 0x3Au);
            if (v57 < 0)
            {
              operator delete(__p[0]);
            }

            if (v59 < 0)
            {
              operator delete(v58[0]);
            }

            if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v60.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      memset(buf, 0, 24);
      sub_46980(buf, v4[6], v4[7], (v4[7] - v4[6]) >> 2);
      v17 = *buf;
      v16 = *&buf[8];
      if (*&buf[8] - *buf < 5uLL)
      {
        if (*&buf[8] - *buf == 4)
        {
          v19 = **buf;
          (*(*&v61->_os_unfair_lock_opaque + 432))(&v60);
          size = v60.__r_.__value_.__l.__size_;
          v21 = v60.__r_.__value_.__r.__words[0];
          if (v60.__r_.__value_.__r.__words[0] != v60.__r_.__value_.__l.__size_)
          {
            do
            {
              sub_9EF84(&v63, v21++);
            }

            while (v21 != size);
            v21 = v60.__r_.__value_.__r.__words[0];
          }

          if (v21)
          {
            v60.__r_.__value_.__l.__size_ = v21;
            operator delete(v21);
          }
        }
      }

      else if (*buf != *&buf[8])
      {
        v18 = *buf;
        do
        {
          sub_9EF84(&v63, v18++);
        }

        while (v18 != v16);
      }

      if (v17)
      {
        operator delete(v17);
      }

      if (v62)
      {
        sub_1A8C0(v62);
      }

      v22 = v4[1];
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
          v23 = v4[2];
          v24 = *v23 == v4;
          v4 = v23;
        }

        while (!v24);
      }

      v4 = v23;
    }

    while (v23 != v5);
    v3 = a1;
    v25 = a3;
    if (v63 != v64)
    {
      v26 = sub_5544(21);
      if (*(v26 + 8))
      {
        v27 = *v26;
        if (*v26)
        {
          if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
          {
            sub_24C060(&v60, v63, v64);
            v28 = SHIBYTE(v60.__r_.__value_.__r.__words[2]);
            v29 = v60.__r_.__value_.__r.__words[0];
            sub_23148(v58, a2 + 2);
            v30 = &v60;
            if (v28 < 0)
            {
              v30 = v29;
            }

            if (v59 >= 0)
            {
              v31 = v58;
            }

            else
            {
              v31 = v58[0];
            }

            *buf = 136315906;
            *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1452;
            *&buf[18] = 2080;
            *&buf[20] = v30;
            v67 = 2080;
            v68 = v31;
            _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d Will activate sub-ports %s on device %s.", buf, 0x26u);
            if (v59 < 0)
            {
              operator delete(v58[0]);
            }

            v3 = a1;
            v25 = a3;
            if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v60.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      (*(*&a2->_os_unfair_lock_opaque + 408))(a2, &v63, v25);
    }
  }

  v32 = *v3;
  if (*v3 != v5)
  {
    do
    {
      sub_25704(&v61, v32 + 4, "", 1458);
      v33 = sub_5544(21);
      if (*(v33 + 8))
      {
        v34 = *v33;
        if (*v33)
        {
          if (os_log_type_enabled(*v33, OS_LOG_TYPE_DEBUG))
          {
            v35 = v61;
            if (v61[46]._os_unfair_lock_opaque)
            {
              v36 = "";
            }

            else
            {
              v36 = "not ";
            }

            sub_10898C(&v60, v32[6], v32[7]);
            v37 = SHIBYTE(v60.__r_.__value_.__r.__words[2]);
            v38 = v60.__r_.__value_.__r.__words[0];
            sub_23148(v58, v35 + 2);
            v39 = &v60;
            if (v37 < 0)
            {
              v39 = v38;
            }

            v40 = v58;
            if (v59 < 0)
            {
              v40 = v58[0];
            }

            *buf = 136316162;
            *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1462;
            *&buf[18] = 2080;
            *&buf[20] = v36;
            v67 = 2080;
            v68 = v39;
            v69 = 2080;
            v70 = v40;
            _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d Will %smark sub-ports %s active on port %s.", buf, 0x30u);
            if (v59 < 0)
            {
              operator delete(v58[0]);
            }

            if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v60.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      v41 = v61;
      if ((v61[46]._os_unfair_lock_opaque & 1) == 0)
      {
        goto LABEL_96;
      }

      memset(&v60, 0, sizeof(v60));
      sub_46980(&v60, v32[6], v32[7], (v32[7] - v32[6]) >> 2);
      v42 = v60.__r_.__value_.__r.__words[0];
      if (v60.__r_.__value_.__l.__size_ - v60.__r_.__value_.__r.__words[0] < 5)
      {
        if (v60.__r_.__value_.__l.__size_ - v60.__r_.__value_.__r.__words[0] == 4)
        {
          (*(*&v41->_os_unfair_lock_opaque + 480))(v41, *v60.__r_.__value_.__l.__data_);
LABEL_95:
          operator delete(v42);
          goto LABEL_96;
        }
      }

      else if (v41[36]._os_unfair_lock_opaque == 1886216809)
      {
        v43 = sub_5544(21);
        if (*(v43 + 8))
        {
          v44 = *v43;
          if (*v43)
          {
            if (os_log_type_enabled(*v43, OS_LOG_TYPE_DEBUG))
            {
              sub_23148(v58, v41 + 2);
              v45 = v58;
              if (v59 < 0)
              {
                v45 = v58[0];
              }

              *buf = 136315650;
              *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1481;
              *&buf[18] = 2080;
              *&buf[20] = v45;
              _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to set multiple sub-ports active on Port: %s.  Ignoring.", buf, 0x1Cu);
              if (v59 < 0)
              {
                operator delete(v58[0]);
              }
            }
          }
        }
      }

      else
      {
        v46 = sub_5544(21);
        v47 = *v46;
        if (*v46 && os_log_type_enabled(*v46, OS_LOG_TYPE_INFO))
        {
          sub_23148(v58, v41 + 2);
          v48 = v59;
          v49 = v58[0];
          sub_22170(__p, 0x616C6C20u);
          v50 = v58;
          if (v48 < 0)
          {
            v50 = v49;
          }

          v51 = __p;
          if (v57 < 0)
          {
            v51 = __p[0];
          }

          *buf = 136315906;
          *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1475;
          *&buf[18] = 2080;
          *&buf[20] = v50;
          v67 = 2080;
          v68 = v51;
          _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "%25s:%-5d Setting multiple sub-ports active on Port: %s.  Converting to a single sub-port with ID: %s", buf, 0x26u);
          if (v57 < 0)
          {
            operator delete(__p[0]);
          }

          if (v59 < 0)
          {
            operator delete(v58[0]);
          }
        }

        (*(*&v41->_os_unfair_lock_opaque + 480))(v41, 1634495520);
      }

      if (v42)
      {
        goto LABEL_95;
      }

LABEL_96:
      if (v62)
      {
        sub_1A8C0(v62);
      }

      v52 = v32[1];
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
          v53 = v32[2];
          v24 = *v53 == v32;
          v32 = v53;
        }

        while (!v24);
      }

      v32 = v53;
    }

    while (v53 != v5);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }
}

void sub_301CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

void sub_301DE0(char **a1, char **a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *a2;
  v6 = a2[1];
  v8 = (v6 - v5) >> 2;
  if (v8 < 2)
  {
    if (v6 - v5 == 4)
    {
      sub_88A00(v12, a3, "", 1503);
      v9 = **a2;
      (*(*v12[0] + 432))(&v13);
      v10 = v12[1];
      v11 = v14;
      *a1 = v13;
      a1[2] = v11;
      v14 = 0;
      v13 = 0uLL;
      if (v10)
      {
        sub_1A8C0(v10);
      }
    }
  }

  else if (a1 != a2)
  {
    sub_16B928(a1, v5, v6, v8);
  }
}

void sub_301EC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_301EFC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C10C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_301F70(uint64_t a1)
{
  sub_CE168();
  sub_53E8(__p, "Baseband Voice");
  sub_CDEB8(&v12, __p);
  v2 = v13;
  if (v13)
  {
    v3 = std::__shared_weak_count::lock(v13);
    if (v3)
    {
      v4 = v12;
    }

    else
    {
      v4 = 0;
    }

    std::__shared_weak_count::__release_weak(v2);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  if (SBYTE3(v19) < 0)
  {
    operator delete(*__p);
  }

  if (!v4)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "RoutingHandlerUtilities_Aspen.cpp";
      v16 = 1024;
      v17 = 381;
      v18 = 2080;
      v19 = "Baseband Voice";
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [device is NULL]: Invalid device %s", __p, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  if ((*(*v4 + 24))(v4, a1))
  {
    v11 = 4;
    LODWORD(v12) = 0;
    (*(*v4 + 40))(v4, a1, 0, 0, &v11, &v12);
    if ((*(*v4 + 24))(v4, a1))
    {
      operator new();
    }
  }

  else
  {
    v5 = sub_5544(21);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      (*(*v4 + 128))(&v12, v4);
      v7 = v14 >= 0 ? &v12 : v12;
      *__p = 136315650;
      *&__p[4] = "RoutingHandlerUtilities_Aspen.cpp";
      v16 = 1024;
      v17 = 386;
      v18 = 2080;
      v19 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d Device %s is unable to set destination", __p, 0x1Cu);
      if (v14 < 0)
      {
        operator delete(v12);
      }
    }
  }

  if (v3)
  {
    sub_1A8C0(v3);
  }
}

void sub_302364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    sub_1A8C0(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_3023E8(uint64_t a1)
{
  sub_5659C(&v3, (a1 + 8), "", 39);
  (*(*v3 + 48))(v3, a1 + 24, 0, 0, 4, a1 + 36);
  v2 = v4;
  if (v4)
  {

    sub_1A8C0(v2);
  }
}

void sub_30248C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_3024A4(void *a1)
{
  *a1 = off_6DB840;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_3024F0(uint64_t *a1, uint64_t a2)
{
  sub_5659C(&v5, a1, "", 1612);
  v3 = v5;
  if ((*(*v5 + 16))(v5, a2) && (*(*v3 + 24))(v3, a2))
  {
    operator new();
  }

  v4 = v6;
  if (v6)
  {

    sub_1A8C0(v4);
  }
}

void sub_3026B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_302708(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 16))(a1);
  if (result)
  {
    result = (*(*a1 + 24))(a1, a2);
    if (result)
    {
      operator new();
    }
  }

  return result;
}

void sub_302828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_302860(void *a1)
{
  v22 = 0x676C6F62616F6C67;
  LODWORD(v23) = 0;
  if ((*(*a1 + 16))(a1, &v22))
  {
    v2 = a1[11];
    if (v2)
    {
      v3 = a1[10];
      atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v4 = std::__shared_weak_count::lock(v2);
      v5 = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v16 = v3;
        v17 = v4;
        std::__shared_weak_count::__release_weak(v2);
        sub_1A8C0(v5);
      }

      else
      {
        v16 = 0;
        v17 = 0;
        std::__shared_weak_count::__release_weak(v2);
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    sub_165A98(&v22, &v16, "", 459);
    v10 = v22;
    strcpy(v21, "gloabolg");
    HIBYTE(v21[4]) = 0;
    v21[5] = 0;
    if ((*(*v22 + 16))(v22, v21))
    {
      strcpy(v18, "gloabolg");
      v19 = 0;
      v20 = 0;
      if ((*(*v10 + 24))(v10, v18))
      {
        operator new();
      }
    }

    if (v23)
    {
      sub_1A8C0(v23);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }

    if (sub_311110() && sub_311110())
    {
      v12 = a1[10];
      v11 = a1[11];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
      }

      operator new();
    }
  }

  else
  {
    v6 = a1[11];
    if (v6)
    {
      v7 = a1[10];
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v8 = std::__shared_weak_count::lock(v6);
      v9 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v16 = v7;
        v17 = v8;
        std::__shared_weak_count::__release_weak(v6);
        sub_1A8C0(v9);
      }

      else
      {
        v16 = 0;
        v17 = 0;
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    sub_165A98(&v22, &v16, "", 459);
    v13 = v22;
    strcpy(v21, "lepdbolg");
    HIBYTE(v21[4]) = 0;
    v21[5] = 0;
    if ((*(*v22 + 16))(v22, v21))
    {
      strcpy(v18, "lepdbolg");
      v19 = 0;
      v20 = 0;
      if ((*(*v13 + 24))(v13, v18))
      {
        operator new();
      }
    }

    if (v23)
    {
      sub_1A8C0(v23);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }
  }

  v14 = a1[10];
  v15 = a1[11];
  v22 = v14;
  v23 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = 0x696E707462726763;
  LODWORD(v17) = 0;
  sub_3024F0(&v22, &v16);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }
}

void sub_302D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  if (a16)
  {
    sub_1A8C0(a16);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_302E38(uint64_t result)
{
  if (!*(result + 40))
  {
    v1 = result;
    sub_165A98(&v13, (result + 8), "", 50);
    v2 = *(v1 + 8);
    v3 = *(v1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
      v4 = *(v1 + 16);
      v5 = *(v1 + 24);
      v6 = *(v1 + 32);
      v7 = *(v1 + 8);
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
      }

      v8 = *(v1 + 24);
      v12 = *(v1 + 36);
      v14 = 1685087596;
      v15 = v8;
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    else
    {
      v9 = *(v1 + 24);
      v11 = *(v1 + 32);
      v10 = *(v1 + 36);
      v14 = 1685087596;
      v15 = v9;
    }

    v16 = 0;
    operator new();
  }

  return result;
}

void sub_3030C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  sub_4C70(va);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  sub_4C70(va1);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
    if (v13)
    {
LABEL_5:
      if (!v11)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (v13)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_weak(v12);
  if (!v11)
  {
LABEL_7:
    if (a7)
    {
      sub_1A8C0(a7);
    }

    _Unwind_Resume(a1);
  }

LABEL_6:
  std::__shared_weak_count::__release_weak(v11);
  goto LABEL_7;
}

void sub_303140(void *a1)
{
  v1 = a1[3];
  if (!v1 || (v2 = a1[1], *(v1 + 8) == -1))
  {
    v3 = sub_5544(15);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(__p, 0x6470656Cu);
      if (v7 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136315650;
      v9 = "Object.h";
      v10 = 1024;
      v11 = 257;
      v12 = 2080;
      v13 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SetPropertyStat(inUndoValue) for property = %s Object is not valid.", buf, 0x1Cu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    *buf = 1685087596;
    v9 = a1[4];
    sub_147610(v2);
  }
}

void sub_30328C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_3032CC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_3032DC(uint64_t result, uint64_t a2)
{
  *a2 = off_6C12A0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  return result;
}

void sub_3033B0(void *a1)
{
  *a1 = off_6C12A0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_30341C(void *a1)
{
  *a1 = off_6C12A0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_303468(void *a1)
{
  v1 = a1[3];
  if (!v1 || (v2 = a1[1], *(v1 + 8) == -1))
  {
    v12 = sub_5544(15);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(__p, 0x6470656Cu);
      if (v16 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 136315650;
      v18 = "Object.h";
      v19 = 1024;
      v20 = 240;
      v21 = 2080;
      v22 = v14;
      v8 = "%25s:%-5d SetPropertyStat(inDoValue) for property = %s Object is not valid.";
      v9 = v13;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 28;
      goto LABEL_16;
    }
  }

  else
  {
    *buf = 1685087596;
    v18 = a1[4];
    v3 = sub_147610(v2);
    if (v3)
    {
      v4 = v3;
      v5 = sub_5544(15);
      v6 = *v5;
      if (*v5)
      {
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, 0x6470656Cu);
          if (v16 >= 0)
          {
            v7 = __p;
          }

          else
          {
            v7 = __p[0];
          }

          *buf = 136315906;
          v18 = "Object.h";
          v19 = 1024;
          v20 = 248;
          v21 = 2048;
          v22 = v4;
          v23 = 2080;
          v24 = v7;
          v8 = "%25s:%-5d SetPropertyStat(inDoValue) error = %lu for property = %s";
          v9 = v6;
          v10 = OS_LOG_TYPE_ERROR;
          v11 = 38;
LABEL_16:
          _os_log_impl(&dword_0, v9, v10, v8, buf, v11);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }
}

void sub_30366C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_3036AC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_3036BC(uint64_t result, uint64_t a2)
{
  *a2 = off_6C1258;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  return result;
}

void sub_303790(void *a1)
{
  *a1 = off_6C1258;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_3037FC(void *a1)
{
  *a1 = off_6C1258;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void *sub_303848(void *a1)
{
  *a1 = off_6C1220;
  v2 = a1[6];
  if (v2)
  {
    sub_1A8C0(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_3038A4(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (v2)
  {
    sub_1A8C0(v2);
  }
}

uint64_t sub_3038BC(uint64_t result)
{
  if (!*(result + 40))
  {
    v1 = result;
    sub_165A98(&v13, (result + 8), "", 50);
    v2 = *(v1 + 8);
    v3 = *(v1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
      v4 = *(v1 + 16);
      v5 = *(v1 + 24);
      v6 = *(v1 + 32);
      v7 = *(v1 + 8);
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
      }

      v8 = *(v1 + 24);
      v12 = *(v1 + 36);
      v14 = 1634692199;
      v15 = v8;
      atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    }

    else
    {
      v9 = *(v1 + 24);
      v11 = *(v1 + 32);
      v10 = *(v1 + 36);
      v14 = 1634692199;
      v15 = v9;
    }

    v16 = 0;
    operator new();
  }

  return result;
}

void sub_303B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  sub_4C70(va);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  sub_4C70(va1);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
    if (v13)
    {
LABEL_5:
      if (!v11)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (v13)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_weak(v12);
  if (!v11)
  {
LABEL_7:
    if (a7)
    {
      sub_1A8C0(a7);
    }

    _Unwind_Resume(a1);
  }

LABEL_6:
  std::__shared_weak_count::__release_weak(v11);
  goto LABEL_7;
}

void sub_303BC4(void *a1)
{
  v1 = a1[3];
  if (!v1 || (v2 = a1[1], *(v1 + 8) == -1))
  {
    v3 = sub_5544(15);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(__p, 0x616F6C67u);
      if (v7 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136315650;
      v9 = "Object.h";
      v10 = 1024;
      v11 = 257;
      v12 = 2080;
      v13 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SetPropertyStat(inUndoValue) for property = %s Object is not valid.", buf, 0x1Cu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    *buf = 1634692199;
    v9 = a1[4];
    sub_147610(v2);
  }
}

void sub_303D10(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_303D50(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_303D60(uint64_t result, uint64_t a2)
{
  *a2 = off_6C11D8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  return result;
}

void sub_303E34(void *a1)
{
  *a1 = off_6C11D8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_303EA0(void *a1)
{
  *a1 = off_6C11D8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_303EEC(void *a1)
{
  v1 = a1[3];
  if (!v1 || (v2 = a1[1], *(v1 + 8) == -1))
  {
    v12 = sub_5544(15);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(__p, 0x616F6C67u);
      if (v16 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 136315650;
      v18 = "Object.h";
      v19 = 1024;
      v20 = 240;
      v21 = 2080;
      v22 = v14;
      v8 = "%25s:%-5d SetPropertyStat(inDoValue) for property = %s Object is not valid.";
      v9 = v13;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 28;
      goto LABEL_16;
    }
  }

  else
  {
    *buf = 1634692199;
    v18 = a1[4];
    v3 = sub_147610(v2);
    if (v3)
    {
      v4 = v3;
      v5 = sub_5544(15);
      v6 = *v5;
      if (*v5)
      {
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, 0x616F6C67u);
          if (v16 >= 0)
          {
            v7 = __p;
          }

          else
          {
            v7 = __p[0];
          }

          *buf = 136315906;
          v18 = "Object.h";
          v19 = 1024;
          v20 = 248;
          v21 = 2048;
          v22 = v4;
          v23 = 2080;
          v24 = v7;
          v8 = "%25s:%-5d SetPropertyStat(inDoValue) error = %lu for property = %s";
          v9 = v6;
          v10 = OS_LOG_TYPE_ERROR;
          v11 = 38;
LABEL_16:
          _os_log_impl(&dword_0, v9, v10, v8, buf, v11);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }
}

void sub_3040F0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_304130(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_304140(uint64_t result, uint64_t a2)
{
  *a2 = off_6C1190;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  return result;
}

void sub_304214(void *a1)
{
  *a1 = off_6C1190;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_304280(void *a1)
{
  *a1 = off_6C1190;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_3042CC(void *a1)
{
  sub_304304(a1);

  operator delete();
}

void *sub_304304(void *a1)
{
  *a1 = off_6C1158;
  v2 = a1[6];
  if (v2)
  {
    sub_1A8C0(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_304360(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 4);
  *buf = *(a2 + 4);
  v4 = *(a2 + 16);
  *&buf[8] = *(a2 + 12);
  sub_127F10(&v13, a2, buf, v4, *(a2 + 24));
  v5 = v13;
  if (v13)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v12, v5);
        v9 = *v3;
        v10 = *(v3 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  if (v16 == 1)
  {
    memset(buf, 0, sizeof(buf));
    v18 = 0;
    v7 = v14;
    sub_46980(buf, v14, v15, (v15 - v14) >> 2);
    v8 = v18;
    *a1 = *buf;
    *(a1 + 16) = v8;
    *(a1 + 24) = v5;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v5;
  }
}

void sub_304560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (a22 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_3045A0(os_unfair_lock_s *a1, uint64_t *a2)
{
  if ((sub_10AA80() & 1) == 0)
  {
    v31 = sub_5544(14);
    v32 = *v31;
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
      v43 = 1024;
      v44 = 1764;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  os_unfair_lock_opaque = a1[36]._os_unfair_lock_opaque;
  v5 = (*(**a2 + 328))(*a2, a1);
  if ((v6 & 1) == 0)
  {
    v34 = sub_5544(14);
    v35 = *v34;
    if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      sub_23148(__p, a1 + 2);
      v36 = v41 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
      v43 = 1024;
      v44 = 1769;
      v45 = 2080;
      *v46 = v36;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Valid VirtualStream not present for port %s", buf, 0x1Cu);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v37 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v37, "Valid VirtualStream not present for port %s");
  }

  v7 = *(v5 + 152);
  if (*(v7 + 735) < 0)
  {
    sub_54A0(__p, *(v7 + 712), *(v7 + 720));
  }

  else
  {
    v8 = v7 + 712;
    *__p = *v8;
    v41 = *(v8 + 16);
  }

  if (os_unfair_lock_opaque != 1886613611)
  {
    goto LABEL_39;
  }

  v9 = *a2;
  if (*a2 && (*buf = 0x273706163, *&buf[8] = 0, v10 = sub_59410(v9), *(&v13 + 1) = v11, *&v13 = v10, v12 = v13 >> 32, (v12 & 0x100000000) != 0) && v12)
  {
    v14 = 1;
  }

  else
  {
    v15 = SHIBYTE(v41);
    if (v41 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    if (v41 < 0)
    {
      v15 = __p[1];
    }

    if (v15 >= 7)
    {
      v17 = v16 + v15;
      v18 = v16;
      do
      {
        v19 = memchr(v18, 115, v15 - 6);
        if (!v19)
        {
          break;
        }

        if (*v19 == 1634037875 && *(v19 + 3) == 1919249249)
        {
          goto LABEL_26;
        }

        v18 = (v19 + 1);
        v15 = v17 - v18;
      }

      while (v17 - v18 > 6);
      v19 = v17;
LABEL_26:
      v14 = v19 != v17 && v19 - v16 != -1;
    }

    else
    {
      v14 = 0;
    }
  }

  v22 = sub_5544(21);
  v23 = *v22;
  if (!*v22 || !os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_38;
  }

  sub_23148(v38, a1 + 2);
  v24 = v39 >= 0 ? v38 : v38[0];
  *buf = 136316162;
  *&buf[4] = "RoutingHandlerUtilities_Aspen.cpp";
  v43 = 1024;
  v44 = 1784;
  v45 = 1024;
  *v46 = 1;
  *&v46[4] = 1024;
  *&v46[6] = v14;
  v47 = 2080;
  v48 = v24;
  _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsSpeakerRoute: %d, hasSpeakerProtection: %d, Port: %s", buf, 0x28u);
  if (v39 < 0)
  {
    operator delete(v38[0]);
    if (v14)
    {
      goto LABEL_39;
    }
  }

  else
  {
LABEL_38:
    if (v14)
    {
LABEL_39:
      v25 = 1;
      goto LABEL_40;
    }
  }

  if (*(*a2 + 276) == 1986291046)
  {
    if (SHIBYTE(v41) < 0)
    {
      if (__p[1] == &dword_8 + 2)
      {
        v27 = __p[0];
        goto LABEL_50;
      }
    }

    else if (SHIBYTE(v41) == 10)
    {
      v27 = __p;
LABEL_50:
      v28 = *v27;
      v29 = *(v27 + 4);
      v25 = v28 == 0x61675F6465786966 && v29 == 28265;
      goto LABEL_40;
    }
  }

  v25 = 0;
LABEL_40:
  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p[0]);
  }

  return v25;
}

void sub_304A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_304A78(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12, _DWORD *a13, _DWORD *a14, _DWORD *a15, _DWORD *a16)
{
  v24 = sub_DD858();
  result = 1;
  if (v24 != *a1 && v24 != *a2 && v24 != *a3 && v24 != *a4 && v24 != *a5 && v24 != *a6 && v24 != *a7 && v24 != *a8 && v24 != *a9 && v24 != *a10 && v24 != *a11 && v24 != *a12 && v24 != *a13 && v24 != *a14 && v24 != *a15)
  {
    return v24 == *a16;
  }

  return result;
}

std::__shared_weak_count *sub_304BB8(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (v2 != a2)
  {
    while (1)
    {
      result = v2[3];
      if (!result)
      {
        goto LABEL_8;
      }

      result = std::__shared_weak_count::lock(result);
      if (!result)
      {
        goto LABEL_8;
      }

      v6 = result;
      v7 = v2[2];
      atomic_fetch_add_explicit(&result->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_1A8C0(result);
      v8 = std::__shared_weak_count::lock(v6);
      if (v8)
      {
        break;
      }

      std::__shared_weak_count::__release_weak(v6);
      result = 0;
LABEL_9:
      v2 = v2[1];
      if (v2 == a2)
      {
        return result;
      }
    }

    sub_1A8C0(v8);
    std::__shared_weak_count::__release_weak(v6);
    if (v7 == a1)
    {
      result = (v2 + 2);
    }

    else
    {
      result = 0;
    }

LABEL_8:
    if (result)
    {
      return result;
    }

    goto LABEL_9;
  }

  return 0;
}

void sub_304C80(uint64_t a1)
{
  if (*(a1 + 726) != 1)
  {
    v3 = *(a1 + 704);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = *(a1 + 696);
        if (v5)
        {
          if (*(a1 + 736))
          {
LABEL_41:
            v2 = v4;
            goto LABEL_42;
          }

          v6 = sub_5544(19);
          v7 = sub_5544(39);
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
              goto LABEL_30;
            }
          }

          if ((v9 & v10) == 0)
          {
            v6 = v7;
          }

LABEL_30:
          v18 = *v6;
          if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            sub_5659C(&v20, (a1 + 504), "", 819);
            sub_23148(__p, v20 + 2);
            if (v23 >= 0)
            {
              v19 = __p;
            }

            else
            {
              v19 = *__p;
            }

            *buf = 136315650;
            *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 819;
            v25 = 2080;
            v26 = v19;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Enabling software mute on VAD '%s'", buf, 0x1Cu);
            if (v23 < 0)
            {
              operator delete(*__p);
            }

            if (v21)
            {
              sub_1A8C0(v21);
            }
          }

          (*(*v5 + 104))(v5, 0);
LABEL_40:
          if (!v4)
          {
            return;
          }

          goto LABEL_41;
        }
      }
    }

    else
    {
      v4 = 0;
    }

    v11 = sub_5544(19);
    v12 = sub_5544(39);
    v13 = 0;
    *buf = 0x100000002;
    v14 = *(v11 + 8);
    while (1)
    {
      v15 = *&buf[v13];
      if (((v14 & v15) != 0) != ((*(v12 + 8) & v15) != 0))
      {
        break;
      }

      v13 += 4;
      if (v13 == 8)
      {
        goto LABEL_19;
      }
    }

    if ((v14 & v15) == 0)
    {
      v11 = v12;
    }

LABEL_19:
    v16 = *v11;
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sub_5659C(&v20, (a1 + 504), "", 826);
      sub_23148(__p, v20 + 2);
      if (v23 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = *__p;
      }

      *buf = 136315650;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 826;
      v25 = 2080;
      v26 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Enabling software mute, but software volume command expired on VAD '%s'.", buf, 0x1Cu);
      if (v23 < 0)
      {
        operator delete(*__p);
      }

      if (v21)
      {
        sub_1A8C0(v21);
      }
    }

    goto LABEL_40;
  }

  *__p = 1836414053;
  *&__p[4] = *(a1 + 544);
  LODWORD(v20) = 1;
  sub_5659C(buf, (a1 + 504), "", 814);
  (*(**buf + 48))(*buf, __p, 0, 0, 4, &v20);
  v2 = *&buf[8];
  if (*&buf[8])
  {
LABEL_42:
    sub_1A8C0(v2);
  }
}

void sub_305020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a11)
  {
    sub_1A8C0(a11);
  }

  if (v16)
  {
    sub_1A8C0(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_30507C(uint64_t a1)
{
  sub_14034C(a1 - 80);

  operator delete();
}

void sub_3050B8(uint64_t a1, int a2)
{
  if ((*(a1 + 869) & 1) == 0)
  {
    v4 = sub_5544(42);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1867;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d OutputVolumeControl_HAL_Common::EndSoftwareVolumeRamp() - ramping not supported.", buf, 0x12u);
      }
    }
  }

  v6 = *(a1 + 512);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 504);
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_1A8C0(v7);
      v10 = std::__shared_weak_count::lock(v8);
      if (v10)
      {
        sub_1A8C0(v10);
        std::__shared_weak_count::__release_weak(v8);
        if (v9)
        {
          goto LABEL_14;
        }
      }

      else
      {
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  v11 = sub_5544(42);
  v12 = *v11;
  if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1870;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d OutputVolumeControl_HAL_Common::EndSoftwareVolumeRamp() - no physical device.", buf, 0x12u);
  }

LABEL_14:
  v13 = *(a1 + 704);
  if (v13)
  {
    v14 = std::__shared_weak_count::lock(v13);
    if (v14)
    {
      v15 = *(a1 + 696);
      if (v15)
      {
        *&v39[4] = 0;
        (*(*v15 + 264))(v15, buf);
        sub_27781C(buf);
LABEL_23:
        sub_1A8C0(v14);
        goto LABEL_24;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = sub_5544(42);
  v17 = *v16;
  if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1879;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d OutputVolumeControl_HAL_Common::EndSoftwareVolumeRamp() - unable to lock software volume command.", buf, 0x12u);
  }

  if (v14)
  {
    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 868) = 0;
  *(a1 + 870) = 0;
  if (*(a1 + 869) == 1)
  {
    v18 = *(a1 + 512);
    if (v18)
    {
      v19 = std::__shared_weak_count::lock(v18);
      if (v19)
      {
        v20 = v19;
        v21 = *(a1 + 504);
        atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_1A8C0(v19);
        v22 = std::__shared_weak_count::lock(v20);
        if (v22)
        {
          sub_1A8C0(v22);
          std::__shared_weak_count::__release_weak(v20);
          if (v21)
          {
            if (*(a1 + 872))
            {
              v23 = *(a1 + 872);
            }

            else
            {
              v23 = @"unknown";
            }

            v35 = v23;
            v36 = 0;
            v24 = *(a1 + 712);
            v34 = LODWORD(v24);
            LOWORD(v36) = a2;
            v25 = sub_5544(42);
            v26 = *v25;
            if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316162;
              *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1895;
              v38 = 2112;
              *v39 = v23;
              *&v39[8] = 1024;
              *&v39[10] = a2;
              v40 = 2048;
              v41 = v24;
              _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d OutputVolumeControl_HAL_Common::EndSoftwareVolumeRamp() - notifying physical device that ramp ended for category %@ with reason %u. Final volume %.2f.", buf, 0x2Cu);
            }

            sub_5659C(buf, (a1 + 504), "", 1898);
            __p = 0x676C6F6261766572;
            v32 = 0;
            v27 = sub_147610(*buf);
            if (*&buf[8])
            {
              sub_1A8C0(*&buf[8]);
            }

            if (v27)
            {
              v28 = sub_5544(42);
              v29 = *v28;
              if (*v28)
              {
                if (os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
                {
                  sub_22170(&__p, v27);
                  if (v33 >= 0)
                  {
                    p_p = &__p;
                  }

                  else
                  {
                    p_p = __p;
                  }

                  *buf = 136315650;
                  *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1903;
                  v38 = 2080;
                  *v39 = p_p;
                  _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d OutputVolumeControl_HAL_Common::EndSoftwareVolumeRamp() - failed to set ramp end info on device error %s.", buf, 0x1Cu);
                  if (v33 < 0)
                  {
                    operator delete(__p);
                  }
                }
              }
            }
          }
        }

        else
        {
          std::__shared_weak_count::__release_weak(v20);
        }
      }
    }
  }
}

void sub_305544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_27781C(va);
  sub_1A8C0(v7);
  _Unwind_Resume(a1);
}

void sub_305574(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v88 = sub_5544(14);
    v89 = *v88;
    if (*v88 && os_log_type_enabled(*v88, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      v102 = 1024;
      v103 = 1679;
      _os_log_impl(&dword_0, v89, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): inNumberAddresses is 0.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "inNumberAddresses is 0.");
  }

  if (!a4)
  {
    v82 = sub_5544(14);
    v83 = *v82;
    if (*v82 && os_log_type_enabled(*v82, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      v102 = 1024;
      v103 = 1680;
      _os_log_impl(&dword_0, v83, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inClientData is NULL]: inClientData is NULL.", buf, 0x12u);
    }

    v84 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v84, "inClientData is NULL.");
  }

  if (!a3)
  {
    v85 = sub_5544(14);
    v86 = *v85;
    if (*v85 && os_log_type_enabled(*v85, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      v102 = 1024;
      v103 = 1681;
      _os_log_impl(&dword_0, v86, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inAddresses is NULL]: inAddresses is NULL.", buf, 0x12u);
    }

    v87 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v87, "inAddresses is NULL.");
  }

  if (*(a3 + 8) != *(a4 + 548))
  {
    v91 = sub_5544(14);
    v92 = *v91;
    if (*v91 && os_log_type_enabled(*v91, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      v102 = 1024;
      v103 = 1685;
      _os_log_impl(&dword_0, v92, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): inAddresses[0].mElement != This->mElement.", buf, 0x12u);
    }

    v93 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v93, "inAddresses[0].mElement != This->mElement.");
  }

  v7 = a4 + 152;
  v8 = (*(*a4 + 184))(a4);
  v9 = 0;
  do
  {
    v10 = (a3 + 12 * v9);
    v11 = *v10;
    if (v10[1] != *(a4 + 544))
    {
      goto LABEL_97;
    }

    v12 = *(a4 + 548);
    if (v11 == 1684633187)
    {
      if (((v10[2] == v12) & v8) != 0)
      {
        goto LABEL_13;
      }

      v11 = 1684633187;
    }

    else
    {
      if (v11 != 1987013732)
      {
        goto LABEL_97;
      }

      v11 = 1987013732;
      if (v10[2] == v12)
      {
        if (!v8)
        {
          goto LABEL_105;
        }

LABEL_13:
        sub_5659C(&v99, (a4 + 504), "", 1705);
        v97 = 4;
        v98 = 0.0;
        v13 = v99;
        *buf = 1987013732;
        *&buf[4] = *(a4 + 544);
        (*(*&v99->_os_unfair_lock_opaque + 40))(v99, buf, 0, 0, &v97, &v98);
        v14 = sub_5544(19);
        v15 = sub_5544(39);
        v16 = 0;
        *buf = 0x100000002;
        v17 = *(v14 + 8);
        while (1)
        {
          v18 = *&buf[v16];
          if (((v17 & v18) != 0) != ((*(v15 + 8) & v18) != 0))
          {
            break;
          }

          v16 += 4;
          if (v16 == 8)
          {
            goto LABEL_20;
          }
        }

        if ((v17 & v18) == 0)
        {
          v14 = v15;
        }

LABEL_20:
        v19 = *v14;
        if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a4 + 716);
          v21 = v98;
          sub_23148(__p, v13 + 2);
          v22 = __p;
          if (v96 < 0)
          {
            v22 = __p[0];
          }

          *buf = 136316162;
          *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
          v102 = 1024;
          v103 = 1713;
          v104 = 2048;
          *v105 = v20;
          *&v105[8] = 2048;
          *&v105[10] = v21;
          v106 = 2080;
          v107 = v22;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CommittedHardwareVolumeDecibels %f dB vs hardwareVolumeDecibels %f dB on VAD '%s'.", buf, 0x30u);
          if (v96 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (*(a4 + 716) == v98)
        {
          goto LABEL_94;
        }

        if (*(a4 + 680) == 1 || *(a4 + 736))
        {
          goto LABEL_39;
        }

        v23 = *(a4 + 704);
        if (v23)
        {
          v24 = std::__shared_weak_count::lock(v23);
          if (v24)
          {
            v25 = v24;
            v26 = *(a4 + 696);
            if (v26 && (*(*v26 + 80))(v26))
            {
              v27 = *(a4 + 716);
              v28 = v98;
              v29 = sub_5544(19);
              v30 = sub_5544(39);
              v31 = 0;
              v32 = v27 - v28;
              *buf = 0x100000002;
              v33 = *(v29 + 8);
              while (1)
              {
                v34 = *&buf[v31];
                if (((v33 & v34) != 0) != ((*(v30 + 8) & v34) != 0))
                {
                  break;
                }

                v31 += 4;
                if (v31 == 8)
                {
                  goto LABEL_118;
                }
              }

              if ((v33 & v34) == 0)
              {
                v29 = v30;
              }

LABEL_118:
              v81 = *v29;
              if (v81 && os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
                v102 = 1024;
                v103 = 1726;
                v104 = 2048;
                *v105 = v32;
                _os_log_impl(&dword_0, v81, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PME ApplyHeadroom is active,  Not performing volume scalar adjustment, delta (Commited - Hardware) %f dB", buf, 0x1Cu);
              }

              sub_1A8C0(v25);
LABEL_39:
              v35 = sub_5544(19);
              v36 = sub_5544(39);
              v37 = 0;
              *buf = 0x100000002;
              v38 = *(v35 + 8);
              while (1)
              {
                v39 = *&buf[v37];
                if (((v38 & v39) != 0) != ((*(v36 + 8) & v39) != 0))
                {
                  break;
                }

                v37 += 4;
                if (v37 == 8)
                {
                  goto LABEL_45;
                }
              }

              if ((v38 & v39) == 0)
              {
                v35 = v36;
              }

LABEL_45:
              v40 = *v35;
              if (v40 && os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v41 = *(a4 + 716);
                *buf = 136315650;
                *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
                v102 = 1024;
                v103 = 1737;
                v104 = 2048;
                *v105 = v41;
                _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Device initiated volume change - Previous Hardware Volume: %f dB", buf, 0x1Cu);
              }

              v42 = v98;
              *(a4 + 716) = v98;
              v43 = sub_E7320(a4, v42);
              sub_EA0E8(a4, SBYTE1(v43));
              v44 = sub_5544(19);
              v45 = sub_5544(39);
              v46 = 0;
              *buf = 0x100000002;
              v47 = *(v44 + 8);
              while (1)
              {
                v48 = *&buf[v46];
                if (((v47 & v48) != 0) != ((*(v45 + 8) & v48) != 0))
                {
                  break;
                }

                v46 += 4;
                if (v46 == 8)
                {
                  goto LABEL_54;
                }
              }

              if ((v47 & v48) == 0)
              {
                v44 = v45;
              }

LABEL_54:
              v49 = *v44;
              if (v49 && os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                v50 = *(a4 + 716);
                v51 = *(a4 + 712);
                *buf = 136315906;
                *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
                v102 = 1024;
                v103 = 1742;
                v104 = 2048;
                *v105 = v50;
                *&v105[8] = 2048;
                *&v105[10] = v51;
                _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Device initiated volume change - Committed Hardware Volume: %f dB, Volume Scalar: %f", buf, 0x26u);
              }

              v52 = sub_5544(19);
              v53 = sub_5544(39);
              v54 = 0;
              *buf = 0x100000002;
              v55 = *(v52 + 8);
              while (1)
              {
                v56 = *&buf[v54];
                if (((v55 & v56) != 0) != ((*(v53 + 8) & v56) != 0))
                {
                  break;
                }

                v54 += 4;
                if (v54 == 8)
                {
                  goto LABEL_63;
                }
              }

              if ((v55 & v56) == 0)
              {
                v52 = v53;
              }

LABEL_63:
              v57 = *v52;
              if (v57 && os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                (*(*&v13->_os_unfair_lock_opaque + 128))(__p, v13);
                v58 = __p;
                if (v96 < 0)
                {
                  v58 = __p[0];
                }

                *buf = 136315650;
                *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
                v102 = 1024;
                v103 = 1744;
                v104 = 2080;
                *v105 = v58;
                _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEFAULT, "%25s:%-5d     PhysicalDevice UID = %s", buf, 0x1Cu);
                if (v96 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              v59 = sub_5544(19);
              v60 = sub_5544(39);
              v61 = 0;
              *buf = 0x100000002;
              v62 = *(v59 + 8);
              while (1)
              {
                v63 = *&buf[v61];
                if (((v62 & v63) != 0) != ((*(v60 + 8) & v63) != 0))
                {
                  break;
                }

                v61 += 4;
                if (v61 == 8)
                {
                  goto LABEL_75;
                }
              }

              if ((v62 & v63) == 0)
              {
                v59 = v60;
              }

LABEL_75:
              v64 = *v59;
              if (v64 && os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
              {
                v65 = *(a4 + 544);
                sub_22170(__p, v65);
                v66 = __p;
                if (v96 < 0)
                {
                  v66 = __p[0];
                }

                *buf = 136315906;
                *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
                v102 = 1024;
                v103 = 1745;
                v104 = 1024;
                *v105 = v65;
                *&v105[4] = 2080;
                *&v105[6] = v66;
                _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEFAULT, "%25s:%-5d     Scope = %u (%s)", buf, 0x22u);
                if (v96 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              v67 = sub_5544(19);
              v68 = sub_5544(39);
              v69 = 0;
              *buf = 0x100000002;
              v70 = *(v67 + 8);
              while (1)
              {
                v71 = *&buf[v69];
                if (((v70 & v71) != 0) != ((*(v68 + 8) & v71) != 0))
                {
                  break;
                }

                v69 += 4;
                if (v69 == 8)
                {
                  goto LABEL_87;
                }
              }

              if ((v70 & v71) == 0)
              {
                v67 = v68;
              }

LABEL_87:
              v72 = *v67;
              if (v72 && os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
              {
                v73 = *(a4 + 548);
                sub_22170(__p, v73);
                v74 = __p;
                if (v96 < 0)
                {
                  v74 = __p[0];
                }

                *buf = 136315906;
                *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
                v102 = 1024;
                v103 = 1746;
                v104 = 1024;
                *v105 = v73;
                *&v105[4] = 2080;
                *&v105[6] = v74;
                _os_log_impl(&dword_0, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d     Element = %u (%s)", buf, 0x22u);
                if (v96 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (!*(a4 + 680))
              {
                v75 = sub_5544(19);
                v76 = sub_5544(39);
                v77 = 0;
                *buf = 0x100000002;
                v78 = *(v75 + 8);
                while (1)
                {
                  v79 = *&buf[v77];
                  if (((v78 & v79) != 0) != ((*(v76 + 8) & v79) != 0))
                  {
                    break;
                  }

                  v77 += 4;
                  if (v77 == 8)
                  {
                    goto LABEL_113;
                  }
                }

                if ((v78 & v79) == 0)
                {
                  v75 = v76;
                }

LABEL_113:
                v80 = *v75;
                if (v80 && os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
                  v102 = 1024;
                  v103 = 1747;
                  _os_log_impl(&dword_0, v80, OS_LOG_TYPE_DEBUG, "%25s:%-5d     SW Volume: disabled", buf, 0x12u);
                }
              }

LABEL_94:
              if (v100)
              {
                sub_1A8C0(v100);
              }

              v11 = *v10;
              v7 = a4 + 152;
LABEL_97:
              if (v11 == 1936747877)
              {
                sub_306388(a4);
                goto LABEL_105;
              }

              goto LABEL_99;
            }

            sub_1A8C0(v25);
          }
        }

        *buf = 0;
        LODWORD(__p[0]) = sub_E9780(a4 + 584, v98);
        v94 = 1065353216;
        *(a4 + 712) = *sub_E521C(buf, __p, &v94);
        goto LABEL_39;
      }
    }

LABEL_99:
    if ((v8 & 1) != 0 || v10[1] != *(a4 + 544) || v11 != 1684633187 && v11 != 1987013732 || v10[2] != *(a4 + 548))
    {
      *buf = *v10;
      *&buf[8] = v10[2];
      sub_6FF5C(v7, buf);
    }

LABEL_105:
    ++v9;
  }

  while (v9 != a2);
}

void sub_306304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  sub_1A8C0(v24);
  if (a24)
  {
    sub_1A8C0(a24);
  }

  _Unwind_Resume(a1);
}

void sub_306388(uint64_t *a1)
{
  v2 = a1[88];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[87];
      if (v5)
      {
        sub_5659C(&v24, a1 + 63, "", 1927);
        v6 = v24;
        __p = 0x676C6F6273706D65;
        LODWORD(v21) = 0;
        v7 = sub_59410(v24);
        v9 = v8;
        v10 = 0;
        *(&v12 + 1) = v9;
        *&v12 = v7;
        v11 = v12 >> 32;
        if ((v11 & 0x100000000) != 0 && (v11 & 3) != 0)
        {
          (*(*v6 + 128))(&__p, v6, 0);
          if ((v22 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (p_p)
          {
            if ((v22 & 0x80u) == 0)
            {
              v14 = v22;
            }

            else
            {
              v14 = v21;
            }

            cf = CFStringCreateWithBytes(0, p_p, v14, 0x8000100u, 0);
            if (!cf)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
            }
          }

          else
          {
            cf = 0;
          }

          v16 = +[PASettings sharedInstance];
          v17 = [v16 personalMediaConfigurationForRouteUID:cf];
          [v17 mediaPureToneAverage];
          v19 = v18;

          if (cf)
          {
            CFRelease(cf);
          }

          if (v22 < 0)
          {
            operator delete(__p);
          }

          v10 = v19 | 0x100000000;
        }

        (*(*v5 + 32))(v5, v10);
        if (v25)
        {
          sub_1A8C0(v25);
        }
      }

      sub_1A8C0(v4);
    }
  }
}

void sub_30657C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  sub_20B45C(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_1A8C0(a17);
  }

  sub_1A8C0(v17);
  _Unwind_Resume(a1);
}

BOOL sub_306614(uint64_t a1)
{
  sub_5659C(&v8, (a1 + 504), "", 1670);
  v10 = 0x676C6F627377656ELL;
  v11 = 0;
  v2 = sub_59410(v8);
  *(&v5 + 1) = v3;
  *&v5 = v2;
  v4 = v5 >> 32;
  v6 = 1;
  if ((v4 & 0x100000000) != 0 && v4)
  {
    v6 = *(a1 + 680) != 1;
  }

  if (v9)
  {
    sub_1A8C0(v9);
  }

  return v6;
}

void sub_3066B4(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  *(a1 + 552) = a4;
  memset(__p, 0, sizeof(__p));
  sub_20A634(__p, *a2, a2[1], (a2[1] - *a2) >> 4);
  sub_159BFC(a1, __p, 0, a3);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  *(a1 + 728) = 0;
}

void sub_306728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_306740(int a1, unsigned int *a2)
{
  if (!a2)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "StandardUtilities.h";
      v11 = 1024;
      v12 = 154;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a1 != 4)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "StandardUtilities.h";
        v11 = 1024;
        v12 = 155;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: sizeof(T) == inDataSize", &v9, 0x12u);
      }
    }
  }

  return *a2;
}

const __CFDictionary *sub_3068D8(const __CFDictionary *result, const void *a2)
{
  if (result)
  {
    return (CFDictionaryContainsKey(result, a2) != 0);
  }

  return result;
}

uint64_t sub_306900(uint64_t result, CFDictionaryRef theDict, void *key)
{
  *result = &off_6D3210;
  *(result + 8) = 0;
  if (theDict)
  {
    v3 = result;
    value = 0;
    result = CFDictionaryGetValueIfPresent(theDict, key, &value);
    if (result)
    {
      v4 = value ? CFGetTypeID(value) : 0;
      result = CFNumberGetTypeID();
      if (v4 == result)
      {
        v5 = value;
        if (value)
        {
          CFRetain(value);
          v6 = v3;
          v7 = v5;
        }

        else
        {
          v6 = v3;
          v7 = 0;
        }

        return sub_306F94(v6, v7);
      }
    }
  }

  return result;
}

const __CFNumber *sub_3069C0(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

double sub_3069F8(const __CFNumber *a1)
{
  valuePtr = 0;
  if (!a1)
  {
    return 0.0;
  }

  CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
  LODWORD(result) = valuePtr;
  return result;
}

void sub_306A38()
{
  v0 = sub_5544(42);
  v1 = *v0;
  if (*v0 && os_log_type_enabled(*v0, OS_LOG_TYPE_DEBUG))
  {
    sub_22170(&__p, 0x726D7073u);
    v2 = v6 >= 0 ? &__p : __p;
    *buf = 136315650;
    *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1911;
    *&buf[18] = 2080;
    *&buf[20] = v2;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "%25s:%-5d OutputVolumeControl_HAL_Common::NotifyVolumeRampStateListeners() - notifying listeners that %s has changed.", buf, 0x1Cu);
    if (v6 < 0)
    {
      operator delete(__p);
    }
  }

  if ((atomic_load_explicit(&qword_6E98B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_6E98B0))
    {
      qword_6E98A0 = 0x6F757470726D7073;
      dword_6E98A8 = 0;
      __cxa_guard_release(&qword_6E98B0);
    }
  }

  __p = qword_6E98A0;
  v4 = dword_6E98A8;
  memset(buf, 0, 24);
  sub_2C8104(buf, &__p, &v5, 1uLL);
}

void sub_306BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_306BF4(uint64_t a1, unsigned __int8 *a2, float *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  std::recursive_mutex::lock((v5 + 800));
  v6 = sub_5544(42);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = "not ramping";
    v14 = 136315906;
    v15 = "OutputVolumeControl_HAL_Common.cpp";
    if (v3)
    {
      v8 = "ramping";
    }

    v16 = 1024;
    v17 = 1818;
    v18 = 2080;
    v19 = v8;
    v20 = 2048;
    v21 = v4;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d OutputVolumeControl_HAL_Common::BeginSoftwareVolumeRamp() - listener called with state %s position %.2f.", &v14, 0x26u);
  }

  if (*(v5 + 870))
  {
    goto LABEL_13;
  }

  *(v5 + 870) = 1;
  if (v3)
  {
    goto LABEL_13;
  }

  v9 = *(v5 + 712);
  v10 = fabsf(v9);
  v11 = fabsf(v4);
  if (v10 < v11)
  {
    v10 = v11;
  }

  if (v10 < 1.0)
  {
    v10 = 1.0;
  }

  if (vabds_f32(v9, v4) > fabsf(v10 * 0.00000011921))
  {
LABEL_13:
    *(v5 + 712) = v4;
    sub_E5354(v5, 1);
  }

  v12 = sub_5544(42);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315394;
    v15 = "OutputVolumeControl_HAL_Common.cpp";
    v16 = 1024;
    v17 = 1831;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d OutputVolumeControl_HAL_Common::BeginSoftwareVolumeRamp() - ignoring initial ramp listener callback with unchanged volume.", &v14, 0x12u);
  }

  std::recursive_mutex::unlock((v5 + 800));
}

uint64_t sub_306F00(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6C1498;
  a2[1] = v2;
  return result;
}

uint64_t sub_306F94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = a2;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

uint64_t sub_306FCC(void *a1)
{
  v2 = sub_8703C();
  result = (*(*v2 + 336))(v2);
  if (result)
  {
    sub_23148(v5, (a1[4] + 8));
    v4 = a1[7];
    v6 = a1[6];
    v7 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = a1[8];
    operator new();
  }

  return result;
}

void sub_307228(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_4C70(v26 + 16);
  sub_4C70(v27 - 72);
  sub_307350(&a15);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_3072CC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    sub_1A8C0(v3);
  }
}

void *sub_30731C(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_307350(uint64_t a1)
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

void sub_3073A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    sub_46A74();
  }

  (*(*v2 + 48))(v2);

  sub_21991C(a2, 1920099684);
}

void sub_307410(uint64_t a1)
{
  *a1 = off_6C1468;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  sub_4C70(a1 + 16);

  operator delete();
}

uint64_t sub_307488(uint64_t a1)
{
  *a1 = off_6C1468;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  sub_4C70(a1 + 16);
  return a1;
}

void sub_3074E0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = sub_5544(39);
        v7 = *v6;
        if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
        {
          v8 = a1 + 8;
          v9 = *(a1 + 48);
          if (*(a1 + 31) < 0)
          {
            v8 = *(a1 + 8);
          }

          v10 = 136316162;
          v11 = "OutputVolumeControl_HAL_Common.cpp";
          v12 = 1024;
          v13 = 1305;
          v14 = 2048;
          v15 = v9;
          v16 = 2048;
          v17 = v5;
          v18 = 2080;
          v19 = v8;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d PlaybackDosimetry: setting hardware read only volume %.2fdB, %p on VAD '%s'.", &v10, 0x30u);
        }

        (*(*v5 + 24))(v5, *(a1 + 48), *(a1 + 52));
      }

      sub_1A8C0(v4);
    }
  }
}

void sub_30764C(void *a1)
{
  sub_ED13C(a1 + 8);

  operator delete(a1);
}

_BYTE *sub_307690(uint64_t a1, void *a2)
{
  *a2 = off_6C1420;
  result = a2 + 1;
  if (*(a1 + 31) < 0)
  {
    result = sub_54A0(result, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *result = v5;
  }

  v6 = *(a1 + 40);
  a2[4] = *(a1 + 32);
  a2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  a2[6] = *(a1 + 48);
  return result;
}

void sub_3077CC(uint64_t a1)
{
  *a1 = off_6C1420;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

uint64_t sub_307848(uint64_t a1)
{
  *a1 = off_6C1420;
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_3078A4(uint64_t a1)
{
  sub_14034C(a1);

  operator delete();
}

void sub_307B2C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 792);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 768) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 704);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  sub_477A0(*(v1 + 648));
  sub_477A0(*(v1 + 600));
  sub_4E0BC((v1 + 520));
  v7 = *(v1 + 512);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  sub_1405C0(v1);
  _Unwind_Resume(a1);
}

void sub_307BD4(uint64_t a1, int a2)
{
  if (*(a1 + 40))
  {
    v3 = atomic_load((a1 + 82));
    if (v3)
    {
      sub_8BD14(&v12, *(a1 + 88), *(a1 + 96));
      v6 = v12;
      v5 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_1A8C0(v5);
      }

      if (a2)
      {
        v7 = 2000000000;
      }

      else
      {
        v7 = 200000000;
      }

      v8 = dispatch_time(0, v7);
      v9 = *(a1 + 72);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1174405120;
      v10[2] = sub_307CE4;
      v10[3] = &unk_6C1678;
      v10[4] = v6;
      v11 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      dispatch_after(v8, v9, v10);
      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_307CE4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = atomic_load((v5 + 81));
        if (v6)
        {
          v7 = atomic_load((v5 + 82));
          if (v7)
          {
            state64 = 0;
            notify_get_state(*(v5 + 40), &state64);
            *(v5 + 44) = state64 == 0;
            (*(*v5 + 232))(v5, 2884);
          }
        }

        (*(*v5 + 280))(v5, 0);
      }

      sub_1A8C0(v4);
    }
  }
}

void sub_307DE0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_307DF0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_307E0C(uint64_t a1, int a2)
{
  v2 = atomic_load((a1 + 82));
  if (v2)
  {
    sub_8BD14(&v12, *(a1 + 88), *(a1 + 96));
    v6 = v12;
    v5 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_1A8C0(v5);
    }

    if (a2)
    {
      v7 = 2000000000;
    }

    else
    {
      v7 = 1000000000;
    }

    v8 = dispatch_time(0, v7);
    v9 = *(a1 + 72);
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = sub_307F14;
    block[3] = &unk_6C1648;
    block[4] = a1;
    block[5] = v6;
    v11 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_after(v8, v9, block);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_307F14(void *a1)
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
      if (v6)
      {
        v7 = atomic_load(v6 + 82);
        if (v7)
        {
          v8 = atomic_load(v6 + 81);
          if (v8)
          {
            v16 = 0;
            if (((*(*v3 + 200))(v3, 2842, &v16) & 1) == 0)
            {
              v9 = sub_5544(26);
              v10 = *v9;
              if (*v9)
              {
                if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v18 = "AncManagerV2.cpp";
                  v19 = 1024;
                  v20 = 276;
                  _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not read cust_block_exec_count", buf, 0x12u);
                }
              }
            }

            v11 = v16;
            if (v16 <= *(v3 + 48))
            {
              v12 = sub_5544(26);
              v13 = *v12;
              if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
              {
                v14 = *(v3 + 52);
                *buf = 136315650;
                v18 = "AncManagerV2.cpp";
                v19 = 1024;
                v20 = 286;
                v21 = 1024;
                v22 = v14;
                _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP detected to be not running. HangCount = %u", buf, 0x18u);
              }

              v15 = *(v3 + 52) + 1;
              *(v3 + 52) = v15;
              if (v15 >= 5)
              {
                *(v3 + 80) = 0;
              }
            }

            else
            {
              *(v3 + 80) = 1;
              *(v3 + 48) = v11;
              *(v3 + 52) = 0;
            }
          }
        }

        (*(*v6 + 264))(v6, 0);
      }

      sub_1A8C0(v5);
    }
  }
}

void sub_308158(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_308168(uint64_t result, uint64_t a2)
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

void sub_308184(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  sub_400548();
}

void sub_308434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9)
{
  __cxa_free_exception(v13);
  sub_1A8C0(v12);
  v15 = v10[6].__vftable;
  if (v15)
  {
    v10[6].__shared_owners_ = v15;
    operator delete(v15);
  }

  v16 = *a9;
  if (*a9)
  {
    v10[5].__shared_owners_ = v16;
    operator delete(v16);
  }

  shared_weak_owners = v10[2].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  v10[1].__vftable = v11;
  v18 = v10[2].__vftable;
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v19);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  _Unwind_Resume(a1);
}

BOOL sub_3084F0(uint64_t a1, CFMutableStringRef theString, int a3)
{
  if (theString)
  {
    v6 = *(a1 + 56);
    if (a3)
    {
      CFStringAppendFormat(theString, 0, @"%-20s %-.6f\n", "Voice mic trim:", *(a1 + 56));
      CFStringAppendFormat(theString, 0, @"%-20s %-.6f\n", "Ref mic trim:", *(a1 + 60));
      CFStringAppendFormat(theString, 0, @"%-20s %-.6f\n", "Error mic trim:", *(a1 + 64));
      CFStringAppendFormat(theString, 0, @"%-20s %-.6f\n", "Receiver trim:", *(a1 + 68));
      CFStringAppendFormat(theString, 0, @"%-20s ", "Tuning device type:");
    }

    else
    {
      CFStringAppendFormat(theString, 0, @"Voice mic trim, %-.6f\n", *(a1 + 56));
      CFStringAppendFormat(theString, 0, @"Ref mic trim, %-.6f\n", *(a1 + 60));
      CFStringAppendFormat(theString, 0, @"Error mic trim, %-.6f\n", *(a1 + 64));
      CFStringAppendFormat(theString, 0, @"Receiver trim, %-.6f\n", *(a1 + 68));
      CFStringAppend(theString, @"Tuning device type, ");
    }

    v7 = *(a1 + 120);
    v8 = @"No Tuning loaded\n";
    if (v7)
    {
      v9 = sub_4008B0(v7);
      v10 = @"*** Invalid ***\n";
      if (v9 == 2)
      {
        v10 = @"L71\n";
      }

      if (v9 != -1)
      {
        v8 = v10;
      }
    }

    CFStringAppend(theString, v8);
    if (a3)
    {
      CFStringAppendFormat(theString, 0, @"%-20s ", "ANC tuning ID:");
    }

    else
    {
      CFStringAppend(theString, @"ANC tuning ID, ");
    }

    v11 = *(a1 + 120);
    if (v11)
    {
      value = 0;
      if (CFDictionaryGetValueIfPresent(v11, @"Tuning ID", &value))
      {
        CFStringAppend(theString, value);
        v12 = @"\n";
      }

      else
      {
        v12 = @"*** Missing ***\n";
      }
    }

    else
    {
      v12 = @"Unknown\n";
    }

    CFStringAppend(theString, v12);
  }

  return theString != 0;
}

BOOL sub_308758(uint64_t a1, __CFString *a2, int a3)
{
  if (a2)
  {
    v4 = *(a1 + 120);
    if (!v4)
    {
      CFStringAppendFormat(a2, 0, @"Tuning not loaded\n");
      return a2 != 0;
    }

    Value = CFDictionaryGetValue(v4, @"Parameters");
    Count = CFDictionaryGetCount(Value);
    v8 = Count;
    if (Count >= 0x15)
    {
      CFStringAppendFormat(a2, 0, @"Too many categories\n");
      return a2 != 0;
    }

    v9 = malloc_type_malloc(8 * (Count & 0x1F), 0x80040B8603338uLL);
    v44 = Value;
    CFDictionaryGetKeysAndValues(Value, v9, 0);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    if (v8)
    {
      v10 = v8 & 0x1F;
      v11 = v9;
      do
      {
        sub_37D59C(&__p, *v11);
        sub_28CA74(&v51, &__p);
        if (SHIBYTE(v50) < 0)
        {
          operator delete(__p);
        }

        ++v11;
        --v10;
      }

      while (v10);
    }

    free(v9);
    v12 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v52 - v51));
    if (v52 == v51)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    sub_308DB8(v51, v52, v13, 1);
    v14 = v51;
    v45 = v52;
    v15 = v44;
    if (v51 == v52)
    {
      goto LABEL_67;
    }

LABEL_15:
    v16 = v14;
    if (*(v14 + 23) < 0)
    {
      v16 = *v14;
    }

    CFStringAppendFormat(a2, 0, @"%s\n", v16);
    if (*(v14 + 23) >= 0)
    {
      v17 = v14;
    }

    else
    {
      v17 = *v14;
    }

    v18 = CFStringCreateWithCString(kCFAllocatorDefault, v17, 0x8000100u);
    v19 = CFDictionaryGetValue(v15, v18);
    CFRelease(v18);
    v20 = CFGetTypeID(v19);
    if (v20 != CFDictionaryGetTypeID())
    {
      CFStringAppendFormat(a2, 0, @"*** INVALID DICTIONARY ***\n\n");
      goto LABEL_66;
    }

    v21 = CFDictionaryGetCount(v19);
    v22 = v21;
    if (v21 >= 0x7D1)
    {
      CFStringAppendFormat(a2, 0, @"Too many params\n");
      goto LABEL_66;
    }

    v23 = malloc_type_malloc(8 * (v21 & 0x7FF), 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(v19, v23, 0);
    __p = 0uLL;
    v50 = 0;
    if (v22)
    {
      v24 = v22 & 0x7FF;
      v25 = v23;
      do
      {
        sub_37D59C(valuePtr, *v25);
        sub_28CA74(&__p, valuePtr);
        if (v48 < 0)
        {
          operator delete(valuePtr[0]);
        }

        ++v25;
        --v24;
      }

      while (v24);
    }

    free(v23);
    v26 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*(&__p + 1) - __p) >> 3));
    if (*(&__p + 1) == __p)
    {
      v27 = 0;
    }

    else
    {
      v27 = v26;
    }

    sub_308DB8(__p, *(&__p + 1), v27, 1);
    v28 = *(&__p + 1);
    v46 = *(&__p + 1);
    for (i = __p; ; i += 24)
    {
      if (i == v28)
      {
        CFStringAppendFormat(a2, 0, @"\n");
        valuePtr[0] = &__p;
        sub_11C50(valuePtr);
        v15 = v44;
LABEL_66:
        v14 += 3;
        if (v14 == v45)
        {
LABEL_67:
          *&__p = &v51;
          sub_11C50(&__p);
          return a2 != 0;
        }

        goto LABEL_15;
      }

      if (i[23] >= 0)
      {
        v30 = i;
      }

      else
      {
        v30 = *i;
      }

      v31 = CFStringCreateWithCString(kCFAllocatorDefault, v30, 0x8000100u);
      v32 = CFDictionaryGetValue(v19, v31);
      CFRelease(v31);
      v33 = CFGetTypeID(v32);
      TypeID = CFArrayGetTypeID();
      v35 = CFGetTypeID(v32);
      v36 = CFNumberGetTypeID();
      v37 = i[23];
      v38 = i;
      if (a3)
      {
        if (v33 != TypeID)
        {
          if (v37 < 0)
          {
            v38 = *i;
          }

          CFStringAppendFormat(a2, 0, @"    %-40s = ", v38);
LABEL_58:
          if (v35 == v36)
          {
            if (CFNumberIsFloatType(v32))
            {
              valuePtr[0] = 0xBFF0000000000000;
              CFNumberGetValue(v32, kCFNumberDoubleType, valuePtr);
              CFStringAppendFormat(a2, 0, @"%.40g ", valuePtr[0]);
            }

            else
            {
              valuePtr[0] = 0;
              CFNumberGetValue(v32, kCFNumberLongType, valuePtr);
              CFStringAppendFormat(a2, 0, @"%lld ", valuePtr[0]);
            }
          }

          else
          {
            CFStringAppendFormat(a2, 0, @"*** INVALID DATA ***");
          }

          goto LABEL_64;
        }

        if (v37 < 0)
        {
          v38 = *i;
        }

        CFStringAppendFormat(a2, 0, @"    %s = ", v38);
      }

      else
      {
        if (v37 < 0)
        {
          v38 = *i;
        }

        CFStringAppendFormat(a2, 0, @", %s,", v38);
        if (v33 != TypeID)
        {
          goto LABEL_58;
        }
      }

      v39 = CFArrayGetCount(v32);
      if (v39 >= 1)
      {
        v40 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v32, v40);
          v42 = CFGetTypeID(ValueAtIndex);
          if (v42 != CFNumberGetTypeID())
          {
            break;
          }

          if (a3)
          {
            CFStringAppend(a2, @"\n        ");
          }

          if (CFNumberIsFloatType(ValueAtIndex))
          {
            valuePtr[0] = 0xBFF0000000000000;
            CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, valuePtr);
            CFStringAppendFormat(a2, 0, @"%.40g ", valuePtr[0]);
          }

          else
          {
            valuePtr[0] = 0;
            CFNumberGetValue(ValueAtIndex, kCFNumberLongType, valuePtr);
            CFStringAppendFormat(a2, 0, @"%lld ", valuePtr[0]);
          }

          if (v39 == ++v40)
          {
            goto LABEL_64;
          }
        }

        CFStringAppendFormat(a2, 0, @"*** INVALID NUMBER ARRAY ***");
      }

LABEL_64:
      CFStringAppendFormat(a2, 0, @"\n");
      v28 = v46;
    }
  }

  return a2 != 0;
}

void sub_308D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  *(v27 - 88) = &__p;
  sub_11C50((v27 - 88));
  __p = &a27;
  sub_11C50(&__p);
  _Unwind_Resume(a1);
}

void sub_308DB8(uint64_t a1, void **a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 3;
  v191 = a2 - 6;
  v9 = a2 - 9;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * (a2 - v10);
    v13 = v12 - 2;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3:
        v127 = sub_6F834((a1 + 24), a1);
        v128 = sub_6F834(a2 - 3, (a1 + 24));
        if (v127 < 0)
        {
          if (v128 < 0)
          {
            goto LABEL_181;
          }

          v184 = *a1;
          v195 = *(a1 + 16);
          v194 = v184;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v194;
          *(a1 + 40) = v195;
          if ((sub_6F834(a2 - 3, (a1 + 24)) & 0x80) == 0)
          {
            return;
          }

          v185 = *(a1 + 24);
          v194 = v185;
          v186 = *(a1 + 40);
          v195 = v186;
          v187 = *(a2 - 1);
          *(a1 + 24) = *v8;
          *(a1 + 40) = v187;
LABEL_182:
          *(a2 - 1) = v186;
          *v8 = v185;
          return;
        }

        if ((v128 & 0x80000000) == 0)
        {
          return;
        }

        v194 = *(a1 + 24);
        v129 = v194;
        v195 = *(a1 + 40);
        v130 = v195;
        v131 = *(a2 - 1);
        *(a1 + 24) = *v8;
        *(a1 + 40) = v131;
        *(a2 - 1) = v130;
        *v8 = v129;
LABEL_116:
        if ((sub_6F834((a1 + 24), a1) & 0x80) != 0)
        {
          v132 = *a1;
          v195 = *(a1 + 16);
          v194 = v132;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v194;
          *(a1 + 40) = v195;
        }

        return;
      case 4:

        sub_309E6C(a1, (a1 + 24), (a1 + 48), a2 - 3);
        return;
      case 5:
        sub_309E6C(a1, (a1 + 24), (a1 + 48), (a1 + 72));
        if ((sub_6F834(a2 - 3, (a1 + 72)) & 0x80) == 0)
        {
          return;
        }

        v194 = *(a1 + 72);
        v119 = v194;
        v195 = *(a1 + 88);
        v120 = v195;
        v121 = *(a2 - 1);
        *(a1 + 72) = *v8;
        *(a1 + 88) = v121;
        *(a2 - 1) = v120;
        *v8 = v119;
        if ((sub_6F834((a1 + 72), (a1 + 48)) & 0x80) == 0)
        {
          return;
        }

        v122 = *(a1 + 64);
        v123 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v123;
        *(a1 + 88) = v122;
        if ((sub_6F834((a1 + 48), (a1 + 24)) & 0x80) == 0)
        {
          return;
        }

        v124 = *(a1 + 40);
        v125 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v125;
        *(a1 + 64) = v124;
        goto LABEL_116;
    }

LABEL_9:
    if (v11 <= 575)
    {
      v133 = (a1 + 24);
      v135 = a1 == a2 || v133 == a2;
      if (a4)
      {
        if (!v135)
        {
          v136 = 0;
          v137 = a1;
          do
          {
            v138 = v137;
            v137 = v133;
            if ((sub_6F834(v133, v138) & 0x80) != 0)
            {
              v139 = *v137;
              v195 = v137[2];
              v194 = v139;
              v137[1] = 0;
              v137[2] = 0;
              *v137 = 0;
              v140 = v136;
              while (1)
              {
                v141 = a1 + v140;
                *(v141 + 24) = *(a1 + v140);
                *(v141 + 40) = *(a1 + v140 + 16);
                *(v141 + 23) = 0;
                *v141 = 0;
                if (!v140)
                {
                  break;
                }

                v140 -= 24;
                if ((sub_6F834(&v194, (v140 + a1)) & 0x80) == 0)
                {
                  v142 = a1 + v140 + 24;
                  goto LABEL_136;
                }
              }

              v142 = a1;
LABEL_136:
              v143 = v194;
              *(v142 + 16) = v195;
              *v142 = v143;
            }

            v133 = v137 + 3;
            v136 += 24;
          }

          while (v137 + 3 != a2);
        }
      }

      else if (!v135)
      {
        do
        {
          v178 = a1;
          a1 = v133;
          if ((sub_6F834(v133, v178) & 0x80) != 0)
          {
            v179 = *a1;
            v195 = *(a1 + 16);
            v194 = v179;
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            *a1 = 0;
            v180 = a1;
            do
            {
              v181 = v180 - 24;
              *v180 = *(v180 - 24);
              *(v180 + 16) = *(v180 - 8);
              *(v180 - 1) = 0;
              *(v180 - 24) = 0;
              v182 = sub_6F834(&v194, (v180 - 48));
              v180 = v181;
            }

            while (v182 < 0);
            v183 = v194;
            *(v181 + 16) = v195;
            *v181 = v183;
          }

          v133 = (a1 + 24);
        }

        while ((a1 + 24) != a2);
      }

      return;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v192 = a2;
        v144 = v13 >> 1;
        v145 = v13 >> 1;
        do
        {
          v146 = v145;
          if (v144 >= v145)
          {
            v147 = (2 * v145) | 1;
            v148 = a1 + 24 * v147;
            if (2 * v145 + 2 < v12 && (sub_6F834((a1 + 24 * v147), (v148 + 24)) & 0x80u) != 0)
            {
              v148 += 24;
              v147 = 2 * v146 + 2;
            }

            v149 = a1 + 24 * v146;
            if ((sub_6F834(v148, v149) & 0x80) == 0)
            {
              v150 = *v149;
              v195 = *(v149 + 16);
              v194 = v150;
              *(v149 + 8) = 0;
              *(v149 + 16) = 0;
              *v149 = 0;
              do
              {
                v151 = v148;
                v152 = *v148;
                *(v149 + 16) = *(v148 + 16);
                *v149 = v152;
                *(v148 + 23) = 0;
                *v148 = 0;
                if (v144 < v147)
                {
                  break;
                }

                v153 = (2 * v147) | 1;
                v148 = a1 + 24 * v153;
                v154 = 2 * v147 + 2;
                if (v154 < v12 && (sub_6F834((a1 + 24 * v153), (v148 + 24)) & 0x80u) != 0)
                {
                  v148 += 24;
                  v153 = v154;
                }

                v149 = v151;
                v147 = v153;
              }

              while ((sub_6F834(v148, &v194) & 0x80) == 0);
              v155 = v194;
              *(v151 + 16) = v195;
              *v151 = v155;
            }
          }

          v145 = v146 - 1;
        }

        while (v146);
        v156 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
        v157 = v192;
        do
        {
          v158 = 0;
          v159 = v157;
          v190 = *a1;
          *&v196 = *(a1 + 8);
          *(&v196 + 7) = *(a1 + 15);
          v193 = *(a1 + 23);
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          v160 = a1;
          do
          {
            v161 = v160 + 24 * v158;
            v162 = v161 + 24;
            v163 = (2 * v158) | 1;
            v164 = 2 * v158 + 2;
            if (v164 < v156)
            {
              v165 = v161 + 48;
              if ((sub_6F834((v161 + 24), (v161 + 48)) & 0x80u) != 0)
              {
                v162 = v165;
                v163 = v164;
              }
            }

            v166 = *v162;
            *(v160 + 16) = *(v162 + 16);
            *v160 = v166;
            *(v162 + 23) = 0;
            *v162 = 0;
            v160 = v162;
            v158 = v163;
          }

          while (v163 <= (v156 - 2) / 2);
          if (v162 == v159 - 3)
          {
            v157 = v159 - 3;
            *v162 = v190;
            v176 = *(&v196 + 7);
            *(v162 + 8) = v196;
            *(v162 + 15) = v176;
            *(v162 + 23) = v193;
          }

          else
          {
            v167 = *(v159 - 3);
            v157 = v159 - 3;
            *(v162 + 16) = *(v159 - 1);
            *v162 = v167;
            *(v159 - 3) = v190;
            v168 = v196;
            *(v159 - 9) = *(&v196 + 7);
            *(v159 - 2) = v168;
            *(v159 - 1) = v193;
            v169 = v162 - a1 + 24;
            if (v169 >= 25)
            {
              v170 = (-2 - 0x5555555555555555 * (v169 >> 3)) >> 1;
              v171 = a1 + 24 * v170;
              if ((sub_6F834(v171, v162) & 0x80) != 0)
              {
                v172 = *v162;
                v195 = *(v162 + 16);
                v194 = v172;
                *(v162 + 8) = 0;
                *(v162 + 16) = 0;
                *v162 = 0;
                do
                {
                  v173 = v171;
                  v174 = *v171;
                  *(v162 + 16) = *(v171 + 16);
                  *v162 = v174;
                  *(v171 + 23) = 0;
                  *v171 = 0;
                  if (!v170)
                  {
                    break;
                  }

                  v170 = (v170 - 1) >> 1;
                  v171 = a1 + 24 * v170;
                  v162 = v173;
                }

                while ((sub_6F834(v171, &v194) & 0x80) != 0);
                v175 = v194;
                *(v173 + 16) = v195;
                *v173 = v175;
              }
            }
          }
        }

        while (v156-- > 2);
      }

      return;
    }

    v14 = v12 >> 1;
    v15 = (a1 + 24 * (v12 >> 1));
    if (v11 >= 0xC01)
    {
      v16 = sub_6F834(v15, a1);
      v17 = sub_6F834(a2 - 3, v15);
      if (v16 < 0)
      {
        if (v17 < 0)
        {
          v42 = *a1;
          v195 = *(a1 + 16);
          v194 = v42;
          v43 = *v8;
          *(a1 + 16) = *(a2 - 1);
          *a1 = v43;
        }

        else
        {
          v32 = *a1;
          v195 = *(a1 + 16);
          v194 = v32;
          v33 = *v15;
          *(a1 + 16) = v15[2];
          *a1 = v33;
          v34 = v194;
          v15[2] = v195;
          *v15 = v34;
          if ((sub_6F834(a2 - 3, v15) & 0x80) == 0)
          {
            goto LABEL_28;
          }

          v35 = *v15;
          v195 = v15[2];
          v194 = v35;
          v36 = *v8;
          v15[2] = *(a2 - 1);
          *v15 = v36;
        }

        v44 = v194;
        *(a2 - 1) = v195;
        *v8 = v44;
      }

      else if (v17 < 0)
      {
        v18 = *v15;
        v195 = v15[2];
        v194 = v18;
        v19 = *v8;
        v15[2] = *(a2 - 1);
        *v15 = v19;
        v20 = v194;
        *(a2 - 1) = v195;
        *v8 = v20;
        if ((sub_6F834(v15, a1) & 0x80) != 0)
        {
          v21 = *a1;
          v195 = *(a1 + 16);
          v194 = v21;
          v22 = *v15;
          *(a1 + 16) = v15[2];
          *a1 = v22;
          v23 = v194;
          v15[2] = v195;
          *v15 = v23;
        }
      }

LABEL_28:
      v45 = (a1 + 24 * v14 - 24);
      v46 = sub_6F834(v45, (a1 + 24));
      v47 = sub_6F834(v191, v45);
      if (v46 < 0)
      {
        if (v47 < 0)
        {
          v194 = *(a1 + 24);
          v63 = v194;
          v195 = *(a1 + 40);
          v64 = v195;
          v65 = *(a2 - 4);
          *(a1 + 24) = *v191;
          *(a1 + 40) = v65;
          *(a2 - 4) = v64;
          *v191 = v63;
        }

        else
        {
          v194 = *(a1 + 24);
          v54 = v194;
          v195 = *(a1 + 40);
          v55 = v195;
          v56 = *(a1 + 24 * v14 - 8);
          *(a1 + 24) = *v45;
          *(a1 + 40) = v56;
          *(a1 + 24 * v14 - 8) = v55;
          *v45 = v54;
          if ((sub_6F834(v191, v45) & 0x80) != 0)
          {
            v57 = *v45;
            v195 = *(a1 + 24 * v14 - 8);
            v194 = v57;
            v58 = *v191;
            *(a1 + 24 * v14 - 8) = *(a2 - 4);
            *v45 = v58;
            v59 = v194;
            *(a2 - 4) = v195;
            *v191 = v59;
          }
        }
      }

      else if (v47 < 0)
      {
        v48 = *v45;
        v195 = *(a1 + 24 * v14 - 8);
        v194 = v48;
        v49 = *v191;
        *(a1 + 24 * v14 - 8) = *(a2 - 4);
        *v45 = v49;
        v50 = v194;
        *(a2 - 4) = v195;
        *v191 = v50;
        if ((sub_6F834(v45, (a1 + 24)) & 0x80) != 0)
        {
          v194 = *(a1 + 24);
          v51 = v194;
          v195 = *(a1 + 40);
          v52 = v195;
          v53 = *(a1 + 24 * v14 - 8);
          *(a1 + 24) = *v45;
          *(a1 + 40) = v53;
          *(a1 + 24 * v14 - 8) = v52;
          *v45 = v51;
        }
      }

      v66 = a1 + 24 * v14;
      v67 = sub_6F834((v66 + 24), (a1 + 48));
      v68 = sub_6F834(a2 - 9, (v66 + 24));
      if (v67 < 0)
      {
        if (v68 < 0)
        {
          v80 = *(a1 + 48);
          v194 = v80;
          v81 = *(a1 + 64);
          v195 = v81;
          v82 = *(a2 - 7);
          *(a1 + 48) = *v9;
          *(a1 + 64) = v82;
        }

        else
        {
          v194 = *(a1 + 48);
          v75 = v194;
          v195 = *(a1 + 64);
          v76 = v195;
          v77 = *(v66 + 40);
          *(a1 + 48) = *(v66 + 24);
          *(a1 + 64) = v77;
          *(v66 + 40) = v76;
          *(v66 + 24) = v75;
          if ((sub_6F834(a2 - 9, (v66 + 24)) & 0x80) == 0)
          {
            goto LABEL_47;
          }

          v78 = *(v66 + 24);
          v195 = *(v66 + 40);
          v194 = v78;
          v79 = *v9;
          *(v66 + 40) = *(a2 - 7);
          *(v66 + 24) = v79;
          v80 = v194;
          v81 = v195;
        }

        *(a2 - 7) = v81;
        *v9 = v80;
      }

      else if (v68 < 0)
      {
        v69 = *(v66 + 24);
        v195 = *(v66 + 40);
        v194 = v69;
        v70 = *v9;
        *(v66 + 40) = *(a2 - 7);
        *(v66 + 24) = v70;
        v71 = v194;
        *(a2 - 7) = v195;
        *v9 = v71;
        if ((sub_6F834((v66 + 24), (a1 + 48)) & 0x80) != 0)
        {
          v194 = *(a1 + 48);
          v72 = v194;
          v195 = *(a1 + 64);
          v73 = v195;
          v74 = *(v66 + 40);
          *(a1 + 48) = *(v66 + 24);
          *(a1 + 64) = v74;
          *(v66 + 40) = v73;
          *(v66 + 24) = v72;
        }
      }

LABEL_47:
      v83 = sub_6F834(v15, v45);
      v84 = sub_6F834((v66 + 24), v15);
      if ((v83 & 0x80) == 0)
      {
        if (v84 < 0)
        {
          v85 = *v15;
          v195 = v15[2];
          v194 = v85;
          *v15 = *(v66 + 24);
          v15[2] = *(v66 + 40);
          v86 = v194;
          *(v66 + 40) = v195;
          *(v66 + 24) = v86;
          if ((sub_6F834(v15, v45) & 0x80) != 0)
          {
            v87 = *v45;
            v195 = v45[2];
            v194 = v87;
            *v45 = *v15;
            v45[2] = v15[2];
            v88 = v194;
            v15[2] = v195;
            *v15 = v88;
          }
        }

        goto LABEL_56;
      }

      if (v84 < 0)
      {
        v92 = *v45;
        v195 = v45[2];
        v194 = v92;
        *v45 = *(v66 + 24);
        v45[2] = *(v66 + 40);
LABEL_55:
        v93 = v194;
        *(v66 + 40) = v195;
        *(v66 + 24) = v93;
      }

      else
      {
        v89 = *v45;
        v195 = v45[2];
        v194 = v89;
        *v45 = *v15;
        v45[2] = v15[2];
        v90 = v194;
        v15[2] = v195;
        *v15 = v90;
        if ((sub_6F834((v66 + 24), v15) & 0x80) != 0)
        {
          v91 = *v15;
          v195 = v15[2];
          v194 = v91;
          *v15 = *(v66 + 24);
          v15[2] = *(v66 + 40);
          goto LABEL_55;
        }
      }

LABEL_56:
      v94 = *a1;
      v195 = *(a1 + 16);
      v194 = v94;
      v95 = *v15;
      *(a1 + 16) = v15[2];
      *a1 = v95;
      v96 = v194;
      v15[2] = v195;
      *v15 = v96;
      goto LABEL_57;
    }

    v24 = sub_6F834(a1, v15);
    v25 = sub_6F834(a2 - 3, a1);
    if ((v24 & 0x80) == 0)
    {
      if (v25 < 0)
      {
        v26 = *a1;
        v195 = *(a1 + 16);
        v194 = v26;
        v27 = *v8;
        *(a1 + 16) = *(a2 - 1);
        *a1 = v27;
        v28 = v194;
        *(a2 - 1) = v195;
        *v8 = v28;
        if ((sub_6F834(a1, v15) & 0x80) != 0)
        {
          v29 = *v15;
          v195 = v15[2];
          v194 = v29;
          v30 = *a1;
          v15[2] = *(a1 + 16);
          *v15 = v30;
          v31 = v194;
          *(a1 + 16) = v195;
          *a1 = v31;
        }
      }

      goto LABEL_57;
    }

    if (v25 < 0)
    {
      v60 = *v15;
      v195 = v15[2];
      v194 = v60;
      v61 = *v8;
      v15[2] = *(a2 - 1);
      *v15 = v61;
    }

    else
    {
      v37 = *v15;
      v195 = v15[2];
      v194 = v37;
      v38 = *a1;
      v15[2] = *(a1 + 16);
      *v15 = v38;
      v39 = v194;
      *(a1 + 16) = v195;
      *a1 = v39;
      if ((sub_6F834(a2 - 3, a1) & 0x80) == 0)
      {
        goto LABEL_57;
      }

      v40 = *a1;
      v195 = *(a1 + 16);
      v194 = v40;
      v41 = *v8;
      *(a1 + 16) = *(a2 - 1);
      *a1 = v41;
    }

    v62 = v194;
    *(a2 - 1) = v195;
    *v8 = v62;
LABEL_57:
    --a3;
    if ((a4 & 1) != 0 || (sub_6F834((a1 - 24), a1) & 0x80) != 0)
    {
      v97 = *a1;
      v197 = *(a1 + 16);
      v196 = v97;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v98 = a1;
      do
      {
        v99 = v98;
        v98 += 3;
      }

      while ((sub_6F834(v98, &v196) & 0x80) != 0);
      v100 = a2;
      if (v99 == a1)
      {
        v100 = a2;
        do
        {
          if (v98 >= v100)
          {
            break;
          }

          v100 -= 3;
        }

        while ((sub_6F834(v100, &v196) & 0x80) == 0);
      }

      else
      {
        do
        {
          v100 -= 3;
        }

        while ((sub_6F834(v100, &v196) & 0x80) == 0);
      }

      v10 = v98;
      if (v98 < v100)
      {
        v101 = v100;
        do
        {
          v194 = *v10;
          v102 = v194;
          v195 = v10[2];
          v103 = v195;
          v104 = v101[2];
          *v10 = *v101;
          v10[2] = v104;
          v101[2] = v103;
          *v101 = v102;
          do
          {
            v10 += 3;
          }

          while ((sub_6F834(v10, &v196) & 0x80) != 0);
          do
          {
            v101 -= 3;
          }

          while ((sub_6F834(v101, &v196) & 0x80) == 0);
        }

        while (v10 < v101);
      }

      v105 = v10 - 3;
      if (v10 - 3 == a1)
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*v105);
        }
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v106 = *v105;
        *(a1 + 16) = *(v10 - 1);
        *a1 = v106;
        *(v10 - 1) = 0;
        *(v10 - 24) = 0;
      }

      v107 = v196;
      *(v10 - 1) = v197;
      *v105 = v107;
      if (v98 < v100)
      {
        goto LABEL_82;
      }

      v108 = sub_30A02C(a1, v10 - 3);
      if (sub_30A02C(v10, a2))
      {
        a2 = v10 - 3;
        if (!v108)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v108)
      {
LABEL_82:
        sub_308DB8(a1, v10 - 3, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v109 = *a1;
      v197 = *(a1 + 16);
      v196 = v109;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      if ((sub_6F834(&v196, a2 - 3) & 0x80) != 0)
      {
        v10 = a1;
        do
        {
          v10 += 3;
        }

        while ((sub_6F834(&v196, v10) & 0x80) == 0);
      }

      else
      {
        v110 = (a1 + 24);
        do
        {
          v10 = v110;
          if (v110 >= a2)
          {
            break;
          }

          v111 = sub_6F834(&v196, v110);
          v110 = v10 + 3;
        }

        while ((v111 & 0x80) == 0);
      }

      v112 = a2;
      if (v10 < a2)
      {
        v112 = a2;
        do
        {
          v112 -= 3;
        }

        while ((sub_6F834(&v196, v112) & 0x80) != 0);
      }

      while (v10 < v112)
      {
        v113 = *v10;
        v195 = v10[2];
        v194 = v113;
        v114 = *v112;
        v10[2] = v112[2];
        *v10 = v114;
        v115 = v194;
        v112[2] = v195;
        *v112 = v115;
        do
        {
          v10 += 3;
        }

        while ((sub_6F834(&v196, v10) & 0x80) == 0);
        do
        {
          v112 -= 3;
        }

        while ((sub_6F834(&v196, v112) & 0x80) != 0);
      }

      v116 = v10 - 3;
      if (v10 - 3 == a1)
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*v116);
        }
      }

      else
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v117 = *v116;
        *(a1 + 16) = *(v10 - 1);
        *a1 = v117;
        *(v10 - 1) = 0;
        *(v10 - 24) = 0;
      }

      a4 = 0;
      v118 = v196;
      *(v10 - 1) = v197;
      *v116 = v118;
    }
  }

  if (v12 < 2)
  {
    return;
  }

  if (v12 != 2)
  {
    goto LABEL_9;
  }

  v126 = sub_6F834(a2 - 3, a1);
  if (v126 < 0)
  {
LABEL_181:
    v188 = *a1;
    v195 = *(a1 + 16);
    v194 = v188;
    v189 = *v8;
    *(a1 + 16) = *(a2 - 1);
    *a1 = v189;
    v185 = v194;
    v186 = v195;
    goto LABEL_182;
  }
}

__n128 sub_309E6C(void **a1, void **a2, void **a3, void *a4)
{
  v8 = sub_6F834(a2, a1);
  v9 = sub_6F834(a3, a2);
  if (v8 < 0)
  {
    if (v9 < 0)
    {
      v19 = a1[2];
      v20 = *a1;
      v22 = a3[2];
      *a1 = *a3;
      a1[2] = v22;
    }

    else
    {
      v16 = a1[2];
      v17 = *a1;
      v18 = a2[2];
      *a1 = *a2;
      a1[2] = v18;
      *a2 = v17;
      a2[2] = v16;
      if ((sub_6F834(a3, a2) & 0x80) == 0)
      {
        goto LABEL_10;
      }

      v19 = a2[2];
      v20 = *a2;
      v21 = a3[2];
      *a2 = *a3;
      a2[2] = v21;
    }

    *a3 = v20;
    a3[2] = v19;
    goto LABEL_10;
  }

  if (v9 < 0)
  {
    v10 = a2[2];
    v11 = *a2;
    v12 = a3[2];
    *a2 = *a3;
    a2[2] = v12;
    *a3 = v11;
    a3[2] = v10;
    if ((sub_6F834(a2, a1) & 0x80) != 0)
    {
      v13 = a1[2];
      v14 = *a1;
      v15 = a2[2];
      *a1 = *a2;
      a1[2] = v15;
      *a2 = v14;
      a2[2] = v13;
    }
  }

LABEL_10:
  if ((sub_6F834(a4, a3) & 0x80) != 0)
  {
    v24 = a3[2];
    v25 = *a3;
    v26 = a4[2];
    *a3 = *a4;
    a3[2] = v26;
    *a4 = v25;
    a4[2] = v24;
    if ((sub_6F834(a3, a2) & 0x80) != 0)
    {
      v27 = a2[2];
      v28 = *a2;
      v29 = a3[2];
      *a2 = *a3;
      a2[2] = v29;
      *a3 = v28;
      a3[2] = v27;
      if ((sub_6F834(a2, a1) & 0x80) != 0)
      {
        v30 = a1[2];
        result = *a1;
        v31 = a2[2];
        *a1 = *a2;
        a1[2] = v31;
        *a2 = result;
        a2[2] = v30;
      }
    }
  }

  return result;
}

BOOL sub_30A02C(uint64_t a1, void **a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 3;
        v14 = sub_6F834((a1 + 24), a1);
        v15 = sub_6F834(v5, (a1 + 24));
        if (v14 < 0)
        {
          if (v15 < 0)
          {
LABEL_26:
            v30 = *(a1 + 16);
            v31 = *a1;
            v33 = v5[2];
            *a1 = *v5;
            *(a1 + 16) = v33;
            goto LABEL_27;
          }

          v28 = *(a1 + 16);
          v29 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v29;
          *(a1 + 40) = v28;
          if ((sub_6F834(v5, (a1 + 24)) & 0x80) != 0)
          {
            v30 = *(a1 + 40);
            v31 = *(a1 + 24);
            v32 = v5[2];
            *(a1 + 24) = *v5;
            *(a1 + 40) = v32;
LABEL_27:
            *v5 = v31;
            v5[2] = v30;
          }

          return 1;
        }

        if ((v15 & 0x80000000) == 0)
        {
          return 1;
        }

        v16 = *(a1 + 40);
        v17 = *(a1 + 24);
        v18 = v5[2];
        *(a1 + 24) = *v5;
        *(a1 + 40) = v18;
        *v5 = v17;
        v5[2] = v16;
        break;
      case 4:
        sub_309E6C(a1, (a1 + 24), (a1 + 48), a2 - 3);
        return 1;
      case 5:
        v6 = a2 - 3;
        sub_309E6C(a1, (a1 + 24), (a1 + 48), (a1 + 72));
        if ((sub_6F834(v6, (a1 + 72)) & 0x80) == 0)
        {
          return 1;
        }

        v7 = *(a1 + 88);
        v8 = *(a1 + 72);
        v9 = v6[2];
        *(a1 + 72) = *v6;
        *(a1 + 88) = v9;
        *v6 = v8;
        v6[2] = v7;
        if ((sub_6F834((a1 + 72), (a1 + 48)) & 0x80) == 0)
        {
          return 1;
        }

        v10 = *(a1 + 64);
        v11 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v11;
        *(a1 + 88) = v10;
        if ((sub_6F834((a1 + 48), (a1 + 24)) & 0x80) == 0)
        {
          return 1;
        }

        v12 = *(a1 + 40);
        v13 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v13;
        *(a1 + 64) = v12;
        break;
      default:
        goto LABEL_18;
    }

    if ((sub_6F834((a1 + 24), a1) & 0x80) != 0)
    {
      v19 = *(a1 + 16);
      v20 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v20;
      *(a1 + 40) = v19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 3;
    if ((sub_6F834(a2 - 3, a1) & 0x80) != 0)
    {
      goto LABEL_26;
    }

    return 1;
  }

LABEL_18:
  v21 = (a1 + 48);
  v22 = sub_6F834((a1 + 24), a1);
  v23 = sub_6F834((a1 + 48), (a1 + 24));
  if (v22 < 0)
  {
    if (v23 < 0)
    {
      v36 = *(a1 + 16);
      v37 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v34 = *(a1 + 16);
      v35 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v35;
      *(a1 + 40) = v34;
      if ((sub_6F834((a1 + 48), (a1 + 24)) & 0x80) == 0)
      {
        goto LABEL_33;
      }

      v36 = *(a1 + 40);
      v37 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v37;
    *(a1 + 64) = v36;
  }

  else if (v23 < 0)
  {
    v24 = *(a1 + 40);
    v25 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v25;
    *(a1 + 64) = v24;
    if ((sub_6F834((a1 + 24), a1) & 0x80) != 0)
    {
      v26 = *(a1 + 16);
      v27 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v27;
      *(a1 + 40) = v26;
    }
  }

LABEL_33:
  v38 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if ((sub_6F834(v38, v21) & 0x80) != 0)
    {
      v45 = *v38;
      v46 = v38[2];
      v38[1] = 0;
      v38[2] = 0;
      *v38 = 0;
      v41 = v39;
      while (1)
      {
        v42 = a1 + v41;
        *(v42 + 72) = *(a1 + v41 + 48);
        *(v42 + 88) = *(a1 + v41 + 64);
        *(v42 + 71) = 0;
        *(v42 + 48) = 0;
        if (v41 == -48)
        {
          break;
        }

        v41 -= 24;
        if ((sub_6F834(&v45, (v42 + 24)) & 0x80) == 0)
        {
          v43 = a1 + v41 + 72;
          goto LABEL_41;
        }
      }

      v43 = a1;
LABEL_41:
      *v43 = v45;
      *(v43 + 16) = v46;
      if (++v40 == 8)
      {
        return v38 + 3 == a2;
      }
    }

    v21 = v38;
    v39 += 24;
    v38 += 3;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

__CFString *sub_30A450(uint64_t a1, CFDictionaryRef theDict, __CFString *a3)
{
  memset(&__p, 0, sizeof(__p));
  if (theDict)
  {
    if (CFDictionaryContainsKey(theDict, @"HW type") && CFDictionaryContainsKey(theDict, @"Tuning ID") && CFDictionaryContainsKey(theDict, @"Parameters") && (Value = CFDictionaryGetValue(theDict, @"Parameters"), CFDictionaryContainsKey(Value, @"Registers")) && CFDictionaryContainsKey(Value, @"Oversight") && CFDictionaryContainsKey(Value, @"Filters") && CFDictionaryContainsKey(Value, @"FIR filters"))
    {
      if (sub_4008B0(theDict) != -1)
      {
        v7 = *(a1 + 120);
        *(a1 + 120) = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
        if (v7)
        {
          CFRelease(v7);
        }

        a3 = (&dword_0 + 1);
        goto LABEL_29;
      }

      sub_1D8C58(&__p, "Invalid HW type in tuning data\n", 0x1FuLL);
      v15 = sub_5544(26);
      v16 = *v15;
      if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        v20 = "AncManagerV2.cpp";
        v21 = 1024;
        v22 = 376;
        v23 = 2080;
        v24 = p_p;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
      }

      if (a3)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &__p;
        }

        else
        {
          v11 = __p.__r_.__value_.__r.__words[0];
        }

LABEL_22:
        CFStringAppendCString(a3, v11, 0x8000100u);
LABEL_28:
        a3 = 0;
      }
    }

    else
    {
      sub_1D8C58(&__p, "Invalid ANC tuning data\n", 0x18uLL);
      v8 = sub_5544(26);
      v9 = *v8;
      if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v10 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v10 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        v20 = "AncManagerV2.cpp";
        v21 = 1024;
        v22 = 368;
        v23 = 2080;
        v24 = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
      }

      if (a3)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &__p;
        }

        else
        {
          v11 = __p.__r_.__value_.__r.__words[0];
        }

        goto LABEL_22;
      }
    }
  }

  else
  {
    v12 = sub_5544(26);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "AncManagerV2.cpp";
      v21 = 1024;
      v22 = 362;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d tuningData!=nullptr failed", buf, 0x12u);
    }

    if (a3)
    {
      CFStringAppendFormat(a3, 0, @"tuningData!=nullptr failed\n");
      goto LABEL_28;
    }
  }

LABEL_29:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a3;
}

void sub_30A7D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_30A804(uint64_t a1)
{
  v1 = atomic_load((a1 + 82));
  if (v1)
  {
    v2 = *(a1 + 440);
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_30A84C(uint64_t a1, int a2, __CFString *a3)
{
  if ((atomic_exchange((a1 + 81), a2) & 1) == a2)
  {
    return 1;
  }

  (*(**(a1 + 16) + 40))(*(a1 + 16));
  if (!a2)
  {
    v10 = *(a1 + 72);
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_30A980;
    block[3] = &unk_6C1628;
    block[4] = a1;
    dispatch_sync(v10, block);
    return 1;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = 1;
  v9 = (*(*v6 + 128))(v6, 1, v7);
  if (v9)
  {
    if (a3)
    {
      CFStringAppendFormat(a3, 0, @"%s failed, status = 0x%x\n", "PowerOnANCBlock", v9);
    }

    return 0;
  }

  return v8;
}

uint64_t sub_30A980(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_30A9FC;
  v3[3] = &unk_6C1608;
  v3[4] = v1;
  return sub_138DB0(v3);
}

uint64_t sub_30A9FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = (*(**(v1 + 16) + 128))(*(v1 + 16), 0, *(v1 + 24));
  if (!result)
  {
    atomic_store(0, (v1 + 82));
  }

  return result;
}

void sub_30AA74(uint64_t a1)
{
  sub_30AAAC(a1);

  operator delete();
}

void *sub_30AAAC(uint64_t a1)
{
  *a1 = off_6C14E0;
  v2 = *(a1 + 40);
  if (v2)
  {
    notify_cancel(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 112);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    CFRelease(v5);
  }

  dispatch_release(*(a1 + 72));
  v6 = 312;
  do
  {
    v7 = *(a1 + v6 + 104);
    if (v7)
    {
      *(a1 + v6 + 112) = v7;
      operator delete(v7);
    }

    v6 -= 24;
  }

  while (v6);
  v8 = *(a1 + 96);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return sub_1E89C0(a1);
}

void *sub_30AB68(void *a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = &a2[4 * a3];
    while (1)
    {
      v7 = a1[1];
      v8 = v4;
      if (*a1 != v4)
      {
        v9 = a1[1];
        v10 = v4;
        if (v7)
        {
          do
          {
            v8 = v9;
            v9 = v9[1];
          }

          while (v9);
        }

        else
        {
          do
          {
            v8 = v10[2];
            v11 = *v8 == v10;
            v10 = v8;
          }

          while (v11);
        }

        if ((sub_6F834(v8 + 4, v5) & 0x80) == 0)
        {
          break;
        }
      }

      if (!v7 || !v8[1])
      {
        goto LABEL_18;
      }

LABEL_19:
      v5 += 4;
      if (v5 == v6)
      {
        return a1;
      }
    }

    for (; v7; v7 = v7[1])
    {
      while (1)
      {
        v12 = v7;
        if ((sub_6F834(v5, v7 + 4) & 0x80) == 0)
        {
          break;
        }

        v7 = *v7;
        if (!*v12)
        {
          goto LABEL_18;
        }
      }

      if ((sub_6F834(v7 + 4, v5) & 0x80) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_18:
    operator new();
  }

  return a1;
}

void sub_30AD18(_Unwind_Exception *a1)
{
  sub_1F0870(0, v1);
  sub_98A08(*v2);
  _Unwind_Resume(a1);
}

void sub_30AD94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_30ADB0(void *result, unint64_t *a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a3)
  {
    v3 = a2;
    v4 = 0;
    v5 = result + 1;
    while (1)
    {
      v6 = result + 1;
      if (v5 == result + 1)
      {
        goto LABEL_9;
      }

      v7 = v4;
      v8 = result + 1;
      if (v4)
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *v3;
      if (v6[4] < *v3)
      {
LABEL_9:
        v11 = v4 ? v6 + 1 : result + 1;
      }

      else
      {
        v11 = result + 1;
        if (v4)
        {
          v11 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v4;
              v13 = v4[4];
              if (v10 >= v13)
              {
                break;
              }

              v4 = *v12;
              v11 = v12;
              if (!*v12)
              {
                goto LABEL_13;
              }
            }

            if (v13 >= v10)
            {
              break;
            }

            v11 = v12 + 1;
            v4 = v12[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v11)
      {
LABEL_13:
        operator new();
      }

      v3 += 4;
      if (v3 == &a2[4 * a3])
      {
        break;
      }

      v5 = *result;
      v4 = result[1];
    }
  }

  return result;
}

void sub_30AF74(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    v2[6] = v5;
    operator delete(v5);
  }

  sub_30AFAC(0, v2);
  sub_7624C(*v1);
  _Unwind_Resume(a1);
}

void sub_30AFAC(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_30B008(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_189A00();
}

void sub_30B0D4()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  operator delete();
}

void sub_30B0F8(uint64_t a1, int a2)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = -1;
  *(a1 + 16) = 0;
  *(a1 + 32) = 256;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *a1 = off_6C14E0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 1;
  operator new();
}

void sub_30B3BC(_Unwind_Exception *a1)
{
  v3 = v1 + 53;
  v4 = -312;
  while (1)
  {
    v5 = *(v3 - 1);
    if (v5)
    {
      *v3 = v5;
      operator delete(v5);
    }

    v3 -= 3;
    v4 += 24;
    if (!v4)
    {
      v6 = v1[12];
      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      sub_1E89C0(v1);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_30B44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_129D90(a1 + 24, a2);
  *(a1 + 64) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  sub_16AA2C(a1 + 120, @"Sidetone");
  *(a1 + 120) = off_6B8F28;
  *(a1 + 168) = a1;
  strcpy(buf, "xfuaedislppa");
  buf[13] = 0;
  *v46 = 0;
  *&v46[2] = a1;
  sub_37E5B8((a1 + 120), 0, buf);
  v5 = *(a1 + 136);
  if (AUPBRegisterAU())
  {
    v7 = *(a1 + 144);
    v6 = *(a1 + 152);
    if (v6 != v7)
    {
      v8 = v6 - (v7 + 24);
      if (v6 != v7 + 24)
      {
        memmove(*(a1 + 144), (v7 + 24), v6 - (v7 + 24));
      }

      *(a1 + 152) = v7 + v8;
    }
  }

  sub_5659C(&v43, a1, "", 84);
  v9 = sub_5544(18);
  v10 = *v9;
  if (*v9)
  {
    v11 = os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT);
    v12 = v43;
    if (v11)
    {
      (*(*v43 + 128))(__p, v43);
      v13 = v42 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "SidetoneManager.cpp";
      *&buf[12] = 1024;
      *v46 = 86;
      *&v46[4] = 2080;
      *&v46[6] = v13;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sidetone device is %s", buf, 0x1Cu);
      if (v42 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v12 = v43;
  }

  v39 = 0x7074727573716465;
  v40 = 0;
  if ((*(*v12 + 16))(v12, &v39))
  {
    __p[0] = 0;
    v38 = 8;
    (*(*v12 + 40))(v12, &v39, 0, 0, &v38, __p);
    *buf = __p[0];
    *&buf[8] = 1;
    sub_2E7334(__p[0], @"MaxNumberFilters", (a1 + 88));
    if (*buf)
    {
      Value = CFDictionaryGetValue(*buf, @"SampleRate");
      v15 = Value;
      if (Value)
      {
        v16 = CFGetTypeID(Value);
        if (v16 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v15, kCFNumberFloat64Type, (a1 + 16));
        }
      }
    }

    v17 = *(a1 + 88);
    v18 = *(a1 + 64);
    v19 = *(a1 + 72);
    v20 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - v18) >> 2);
    v21 = v17 - v20;
    if (v17 <= v20)
    {
      if (v17 >= v20)
      {
LABEL_41:
        v29 = *(a1 + 88);
        if (v29)
        {
          v30 = (*(a1 + 64) + 16);
          v31 = *(a1 + 88);
          do
          {
            *v30 = 1056964608;
            *(v30 - 2) = 1;
            *(v30 - 1) = 1148846080;
            v30 += 5;
            --v31;
          }

          while (v31);
        }

        v32 = (48 * v29) | 8u;
        *(a1 + 112) = v32;
        v33 = *(a1 + 104);
        if (v33)
        {
          free(v33);
          *(a1 + 104) = 0;
        }

        v34 = malloc_type_malloc(56 * v32, 0x100004028543706uLL);
        if (!v34)
        {
          exception = __cxa_allocate_exception(8uLL);
          v37 = std::bad_alloc::bad_alloc(exception);
        }

        *(a1 + 104) = v34;
        sub_A1D30(buf);
        goto LABEL_48;
      }

      v28 = v18 + 20 * v17;
    }

    else
    {
      v22 = *(a1 + 80);
      if (0xCCCCCCCCCCCCCCCDLL * ((v22 - v19) >> 2) < v21)
      {
        v23 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - v18) >> 2);
        if (2 * v23 > v17)
        {
          v17 = 2 * v23;
        }

        if (v23 >= 0x666666666666666)
        {
          v24 = 0xCCCCCCCCCCCCCCCLL;
        }

        else
        {
          v24 = v17;
        }

        if (v24 <= 0xCCCCCCCCCCCCCCCLL)
        {
          operator new();
        }

        sub_6ACD8();
      }

      bzero(*(a1 + 72), 20 * ((20 * v21 - 20) / 0x14) + 20);
      v28 = v19 + 20 * ((20 * v21 - 20) / 0x14) + 20;
    }

    *(a1 + 72) = v28;
    goto LABEL_41;
  }

  v25 = sub_5544(25);
  v26 = *v25;
  if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
  {
    (*(*v12 + 128))(__p, v12);
    v27 = v42 >= 0 ? __p : __p[0];
    *buf = 136315650;
    *&buf[4] = "SidetoneManager.cpp";
    *&buf[12] = 1024;
    *v46 = 113;
    *&v46[4] = 2080;
    *&v46[6] = v27;
    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sidetone device (uid: %s) does not support kAudioDevicePropertySidetoneEQDescriptor", buf, 0x1Cu);
    if (v42 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_48:
  *(a1 + 176) = -1;
  *(a1 + 184) = @"Untitled";
  CFRetain(@"Untitled");
  if (v44)
  {
    sub_1A8C0(v44);
  }

  return a1;
}

void sub_30BA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  sub_20D208(v17);
  v20 = v16[13];
  if (v20)
  {
    free(v20);
    v16[13] = 0;
  }

  v21 = *v18;
  if (*v18)
  {
    v16[9] = v21;
    operator delete(v21);
  }

  sub_12A2C4((v16 + 3));
  v22 = v16[1];
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  _Unwind_Resume(a1);
}

void *sub_30BAFC(void *a1)
{
  v2 = a1[23];
  if (v2)
  {
    CFRelease(v2);
  }

  sub_20D208((a1 + 15));
  v3 = a1[13];
  if (v3)
  {
    free(v3);
    a1[13] = 0;
  }

  v4 = a1[8];
  if (v4)
  {
    a1[9] = v4;
    operator delete(v4);
  }

  sub_12A2C4((a1 + 3));
  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_30BB6C(uint64_t a1, double a2)
{
  if (*(a1 + 48) && *(a1 + 88))
  {
    v4 = a2;
    if (!sub_130F70((a1 + 24), a2))
    {
      v5 = *(a1 + 40);
      v6 = 0.0;
      if (v5)
      {
        while (1)
        {
          v7 = *(v5 + 4);
          if (v7 > a2)
          {
            break;
          }

          v6 = v7;
          v5 = *v5;
          if (!v5)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        v7 = 0;
      }

      if (v6 == 0.0)
      {
        v4 = v7;
      }

      else
      {
        v4 = v6;
      }
    }

    v8 = sub_130F70((a1 + 24), v4)[3];
    if (*(v8 + 40) != 5)
    {
      sub_20B4EC();
    }

    if (sub_30BDE4(a1, *v8))
    {
      v9 = sub_5544(25);
      v10 = *v9;
      if (*v9)
      {
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "SidetoneManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 160;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Restore State Failed", buf, 0x12u);
        }
      }
    }
  }

  else
  {
    v16 = 4;
    v17 = 0;
    v14 = 0x707472755354656ELL;
    v15 = 0;
    v12 = 0x7074727561736573;
    v13 = 0;
    sub_5659C(buf, a1, "", 173);
    v11 = *buf;
    if ((*(**buf + 16))(*buf, &v14) && ((*(*v11 + 40))(v11, &v14, 0, 0, &v16, &v17), v17) || (*(*v11 + 16))(v11, &v12))
    {
      sub_30C0CC(a1);
    }

    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }
  }
}

uint64_t sub_30BDE4(uint64_t a1, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 4294956445;
  }

  theDict = cf;
  v25 = 0;
  if (cf && (v5 = CFDictionaryGetValue(cf, @"data"), (v6 = v5) != 0) && (v7 = CFGetTypeID(v5), v7 == CFDataGetTypeID()))
  {
    BytePtr = CFDataGetBytePtr(v6);
    v9 = *(BytePtr + 2);
    if (v9)
    {
      v10 = bswap32(v9);
      v11 = (BytePtr + 12);
      v12 = 4294956418;
      do
      {
        v13 = COERCE_FLOAT(bswap32(v11[1]));
        if (*v11)
        {
          v14 = bswap32(*v11);
          if (v14 >= 0x3E8)
          {
            v15 = v14 % 0x3E8;
            if (v14 % 0x3E8 >= *(a1 + 88))
            {
              v12 = 4294956418;
              goto LABEL_37;
            }

            v14 = 1000 * (v14 / 0x3E8);
          }

          else
          {
            v15 = 0;
          }

          if (v14 <= 2999)
          {
            if (v14 == 1000)
            {
              *(*(a1 + 64) + 20 * v15) = v13;
            }

            else
            {
              if (v14 != 2000)
              {
                goto LABEL_37;
              }

              *(*(a1 + 64) + 20 * v15 + 4) = v13;
            }
          }

          else
          {
            switch(v14)
            {
              case 0xBB8u:
                *(*(a1 + 64) + 20 * v15 + 8) = v13;
                break;
              case 0xFA0u:
                *(*(a1 + 64) + 20 * v15 + 12) = v13;
                break;
              case 0x1388u:
                *(*(a1 + 64) + 20 * v15 + 16) = v13;
                break;
              default:
                goto LABEL_37;
            }
          }
        }

        else
        {
          *(a1 + 92) = v13;
        }

        v11 += 2;
        --v10;
      }

      while (v10);
    }

    sub_30C0CC(a1);
    v16 = *(a1 + 184);
    if (v16)
    {
      CFRelease(v16);
    }

    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"name");
      v18 = Value;
      v19 = @"Untitled";
      if (Value)
      {
        v20 = CFGetTypeID(Value);
        if (v20 == CFStringGetTypeID())
        {
          v19 = v18;
        }
      }
    }

    else
    {
      v19 = @"Untitled";
    }

    *(a1 + 184) = v19;
    *(a1 + 176) = -1;
    CFRetain(v19);
    v12 = 0;
  }

  else
  {
    v21 = sub_5544(25);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "SidetoneManager.cpp";
      v28 = 1024;
      v29 = 1021;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d No Data read in Restore State call", buf, 0x12u);
    }

    v12 = 4294956425;
  }

LABEL_37:
  sub_A1D30(&theDict);
  return v12;
}