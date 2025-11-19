void IOHIDPointerScrollFilter::setPropertyForClient(IOHIDPointerScrollFilter *this, CFStringRef theString1, const void *a3, const void *a4)
{
  v26 = *MEMORY[0x29EDCA608];
  if (!theString1)
  {
    goto LABEL_24;
  }

  if (CFStringCompare(theString1, @"DropAccelPropertyEvents", 0) == kCFCompareEqualTo)
  {
    *(this + 166) = *MEMORY[0x29EDB8F00] == a3;
    goto LABEL_24;
  }

  if (CFStringCompare(theString1, @"IOHIDAcclerationStatsDelayMS", 0))
  {
    v8 = 0;
    while (!CFEqual(theString1, *(&IOHIDPointerScrollFilter::_cachedPropertyList + v8)))
    {
      v8 += 8;
      if (v8 == 152)
      {
        goto LABEL_24;
      }
    }

    if (a3)
    {
      CFDictionarySetValue(*(this + 14), theString1, a3);
      CFDictionarySetValue(*(this + 12), theString1, a3);
    }

    v11 = _IOHIDLogCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      RegistryID = *(this + 15);
      if (RegistryID)
      {
        RegistryID = IOHIDServiceGetRegistryID();
      }

      v13 = *(this + 10);
      v16 = 138413314;
      if (v13)
      {
        v14 = "yes";
      }

      else
      {
        v14 = "no";
      }

      v17 = RegistryID;
      v18 = 2112;
      v19 = theString1;
      v20 = 2112;
      v21 = a3;
      v22 = 2080;
      v23 = v14;
      v24 = 2112;
      v25 = a4;
      _os_log_impl(&dword_29D436000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Acceleration key:%@ value:%@ apply:%s client:%@\n", &v16, 0x34u);
    }

    if (*(this + 10))
    {
      IOHIDPointerScrollFilter::setupAcceleration(this);
      CFDictionaryRemoveAllValues(*(this + 14));
    }

    goto LABEL_24;
  }

  v9 = CFGetTypeID(a3);
  if (v9 != CFNumberGetTypeID())
  {
LABEL_24:
    v15 = *MEMORY[0x29EDCA608];
    return;
  }

  v10 = *MEMORY[0x29EDCA608];

  CFNumberGetValue(a3, kCFNumberLongLongType, this + 176);
}

void *IOHIDSimpleAccelerator::serialize(IOHIDSimpleAccelerator *this, __CFDictionary *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  theDict = 0xAAAAAAAAAAAAAAAALL;
  sub_29D4375F0(&v4, a2, 0);
  v4 = &unk_2A241F788;
  CFDictionarySetValue(theDict, @"Class", @"IOHIDSimpleAccelerator");
  sub_29D436CD0(&v4, @"Multiplier", vcvtd_n_u64_f64(*(this + 1), 0x10uLL));
  return sub_29D43773C(&v4);
}

void *sub_29D436CD0(uint64_t a1, const void *a2, uint64_t a3)
{
  sub_29D437818(&v6, a3);
  if (a2 && value)
  {
    CFDictionarySetValue(*(a1 + 8), a2, value);
  }

  return sub_29D437894(&v6);
}

BOOL IOHIDSimpleAccelerator::accelerate(IOHIDSimpleAccelerator *this, double *a2, uint64_t a3)
{
  v3 = *(this + 1);
  if (v3 != 1.0 && a3 != 0)
  {
    do
    {
      *a2 = *(this + 1) * *a2;
      ++a2;
      --a3;
    }

    while (a3);
  }

  return v3 != 1.0;
}

BOOL IOHIDScrollAccelerator::accelerate(IOHIDScrollAccelerator *this, double *a2, unint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  LODWORD(a6) = IOHIDScrollAccelerator::_timebase;
  LODWORD(a7) = dword_2A17A2994;
  v9 = (a4 - *(this + 4)) * *&a6 / *&a7 / 1000000.0;
  *(this + 4) = a4;
  v10 = *(this + 4);
  v11 = *(this + 5);
  v12 = (this + 16 * v11 + 64);
  *v12 = v9;
  v12[1] = fabs(*a2);
  v13 = (v11 + 1) % 9;
  *(this + 5) = v13;
  if (v13 == v10)
  {
    v10 = (v13 + 1 - 9 * ((((57 * (v13 + 1)) & 0x8000) != 0) + ((57 * (v13 + 1)) >> 9)));
    *(this + 4) = v10;
  }

  v14 = *a2 > 0.0;
  if (*(this + 24) != v14 || v9 > 500.0)
  {
    *(this + 4) = v11;
    *(this + 24) = v14;
    v10 = v11;
  }

  v15 = 0;
  v16 = 0.0;
  v17 = 16;
  v18 = 150.0;
  v19 = 0.0;
  while (1)
  {
    v20 = v15;
    v21 = v17;
    if (v13)
    {
      --v13;
    }

    else
    {
      v13 = 8;
    }

    v22 = (this + 16 * v13 + 64);
    v19 = v19 + v22[1];
    if (*v22 > 150.0)
    {
      break;
    }

    v16 = v16 + *v22;
    v17 += 16;
    v15 = v20 + 1;
    if (v16 >= 500.0 || v13 == v10)
    {
      goto LABEL_18;
    }
  }

  v16 = v16 + 150.0;
LABEL_18:
  v24 = *(this + 6) / 67.0;
  v25 = (v20 + 1);
  v26 = v16 / v25 * v24;
  if (v26 <= 150.0)
  {
    v18 = v26;
    if (v26 < 1.0)
    {
      v18 = 1.0;
    }
  }

  v27 = v24 * (v19 / v25 * (v18 * -0.0145721436 + v18 * 0.0000305175781 * v18 + 1.50099182));
  if (v27 >= 0.0000152587891)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0.0000152587891;
  }

  if ((*(**(this + 1) + 24))(*(this + 1)))
  {
    v29 = (*(**(this + 1) + 16))(*(this + 1), v28);
    v30 = *a2;
    v31 = v29 / v28;
  }

  else
  {
    if (v20 >= 2)
    {
      v28 = sqrt(v21) * v28 * 0.25;
    }

    v32 = (*(**(this + 1) + 16))(*(this + 1), v28);
    v30 = *a2;
    v31 = v32 / fabs(*a2);
  }

  *a2 = v31 * v30 * 0.100006104;
  return v31 != 1.0;
}

void *IOHIDScrollAccelerator::serialize(IOHIDScrollAccelerator *this, __CFDictionary *a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  theDict = 0xAAAAAAAAAAAAAAAALL;
  sub_29D4375F0(&v7, a2, 0);
  v7 = &unk_2A241F788;
  CFDictionarySetValue(theDict, @"Class", @"IOHIDScrollAccelerator");
  sub_29D436CD0(&v7, @"Resolution", vcvtd_n_u64_f64(*(this + 5), 0x10uLL));
  sub_29D436CD0(&v7, @"Rate", vcvtd_n_u64_f64(*(this + 6), 0x10uLL));
  v5 = 0xAAAAAAAAAAAAAAAALL;
  value = 0xAAAAAAAAAAAAAAAALL;
  sub_29D4377A0(&v5, 0);
  v3 = *(this + 1);
  if (v3)
  {
    (*(*v3 + 32))(v3, value);
  }

  if (value)
  {
    CFDictionarySetValue(theDict, @"Accelerator", value);
  }

  sub_29D43773C(&v5);
  return sub_29D43773C(&v7);
}

void sub_29D437170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29D43773C(va);
  _Unwind_Resume(a1);
}

BOOL IOHIDPointerAccelerator::accelerate(IOHIDPointerAccelerator *this, float64x2_t *a2, unint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v9 = *(this + 4);
  v10 = 1.0;
  if (v9 != 0.0)
  {
    LODWORD(a7) = IOHIDPointerAccelerator::_timebase;
    LODWORD(a8) = dword_2A17A299C;
    v11 = (a4 - *(this + 2)) * *&a7 / *&a8 / 1000000.0;
    v10 = 1.0;
    if (v11 != 0.0)
    {
      v12 = 1000.0 / v9;
      if (v11 >= v12)
      {
        v13 = v11;
      }

      else
      {
        v13 = v12;
      }

      v10 = v12 / v13;
    }
  }

  *(this + 2) = a4;
  v14 = floor(sqrt(vaddvq_f64(vmulq_f64(*a2, *a2))));
  if (*(this + 5) != 1.0)
  {
    v10 = *(this + 5);
  }

  v15 = v10 * v14;
  if (v15 >= 0.0000152587891)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0.0000152587891;
  }

  v17 = (*(**(this + 1) + 16))(*(this + 1), v16) / v16;
  *a2 = vmulq_n_f64(*a2, v17);
  return v17 != 1.0;
}

void *IOHIDPointerAccelerator::serialize(IOHIDPointerAccelerator *this, __CFDictionary *a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  theDict = 0xAAAAAAAAAAAAAAAALL;
  sub_29D4375F0(&v7, a2, 0);
  v7 = &unk_2A241F788;
  CFDictionarySetValue(theDict, @"Class", @"IOHIDPointerAccelerator");
  sub_29D436CD0(&v7, @"Resolution", vcvtd_n_u64_f64(*(this + 3), 0x10uLL));
  sub_29D436CD0(&v7, @"Rate", vcvtd_n_u64_f64(*(this + 4), 0x10uLL));
  v5 = 0xAAAAAAAAAAAAAAAALL;
  value = 0xAAAAAAAAAAAAAAAALL;
  sub_29D4377A0(&v5, 0);
  v3 = *(this + 1);
  if (v3)
  {
    (*(*v3 + 32))(v3, value);
  }

  if (value)
  {
    CFDictionarySetValue(theDict, @"Accelerator", value);
  }

  sub_29D43773C(&v5);
  return sub_29D43773C(&v7);
}

void sub_29D4373C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29D43773C(va);
  _Unwind_Resume(a1);
}

void *sub_29D437400(void *a1)
{
  *a1 = &unk_2A241F6F8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29D43746C(void *a1)
{
  *a1 = &unk_2A241F6F8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29ED580A0);
}

void *sub_29D4374F8(void *a1)
{
  *a1 = &unk_2A241F740;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29D437564(void *a1)
{
  *a1 = &unk_2A241F740;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29ED580A0);
}

void *sub_29D4375F0(void *a1, CFTypeRef cf, char a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFDictionaryGetTypeID())
    {
      v7 = cf;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a1 = &unk_2A241F808;
  a1[1] = v7;
  if (v7 && (a3 & 1) == 0)
  {
    CFRetain(v7);
  }

  *a1 = &unk_2A241F7E8;
  return a1;
}

void sub_29D43768C(void *a1)
{
  sub_29D43773C(a1);

  JUMPOUT(0x29ED580A0);
}

void sub_29D4376C8(void *a1)
{
  sub_29D43773C(a1);

  JUMPOUT(0x29ED580A0);
}

void sub_29D437704(void *a1)
{
  sub_29D43773C(a1);

  JUMPOUT(0x29ED580A0);
}

void *sub_29D43773C(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A241F808;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_29D4377A0(void *a1, int a2)
{
  *a1 = &unk_2A241F788;
  a1[1] = CFDictionaryCreateMutable(0, a2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  return a1;
}

void *sub_29D437818(void *a1, uint64_t a2)
{
  valuePtr = a2;
  *a1 = &unk_2A241F828;
  a1[1] = 0;
  a1[1] = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, &valuePtr);
  return a1;
}

void *sub_29D437894(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A241F870;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_29D4378E4(void *a1)
{
  sub_29D437894(a1);

  JUMPOUT(0x29ED580A0);
}

void sub_29D437920(void *a1)
{
  sub_29D437894(a1);

  JUMPOUT(0x29ED580A0);
}

void IOHIDParametricAcceleration::GetCurve(IOHIDParametricAcceleration *this@<X0>, const __CFString *a2@<X2>, double *a3@<X8>)
{
  *a3 = IOHIDParametricAcceleration::GetCurveParameter(this, @"HIDAccelIndex", a2);
  a3[1] = IOHIDParametricAcceleration::GetCurveParameter(this, @"HIDAccelGainLinear", v6);
  a3[2] = IOHIDParametricAcceleration::GetCurveParameter(this, @"HIDAccelGainParabolic", v7);
  a3[3] = IOHIDParametricAcceleration::GetCurveParameter(this, @"HIDAccelGainCubic", v8);
  a3[4] = IOHIDParametricAcceleration::GetCurveParameter(this, @"HIDAccelGainQuartic", v9);
  a3[5] = IOHIDParametricAcceleration::GetCurveParameter(this, @"HIDAccelTangentSpeedLinear", v10);
  a3[6] = IOHIDParametricAcceleration::GetCurveParameter(this, @"HIDAccelTangentSpeedParabolicRoot", v11);
}

double IOHIDParametricAcceleration::GetCurveParameter(CFTypeRef cf, const __CFDictionary *a2, const __CFString *a3)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  theDict = 0xAAAAAAAAAAAAAAAALL;
  sub_29D439690(&v9, cf, 0);
  number = 0xAAAAAAAAAAAAAAAALL;
  v9 = &unk_2A241F940;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  Value = CFDictionaryGetValue(theDict, a2);
  sub_29D43982C(&v7, Value, 0);
  if (number)
  {
    valuePtr = 0;
    CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr);
    v5 = valuePtr * 0.0000152587891;
  }

  else
  {
    v5 = 0.0;
  }

  sub_29D437894(&v7);
  sub_29D4397DC(&v9);
  return v5;
}

void sub_29D437ADC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  sub_29D437894(va);
  sub_29D4397DC(va1);
  _Unwind_Resume(a1);
}

uint64_t IOHIDParametricAcceleration::CreateWithParameters(IOHIDParametricAcceleration *this, const __CFArray *a2, double a3, double a4, double a5)
{
  v32 = *MEMORY[0x29EDCA608];
  v9 = _IOHIDLogCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *&buf[4] = a3;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    *&buf[22] = 2048;
    *&buf[24] = a5;
    _os_log_debug_impl(&dword_29D436000, v9, OS_LOG_TYPE_DEBUG, "acceleration %f resolution %f rate %f\n", buf, 0x20u);
  }

  if (this && a3 >= 0.0)
  {
    v28 = 0xAAAAAAAAAAAAAAAALL;
    theArray = 0xAAAAAAAAAAAAAAAALL;
    sub_29D4398C8(&v28, this, 0);
    v10 = 0;
    v27 = 0;
    v28 = &unk_2A241F9E0;
    __src = 0;
    v26 = 0;
    while (v10 < CFArrayGetCount(theArray))
    {
      v31 = -1;
      *&v11 = -1;
      *(&v11 + 1) = -1;
      *&buf[16] = v11;
      *&buf[32] = v11;
      *buf = v11;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
      IOHIDParametricAcceleration::GetCurve(ValueAtIndex, v13, buf);
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*&buf[8]), vceqzq_f64(*&buf[24]))))))
      {
        v14 = v26;
        if (v26 >= v27)
        {
          v16 = __src;
          v17 = v26 - __src;
          v18 = 0x6DB6DB6DB6DB6DB7 * ((v26 - __src) >> 3);
          v19 = v18 + 1;
          if ((v18 + 1) > 0x492492492492492)
          {
            sub_29D439F24();
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((v27 - __src) >> 3) > v19)
          {
            v19 = 0xDB6DB6DB6DB6DB6ELL * ((v27 - __src) >> 3);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v27 - __src) >> 3)) >= 0x249249249249249)
          {
            v19 = 0x492492492492492;
          }

          if (v19)
          {
            sub_29D43A048(&__src, v19);
          }

          v20 = 8 * ((v26 - __src) >> 3);
          *v20 = *buf;
          *(v20 + 16) = *&buf[16];
          *(v20 + 32) = *&buf[32];
          *(v20 + 48) = v31;
          v15 = 56 * v18 + 56;
          v21 = (56 * v18 - v17);
          memcpy((v20 - v17), v16, v17);
          v22 = __src;
          __src = v21;
          v26 = v15;
          v27 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v26 = *buf;
          *(v14 + 1) = *&buf[16];
          *(v14 + 2) = *&buf[32];
          *(v14 + 6) = v31;
          v15 = (v14 + 56);
        }

        v26 = v15;
      }

      ++v10;
    }

    if (v26 != __src)
    {
      operator new();
    }

    if (__src)
    {
      v26 = __src;
      operator delete(__src);
    }

    sub_29D439A14(&v28);
  }

  v23 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_29D4380C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29D439A14(&a15);
  _Unwind_Resume(a1);
}

double IOHIDParametricAcceleration::multiplier(IOHIDParametricAcceleration *this, double a2)
{
  v3 = a2 / (*(this + 14) / *(this + 15));
  v4 = *(this + 1);
  if (v3 <= v4)
  {
    v6 = v3 * *(this + 9) * (v3 * *(this + 9)) + *(this + 8) * v3;
    v7 = v6 + pow(v3 * *(this + 10), 3.0);
    v5 = v7 + pow(v3 * *(this + 11), 4.0);
  }

  else if (v3 <= *(this + 2) && v4 == *(this + 12))
  {
    v5 = *(this + 5) + *(this + 3) * v3;
  }

  else
  {
    v5 = sqrt(*(this + 6) + *(this + 4) * v3);
  }

  return v5 * 1.43283582;
}

void *IOHIDParametricAcceleration::serialize(IOHIDParametricAcceleration *this, __CFDictionary *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  theDict = 0xAAAAAAAAAAAAAAAALL;
  sub_29D4375F0(&v4, a2, 0);
  v4 = &unk_2A241F788;
  CFDictionarySetValue(theDict, @"Class", @"IOHIDParametricAcceleration");
  sub_29D436CD0(&v4, @"AccelIndex", vcvtd_n_u64_f64(*(this + 7), 0x10uLL));
  sub_29D436CD0(&v4, @"GainLinear", vcvtd_n_u64_f64(*(this + 8), 0x10uLL));
  sub_29D436CD0(&v4, @"GainCubic", vcvtd_n_u64_f64(*(this + 10), 0x10uLL));
  sub_29D436CD0(&v4, @"GainParabolic", vcvtd_n_u64_f64(*(this + 9), 0x10uLL));
  sub_29D436CD0(&v4, @"TangentSpeedLinear", vcvtd_n_u64_f64(*(this + 12), 0x10uLL));
  sub_29D436CD0(&v4, @"TangentSpeedParabolicRoot", vcvtd_n_u64_f64(*(this + 13), 0x10uLL));
  return sub_29D43773C(&v4);
}

double IOHIDTableAcceleration::InterpolatePoint(uint64_t a1, double *a2, double *a3, double *a4)
{
  v4 = a4[1];
  v5 = (v4 - a3[1]) / (*a4 - *a3);
  if (v4 - v5 * *a4 + *a2 * v5 >= a2[1])
  {
    v6 = *(a2 + 1);
  }

  return *a2;
}

double IOHIDTableAcceleration::InterpolatePoint(void *a1, double *a2, double *a3)
{
  if (*a3 != *a2)
  {
    v3 = (a3[1] - a2[1]) / (*a3 - *a2);
  }

  v4 = a1[1];
  return *a1;
}

uint64_t IOHIDTableAcceleration::InterpolateFunction(int a1, ACCEL_TABLE_ENTRY *a2, ACCEL_TABLE_ENTRY *this, double a4, uint64_t a5)
{
  v9 = ACCEL_TABLE_ENTRY::point(this, 0);
  v11 = v10;
  result = ACCEL_TABLE_ENTRY::count(a2);
  if (result)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0.0;
    v16 = 0.0;
    do
    {
      v17 = ACCEL_TABLE_ENTRY::point(a2, v14);
      for (i = v18; v17 > v9; v11 = v20)
      {
        if (v13 >= ACCEL_TABLE_ENTRY::count(this) - 1)
        {
          break;
        }

        v16 = v9;
        v15 = v11;
        v9 = ACCEL_TABLE_ENTRY::point(this, ++v13);
      }

      v21 = v11 - (v11 - v15) / (v9 - v16) * v9 + v17 * ((v11 - v15) / (v9 - v16));
      if (v21 >= i)
      {
        v22 = i;
      }

      else
      {
        v22 = v11 - (v11 - v15) / (v9 - v16) * v9 + v17 * ((v11 - v15) / (v9 - v16));
      }

      v23[0] = v17;
      v23[1] = v22 + vabdd_f64(i, v21) * a4;
      sub_29D43A0A4(a5, v23);
      ++v14;
      result = ACCEL_TABLE_ENTRY::count(a2);
    }

    while (v14 < result);
  }

  return result;
}

uint64_t IOHIDTableAcceleration::CreateWithTable(IOHIDTableAcceleration *this, const __CFData *a2, double a3, double a4, double a5)
{
  v11 = *MEMORY[0x29EDCA608];
  BytePtr = CFDataGetBytePtr(this);
  if (BytePtr)
  {
    v6 = BytePtr;
    if (ACCEL_TABLE::signature(BytePtr) == 808464960 || ACCEL_TABLE::signature(v6) == 708989781)
    {
      operator new();
    }

    v8 = _IOHIDLogCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_29D43ED0C(v6, v8);
    }
  }

  else
  {
    v7 = _IOHIDLogCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_29D43EE0C(v7);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_29D438B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_29D43A528(&a13, a14);
  sub_29D439A64(&a21, MEMORY[0x29EDC9528]);
  MEMORY[0x29ED58070](&a37);
  _Unwind_Resume(a1);
}

uint64_t *sub_29D438B84(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  a1[16] = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x29EDC9590] + 64;
  a1[2] = MEMORY[0x29EDC9590] + 64;
  v5 = MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 24);
  v7 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x29EDC9590] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_29D43A364((a1 + 3), 24);
  return a1;
}

void sub_29D438E00(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x29ED58070](v1);
  _Unwind_Resume(a1);
}

uint64_t IOHIDTableAcceleration::CreateOriginalWithTable(IOHIDTableAcceleration *this, const __CFData *a2, double a3, double a4, double a5)
{
  if (this && a4 != 0.0 && a5 != 0.0)
  {
    operator new();
  }

  return 0;
}

double IOHIDTableAcceleration::multiplier(IOHIDTableAcceleration *this, double a2)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  if (v3 != v2)
  {
    v4 = v3 + 3;
    do
    {
      v5 = v4 + 3;
      v6 = *(v4 - 1) >= a2 || v4 == v2;
      v4 += 3;
    }

    while (!v6);
    v3 = v5 - 6;
  }

  return v3[1] + *v3 * a2;
}

void *IOHIDTableAcceleration::serialize(IOHIDTableAcceleration *this, __CFDictionary *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v13 = 0xAAAAAAAAAAAAAAAALL;
  theDict = 0xAAAAAAAAAAAAAAAALL;
  sub_29D4375F0(&v13, a2, 0);
  v13 = &unk_2A241F788;
  CFDictionarySetValue(theDict, @"Class", @"IOHIDTableAcceleration");
  v11 = 0xAAAAAAAAAAAAAAAALL;
  theArray = 0xAAAAAAAAAAAAAAAALL;
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  sub_29D439BB4(&v11, Mutable, 1);
  v11 = &unk_2A241FA80;
  for (i = *(this + 1); i != *(this + 2); i += 3)
  {
    v16 = xmmword_29F34F340;
    v17 = @"x";
    sub_29D437818(v9, vcvtd_n_u64_f64(*i, 0x10uLL));
    v15[0] = v9[1];
    sub_29D437818(v8, vcvtd_n_u64_f64(i[1], 0x10uLL));
    v15[1] = v8[1];
    sub_29D437818(v7, vcvtd_n_u64_f64(i[2], 0x10uLL));
    v15[2] = v7[1];
    sub_29D439D50(v10, &v16, 3uLL, v15, 3uLL);
    CFArrayAppendValue(theArray, v10[1]);
    sub_29D4397DC(v10);
    sub_29D437894(v7);
    sub_29D437894(v8);
    sub_29D437894(v9);
  }

  if (theArray)
  {
    CFDictionarySetValue(theDict, @"Curves", theArray);
  }

  sub_29D439D00(&v11);
  result = sub_29D43773C(&v13);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29D439530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_29D439D00(va);
  sub_29D43773C(va1);
  _Unwind_Resume(a1);
}

void *sub_29D4395C8(void *a1)
{
  *a1 = &unk_2A241F8F0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29D439618(void *a1)
{
  *a1 = &unk_2A241F8F0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29ED580A0);
}

void *sub_29D439690(void *a1, CFTypeRef cf, char a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFDictionaryGetTypeID())
    {
      v7 = cf;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a1 = &unk_2A241F9C0;
  a1[1] = v7;
  if (v7 && (a3 & 1) == 0)
  {
    CFRetain(v7);
  }

  *a1 = &unk_2A241F9A0;
  return a1;
}

void sub_29D43972C(void *a1)
{
  sub_29D4397DC(a1);

  JUMPOUT(0x29ED580A0);
}

void sub_29D439768(void *a1)
{
  sub_29D4397DC(a1);

  JUMPOUT(0x29ED580A0);
}

void sub_29D4397A4(void *a1)
{
  sub_29D4397DC(a1);

  JUMPOUT(0x29ED580A0);
}

void *sub_29D4397DC(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A241F9C0;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_29D43982C(void *a1, CFTypeRef cf, char a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFNumberGetTypeID())
    {
      v7 = cf;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a1 = &unk_2A241F870;
  a1[1] = v7;
  if (v7 && (a3 & 1) == 0)
  {
    CFRetain(v7);
  }

  *a1 = &unk_2A241F828;
  return a1;
}

void *sub_29D4398C8(void *a1, CFTypeRef cf, char a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFArrayGetTypeID())
    {
      v7 = cf;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a1 = &unk_2A241FA60;
  a1[1] = v7;
  if (v7 && (a3 & 1) == 0)
  {
    CFRetain(v7);
  }

  *a1 = &unk_2A241FA40;
  return a1;
}

void sub_29D439964(void *a1)
{
  sub_29D439A14(a1);

  JUMPOUT(0x29ED580A0);
}

void sub_29D4399A0(void *a1)
{
  sub_29D439A14(a1);

  JUMPOUT(0x29ED580A0);
}

void sub_29D4399DC(void *a1)
{
  sub_29D439A14(a1);

  JUMPOUT(0x29ED580A0);
}

void *sub_29D439A14(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A241FA60;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_29D439A64(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void *sub_29D439BB4(void *a1, CFTypeRef cf, char a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFArrayGetTypeID())
    {
      v7 = cf;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a1 = &unk_2A241FB00;
  a1[1] = v7;
  if (v7 && (a3 & 1) == 0)
  {
    CFRetain(v7);
  }

  *a1 = &unk_2A241FAE0;
  return a1;
}

void sub_29D439C50(void *a1)
{
  sub_29D439D00(a1);

  JUMPOUT(0x29ED580A0);
}

void sub_29D439C8C(void *a1)
{
  sub_29D439D00(a1);

  JUMPOUT(0x29ED580A0);
}

void sub_29D439CC8(void *a1)
{
  sub_29D439D00(a1);

  JUMPOUT(0x29ED580A0);
}

void *sub_29D439D00(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A241FB00;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_29D439D50(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  *a1 = &unk_2A241F940;
  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_29D439E74(&__p, a2, a2 + 8 * a3, a3);
  values = 0;
  v10 = 0;
  v11 = 0;
  sub_29D439E74(&values, a4, a4 + 8 * a5, a5);
  a1[1] = CFDictionaryCreate(*MEMORY[0x29EDB8ED8], __p, values, (v13 - __p) >> 3, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (values)
  {
    v10 = values;
    operator delete(values);
  }

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return a1;
}

void sub_29D439E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  sub_29D4397DC(v13);
  _Unwind_Resume(a1);
}

uint64_t sub_29D439E74(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_29D439EE8(result, a4);
  }

  return result;
}

void sub_29D439ECC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29D439EE8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_29D439F3C(a1, a2);
  }

  sub_29D439F24();
}

void sub_29D439F3C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_29D43A014();
}

void sub_29D439F84(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_29D439FE0(exception, a1);
  __cxa_throw(exception, off_29F34F338, MEMORY[0x29EDC9348]);
}

std::logic_error *sub_29D439FE0(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void sub_29D43A014()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void sub_29D43A048(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_29D43A014();
}

uint64_t *sub_29D43A0A4(uint64_t a1, double *a2)
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
      v5 = *(v2 + 4);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v2;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_29D43A170(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_29D43A1C8(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_29D43A1C8(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_29D43A364(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29ED58020](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_29D43A420(a1);
  return a1;
}

void sub_29D43A3F8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_29D43A420(uint64_t a1)
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

void sub_29D43A528(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29D43A528(a1, *a2);
    sub_29D43A528(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_29D43A57C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_29D43A014();
}

double ACCEL_TABLE_ENTRY::point(ACCEL_TABLE_ENTRY *this, unsigned int a2)
{
  v2 = this + 8 * a2;
  result = vcvtd_n_f64_s32(bswap32(*(v2 + 6)), 0x10uLL);
  v4 = vcvtd_n_f64_s32(bswap32(*(v2 + 10)), 0x10uLL);
  return result;
}

uint64_t ACCEL_TABLE::entry(ACCEL_TABLE *this, int a2)
{
  result = this + 10;
  if (a2 >= 1)
  {
    do
    {
      result += 8 * (bswap32(*(result + 4)) >> 16) + 6;
      --a2;
    }

    while (a2);
  }

  return result;
}

void *operator<<(void *a1, uint64_t a2)
{
  v4 = sub_29D43AAF0(a1, " Table: ", 8);
  v5 = v4;
  v6 = *v4;
  *(v4 + *(*v4 - 24) + 8) = *(v4 + *(*v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(v4 + *(v6 - 24) + 24) = 16;
  v7 = v4 + *(v6 - 24);
  if (*(v7 + 36) == -1)
  {
    std::ios_base::getloc((v4 + *(v6 - 24)));
    v8 = std::locale::use_facet(&v17, MEMORY[0x29EDC93D0]);
    v9 = (v8->__vftable[2].~facet_0)(v8, 32);
    std::locale::~locale(&v17);
    *(v7 + 36) = v9;
  }

  *(v7 + 36) = 48;
  v10 = MEMORY[0x29ED57FE0](v5, a2);
  sub_29D43AAF0(v10, "\n", 1);
  v11 = sub_29D43AAF0(a1, "   scale: ", 10);
  v12 = MEMORY[0x29ED57FF0](v11, vcvtd_n_f64_s32(bswap32(*a2), 0x10uLL));
  sub_29D43AAF0(v12, "\n", 1);
  if (*(a2 + 8))
  {
    v13 = 0;
    do
    {
      v14 = a2 + 10;
      if (v13)
      {
        v15 = v13;
        v14 = a2 + 10;
        do
        {
          v14 += 8 * (bswap32(*(v14 + 4)) >> 16) + 6;
          --v15;
        }

        while (v15);
      }

      sub_29D43A8C8(a1, v14);
      ++v13;
    }

    while (v13 < bswap32(*(a2 + 8)) >> 16);
  }

  return a1;
}

void *sub_29D43A8C8(void *a1, uint64_t a2)
{
  v4 = sub_29D43AAF0(a1, " Entry: ", 8);
  v5 = *v4;
  *(v4 + *(*v4 - 24) + 24) = 16;
  *(v4 + *(v5 - 24) + 8) = *(v4 + *(v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  v6 = MEMORY[0x29ED57FE0]();
  sub_29D43AAF0(v6, "\n", 1);
  v7 = sub_29D43AAF0(a1, "    acceleration: ", 18);
  v8 = MEMORY[0x29ED57FF0](v7, vcvtd_n_f64_s32(bswap32(*a2), 0x10uLL));
  sub_29D43AAF0(v8, "\n", 1);
  if (*(a2 + 4))
  {
    v9 = 0;
    v10 = (a2 + 10);
    do
    {
      v11 = sub_29D43AAF0(a1, "    x: ", 7);
      v12 = MEMORY[0x29ED57FF0](v11, vcvtd_n_f64_s32(bswap32(*(v10 - 1)), 0x10uLL));
      v13 = sub_29D43AAF0(v12, "(", 1);
      *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 8;
      v14 = *(v10 - 1);
      v15 = MEMORY[0x29ED58000]();
      v16 = sub_29D43AAF0(v15, ")\n", 2);
      v17 = sub_29D43AAF0(v16, "    y: ", 7);
      v18 = MEMORY[0x29ED57FF0](v17, vcvtd_n_f64_s32(bswap32(*v10), 0x10uLL));
      v19 = sub_29D43AAF0(v18, "(", 1);
      *(v19 + *(*v19 - 24) + 8) = *(v19 + *(*v19 - 24) + 8) & 0xFFFFFFB5 | 8;
      v20 = *v10;
      v10 += 2;
      v21 = MEMORY[0x29ED58000]();
      sub_29D43AAF0(v21, ")\n", 2);
      ++v9;
    }

    while (v9 < bswap32(*(a2 + 4)) >> 16);
  }

  return a1;
}

void *sub_29D43AAF0(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = 0xAAAAAAAAAAAAAAAALL;
  v13[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29ED57FC0](v13, a1);
  if (LOBYTE(v13[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
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

    if (!sub_29D43ACA0(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29ED57FD0](v13);
  return a1;
}

void sub_29D43AC38(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29ED57FD0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x29D43AC18);
}

uint64_t sub_29D43ACA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_29D43AE94();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      HIBYTE(__b[2]) = v12;
      memset(__b, __c, v12);
      *(__b + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v13 = __b;
      }

      else
      {
        v13 = __b[0];
      }

      v14 = (*(*v6 + 96))(v6, v13, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        operator delete(__b[0]);
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

void sub_29D43AE78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

IOHIDPointerScrollFilter *IOHIDPointerScrollFilterFactory(uint64_t a1, const void *a2)
{
  v3 = *MEMORY[0x29EDB8EF0];
  v4 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0x6Bu, 3u, 0x40u, 0xD3u, 0x57u, 0x98u, 0x40u, 0x64u, 0xAAu, 0x17u, 0x92u, 4u, 0xC7u, 0xB0u, 0x6Fu, 0xFDu);
  if (!CFEqual(a2, v4))
  {
    return 0;
  }

  v5 = MEMORY[0x29ED57BD0](*MEMORY[0x29EDB8ED8], 184, 0x10E0040A88CD4D9, 0);
  v6 = CFUUIDGetConstantUUIDWithBytes(v3, 0x73u, 0x61u, 0x69u, 0xDCu, 0xA8u, 0xBCu, 0x45u, 0xB4u, 0xBCu, 0x14u, 0x64u, 0x5Bu, 0x55u, 0x26u, 0xE5u, 0x85u);
  IOHIDPointerScrollFilter::IOHIDPointerScrollFilter(v5, v6);
  return v5;
}

uint64_t IOHIDPointerScrollFilter::AddRef(IOHIDPointerScrollFilter *this, void *a2)
{
  v2 = (*(this + 4) + 1);
  *(this + 4) = v2;
  return v2;
}

uint64_t IOHIDPointerScrollFilter::close(uint64_t result)
{
  *(result + 120) = 0;
  return result;
}

{
  *(result + 120) = 0;
  return result;
}

void IOHIDPointerScrollFilter::scheduleWithDispatchQueue(IOHIDPointerScrollFilter *this, void *a2, dispatch_queue_s *a3)
{
  *(this + 10) = a2;
  IOHIDPointerScrollFilter::createAccelStatsTimer(this);

  IOHIDPointerScrollFilter::setupAcceleration(this);
}

void *IOHIDPointerScrollFilter::setEventCallback(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

{
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void IOHIDPointerScrollFilter::IOHIDPointerScrollFilter(IOHIDPointerScrollFilter *this, const __CFUUID *a2)
{
  *this = &IOHIDPointerScrollFilter::sIOHIDPointerScrollFilterFtbl;
  *(this + 1) = 0;
  *(this + 4) = 1;
  *(this + 10) = 0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 13) = 0;
  sub_29D4377A0(this + 11, 0);
  sub_29D4377A0(this + 13, 0);
  *(this + 15) = 0;
  *(this + 8) = xmmword_29D4401F0;
  *(this + 9) = xmmword_29D440200;
  *(this + 40) = 0;
  *(this + 82) = 257;
  *(this + 166) = 1;
  *(this + 21) = 0;
  *(this + 22) = 60000;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  if (a2)
  {
    *(this + 1) = CFRetain(a2);
    CFPlugInAddInstanceForFactory(a2);
  }
}

void IOHIDPointerScrollFilter::~IOHIDPointerScrollFilter(IOHIDPointerScrollFilter *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFPlugInRemoveInstanceForFactory(v2);
    CFRelease(*(this + 1));
  }

  v3 = *(this + 6);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  for (i = 56; i != 80; i += 8)
  {
    v5 = *(this + i);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  sub_29D43773C(this + 13);
  sub_29D43773C(this + 11);
}

uint64_t IOHIDPointerScrollFilter::QueryInterface(IOHIDPointerScrollFilter *this, CFUUIDBytes a2, void **a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = *MEMORY[0x29EDB8EF0];
  v7 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 5u, 5u, 0xD7u, 0x8Du, 0x4Fu, 0x4Eu, 0x4Cu, 0x41u, 0xA3u, 0xA6u, 0xC7u, 0xA7u, 0x7Bu, 0x41u, 0xBDu, 0xACu);
  if (CFEqual(v5, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(v6, 0xC7u, 0x10u, 0x95u, 0x1Du, 0x18u, 0x40u, 0x45u, 0x6Eu, 0x82u, 0xE7u, 0xFCu, 0xA1u, 0xA0u, 0xFAu, 0x7Fu, 0xE4u), CFEqual(v5, v8)) || (v9 = CFUUIDGetConstantUUIDWithBytes(v6, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u), CFEqual(v5, v9)))
  {
    v10 = 0;
    ++*(this + 4);
  }

  else
  {
    this = 0;
    v10 = 2147483652;
  }

  *a3 = this;
  CFRelease(v5);
  return v10;
}

uint64_t IOHIDPointerScrollFilter::AddRef(IOHIDPointerScrollFilter *this)
{
  v1 = (*(this + 4) + 1);
  *(this + 4) = v1;
  return v1;
}

uint64_t IOHIDPointerScrollFilter::Release(IOHIDPointerScrollFilter *this)
{
  v1 = *(this + 4);
  v2 = (v1 - 1);
  *(this + 4) = v2;
  if (v1 == 1)
  {
    IOHIDPointerScrollFilter::~IOHIDPointerScrollFilter(this);
    MEMORY[0x29ED580A0]();
  }

  return v2;
}

void IOHIDPointerScrollFilter::open(uint64_t a1, uint64_t a2)
{
  *(a1 + 120) = a2;
  v3 = IOHIDServiceCopyProperty();
  if (v3)
  {
    *(a1 + 160) = 1;

    CFRelease(v3);
  }
}

void IOHIDPointerScrollFilter::scheduleWithDispatchQueue(IOHIDPointerScrollFilter *this, dispatch_queue_s *a2)
{
  *(this + 10) = a2;
  IOHIDPointerScrollFilter::createAccelStatsTimer(this);

  IOHIDPointerScrollFilter::setupAcceleration(this);
}

void IOHIDPointerScrollFilter::createAccelStatsTimer(dispatch_queue_t *this)
{
  v2 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, this[10]);
  this[21] = v2;
  if (v2)
  {
    dispatch_set_context(v2, this);
    dispatch_source_set_event_handler_f(this[21], IOHIDPointerScrollFilter::statsTimerCallback);
    dispatch_source_set_timer(this[21], 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    v3 = this[21];

    dispatch_resume(v3);
  }

  else
  {
    v4 = _IOHIDLogCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_29D43EE50(v4);
    }
  }
}

void IOHIDPointerScrollFilter::setupAcceleration(CFDictionaryRef *this)
{
  v12 = *MEMORY[0x29EDCA608];
  if (this[15])
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
    number = 0xAAAAAAAAAAAAAAAALL;
    v2 = IOHIDPointerScrollFilter::copyCachedProperty(this, @"HIDPointerAccelerationMultiplier");
    sub_29D43982C(&v8, v2, 1);
    if (number && (valuePtr = 0, CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr), valuePtr))
    {
      v3 = number;
    }

    else
    {
      sub_29D43EB4C(&valuePtr, 0x10000);
      sub_29D43C81C(&v8, &valuePtr);
      sub_29D437894(&valuePtr);
      v3 = number;
      if (!number)
      {
        v6 = _IOHIDLogCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          RegistryID = this[15];
          if (RegistryID)
          {
            RegistryID = IOHIDServiceGetRegistryID();
          }

          valuePtr = 138412290;
          v11 = RegistryID;
          _os_log_impl(&dword_29D436000, v6, OS_LOG_TYPE_INFO, "[%@] Could not get/create pointer acceleration multiplier\n", &valuePtr, 0xCu);
        }

        goto LABEL_7;
      }
    }

    valuePtr = 0;
    CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr);
    IOHIDPointerScrollFilter::setupPointerAcceleration(this, vcvtd_n_f64_s32(valuePtr, 0x10uLL));
    IOHIDPointerScrollFilter::setupScrollAcceleration(this, 1.0);
    IOHIDPointerScrollFilter::startAccelStatsTimer(this);
LABEL_7:
    sub_29D437894(&v8);
    goto LABEL_10;
  }

  v4 = _IOHIDLogCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_29D43EE94(this, v4);
  }

LABEL_10:
  v5 = *MEMORY[0x29EDCA608];
}

void IOHIDPointerScrollFilter::unscheduleFromDispatchQueue(CFTypeRef *this, dispatch_queue_s *a2)
{
  if (this[21])
  {
    v3 = CFRetain(this[15]);
    v4 = this[10];
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 0x40000000;
    v5[2] = sub_29D43B74C;
    v5[3] = &unk_29F34F358;
    v5[4] = this;
    v5[5] = v3;
    dispatch_async(v4, v5);
  }

  this[10] = 0;
}

void sub_29D43B74C(uint64_t a1)
{
  v2 = *(a1 + 32);
  dispatch_source_cancel(*(v2 + 168));
  dispatch_release(*(v2 + 168));
  v3 = *(a1 + 40);

  CFRelease(v3);
}

CFTypeRef IOHIDPointerScrollFilter::copyPropertyForClient(IOHIDPointerScrollFilter *this, CFTypeRef cf1, const void *a3)
{
  if (!CFEqual(cf1, @"ServiceFilterDebug"))
  {
    return 0;
  }

  v6 = 0xAAAAAAAAAAAAAAAALL;
  cf = 0xAAAAAAAAAAAAAAAALL;
  sub_29D4377A0(&v6, 0);
  IOHIDPointerScrollFilter::serialize(this, cf);
  if (cf)
  {
    v4 = CFRetain(cf);
  }

  else
  {
    v4 = 0;
  }

  sub_29D43773C(&v6);
  return v4;
}

void *IOHIDPointerScrollFilter::serialize(IOHIDPointerScrollFilter *this, __CFDictionary *a2)
{
  v45[3] = *MEMORY[0x29EDCA608];
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  sub_29D4375F0(&v43, a2, 0);
  v43 = &unk_2A241F788;
  v45[0] = "X";
  v45[1] = "Y";
  v45[2] = "Z";
  if (v44)
  {
    v3 = IOHIDPointerScrollFilter::copyCachedProperty(this, @"HIDPointerAccelerationType");
    v42[0] = &unk_2A241FBD0;
    v42[1] = v3;
    if (v3)
    {
      CFDictionarySetValue(v44, @"HIDPointerAccelerationType", v3);
    }

    v40 = 0xAAAAAAAAAAAAAAAALL;
    v41 = 0xAAAAAAAAAAAAAAAALL;
    v4 = IOHIDPointerScrollFilter::copyCachedProperty(this, @"HIDPointerAccelerationAlgorithm");
    sub_29D43982C(&v40, v4, 1);
    if (v41)
    {
      v5 = CFGetTypeID(v41);
      if (v5 == CFNumberGetTypeID())
      {
        value.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
        value.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
        valuePtr.__r_.__value_.__s.__data_[0] = 0;
        CFNumberGetValue(v41, kCFNumberSInt8Type, &valuePtr);
        if (valuePtr.__r_.__value_.__s.__data_[0] > 2uLL)
        {
          v6 = @"Unknown";
        }

        else
        {
          v6 = *(&off_29F34F3A8 + valuePtr.__r_.__value_.__s.__data_[0]);
        }

        sub_29D43E8F8(&value, v6, 0);
        if (value.__r_.__value_.__l.__size_)
        {
          CFDictionarySetValue(v44, @"HIDPointerAccelerationAlgorithm", value.__r_.__value_.__l.__size_);
        }

        sub_29D43EA04(&value);
      }
    }

    v38 = 0xAAAAAAAAAAAAAAAALL;
    v39 = 0xAAAAAAAAAAAAAAAALL;
    v7 = IOHIDPointerScrollFilter::copyCachedProperty(this, @"HIDScrollAccelerationType");
    v38 = &unk_2A241FBD0;
    v39 = v7;
    if (v7)
    {
      CFDictionarySetValue(v44, @"HIDScrollAccelerationType", v7);
    }

    v36 = 0xAAAAAAAAAAAAAAAALL;
    cf = 0xAAAAAAAAAAAAAAAALL;
    v8 = IOHIDPointerScrollFilter::copyCachedProperty(this, @"HIDScrollAccelerationAlgorithm");
    sub_29D43982C(&v36, v8, 1);
    if (cf)
    {
      v9 = CFGetTypeID(cf);
      if (v9 == CFNumberGetTypeID())
      {
        value.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
        value.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
        valuePtr.__r_.__value_.__s.__data_[0] = 0;
        CFNumberGetValue(cf, kCFNumberSInt8Type, &valuePtr);
        if (valuePtr.__r_.__value_.__s.__data_[0] > 2uLL)
        {
          v10 = @"Unknown";
        }

        else
        {
          v10 = *(&off_29F34F3A8 + valuePtr.__r_.__value_.__s.__data_[0]);
        }

        sub_29D43E8F8(&value, v10, 0);
        if (value.__r_.__value_.__l.__size_)
        {
          CFDictionarySetValue(v44, @"HIDScrollAccelerationAlgorithm", value.__r_.__value_.__l.__size_);
        }

        sub_29D43EA04(&value);
      }
    }

    CFDictionarySetValue(v44, @"Class", @"IOHIDPointerScrollFilter");
    sub_29D436CD0(&v43, @"PointerAccelerationValue", vcvtd_n_u64_f64(*(this + 16), 0x10uLL));
    sub_29D436CD0(&v43, @"PointerAccelerationMinimum", vcvtd_n_u64_f64(*(this + 17), 0x10uLL));
    sub_29D436CD0(&v43, @"ScrollAccelerationValue", vcvtd_n_u64_f64(*(this + 18), 0x10uLL));
    sub_29D436CD0(&v43, @"MatchScore", *(this + 5));
    v11 = *(this + 12);
    if (v11)
    {
      CFDictionarySetValue(v44, @"Property", v11);
    }

    if (*(this + 6))
    {
      value.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
      value.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
      sub_29D4377A0(&value, 0);
      (*(**(this + 6) + 24))(*(this + 6), value.__r_.__value_.__l.__size_);
      if (value.__r_.__value_.__l.__size_)
      {
        CFDictionarySetValue(v44, @"Pointer Accelerator", value.__r_.__value_.__l.__size_);
      }

      sub_29D43773C(&value);
    }

    v12 = 0;
    v13 = this + 56;
    do
    {
      if (*&v13[v12 * 8])
      {
        v34 = 0xAAAAAAAAAAAAAAAALL;
        v35 = 0xAAAAAAAAAAAAAAAALL;
        sub_29D4377A0(&v34, 0);
        v32 = 0xAAAAAAAAAAAAAAAALL;
        key = 0xAAAAAAAAAAAAAAAALL;
        sub_29D43E6DC(&valuePtr, "Scroll Accelerator(axis: ");
        sub_29D43E6DC(v26, v45[v12]);
        if ((v27 & 0x80u) == 0)
        {
          v14 = v26;
        }

        else
        {
          v14 = v26[0];
        }

        if ((v27 & 0x80u) == 0)
        {
          v15 = v27;
        }

        else
        {
          v15 = v26[1];
        }

        v16 = std::string::append(&valuePtr, v14, v15);
        v17 = *&v16->__r_.__value_.__l.__data_;
        value.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
        *&value.__r_.__value_.__l.__data_ = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        sub_29D43E6DC(v24, ")");
        if ((v25 & 0x80u) == 0)
        {
          v18 = v24;
        }

        else
        {
          v18 = v24[0];
        }

        if ((v25 & 0x80u) == 0)
        {
          v19 = v25;
        }

        else
        {
          v19 = v24[1];
        }

        v20 = std::string::append(&value, v18, v19);
        v21 = *&v20->__r_.__value_.__l.__data_;
        v31 = v20->__r_.__value_.__r.__words[2];
        *__p = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        sub_29D43EA54(&v32, __p);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[0]);
        }

        if (v25 < 0)
        {
          operator delete(v24[0]);
        }

        if (SHIBYTE(value.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(value.__r_.__value_.__l.__data_);
        }

        if (v27 < 0)
        {
          operator delete(v26[0]);
        }

        if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(valuePtr.__r_.__value_.__l.__data_);
        }

        (*(**&v13[v12 * 8] + 24))(*&v13[v12 * 8], v35);
        if (key && v35)
        {
          CFDictionarySetValue(v44, key, v35);
        }

        sub_29D43EA04(&v32);
        sub_29D43773C(&v34);
      }

      ++v12;
    }

    while (v12 != 3);
    sub_29D437894(&v36);
    sub_29D43EA04(&v38);
    sub_29D437894(&v40);
    sub_29D43EA04(v42);
  }

  result = sub_29D43773C(&v43);
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29D43BDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46)
{
  sub_29D43EA04(&a28);
  sub_29D437894(&a46);
  sub_29D43EA04((v46 - 176));
  sub_29D437894((v46 - 160));
  sub_29D43EA04((v46 - 144));
  sub_29D43773C((v46 - 128));
  _Unwind_Resume(a1);
}

uint64_t IOHIDPointerScrollFilter::match(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (IOHIDServiceConformsTo() || IOHIDServiceConformsTo())
  {
    v2 = 100;
  }

  else
  {
    v2 = 100;
    if (!IOHIDServiceConformsTo())
    {
      if (IOHIDServiceConformsTo())
      {
        v2 = 100;
      }

      else
      {
        v2 = 0;
      }
    }
  }

  *(a1 + 20) = v2;
  v3 = _IOHIDLogCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    RegistryID = IOHIDServiceGetRegistryID();
    v7 = *(a1 + 20);
    v8 = 134218498;
    v9 = a1;
    v10 = 2112;
    v11 = RegistryID;
    v12 = 1024;
    v13 = v7;
    _os_log_debug_impl(&dword_29D436000, v3, OS_LOG_TYPE_DEBUG, "(%p) for ServiceID %@ with score %d\n", &v8, 0x1Cu);
  }

  result = *(a1 + 20);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOHIDPointerScrollFilter::filter(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = IOHIDPointerScrollFilter::filterPropertyEvent(a1, a2);
  if (a1[6] && IOHIDEventConformsTo() && !IOHIDEventIsAbsolute() || (a1[7] || a1[8] || a1[9]) && IOHIDEventConformsTo())
  {
    IOHIDPointerScrollFilter::accelerateEvent(a1);
  }

  return v3;
}

uint64_t IOHIDPointerScrollFilter::filterPropertyEvent(uint64_t a1, uint64_t a2)
{
  if (IOHIDEventConformsTo() && IOHIDEventGetIntegerValue() == 65280 && IOHIDEventGetIntegerValue() == 91)
  {
    DataValue = IOHIDEventGetDataValue();
    errorString = 0;
    IntegerValue = IOHIDEventGetIntegerValue();
    v6 = IOCFUnserializeBinary(DataValue, IntegerValue, *MEMORY[0x29EDB8ED8], 0, &errorString);
    if (errorString)
    {
      v7 = _IOHIDLogCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_29D43EF0C(&errorString, v7);
      }

      v8 = errorString;
      goto LABEL_16;
    }

    v9 = v6;
    if (v6)
    {
      v10 = CFGetTypeID(v6);
      if (v10 != CFDictionaryGetTypeID() || (Value = CFDictionaryGetValue(v9, @"IOHIDSetAcceleration")) == 0 || (v12 = Value, v13 = CFGetTypeID(Value), v13 != CFDictionaryGetTypeID()))
      {
        v8 = v9;
LABEL_16:
        CFRelease(v8);
        return a2;
      }

      CFDictionaryApplyFunction(v12, sub_29D43C68C, *(a1 + 120));
      v14 = *(a1 + 166);
      CFRelease(v9);
      if (v14)
      {
        return 0;
      }
    }
  }

  return a2;
}

uint64_t IOHIDPointerScrollFilter::accelerateEvent(uint64_t a1)
{
  v38[3] = *MEMORY[0x29EDCA608];
  if (*(a1 + 48))
  {
    if (*(a1 + 164) == 1 && IOHIDEventGetType() == 17 && (IOHIDEventGetEventFlags() & 0x100) == 0 && (IOHIDEventGetEventFlags() & 0x10000) == 0)
    {
      IOHIDEventGetFloatValue();
      v3 = v2;
      *buf = v2;
      IOHIDEventGetFloatValue();
      *&buf[8] = v4;
      if (v3 != 0.0 || v4 != 0.0)
      {
        v5 = *(a1 + 48);
        TimeStamp = IOHIDEventGetTimeStamp();
        if ((*(*v5 + 16))(v5, buf, 2, TimeStamp))
        {
          v7 = *MEMORY[0x29EDB8ED8];
          Copy = IOHIDEventCreateCopy();
          if (Copy)
          {
            v9 = Copy;
            Children = IOHIDEventGetChildren();
            if (Children)
            {
              CFArrayRemoveAllValues(Children);
            }

            IOHIDEventSetFloatValue();
            IOHIDEventSetFloatValue();
            IOHIDEventGetEventFlags();
            IOHIDEventSetEventFlags();
            IOHIDEventAppendEvent();
            CFRelease(v9);
          }
        }
      }
    }
  }

  if (*(a1 + 165) == 1 && IOHIDEventGetType() == 6 && (IOHIDEventGetEventFlags() & 0x100) == 0 && (IOHIDEventGetEventFlags() & 0x10000) == 0)
  {
    memset(v38, 255, 24);
    if (IOHIDEventGetScrollMomentum() && (v11 = _IOHIDEventCopyAttachment()) != 0)
    {
      v12 = v11;
      v13 = CFGetTypeID(v11);
      if (v13 == CFNumberGetTypeID())
      {
        v14 = *(a1 + 152);
        valuePtr = 60.0;
        CFNumberGetValue(v12, kCFNumberFloatType, &valuePtr);
        v15 = valuePtr / 60.0;
        *(a1 + 152) = v15;
        if (vabdd_f64(v14, v15) > 0.5)
        {
          v16 = _IOHIDLogCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            RegistryID = *(a1 + 120);
            if (RegistryID)
            {
              RegistryID = IOHIDServiceGetRegistryID();
            }

            v18 = *(a1 + 152);
            *buf = 138412802;
            *&buf[4] = RegistryID;
            *&buf[12] = 2048;
            *&buf[14] = v14;
            v36 = 2048;
            v37 = v18;
            _os_log_impl(&dword_29D436000, v16, OS_LOG_TYPE_INFO, "[%@] _scrollMomentumMult:%.3f->%.3f\n", buf, 0x20u);
          }
        }
      }

      else
      {
        *(a1 + 152) = 0x3FF0000000000000;
      }

      CFRelease(v12);
    }

    else
    {
      *(a1 + 152) = 0x3FF0000000000000;
    }

    v19 = 0;
    v20 = 0;
    v21 = dword_29D440248;
    do
    {
      v22 = *v21++;
      IOHIDEventGetFloatValue();
      *&v38[v19] = v23;
      if (v23 != 0.0)
      {
        v24 = *(a1 + 56 + v19 * 8);
        if (v24)
        {
          *&v38[v19] = *(a1 + 152) * v23;
          v25 = IOHIDEventGetTimeStamp();
          v20 |= (*(*v24 + 16))(v24, &v38[v19], 1, v25);
          *&v38[v19] = *&v38[v19] / *(a1 + 152);
        }
      }

      ++v19;
    }

    while (v19 != 3);
    if (v20)
    {
      v26 = *MEMORY[0x29EDB8ED8];
      v27 = IOHIDEventCreateCopy();
      if (v27)
      {
        v28 = v27;
        v29 = IOHIDEventGetChildren();
        if (v29)
        {
          CFArrayRemoveAllValues(v29);
        }

        for (i = 0; i != 3; ++i)
        {
          *&v38[i] = *&v38[i] * 10.0;
          v31 = dword_29D440248[i];
          IOHIDEventSetFloatValue();
        }

        IOHIDEventGetEventFlags();
        IOHIDEventSetEventFlags();
        IOHIDEventAppendEvent();
        CFRelease(v28);
      }
    }
  }

  result = IOHIDPointerScrollFilter::accelerateChildrens(a1);
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t IOHIDPointerScrollFilter::accelerateChildrens(uint64_t a1)
{
  result = IOHIDEventGetChildren();
  if (result)
  {
    v3 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v4 = result;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
        result = IOHIDPointerScrollFilter::accelerateEvent(a1, ValueAtIndex);
      }
    }
  }

  return result;
}

uint64_t IOHIDPointerScrollFilter::createPointerTableAlgorithm(IOHIDPointerScrollFilter *this, unsigned int a2)
{
  v4 = *(this + 15);
  v5 = IOHIDServiceCopyProperty();
  v11 = &unk_2A241FBF0;
  v12 = v5;
  if (v5 || (v7 = CFDataCreate(*MEMORY[0x29EDB8ED8], byte_29D440254, 102), v10[0] = &unk_2A241FBF0, v10[1] = v7, sub_29D43C81C(&v11, v10), sub_29D43EAFC(v10), (v5 = v12) != 0))
  {
    v8 = IOHIDTableAcceleration::CreateWithTable(v5, v6, *(this + 16), vcvtd_n_f64_s32(a2, 0x10uLL), 67.0);
  }

  else
  {
    v8 = 0;
  }

  sub_29D43EAFC(&v11);
  return v8;
}

void sub_29D43C7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_29D43EAFC(&a9);
  sub_29D43EAFC(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_29D43C81C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

uint64_t IOHIDPointerScrollFilter::createPointerParametricAlgorithm(IOHIDPointerScrollFilter *this, unsigned int a2)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  theArray = 0xAAAAAAAAAAAAAAAALL;
  v4 = IOHIDPointerScrollFilter::copyCachedProperty(this, @"UserPointerAccelCurvesKey");
  sub_29D4398C8(&v12, v4, 1);
  v12 = &unk_2A241F9E0;
  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    v6 = IOHIDParametricAcceleration::CreateWithParameters(theArray, v5, *(this + 16), vcvtd_n_f64_s32(a2, 0x10uLL), 67.0);
  }

  else
  {
    v7 = *(this + 15);
    v8 = IOHIDServiceCopyProperty();
    v11[0] = &unk_2A241FA60;
    v11[1] = v8;
    if (v8)
    {
      v6 = IOHIDParametricAcceleration::CreateWithParameters(v8, v9, *(this + 16), vcvtd_n_f64_s32(a2, 0x10uLL), 67.0);
    }

    else
    {
      v6 = 0;
    }

    sub_29D439A14(v11);
  }

  sub_29D439A14(&v12);
  return v6;
}

void sub_29D43C978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_29D439A14(&a9);
  sub_29D439A14(&a11);
  _Unwind_Resume(a1);
}

const void *IOHIDPointerScrollFilter::copyCachedProperty(CFDictionaryRef *this, const __CFString *a2)
{
  Value = CFDictionaryGetValue(this[14], a2);
  if (Value)
  {
    v5 = Value;
LABEL_3:
    CFRetain(v5);
    return v5;
  }

  if (!this[15])
  {
    return 0;
  }

  v5 = IOHIDServiceCopyProperty();
  if (!v5)
  {
    v5 = CFDictionaryGetValue(this[12], a2);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  return v5;
}

uint64_t IOHIDPointerScrollFilter::createPointerAlgorithm(CFDictionaryRef *this, unsigned int a2)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  cf = 0xAAAAAAAAAAAAAAAALL;
  v4 = IOHIDPointerScrollFilter::copyCachedProperty(this, @"HIDPointerAccelerationAlgorithm");
  sub_29D43982C(&v9, v4, 1);
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
      if (!valuePtr)
      {
LABEL_9:
        PointerTableAlgorithm = IOHIDPointerScrollFilter::createPointerTableAlgorithm(this, a2);
        goto LABEL_10;
      }

      if (valuePtr == 1)
      {
        PointerTableAlgorithm = IOHIDPointerScrollFilter::createPointerParametricAlgorithm(this, a2);
LABEL_10:
        PointerParametricAlgorithm = PointerTableAlgorithm;
        goto LABEL_11;
      }

      if (valuePtr != 2)
      {
        PointerParametricAlgorithm = 0;
        goto LABEL_11;
      }
    }
  }

  PointerParametricAlgorithm = IOHIDPointerScrollFilter::createPointerParametricAlgorithm(this, a2);
  if (!PointerParametricAlgorithm)
  {
    goto LABEL_9;
  }

LABEL_11:
  sub_29D437894(&v9);
  return PointerParametricAlgorithm;
}

void sub_29D43CB18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29D437894(va);
  _Unwind_Resume(a1);
}

const void *sub_29D43CB30(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v2 = CFGetTypeID(result);
    return (v2 == CFNumberGetTypeID());
  }

  return result;
}

uint64_t IOHIDPointerScrollFilter::createScrollTableAlgorithm(IOHIDPointerScrollFilter *this, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v7 = *(this + 15);
  v8 = *(&off_29F34F378 + a2);
  v9 = IOHIDServiceCopyProperty();
  v17 = &unk_2A241FBF0;
  v18 = v9;
  if (v9)
  {
    goto LABEL_4;
  }

  v11 = *(this + 15);
  v15 = &unk_2A241FBF0;
  v16 = IOHIDServiceCopyProperty();
  sub_29D43C81C(&v17, &v15);
  sub_29D43EAFC(&v15);
  v9 = v18;
  if (v18 || (v12 = CFDataCreate(*MEMORY[0x29EDB8ED8], byte_29D440254, 102), v15 = &unk_2A241FBF0, v16 = v12, sub_29D43C81C(&v17, &v15), sub_29D43EAFC(&v15), (v9 = v18) != 0))
  {
LABEL_4:
    v13 = IOHIDTableAcceleration::CreateWithTable(v9, v10, *(this + 18), vcvtd_n_f64_s32(a3, 0x10uLL), vcvtd_n_f64_s32(a4, 0x10uLL));
  }

  else
  {
    v13 = 0;
  }

  sub_29D43EAFC(&v17);
  return v13;
}

void sub_29D43CCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_29D43EAFC(&a9);
  sub_29D43EAFC(&a11);
  _Unwind_Resume(a1);
}

uint64_t IOHIDPointerScrollFilter::createScrollParametricAlgorithm(IOHIDPointerScrollFilter *this, unint64_t a2, unsigned int a3, unsigned int a4)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  theArray = 0xAAAAAAAAAAAAAAAALL;
  v7 = IOHIDPointerScrollFilter::copyCachedProperty(this, @"UserScrollAccelCurvesKey");
  sub_29D4398C8(&v15, v7, 1);
  v15 = &unk_2A241F9E0;
  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    v9 = IOHIDParametricAcceleration::CreateWithParameters(theArray, v8, *(this + 18), vcvtd_n_f64_s32(a3, 0x10uLL), vcvtd_n_f64_s32(a4, 0x10uLL));
  }

  else
  {
    v10 = *(this + 15);
    v11 = IOHIDServiceCopyProperty();
    v14[0] = &unk_2A241FA60;
    v14[1] = v11;
    if (v11)
    {
      v9 = IOHIDParametricAcceleration::CreateWithParameters(v11, v12, *(this + 18), vcvtd_n_f64_s32(a3, 0x10uLL), vcvtd_n_f64_s32(a4, 0x10uLL));
    }

    else
    {
      v9 = 0;
    }

    sub_29D439A14(v14);
  }

  sub_29D439A14(&v15);
  return v9;
}

void sub_29D43CDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_29D439A14(&a9);
  sub_29D439A14(&a11);
  _Unwind_Resume(a1);
}

uint64_t IOHIDPointerScrollFilter::createScrollAlgorithm(CFDictionaryRef *this, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  cf = 0xAAAAAAAAAAAAAAAALL;
  v8 = IOHIDPointerScrollFilter::copyCachedProperty(this, @"HIDScrollAccelerationAlgorithm");
  sub_29D43982C(&v14, v8, 1);
  if (cf)
  {
    v10 = CFGetTypeID(cf);
    if (v10 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
      if (!valuePtr)
      {
LABEL_9:
        ScrollTableAlgorithm = IOHIDPointerScrollFilter::createScrollTableAlgorithm(this, a2, a3, a4);
        goto LABEL_10;
      }

      if (valuePtr == 1)
      {
        ScrollTableAlgorithm = IOHIDPointerScrollFilter::createScrollParametricAlgorithm(this, v9, a3, a4);
LABEL_10:
        ScrollParametricAlgorithm = ScrollTableAlgorithm;
        goto LABEL_11;
      }

      if (valuePtr != 2)
      {
        ScrollParametricAlgorithm = 0;
        goto LABEL_11;
      }
    }
  }

  ScrollParametricAlgorithm = IOHIDPointerScrollFilter::createScrollParametricAlgorithm(this, v9, a3, a4);
  if (!ScrollParametricAlgorithm)
  {
    goto LABEL_9;
  }

LABEL_11:
  sub_29D437894(&v14);
  return ScrollParametricAlgorithm;
}

void sub_29D43CF30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29D437894(va);
  _Unwind_Resume(a1);
}

void *IOHIDPointerScrollFilter::setupPointerAcceleration(IOHIDPointerScrollFilter *this, double a2)
{
  v80 = *MEMORY[0x29EDCA608];
  v3 = *(this + 40);
  result = *(this + 6);
  if (!v3)
  {
    *(this + 6) = 0;
    if (result)
    {
      (*(*result + 8))(result, a2);
    }

    v62 = 0xAAAAAAAAAAAAAAAALL;
    v63 = 0xAAAAAAAAAAAAAAAALL;
    v5 = IOHIDPointerScrollFilter::copyCachedProperty(this, @"HIDSupportsPointerAcceleration");
    sub_29D43E798(&v62, v5, 1);
    if (v63)
    {
      v6 = sub_29D43DB4C(&v62);
    }

    else
    {
      v6 = 1;
    }

    *(this + 164) = v6;
    v60 = 0xAAAAAAAAAAAAAAAALL;
    number = 0xAAAAAAAAAAAAAAAALL;
    v7 = *(this + 15);
    v8 = IOHIDServiceCopyProperty();
    sub_29D43982C(&v60, v8, 1);
    if (!number || (*valuePtr = 0, CFNumberGetValue(number, kCFNumberSInt32Type, valuePtr), !*valuePtr))
    {
      sub_29D43EB4C(valuePtr, 26214400);
      sub_29D43C81C(&v60, valuePtr);
      sub_29D437894(valuePtr);
      if (!number)
      {
        v17 = _IOHIDLogCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          RegistryID = *(this + 15);
          if (RegistryID)
          {
            RegistryID = IOHIDServiceGetRegistryID();
          }

          *valuePtr = 138412290;
          *&valuePtr[4] = RegistryID;
          _os_log_impl(&dword_29D436000, v17, OS_LOG_TYPE_INFO, "[%@] Could not get/create pointer resolution\n", valuePtr, 0xCu);
        }

        goto LABEL_81;
      }
    }

    v58 = 0xAAAAAAAAAAAAAAAALL;
    v59 = 0xAAAAAAAAAAAAAAAALL;
    v9 = IOHIDPointerScrollFilter::copyCachedProperty(this, @"HIDPointerReportRate");
    sub_29D43982C(&v58, v9, 1);
    if (!v59)
    {
      sub_29D43EB4C(valuePtr, 0);
      sub_29D43C81C(&v58, valuePtr);
      sub_29D437894(valuePtr);
      if (!v59)
      {
        v19 = _IOHIDLogCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = *(this + 15);
          if (v20)
          {
            v20 = IOHIDServiceGetRegistryID();
          }

          *valuePtr = 138412290;
          *&valuePtr[4] = v20;
          _os_log_impl(&dword_29D436000, v19, OS_LOG_TYPE_INFO, "[%@] Could not get/create pointer report rate\n", valuePtr, 0xCu);
        }

        goto LABEL_80;
      }
    }

    v56 = &unk_2A241FC20;
    cf1 = 0;
    v54 = &unk_2A241FC20;
    cf = 0;
    v52 = &unk_2A241FC20;
    v53 = 0;
    v50 = &unk_2A241FC20;
    v51 = 0;
    v48 = &unk_2A241F828;
    v49 = 0;
    v10 = IOHIDPointerScrollFilter::copyCachedProperty(this, @"HIDPointerAccelerationType");
    *valuePtr = &unk_2A241FC20;
    *&valuePtr[8] = v10;
    sub_29D43C81C(&v56, valuePtr);
    sub_29D43EC00(valuePtr);
    if (cf1)
    {
      v11 = IOHIDPointerScrollFilter::copyCachedProperty(this, cf1);
      *valuePtr = &unk_2A241FC20;
      *&valuePtr[8] = v11;
      sub_29D43C81C(&v54, valuePtr);
      v12 = sub_29D43EC00(valuePtr);
      sub_29D43982C(v12, cf, 0);
      sub_29D43C81C(&v48, valuePtr);
      sub_29D437894(valuePtr);
      v13 = CFEqual(cf1, @"HIDMouseAcceleration") != 0;
    }

    else
    {
      v13 = 0;
    }

    v14 = v49;
    if (!v49)
    {
      v15 = IOHIDPointerScrollFilter::copyCachedProperty(this, @"HIDMouseAcceleration");
      *valuePtr = &unk_2A241FC20;
      *&valuePtr[8] = v15;
      sub_29D43C81C(&v52, valuePtr);
      v16 = sub_29D43EC00(valuePtr);
      sub_29D43982C(v16, v53, 0);
      sub_29D43C81C(&v48, valuePtr);
      sub_29D437894(valuePtr);
      v14 = v49;
      if (v49)
      {
        v13 = 1;
      }

      else
      {
        v21 = IOHIDPointerScrollFilter::copyCachedProperty(this, @"HIDPointerAcceleration");
        *valuePtr = &unk_2A241FC20;
        *&valuePtr[8] = v21;
        sub_29D43C81C(&v50, valuePtr);
        v22 = sub_29D43EC00(valuePtr);
        sub_29D43982C(v22, v51, 0);
        sub_29D43C81C(&v48, valuePtr);
        sub_29D437894(valuePtr);
        v13 = 0;
        v14 = v49;
        if (!v49)
        {
          goto LABEL_30;
        }
      }
    }

    *valuePtr = 0;
    CFNumberGetValue(v14, kCFNumberSInt32Type, valuePtr);
    *(this + 16) = vcvtd_n_f64_s32(*valuePtr, 0x10uLL);
LABEL_30:
    v23 = _IOHIDLogCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(this + 15);
      if (v24)
      {
        v24 = IOHIDServiceGetRegistryID();
      }

      v25 = "enabled";
      if (*(this + 16) < 0.0)
      {
        v25 = "disabled";
      }

      *valuePtr = 138414338;
      *&valuePtr[4] = v24;
      *&valuePtr[12] = 2080;
      *&valuePtr[14] = v25;
      v66 = 2112;
      v67 = cf1;
      v68 = 2112;
      v69 = cf;
      v70 = 2080;
      v71 = "HIDMouseAcceleration";
      v72 = 2112;
      v73 = v53;
      v74 = 2080;
      v75 = "HIDPointerAcceleration";
      v76 = 2112;
      v77 = v51;
      v78 = 2112;
      v79 = v49;
      _os_log_impl(&dword_29D436000, v23, OS_LOG_TYPE_DEFAULT, "[%@] Pointer acceleration (%s) %@:%@ %s:%@ %s:%@ %@\n", valuePtr, 0x5Cu);
    }

    if (*(this + 16) < 0.0)
    {
      goto LABEL_79;
    }

    v26 = _IOHIDLogCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(this + 15);
      if (v27)
      {
        v27 = IOHIDServiceGetRegistryID();
      }

      sub_29D43EFA0(v27, this + 16);
    }

    v46 = 0xAAAAAAAAAAAAAAAALL;
    v47 = 0xAAAAAAAAAAAAAAAALL;
    v28 = IOHIDPointerScrollFilter::copyCachedProperty(this, @"HIDUseLinearScalingMouseAcceleration");
    sub_29D43982C(&v46, v28, 1);
    v29 = _IOHIDLogCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      if (*(this + 15))
      {
        v37 = IOHIDServiceGetRegistryID();
      }

      else
      {
        v37 = 0;
      }

      v38 = sub_29D43CB30(&v46);
      v39 = "no";
      if (v13)
      {
        v40 = "yes";
      }

      else
      {
        v40 = "no";
      }

      *valuePtr = 138412802;
      *&valuePtr[4] = v37;
      *&valuePtr[12] = 2080;
      *&valuePtr[14] = v40;
      if (v38)
      {
        v39 = "yes";
      }

      v66 = 2080;
      v67 = v39;
      _os_log_debug_impl(&dword_29D436000, v29, OS_LOG_TYPE_DEBUG, "[%@] Is mouse acceleration? %s Use linear? %s\n", valuePtr, 0x20u);
      if (!v13)
      {
        goto LABEL_72;
      }
    }

    else if (!v13)
    {
LABEL_72:
      *valuePtr = 0;
      CFNumberGetValue(number, kCFNumberSInt32Type, valuePtr);
      if (IOHIDPointerScrollFilter::createPointerAlgorithm(this, *valuePtr))
      {
        operator new();
      }

      v41 = _IOHIDLogCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = *(this + 15);
        if (v42)
        {
          v42 = IOHIDServiceGetRegistryID();
        }

        *valuePtr = 138412290;
        *&valuePtr[4] = v42;
        _os_log_impl(&dword_29D436000, v41, OS_LOG_TYPE_INFO, "[%@] Could not create accelerator\n", valuePtr, 0xCu);
      }

      sub_29D437894(&v46);
LABEL_79:
      sub_29D437894(&v48);
      sub_29D43EC00(&v50);
      sub_29D43EC00(&v52);
      sub_29D43EC00(&v54);
      sub_29D43EC00(&v56);
LABEL_80:
      sub_29D437894(&v58);
LABEL_81:
      sub_29D437894(&v60);
      result = sub_29D43E8A8(&v62);
      goto LABEL_82;
    }

    if (v47)
    {
      *valuePtr = 0;
      CFNumberGetValue(v47, kCFNumberSInt32Type, valuePtr);
      if (*valuePtr)
      {
        v30 = _IOHIDLogCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = *(this + 15);
          if (v31)
          {
            v31 = IOHIDServiceGetRegistryID();
          }

          *valuePtr = 138412290;
          *&valuePtr[4] = v31;
          _os_log_impl(&dword_29D436000, v30, OS_LOG_TYPE_DEFAULT, "[%@] Using linear scaling\n", valuePtr, 0xCu);
        }

        if (*(this + 16) == 0.0)
        {
          v44 = 0xAAAAAAAAAAAAAAAALL;
          v45 = 0xAAAAAAAAAAAAAAAALL;
          v32 = IOHIDPointerScrollFilter::copyCachedProperty(this, @"HIDPointerAccelerationMinimum");
          sub_29D43982C(&v44, v32, 1);
          if (sub_29D43CB30(&v44) && (*valuePtr = 0, CFNumberGetValue(v45, kCFNumberSInt32Type, valuePtr), *valuePtr))
          {
            *valuePtr = 0;
            CFNumberGetValue(v45, kCFNumberSInt32Type, valuePtr);
            v33 = vcvtd_n_f64_s32(*valuePtr, 0x10uLL);
            *(this + 17) = v33;
          }

          else
          {
            memset(valuePtr, 170, 16);
            v34 = IOHIDPreferencesCopyDomain();
            sub_29D43982C(valuePtr, v34, 1);
            if (*&valuePtr[8])
            {
              v64 = 0;
              CFNumberGetValue(*&valuePtr[8], kCFNumberSInt32Type, &v64);
              if (v64)
              {
                v64 = 0;
                CFNumberGetValue(*&valuePtr[8], kCFNumberSInt32Type, &v64);
                *(this + 17) = vcvtd_n_f64_s32(v64, 0x10uLL);
              }
            }

            sub_29D437894(valuePtr);
            v33 = *(this + 17);
          }

          *(this + 16) = v33;
          v35 = _IOHIDLogCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v36 = *(this + 15);
            if (v36)
            {
              v36 = IOHIDServiceGetRegistryID();
            }

            sub_29D43EFD8(v36, this + 17);
          }

          sub_29D437894(&v44);
        }

        operator new();
      }
    }

    goto LABEL_72;
  }

  if (!result)
  {
    operator new();
  }

LABEL_82:
  v43 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29D43D9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_29D437894(&a10);
  sub_29D437894(&a12);
  sub_29D437894(&a14);
  sub_29D43EC00(&a16);
  sub_29D43EC00(&a18);
  sub_29D43EC00(&a20);
  sub_29D43EC00(&a22);
  sub_29D437894(&a24);
  sub_29D437894(&a26);
  sub_29D43E8A8(&a28);
  _Unwind_Resume(a1);
}

const void *sub_29D43DB4C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = CFGetTypeID(result);
    if (v3 == CFBooleanGetTypeID())
    {
      return (CFBooleanGetValue(*(a1 + 8)) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFDictionaryRef *IOHIDPointerScrollFilter::setupScrollAcceleration(CFDictionaryRef *this, double a2)
{
  v2 = this;
  v64 = *MEMORY[0x29EDCA608];
  if (*(this + 40))
  {
    for (i = 0; i != 3; ++i)
    {
      if (!this[i + 7])
      {
        operator new();
      }
    }
  }

  else
  {
    v44 = 0xAAAAAAAAAAAAAAAALL;
    v45 = 0xAAAAAAAAAAAAAAAALL;
    v4 = IOHIDPointerScrollFilter::copyCachedProperty(this, @"HIDSupportsScrollAcceleration");
    sub_29D43E798(&v44, v4, 1);
    if (v45)
    {
      v5 = sub_29D43DB4C(&v44);
    }

    else
    {
      v5 = 1;
    }

    *(v2 + 165) = v5;
    v42 = &unk_2A241F828;
    number = 0;
    v40 = &unk_2A241FC20;
    v41 = 0;
    v38 = &unk_2A241FC20;
    cf = 0;
    v36 = &unk_2A241FC20;
    v37 = 0;
    v34 = &unk_2A241FC20;
    v35 = 0;
    v6 = IOHIDPointerScrollFilter::copyCachedProperty(v2, @"HIDScrollAccelerationType");
    *valuePtr = &unk_2A241FC20;
    *&valuePtr[8] = v6;
    sub_29D43C81C(&v40, valuePtr);
    sub_29D43EC00(valuePtr);
    if (v41)
    {
      v7 = IOHIDPointerScrollFilter::copyCachedProperty(v2, v41);
      *valuePtr = &unk_2A241FC20;
      *&valuePtr[8] = v7;
      sub_29D43C81C(&v38, valuePtr);
      sub_29D43EC00(valuePtr);
      sub_29D43982C(valuePtr, cf, 0);
      sub_29D43C81C(&v42, valuePtr);
      sub_29D437894(valuePtr);
    }

    v8 = number;
    if (number)
    {
      goto LABEL_15;
    }

    v9 = IOHIDPointerScrollFilter::copyCachedProperty(v2, @"HIDMouseScrollAcceleration");
    *valuePtr = &unk_2A241FC20;
    *&valuePtr[8] = v9;
    sub_29D43C81C(&v36, valuePtr);
    sub_29D43EC00(valuePtr);
    sub_29D43982C(valuePtr, v37, 0);
    sub_29D43C81C(&v42, valuePtr);
    sub_29D437894(valuePtr);
    v8 = number;
    if (number)
    {
      goto LABEL_15;
    }

    v10 = IOHIDPointerScrollFilter::copyCachedProperty(v2, @"HIDScrollAcceleration");
    *valuePtr = &unk_2A241FC20;
    *&valuePtr[8] = v10;
    sub_29D43C81C(&v34, valuePtr);
    sub_29D43EC00(valuePtr);
    sub_29D43982C(valuePtr, v35, 0);
    sub_29D43C81C(&v42, valuePtr);
    sub_29D437894(valuePtr);
    v8 = number;
    if (number)
    {
LABEL_15:
      *valuePtr = 0;
      CFNumberGetValue(v8, kCFNumberSInt32Type, valuePtr);
      *(v2 + 144) = vcvtd_n_f64_s32(*valuePtr, 0x10uLL);
    }

    v11 = _IOHIDLogCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      RegistryID = *(v2 + 120);
      if (RegistryID)
      {
        RegistryID = IOHIDServiceGetRegistryID();
      }

      v13 = "enabled";
      if (*(v2 + 144) < 0.0)
      {
        v13 = "disabled";
      }

      *valuePtr = 138414338;
      *&valuePtr[4] = RegistryID;
      *&valuePtr[12] = 2080;
      *&valuePtr[14] = v13;
      v50 = 2112;
      v51 = v41;
      v52 = 2112;
      v53 = cf;
      v54 = 2080;
      v55 = "HIDMouseScrollAcceleration";
      v56 = 2112;
      v57 = v37;
      v58 = 2080;
      v59 = "HIDScrollAcceleration";
      v60 = 2112;
      v61 = v35;
      v62 = 2112;
      v63 = number;
      _os_log_impl(&dword_29D436000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Scroll acceleration (%s) %@:%@ %s:%@ %s:%@ %@\n", valuePtr, 0x5Cu);
    }

    if (*(v2 + 144) >= 0.0)
    {
      v14 = _IOHIDLogCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(v2 + 120);
        if (v15)
        {
          v15 = IOHIDServiceGetRegistryID();
        }

        sub_29D43F010(v15, (v2 + 144));
      }

      v32 = 0xAAAAAAAAAAAAAAAALL;
      v33 = 0xAAAAAAAAAAAAAAAALL;
      v16 = IOHIDPointerScrollFilter::copyCachedProperty(v2, @"HIDScrollReportRate");
      sub_29D43982C(&v32, v16, 1);
      if (v33 && (*buf = 0, CFNumberGetValue(v33, kCFNumberSInt32Type, buf), *buf) || (sub_29D43EB4C(buf, 4390912), sub_29D43C81C(&v32, buf), sub_29D437894(buf), v33))
      {
        v17 = 0;
        while (1)
        {
          v18 = v2 + 8 * v17;
          v19 = *(v18 + 56);
          *(v18 + 56) = 0;
          if (v19)
          {
            (*(*v19 + 8))(v19);
          }

          memset(buf, 170, sizeof(buf));
          v20 = *(v2 + 120);
          v21 = *(&off_29F34F390 + v17);
          v22 = IOHIDServiceCopyProperty();
          sub_29D43982C(buf, v22, 1);
          v23 = *&buf[8];
          if (!*&buf[8])
          {
            v24 = *(v2 + 120);
            v25 = IOHIDServiceCopyProperty();
            sub_29D43982C(v46, v25, 1);
            sub_29D43C81C(buf, v46);
            sub_29D437894(v46);
            v23 = *&buf[8];
            if (!*&buf[8])
            {
              break;
            }
          }

          *v46 = 0;
          CFNumberGetValue(v23, kCFNumberSInt32Type, v46);
          v26 = *v46;
          *v46 = 0;
          CFNumberGetValue(v33, kCFNumberSInt32Type, v46);
          if (IOHIDPointerScrollFilter::createScrollAlgorithm(v2, v17, v26, *v46))
          {
            operator new();
          }

          sub_29D437894(buf);
          if (++v17 == 3)
          {
            goto LABEL_48;
          }
        }

        v29 = _IOHIDLogCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = *(v2 + 120);
          if (v30)
          {
            v30 = IOHIDServiceGetRegistryID();
          }

          *v46 = 138412290;
          v47 = v30;
          _os_log_impl(&dword_29D436000, v29, OS_LOG_TYPE_INFO, "[%@] Could not get kIOHIDScrollResolutionKey\n", v46, 0xCu);
        }

        sub_29D437894(buf);
      }

      else
      {
        v27 = _IOHIDLogCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = *(v2 + 120);
          if (v28)
          {
            v28 = IOHIDServiceGetRegistryID();
          }

          *buf = 138412290;
          *&buf[4] = v28;
          _os_log_impl(&dword_29D436000, v27, OS_LOG_TYPE_INFO, "[%@] Could not get/create report rate\n", buf, 0xCu);
        }
      }

LABEL_48:
      sub_29D437894(&v32);
    }

    sub_29D43EC00(&v34);
    sub_29D43EC00(&v36);
    sub_29D43EC00(&v38);
    sub_29D43EC00(&v40);
    sub_29D437894(&v42);
    this = sub_29D43E8A8(&v44);
  }

  v31 = *MEMORY[0x29EDCA608];
  return this;
}

void sub_29D43E35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_29D437894(&a25);
  sub_29D437894(&a9);
  sub_29D43EC00(&a11);
  sub_29D43EC00(&a13);
  sub_29D43EC00(&a15);
  sub_29D43EC00(&a17);
  sub_29D437894(&a19);
  sub_29D43E8A8(&a21);
  _Unwind_Resume(a1);
}

void IOHIDPointerScrollFilter::startAccelStatsTimer(IOHIDPointerScrollFilter *this)
{
  v1 = *(this + 21);
  if (v1)
  {
    v2 = dispatch_time(0, 1000000 * *(this + 22));

    dispatch_source_set_timer(v1, v2, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

__CFString *IOHIDPointerScrollFilter::getAccelerationAlgorithmString(IOHIDPointerScrollFilter *this, unsigned int a2)
{
  if (a2 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_29F34F3A8 + a2);
  }
}

void IOHIDPointerScrollFilter::statsTimerCallback(dispatch_source_t *this, void *a2)
{
  if (this[15])
  {
    dispatch_source_set_timer(this[21], 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    v3 = *(this + 16);
    v4 = *(this + 18);
    v15 = 0xAAAAAAAAAAAAAAAALL;
    number = 0xAAAAAAAAAAAAAAAALL;
    v5 = this[15];
    v6 = IOHIDServiceCopyProperty();
    sub_29D43982C(&v15, v6, 1);
    v13 = 0xAAAAAAAAAAAAAAAALL;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    v7 = this[15];
    v8 = IOHIDServiceCopyProperty();
    sub_29D43982C(&v13, v8, 1);
    if (number)
    {
      valuePtr = 0;
      CFNumberGetValue(number, kCFNumberSInt16Type, &valuePtr);
      v9 = valuePtr;
    }

    else
    {
      v9 = 0;
    }

    if (v14)
    {
      valuePtr = 0;
      CFNumberGetValue(v14, kCFNumberSInt16Type, &valuePtr);
      v11 = valuePtr;
    }

    else
    {
      v11 = 0;
    }

    if (analytics_is_event_used())
    {
      v12 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v12, "PointerAccelerationValue", vcvtd_n_u64_f64(v3, 0x10uLL));
      xpc_dictionary_set_uint64(v12, "ScrollAccelerationValue", vcvtd_n_u64_f64(v4, 0x10uLL));
      xpc_dictionary_set_uint64(v12, "VendorID", v11);
      xpc_dictionary_set_uint64(v12, "ProductID", v9);
      analytics_send_event();
      xpc_release(v12);
    }

    sub_29D437894(&v13);
    sub_29D437894(&v15);
  }

  else
  {
    v10 = _IOHIDLogCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_29D43F048(v10);
    }
  }
}

void sub_29D43E6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29D437894(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_29D43E6DC(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_29D43AE94();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void *sub_29D43E798(void *a1, CFTypeRef cf, char a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFBooleanGetTypeID())
    {
      v7 = cf;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a1 = &unk_2A241FB68;
  a1[1] = v7;
  if (v7 && (a3 & 1) == 0)
  {
    CFRetain(v7);
  }

  *a1 = &unk_2A241FB20;
  return a1;
}

void sub_29D43E834(void *a1)
{
  sub_29D43E8A8(a1);

  JUMPOUT(0x29ED580A0);
}

void sub_29D43E870(void *a1)
{
  sub_29D43E8A8(a1);

  JUMPOUT(0x29ED580A0);
}

void *sub_29D43E8A8(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A241FB68;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_29D43E8F8(void *a1, CFTypeRef cf, char a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFStringGetTypeID())
    {
      v7 = cf;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  *a1 = &unk_2A241FBD0;
  a1[1] = v7;
  if (v7 && (a3 & 1) == 0)
  {
    CFRetain(v7);
  }

  *a1 = &unk_2A241FB88;
  return a1;
}

void sub_29D43E994(void *a1)
{
  sub_29D43EA04(a1);

  JUMPOUT(0x29ED580A0);
}

void sub_29D43E9CC(void *a1)
{
  sub_29D43EA04(a1);

  JUMPOUT(0x29ED580A0);
}

void *sub_29D43EA04(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A241FBD0;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_29D43EA54(void *a1, const char *a2)
{
  *a1 = &unk_2A241FB88;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  a1[1] = CFStringCreateWithCString(0, a2, 0);
  return a1;
}

void sub_29D43EAC4(void *a1)
{
  sub_29D43EAFC(a1);

  JUMPOUT(0x29ED580A0);
}

void *sub_29D43EAFC(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A241FBF0;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_29D43EB4C(void *a1, int a2)
{
  valuePtr = a2;
  *a1 = &unk_2A241F828;
  a1[1] = 0;
  a1[1] = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
  return a1;
}

void sub_29D43EBC8(void *a1)
{
  sub_29D43EC00(a1);

  JUMPOUT(0x29ED580A0);
}

void *sub_29D43EC00(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A241FC20;
  a1[1] = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_29D43EC50(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2048;
  *(a4 + 14) = v4;
  return result;
}

void sub_29D43EC78(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

void sub_29D43EC94(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_29D436000, a2, OS_LOG_TYPE_DEBUG, "table index %zu\n", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

void sub_29D43ED0C(ACCEL_TABLE *a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v4[0] = 67109120;
  v4[1] = ACCEL_TABLE::signature(a1);
  _os_log_debug_impl(&dword_29D436000, a2, OS_LOG_TYPE_DEBUG, "unsupported table signature  %d\n", v4, 8u);
  v3 = *MEMORY[0x29EDCA608];
}

void sub_29D43ED98(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_debug_impl(&dword_29D436000, log, OS_LOG_TYPE_DEBUG, "Acceleration table %s\n", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_29D43EE94(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_29D436000, a2, OS_LOG_TYPE_DEBUG, "(%p) setupAcceleration service not available\n", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}

void sub_29D43EF0C(CFStringRef *a1, NSObject *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  CStringPtr = CFStringGetCStringPtr(*a1, 0);
  v5 = 136315138;
  v6 = CStringPtr;
  _os_log_error_impl(&dword_29D436000, a2, OS_LOG_TYPE_ERROR, "Unable to deserialize HID Property Event %s", &v5, 0xCu);
  v4 = *MEMORY[0x29EDCA608];
}

void sub_29D43EFA0(uint64_t a1, uint64_t *a2)
{
  sub_29D43EC68(a1, a2);
  sub_29D43EC50(v2, 5.778e-34, v3, v4);
  sub_29D43EC78(&dword_29D436000, "[%@] Pointer acceleration value %f\n", v5, v6);
}

void sub_29D43EFD8(uint64_t a1, uint64_t *a2)
{
  sub_29D43EC68(a1, a2);
  sub_29D43EC50(v2, 5.778e-34, v3, v4);
  sub_29D43EC78(&dword_29D436000, "[%@] Override pointer acceleration value with minimum %f\n", v5, v6);
}

void sub_29D43F010(uint64_t a1, uint64_t *a2)
{
  sub_29D43EC68(a1, a2);
  sub_29D43EC50(v2, 5.778e-34, v3, v4);
  sub_29D43EC78(&dword_29D436000, "[%@] Scroll acceleration value %f\n", v5, v6);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FDF0]();
}

{
  return MEMORY[0x2A1C6FE08]();
}

{
  return MEMORY[0x2A1C6FE18]();
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

void operator new()
{
    ;
  }
}