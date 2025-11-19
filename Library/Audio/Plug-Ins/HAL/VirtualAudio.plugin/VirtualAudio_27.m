void sub_234C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_234DAC(uint64_t a1, _DWORD *a2, int a3, uint64_t a4)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    v10 = sub_5544(14);
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v14 = *a2;
      v16 = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v12 = 2003332927;
LABEL_19:
    exception[2] = v12;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v13 = sub_5544(14);
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v15 = *a2;
      v17 = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v12 = 561211770;
    goto LABEL_19;
  }

  v8 = *a2;
  if (*a2 == 1936028271)
  {
    return 8;
  }

  if (v8 == 1936025956)
  {
    return 4;
  }

  if (v8 == 1936024431)
  {
    return 8;
  }

  return sub_E1CEC(a1, a2);
}

uint64_t sub_2350E0(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 == 1936028271 || v2 == 1936025956)
  {
    return 0;
  }

  if (v2 == 1936024431)
  {
    return 1;
  }

  return sub_201D4(a1, a2);
}

BOOL sub_235124(uint64_t a1, int *a2)
{
  v3 = *a2;
  result = 1;
  if (*a2 <= 1936024430)
  {
    v5 = v3 == 1818850145;
    v6 = 1818850162;
  }

  else
  {
    v5 = v3 == 1936024431 || v3 == 1936025956;
    v6 = 1936028271;
  }

  if (!v5 && v3 != v6)
  {
    return sub_1537C(a1, a2) != 0;
  }

  return result;
}

void sub_2351C0(void *a1)
{
  *a1 = off_6BA390;
  sub_A5114((a1 + 11));
  sub_13E5EC(a1);

  operator delete();
}

uint64_t sub_235228(void *a1)
{
  *a1 = off_6BA390;
  sub_A5114((a1 + 11));

  return sub_13E5EC(a1);
}

double sub_23527C(double a1, double a2)
{
  v2 = 44100.0;
  if (a1 > 44100.0 || a2 < 44100.0)
  {
    v2 = 48000.0;
    if (a1 > 48000.0 || a2 < 48000.0)
    {
      v2 = 96000.0;
      if (a1 > 96000.0 || a2 < 96000.0)
      {
        v2 = 88200.0;
        if (a1 > 88200.0 || a2 < 88200.0)
        {
          v2 = 64000.0;
          if (a1 > 64000.0 || a2 < 64000.0)
          {
            v2 = 32000.0;
            if (a1 > 32000.0 || a2 < 32000.0)
            {
              v2 = 24000.0;
              if (a1 > 24000.0 || a2 < 24000.0)
              {
                v2 = 22050.0;
                if (a1 > 22050.0 || a2 < 22050.0)
                {
                  v2 = 16000.0;
                  if (a1 > 16000.0 || a2 < 16000.0)
                  {
                    v2 = 12000.0;
                    if (a1 > 12000.0 || a2 < 12000.0)
                    {
                      v2 = 11025.0;
                      if (a1 > 11025.0 || a2 < 11025.0)
                      {
                        v2 = 8000.0;
                        if (a2 < 8000.0 || a1 > 8000.0)
                        {
                          return a2;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void *sub_2353CC(void *result, unint64_t a2)
{
  v2 = result;
  v4 = *result;
  v3 = result[1];
  v5 = (v3 - *result) >> 7;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      result[1] = v4 + (a2 << 7);
    }
  }

  else
  {
    v6 = result[2];
    if (a2 - v5 > (v6 - v3) >> 7)
    {
      if (!(a2 >> 57))
      {
        v7 = v6 - v4;
        v8 = (v6 - v4) >> 6;
        if (v8 <= a2)
        {
          v8 = a2;
        }

        if (v7 >= 0x7FFFFFFFFFFFFF80)
        {
          v9 = 0x1FFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        if (!(v9 >> 57))
        {
          operator new();
        }

        sub_6ACD8();
      }

      sub_189A00();
    }

    v10 = v3 + ((a2 - v5) << 7);
    v11 = (a2 << 7) - (v5 << 7);
    do
    {
      result = sub_1D1C88(v3);
      v3 += 128;
      v11 -= 128;
    }

    while (v11);
    v2[1] = v10;
  }

  return result;
}

void sub_235534(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v4 = *(a2 + 4);
  v5 = *a2;
  v6 = *(a2 + 6);
  *(a1 + 72) = *(a2 + 2);
  *(a1 + 56) = v5;
  *(a1 + 80) = v6;
  *(a1 + 84) = 1;
  *(a1 + 88) = v4;
  v7 = *a3;
  v8 = a3[1];
  *(a1 + 128) = *(a3 + 4);
  *(a1 + 96) = v7;
  *(a1 + 112) = v8;
  if (*(a1 + 48))
  {
    sub_2353CC(a1, 1uLL);
    v9 = *a1;
    v10 = *(a1 + 8);
    if (*a1 != v10)
    {
      v11 = *(a1 + 56);
      v12 = v11 * 2.5;
      if (v11 * 2.5 < 2.22507386e-308)
      {
        v12 = 2.22507386e-308;
      }

      v13 = -6.90775528 / v12;
      v14 = exp(-6.90775528 / v12);
      if (v13 >= -708.4)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0.0;
      }

      v16 = v11 * 1.24;
      if (v11 * 1.24 < 2.22507386e-308)
      {
        v16 = 2.22507386e-308;
      }

      v17 = -6.90775528 / v16;
      v18 = exp(-6.90775528 / v16);
      if (v17 < -708.4)
      {
        v18 = 0.0;
      }

      do
      {
        v9[1] = v11;
        v9[2] = v15;
        v9[4] = v18;
        v9 += 16;
      }

      while (v9 != v10);
    }
  }

  if (*(a1 + 52))
  {
    sub_2353CC((a1 + 24), *(a1 + 124));
    v19 = *(a1 + 24);
    v20 = *(a1 + 32);
    if (v19 != v20)
    {
      v21 = *(a1 + 96);
      v22 = v21 * 2.5;
      if (v21 * 2.5 < 2.22507386e-308)
      {
        v22 = 2.22507386e-308;
      }

      v23 = -6.90775528 / v22;
      v24 = exp(-6.90775528 / v22);
      if (v23 >= -708.4)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0.0;
      }

      v26 = v21 * 1.24;
      if (v21 * 1.24 < 2.22507386e-308)
      {
        v26 = 2.22507386e-308;
      }

      v27 = -6.90775528 / v26;
      v28 = exp(-6.90775528 / v26);
      if (v27 < -708.4)
      {
        v28 = 0.0;
      }

      do
      {
        v19[1] = v21;
        v19[2] = v25;
        v19[4] = v28;
        v19 += 16;
      }

      while (v19 != v20);
    }
  }
}

void sub_2356F0(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  operator delete();
}

void *sub_235734@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  if (a2 == 1886216809)
  {
    v3 = *(*(a1 + 544) + 32);
    if (!v3)
    {
      v11 = *sub_5544(14);
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v14 = 136315394;
          v15 = "Device_DigitalMic_Aspen.cpp";
          v16 = 1024;
          v17 = 218;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [mTransducerDatabase.mBuiltInMicDefaultSubPort is NULL]: No default sub-port specified for built-in mic.", &v14, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "No default sub-port specified for built-in mic.");
    }

    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    if ((v5 - v4) >= 0x41 && v4 != v5)
    {
      v10 = v4;
      while (v10[8] != 1869442665)
      {
        v10 += 16;
        if (v10 == v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v10;
    }

LABEL_8:
    v14 = *v4;
    return sub_1E54B0(a3, &v14, 1);
  }

  else
  {
    v9 = *(a1 + 536);

    return sub_40AC30(a3, v9, a2);
  }
}

uint64_t sub_235900(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886216809 && a2 != 1752197486)
  {
    v4 = sub_5544(18);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v6 = v12 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v14 = "Device_DigitalMic_Aspen.cpp";
      v15 = 1024;
      v16 = 201;
      v17 = 2080;
      v18 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7)
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "Device_DigitalMic_Aspen.cpp";
        v15 = 1024;
        v16 = 202;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_235AE0(uint64_t a1)
{
  v2 = sub_5544(18);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "Device_DigitalMic_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 154;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d initializing Device_HAL_Common", buf, 0x12u);
  }

  sub_4ADCC0(a1);
  v4 = sub_5544(18);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "Device_DigitalMic_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 158;
    v11 = 1024;
    LODWORD(v12) = 1;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d initialized Device_HAL_Common: %u", buf, 0x18u);
  }

  v6 = sub_5544(18);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "Device_DigitalMic_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 162;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating controls and ports", buf, 0x12u);
  }

  v8 = *(a1 + 88);
  v9[0] = *(a1 + 80);
  v9[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_235FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27)
{
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_236054(uint64_t a1, __int128 *a2)
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

void sub_2360A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_236944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  __cxa_free_exception(v30);
  *(v31 - 128) = v29;
  sub_72C14((v31 - 128));
  sub_24EBDC(a13);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v28);
  operator delete(v33);
  _Unwind_Resume(a1);
}

void sub_236A3C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C1FA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_236AD8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_236B4C(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v12 = sub_5544(14);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v17 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v14 = 2003332927;
LABEL_22:
    exception[2] = v14;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v15 = sub_5544(14);
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v18 = *&a2->mSelector;
      v21 = a2->mElement;
      sub_22CE0(__p);
    }

    goto LABEL_21;
  }

  if (!a6)
  {
    v16 = sub_5544(14);
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v19 = *&a2->mSelector;
      v22 = a2->mElement;
      sub_22CE0(__p);
    }

LABEL_21:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v14 = 561211770;
    goto LABEL_22;
  }

  if (a2->mSelector == 1668049764)
  {

    sub_168034(a1, a5, a6);
  }

  else
  {

    sub_5C0D8(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_236F48(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v9 = sub_5544(14);
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v11 = 2003332927;
LABEL_16:
    exception[2] = v11;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v12 = sub_5544(14);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v14 = *&a2->mSelector;
      v16 = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v11 = 561211770;
    goto LABEL_16;
  }

  if (a2->mSelector == 1668049764)
  {
    return 4;
  }

  return sub_5BD20(a1, a2, a3, a4);
}

BOOL sub_237274(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  if (a2->mSelector == 1668049764)
  {
    return 1;
  }

  sub_4DFC0(a1);
  return AudioObjectHasProperty(*(a1 + 268), a2) != 0;
}

void sub_2372D0(void *a1)
{
  sub_237308(a1);

  operator delete();
}

uint64_t sub_237308(void *a1)
{
  *a1 = off_6BA418;
  v2 = a1[67];
  a1[67] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_4B2820(a1);
}

void sub_23738C(uint64_t a1, UInt32 a2, __int128 *a3)
{
  *sub_4B1A68(a1, a2, a3, a3, 0) = off_6BA418;
  v3 = v4;
  v4[0] = 0;
  v5[0] = 0;
  v5[1] = 0;
  v4[1] = 0;
  v4[2] = v5;
  sub_407194(&v3, 0x706D6269u, 1768778083);
  sub_407194(&v3, 0x706D6269u, 1768778033);
  sub_40736C(&v3, 0x696D6963u, 1886216809);
  sub_40736C(&v3, 0x696D6931u, 1886216809);
  sub_40736C(&v3, 0x736D6963u, 1886216809);
  sub_40736C(&v3, 0x696D6932u, 1886216809);
  sub_40736C(&v3, 0x6C6D6963u, 1886216809);
  sub_40736C(&v3, 0x666D6963u, 1886216809);
  sub_40736C(&v3, 0x6265616Du, 1886216809);
  operator new();
}

void sub_2375B8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 536);
  *(v1 + 536) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_4B2820(v1);
  _Unwind_Resume(a1);
}

std::string *sub_23763C(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "[ ", 2uLL);
  std::string::append(a1, "Volume Properties: ", 0x13uLL);
  sub_15D0C0(&__p, a2 + 8);
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

  return std::string::append(a1, " ]", 2uLL);
}

void sub_2376F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_237728@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a2, "[ ", 2uLL);
  sub_23763C(&__p, a1);
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

  std::string::append(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, "; DSP ChainConfig: ", 0x13uLL);
  if (*(a1 + 96) == 1)
  {
    sub_3F9E24(&__p, (a1 + 72));
  }

  else
  {
    sub_53E8(&__p, "no value assigned");
  }

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

  std::string::append(a2, v6, v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return std::string::append(a2, " ]", 2uLL);
}

void sub_237840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_237880(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      *(a1 + 80) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

uint64_t *sub_2378C0(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  while (1)
  {
    v3 = *v3;
    result = (v3 == 0);
    if (!v3)
    {
      break;
    }

    v5 = *(v3 + 4);
    result = sub_130F70(a2, v5);
    if (!result)
    {
      break;
    }

    if (v5 != *(result + 4) || v3[3] != result[3])
    {
      return 0;
    }
  }

  return result;
}

std::string *sub_237948@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a2, "[ ", 2uLL);
  sub_23763C(&__p, a1);
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

  std::string::append(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, "; ", 2uLL);
  if (*(a1 + 96) == 1)
  {
    sub_3F9E24(&__p, (a1 + 72));
  }

  else
  {
    sub_53E8(&__p, "no value assigned");
  }

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

  std::string::append(a2, v6, v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, "; ", 2uLL);
  return std::string::append(a2, " ]", 2uLL);
}

void sub_237A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_237AB8(void *a1)
{
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *sub_237B28(void *a1)
{
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_237B98(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[11];
    __p[11] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = __p[8];
    if (v4)
    {
      __p[9] = v4;
      operator delete(v4);
    }

    v5 = __p[6];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

std::string *sub_237C30(std::string *a1, unsigned __int8 *a2)
{
  sub_53E8(a1, "[ Connection Snapshot:");
  memset(&v43, 0, sizeof(v43));
  std::string::append(&v43, "{ ", 2uLL);
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v43.__r_.__value_.__l.__size_;
  }

  v4 = *(a2 + 1);
  v5 = a2 + 16;
  if (v4 != a2 + 16)
  {
    do
    {
      v6 = *(v4 + 8);
      v7 = size;
      if (v6)
      {
        v7 = SHIBYTE(v43.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v7 = v43.__r_.__value_.__l.__size_;
        }
      }

      v8 = *(v4 + 1);
      v9 = v4;
      if (v8)
      {
        do
        {
          v10 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v10 = *(v9 + 2);
          v11 = *v10 == v9;
          v9 = v10;
        }

        while (!v11);
      }

      v12 = "????";
      if (v6 <= 2)
      {
        v12 = off_6BA658[v6];
      }

      sub_53E8(&v45, v12);
      v13 = std::string::insert(&v45, 0, "[ Port Type: ", 0xDuLL);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v46.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v46.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      v15 = std::string::append(&v46, "; ", 2uLL);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v47.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v47.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      memset(&v44, 0, sizeof(v44));
      std::string::append(&v44, "[ Port: ", 8uLL);
      sub_88A00(&v51, v4 + 5, "", 339);
      sub_23148(&v53, v51 + 2);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v53;
      }

      else
      {
        v17 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v18 = v53.__r_.__value_.__l.__size_;
      }

      std::string::append(&v44, v17, v18);
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (v52)
      {
        sub_1A8C0(v52);
      }

      std::string::append(&v44, "; SubPorts: ", 0xCuLL);
      sub_379AB0(&v53, v4 + 8);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v53;
      }

      else
      {
        v19 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = v53.__r_.__value_.__l.__size_;
      }

      std::string::append(&v44, v19, v20);
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      std::string::append(&v44, "; Properties: ", 0xEuLL);
      (*(**(v4 + 11) + 16))(&v53);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v53;
      }

      else
      {
        v21 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v22 = v53.__r_.__value_.__l.__size_;
      }

      std::string::append(&v44, v21, v22);
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      std::string::append(&v44, "; Enable reason: ", 0x11uLL);
      sub_22170(&v53, *(v4 + 24));
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v53;
      }

      else
      {
        v23 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = v53.__r_.__value_.__l.__size_;
      }

      std::string::append(&v44, v23, v24);
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      std::string::append(&v44, "; BuiltInMicThroughAOP: ", 0x18uLL);
      if (v4[100])
      {
        v25 = "yes";
      }

      else
      {
        v25 = "no";
      }

      if (v4[100])
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      std::string::append(&v44, v25, v26);
      std::string::append(&v44, " ]", 2uLL);
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v44;
      }

      else
      {
        v27 = v44.__r_.__value_.__r.__words[0];
      }

      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v28 = v44.__r_.__value_.__l.__size_;
      }

      v29 = std::string::append(&v47, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v48.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v48.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      if (v10 == v5)
      {
        v31 = " ]";
      }

      else
      {
        v31 = " ]; ";
      }

      if (v10 == v5)
      {
        v32 = 2;
      }

      else
      {
        v32 = 4;
      }

      v33 = std::string::append(&v48, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v50 = v33->__r_.__value_.__r.__words[2];
      v49 = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      if (v50 >= 0)
      {
        v35 = &v49;
      }

      else
      {
        v35 = v49;
      }

      if (v50 >= 0)
      {
        v36 = HIBYTE(v50);
      }

      else
      {
        v36 = *(&v49 + 1);
      }

      std::string::insert(&v43, v7, v35, v36);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(v49);
      }

      v4 = v10;
    }

    while (v10 != v5);
  }

  std::string::append(&v43, " }", 2uLL);
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v43;
  }

  else
  {
    v37 = v43.__r_.__value_.__r.__words[0];
  }

  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v43.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v37, v38);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "; Optional: ", 0xCuLL);
  std::to_string(&v53, *a2);
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v53;
  }

  else
  {
    v39 = v53.__r_.__value_.__r.__words[0];
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v40 = v53.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v39, v40);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  return std::string::append(a1, " ]", 2uLL);
}

void sub_238140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (*(v49 - 97) < 0)
  {
    operator delete(*(v49 - 120));
  }

  if (*(a11 + 23) < 0)
  {
    operator delete(*a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_238290(uint64_t a1)
{
  sub_4B0F4(*(a1 + 32));
  sub_4B0F4(*(a1 + 8));
  return a1;
}

std::string *sub_2382C4(std::string *a1, void *a2, void *a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      v7 = a2[5];
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          v10 = a2[4];
          if (v10)
          {
            sub_23148(__p, v10 + 2);
            sub_1A8C0(v9);
            goto LABEL_9;
          }

          sub_1A8C0(v8);
        }
      }

      sub_53E8(__p, "expired");
LABEL_9:
      if ((v17 & 0x80u) == 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if ((v17 & 0x80u) == 0)
      {
        v12 = v17;
      }

      else
      {
        v12 = __p[1];
      }

      std::string::append(a1, v11, v12);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v13 = a2[1];
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
          v14 = a2[2];
          v15 = *v14 == a2;
          a2 = v14;
        }

        while (!v15);
      }

      if (v14 == a3)
      {
        return std::string::append(a1, " }", 2uLL);
      }

      std::string::append(a1, ", ", 2uLL);
      a2 = v14;
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_238418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_238464(std::string *a1, uint64_t a2)
{
  sub_53E8(a1, "[ ");
  sub_68108(&__p, a2);
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

  std::string::append(a1, ";", 1uLL);
  v6 = (a2 + 8);
  memset(&v23, 0, sizeof(v23));
  v7 = a2 + 8;
  while (1)
  {
    v7 = *(v7 + 8);
    if (v7 == v6)
    {
      break;
    }

    std::string::append(&v23, "{ ", 2uLL);
    sub_237C30(&__p, (v7 + 16));
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

    std::string::append(&v23, v8, v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v7 == *v6)
    {
      v10 = " }";
    }

    else
    {
      v10 = " },";
    }

    if (v7 == *v6)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    std::string::append(&v23, v10, v11);
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v23;
  }

  else
  {
    v12 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v23.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v12, v13);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "; Source Physical Devices: ", 0x1BuLL);
  sub_2382C4(&__p, *(a2 + 32), (a2 + 40));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "; Destination Physical Devices: ", 0x20uLL);
  sub_2382C4(&__p, *(a2 + 56), (a2 + 64));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v16, v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 112) == 1)
  {
    std::operator+<char>();
  }

  else
  {
    sub_53E8(&__p, "");
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v18, v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "; Mode: ", 8uLL);
  sub_22170(&__p, *(a2 + 120));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v20, v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return std::string::append(a1, " ]", 2uLL);
}

void sub_238768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2387F4(uint64_t a1)
{
  sub_C31F4(*(a1 + 16));
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

    sub_C31F4(v2);
  }

  return a1;
}

std::string *sub_238844(std::string *a1, unsigned int *a2, unsigned int *a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      sub_68108(&__p, a2 + 7);
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

      v9 = *(a2 + 1);
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
          v10 = *(a2 + 2);
          v11 = *v10 == a2;
          a2 = v10;
        }

        while (!v11);
      }

      if (v10 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
      a2 = v10;
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_23894C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_238970(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x238958);
}

std::string *sub_238988(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  for (i = *(a2 + 8); i != a2; i = v5)
  {
    v5 = *(i + 8);
    std::string::append(a1, "[ ", 2uLL);
    sub_238464(&__p, i + 16);
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

    if (v5 == a2)
    {
      v8 = " ]";
    }

    else
    {
      v8 = " ],";
    }

    if (v5 == a2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    std::string::append(a1, v8, v9);
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_238A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_238AD8(void *a1, uint64_t a2, std::__shared_weak_count *this)
{
  v5 = a1[1];
  if (this)
  {
    atomic_fetch_add_explicit(&this->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5 != a1)
  {
    while (1)
    {
      v6 = v5[4];
      if (this)
      {
        atomic_fetch_add_explicit(&this->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (v6 != v5 + 3)
      {
        break;
      }

      v12 = 0;
LABEL_36:
      if (this)
      {
        std::__shared_weak_count::__release_weak(this);
      }

      if (!v12)
      {
        v5 = v5[1];
        if (v5 != a1)
        {
          continue;
        }
      }

      if (this)
      {
        goto LABEL_41;
      }

      return v12;
    }

    while (1)
    {
      v7 = v6[3];
      if (this)
      {
        atomic_fetch_add_explicit(&this->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (v7 != v6 + 4)
      {
        break;
      }

      v12 = 0;
      if (this)
      {
LABEL_29:
        std::__shared_weak_count::__release_weak(this);
      }

LABEL_30:
      if (!v12)
      {
        v6 = v6[1];
        if (v6 != v5 + 3)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

    while (1)
    {
      if (this)
      {
        v8 = std::__shared_weak_count::lock(this);
        v9 = v8 ? a2 : 0;
      }

      else
      {
        v9 = 0;
        v8 = 0;
      }

      v10 = v7[6];
      if (!v10)
      {
        break;
      }

      v11 = std::__shared_weak_count::lock(v10);
      if (!v11)
      {
        break;
      }

      v12 = v9 == v7[5];
      sub_1A8C0(v11);
      if (v8)
      {
        goto LABEL_20;
      }

LABEL_21:
      if (!v12)
      {
        v13 = v7[1];
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
            v14 = v7[2];
            v15 = *v14 == v7;
            v7 = v14;
          }

          while (!v15);
        }

        v7 = v14;
        if (v14 != v6 + 4)
        {
          continue;
        }
      }

      if (this)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    v12 = v9 == 0;
    if (!v8)
    {
      goto LABEL_21;
    }

LABEL_20:
    sub_1A8C0(v8);
    goto LABEL_21;
  }

  v12 = 0;
  if (this)
  {
LABEL_41:
    std::__shared_weak_count::__release_weak(this);
  }

  return v12;
}

void sub_238C8C(uint64_t a1, double *a2)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v4 = *(a1 + 112);
    v5 = (*(*v2 + 120))(*(a1 + 120), buf);
    if (!v5)
    {
      if (!*(v4 + 432) || *buf == *a2)
      {
        (*(**(v4 + 872) + 552))(*(v4 + 872), a2, v2);
        sub_222268(v4, a2, v2);
      }

      v12 = sub_5544(14);
      v13 = *v12;
      if (*v12)
      {
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          v15 = 136315394;
          v16 = "VirtualAudio_Device.cpp";
          v17 = 1024;
          v18 = 1567;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Sample rate changes are currently blocked by policy.", &v15, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 1852797029;
    }

    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "VirtualAudio_Device.cpp";
      v17 = 1024;
      v18 = 1562;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error getting the current hardware stream format", &v15, 0x12u);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    *v11 = &off_6DDDD0;
    v11[2] = v5;
  }

  v6 = sub_5544(14);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "VirtualAudio_Stream.cpp";
    v20 = 1024;
    v21 = 388;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadStreamError) [mStream is NULL]: the underlying stream is NULL", buf, 0x12u);
  }

  v8 = __cxa_allocate_exception(0x10uLL);
  *v8 = &off_6DDDD0;
  v8[2] = 561214578;
}

double sub_2390A4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    v27 = sub_5544(14);
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      *v56 = *a2;
      v57 = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v29 = sub_5544(14);
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      *v56 = *a2;
      v57 = a2[2];
      sub_22CE0(__p);
    }

    v30 = __cxa_allocate_exception(0x10uLL);
    *v30 = &off_6DDDD0;
    v30[2] = 561211770;
  }

  if (!a6)
  {
    v31 = sub_5544(14);
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      *v56 = *a2;
      v57 = a2[2];
      sub_22CE0(__p);
    }

    v32 = __cxa_allocate_exception(0x10uLL);
    *v32 = &off_6DDDD0;
    v32[2] = 561211770;
  }

  if (((*(*a1 + 56))(a1, a2) & 1) == 0)
  {
    v33 = sub_5544(14);
    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      *v56 = *a2;
      v57 = a2[2];
      sub_22CE0(__p);
    }

    v34 = __cxa_allocate_exception(0x10uLL);
    *v34 = &off_6DDDD0;
    v34[2] = 1852797029;
  }

  v12 = *a2;
  if (*a2 == 1936092532 || v12 == 1885762592)
  {
    v13 = sub_5544(4);
    v14 = sub_5544(36);
    v15 = 0;
    *buf = 0x100000002;
    v16 = *(v13 + 8);
    while (1)
    {
      v17 = *&buf[v15];
      if (((v16 & v17) != 0) != ((*(v14 + 8) & v17) != 0))
      {
        break;
      }

      v15 += 4;
      if (v15 == 8)
      {
        goto LABEL_13;
      }
    }

    if ((v16 & v17) == 0)
    {
      v13 = v14;
    }

LABEL_13:
    v18 = *v13;
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *a2;
      sub_618A4(__p);
    }

    v12 = *a2;
  }

  if (v12 > 1936092514)
  {
    if (v12 == 1936092515)
    {
      if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
      {
        v41 = sub_5544(14);
        if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
        {
          *v56 = *a2;
          v57 = a2[2];
          sub_22CE0(__p);
        }

        v42 = __cxa_allocate_exception(0x10uLL);
        *v42 = &off_6DDDD0;
        v42[2] = 561211770;
      }

      (*(**(a1 + 120) + 48))(*(a1 + 120), a2, a3, a4, a5, a6);
      sub_221A90(*(a1 + 112));
    }

    else
    {
      if (v12 != 1936092532)
      {
        goto LABEL_37;
      }

      if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
      {
        v37 = sub_5544(14);
        if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
        {
          *v56 = *a2;
          v57 = a2[2];
          sub_22CE0(__p);
        }

        v38 = __cxa_allocate_exception(0x10uLL);
        *v38 = &off_6DDDD0;
        v38[2] = 561211770;
      }

      v23 = *(a6 + 16);
      *__p = *a6;
      *&__p[16] = v23;
      v59 = *(a6 + 32);
      if (*(a1 + 129) == 1 && !sub_23A4B0(*(a1 + 120), __p))
      {
        v50 = sub_5544(14);
        v51 = *v50;
        if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_Stream.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 251;
          _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioDeviceUnsupportedFormatError): Sample rate changes are not allowed currently.", buf, 0x12u);
        }

        v52 = __cxa_allocate_exception(0x10uLL);
        *v52 = &off_6DDDD0;
        v52[2] = 560226676;
      }

      if ((sub_2F6EBC(*(a1 + 104), __p) & 1) == 0)
      {
        v45 = sub_5544(4);
        if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_DEBUG))
        {
          sub_618A4(v56);
        }

        v46 = __cxa_allocate_exception(0x10uLL);
        *v46 = &off_6DDDD0;
        v46[2] = 560226676;
      }

      v24 = *(a1 + 104);
      v25 = *(v24 + 32);
      *buf = *(v24 + 16);
      *&buf[16] = v25;
      v61 = *(v24 + 48);
      sub_2F6FB8((v24 + 80), buf, __p);
      v55 = 40;
      (*(*a1 + 72))(a1, a2, 0, 0, &v55, buf);
      if (sub_136868(buf, __p, 0))
      {
        v26 = sub_5544(4);
        if ((*(v26 + 8) & 1) != 0 && *v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
        {
          sub_618A4(&v54);
        }
      }

      else
      {
        *&v21 = sub_2F70DC(*(a1 + 104), __p);
      }
    }
  }

  else
  {
    if (v12 != 1718641517)
    {
      if (v12 == 1885762592)
      {
        if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
        {
          v35 = sub_5544(14);
          if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
          {
            *v56 = *a2;
            v57 = a2[2];
            sub_22CE0(__p);
          }

          v36 = __cxa_allocate_exception(0x10uLL);
          *v36 = &off_6DDDD0;
          v36[2] = 561211770;
        }

        v19 = *(a6 + 16);
        *buf = *a6;
        *&buf[16] = v19;
        v61 = *(a6 + 32);
        if (*(a1 + 129) == 1 && !sub_23A4B0(*(a1 + 120), buf))
        {
          v47 = sub_5544(14);
          v48 = *v47;
          if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "VirtualAudio_Stream.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 291;
            _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioDeviceUnsupportedFormatError): Sample rate changes are not allowed currently.", __p, 0x12u);
          }

          v49 = __cxa_allocate_exception(0x10uLL);
          *v49 = &off_6DDDD0;
          v49[2] = 560226676;
        }

        if ((sub_2F6EBC(*(a1 + 104), buf) & 1) == 0)
        {
          v43 = sub_5544(4);
          if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_DEBUG))
          {
            sub_618A4(v56);
          }

          v44 = __cxa_allocate_exception(0x10uLL);
          *v44 = &off_6DDDD0;
          v44[2] = 560226676;
        }

        sub_2F6FB8((*(a1 + 104) + 56), (*(a1 + 104) + 16), buf);
        v20 = *(a1 + 104);
        if ((*(**(v20 + 8) + 192))(*(v20 + 8), buf))
        {
          v22 = v61;
          v21 = *&buf[16];
          *(v20 + 16) = *buf;
          *(v20 + 32) = v21;
          *(v20 + 48) = v22;
        }

        return *&v21;
      }

LABEL_37:
      sub_20BAC(a1, a2, a3, a4, a5, a6);
      return *&v21;
    }

    if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
    {
      v39 = sub_5544(14);
      if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
      {
        *v56 = *a2;
        v57 = a2[2];
        sub_22CE0(__p);
      }

      v40 = __cxa_allocate_exception(0x10uLL);
      *v40 = &off_6DDDD0;
      v40[2] = 561211770;
    }

    (*(**(a1 + 120) + 48))(*(a1 + 120), a2, a3, a4, a5, a6);
  }

  return *&v21;
}

void sub_23A46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23A4B0(uint64_t a1, double *a2)
{
  v3 = (*(*a1 + 120))(a1, v9);
  if (v3)
  {
    v5 = v3;
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "VirtualAudio_Stream.cpp";
      v12 = 1024;
      v13 = 635;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: mStream->GetCurrentFormat returned an error", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v5;
  }

  return v9[0] == *a2;
}

uint64_t sub_23A5F4(uint64_t a1, int *a2)
{
  v2 = 0;
  v3 = *a2;
  if (*a2 > 1936092514)
  {
    if (v3 <= 1936482675)
    {
      if (v3 == 1936092515)
      {
        return 1;
      }

      if (v3 != 1936222577)
      {
        return sub_28C200(a1, a2);
      }
    }

    else if (v3 != 1936482676 && v3 != 1936487523)
    {
      if (v3 == 1952542835)
      {
        return (*(**(a1 + 120) + 24))();
      }

      return sub_28C200(a1, a2);
    }
  }

  else
  {
    if (v3 <= 1751938146)
    {
      if (v3 == 1684829283 || v3 == 1685025633)
      {
        return v2;
      }

      if (v3 != 1718641517)
      {
        return sub_28C200(a1, a2);
      }

      return 1;
    }

    if ((v3 - 1935765619) >= 2 && v3 != 1751938147)
    {
      return sub_28C200(a1, a2);
    }
  }

  return v2;
}

void sub_23A708(uint64_t a1, uint64_t *a2)
{
  *v9 = 0u;
  v10 = 0u;
  *__p = 0u;
  v8 = 0u;
  v4 = sub_177D74(a1, v9, __p);
  v5 = __p[0];
  if (v4)
  {
    sub_163678(a2, *(a1 + 8), -1431655765 * ((__p[1] - __p[0]) >> 2), __p[0]);
    sub_163678(a2, *(*(a1 + 112) + 8), -1431655765 * ((v9[1] - v9[0]) >> 2), v9[0]);
  }

  if (v5)
  {
    operator delete(v5);
  }

  v6 = v9[0];
  if (v9[0])
  {

    operator delete(v6);
  }
}

void sub_23A7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A800(uint64_t a1)
{
  sub_2820();
  v13 = *(a1 + 8);
  v14 = &unk_6FCDC8;
  v15 = 1;
  sub_26C0(&unk_6FCDC8);
  v2 = sub_23B090(&xmmword_6FCEE8, v13);
  if (v2)
  {
    v3 = atomic_load((v2[3] + 312));
    if (v3)
    {
      v5 = v2[3];
      v4 = v2[4];
      v11 = v5;
      v12 = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v11 = 0;
      v12 = 0;
    }

    if (v15 == 1)
    {
      sub_3174(v14);
    }

    if (v5)
    {
      sub_26C0(v5 + 24);
      operator new();
    }

    v6 = sub_5544(5);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "HP_ObjectManager.h";
      v18 = 1024;
      v19 = 66;
      v20 = 2048;
      v21 = v13;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HP_Object at ID %lu is invalid.", buf, 0x1Cu);
    }

    if (v4)
    {
      sub_1A8C0(v4);
    }

    operator delete();
  }

  v8 = sub_5544(14);
  v9 = *v8;
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "HP_ObjectManager.h";
    v18 = 1024;
    v19 = 56;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError): ExecuteSynchronized: no object with given ID", buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &off_6DDDD0;
  exception[2] = 560947818;
}

void sub_23B040()
{
  if (v0)
  {
    operator delete();
  }

  JUMPOUT(0x23AAD8);
}

uint64_t *sub_23B090(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_23B144(uint64_t a1)
{
  v2 = *(a1 + 8);
  sub_26C0(v2);
  if (sub_23B090((v2 + 288), **(a1 + 16)))
  {
    sub_3174(**(a1 + 24) + 24);
  }

  sub_3174(v2);
}

__n128 sub_23B1D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_6BA758;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_23B27C(uint64_t a1, unsigned int a2, int *a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = a2;
    do
    {
      v7 = *a3;
      a3 += 3;
      if (v7 == 1885762657)
      {
        v8 = sub_5544(4);
        v9 = *v8;
        if (*v8)
        {
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v11 = "VirtualAudio_Stream.cpp";
            v12 = 1024;
            v13 = 414;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Physical formats changed! Firing the surround sound pref thingy on the VAD", buf, 0x12u);
          }
        }

        sub_221A90(a4);
      }

      --v6;
    }

    while (v6);
  }
}

void sub_23B39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  if (!a2)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v19[0] = 136315394;
      *&v19[1] = "VirtualAudio_Stream.cpp";
      v20 = 1024;
      v21 = 453;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inNewDevice is NULL]: inNewDevice is NULL.", v19, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "inNewDevice is NULL.");
  }

  v8 = (*(*a2 + 96))(a2, (*(a1 + 88) & 1) == 0);
  *(a1 + 120) = v8;
  if (!v8)
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v19[0] = 136315394;
      *&v19[1] = "VirtualAudio_Stream.cpp";
      v20 = 1024;
      v21 = 457;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadStreamError) [mStream is NULL]: stream is active but underlying stream is NULL", v19, 0x12u);
    }

    v18 = __cxa_allocate_exception(0x10uLL);
    *v18 = &off_6DDDD0;
    v18[2] = 561214578;
  }

  if (a5)
  {
    (*(*v8 + 176))(v8);
    v8 = *(a1 + 120);
  }

  if (sub_123DE4(v8))
  {
    v9 = *(a1 + 120);
    v10 = *(v9 + 88);
    if (v10)
    {
      v11 = *(v9 + 80);
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v12 = std::__shared_weak_count::lock(v10);
      std::__shared_weak_count::__release_weak(v10);
      if (v12)
      {
        if (v11)
        {
          strcpy(v19, "atfpbolg");
          BYTE1(v19[2]) = 0;
          HIWORD(v19[2]) = 0;
          sub_17A154(v11, v19, sub_23B27C, *(a1 + 112));
        }

        sub_1A8C0(v12);
      }
    }
  }

  sub_172728(a1, a4);
}

void sub_23B68C(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 120))
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "VirtualAudio_Stream.cpp";
        v8 = 1024;
        v9 = 478;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: underlying stream is NULL", &v6, 0x12u);
      }
    }
  }

  (*(**(a1 + 120) + 176))(*(a1 + 120));
  sub_172728(a1, a2);
}

uint64_t *sub_23B798(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
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
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_23B8EC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_12790(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  sub_12790(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  v5 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v5;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v6 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v6;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v7 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v7;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v8 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = v8;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  v9 = *(a1 + 168);
  if (v9)
  {
    *(a1 + 176) = v9;
    operator delete(v9);
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v10 = *(a1 + 192);
  if (v10)
  {
    *(a1 + 200) = v10;
    operator delete(v10);
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
  }

  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  v11 = *(a1 + 224);
  *(a1 + 216) = *(a2 + 216);
  if (v11)
  {
    *(a1 + 232) = v11;
    operator delete(v11);
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
  }

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  v12 = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 248) = v12;
  sub_12790(a1 + 264);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  sub_12790(a1 + 288);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  sub_23BD00(a1 + 312, (a2 + 312));
  sub_23BD00(a1 + 352, (a2 + 352));
  sub_23BD00(a1 + 392, (a2 + 392));
  sub_23BDD8(a1 + 432, (a2 + 432));
  return a1;
}

void sub_23BB40(void *a1)
{
  if (a1)
  {
    sub_23BB40(*a1);
    sub_23BB40(a1[1]);
    sub_A5114((a1 + 5));

    operator delete(a1);
  }
}

std::string *sub_23BB94(std::string *a1, uint64_t a2, uint64_t a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      sub_1F1F00(&__p, a2 + 16);
      v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      std::string::append(a1, v7, v8);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
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

void sub_23BC70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23BC94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x23BC7CLL);
}

uint64_t *sub_23BCAC(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  return sub_75234(v6, a2);
}

void sub_23BD00(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    sub_4B0A0(*(a1 + 16));
    *(a1 + 16) = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

__n128 sub_23BDD8(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_23BE78(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_A5114(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_23BEC4(uint64_t **a1, uint64_t *a2)
{
  v3 = a2[1];
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
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_75234(v7, a2);
  v8 = a2[5];
  a2[5] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  operator delete(a2);
}

void sub_23BF80(uint64_t a1, unsigned int a2)
{
  __src = 0uLL;
  v32 = 0;
  v3 = *(a1 + 24);
  if (!v3)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 16);
  v6 = a1 + 24;
  do
  {
    v7 = *(v3 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 != a1 + 24 && *(v6 + 32) <= a2)
  {
    v12 = *(v6 + 40);
    *(v6 + 40) = 0;
    v13 = *(v12 + 8);
    LODWORD(v33) = v13;
    v14 = sub_5544(3);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "VirtualAudio_SessionManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 136;
      *&buf[18] = 1024;
      *&buf[20] = a2;
      LOWORD(v35) = 1024;
      *(&v35 + 2) = v13;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Destroying and unpublishing session object: session id = %u, audio object id = %u", buf, 0x1Eu);
    }

    v16 = __src.n128_u64[1];
    if (__src.n128_u64[1] >= v32)
    {
      v18 = __src.n128_u64[0];
      v19 = __src.n128_u64[1] - __src.n128_u64[0];
      v20 = (__src.n128_u64[1] - __src.n128_u64[0]) >> 3;
      v21 = v20 + 1;
      if ((v20 + 1) >> 61)
      {
        sub_189A00();
      }

      v22 = v32 - __src.n128_u64[0];
      if ((v32 - __src.n128_u64[0]) >> 2 > v21)
      {
        v21 = v22 >> 2;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF8)
      {
        v23 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      p_src = &__src;
      if (v23)
      {
        sub_1DC9A4(v23);
      }

      *(8 * v20) = v12;
      v17 = 8 * v20 + 8;
      memcpy(0, v18, v19);
      v24 = __src.n128_u64[0];
      v25 = v32;
      __src.n128_u64[0] = 0;
      __src.n128_u64[1] = v17;
      v32 = 0;
      *&buf[16] = v24;
      v35 = v25;
      *buf = v24;
      *&buf[8] = v24;
      sub_218DD4(buf);
    }

    else
    {
      *__src.n128_u64[1] = v12;
      v17 = v16 + 8;
    }

    __src.n128_u64[1] = v17;
    sub_23BEC4(v5, v6);
    v26 = *(*(a1 + 8) + 8);
    v27 = AudioObjectsPublishedAndDied();
    if (v27)
    {
      v28 = sub_5544(14);
      v29 = *v28;
      if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_SessionManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 142;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (theError) [error theError is an error]: couldn't tell the HAL about the session", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v27;
    }

    sub_218AD4(&__src);
  }

  else
  {
LABEL_9:
    v10 = sub_5544(3);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_SessionManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 127;
      *&buf[18] = 1024;
      *&buf[20] = a2;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d No session object found: session id = %u", buf, 0x18u);
    }
  }

  v33 = &__src;
  sub_218D2C(&v33);
}

void sub_23C400(void *a1, uint64_t a2)
{
  v4 = sub_5544(2);
  v5 = sub_5544(35);
  v6 = 0;
  *buf = 0x100000002;
  v7 = *(v4 + 8);
  while (1)
  {
    v8 = *&buf[v6];
    if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
    {
      break;
    }

    v6 += 4;
    if (v6 == 8)
    {
      goto LABEL_7;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

LABEL_7:
  v9 = *v4;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "VirtualAudio_SessionManager.cpp";
    v53 = 1024;
    v54 = 155;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Updating Audio Session information", buf, 0x12u);
  }

  v10 = *(a2 + 8);
  if (v10 != a2)
  {
    v11 = a1 + 3;
    while (1)
    {
      v12 = *(v10 + 96);
      v13 = *v11;
      if (*v11)
      {
        v14 = a1 + 3;
        v15 = *v11;
        do
        {
          v16 = *(v15 + 32);
          v17 = v16 >= v12;
          v18 = v16 < v12;
          if (v17)
          {
            v14 = v15;
          }

          v15 = *(v15 + 8 * v18);
        }

        while (v15);
        if (v14 != v11 && v12 >= *(v14 + 8))
        {
          goto LABEL_26;
        }
      }

      if (!_os_feature_enabled_impl())
      {
        break;
      }

      v19 = sub_5544(2);
      v20 = sub_5544(35);
      v21 = 0;
      *buf = 0x100000002;
      v22 = *(v19 + 8);
      while (1)
      {
        v23 = *&buf[v21];
        if (((v22 & v23) != 0) != ((*(v20 + 8) & v23) != 0))
        {
          break;
        }

        v21 += 4;
        if (v21 == 8)
        {
          goto LABEL_40;
        }
      }

      if ((v22 & v23) == 0)
      {
        v19 = v20;
      }

LABEL_40:
      v26 = *v19;
      if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        std::to_string(v51, v12);
        v27 = v51;
        if (v51[23] < 0)
        {
          v27 = *v51;
        }

        *buf = 136315650;
        *&buf[4] = "VirtualAudio_SessionManager.cpp";
        v53 = 1024;
        v54 = 166;
        v55 = 2080;
        v56 = v27;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Session %s is not found", buf, 0x1Cu);
        if ((v51[23] & 0x80000000) != 0)
        {
          operator delete(*v51);
        }
      }

LABEL_46:
      v10 = *(v10 + 8);
      if (v10 == a2)
      {
        goto LABEL_47;
      }
    }

    sub_48FAC(a1, v12);
    v13 = a1[3];
LABEL_26:
    if (!v13)
    {
LABEL_92:
      sub_DE7DC("map::at:  key not found");
    }

    while (1)
    {
      while (1)
      {
        v24 = *(v13 + 8);
        if (v12 >= v24)
        {
          break;
        }

        v13 = *v13;
        if (!v13)
        {
          goto LABEL_92;
        }
      }

      if (v24 >= v12)
      {
        break;
      }

      v13 = v13[1];
      if (!v13)
      {
        goto LABEL_92;
      }
    }

    sub_A4E68(buf, v13[5] + 88);
    if (BYTE4(v57) == 1)
    {
      v25 = v57;
      if ((v57 & 0x100000000) == 0)
      {
        sub_1EC054();
      }
    }

    else
    {
      v25 = sub_1F2C48(*(v10 + 264));
    }

    *(v10 + 100) = v25;
    *(v10 + 104) = 1;
    sub_233C40(v13[5] + 88, v10 + 16);
    sub_A5114(buf);
    goto LABEL_46;
  }

LABEL_47:
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v28 = a1[2];
    if (v28 != a1 + 3)
    {
      do
      {
        v29 = *(a2 + 8);
        if (v29 == a2)
        {
LABEL_52:
          if (!sub_1F3F0C(v28[5] + 88))
          {
            sub_1D7C28(1uLL);
          }

          *(v28[5] + 305) = 0;
        }

        else
        {
          while (*(v29 + 96) != *(v28 + 8))
          {
            v29 = *(v29 + 8);
            if (v29 == a2)
            {
              goto LABEL_52;
            }
          }
        }

        v30 = v28[1];
        if (v30)
        {
          do
          {
            v31 = v30;
            v30 = *v30;
          }

          while (v30);
        }

        else
        {
          do
          {
            v31 = v28[2];
            v32 = *v31 == v28;
            v28 = v31;
          }

          while (!v32);
        }

        v28 = v31;
      }

      while (v31 != a1 + 3);
    }
  }

  v33 = sub_5544(2);
  v34 = sub_5544(35);
  v35 = 0;
  *buf = 0x100000002;
  v36 = *(v33 + 8);
  while (1)
  {
    v37 = *&buf[v35];
    if (((v36 & v37) != 0) != ((*(v34 + 8) & v37) != 0))
    {
      break;
    }

    v35 += 4;
    if (v35 == 8)
    {
      goto LABEL_67;
    }
  }

  if ((v36 & v37) == 0)
  {
    v33 = v34;
  }

LABEL_67:
  v38 = *v33;
  if (v38 && os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = a1[4];
    *buf = 136315650;
    *&buf[4] = "VirtualAudio_SessionManager.cpp";
    v53 = 1024;
    v54 = 208;
    v55 = 2048;
    v56 = v39;
    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Audio Sessions: %zu", buf, 0x1Cu);
  }

  v40 = a1[2];
  if (v40 != a1 + 3)
  {
    do
    {
      if (*(v40[5] + 305) == 1)
      {
        v41 = sub_5544(2);
        v42 = sub_5544(35);
        v43 = 0;
        *buf = 0x100000002;
        v44 = *(v41 + 8);
        while (1)
        {
          v45 = *&buf[v43];
          if (((v44 & v45) != 0) != ((*(v42 + 8) & v45) != 0))
          {
            break;
          }

          v43 += 4;
          if (v43 == 8)
          {
            goto LABEL_78;
          }
        }

        if ((v44 & v45) == 0)
        {
          v41 = v42;
        }

LABEL_78:
        v46 = *v41;
        if (v46 && os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          sub_A4E68(buf, v40[5] + 88);
          sub_1F1F00(&__p, buf);
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *v51 = 136315650;
          *&v51[4] = "VirtualAudio_SessionManager.cpp";
          *&v51[12] = 1024;
          *&v51[14] = 212;
          *&v51[18] = 2080;
          *&v51[20] = p_p;
          _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Active Session: %s", v51, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          sub_A5114(buf);
        }
      }

      v48 = v40[1];
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
          v49 = v40[2];
          v32 = *v49 == v40;
          v40 = v49;
        }

        while (!v32);
      }

      v40 = v49;
    }

    while (v49 != a1 + 3);
  }
}

void sub_23CB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (v19)
  {
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23CB80(void *a1)
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
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_23CBC4(uint64_t a1)
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

void sub_23CC08(uint64_t a1)
{
  *a1 = &off_6BA7D0;
  sub_477A0(*(a1 + 40));
  v2 = (a1 + 8);
  sub_1884C0(&v2);

  operator delete();
}

uint64_t sub_23CC88(uint64_t a1)
{
  *a1 = &off_6BA7D0;
  sub_477A0(*(a1 + 40));
  v3 = (a1 + 8);
  sub_1884C0(&v3);
  return a1;
}

const __CFNumber *sub_23CD78(const __CFDictionary *a1)
{
  if (!a1)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "VirtualAudio_Utilities.cpp";
      v9 = 1024;
      v10 = 542;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  result = sub_11094(a1, "activation call type");
  if (result)
  {
    v2 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v2))
    {
      v7 = 0;
      if (CFNumberGetValue(v2, kCFNumberIntType, &v7))
      {
        return v7;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23CEF8(uint64_t a1, unsigned int a2)
{
  result = (*(**(a1 + 872) + 368))(*(a1 + 872), 1650814258, 2, 4);
  if (result)
  {
    v6 = *(**(a1 + 872) + 384);

    v5.n128_f32[0] = a2;
    return v6(v5);
  }

  return result;
}

uint64_t sub_23CFBC(uint64_t a1, unsigned int a2)
{
  result = (*(**(a1 + 872) + 368))(*(a1 + 872), 1685287015, 1651797616, 0);
  if (result)
  {
    v6 = *(**(a1 + 872) + 384);

    v5.n128_f32[0] = a2;
    return v6(v5);
  }

  return result;
}

unint64_t sub_23D088(_DWORD *a1, int a2, float a3)
{
  v11 = a3;
  v9 = 0x696E70746467706DLL;
  v10 = 0;
  v8 = a2;
  v12[0] = a1[2];
  *&v13.mSelector = 0x696E70746467686DLL;
  v13.mElement = 0;
  result = sub_542F0(v12, &v13, 4u, &v8);
  *(&v7 + 1) = v5;
  *&v7 = result;
  v6 = v7 >> 32;
  if ((v6 & 0x100000000) != 0)
  {
    if (v6)
    {
      return (*(*a1 + 80))(a1, &v9, 4, &v8, 4, &v11, 0);
    }
  }

  return result;
}

uint64_t sub_23D404(uint64_t a1)
{
  result = sub_DD8CC(*(a1 + 872), 0);
  if (!result)
  {
    return result;
  }

  v3 = sub_8703C();
  v4 = (*(*v3 + 376))(v3);
  (*(**(a1 + 872) + 424))(*(a1 + 872));
  if (!v4 && (*sub_C2C1C() & 1) == 0)
  {
    if (sub_2204C4(a1) && (v5 = *(a1 + 872)) != 0 && ((*(*v5 + 440))(buf), (v29 & 1) != 0))
    {
      if (v28)
      {
        sub_20B4EC();
      }

      v6 = BYTE4(v23);
      sub_DD7C4(&v23 + 4);
      v7 = v6 ^ 1;
      if (v6)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = 1;
    }

    *buf = v7 & 1;
    (*(**(a1 + 872) + 416))(*(a1 + 872), 1685287015, 1652124782, buf, 4, 1, 0);
  }

  if (v4)
  {
    v8 = sub_5544(2);
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v23 = "VirtualAudio_Utilities.cpp";
        v24 = 1024;
        v25 = 778;
        v26 = 2048;
        *&v27 = v4;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [VolumeLimit] SPLTarget update %lu", buf, 0x1Cu);
      }
    }
  }

LABEL_17:
  v10 = (*(**(a1 + 872) + 376))(*(a1 + 872), 1685287015, 1936749423, 0);
  (*(**(a1 + 872) + 376))(*(a1 + 872), 1685287015, 1819176045, 0);
  v12 = 1819160624;
  if (v4)
  {
    v13 = v11;
    v14 = sub_5544(2);
    v15 = (v4 - (v10 + 13.0)) - v13;
    v16 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v23 = "VirtualAudio_Utilities.cpp";
      v24 = 1024;
      v25 = 786;
      v26 = 2048;
      v27 = v15;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [VolumeLimit] Updating kGraphParameter_VolumeLimit_TargetLoudnessLKFS to %f", buf, 0x1Cu);
    }

    (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1818977907, 0, v15);
    if (v4 >= 0x50)
    {
      if (v4 >= 0x55)
      {
        v17.n128_u32[0] = -1.5;
        if (v4 < 0x5A)
        {
          v17.n128_f32[0] = -6.5;
        }

        (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1751934580, 0, v17);
        v18 = 1819162677;
        v19 = 1819162928;
        v21 = 1819162933;
        if (v4 >= 0x60)
        {
          v21 = 1819160624;
        }

        if (v4 >= 0x5B)
        {
          v19 = v21;
        }

        v20 = v4 == 85;
      }

      else
      {
        (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1751934580, 0, -11.5);
        v18 = 1819162672;
        v19 = 1819162677;
        v20 = v4 == 80;
      }

      if (v20)
      {
        v12 = v18;
      }

      else
      {
        v12 = v19;
      }
    }

    else
    {
      (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1751934580, 0, -16.5);
      if (v4 >= 0x4C)
      {
        v12 = 1819162672;
      }

      else
      {
        v12 = 1819162421;
      }
    }
  }

  else
  {
    (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1818977907, 0, 0.0);
    (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1751934580, 0, -1.5);
  }

  (*(**(a1 + 872) + 376))(*(a1 + 872), 1685287015, v12, 0);
  return (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1819176295, 0);
}

void sub_23DAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a23 == 1)
  {
    sub_DD7C4(&a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23DACC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    v7 = 0;
    v4 = qword_6EB2D0;
    if (qword_6EB2D0 != &qword_6EB2B8)
    {
      v3 = 0;
LABEL_9:
      v7 = v4;
      qword_6EB2D0 = v3;
      return sub_23DDE8(v6);
    }

LABEL_10:
    (*(qword_6EB2B8 + 24))();
    (*(*qword_6EB2D0 + 32))(qword_6EB2D0);
    qword_6EB2D0 = v7;
    v7 = v6;
    return sub_23DDE8(v6);
  }

  if (v2 == a1)
  {
    v7 = v6;
    (*(*v2 + 24))(v2, v6);
    v3 = v7;
  }

  else
  {
    v3 = (*(*v2 + 16))(v2);
    v7 = v3;
  }

  v4 = qword_6EB2D0;
  if (v3 != v6)
  {
    if (qword_6EB2D0 != &qword_6EB2B8)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (qword_6EB2D0 == &qword_6EB2B8)
  {
    (*(*v3 + 24))(v3, v8);
    (*(*v7 + 32))(v7);
    v7 = 0;
    (*(*qword_6EB2D0 + 24))(qword_6EB2D0, v6);
    (*(*qword_6EB2D0 + 32))(qword_6EB2D0);
    qword_6EB2D0 = 0;
    v7 = v6;
    (*(v8[0] + 24))(v8, &qword_6EB2B8);
    (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*v3 + 24))(v3, &qword_6EB2B8);
    (*(*v7 + 32))(v7);
    v7 = qword_6EB2D0;
  }

  qword_6EB2D0 = &qword_6EB2B8;
  return sub_23DDE8(v6);
}

void sub_23DDDC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_23DDE8(uint64_t a1)
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

void sub_23DE68(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = sub_5544(14);
  if (*(v3 + 8))
  {
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        if (v2)
        {
          memset(&v16, 0, sizeof(v16));
          if (v2)
          {
            std::string::append(&v16, "Open", 4uLL);
          }

          if ((v2 & 2) != 0)
          {
            std::string::append(&v16, " | Flap1", 8uLL);
          }

          if ((v2 & 4) != 0)
          {
            std::string::append(&v16, " | Flap2", 8uLL);
          }

          if ((v2 & 8) != 0)
          {
            std::string::append(&v16, " | Flap3", 8uLL);
          }

          if ((v2 & 0x10) != 0)
          {
            std::string::append(&v16, " | Attach", 9uLL);
          }

          if ((v2 & 0x20) != 0)
          {
            std::string::append(&v16, " | StateUnknown", 0xFuLL);
          }
        }

        else
        {
          sub_53E8(&v16, "None");
        }

        v5 = &v16;
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v5 = v16.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "VirtualAudio_Utilities.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 832;
        v20 = 2080;
        v21 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d HallEffectSensorListener state = %s", buf, 0x1Cu);
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v6 = v2 & 3;
  if (dword_6E7188 != (v6 == 3))
  {
    if (v6 == 3)
    {
      v7 = "Closed";
    }

    else
    {
      v7 = "Open";
    }

    sub_53E8(&v16, v7);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v16;
    }

    else
    {
      v8 = v16.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v16.__r_.__value_.__l.__size_;
      }

      cf = CFStringCreateWithBytes(0, v8, size, 0x8000100u, 0);
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

    sub_88CE8(&v17, "SmartCoverState");
    if (cf)
    {
      CFRetain(cf);
    }

    v18 = cf;
    *buf = &v17;
    *&buf[8] = 1;
    v15 = sub_69CE8(buf);
    sub_23E2D8(v15, 1, 5);
    CFRelease(v15);
    if (v18)
    {
      CFRelease(v18);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = &v16;
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = v16.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "VirtualAudio_Utilities.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 844;
      v20 = 2080;
      v21 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SmartCoverState::%s", buf, 0x1Cu);
    }

    if (qword_6FCB80 != -1)
    {
      dispatch_once(&qword_6FCB80, &stru_6BA8D0);
    }

    if (off_6FCBE8)
    {
      off_6FCBE8(v6 == 3);
    }

    dword_6E7188 = v6 == 3;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23E238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  sub_1DB0E0(&a10);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23E2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_6E7110 != -1)
  {
    dispatch_once(&qword_6E7110, &stru_6BA800);
  }

  if (off_6E7170)
  {
    v6 = off_6E7170;

    v6(a1, a2, a3);
  }
}

void sub_23E36C(id a1)
{
  v1 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v1 || (v1 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v2 = v1;
    off_6FCB88 = dlsym(v1, "AudioIssueDetectorCreate");
    off_6FCB90 = dlsym(v2, "AudioIssueDetectorInitialize");
    off_6FCB98 = dlsym(v2, "AudioIssueDetectorDispose");
    qword_6FCBA0 = dlsym(v2, "AudioIssueDetectorSetNodeFormat");
    off_6FCBA8 = dlsym(v2, "AudioIssueDetectorSetNodeFormatWithDirection");
    qword_6FCBB0 = dlsym(v2, "AudioIssueDetectorReset");
    off_6FCBB8 = dlsym(v2, "AudioIssueDetectorAnalyzeBuffer");
    off_6FCBC0 = dlsym(v2, "AudioIssueDetectorUpdateReportingSessions");
    qword_6FCBC8 = dlsym(v2, "AudioIssueDetectorRemoveNode");
    qword_6FCBD0 = dlsym(v2, "AudioIssueDetectorSetUplinkMute");
    qword_6FCBD8 = dlsym(v2, "AudioIssueDetectorSetDownlinkVolume");
    qword_6FCBE0 = dlsym(v2, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    off_6FCBE8 = dlsym(v2, "AudioIssueDetectorSetSmartCaseMicMute");
    qword_6FCBF0 = dlsym(v2, "AudioIssueDetectorFlush");
  }

  v3 = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (v3)
  {
    v4 = dlsym(v3, "RegisterAudioUnits_Analyzer");
    if (v4)
    {

      v4();
    }
  }
}

void sub_23E540(id a1)
{
  v1 = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (v1)
  {
    v2 = v1;
    qword_6E7118 = dlsym(v1, "CreateSharedCAReportingClient");
    qword_6E7120 = dlsym(v2, "CAReportingClientCreateReporterID");
    qword_6E7128 = dlsym(v2, "CAReportingClientCreateReporterIDFromSessionID");
    qword_6E7130 = dlsym(v2, "CAReportingClientCreatePerformanceReporterID");
    qword_6E7138 = dlsym(v2, "CAReportingClientStartReporter");
    qword_6E7140 = dlsym(v2, "CAReportingClientStopReporter");
    qword_6E7148 = dlsym(v2, "CAReportingClientSetAudioServiceType");
    qword_6E7150 = dlsym(v2, "CAReportingClientGetAudioServiceType");
    qword_6E7158 = dlsym(v2, "CAReportingClientSetConfiguration");
    qword_6E7160 = dlsym(v2, "CAReportingClientCopyConfiguration");
    off_6E7168 = dlsym(v2, "CAReportingClientSendMessage");
    off_6E7170 = dlsym(v2, "CAReportingClientSendSingleMessage");
    qword_6E7178 = dlsym(v2, "CAReportingClientDestroyReporterID");
    qword_6E7180 = dlsym(v2, "CAReportingClientRequestMessage");
  }
}

std::string *sub_23E748(std::string *a1, uint64_t a2, uint64_t a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      v7 = *(a2 + 23);
      v8 = v7 >= 0 ? a2 : *a2;
      v9 = v7 >= 0 ? *(a2 + 23) : *(a2 + 8);
      std::string::append(a1, v8, v9);
      a2 += 24;
      if (a2 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_23E7F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef sub_23E814(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  memset(v6, 0, sizeof(v6));
  if (v2 != v1)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v1) >> 3);
    if (!(v3 >> 61))
    {
      v7[4] = v6;
      sub_1DB8DC(v3);
    }

    sub_189A00();
  }

  v4 = sub_69BCC(v6);
  v7[0] = v6;
  sub_69C68(v7);
  return v4;
}

void sub_23E9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  __p = &a16;
  sub_69C68(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_23EA34(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void *sub_23EA78(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

CFStringRef sub_23EABC(CFStringRef result, const UInt8 *a2)
{
  v2 = a2;
  p_isa = &result->isa;
  v4 = a2[23];
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    v5 = *(v2 + 1);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    result = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    *p_isa = result;
    if (!result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    result->isa = 0;
  }

  return result;
}

void sub_23EB90(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      sub_23EC90(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t sub_23EC40(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    sub_23EC90(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_23EC90(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void sub_23ECB0(uint64_t a1, const __CFDictionary **a2)
{
  if (!*a2)
  {
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 160) = 0;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 80) = 1065353216;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 1065353216;
    *(a1 + 160) = 1065353216;
    return;
  }

  v4 = sub_43354(*a2, "input port UIDs");
  if (v4)
  {
    v5 = v4;
    CFRetain(v4);
    v6 = CFGetTypeID(v5);
    if (v6 == CFArrayGetTypeID())
    {
      CFRetain(v5);
      v25 = v5;
      CFRelease(v5);
      v7 = sub_5544(2);
      v8 = sub_5544(35);
      v9 = 0;
      cf[0] = 0x100000002;
      v10 = *(v7 + 8);
      while (1)
      {
        v11 = *(cf + v9);
        if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
        {
          break;
        }

        v9 += 4;
        if (v9 == 8)
        {
          goto LABEL_26;
        }
      }

      if ((v10 & v11) == 0)
      {
        v7 = v8;
      }

LABEL_26:
      v18 = *v7;
      if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_B13D8(&__p, v5);
        v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        LODWORD(cf[0]) = 136315650;
        *(cf + 4) = "VirtualAudio_Utilities.cpp";
        WORD2(cf[1]) = 1024;
        *(&cf[1] + 6) = 1028;
        WORD1(cf[2]) = 2080;
        *(&cf[2] + 4) = v19;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Persistent input port UIDs: %s.", cf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_11;
    }

    CFRelease(v5);
  }

  v25 = 0;
LABEL_11:
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  sub_4A1E0(cf, *a2, "output port UIDs");
  if (LOBYTE(cf[1]) == 1 && (v12 = cf[0]) != 0)
  {
    CFRetain(cf[0]);
    v23 = v12;
    CFRelease(v12);
    v13 = sub_5544(2);
    v14 = sub_5544(35);
    v15 = 0;
    cf[0] = 0x100000002;
    v16 = *(v13 + 8);
    while (1)
    {
      v17 = *(cf + v15);
      if (((v16 & v17) != 0) != ((*(v14 + 8) & v17) != 0))
      {
        break;
      }

      v15 += 4;
      if (v15 == 8)
      {
        goto LABEL_35;
      }
    }

    if ((v16 & v17) == 0)
    {
      v13 = v14;
    }

LABEL_35:
    v20 = *v13;
    if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_B13D8(&__p, v12);
      v21 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(cf[0]) = 136315650;
      *(cf + 4) = "VirtualAudio_Utilities.cpp";
      WORD2(cf[1]) = 1024;
      *(&cf[1] + 6) = 1033;
      WORD1(cf[2]) = 2080;
      *(&cf[2] + 4) = v21;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Persistent output port UIDs: %s.", cf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v23 = 0;
  }

  memset(cf, 0, 24);
  memset(&__p, 0, sizeof(__p));
  sub_23F1B4(cf, &v25);
  sub_23F1B4(&__p, &v23);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_4817C(a1, cf[0], cf[1], 0xAAAAAAAAAAAAAAABLL * ((cf[1] - cf[0]) >> 3));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_4817C(a1 + 24, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3));
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 1065353216;
  p_p = &__p;
  sub_11C50(&p_p);
  __p.__r_.__value_.__r.__words[0] = cf;
  sub_11C50(&__p);
  if (v23)
  {
    CFRelease(v23);
  }

  if (v25)
  {
    CFRelease(v25);
  }
}

void sub_23F104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13)
{
  sub_46228(&a9);
  sub_46228(&a13);
  _Unwind_Resume(a1);
}

void sub_23F1B4(uint64_t a1, CFArrayRef *a2)
{
  v2 = *a2;
  if (*a2)
  {
    Count = CFArrayGetCount(*a2);
    v6 = Count;
    v7 = *a2;
    if (v7)
    {
      v8 = CFArrayGetCount(v7);
      if (!v6)
      {
        return;
      }
    }

    else
    {
      v8 = 0;
      if (!Count)
      {
        return;
      }
    }

    v9 = 0;
    do
    {
      if (v2 == v7 && v8 == v9)
      {
        break;
      }

      sub_A3B9C(&cf, v2, v9);
      v10 = cf;
      if (cf)
      {
        v11 = CFGetTypeID(cf);
        if (v11 == CFStringGetTypeID())
        {
          sub_23F428(&v27, &cf);
          sub_F76D4(__p, v27);
          v12 = *(a1 + 8);
          v13 = *(a1 + 16);
          if (v12 >= v13)
          {
            v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a1) >> 3);
            v16 = v15 + 1;
            if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_189A00();
            }

            v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
            if (2 * v17 > v16)
            {
              v16 = 2 * v17;
            }

            if (v17 >= 0x555555555555555)
            {
              v18 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v18 = v16;
            }

            v31[4] = a1;
            if (v18)
            {
              sub_1D8BB8(v18);
            }

            v19 = 24 * v15;
            v20 = *__p;
            *(v19 + 16) = v29;
            *v19 = v20;
            __p[1] = 0;
            v29 = 0;
            __p[0] = 0;
            v21 = 24 * v15 + 24;
            v22 = *(a1 + 8) - *a1;
            v23 = 24 * v15 - v22;
            memcpy((v19 - v22), *a1, v22);
            v24 = *a1;
            *a1 = v23;
            *(a1 + 8) = v21;
            v25 = *(a1 + 16);
            *(a1 + 16) = 0;
            v31[2] = v24;
            v31[3] = v25;
            v31[0] = v24;
            v31[1] = v24;
            sub_12574(v31);
            v26 = SHIBYTE(v29);
            *(a1 + 8) = v21;
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v14 = *__p;
            *(v12 + 16) = v29;
            *v12 = v14;
            __p[1] = 0;
            v29 = 0;
            __p[0] = 0;
            *(a1 + 8) = v12 + 24;
          }

          if (v27)
          {
            CFRelease(v27);
          }
        }

        CFRelease(v10);
      }

      ++v9;
    }

    while (v6 != v9);
  }
}

void sub_23F3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_452F0(&a9);
  sub_1DC860(&a16);
  _Unwind_Resume(a1);
}

const void *sub_23F428(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFStringGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFStringGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_23F50C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1DB0E0(v1);
  _Unwind_Resume(a1);
}

void *sub_23F54C(void *a1, void **a2, void **a3)
{
  v6 = (a1 + 1);
  if (a1 + 1 != a2 && (sub_6F834(a3, a2 + 4) & 0x80) == 0)
  {
    if ((sub_6F834(a2 + 4, a3) & 0x80) == 0)
    {
      v18 = a2;
      v7 = a2;
      if (!a2)
      {
        goto LABEL_25;
      }

      return v7;
    }

    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v17 = a2;
      do
      {
        v13 = v17[2];
        v15 = *v13 == v17;
        v17 = v13;
      }

      while (!v15);
    }

    if (v13 == v6 || (sub_6F834(a3, v13 + 4) & 0x80) != 0)
    {
      if (v11)
      {
        v18 = v13;
      }

      else
      {
        v18 = a2;
        v13 = a2 + 1;
      }

      goto LABEL_22;
    }

LABEL_19:
    v13 = sub_6F86C(a1, &v18, a3);
    goto LABEL_22;
  }

  v8 = *a2;
  if (*a1 == a2)
  {
    v10 = a2;
  }

  else
  {
    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    if ((sub_6F834(v10 + 4, a3) & 0x80) == 0)
    {
      goto LABEL_19;
    }
  }

  if (!v8)
  {
    v18 = a2;
    goto LABEL_25;
  }

  v18 = v10;
  v13 = v10 + 1;
LABEL_22:
  v7 = *v13;
  if (!*v13)
  {
LABEL_25:
    sub_23F700();
  }

  return v7;
}

void sub_23F784(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1F0870(0, v2);
  _Unwind_Resume(a1);
}

void sub_23F7A0(void *a1, int a2, uint64_t a3)
{
  v5 = a1[1];
  if (a1[2] != v5)
  {
    v6 = a1[4];
    v7 = (v5 + 8 * (v6 >> 7));
    v8 = *v7;
    v9 = &(*v7)[32 * (v6 & 0x7F)];
    v10 = *(v5 + (((a1[5] + v6) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v6) & 0x7F);
    while (v9 != v10)
    {
      if (!*v9)
      {
        v12 = sub_5544(7);
        v13 = *v12;
        if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "DeviceManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 270;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d invalid AudioObjectID", buf, 0x12u);
        }

        break;
      }

      v9 += 32;
      if (v9 - v8 == 4096)
      {
        v11 = v7[1];
        ++v7;
        v8 = v11;
        v9 = v11;
      }
    }
  }

  v14 = a1[1];
  if (a1[2] != v14)
  {
    v15 = a1[4];
    v16 = (v14 + 8 * (v15 >> 7));
    v17 = *v16;
    v18 = *v16 + 32 * (v15 & 0x7F);
    v19 = *(v14 + (((a1[5] + v15) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v15) & 0x7F);
    while (v18 != v19)
    {
      v20 = *(v18 + 31);
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(v18 + 16);
      }

      if (!v20)
      {
        if (!a2)
        {
          v93 = sub_5544(7);
          v94 = *v93;
          if (*v93)
          {
            if (os_log_type_enabled(*v93, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 277;
              _os_log_impl(&dword_0, v94, OS_LOG_TYPE_ERROR, "%25s:%-5d uid is NULL for a new PhysicalDevice", buf, 0x12u);
            }
          }
        }

        break;
      }

      v18 += 32;
      if (v18 - v17 == 4096)
      {
        v21 = v16[1];
        ++v16;
        v17 = v21;
        v18 = v21;
      }
    }
  }

  if (a3)
  {
    v104 = a3;
    v105 = 1;
    sub_47BD8(a3);
    v22 = a3 + 296;
    *buf = buf;
    *&buf[8] = buf;
    *&buf[16] = 0;
    if (*(a3 + 304) != a3 + 296)
    {
      sub_12A818();
    }

    v101 = std::uncaught_exceptions();
    v102[0] = v102;
    v102[1] = v102;
    v103 = 0;
    v23 = *&buf[16];
    if (*&buf[16])
    {
      v25 = *buf;
      v24 = *&buf[8];
      v26 = *(*buf + 8);
      v27 = **&buf[8];
      *(v27 + 8) = v26;
      *v26 = v27;
      v28 = v102[0];
      *(v102[0] + 8) = v24;
      *v24 = v28;
      v102[0] = v25;
      *(v25 + 8) = v102;
      v103 = v23;
      *&buf[16] = 0;
    }

    sub_87980(buf);
    memset(v100, 0, sizeof(v100));
    if (a2)
    {
      memset(buf, 0, 48);
      v106 = &v106;
      v107 = &v106;
      v108 = 0;
      LOBYTE(__p[0]) = 0;
      __p[1] = 0;
      atomic_fetch_add((sub_809C0() + 656), 1u);
      v29 = a1[1];
      if (a1[2] != v29)
      {
        v30 = a1[4];
        v31 = a1[5];
        v32 = (v29 + 8 * (v30 >> 7));
        v33 = *v32 + 32 * (v30 & 0x7F);
        v34 = *(v29 + (((v31 + v30) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v31 + v30) & 0x7F);
        while (v33 != v34)
        {
          v35 = sub_5544(7);
          v36 = *v35;
          if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_DEFAULT))
          {
            v37 = (v33 + 8);
            if (*(v33 + 31) < 0)
            {
              v37 = *v37;
            }

            v38 = *v33;
            *v112 = 136316162;
            *&v112[4] = "DeviceManager.cpp";
            *&v112[12] = 1024;
            *&v112[14] = 421;
            *&v112[18] = 2080;
            *&v112[20] = "Removed";
            *&v112[28] = 1024;
            *&v112[30] = v38;
            *&v112[34] = 2080;
            *&v112[36] = v37;
            _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Handling device state [%s] for Device ID: %u for UID: %s", v112, 0x2Cu);
          }

          v39 = sub_5544(7);
          v40 = *v39;
          if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_INFO))
          {
            v41 = *v33;
            if (*(v33 + 31) >= 0)
            {
              v42 = v33 + 8;
            }

            else
            {
              v42 = *(v33 + 8);
            }

            *v112 = 136315906;
            *&v112[4] = "DeviceManager.cpp";
            *&v112[12] = 1024;
            *&v112[14] = 465;
            *&v112[18] = 1024;
            *&v112[20] = v41;
            *&v112[24] = 2080;
            *&v112[26] = v42;
            _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "%25s:%-5d Deleting Device ID: %u with UID: %s", v112, 0x22u);
          }

          v43 = *(a3 + 304);
          if (v43 != v22)
          {
            v44 = *v33;
            while ((*(**(v43 + 16) + 120))(*(v43 + 16)) != v44)
            {
              v43 = *(v43 + 8);
              if (v43 == v22)
              {
                goto LABEL_48;
              }
            }
          }

          if (v43 == v22)
          {
LABEL_48:
            v46 = 0;
          }

          else
          {
            v45 = *(v43 + 16);
            v46 = *(v43 + 24);
            if (v46)
            {
              atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v45)
            {
              sub_241E28(v22, v43);
              (*(*v45 + 80))(v45);
              operator new();
            }
          }

          v47 = sub_5544(7);
          v48 = *v47;
          if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
          {
            *v112 = 136315394;
            *&v112[4] = "DeviceManager.cpp";
            *&v112[12] = 1024;
            *&v112[14] = 473;
            _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d PhysicalDevice to remove does not exist in the DeviceManager database", v112, 0x12u);
          }

          if (v46)
          {
            sub_1A8C0(v46);
          }

          v33 += 32;
          if (v33 - *v32 == 4096)
          {
            v49 = v32[1];
            ++v32;
            v33 = v49;
          }
        }
      }

      sub_240CCC(__p);
      if (v108)
      {
        v50 = sub_8703C();
        v51 = (*(*v50 + 336))(v50);
        v52 = v107;
        if (v51)
        {
          if (v107 != &v106)
          {
            do
            {
              v53 = sub_5544(7);
              v54 = sub_5544(16);
              v55 = 0;
              *v112 = 0x100000002;
              v56 = *(v53 + 8);
              while (1)
              {
                v57 = *&v112[v55];
                if (((v56 & v57) != 0) != ((*(v54 + 8) & v57) != 0))
                {
                  break;
                }

                v55 += 4;
                if (v55 == 8)
                {
                  if ((v56 & 1) == 0)
                  {
                    goto LABEL_75;
                  }

                  goto LABEL_68;
                }
              }

              if ((v56 & v57) == 0)
              {
                v53 = v54;
              }

              if (*(v53 + 8))
              {
LABEL_68:
                v58 = *v53;
                if (v58 && os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
                {
                  v59 = v52[2];
                  sub_23148(__p, v59 + 2);
                  v60 = v110 >= 0 ? __p : __p[0];
                  *v112 = 136315906;
                  *&v112[4] = "DeviceManager.cpp";
                  *&v112[12] = 1024;
                  *&v112[14] = 49;
                  *&v112[18] = 2048;
                  *&v112[20] = v59;
                  *&v112[28] = 2080;
                  *&v112[30] = v60;
                  _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEBUG, "%25s:%-5d Queueing device %p (%s) for deletion.", v112, 0x26u);
                  if (v110 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }
              }

LABEL_75:
              v52 = v52[1];
            }

            while (v52 != &v106);
          }

          v61 = 1;
        }

        else
        {
          if (v107 != &v106)
          {
            do
            {
              v83 = sub_5544(7);
              v84 = sub_5544(16);
              v85 = 0;
              *v112 = 0x100000002;
              v86 = *(v83 + 8);
              while (1)
              {
                v87 = *&v112[v85];
                if (((v86 & v87) != 0) != ((*(v84 + 8) & v87) != 0))
                {
                  break;
                }

                v85 += 4;
                if (v85 == 8)
                {
                  if ((v86 & 1) == 0)
                  {
                    goto LABEL_130;
                  }

                  goto LABEL_123;
                }
              }

              if ((v86 & v87) == 0)
              {
                v83 = v84;
              }

              if (*(v83 + 8))
              {
LABEL_123:
                v88 = *v83;
                if (v88 && os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
                {
                  v89 = v52[2];
                  sub_23148(__p, v89 + 2);
                  v90 = v110 >= 0 ? __p : __p[0];
                  *v112 = 136315906;
                  *&v112[4] = "DeviceManager.cpp";
                  *&v112[12] = 1024;
                  *&v112[14] = 63;
                  *&v112[18] = 2048;
                  *&v112[20] = v89;
                  *&v112[28] = 2080;
                  *&v112[30] = v90;
                  _os_log_impl(&dword_0, v88, OS_LOG_TYPE_DEBUG, "%25s:%-5d Immediately deleting device %p (%s).", v112, 0x26u);
                  if (v110 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }
              }

LABEL_130:
              v52 = v52[1];
            }

            while (v52 != &v106);
          }

          v91 = sub_5544(7);
          v92 = *v91;
          if (*v91 && os_log_type_enabled(*v91, OS_LOG_TYPE_ERROR))
          {
            *v112 = 136315394;
            *&v112[4] = "DeviceManager.cpp";
            *&v112[12] = 1024;
            *&v112[14] = 69;
            _os_log_impl(&dword_0, v92, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to locate a valid serialization context. Deleting the device synchronously. This may lead to a crash if someone tries to access it or its controls subsequently.", v112, 0x12u);
          }

          v61 = 0;
        }

        sub_240DF0(qword_70A338, &v106, v61);
      }

      if (*&buf[40])
      {
        exception = __cxa_allocate_exception(0x58uLL);
        sub_24125C(v112, buf);
        sub_2414F0(exception, v112);
      }

      sub_87980(&v106);
      v82 = buf;
    }

    else
    {
      memset(v112, 0, 48);
      LOBYTE(v106) = 1;
      v107 = a3;
      if (!sub_52604(a3))
      {
        v95 = sub_5544(14);
        v96 = *v95;
        if (*v95)
        {
          if (os_log_type_enabled(*v95, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "PortManager.h";
            *&buf[12] = 1024;
            *&buf[14] = 245;
            _os_log_impl(&dword_0, v96, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Client mutex is not owned by the current thread", buf, 0x12u);
          }
        }
      }

      atomic_fetch_add((sub_809C0() + 656), 1u);
      v64 = a1[1];
      if (a1[2] != v64)
      {
        v65 = a1[4];
        v66 = (v64 + 8 * (v65 >> 7));
        v67 = *v66 + 32 * (v65 & 0x7F);
        v68 = *(v64 + (((a1[5] + v65) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v65) & 0x7F);
        if (v67 != v68)
        {
          v69 = &unk_6F6000;
          do
          {
            v70 = sub_5544(7);
            v71 = *v70;
            if (*v70 && os_log_type_enabled(*v70, OS_LOG_TYPE_DEFAULT))
            {
              v72 = (v67 + 8);
              if (*(v67 + 31) < 0)
              {
                v72 = *v72;
              }

              v73 = *v67;
              *buf = 136316162;
              *&buf[4] = "DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 359;
              *&buf[18] = 2080;
              *&buf[20] = "Added";
              *&buf[28] = 1024;
              *&buf[30] = v73;
              *&buf[34] = 2080;
              *&buf[36] = v72;
              _os_log_impl(&dword_0, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Handling device state [%s] for Device ID: %u for UID: %s", buf, 0x2Cu);
            }

            if ((sub_231C4() & 1) != 0 || sub_23238("VA_HandleDeviceArrival", 0x16uLL) != &qword_709F00)
            {
              if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
              {
                *(v69 + 265) = os_log_create("com.apple.coreaudio", "VirtualAudio");
                __cxa_guard_release(&qword_6F6850);
              }

              v74 = os_signpost_id_generate(*(v69 + 265));
              if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
              {
                *(v69 + 265) = os_log_create("com.apple.coreaudio", "VirtualAudio");
                __cxa_guard_release(&qword_6F6850);
              }

              if ((v74 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v75 = v69;
                v76 = *(v69 + 265);
                if (os_signpost_enabled(v76))
                {
                  v77 = (v67 + 8);
                  if (*(v67 + 31) < 0)
                  {
                    v77 = *v77;
                  }

                  v78 = *v67;
                  *buf = 67109378;
                  *&buf[4] = v78;
                  *&buf[8] = 2080;
                  *&buf[10] = v77;
                  _os_signpost_emit_with_name_impl(&dword_0, v76, OS_SIGNPOST_INTERVAL_BEGIN, v74, "VA_HandleDeviceArrival", "Adding device, ID: %u for UID: %s", buf, 0x12u);
                }

                v69 = v75;
              }
            }

            else
            {
              v74 = 0;
            }

            __p[0] = v74;
            v79 = sub_5544(43);
            if (*(v79 + 8))
            {
              v80 = *v79;
              if (*v79)
              {
                if (os_log_type_enabled(*v79, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315650;
                  *&buf[4] = "SignpostUtilities.h";
                  *&buf[12] = 1024;
                  *&buf[14] = 105;
                  *&buf[18] = 2080;
                  *&buf[20] = "kHandleDeviceArrival";
                  _os_log_impl(&dword_0, v80, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", buf, 0x1Cu);
                }
              }
            }

            sub_242AA8(a3, v67);
            sub_244F40(__p);
            v67 += 32;
            if (v67 - *v66 == 4096)
            {
              v81 = v66[1];
              ++v66;
              v67 = v81;
            }
          }

          while (v67 != v68);
        }
      }

      if (*&v112[40])
      {
        v98 = __cxa_allocate_exception(0x58uLL);
        sub_24125C(buf, v112);
        sub_2414F0(v98, buf);
      }

      sub_240CCC(&v106);
      v82 = v112;
    }

    sub_240A84(v82);
    sub_240A84(v100);
    sub_240B30(&v101);
    sub_47C90(a3);
  }

  else
  {
    v62 = sub_5544(7);
    v63 = *v62;
    if (*v62 && os_log_type_enabled(*v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DeviceManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 278;
      _os_log_impl(&dword_0, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d clientData is NULL", buf, 0x12u);
    }
  }
}

void sub_24096C()
{
  __cxa_end_catch();
  sub_240CCC(&v0);
  JUMPOUT(0x240A18);
}

void sub_240980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unsigned __int8 a34)
{
  sub_240CCC(&a34);
  sub_87980(&a31);
  JUMPOUT(0x240A50);
}

void sub_2409A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_240A84(&a37);
  sub_240CCC(&v37);
  JUMPOUT(0x240A18);
}

void sub_2409B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_240A84(&a37);
  __cxa_free_exception(v37);
  JUMPOUT(0x2409F4);
}

void sub_240A20(void *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  JUMPOUT(0x240A7CLL);
}

uint64_t sub_240A84(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_241B84(a1);
}

uint64_t sub_240B30(uint64_t a1)
{
  if (std::uncaught_exceptions() > *a1)
  {
    v2 = sub_5544(7);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "DeviceManager.cpp";
      v11 = 1024;
      v12 = 493;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Error Occured handling a Device Update", buf, 0x12u);
    }

    v4 = sub_5544(7);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
    {
      sub_2422E0(&__p, *(a1 + 16), (a1 + 8));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v10 = "DeviceManager.cpp";
      v11 = 1024;
      v12 = 494;
      v13 = 2080;
      v14 = p_p;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Cached Device List: %s", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  sub_87980((a1 + 8));
  return a1;
}

void sub_240CC0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

unsigned __int8 *sub_240CCC(unsigned __int8 *a1)
{
  if (*(a1 + 1))
  {
    operator new();
  }

  v4 = 0;
  v2 = sub_809C0();
  sub_2551D4(v2, *a1);
  sub_242A48(&v4);
  return a1;
}

void sub_240DF0(unint64_t *a1, void *a2, int a3)
{
  if (a2[2])
  {
    if (a3)
    {
      sub_68E60();
      *buf = buf;
      *&buf[8] = buf;
      *&buf[16] = 0;
      v4 = a2[2];
      if (v4)
      {
        v6 = *a2;
        v5 = a2[1];
        v7 = *(*a2 + 8);
        v8 = *v5;
        *(v8 + 8) = v7;
        *v7 = v8;
        v9 = *buf;
        *(*buf + 8) = v5;
        *v5 = v9;
        *(v6 + 8) = buf;
        *buf = v6;
        *&buf[16] = v4;
        a2[2] = 0;
      }

      operator new();
    }

    v10 = atomic_load(a1);
    if (v10 != pthread_self())
    {
      v11 = sub_5544(14);
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "ObjectDestructionManager.h";
          *&buf[12] = 1024;
          *&buf[14] = 72;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Synchronously deleting objects from outside of a managed ObjectDestruction event", buf, 0x12u);
        }
      }
    }

    while (a2[2])
    {
      v13 = a2[1];
      *buf = *(v13 + 16);
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      sub_241E80(buf);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      sub_241E28(a2, v13);
    }
  }
}

void *sub_241088(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = v5 - v6;
  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v5 - v6) << 7) - 1;
  }

  v10 = result[4];
  v9 = result[5];
  v11 = v9 + v10;
  if (v8 == v9 + v10)
  {
    if (v10 < 0x400)
    {
      v12 = result[3];
      v13 = &v12[-*result];
      if (v7 < v13)
      {
        if (v12 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v12 == *result)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13 >> 2;
      }

      v16 = v3;
      sub_241DE0(v14);
    }

    result[4] = v10 - 1024;
    *&v15 = *v6;
    result[1] = v6 + 8;
    result = sub_241BD4(result, &v15);
    v6 = v3[1];
    v9 = v3[5];
    v11 = v3[4] + v9;
  }

  *(*&v6[(v11 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v11 & 0x3FF)) = *a2;
  v3[5] = v9 + 1;
  return result;
}

void sub_241230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_OWORD *sub_24125C(_OWORD *result, void *a2)
{
  result[1] = 0u;
  result[2] = 0u;
  *result = 0u;
  v2 = a2[1];
  if (a2[2] != v2)
  {
    v3 = a2[4];
    v4 = (v3 >> 7) & 0x1FFFFFFFFFFFFF8;
    v5 = v3 & 0x3FF;
    v6 = a2[5] + v3;
    v7 = (v6 >> 7) & 0x1FFFFFFFFFFFFF8;
    if (*(v2 + v7) + 4 * (v6 & 0x3FF) != *(v2 + v4) + 4 * (a2[4] & 0x3FFLL))
    {
      v8 = v6 & 0x3FF | ((v7 - v4) << 7);
      v9 = v8 - v5;
      if (v8 != v5)
      {
        if (((v9 + 1) & 0x3FF) != 0)
        {
          v10 = ((v9 + 1) >> 10) + 1;
        }

        else
        {
          v10 = (v9 + 1) >> 10;
        }

        sub_241DE0(v10);
      }
    }
  }

  return result;
}

uint64_t sub_2414F0(uint64_t a1, void *a2)
{
  v4 = std::runtime_error::runtime_error(a1, "DeviceUpdate failed");
  v4->__vftable = off_6BA900;
  v5 = v4 + 1;
  sub_53E8(&v4[1], "DeviceUpdate failed");
  sub_24125C((a1 + 40), a2);
  sub_63250(&v31);
  v6 = a2[4];
  v7 = v6 >> 10;
  v8 = a2[1];
  v9 = (v8 + 8 * (v6 >> 10));
  if (a2[2] == v8)
  {
    v16 = a2[5] + v6;
    if (v7 == v16 >> 10)
    {
      goto LABEL_18;
    }

    v11 = 0;
    v14 = 0;
    v13 = (v8 + 8 * (v16 >> 10));
    v17 = *v9 + 4096;
    do
    {
LABEL_11:
      v18 = *v11;
      sub_22564(&v31, " ", 1);
      std::ostream::operator<<();
      ++v11;
    }

    while (v11 != v17);
    goto LABEL_12;
  }

  v10 = *(v8 + 8 * v7);
  v11 = (v10 + 4 * (a2[4] & 0x3FFLL));
  v12 = a2[5] + v6;
  v13 = (v8 + 8 * (v12 >> 10));
  v14 = &(*v13)[v12 & 0x3FF];
  if (v7 == v12 >> 10)
  {
    for (; v11 != v14; ++v11)
    {
      v15 = *v11;
      sub_22564(&v31, " ", 1);
      std::ostream::operator<<();
    }

    goto LABEL_18;
  }

  v17 = v10 + 4096;
  if ((v10 + 4096) != v11)
  {
    goto LABEL_11;
  }

LABEL_12:
  v19 = (v9 + 1);
  if (v9 + 1 != v13)
  {
    do
    {
      v20 = 0;
      v21 = *v19;
      do
      {
        v22 = v21[v20];
        sub_22564(&v31, " ", 1);
        std::ostream::operator<<();
        ++v20;
      }

      while (v20 != 1024);
      ++v19;
    }

    while (v19 != v13);
  }

  for (i = *v13; i != v14; ++i)
  {
    v24 = *i;
    sub_22564(&v31, " ", 1);
    std::ostream::operator<<();
  }

LABEL_18:
  if ((v38 & 0x10) != 0)
  {
    v26 = v37;
    if (v37 < v34)
    {
      v37 = v34;
      v26 = v34;
    }

    locale = v33[4].__locale_;
  }

  else
  {
    if ((v38 & 8) == 0)
    {
      v25 = 0;
      HIBYTE(v30) = 0;
      goto LABEL_31;
    }

    locale = v33[1].__locale_;
    v26 = v33[3].__locale_;
  }

  v25 = v26 - locale;
  if ((v26 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  if (v25 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v30) = v26 - locale;
  if (v25)
  {
    memmove(&__dst, locale, v25);
  }

LABEL_31:
  *(&__dst.__vftable + v25) = 0;
  if (*(a1 + 39) < 0)
  {
    operator delete(v5->__vftable);
  }

  *v5 = __dst;
  v5[1].__vftable = v30;
  if (v36 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v33);
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_241904(_Unwind_Exception *a1)
{
  sub_240A84((v1 + 40));
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

void sub_24196C(uint64_t a1)
{
  *a1 = off_6BA900;
  sub_240A84((a1 + 40));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  std::runtime_error::~runtime_error(a1);
}

uint64_t sub_2419D0(uint64_t a1)
{
  result = a1 + 16;
  if (*(a1 + 39) < 0)
  {
    return *result;
  }

  return result;
}

void sub_2419EC(uint64_t a1)
{
  *a1 = off_6BA900;
  sub_240A84((a1 + 40));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_241A64(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_241B84(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_241BD4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_241DE0(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_241CD8(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_241DE0(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_241DE0(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_241E28(uint64_t a1, uint64_t *__p)
{
  v4 = *__p;
  v3 = __p[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  --*(a1 + 16);
  v5 = __p[3];
  if (v5)
  {
    sub_1A8C0(v5);
  }

  operator delete(__p);
}

void sub_241E80(void *a1)
{
  if (!*a1)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "ObjectDestructionManager.h";
      v11 = 1024;
      v12 = 156;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inObject.get() is NULL]: Null object", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Null object");
  }

  v2 = a1[1];
  if (!v2 || *(v2 + 8))
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "ObjectDestructionManager.h";
        v11 = 1024;
        v12 = 157;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Shared object has other references!", &v9, 0x12u);
      }
    }
  }

  v3 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  if (v3)
  {
    sub_1A8C0(v3);
  }
}

uint64_t **sub_242030(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_87980(v1);
    operator delete();
  }

  return result;
}

void sub_242080(uint64_t a1)
{
  v1 = a1;
  sub_8703C();
  operator new();
}

void sub_2421FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  sub_87980(&a10);
  sub_242030(&a9);
  _Unwind_Resume(a1);
}

void sub_242248(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_2422E0(&v4, *(a1 + 24), (a1 + 16));
  v3 = std::string::insert(&v4, 0, "Destroying core object(s): ", 0x1BuLL);
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2422C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2422E0(std::string *a1, void *a2, void *a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      v7 = a2[2];
      v8 = a2[3];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_23148(__p, v7 + 2);
      v9 = (v12 & 0x80u) == 0 ? __p : __p[0];
      v10 = (v12 & 0x80u) == 0 ? v12 : __p[1];
      std::string::append(a1, v9, v10);
      if ((v12 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p[0]);
      if (v8)
      {
        goto LABEL_13;
      }

LABEL_14:
      a2 = a2[1];
      if (a2 == a3)
      {
        return std::string::append(a1, " }", 2uLL);
      }

      std::string::append(a1, ", ", 2uLL);
    }

    if (!v8)
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_1A8C0(v8);
    goto LABEL_14;
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_2423EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_242438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = qword_70A338;
  if (atomic_load(qword_70A338))
  {
    v6 = atomic_load(qword_70A338);
    if (v6 != pthread_self())
    {
      v15 = sub_5544(14);
      v16 = *v15;
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ObjectDestructionManager.h";
          v19 = 1024;
          v20 = 124;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: mExecutionThread has been set outside of this command's execution", buf, 0x12u);
        }
      }
    }
  }

  v7 = atomic_load(v4);
  if (v7 == pthread_self())
  {
    v8 = sub_5544(14);
    v9 = sub_5544(16);
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
        goto LABEL_10;
      }
    }

    if ((v11 & v12) == 0)
    {
      v8 = v9;
    }

LABEL_10:
    v13 = *v8;
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "ObjectDestructionManager.h";
      v19 = 1024;
      v20 = 127;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Called recursively", buf, 0x12u);
    }
  }

  v17[0] = off_6C0778;
  v17[1] = v4;
  v17[3] = v17;
  sub_51FD0(buf, 0, v17);
  sub_4C70(v17);
  atomic_store(pthread_self(), v4);
  sub_240DF0(v4, (a1 + 16), 0);
  sub_21991C(a2, 1920099684);
  return sub_53BA4(buf);
}

void sub_24266C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2426C4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6C0778;
  a2[1] = v2;
  return result;
}

void sub_242758(uint64_t *a1)
{
  sub_242790(a1);

  operator delete();
}

uint64_t *sub_242790(uint64_t *a1)
{
  v2 = a1 + 2;
  if (a1[4])
  {
    v3 = sub_5544(14);
    v4 = sub_5544(16);
    v5 = 0;
    *__p = 0x100000002;
    v6 = *(v3 + 8);
    while (1)
    {
      v7 = *&__p[v5];
      if (((v6 & v7) != 0) != ((*(v4 + 8) & v7) != 0))
      {
        break;
      }

      v5 += 4;
      if (v5 == 8)
      {
        goto LABEL_8;
      }
    }

    if ((v6 & v7) == 0)
    {
      v3 = v4;
    }

LABEL_8:
    v8 = *v3;
    if (v8)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = a1[3];
        memset(&v16, 0, sizeof(v16));
        std::string::append(&v16, "{ ", 2uLL);
        if (v9 != v2)
        {
          while (1)
          {
            v10 = v9[2];
            v11 = v9[3];
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_23148(__p, v10 + 2);
            v12 = SBYTE3(v19) >= 0 ? __p : *__p;
            v13 = SBYTE3(v19) >= 0 ? BYTE3(v19) : *&__p[8];
            std::string::append(&v16, v12, v13);
            if ((SBYTE3(v19) & 0x80000000) == 0)
            {
              break;
            }

            operator delete(*__p);
            if (v11)
            {
              goto LABEL_21;
            }

LABEL_22:
            v9 = v9[1];
            if (v9 == v2)
            {
              goto LABEL_26;
            }

            std::string::append(&v16, ", ", 2uLL);
          }

          if (!v11)
          {
            goto LABEL_22;
          }

LABEL_21:
          sub_1A8C0(v11);
          goto LABEL_22;
        }

LABEL_26:
        std::string::append(&v16, " }", 2uLL);
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &v16;
        }

        else
        {
          v14 = v16.__r_.__value_.__r.__words[0];
        }

        *__p = 136315650;
        *&__p[4] = "ObjectDestructionManager.h";
        *&__p[12] = 1024;
        *&__p[14] = 115;
        v18 = 2080;
        v19 = v14;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Destructor called without an intervening call to Execute. Contained objects (%s) will be leaked!.", __p, 0x1Cu);
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  sub_87980(v2);
  return a1;
}

void sub_2429D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1CC130(exception_object);
}

uint64_t *sub_242A48(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 8) == 1)
    {
      sub_47BD8(*v1);
    }

    operator delete();
  }

  return result;
}

void sub_242AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5544(7);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
  {
    v6 = *a2;
    v7 = a2 + 8;
    if (*(a2 + 31) < 0)
    {
      v7 = *(a2 + 8);
    }

    *buf = 136315906;
    *&buf[4] = "DeviceManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 293;
    v79 = 1024;
    *v80 = v6;
    *&v80[4] = 2080;
    *&v80[6] = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Creating Device ID: %u with UID: %s", buf, 0x22u);
  }

  v8 = a1 + 296;
  v9 = *(a1 + 304);
  if (v9 == a1 + 296)
  {
    goto LABEL_15;
  }

  v10 = *a2;
  while ((*(**(v9 + 16) + 120))(*(v9 + 16)) != v10)
  {
    v9 = *(v9 + 8);
    if (v9 == v8)
    {
      goto LABEL_15;
    }
  }

  if (v9 == v8)
  {
LABEL_15:
    v13 = *a2;
    v14 = (a2 + 8);
    v15 = *(a2 + 31);
    if ((v15 & 0x80) == 0)
    {
      if (*(a2 + 31) > 9u)
      {
        if (*(a2 + 31) > 0xBu)
        {
          if (v15 != 12)
          {
            if (v15 != 14)
            {
              if (v15 != 16)
              {
                goto LABEL_190;
              }

              if (*v14 != 0x6964754120425355 || *(a2 + 16) != 0x74757074754F206FLL)
              {
                if (*v14 != 0x6E6F53656C707041 || *(a2 + 16) != 0x5053446472696267)
                {
                  goto LABEL_190;
                }

LABEL_87:
                operator new();
              }

LABEL_182:
              operator new();
            }

            if (*v14 != 0x646E616265736142 || *(a2 + 14) != 0x6563696F5620646ELL)
            {
LABEL_190:
              if (sub_29C7A0((a2 + 8), "Penrose"))
              {
                goto LABEL_191;
              }

              if (sub_29C7A0((a2 + 8), "Halogen"))
              {
                operator new();
              }

              v62 = sub_29C7A0((a2 + 8), "MaggieDebug");
              if (v62 || (v62 = sub_29C7A0((a2 + 8), "AudioDebug")) || (v62 = sub_29C7A0((a2 + 8), "AudioDebug2")))
              {
                kind = caulk::build::detail::get_kind(v62);
                if ((kind & 1) != 0 || (caulk::build::detail::get_kind(kind) & 2) != 0)
                {
                  operator new();
                }
              }

              if (sub_29C7A0((a2 + 8), "DSP Debug1") || sub_29C7A0((a2 + 8), "DSP Debug2"))
              {
                operator new();
              }

              v64 = sub_29C7A0((a2 + 8), "Haptic Debug");
              if (v64)
              {
                v65 = caulk::build::detail::get_kind(v64);
                if ((v65 & 1) != 0 || (caulk::build::detail::get_kind(v65) & 2) != 0)
                {
                  operator new();
                }
              }

              if (sub_29C7A0((a2 + 8), "Virtual eARC"))
              {
                operator new();
              }

              if (sub_29C7A0((a2 + 8), "Squid Audio"))
              {
                operator new();
              }

              if (sub_29C7A0((a2 + 8), "HPMic"))
              {
                operator new();
              }

              if (sub_29C7A0((a2 + 8), "Receiver"))
              {
                operator new();
              }

              if (sub_29C7A0((a2 + 8), "LPMicInjection"))
              {
                operator new();
              }

              *&inAddress.mSelector = 0x676C6F627472616ELL;
              inAddress.mElement = 0;
              ioDataSize = 4;
              outData = 0;
              PropertyData = AudioObjectGetPropertyData(v13, &inAddress, 0, 0, &ioDataSize, &outData);
              if (PropertyData)
              {
                v67 = *sub_5544(7);
                v72 = 0u;
                if (v67 && os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                {
                  sub_22170(__p, PropertyData);
                  v68 = v74 >= 0 ? __p : __p[0];
                  v69 = *(a2 + 31) >= 0 ? a2 + 8 : *(a2 + 8);
                  *buf = 136316418;
                  *&buf[4] = "DeviceFactory_Aspen.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 210;
                  v79 = 1024;
                  *v80 = PropertyData;
                  *&v80[4] = 2080;
                  *&v80[6] = v68;
                  v81 = 1024;
                  v82 = v13;
                  v83 = 2080;
                  v84 = v69;
                  _os_log_impl(&dword_0, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d ('%s') getting transport type for PhysicalDevice with AudioObjectID %u and UID %s", buf, 0x32u);
                  if (v74 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }
              }

              else
              {
                v72 = 0u;
                if (outData <= 1835169138)
                {
                  if (outData <= 1667463019)
                  {
                    if (outData == 1634300528)
                    {
                      operator new();
                    }

                    if (outData == 1651275109)
                    {
                      v71 = sub_2F1794(v13);
                      sub_29CF54(__p, v71);
                    }

                    if (outData != 1667463012)
                    {
                      goto LABEL_192;
                    }
                  }

                  else
                  {
                    if (outData > 1685090931)
                    {
                      if (outData == 1685090932 || outData == 1751412073)
                      {
                        operator new();
                      }

                      goto LABEL_192;
                    }

                    if (outData != 1667463020)
                    {
                      if (outData == 1668506482 && sub_311548())
                      {
                        operator new();
                      }

                      goto LABEL_192;
                    }
                  }

                  operator new();
                }

                if (outData <= 1937011306)
                {
                  if (outData == 1835169139)
                  {
                    operator new();
                  }

                  if (outData == 1853189228)
                  {
                    operator new();
                  }

                  v70 = 1885563168;
                }

                else
                {
                  if (outData > 1970496031)
                  {
                    if (outData == 1970496032)
                    {
                      operator new();
                    }

                    if (outData == 1986818665)
                    {
                      operator new();
                    }

                    goto LABEL_192;
                  }

                  if (outData == 1937011307)
                  {
                    operator new();
                  }

                  v70 = 1953002862;
                }

                if (outData == v70)
                {
                  operator new();
                }
              }

LABEL_192:
              if (!v72)
              {
                v55 = sub_5544(7);
                v56 = *v55;
                if (*v55)
                {
                  if (os_log_type_enabled(*v55, OS_LOG_TYPE_INFO))
                  {
                    if (*(a2 + 31) >= 0)
                    {
                      v57 = a2 + 8;
                    }

                    else
                    {
                      v57 = *(a2 + 8);
                    }

                    *buf = 136315906;
                    *&buf[4] = "DeviceFactory_Aspen.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 303;
                    v79 = 2080;
                    *v80 = v57;
                    *&v80[8] = 1024;
                    *&v80[10] = v13;
                    _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "%25s:%-5d Could not create PhysicalDevice from UID: %s, AudioObjectID: %u", buf, 0x22u);
                  }
                }
              }

              if (v72)
              {
                sub_12A818();
              }

              v58 = sub_5544(7);
              v59 = *v58;
              if (*v58 && os_log_type_enabled(*v58, OS_LOG_TYPE_INFO))
              {
                v60 = *a2;
                if (*(a2 + 31) >= 0)
                {
                  v61 = a2 + 8;
                }

                else
                {
                  v61 = *(a2 + 8);
                }

                *buf = 136315906;
                *&buf[4] = "DeviceManager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 339;
                v79 = 1024;
                *v80 = v60;
                *&v80[4] = 2080;
                *&v80[6] = v61;
                _os_log_impl(&dword_0, v59, OS_LOG_TYPE_INFO, "%25s:%-5d PhysicalDevice to add could not be created. Skipping. ID: %u; UID: %s.", buf, 0x22u);
              }

              if (*(&v72 + 1))
              {
                sub_1A8C0(*(&v72 + 1));
              }

              return;
            }

LABEL_183:
            operator new();
          }

          if (*v14 != 0x754F6E6966667550 || *(a2 + 16) != 1953853556)
          {
            goto LABEL_190;
          }

LABEL_103:
          operator new();
        }

        if (v15 != 10)
        {
          if (*v14 != 0x6E496E6966667550 || *(a2 + 11) != 0x7475706E496E6966)
          {
            if (*v14 != 0x6964754120504F41 || *(a2 + 11) != 0x312D6F6964754120)
            {
              if (*v14 != 0x206C617469676944 || *(a2 + 11) != 0x63694D206C617469)
              {
                goto LABEL_190;
              }

              goto LABEL_178;
            }

LABEL_179:
            operator new();
          }

LABEL_180:
          operator new();
        }

        v24 = *(a2 + 16);
        v25 = *v14 == 0x4D6C617469676944;
        v26 = 25449;
LABEL_173:
        if (!v25 || v24 != v26)
        {
          goto LABEL_190;
        }

LABEL_178:
        operator new();
      }

      if (*(a2 + 31) <= 6u)
      {
        if (v15 != 3)
        {
          if (v15 != 5)
          {
            goto LABEL_190;
          }

          if (*v14 != 1701080899 || *(a2 + 12) != 99)
          {
            goto LABEL_190;
          }

LABEL_115:
          operator new();
        }

LABEL_172:
        v24 = *(a2 + 10);
        v25 = *v14 == 26957;
        v26 = 99;
        goto LABEL_173;
      }

      if (v15 != 7)
      {
        if (v15 != 8)
        {
          goto LABEL_190;
        }

        if (*v14 != 0x726F746175746341)
        {
          if (*v14 != 0x4D41444920425355)
          {
            goto LABEL_190;
          }

LABEL_60:
          operator new();
        }

        goto LABEL_221;
      }

      if (*v14 != 1634037843 || *(a2 + 11) != 1919249249)
      {
        if (*v14 == 909201480 && *(a2 + 11) == 1667845430)
        {
          goto LABEL_179;
        }

        goto LABEL_166;
      }

LABEL_181:
      operator new();
    }

    v18 = *(a2 + 16);
    if (v18 <= 10)
    {
      switch(v18)
      {
        case 5:
          if (**v14 == 1701080899 && *(*v14 + 4) == 99)
          {
            goto LABEL_115;
          }

          break;
        case 7:
          v45 = *v14;
          if (**v14 == 1634037843 && *(*v14 + 3) == 1919249249)
          {
            goto LABEL_181;
          }

          v47 = *v45;
          v48 = *(v45 + 3);
          if (v47 == 909201480 && v48 == 1667845430)
          {
            goto LABEL_179;
          }

          if ((v15 & 0x80) == 0)
          {
LABEL_164:
            if (v15 == 3)
            {
              goto LABEL_172;
            }

            if (v15 != 7)
            {
              goto LABEL_190;
            }

LABEL_166:
            v50 = *v14 == 1802985800 && *(a2 + 11) == 1735289195;
            v44 = (a2 + 8);
            if (v50)
            {
              goto LABEL_191;
            }

            goto LABEL_186;
          }

          break;
        case 8:
          if (**v14 == 0x4D41444920425355)
          {
            goto LABEL_60;
          }

          if (**v14 == 0x726F746175746341)
          {
LABEL_221:
            operator new();
          }

          break;
      }
    }

    else if (v18 > 13)
    {
      if (v18 == 14)
      {
        if (**v14 == 0x646E616265736142 && *(*v14 + 6) == 0x6563696F5620646ELL)
        {
          goto LABEL_183;
        }
      }

      else if (v18 == 16)
      {
        v27 = *v14;
        if (**v14 == 0x6964754120425355 && *(*v14 + 8) == 0x74757074754F206FLL)
        {
          goto LABEL_182;
        }

        v30 = *v27;
        v29 = v27[1];
        if (v30 == 0x6E6F53656C707041 && v29 == 0x5053446472696267)
        {
          goto LABEL_87;
        }
      }
    }

    else if (v18 == 11)
    {
      if (**v14 == 0x6E496E6966667550 && *(*v14 + 3) == 0x7475706E496E6966)
      {
        goto LABEL_180;
      }

      if (**v14 == 0x6964754120504F41 && *(*v14 + 3) == 0x312D6F6964754120)
      {
        goto LABEL_179;
      }
    }

    else if (v18 == 12 && **v14 == 0x754F6E6966667550 && *(*v14 + 8) == 1953853556)
    {
      goto LABEL_103;
    }

    if (*(a2 + 16) == 11 && **v14 == 0x206C617469676944 && *(*v14 + 3) == 0x63694D206C617469)
    {
      goto LABEL_178;
    }

    if (*(a2 + 16) != 10)
    {
      goto LABEL_141;
    }

    if (**v14 == 0x4D6C617469676944 && *(*v14 + 8) == 25449)
    {
      goto LABEL_178;
    }

    if ((v15 & 0x80) != 0)
    {
LABEL_141:
      if (*(a2 + 16) == 3)
      {
        if (**v14 == 26957 && *(*v14 + 2) == 99)
        {
          goto LABEL_178;
        }

        if ((v15 & 0x80) == 0)
        {
          goto LABEL_190;
        }
      }

      if (*(a2 + 16) != 7)
      {
        goto LABEL_184;
      }

      if (**v14 == 1802985800 && *(*v14 + 3) == 1735289195)
      {
        goto LABEL_191;
      }

      if ((v15 & 0x80) != 0)
      {
LABEL_184:
        if (*(a2 + 16) != 7)
        {
          goto LABEL_190;
        }

        v44 = *v14;
      }

      else
      {
        v44 = (a2 + 8);
        if (v15 != 7)
        {
          goto LABEL_190;
        }
      }

LABEL_186:
      v52 = *v44;
      v53 = *(v44 + 3);
      if (v52 != 1667853382 || v53 != 1919249251)
      {
        goto LABEL_190;
      }

LABEL_191:
      operator new();
    }

    goto LABEL_164;
  }

  v11 = sub_5544(7);
  v12 = *v11;
  if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 301;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PhysicalDevice to add already exists in the DeviceManager database", buf, 0x12u);
  }
}

void sub_2446EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    operator delete();
  }

  _Unwind_Resume(a1);
}

os_signpost_id_t *sub_244F40(os_signpost_id_t *a1)
{
  v2 = sub_5544(43);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136315650;
        v8 = "SignpostUtilities.h";
        v9 = 1024;
        v10 = 105;
        v11 = 2080;
        v12 = "kHandleDeviceArrival";
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ending measurement for signpost %s", &v7, 0x1Cu);
      }
    }
  }

  if (*a1)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v4 = *a1;
    if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        LOWORD(v7) = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v4, "VA_HandleDeviceArrival", "", &v7, 2u);
      }
    }
  }

  return a1;
}

void sub_2450D0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_2450DC()
{
  result = qword_6E71D8;
  if (!qword_6E71D8)
  {
    v1 = sub_5544(14);
    v2 = *v1;
    if (*v1)
    {
      if (os_log_type_enabled(*v1, OS_LOG_TYPE_ERROR))
      {
        v4 = 136315394;
        v5 = "DeviceManager.cpp";
        v6 = 1024;
        v7 = 112;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [sDeviceManager is NULL]: sDeviceManager is NULL!", &v4, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "sDeviceManager is NULL!");
  }

  return result;
}

uint64_t sub_2451FC(uint64_t a1)
{
  sub_26C0(a1);
  v2 = *(a1 + 320);
  sub_3174(a1);
  return v2;
}

void sub_245248(uint64_t a1)
{
  sub_13BFA8(a1);

  operator delete();
}

void sub_24529C(uint64_t a1)
{
  sub_1405C0((a1 - 80));

  operator delete();
}

void sub_245300(void *a1)
{
  sub_1405C0(a1);

  operator delete();
}

void sub_245338(caulk::build::detail *a1)
{
  kind = caulk::build::detail::get_kind(a1);
  if ((kind & 1) == 0 && (caulk::build::detail::get_kind(kind) & 2) == 0)
  {
    return;
  }

  sub_CE168();
  sub_53E8(__p, "DSP Debug1");
  sub_CDEB8(&v11, __p);
  v2 = v12;
  if (v12)
  {
    v3 = std::__shared_weak_count::lock(v12);
    if (v3)
    {
      v4 = v11;
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

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  sub_CE168();
  sub_53E8(__p, "DSP Debug2");
  sub_CDEB8(&v11, __p);
  v5 = v12;
  if (v12)
  {
    v6 = std::__shared_weak_count::lock(v12);
    if (v6)
    {
      v7 = v11;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_weak(v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if ((v10 & 0x80000000) == 0)
  {
    if (!v4)
    {
      goto LABEL_29;
    }

LABEL_21:
    if (v7)
    {
      v8 = qword_7001B8;
      if (qword_7001B8)
      {
        __p[1] = qword_7001C0;
        if (qword_7001C0)
        {
          atomic_fetch_add_explicit((qword_7001C0 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = v4;
        v12 = v3;
        if (v3)
        {
          atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_469CFC(v8, &v11);
      }

      sub_46613C();
    }

    goto LABEL_29;
  }

  operator delete(__p[0]);
  if (v4)
  {
    goto LABEL_21;
  }

LABEL_29:
  if (v6)
  {
    sub_1A8C0(v6);
  }

  if (v3)
  {
    sub_1A8C0(v3);
  }
}

void sub_24553C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16)
  {
    sub_1A8C0(v16);
  }

  if (v15)
  {
    sub_1A8C0(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_2455B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x2455B0);
}

BOOL sub_2455D0(uint64_t a1)
{
  if (*(a1 + 471) < 0)
  {
    sub_54A0(&v5, *(a1 + 448), *(a1 + 456));
  }

  else
  {
    v5 = *(a1 + 448);
    v6 = *(a1 + 464);
  }

  if (SHIBYTE(v6) < 0)
  {
    v2 = *(&v5 + 1) == 10 && *v5 == 0x7562654420505344 && *(v5 + 8) == 12647;
    operator delete(v5);
  }

  else
  {
    return SHIBYTE(v6) == 10 && v5 == 0x7562654420505344 && WORD4(v5) == 12647;
  }

  return v2;
}

void sub_2456A4(uint64_t a1, unsigned int **a2, int a3)
{
  v3 = *(a1 + 560);
  if (v3)
  {
    sub_408A74(v3, a2, a3);
  }

  else
  {
    sub_315494(0, a2);
  }
}

void sub_2456B8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 471) < 0)
  {
    sub_54A0(__p, *(a1 + 448), *(a1 + 456));
  }

  else
  {
    *__p = *(a1 + 448);
    *&__p[16] = *(a1 + 464);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    if (*&__p[8] != 10)
    {
      operator delete(*__p);
LABEL_28:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      return;
    }

    v7 = **__p != 0x7562654420505344 || *(*__p + 8) != 12647;
    operator delete(*__p);
    if (v7)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (__p[23] != 10)
    {
      goto LABEL_28;
    }

    if (*__p != 0x7562654420505344 || *&__p[8] != 12647)
    {
      goto LABEL_28;
    }
  }

  v8 = *(a2 + 144);
  if (v8 != 1886216809 && v8 != 1886545251)
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "Device_ExtendedHapticDebug_Aspen.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 179;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to get trim gains on port that is not internal mic or receiver", __p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempt to get trim gains on port that is not internal mic or receiver");
  }

  sub_CE168();
  sub_53E8(__p, "Codec");
  sub_CDEB8(&v20, __p);
  v9 = v21;
  if (v21)
  {
    v10 = std::__shared_weak_count::lock(v21);
    if (v10)
    {
      v11 = v20;
    }

    else
    {
      v11 = 0;
    }

    std::__shared_weak_count::__release_weak(v9);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_35:
    sub_CE168();
    sub_53E8(__p, "Receiver");
    sub_CDEB8(&v20, __p);
    v13 = v21;
    if (v21)
    {
      v12 = std::__shared_weak_count::lock(v21);
      if (v12)
      {
        v11 = v20;
      }

      else
      {
        v11 = 0;
      }

      if (!v10)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      if (!v10)
      {
        goto LABEL_41;
      }
    }

    sub_1A8C0(v10);
LABEL_41:
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (!v11)
    {
      v14 = sub_5544(14);
      v15 = *v14;
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "Device_ExtendedHapticDebug_Aspen.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 184;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [ioDevice is NULL]: could not get io device", __p, 0x12u);
      }

      v16 = __cxa_allocate_exception(0x10uLL);
      *v16 = &off_6DDDD0;
      v16[2] = 2003329396;
    }

    goto LABEL_46;
  }

  if (!v11)
  {
    goto LABEL_35;
  }

LABEL_33:
  v12 = v10;
LABEL_46:
  (*(*v11 + 288))(v11, a2);
  if (v12)
  {
    sub_1A8C0(v12);
  }
}

void *sub_245B00@<X0>(void *result@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v4 = result[70];
  if (v4)
  {
    return sub_40AC30(a3, v4, a2);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

uint64_t sub_245B20(uint64_t a1, unsigned int a2)
{
  if (a2 != 1885433443 && a2 != 1751409257)
  {
    v4 = sub_5544(18);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v6 = v12 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v14 = "Device_ExtendedHapticDebug_Aspen.cpp";
      v15 = 1024;
      v16 = 149;
      v17 = 2080;
      v18 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7)
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "Device_ExtendedHapticDebug_Aspen.cpp";
        v15 = 1024;
        v16 = 150;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType");
  }

  return 0;
}

void sub_246294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_weak(v47);
  }

  a42 = &a27;
  sub_72C14(&a42);
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(a1);
}

void sub_2463B8(os_unfair_lock_s *a1)
{
  v2 = sub_8703C();
  (*(*v2 + 72))(v2, sub_2469D4, a1);
  v3 = sub_8703C();
  (*(*v3 + 48))(v3, sub_2469D4, a1);

  sub_24645C(a1);
}

void sub_24645C(os_unfair_lock_s *a1)
{
  LODWORD(v27) = 1885433443;
  v25[1] = 0;
  v26 = 0;
  v25[0] = 0;
  sub_4625C(v25, &v27, &v27 + 4, 1uLL);
  *buf = *v25;
  *&buf[16] = v26;
  strcpy(&buf[24], "cwdv");
  v30 = 0;
  v31 = 3;
  v33[0] = 0;
  v33[1] = 0;
  v32 = v33;
  v34 = 44739242;
  v36 = 0;
  v37 = 0;
  __p = 0;
  sub_161C7C(&v19, a1, buf);
  sub_B0484(&v22, &v19);
  sub_65310(&v19);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v33[0]);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (v24 >= 2)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      sub_23148(v25, a1 + 2);
      v14 = v26 >= 0 ? v25 : v25[0];
      *buf = 136315650;
      *&buf[4] = "Device_ExtendedHapticDebug_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 245;
      *&buf[18] = 2080;
      *&buf[20] = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Encountered more than one ANC port in device %s", buf, 0x1Cu);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Encountered more than one ANC port in device %s");
  }

  if (v24)
  {
    v3 = *(v23 + 16);
    v2 = *(v23 + 24);
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v3)
    {
      v16 = sub_5544(14);
      v17 = *v16;
      if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Device_ExtendedHapticDebug_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 263;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Encountered a NULL ANC port", buf, 0x12u);
      }

      v18 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v18, "Encountered a NULL ANC port");
    }

    v4 = (*(*v3 + 152))(v3);
    (*(*v3 + 512))(v3);
    if (v4 != (*(*v3 + 152))(v3))
    {
      v27 = v3;
      v28 = v2;
      if (v2)
      {
        atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_22ED54(&v19, &v27, 1);
      *buf = 1852011125;
      *&buf[8] = &buf[8];
      *&buf[16] = &buf[8];
      *&buf[24] = 0;
      v5 = v21;
      if (v21)
      {
        v7 = v19;
        v6 = v20;
        v8 = *(v19 + 8);
        v9 = *v20;
        *(v9 + 8) = v8;
        *v8 = v9;
        v10 = *&buf[8];
        *(*&buf[8] + 8) = v6;
        *v6 = v10;
        *&buf[8] = v7;
        *(v7 + 8) = &buf[8];
        *&buf[24] = v5;
        v21 = 0;
      }

      sub_246958(v25, buf, 1);
      sub_65310(&buf[8]);
      sub_65310(&v19);
      if (v28)
      {
        std::__shared_weak_count::__release_weak(v28);
      }

      v11 = sub_809C0();
      sub_11ABFC(v11, v25, 0);
      sub_D169C(v25[1]);
    }

    if (v2)
    {
      sub_1A8C0(v2);
    }
  }

  sub_87980(&v22);
}

void *sub_246958(void *a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_11D6C8(a1, v4, *a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void sub_2469D4(os_unfair_lock_s *a1)
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
        v5 = "Device_ExtendedHapticDebug_Aspen.cpp";
        v6 = 1024;
        v7 = 236;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: SystemSettingsManager passed clientData as NULL.", &v4, 0x12u);
      }
    }
  }

  sub_24645C(a1);
}

void sub_246B5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E5808(va);
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_246B88(uint64_t a1)
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

BOOL sub_246C08()
{
  v0 = sub_8703C();
  if ((*(*v0 + 64))(v0))
  {
    return 0;
  }

  v2 = sub_8703C();
  return (*(*v2 + 40))(v2) == 560488803;
}

void sub_246D38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DC030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_246DB0(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = (a1 + 56);
  sub_1E5808(&v2);
}

void sub_246DF8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DC8A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

unsigned __int8 *sub_246E6C(uint64_t a1)
{
  if (*(a1 + 560))
  {
    v2 = sub_8703C();
    (*(*v2 + 80))(v2, sub_2469D4);
    v3 = sub_8703C();
    (*(*v3 + 56))(v3, sub_2469D4);
  }

  return sub_4B08A4(a1);
}

void sub_246F10(void *a1)
{
  sub_246F48(a1);

  operator delete();
}

uint64_t sub_246F48(void *a1)
{
  v2 = a1[70];
  a1[70] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_1EE4C8(a1);
}

uint64_t sub_246FB0(uint64_t a1, UInt32 a2, __int128 *a3)
{
  *sub_2E5B00(a1, a2, a3) = off_6BAAB0;
  v13 = a2;
  *&inAddress.mSelector = 0x696E707473736323;
  inAddress.mElement = 0;
  sub_127F10(&v7, &v13, &inAddress, 0, 0);
  if (LOBYTE(v11[0]) == 1)
  {
    if (v8 != v9)
    {
      v5 = v8;
      do
      {
        if (*v5 == 1095648109)
        {
          if (v8)
          {
            operator delete(v8);
          }

          v7 = &v8;
          v8 = 0;
          v11[0] = 0;
          v11[1] = 0;
          v9 = 0;
          v10 = v11;
          sub_407194(&v7, 0x70616E63u, 1095648109);
          sub_407194(&v7, 0x70616E63u, 1095648112);
          sub_40736C(&v7, 0x696D6963u, 1885433443);
          sub_40736C(&v7, 0x736D6963u, 1885433443);
          sub_40736C(&v7, 0x666D6963u, 1885433443);
          sub_40736C(&v7, 0x414E436Du, 1885433443);
          sub_40736C(&v7, 0x414E434Du, 1885433443);
          sub_40736C(&v7, 0x414E4370u, 1885433443);
          operator new();
        }

        ++v5;
      }

      while (v5 != v9);
    }

    if (v8)
    {
      operator delete(v8);
    }
  }

  *(a1 + 560) = 0;
  return a1;
}

uint64_t sub_2471E4(uint64_t a1)
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

void sub_247264(void *a1)
{
  *a1 = off_6BB158;
  sub_2471E4((a1 + 1));

  operator delete();
}

void *sub_2472C8(void *a1)
{
  *a1 = off_6BB158;
  sub_2471E4((a1 + 1));
  return a1;
}

uint64_t sub_24730C(uint64_t a1, AudioObjectID a2)
{
  v29 = off_6DD1C8;
  v32 = &v29;
  sub_70A1C(&inAddress, &v29);
  sub_70ABC(&v29);
  sub_70B40(&v27, &inAddress);
  v24[0] = 0;
  v24[1] = 0;
  sub_70B40(v25, &v27);
  v23 = v24;
  sub_70ABC(&v27);
  sub_70ABC(&inAddress);
  v18 = a2;
  *&inAddress.mSelector = 0x696E707461766D64;
  inAddress.mElement = 0;
  sub_6A8C4(&v29, &v18, &inAddress);
  if (v31)
  {
    v4 = v30;
    v27 = v30;
    v28 = 1;
    v5 = *sub_247A84(&v23, &inAddress, "dmvatpni");
    if (!v5)
    {
      operator new();
    }

    if (*(v5 + 64) == 1)
    {
      v6 = *(v5 + 48);
      *(v5 + 48) = v4;
      if (v4)
      {
        CFRetain(v4);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    else
    {
      sub_247858(v5 + 48);
      sub_247A38((v5 + 48), v27);
      *(v5 + 64) = 1;
      if ((v28 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    if (v27)
    {
      CFRelease(v27);
    }
  }

LABEL_12:
  v20[0] = 0;
  v20[1] = 0;
  v19 = 0;
  sub_70B40(v21, v25);
  v19 = v20;
  v7 = v23;
  if (v23 != v24)
  {
    do
    {
      v8 = v20[0];
      if (v19 == v20)
      {
        v10 = v20;
        if (!v20[0])
        {
LABEL_21:
          v27 = v20;
LABEL_26:
          operator new();
        }
      }

      else
      {
        v9 = v20;
        if (v20[0])
        {
          do
          {
            v10 = v8;
            v8 = v8[1];
          }

          while (v8);
        }

        else
        {
          do
          {
            v10 = v9[2];
            v11 = *v10 == v9;
            v9 = v10;
          }

          while (v11);
        }

        if (!v22)
        {
          sub_46A74();
        }

        if (!(*(*v22 + 48))(v22, v10 + 4, v7 + 4))
        {
          v12 = sub_247A84(&v19, &v27, (v7 + 4));
          goto LABEL_25;
        }

        if (!v20[0])
        {
          goto LABEL_21;
        }
      }

      v27 = v10;
      v12 = v10 + 1;
LABEL_25:
      if (!*v12)
      {
        goto LABEL_26;
      }

      v13 = v7[1];
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
          v14 = v7[2];
          v11 = *v14 == v7;
          v7 = v14;
        }

        while (!v11);
      }

      v7 = v14;
    }

    while (v14 != v24);
  }

  sub_247804(v24[0]);
  sub_70ABC(v25);
  v15 = *(a1 + 32);
  if (!v15)
  {
    sub_46A74();
  }

  v16 = (*(*v15 + 48))(v15, &v19);
  sub_247804(v20[0]);
  sub_70ABC(v21);
  return v16;
}

void sub_24775C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_247804(void *a1)
{
  if (a1)
  {
    sub_247804(*a1);
    sub_247804(a1[1]);
    sub_247858((a1 + 6));

    operator delete(a1);
  }
}

uint64_t sub_247858(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 != -1)
  {
    result = (off_6BAD28[v2])(&v3, result);
  }

  *(v1 + 16) = -1;
  return result;
}

void sub_2478B8(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t sub_2478E0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_247858(v2 + 48);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_24792C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  sub_247858(a1);
  v4 = *(a2 + 16);
  if (v4 != -1)
  {
    v6 = a1;
    (off_6BAD40[v4])(&v6, a2);
    *(a1 + 16) = v4;
  }

  return a1;
}

void *sub_2479B4(void **a1, uint64_t a2)
{
  result = sub_224064(*a1, *(a2 + 8));
  *result = &off_6D3210;
  return result;
}

void sub_2479F0(void *a1)
{
  sub_8AAAC(a1);

  operator delete();
}

void *sub_247A38(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

void *sub_247A84(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = *(a1 + 48);
    if (!v7)
    {
LABEL_10:
      sub_46A74();
    }

    while (1)
    {
      if ((*(*v7 + 48))(v7, a3, v5 + 4))
      {
        v9 = *v5;
        v4 = v5;
        if (!*v5)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10 = *(a1 + 48);
        if (!v10)
        {
          goto LABEL_10;
        }

        if (!(*(*v10 + 48))(v10, v5 + 4, a3))
        {
          goto LABEL_12;
        }

        v4 = v5 + 1;
        v9 = v5[1];
        if (!v9)
        {
          goto LABEL_12;
        }
      }

      v7 = *(a1 + 48);
      v5 = v9;
      if (!v7)
      {
        goto LABEL_10;
      }
    }
  }

  v5 = (a1 + 8);
LABEL_12:
  *a2 = v5;
  return v4;
}

uint64_t sub_247B70(uint64_t a1)
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

uint64_t sub_247C28(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6BB110;
  a2[1] = v2;
  return result;
}

BOOL sub_247CBC(uint64_t a1)
{
  v1 = a1 + 8;
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v4 = a1 + 8;
  do
  {
    v5 = *(a1 + 48);
    if (!v5)
    {
      goto LABEL_25;
    }

    v6 = (*(*v5 + 48))(v5, v2 + 32, "dmvatpni");
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + v7);
  }

  while (v2);
  if (v1 == v4)
  {
    return 0;
  }

  v8 = *(a1 + 48);
  if (!v8)
  {
LABEL_25:
    sub_46A74();
  }

  if ((*(*v8 + 48))(v8, "dmvatpni", v4 + 32))
  {
    return 0;
  }

  v11 = *sub_247A84(a1, v22, "dmvatpni");
  if (!v11)
  {
    sub_DE7DC("map::at:  key not found");
  }

  sub_24792C(v21, v11 + 48);
  v15 = _NSConcreteStackBlock;
  v16 = 1174405120;
  v17 = sub_248260;
  v18 = &unk_6BACF8;
  sub_24792C(v19, v21);
  (sub_248260)(v22, &v15);
  v19[3] = v22[0];
  v20 = 1;
  cf = v22[0];
  sub_247858(v19);
  sub_247858(v21);
  if (!cf)
  {
    v22[0] = 0;
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  CFRetain(cf);
  v22[0] = cf;
  sub_6AADC(&v15, cf);
  v12 = v15;
  if (v15 != v16)
  {
    v12 = v15;
    while (*v12 != 1987010925)
    {
      v12 = (v12 + 4);
      if (v12 == v16)
      {
        v12 = v16;
        break;
      }
    }
  }

  v9 = v12 != v16;
  if (v15)
  {
    operator delete(v15);
  }

  CFRelease(cf);
  CFRelease(cf);
  return v9;
}

void sub_2481DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  __cxa_end_catch();
  sub_247858(va);
  sub_247858(va1);
  _Unwind_Resume(a1);
}

CFTypeRef sub_248260@<X0>(CFTypeRef result@<X0>, void *a2@<X8>)
{
  if (*(result + 12) != 1)
  {
    sub_20B4EC();
  }

  v3 = *(result + 4);
  if (v3)
  {
    result = CFRetain(*(result + 4));
  }

  *a2 = v3;
  return result;
}

uint64_t sub_2482BC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if ((*(*a2 + 160))(a2))
    {
      v6 = a2[36] == 1886216820;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      if (*a3 == 1920167288)
      {
        v7 = *(a3 + 4);
      }

      else
      {
        v7 = 0;
      }

      if (*(a3 + 4) == 1 && *a3 == 1920167273)
      {
        return 1;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_248570(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 112))(a2);
  if ((v2 & 0x100000000) != 0 && v2 == 1701865584)
  {
    return 1;
  }

  else
  {
    return BYTE4(v2) & (v2 == 1701865569);
  }
}

uint64_t sub_24870C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 304) != 1781740087)
  {
    return 0;
  }

  if (sub_48EDC())
  {
    return 1;
  }

  result = MGGetBoolAnswer();
  if (result)
  {

    return MGGetBoolAnswer();
  }

  return result;
}

uint64_t sub_248800(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2488C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_248988(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_248D1C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v5;
  sub_12A9BC(a1 + 16, a3);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if ((*(a3 + 40) - 1) >= 3)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "RoutingTypes.h";
      v12 = 1024;
      v13 = 1024;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return a1;
}

uint64_t sub_248E7C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_469FC(result, a4);
  }

  return result;
}

void sub_248ED4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_248F50(uint64_t a1)
{
  sub_477A0(*(a1 + 104));
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  return a1;
}

void *sub_248F9C(void *result, unsigned int *a2, uint64_t a3)
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
      if (*(v6 + 7) < *v3)
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
              v13 = *(v4 + 28);
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

      v3 += 2;
      if (v3 == &a2[2 * a3])
      {
        break;
      }

      v5 = *result;
      v4 = result[1];
    }
  }

  return result;
}

uint64_t sub_24912C(uint64_t result)
{
  v1 = qword_6E8D50;
  if (!qword_6E8D50)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v2 = v1;
      v3 = *(v1 + 32);
      if (v3 <= result)
      {
        break;
      }

      v1 = *v2;
      if (!*v2)
      {
        goto LABEL_7;
      }
    }

    if (v3 >= result)
    {
      return result;
    }

    v1 = v2[1];
    if (!v1)
    {
      goto LABEL_7;
    }
  }
}

void sub_2492C0(void *a1)
{
  if (a1)
  {
    sub_2492C0(*a1);
    sub_2492C0(a1[1]);
    sub_477A0(a1[6]);

    operator delete(a1);
  }
}

void sub_249314(void *a1)
{
  if (a1)
  {
    sub_249314(*a1);
    sub_249314(a1[1]);
    if (*(a1 + 192) == 1)
    {
      sub_2492C0(a1[22]);
    }

    sub_477A0(a1[19]);
    if (*(a1 + 136) == 1)
    {
      sub_477A0(a1[15]);
    }

    sub_477A0(a1[11]);
    if (*(a1 + 64) == 1)
    {
      v2 = a1[5];
      if (v2)
      {
        a1[6] = v2;
        operator delete(v2);
      }
    }

    operator delete(a1);
  }
}

void sub_2493B4(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_249CC4(v2[17]);
        v6 = v2[13];
        if (v6)
        {
          v2[14] = v6;
          operator delete(v6);
        }

        sub_477A0(v2[11]);
        sub_477A0(v2[7]);
        sub_4E0BC(v2 + 2);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_249450(uint64_t result)
{
  v1 = qword_6E8D50;
  if (!qword_6E8D50)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v2 = v1;
      v3 = *(v1 + 32);
      if (v3 <= result)
      {
        break;
      }

      v1 = *v2;
      if (!*v2)
      {
        goto LABEL_7;
      }
    }

    if (v3 >= result)
    {
      return result;
    }

    v1 = v2[1];
    if (!v1)
    {
      goto LABEL_7;
    }
  }
}

void sub_2495E0()
{
  v0 = qword_6E8D48;
  if (qword_6E8D48 != &qword_6E8D50)
  {
    while (1)
    {
      v1 = sub_5544(21);
      if (*(v1 + 8))
      {
        v2 = *v1;
        if (*v1)
        {
          if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, *(v0 + 32));
            v3 = __p;
            if (v39 < 0)
            {
              v3 = __p[0];
            }

            *buf = 136315650;
            v41 = "RoutingTypes.h";
            v42 = 1024;
            v43 = 2381;
            v44 = 2080;
            *v45 = v3;
            _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Located Category for category '%s'.", buf, 0x1Cu);
            if (v39 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      v4 = sub_5544(21);
      if (*(v4 + 8))
      {
        v5 = *v4;
        if (*v4)
        {
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, *(v0 + 72));
            v6 = __p;
            if (v39 < 0)
            {
              v6 = __p[0];
            }

            *buf = 136315650;
            v41 = "RoutingTypes.h";
            v42 = 1024;
            v43 = 2382;
            v44 = 2080;
            *v45 = v6;
            _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Category type: '%s'.", buf, 0x1Cu);
            if (v39 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      v7 = sub_5544(21);
      if (*(v7 + 8))
      {
        v8 = *v7;
        if (*v7)
        {
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, *(v0 + 32));
            v9 = __p;
            if (v39 < 0)
            {
              v9 = __p[0];
            }

            v10 = "does not obey";
            if (*(v0 + 76))
            {
              v10 = "obeys";
            }

            *buf = 136315906;
            v41 = "RoutingTypes.h";
            v42 = 1024;
            v43 = 2384;
            v44 = 2080;
            *v45 = v9;
            *&v45[8] = 2080;
            *&v45[10] = v10;
            _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Category '%s' %s silent mode.", buf, 0x26u);
            if (v39 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      if (!*(v0 + 56))
      {
        v33 = sub_5544(21);
        v34 = *v33;
        if (!*v33 || !os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        sub_22170(__p, *(v0 + 32));
        if (v39 >= 0)
        {
          v35 = __p;
        }

        else
        {
          v35 = __p[0];
        }

        *buf = 136315650;
        v41 = "RoutingTypes.h";
        v42 = 1024;
        v43 = 2388;
        v44 = 2080;
        *v45 = v35;
        v30 = "%25s:%-5d !!!!! Category '%s' has an empty PrioritizedRouteList !!!!!";
        v31 = v34;
        v32 = 28;
        goto LABEL_64;
      }

      v11 = *(v0 + 48);
      if (v11 != (v0 + 40))
      {
        break;
      }

LABEL_51:
      v24 = *(v0 + 8);
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = *(v0 + 16);
          v26 = *v25 == v0;
          v0 = v25;
        }

        while (!v26);
      }

      v0 = v25;
      if (v25 == &qword_6E8D50)
      {
        return;
      }
    }

    v12 = 0;
    while (1)
    {
      v13 = sub_5544(21);
      if (*(v13 + 8))
      {
        v14 = *v13;
        if (*v13)
        {
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, *(v0 + 32));
            v15 = __p;
            if (v39 < 0)
            {
              v15 = __p[0];
            }

            *buf = 136315906;
            v41 = "RoutingTypes.h";
            v42 = 1024;
            v43 = 2394;
            v44 = 1024;
            *v45 = v12;
            *&v45[4] = 2080;
            *&v45[6] = v15;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d --> Searching AbstractRoute #%d of the PrioritizedRouteList for category '%s'.", buf, 0x22u);
            if (v39 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      if (!v11[4])
      {
        break;
      }

      v16 = v11[3];
      if (v16 != v11 + 2)
      {
        v17 = 0;
        do
        {
          v18 = sub_5544(21);
          if (*(v18 + 8))
          {
            v19 = *v18;
            if (*v18)
            {
              if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
              {
                sub_22170(__p, *(v16 + 16));
                v20 = v39;
                v21 = __p[0];
                sub_22170(v36, *(v16 + 20));
                v22 = __p;
                if (v20 < 0)
                {
                  v22 = v21;
                }

                v23 = v36;
                if (v37 < 0)
                {
                  v23 = v36[0];
                }

                *buf = 136316162;
                v41 = "RoutingTypes.h";
                v42 = 1024;
                v43 = 2403;
                v44 = 1024;
                *v45 = v17;
                *&v45[4] = 2080;
                *&v45[6] = v22;
                *&v45[14] = 2080;
                *&v45[16] = v23;
                _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d ----> AbstractRoute #%d contains Connection ('%s' / '%s')", buf, 0x2Cu);
                if (v37 < 0)
                {
                  operator delete(v36[0]);
                }

                if (v39 < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }
          }

          ++v17;
          v16 = *(v16 + 8);
        }

        while (v16 != v11 + 2);
      }

      ++v12;
      v11 = v11[1];
      if (v11 == (v0 + 40))
      {
        goto LABEL_51;
      }
    }

    v27 = sub_5544(21);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, *(v0 + 32));
      if (v39 >= 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = __p[0];
      }

      *buf = 136315906;
      v41 = "RoutingTypes.h";
      v42 = 1024;
      v43 = 2397;
      v44 = 1024;
      *v45 = v12;
      *&v45[4] = 2080;
      *&v45[6] = v29;
      v30 = "%25s:%-5d !!!!! AbstractRoute #%d of the PrioritizedRouteList for category '%s' is empty !!!!!";
      v31 = v28;
      v32 = 34;
LABEL_64:
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
      if (v39 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}