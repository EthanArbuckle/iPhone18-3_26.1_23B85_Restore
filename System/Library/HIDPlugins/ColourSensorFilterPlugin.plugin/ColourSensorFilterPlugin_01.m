BOOL ColorSensorPlugIn::processFDRCalibrationVD6287_HmClv3(ColorSensorPlugIn *this, const __CFData **a2, const __CFData **a3)
{
  if (CFDataGetLength(*a2) != 10348)
  {
    inited = qword_20128;
    if (!qword_20128)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    result = os_log_type_enabled(inited, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_150BC();
    return 0;
  }

  BytePtr = CFDataGetBytePtr(*a2);
  v7 = (BytePtr + 10);
  if (BytePtr[10] != 2)
  {
    v41 = qword_20128;
    if (!qword_20128)
    {
      v41 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v41 = init_default_corebrightness_log();
      }
    }

    result = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1513C(v7);
    return 0;
  }

  v8 = BytePtr;
  v9 = BytePtr + 80;
  if (BytePtr[80] || BytePtr[5214] != 1)
  {
    v42 = qword_20128;
    if (!qword_20128)
    {
      v42 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v42 = init_default_corebrightness_log();
      }
    }

    result = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_151B0();
    return 0;
  }

  if (BytePtr[84] == 5 && BytePtr[5218] == 5 && BytePtr[85] == 7 && BytePtr[5219] == 7)
  {
    v10 = qword_20128;
    if (!qword_20128)
    {
      v10 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v10 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v8[4];
      v12 = v8[5];
      *buf = 67109376;
      v50 = v11;
      v51 = 1024;
      v52 = v12;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "HmCl calibration version = v%d.%d\n", buf, 0xEu);
    }

    *(this + 60) = 0x500000005;
    *(this + 20) = 50000;
    *(this + 9) = vdup_n_s32(0xC350u);
    *(this + 12) = 1067869798;
    bzero(buf, 0x3ECuLL);
    v44 = *v7;
    if (*v7)
    {
      v14 = 0;
      v15 = v53;
      v16 = v8 + 101;
      v17 = v54;
      v18 = v8 + 5135;
      v19 = v8 + 5177;
      v20 = buf;
      do
      {
        v45 = v18;
        v46 = v17;
        v21 = 0;
        v22 = &v9[5134 * v14];
        v23 = &buf[502 * v14];
        *v23 = v22[4];
        v23[2] = v22[6] + 2;
        *(v23 + 3) = *(v22 + 7);
        LOWORD(v13) = *(v22 + 17);
        v24 = *&v13 / 100.0;
        *(v23 + 7) = v24;
        v25 = vcvtd_n_f64_u32(*(v22 + 19), 0xEuLL);
        *(v23 + 19) = v25;
        v26 = v22[5];
        v47 = v16;
        v48 = v15;
        v27 = v16;
        do
        {
          v28 = &v23[40 * v21 + 23];
          *v28 = 0x400000003F800000;
          *(v28 + 8) = 1082130432;
          if (v26)
          {
            v29 = 4.0;
            v30 = v26;
            v31 = v27;
            v32 = v15;
            do
            {
              v33 = *v31++;
              v29 = vcvtd_n_f64_u32(v33, 0xEuLL) * v29;
              *v32++ = v29;
              --v30;
            }

            while (v30);
          }

          *&v23[4 * v21 + 223] = *&v22[2 * v21 + 129];
          v13 = vcvtd_n_f64_s32(*&v22[2 * v21 + 141], 0xEuLL);
          *&v13 = v13;
          *&v23[4 * v21 + 243] = LODWORD(v13);
          *&v23[4 * v21 + 263] = *&v22[4 * v21 + 153] * 0.000015259;
          *&v23[4 * v21 + 283] = *&v22[4 * v21 + 177] * 0.0039062;
          *&v23[4 * v21 + 307] = *&v22[4 * v21 + 205] * 0.000015259;
          ++v21;
          v15 += 10;
          v27 += 9;
        }

        while (v21 != 5);
        *&v13 = *(v22 + 201) * 0.000015259;
        *(v23 + 303) = LODWORD(v13);
        v34 = v22[5054];
        v23[420] = v34;
        if (v34)
        {
          v35 = 0;
          v36 = v45;
          v37 = v46;
          do
          {
            *v37 = *v36;
            v38 = &v20[2 * v35];
            *(v38 + 439) = *(v36 + 7);
            *(v38 + 453) = *(v36 + 14);
            v20[v35 + 467] = v19[v35] + 2;
            *(v37 + 49) = *(v36 + 49);
            *(v37 + 63) = *(v36 + 63);
            ++v35;
            ++v37;
            v36 += 2;
          }

          while (v35 < v34);
        }

        ++v14;
        v15 = (v48 + 502);
        v16 = v47 + 5134;
        v17 = v46 + 502;
        v18 = v45 + 5134;
        v20 += 502;
        v19 += 5134;
      }

      while (v14 < v44);
    }

    *a3 = CFDataCreate(kCFAllocatorDefault, buf, 1004);
    *(this + 57) = 8;
    return 1;
  }

  v43 = qword_20128;
  if (!qword_20128)
  {
    v43 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v43 = init_default_corebrightness_log();
    }
  }

  result = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_151EC();
    return 0;
  }

  return result;
}

uint64_t ColorSensorPlugIn::processFDRCalibrationVD6287_HmClv4(ColorSensorPlugIn *this, const __CFData **a2, const __CFData **a3)
{
  bzero(bytes, 0x3ECuLL);
  v6 = VD6287HmCl::process(*a2, bytes, 0);
  if (v6)
  {
    *a3 = CFDataCreate(kCFAllocatorDefault, bytes, 1004);
    *(this + 60) = 0x500000005;
    *(this + 20) = 50000;
    *(this + 9) = vdup_n_s32(0xC350u);
    *(this + 12) = 1067869798;
  }

  else
  {
    inited = qword_20128;
    if (!qword_20128)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      sub_14F70();
    }
  }

  return v6;
}

BOOL ColorSensorPlugIn::processFDRSpectrumHmCAT2(uint64_t a1, CFDataRef *a2, uint64_t a3)
{
  inited = qword_20128;
  if (!qword_20128)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "Process FDR calibration spectrum", &v11, 2u);
  }

  Length = CFDataGetLength(*a2);
  if (Length == 9962)
  {
    CFDataGetBytePtr(*a2);
    *(a1 + 68) = 401;
    v8 = *(a3 + 20);
    operator new[]();
  }

  v9 = qword_20128;
  if (!qword_20128)
  {
    v9 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v9 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_15228();
  }

  return Length == 9962;
}

BOOL ColorSensorPlugIn::processFDRSpectrumVD6287_HmClv3(uint64_t a1, CFDataRef *a2, uint64_t a3)
{
  inited = qword_20128;
  if (!qword_20128)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_0, inited, OS_LOG_TYPE_DEFAULT, "Process FDR calibration spectrum", &v11, 2u);
  }

  Length = CFDataGetLength(*a2);
  if (Length == 10348)
  {
    CFDataGetBytePtr(*a2);
    *(a1 + 68) = 401;
    v8 = *(a3 + 20);
    operator new[]();
  }

  v9 = qword_20128;
  if (!qword_20128)
  {
    v9 = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v9 = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_15298();
  }

  return Length == 10348;
}

uint64_t ColorSensorPlugIn::processFDRSpectrumVD6287_HmClv4(uint64_t a1, const __CFData **a2, uint64_t a3)
{
  bzero(v8, 0x3ECuLL);
  v5 = VD6287HmCl::process(*a2, v8, a3);
  if (v5)
  {
    *(a3 + 28) = 0;
    *(a3 + 32) = 1065353216;
  }

  else
  {
    inited = qword_20128;
    if (!qword_20128)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      sub_15308();
    }
  }

  return v5;
}

uint64_t sub_11E6C(uint64_t a1, const __CFData **a2, uint64_t a3)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v4 = sub_12D38(*a2, v7);
  if (v4)
  {
    *(a3 + 28) = 0;
    *(a3 + 32) = 1065353216;
  }

  else
  {
    inited = qword_20128;
    if (!qword_20128)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      sub_15308();
    }
  }

  return v4;
}

void ColorSensorPlugIn::calculateSTD(ColorSensorPlugIn *this, float *a2, float *a3, int a4, int a5)
{
  if (a2 && a3 && a4 && a5 >= 1)
  {
    v7 = a2;
    v8 = 0;
    v9 = a4;
    v10 = 4 * a4;
    v11 = a5;
    do
    {
      v12 = 0.0;
      if (a4 >= 1)
      {
        v13 = a4;
        v14 = v7;
        do
        {
          v15 = *v14++;
          v12 = v12 + v15;
          --v13;
        }

        while (v13);
        v16 = v12 / v9;
        v12 = 0.0;
        do
        {
          v12 = v12 + ((*(v7 + v13) - v16) * (*(v7 + v13) - v16));
          v13 += 4;
        }

        while (v10 != v13);
      }

      v17 = v12 / v9;
      a3[v8] = sqrtf(v17);
      inited = qword_20128;
      if (!qword_20128)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
      {
        v19 = a3[v8];
        *buf = 67109376;
        v21 = v8;
        v22 = 2048;
        v23 = v19;
        _os_log_debug_impl(&dword_0, inited, OS_LOG_TYPE_DEBUG, "Standard deviation[%d]: %f\n", buf, 0x12u);
      }

      ++v8;
      v7 = (v7 + v10);
    }

    while (v8 != v11);
  }
}

CFDataRef sub_120C4()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  bzero(v11, 0x6E00uLL);
  result = 0;
  bytes = v7;
  v10 = v6;
  if ((v6 * v7) <= 0x1130 && (3 * v6) <= 0xA50)
  {
    memcpy(&v12, v4, (4 * v6 * v7));
    memcpy(v11, v2, (12 * v6));
    return CFDataCreate(kCFAllocatorDefault, &bytes, 28163);
  }

  return result;
}

CFDataRef sub_121A0()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  bzero(v11, 0x8360uLL);
  result = 0;
  bytes = v7;
  v10 = v6;
  if ((v6 * v7) >> 3 <= 0x290 && (3 * v6) <= 0xC51)
  {
    memcpy(&v12, v4, (4 * v6 * v7));
    memcpy(v11, v2, (12 * v6));
    return CFDataCreate(kCFAllocatorDefault, &bytes, 33635);
  }

  return result;
}

uint64_t sub_1228C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void *sub_123DC(void *result)
{
  if (result[5])
  {
    operator delete[]();
  }

  if (result[6])
  {
    operator delete[]();
  }

  if (result[7])
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_12440(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_124FC(a1);
  return a1;
}

void sub_124D4(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_124FC(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_12604(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_127AC(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_12744(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x12724);
}

uint64_t sub_127AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_12994();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_12978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_129AC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_12A08(exception, a1);
}

std::logic_error *sub_12A08(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

BOOL sub_12A3C(const __CFData *a1, uint64_t a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  if (!BytePtr)
  {
    return 0;
  }

  v5 = BytePtr;
  if (!sub_1090C(a1))
  {
    return 0;
  }

  return sub_12AAC(v5, a2);
}

BOOL sub_12AAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 36);
  if (v2 == 4)
  {
    v4 = 0;
    v20 = (*(a1 + 20) << 32) | (*(a1 + 21) << 24) | (*(a1 + 22) << 16) | (*(a1 + 23) << 8) | *(a1 + 24);
    *a2 = 1;
    *(a2 + 9) = 1;
    *(a2 + 1) = 2;
    *(a2 + 10) = 145;
    *(a2 + 12) = *(a1 + 50);
    *(a2 + 14) = *(a1 + 38);
    *(a2 + 16) = *(a1 + 40);
    *(a2 + 20) = *(a1 + 46);
    *(a2 + 21) = *(a1 + 47);
    *(a2 + 22) = *(a1 + 48);
    *(a2 + 23) = 4;
    v5 = *(a1 + 37);
    *(a2 + 24) = v5;
    v26 = a2 + 49;
    v27 = a1 + 184;
    v24 = a1 + 160;
    v25 = a1 + 172;
    v22 = a1 + 196;
    v23 = a1 + 190;
    v21 = a2 + 25;
    v6 = (a1 + 52);
    v7 = (a2 + 55);
    do
    {
      v8 = *(v27 + v4);
      v9 = v26 + 24 * v4;
      *v9 = v8;
      v10 = *(v25 + 2 * v4);
      *(v9 + 1) = v10;
      v11 = *(v24 + 2 * v4);
      *(v9 + 3) = *(v24 + 2 * v4);
      v12 = *(v23 + v4);
      *(v9 + 5) = *(v23 + v4);
      v13 = *(v22 + 4 * v4);
      *(v21 + 4 * v4) = v13;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219520;
        v29 = v20;
        v30 = 2048;
        v31 = v4;
        v32 = 2048;
        v33 = vcvts_n_f32_s32(v13, 0x10uLL);
        v34 = 1024;
        v35 = v8;
        v36 = 2048;
        v37 = vcvtd_n_f64_s32(v10, 8uLL);
        v38 = 1024;
        v39 = v11;
        v40 = 1024;
        v41 = v12;
        _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[0x%llx] channel[%zu]: luxCoeff = %f, darkCounts = %d, offsetCounts = %f, azOffsetCounts = %d, blHighCounts = %d", buf, 0x3Cu);
        v5 = *(a2 + 24);
      }

      v14 = v6;
      v15 = v7;
      for (i = v5; i; --i)
      {
        v17 = *v14++;
        *v15++ = v17;
      }

      ++v4;
      v7 += 12;
      v6 += 9;
    }

    while (v4 < *(a2 + 23));
    *(a2 + 41) = 4 * *(a1 + 220);
    *(a2 + 45) = 4 * *(a1 + 224);
    v2 = 4;
  }

  return v2 == 4;
}

uint64_t sub_12D38(const __CFData *a1, uint64_t a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  if (!BytePtr)
  {
    return 0;
  }

  v5 = BytePtr;
  if (!sub_1090C(a1) || !sub_12AAC(v5, a2))
  {
    return 0;
  }

  return sub_12DC0(v5, a2);
}

uint64_t sub_12DC0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 10) != 145 || *(a2 + 1) != 2)
  {
    return 0;
  }

  if (*(a1 + 36) == 4)
  {
    operator new[]();
  }

  return 0;
}

uint64_t LDBMCreateSmallDB(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  ppDb = 0;
  __sprintf_chk(filename, 0, 0x100uLL, "%s_%d%s", "/var/mobile/Library/CoreBrightness/cbrgbc", a4, ".sqlite");
  mkdir("/var/mobile/Library/CoreBrightness", 0x1EDu);
  if (!sqlite3_open_v2(filename, &ppDb, 4194310, 0))
  {
    if (sqlite3_exec(ppDb, "PRAGMA journal_mode=WAL", 0, 0, 0))
    {
      v12 = 4;
LABEL_20:
      sqlite3_close(ppDb);
      return v12;
    }

    sqlite3_exec(ppDb, "DROP TABLE Info", 0, 0, 0);
    sqlite3_exec(ppDb, "DROP TABLE RR", 0, 0, 0);
    if (a6 == 4)
    {
      v13 = ppDb;
      v14 = "CREATE TABLE RR (R Single, G Single, B Single, C Single)";
    }

    else
    {
      if (a6 != 5)
      {
LABEL_10:
        v12 = 3;
        goto LABEL_20;
      }

      v13 = ppDb;
      v14 = "CREATE TABLE RR (CH0 Single, CH1 Single, CH2 Single, CH3 Single, CH4 Single)";
    }

    if (sqlite3_exec(v13, v14, 0, 0, 0))
    {
      goto LABEL_10;
    }

    LODWORD(v15) = *(a1 + 4);
    if (v15 >= 1)
    {
      v16 = 0;
      do
      {
        v17 = *(a3 + 4 * v16);
        if (a6 == 4)
        {
          v28 = *(a3 + 4 * (v16 + 2 * v15));
          v30 = *(a3 + 4 * (v16 + 3 * v15));
          v26 = *(a3 + 4 * (v16 + v15));
          __sprintf_chk(sql, 0, 0x400uLL, "INSERT INTO RR VALUES (%f, %f, %f, %f)");
        }

        else
        {
          v31 = *(a3 + 4 * (v16 + 3 * v15));
          v32 = *(a3 + 4 * (v16 + 4 * v15));
          v27 = *(a3 + 4 * (v16 + v15));
          v29 = *(a3 + 4 * (v16 + 2 * v15));
          __sprintf_chk(sql, 0, 0x400uLL, "INSERT INTO RR VALUES (%f, %f, %f, %f, %f)");
        }

        v18 = sqlite3_exec(ppDb, sql, 0, 0, 0);
        if (v18)
        {
          goto LABEL_19;
        }

        ++v16;
        v15 = *(a1 + 4);
      }

      while (v16 < v15);
    }

    sqlite3_exec(ppDb, "DROP TABLE XX", 0, 0, 0);
    v18 = sqlite3_exec(ppDb, "CREATE TABLE XX (X Single, Y Single, Z Single)", 0, 0, 0);
    if (v18)
    {
LABEL_19:
      v12 = v18;
      goto LABEL_20;
    }

    LODWORD(v20) = *(a1 + 4);
    if (v20 >= 1)
    {
      v21 = 0;
      do
      {
        __sprintf_chk(sql, 0, 0x400uLL, "INSERT INTO XX VALUES (%f, %f, %f)", *(a2 + 4 * v21), *(a2 + 4 * (v21 + v20)), *(a2 + 4 * (v21 + 2 * v20)));
        v18 = sqlite3_exec(ppDb, sql, 0, 0, 0);
        if (v18)
        {
          goto LABEL_19;
        }

        ++v21;
        v20 = *(a1 + 4);
      }

      while (v21 < v20);
    }

    if (a7)
    {
      v18 = sqlite3_exec(ppDb, "CREATE TABLE Info (version Single, smallversion Single, sources Long, orientation Long, algo Long, chipID Unsigned Integer)", 0, 0, 0);
      if (v18)
      {
        goto LABEL_19;
      }

      v22 = *a1;
      v23 = *(a1 + 4);
      __sprintf_chk(sql, 0, 0x400uLL, "INSERT INTO Info VALUES (%f, %f, %d, %d, %d, %d)");
    }

    else
    {
      v18 = sqlite3_exec(ppDb, "CREATE TABLE Info (version Single, smallversion Single, sources Long, orientation Long, algo Long)", 0, 0, 0);
      if (v18)
      {
        goto LABEL_19;
      }

      v24 = *a1;
      v25 = *(a1 + 4);
      __sprintf_chk(sql, 0, 0x400uLL, "INSERT INTO Info VALUES (%f, %f, %d, %d, %d)");
    }

    v18 = sqlite3_exec(ppDb, sql, 0, 0, 0);
    goto LABEL_19;
  }

  unlink(filename);
  return 2;
}

uint64_t LDBMInitialize(int a1, uint64_t a2, _BYTE *a3, int a4, float a5)
{
  ppDb = 0;
  *a3 = 0;
  __sprintf_chk(filename, 0, 0x100uLL, "%s_%d%s", "/var/mobile/Library/CoreBrightness/cbrgbc", a1, ".sqlite");
  if ((a4 - 1) > 2)
  {
    return 1;
  }

  v9 = sqlite3_open_v2((&off_1C8E8)[a4 - 1], &ppDb, 1, 0);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_15344(v10);
    }
  }

  else
  {
    *&v14 = 0;
    *(&v14 + 1) = 0xBF800000FFFFFFFFLL;
    v15 = 0;
    v10 = sqlite3_exec(ppDb, "SELECT * FROM Info", sub_139FC, &v14, 0);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_153C4(&v14);
    }

    sqlite3_close(ppDb);
    if (!v10)
    {
      *a2 = v14;
      *(a2 + 16) = v15;
      if (!sqlite3_open_v2(filename, &ppDb, 1, 0))
      {
        sqlite3_exec(ppDb, "PRAGMA journal_mode=WAL", 0, 0, 0);
        v12 = 0uLL;
        v13 = 0;
        if (!sqlite3_exec(ppDb, "SELECT * FROM Info", sub_139FC, &v12, 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_15440(&v12);
          }

          if (*&v12 == *&v14 && DWORD1(v12) == DWORD1(v14) && *(&v12 + 3) == a5)
          {
            *a3 = 1;
            *a2 = v12;
            *(a2 + 16) = v13;
          }
        }

        sqlite3_close(ppDb);
      }

      return 0;
    }
  }

  return v10;
}

uint64_t LDBMParseBigDB(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a4 - 1) > 2)
  {
    return 1;
  }

  v7 = (&off_1C8E8)[a4 - 1];
  ppDb = 0;
  v8 = sqlite3_open_v2(v7, &ppDb, 1, 0);
  if (!v8)
  {
    v12[0] = a2;
    v12[1] = a3;
    v13 = 0u;
    DWORD2(v13) = *(a1 + 4) - 1;
    v9 = ppDb;
    __sprintf_chk(sql, 0, 0x40uLL, "SELECT * FROM Spectra", a2, a3, 0);
    v10 = sqlite3_exec(v9, sql, sub_13B6C, v12, 0);
    if (DWORD1(v13) == (DWORD2(v13) + DWORD2(v13) * DWORD2(v13)) / 2)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }

    sqlite3_close(ppDb);
  }

  return v8;
}

uint64_t LDBMParseSmallDB(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ppDb = 0;
  __sprintf_chk(filename, 0, 0x100uLL, "%s_%d%s", "/var/mobile/Library/CoreBrightness/cbrgbc", a1, ".sqlite");
  result = sqlite3_open_v2(filename, &ppDb, 1, 0);
  if (!result)
  {
    sqlite3_exec(ppDb, "PRAGMA journal_mode=WAL", 0, 0, 0);
    v8 = a4;
    v9 = *(a2 + 4);
    v10 = 0;
    result = sqlite3_exec(ppDb, "SELECT * FROM RR", sub_13808, &v8, 0);
    if (!result)
    {
      v8 = a3;
      v9 = *(a2 + 4);
      v10 = 0;
      result = sqlite3_exec(ppDb, "SELECT * FROM XX", sub_13808, &v8, 0);
      if (!result)
      {
        sqlite3_close(ppDb);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_13808(uint64_t a1, int a2, const char **a3, const char **a4)
{
  if (a2 >= 1)
  {
    for (i = a2; i; --i)
    {
      v8 = *a4;
      if (!*a4 || !*a3)
      {
        goto LABEL_40;
      }

      v9 = atof(*a3);
      v10 = *v8;
      if (v10 == 82)
      {
        v11 = *(v8 + 1);
        if (!v8[1])
        {
          goto LABEL_39;
        }
      }

      else if (v10 == 88)
      {
        v11 = -*(v8 + 1);
        if (!v8[1])
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 88 - v10;
        if (88 == v10)
        {
          goto LABEL_39;
        }
      }

      if (!strcmp("CH0", v8))
      {
        v11 = 0;
      }

      else
      {
        if (v10 == 71)
        {
          if (!v8[1])
          {
            goto LABEL_25;
          }
        }

        else if (v10 == 89)
        {
          if (!v8[1])
          {
            goto LABEL_25;
          }
        }

        else if (89 == v10)
        {
          goto LABEL_25;
        }

        if (!strcmp("CH1", v8))
        {
LABEL_25:
          v11 = 1;
          goto LABEL_39;
        }

        if (v10 == 66)
        {
          if (!v8[1])
          {
            goto LABEL_34;
          }
        }

        else if (v10 == 90)
        {
          if (!v8[1])
          {
            goto LABEL_34;
          }
        }

        else if (90 == v10)
        {
          goto LABEL_34;
        }

        if (!strcmp("CH2", v8))
        {
LABEL_34:
          v11 = 2;
          goto LABEL_39;
        }

        if (v10 == 67)
        {
          if (v8[1])
          {
            goto LABEL_36;
          }
        }

        else if (67 != v10)
        {
LABEL_36:
          if (!strcmp("CH3", v8))
          {
            v11 = 3;
          }

          else
          {
            v11 = 4;
          }

          goto LABEL_39;
        }

        v11 = 3;
      }

LABEL_39:
      v12 = v9;
      *(*a1 + 4 * (*(a1 + 12) + *(a1 + 8) * v11)) = v12;
LABEL_40:
      ++a3;
      ++a4;
    }
  }

  ++*(a1 + 12);
  return 0;
}

uint64_t sub_139FC(uint64_t a1, int a2, const char **a3, const char **a4)
{
  if (a2 >= 1)
  {
    v7 = a2;
    do
    {
      v8 = *a4;
      if (*a4)
      {
        v9 = *a3;
        if (*a3)
        {
          if (!strcmp(*a4, "version"))
          {
            v10 = atof(v9);
            *a1 = v10;
          }

          else if (!strcmp(v8, "sources"))
          {
            *(a1 + 4) = atoi(v9);
          }

          else if (strcmp(v8, "columns") && strcmp(v8, "samples"))
          {
            if (!strcmp(v8, "algo"))
            {
              *(a1 + 8) = atoi(v9);
            }

            else if (!strcmp(v8, "smallversion"))
            {
              v11 = atof(v9);
              *(a1 + 12) = v11;
            }

            else if (!strcmp(v8, "chipID"))
            {
              *(a1 + 16) = atoi(v9);
            }
          }
        }
      }

      ++a3;
      ++a4;
      --v7;
    }

    while (v7);
  }

  return 0;
}

uint64_t sub_13B6C(uint64_t a1, int a2, const char **a3, const char **a4)
{
  v8 = (a2 - 4);
  v9 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
  if (!v9)
  {
    return 1;
  }

  v10 = v9;
  if (a2 < 1)
  {
    goto LABEL_28;
  }

  v11 = 0xFFFFFFFFLL;
  v12 = a2;
  do
  {
    v13 = *a4;
    if (*a4)
    {
      v14 = *a3;
      if (*a3)
      {
        v15 = *v13;
        if (v15 == 73)
        {
          v16 = *(v13 + 1);
          if (v16 == 68)
          {
            if (!v13[2])
            {
              goto LABEL_16;
            }
          }

          else if (68 == v16)
          {
LABEL_16:
            v11 = atoi(*a3);
            goto LABEL_22;
          }
        }

        else if (73 == v15)
        {
          goto LABEL_16;
        }

        if (v15 == 89)
        {
          if (!v13[1])
          {
            v18 = atof(*a3);
            *&v24[1] = v18;
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        if (v15 == 88)
        {
          if (!v13[1])
          {
            v17 = atof(*a3);
            *v24 = v17;
            goto LABEL_22;
          }

LABEL_21:
          v19 = atoi(v13 + 1);
          v20 = atof(v14);
          v10[v19] = v20;
          goto LABEL_22;
        }

        if (v15 == 90)
        {
          if (v13[1])
          {
            goto LABEL_21;
          }
        }

        else if (90 != v15)
        {
          goto LABEL_21;
        }

        v21 = atof(*a3);
        *&v24[2] = v21;
      }
    }

LABEL_22:
    ++a3;
    ++a4;
    --v12;
  }

  while (v12);
  if ((v11 & 0x80000000) != 0 || v11 > *(a1 + 24))
  {
LABEL_28:
    v22 = 1;
  }

  else
  {
    v22 = (*a1)(*(a1 + 8), v11, v24, v10, v8);
    *(a1 + 20) += v11;
  }

  free(v10);
  return v22;
}

double sub_13D98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  result = *a1;
  v4 = *(a1 + 4);
  return result;
}

void sub_13ED0(unsigned __int8 *a1)
{
  v6 = *a1;
  sub_809C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_13FC8(unsigned __int8 *a1)
{
  v6 = *a1;
  sub_809C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_14080(unsigned __int8 *a1)
{
  v6 = *a1;
  sub_809C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_14174(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "[0x%llx] FDR calibration data doesn't match with size of HmCA structure (length = %ld)\n", &v3, 0x16u);
}

void sub_141FC(char *a1, uint64_t a2, os_log_t log)
{
  v3 = a1[3];
  v4 = a1[2];
  v5 = a1[1];
  v6 = *a1;
  v7 = 134219008;
  v8 = a2;
  v9 = 1024;
  v10 = v3;
  v11 = 1024;
  v12 = v4;
  v13 = 1024;
  v14 = v5;
  v15 = 1024;
  v16 = v6;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "[0x%llx] Magic not as expected. Expected 'HmCA', got %c%c%c%c", &v7, 0x24u);
}

void sub_142AC(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "FDR calibration data doesn't match with size of VD6286 structure (length = %ld)", &v2, 0xCu);
}

void sub_14324(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Trying to convert FDR VD6286 calibration data structure, size mismatch:(length = %ld)", &v2, 0xCu);
}

void sub_1439C()
{
  sub_12ED8();
  sub_12EF0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1440C()
{
  sub_12EA8();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_14448(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_12EE4();
  sub_809C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_144BC()
{
  sub_12EA8();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_144F8()
{
  sub_12ED8();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_14568(const __CFData *a1, unsigned __int16 *a2, NSObject *a3)
{
  CFDataGetLength(a1);
  v5 = *a2;
  sub_12EC0();
  v8 = 1024;
  v9 = v6;
  _os_log_error_impl(&dword_0, a3, OS_LOG_TYPE_ERROR, "Insufficient calibration data size. Actual: %ld, Expected: %hu\n", v7, 0x12u);
}

void sub_14608(const __CFData *a1, NSObject *a2)
{
  CFDataGetLength(a1);
  sub_12EC0();
  v4 = 2048;
  v5 = 8;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Need at least header size bytes. Actual: %ld, Expected: %ld\n", v3, 0x16u);
}

void sub_146A0()
{
  sub_12EA8();
  sub_12EB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_146DC(unsigned int *a1)
{
  v1 = *a1;
  sub_12EE4();
  sub_809C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_14750()
{
  sub_12EA8();
  sub_12EB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1478C()
{
  sub_12EA8();
  sub_12EB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_14840()
{
  sub_12EA8();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1487C(_DWORD *a1)
{
  *a1;
  sub_12ECC();
  sub_12EB4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_14908(uint64_t *a1)
{
  v1 = *a1;
  sub_12ECC();
  sub_12EB4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1497C(uint64_t *a1)
{
  v1 = *a1;
  sub_12ECC();
  sub_12EB4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_149F0(uint64_t *a1)
{
  v1 = *a1;
  sub_12ECC();
  sub_12EB4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_14A64(_DWORD *a1)
{
  *a1;
  sub_12ECC();
  sub_12EB4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_14AF0()
{
  sub_12EA8();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_14B2C(uint64_t a1)
{
  v1 = *(a1 + 12);
  sub_12EE4();
  sub_12EB4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_14BA0(_BYTE *a1)
{
  *a1;
  sub_12ECC();
  sub_12EB4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_14C2C()
{
  sub_12EA8();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_14C68()
{
  sub_12EA8();
  sub_12EF0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_14CA4(unsigned int *a1)
{
  v1 = *a1;
  sub_12EE4();
  sub_12EF0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_14D18()
{
  sub_12EA8();
  sub_12EF0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_14D54()
{
  sub_12EA8();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_14D90()
{
  sub_12EA8();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_14DCC()
{
  sub_12EA8();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_14E08()
{
  sub_12EFC();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_14E84()
{
  sub_12EFC();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_14F00()
{
  sub_12EC0();
  sub_12EB4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_14F70()
{
  sub_12EA8();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_14FAC()
{
  sub_12EC0();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

float sub_1501C(unsigned __int16 a1, int a2, os_log_t log)
{
  v4[0] = 67109888;
  v4[1] = a2;
  v5 = 1024;
  v6 = 250;
  v7 = 1024;
  v8 = a1;
  v9 = 1024;
  v10 = 19660;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "WORKAROUND: override iTime (%i -> %i) and fudge (%i -> %i)", v4, 0x1Au);
  return result;
}

void sub_150BC()
{
  sub_12EC0();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1513C(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_12EE4();
  sub_809C();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_151B0()
{
  sub_12EA8();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_151EC()
{
  sub_12EA8();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_15228()
{
  sub_12EC0();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_15298()
{
  sub_12EC0();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_15308()
{
  sub_12EA8();
  sub_809C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_15344(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "BIG: Failed to open big DB (result = %d).", v1, 8u);
}

void sub_153C4(uint64_t a1)
{
  sub_13D98(a1, __stack_chk_guard);
  sub_13D80();
  _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "BIG: DB version %f - %d samples", v1, 0x12u);
}

void sub_15440(uint64_t a1)
{
  sub_13D98(a1, __stack_chk_guard);
  sub_13D80();
  _os_log_debug_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEBUG, "SMALL: DB version %f - %d samples", v1, 0x12u);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}