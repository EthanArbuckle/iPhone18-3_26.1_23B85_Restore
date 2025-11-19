void sub_1DDFDF5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va5, a6);
  va_start(va4, a6);
  va_start(va3, a6);
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  va_copy(va3, va2);
  v13 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v15 = va_arg(va4, const void *);
  va_copy(va5, va4);
  v17 = va_arg(va5, const void *);
  std::optional<applesauce::CF::ArrayRef>::~optional(va1);
  applesauce::CF::ArrayRef::~ArrayRef(va2);
  applesauce::CF::ArrayRef::~ArrayRef(va3);
  applesauce::CF::ArrayRef::~ArrayRef(va4);
  applesauce::CF::ArrayRef::~ArrayRef(va5);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v6 + 160);
  _Unwind_Resume(a1);
}

void applesauce::CF::at_or<applesauce::CF::ArrayRef,__CFString const*>(void *a1, const __CFDictionary *a2, const void *a3, void *a4)
{
  applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*>(&cf, a2, a3);
  if (v8 == 1)
  {
    v6 = cf;
    if (cf)
    {
      CFRetain(cf);
      *a1 = v6;
      CFRelease(v6);
      return;
    }

    a4 = a1;
  }

  else
  {
    *a1 = *a4;
  }

  *a4 = 0;
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

uint64_t applesauce::CF::details::at_to<unsigned int>(const __CFArray *a1, unint64_t a2)
{
  if (CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::convert_to<unsigned int,0>(ValueAtIndex);
}

void ParametricFilters::setParametricFilters(uint64_t a1, uint64_t *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v4 = a2[1];
  if (caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(a1 + 160))
  {
    v6 = *(a1 + 12);
    if (v6)
    {
      v41 = -858993459 * ((v4 - v5) >> 2);
      v7 = *(a1 + 16);
      v8 = (v6 + 15) & 0x1FFFFFFF0;
      v9 = xmmword_1DE095290;
      v10 = xmmword_1DE0952A0;
      v11 = xmmword_1DE0952B0;
      v12 = xmmword_1DE0952C0;
      v13 = xmmword_1DE0952D0;
      v14 = xmmword_1DE095220;
      v15 = xmmword_1DE095150;
      v16 = xmmword_1DE095160;
      v17 = vdupq_n_s64(v6 - 1);
      v18 = vdupq_n_s64(0x10uLL);
      do
      {
        v19 = vmovn_s64(vcgeq_u64(v17, v16));
        if (vuzp1_s8(vuzp1_s16(v19, *v9.i8), *v9.i8).u8[0])
        {
          v7[48] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v19, *&v9), *&v9).i8[1])
        {
          v7[104] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v17, *&v15))), *&v9).i8[2])
        {
          v7[160] = 0;
          v7[216] = 0;
        }

        v20 = vmovn_s64(vcgeq_u64(v17, v14));
        if (vuzp1_s8(*&v9, vuzp1_s16(v20, *&v9)).i32[1])
        {
          v7[272] = 0;
        }

        if (vuzp1_s8(*&v9, vuzp1_s16(v20, *&v9)).i8[5])
        {
          v7[328] = 0;
        }

        if (vuzp1_s8(*&v9, vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v17, *&v13)))).i8[6])
        {
          v7[384] = 0;
          v7[440] = 0;
        }

        v21 = vmovn_s64(vcgeq_u64(v17, v12));
        if (vuzp1_s8(vuzp1_s16(v21, *v9.i8), *v9.i8).u8[0])
        {
          v7[496] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v21, *&v9), *&v9).i8[1])
        {
          v7[552] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v17, *&v11))), *&v9).i8[2])
        {
          v7[608] = 0;
          v7[664] = 0;
        }

        v22 = vmovn_s64(vcgeq_u64(v17, v10));
        if (vuzp1_s8(*&v9, vuzp1_s16(v22, *&v9)).i32[1])
        {
          v7[720] = 0;
        }

        if (vuzp1_s8(*&v9, vuzp1_s16(v22, *&v9)).i8[5])
        {
          v7[776] = 0;
        }

        if (vuzp1_s8(*&v9, vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v17, *&v9)))).i8[6])
        {
          v7[832] = 0;
          v7[888] = 0;
        }

        v14 = vaddq_s64(v14, v18);
        v15 = vaddq_s64(v15, v18);
        v16 = vaddq_s64(v16, v18);
        v13 = vaddq_s64(v13, v18);
        v12 = vaddq_s64(v12, v18);
        v11 = vaddq_s64(v11, v18);
        v10 = vaddq_s64(v10, v18);
        v7 += 896;
        v9 = vaddq_s64(v9, v18);
        v8 -= 16;
      }

      while (v8);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v40 = (a1 + 192);
      v26 = *(a1 + 16);
      while ((*(v26 + v23 + 48) & 1) != 0)
      {
LABEL_40:
        ++v24;
        v23 += 56;
        if (v24 >= v6)
        {
          goto LABEL_62;
        }
      }

      if (v25 >= v41)
      {
        goto LABEL_62;
      }

      *v48 = 0;
      *&v48[8] = 0;
      *&v48[16] = 0x3FF0000000000000;
      v49 = 0;
      v50 = 0;
      v27 = *a2;
      v28 = *a2 + 20 * v25;
      if ((*(v28 + 4) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(v28 + 8) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(v28 + 12) & 0x7FFFFFFFu) < 0x7F800000)
      {
        v32 = (*(v28 + 4) + *(v28 + 4)) / *a1;
        if (v32 > 0.99)
        {
          v32 = 0.99;
        }

        if (!BiquadCoefficients::SetQ(v48, *v28, v32 * 3.14159265, *(v28 + 8), *(v28 + 12)))
        {
          v30 = *&v48[16];
          goto LABEL_39;
        }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v33 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
LABEL_38:
          *v48 = 0;
          *&v48[8] = 0;
          v49 = 0;
          v50 = 0;
          v27 = *a2;
          v26 = *(a1 + 16);
          v30 = 1.0;
          v6 = *(a1 + 12);
LABEL_39:
          v31 = v26 + v23;
          *(v31 + 44) = *(v27 + 20 * v25 + 16);
          *v31 = v30;
          *(v31 + 8) = v49;
          *(v31 + 16) = v50;
          *(v31 + 24) = *v48;
          *(v31 + 32) = *&v48[8];
          *(v31 + 40) = 1;
          *(v31 + 48) = 1;
          ++v25;
          goto LABEL_40;
        }

        v34 = a1 + 192;
        if (*(a1 + 215) < 0)
        {
          v34 = *v40;
        }

        *buf = 136315650;
        v43 = v34;
        v44 = 2080;
        v45 = "setParametricFilters";
        v46 = 1024;
        v47 = v24;
        v35 = v33;
        v36 = "[%s|%s] Biquad Stage %u error; replacing with bypass filter";
      }

      else
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v29 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }

        v37 = a1 + 192;
        if (*(a1 + 215) < 0)
        {
          v37 = *v40;
        }

        *buf = 136315650;
        v43 = v37;
        v44 = 2080;
        v45 = "setParametricFilters";
        v46 = 1024;
        v47 = v24;
        v35 = v29;
        v36 = "[%s|%s] Biquad Stage %u error -- non-finite parameter; replacing with bypass filter";
      }

      _os_log_error_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_ERROR, v36, buf, 0x1Cu);
      goto LABEL_38;
    }

LABEL_62:
    ParametricFilters::setParametricFilters(a1, (a1 + 16));
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a1 + 160);
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v38 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v39 = (a1 + 192);
      if (*(a1 + 215) < 0)
      {
        v39 = *v39;
      }

      *v48 = 136315394;
      *&v48[4] = v39;
      *&v48[12] = 2080;
      *&v48[14] = "setParametricFilters";
      _os_log_debug_impl(&dword_1DDB85000, v38, OS_LOG_TYPE_DEBUG, "[%s|%s] Biquads not updated - lock not acquired", v48, 0x16u);
    }
  }
}

void ParametricFilters::setParametricFilters(uint64_t a1, uint64_t *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3[1];
  v7 = (v6 - *a3) >> 2;
  if (v7 >= -858993459 * ((a2[1] - *a2) >> 3))
  {
    LODWORD(v7) = -858993459 * ((a2[1] - *a2) >> 3);
  }

  if (v6 == *a3)
  {
    v8 = -858993459 * ((a2[1] - *a2) >> 3);
  }

  else
  {
    v8 = v7;
  }

  if (caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(a1 + 160))
  {
    v9 = *(a1 + 12);
    if (v9)
    {
      v10 = *(a1 + 16);
      v11 = (v9 + 15) & 0x1FFFFFFF0;
      v12 = xmmword_1DE095290;
      v13 = xmmword_1DE0952A0;
      v14 = xmmword_1DE0952B0;
      v15 = xmmword_1DE0952C0;
      v16 = xmmword_1DE0952D0;
      v17 = xmmword_1DE095220;
      v18 = xmmword_1DE095150;
      v19 = xmmword_1DE095160;
      v20 = vdupq_n_s64(v9 - 1);
      v21 = vdupq_n_s64(0x10uLL);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v20, v19));
        if (vuzp1_s8(vuzp1_s16(v22, *v12.i8), *v12.i8).u8[0])
        {
          v10[48] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v22, *&v12), *&v12).i8[1])
        {
          v10[104] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v20, *&v18))), *&v12).i8[2])
        {
          v10[160] = 0;
          v10[216] = 0;
        }

        v23 = vmovn_s64(vcgeq_u64(v20, v17));
        if (vuzp1_s8(*&v12, vuzp1_s16(v23, *&v12)).i32[1])
        {
          v10[272] = 0;
        }

        if (vuzp1_s8(*&v12, vuzp1_s16(v23, *&v12)).i8[5])
        {
          v10[328] = 0;
        }

        if (vuzp1_s8(*&v12, vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v20, *&v16)))).i8[6])
        {
          v10[384] = 0;
          v10[440] = 0;
        }

        v24 = vmovn_s64(vcgeq_u64(v20, v15));
        if (vuzp1_s8(vuzp1_s16(v24, *v12.i8), *v12.i8).u8[0])
        {
          v10[496] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v24, *&v12), *&v12).i8[1])
        {
          v10[552] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v20, *&v14))), *&v12).i8[2])
        {
          v10[608] = 0;
          v10[664] = 0;
        }

        v25 = vmovn_s64(vcgeq_u64(v20, v13));
        if (vuzp1_s8(*&v12, vuzp1_s16(v25, *&v12)).i32[1])
        {
          v10[720] = 0;
        }

        if (vuzp1_s8(*&v12, vuzp1_s16(v25, *&v12)).i8[5])
        {
          v10[776] = 0;
        }

        if (vuzp1_s8(*&v12, vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v20, *&v12)))).i8[6])
        {
          v10[832] = 0;
          v10[888] = 0;
        }

        v17 = vaddq_s64(v17, v21);
        v18 = vaddq_s64(v18, v21);
        v19 = vaddq_s64(v19, v21);
        v16 = vaddq_s64(v16, v21);
        v15 = vaddq_s64(v15, v21);
        v14 = vaddq_s64(v14, v21);
        v13 = vaddq_s64(v13, v21);
        v10 += 896;
        v12 = vaddq_s64(v12, v21);
        v11 -= 16;
      }

      while (v11);
      v26 = 0;
      v27 = *a3;
      v28 = (a3[1] - *a3) >> 2;
      v29 = *a2;
      v30 = (*(a1 + 16) + 48);
      v31 = *a3;
      do
      {
        if ((*v30 & 1) == 0)
        {
          if (v26 >= v8)
          {
            break;
          }

          if (v28 <= v26)
          {
            v32 = 0;
            *(v30 - 1) = 0;
          }

          else
          {
            *(v30 - 1) = *v31;
            v32 = v27[v26];
          }

          *(v30 - 1) = v32;
          v33 = (v29 + 40 * v26);
          *(v30 - 6) = v33[2];
          *(v30 - 5) = v33[3];
          *(v30 - 4) = v33[4];
          *(v30 - 3) = *v33;
          *(v30 - 2) = v33[1];
          *(v30 - 8) = 1;
          *v30 = 1;
          ++v26;
        }

        ++v31;
        v30 += 56;
        --v9;
      }

      while (v9);
    }

    ParametricFilters::setParametricFilters(a1, (a1 + 16));

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a1 + 160);
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v34 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v35 = (a1 + 192);
      if (*(a1 + 215) < 0)
      {
        v35 = *v35;
      }

      v36 = 136315394;
      v37 = v35;
      v38 = 2080;
      v39 = "setParametricFilters";
      _os_log_debug_impl(&dword_1DDB85000, v34, OS_LOG_TYPE_DEBUG, "[%s|%s] Biquads not updated - lock not acquired", &v36, 0x16u);
    }
  }
}

BOOL ParametricFilters::isEnabled(ParametricFilters *this)
{
  if (*(this + 16))
  {
    if (*(this + 9) != *(this + 8))
    {
      if (atomic_load(this + 29))
      {
        return 1;
      }
    }
  }

  if (!*(this + 18) || *(this + 12) == *(this + 11))
  {
    return 0;
  }

  v3 = atomic_load(this + 30);
  return v3 != 0;
}

uint64_t ParametricFilters::toggleParametricFilterPrivate(ParametricFilters *this, int a2, char a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *(this + 3);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = 0;
  v7 = (*(this + 2) + 48);
  do
  {
    if (*(v7 - 1) == a2 && *v7 == 1)
    {
      *(v7 - 8) = a3;
      ++v6;
    }

    v7 += 56;
    --v5;
  }

  while (v5);
  if (v6)
  {

    return ParametricFilters::setParametricFilters(this, this + 2);
  }

  else
  {
LABEL_11:
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v9 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v10 = (this + 192);
      if (*(this + 215) < 0)
      {
        v10 = *v10;
      }

      v11 = 136315650;
      v12 = v10;
      v13 = 2080;
      v14 = "toggleParametricFilterPrivate";
      v15 = 1024;
      v16 = a2;
      _os_log_debug_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEBUG, "[%s|%s] Could not find biquad %u", &v11, 0x1Cu);
    }

    return 1;
  }
}

uint64_t ParametricFilters::toggleParametricFilter(ParametricFilters *this, int a2, char a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 160))
  {
    v6 = ParametricFilters::toggleParametricFilterPrivate(this, a2, a3);
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 160);
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v7 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v9 = (this + 192);
      if (*(this + 215) < 0)
      {
        v9 = *v9;
      }

      v10 = 136315394;
      v11 = v9;
      v12 = 2080;
      v13 = "toggleParametricFilter";
      _os_log_debug_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEBUG, "[%s|%s] Biquads not updated - lock not acquired", &v10, 0x16u);
    }

    return 0;
  }

  return v6;
}

uint64_t ParametricFilters::getTailLength(ParametricFilters *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0uLL;
  v16 = 0;
  v15 = 0x3FF0000000000000uLL;
  if (caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 160))
  {
    if (atomic_load(this + 29))
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(this + 2);
        if (*(v6 + v3 + 40) == 1 && *(v6 + v3 + 48) == 1)
        {
          v7 = (v6 + v3);
          v8 = *v7;
          v16 = *(v7 + 2);
          v14 = *(v7 + 24);
          v15 = v8;
          BiquadCoefficients::GetT(&v14, *&v8);
          v5 = v5 + vcvtpd_u64_f64(v9);
        }

        ++v4;
        v10 = atomic_load(this + 29);
        v3 += 56;
      }

      while (v4 < v10);
    }

    else
    {
      v5 = 0;
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 160);
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v11 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      v13 = (this + 192);
      if (*(this + 215) < 0)
      {
        v13 = *v13;
      }

      *buf = 136315394;
      v18 = v13;
      v19 = 2080;
      v20 = "getTailLength";
      _os_log_debug_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEBUG, "[%s|%s] Biquad latency not calculated - lock not acquired", buf, 0x16u);
    }

    return 0;
  }

  return v5;
}

BOOL AUJBase::HasParameter(AUJBase *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  Scope = ausdk::AUBase::GetScope(this, a3);
  Element = ausdk::AUScope::GetElement(Scope, a4);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (*(Element + 40) == 1)
  {
    return a2 < ((*(Element + 56) - *(Element + 48)) >> 2);
  }

  v9 = *(Element + 24);
  return v9 != ausdk::flat_map<unsigned int,ausdk::AtomicValue<float>>::find(*(Element + 16), v9, a2);
}

uint64_t AUJBase::SupportedNumChannels(AUJBase *this, const AUChannelInfo **a2)
{
  v2 = *(this + 70);
  if (a2)
  {
    *a2 = v2;
  }

  return (*(this + 71) - v2) >> 2;
}

uint64_t AUJBase::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  v3 = this;
  if ((*(*this + 80))(this))
  {
    v4 = CFGetTypeID(a2);
    if (v4 != CFDictionaryGetTypeID())
    {
      return 4294956445;
    }

    valuePtr = 0;
    Value = CFDictionaryGetValue(a2, @"auversion");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    }

    __p = 0;
    v32 = 0;
    v33 = 0;
    theDict = a2;
    v6 = CFDictionaryGetValue(a2, @"data");
    v7 = v6;
    if (v6)
    {
      BytePtr = CFDataGetBytePtr(v6);
      Length = CFDataGetLength(v7);
      if (Length >= 1)
      {
        v10 = 0;
        v29 = (BytePtr + Length);
        v30 = v3;
        do
        {
          v11 = BytePtr[1].u32[0];
          v12 = &BytePtr[1] + 1;
          if (v11)
          {
            v13 = vrev32_s8(*BytePtr);
            v14 = bswap32(v11);
            do
            {
              v15 = bswap32(*v12);
              v16 = bswap32(v12[1]);
              v17 = v3[1];
              if (v10 >= v33)
              {
                v18 = __p;
                v19 = v10 - __p;
                v20 = (v10 - __p) >> 5;
                v21 = v20 + 1;
                if ((v20 + 1) >> 59)
                {
                  std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
                }

                v22 = v33 - __p;
                if ((v33 - __p) >> 4 > v21)
                {
                  v21 = v22 >> 4;
                }

                if (v22 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v23 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v23 = v21;
                }

                if (v23)
                {
                  if (!(v23 >> 59))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v24 = 32 * v20;
                *v24 = v17;
                *(v24 + 8) = v15;
                *(v24 + 12) = v13;
                *(v24 + 20) = 0;
                *(v24 + 24) = v16;
                v10 = 32 * v20 + 32;
                memcpy(0, v18, v19);
                __p = 0;
                v33 = 0;
                v3 = v30;
              }

              else
              {
                *v10 = v17;
                *(v10 + 8) = v15;
                *(v10 + 12) = v13;
                *(v10 + 20) = 0;
                *(v10 + 24) = v16;
                v10 += 32;
              }

              v32 = v10;
              v12 += 2;
              --v14;
            }

            while (v14);
          }

          BytePtr = v12;
        }

        while (v12 < v29);
      }
    }

    (*(*v3 + 81))(v3, &__p, valuePtr);
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    CFDictionaryRemoveValue(MutableCopy, @"data");
    v26 = ausdk::AUBase::RestoreState(v3, MutableCopy);
    CFRelease(MutableCopy);
    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    return v26;
  }

  else
  {

    return ausdk::AUBase::RestoreState(v3, a2);
  }
}

void sub_1DDFE0B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUJBase::SaveState(AUJBase *this, ausdk **a2)
{
  ausdk::AUBase::SaveState(this, a2);
  if (a2)
  {
    v4 = *a2;
    if (v4)
    {
      valuePtr = (*(*this + 584))(this);
      v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(v4, @"auversion", v5);
      CFRelease(v5);
    }
  }

  return 0;
}

uint64_t AUJBase::Render(AUJBase *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  if (*(this + 74) == *(this + 73))
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, v9);
      if (v11)
      {
        LODWORD(v10) = ausdk::AUInputElement::PullInput(v10, a2, a3, v9, a4);
      }

      if (v10)
      {
        break;
      }

      Element = ausdk::AUScope::GetElement((this + 80), v9);
      if (!Element)
      {
        goto LABEL_22;
      }

      if (!*(Element + 144))
      {
LABEL_23:
        ausdk::Throw(0xFFFFFFFFLL);
      }

      *(*(this + 73) + 8 * v8) = *(Element + 152) + 48;
      v8 = (v9 + 1);
      v9 = v8;
      if (v8 >= (*(this + 74) - *(this + 73)) >> 3)
      {
        goto LABEL_12;
      }
    }

    v8 = v9;
  }

LABEL_12:
  if (*(this + 77) != *(this + 76))
  {
    v13 = 0;
    v14 = 1;
    while (1)
    {
      v15 = ausdk::AUScope::GetElement((this + 128), v14 - 1);
      if (!v15)
      {
        break;
      }

      if (!*(v15 + 144))
      {
        goto LABEL_23;
      }

      *(*(this + 76) + 8 * v13) = *(v15 + 152) + 48;
      v13 = v14;
      v16 = (*(this + 77) - *(this + 76)) >> 3;
      if (v16 <= v14++)
      {
        goto LABEL_19;
      }
    }

LABEL_22:
    ausdk::Throw(0xFFFFD583);
  }

  v16 = 0;
LABEL_19:
  v18 = *(this + 73);
  v19 = *(*this + 184);

  return v19(this, a2, a4, v8, v18, v16);
}

uint64_t AUJBase::ProcessMultipleBufferLists(AUJBase *this, unsigned int *a2, unsigned int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  if (a6)
  {
    v8 = 0;
    v9 = a6;
    do
    {
      v10 = a7[v8];
      if (v10->mNumberBuffers)
      {
        v11 = 0;
        p_mData = &v10->mBuffers[0].mData;
        do
        {
          bzero(*p_mData, *(p_mData - 1));
          ++v11;
          p_mData += 2;
        }

        while (v11 < v10->mNumberBuffers);
      }

      ++v8;
    }

    while (v8 != v9);
  }

  return 0;
}

uint64_t AUJBase::SetParameter(AUJBase *this, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  if (*(this + 17))
  {

    return ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  }

  else
  {
    v11 = (*(*this + 576))(this, a2, a3, a4);
    result = ausdk::AUBase::SetParameter(this, v8, v7, v6, a5);
    if (!(v11 | result))
    {
      (*(*this + 432))(this, 3, 0, 0);
      return 0;
    }
  }

  return result;
}

uint64_t AUJBase::GetProperty(AUJBase *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if ((*(*this + 600))(this))
    {
      result = 0;
      *a5 = *(this + 552);
    }

    else
    {
      return 4294956417;
    }
  }

  return result;
}

uint64_t AUJBase::GetPropertyInfo(AUJBase *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if ((*(*this + 600))(this))
    {
      result = 0;
      *a6 = 1;
      *a5 = 4;
    }

    else
    {
      return 4294956417;
    }
  }

  return result;
}

uint64_t AUJBase::Initialize(AUJBase *this)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *(this + 15);
  if (v2)
  {
    LODWORD(v3) = (*(*v2 + 24))(v2);
  }

  else
  {
    v3 = (*(this + 13) - *(this + 12)) >> 3;
  }

  v4 = *(this + 21);
  if (v4)
  {
    LODWORD(v5) = (*(*v4 + 24))(v4);
    if (!v3)
    {
      goto LABEL_13;
    }

LABEL_8:
    v6 = 0;
    while (1)
    {
      Element = ausdk::AUScope::GetElement((this + 80), v6);
      if (!Element)
      {
LABEL_75:
        ausdk::Throw(0xFFFFD583);
      }

      v8 = *(Element + 96);
      v39 = *(Element + 80);
      v40 = v8;
      v41 = *(Element + 112);
      if (DWORD2(v39) != 1819304813 || (~HIDWORD(v39) & 0x21) != 0)
      {
        break;
      }

      if (v3 == ++v6)
      {
        goto LABEL_13;
      }
    }

    if (AUJBase::AUJBaseLogScope(void)::once != -1)
    {
      dispatch_once(&AUJBase::AUJBaseLogScope(void)::once, &__block_literal_global_29198);
    }

    if (AUJBase::AUJBaseLogScope(void)::scope)
    {
      v21 = *AUJBase::AUJBaseLogScope(void)::scope;
      if (!*AUJBase::AUJBaseLogScope(void)::scope)
      {
        return 4294956428;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      CA::StreamDescription::AsString(__p, &v39, v22, v23);
      if (v38 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      *buf = 136315906;
      v43 = "AUJBase.cpp";
      v44 = 1024;
      v45 = 85;
      v46 = 1024;
      v47 = v6;
      v48 = 2080;
      v49 = v24;
      v25 = "%25s:%-5d Format not supported, input bus %u (format is: %s)\n";
LABEL_63:
      _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, v25, buf, 0x22u);
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 4294956428;
  }

  v5 = (*(this + 19) - *(this + 18)) >> 3;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_13:
  if (v5)
  {
    v9 = 0;
    while (1)
    {
      v10 = ausdk::AUScope::GetElement((this + 128), v9);
      if (!v10)
      {
        goto LABEL_75;
      }

      v11 = *(v10 + 96);
      v39 = *(v10 + 80);
      v40 = v11;
      v41 = *(v10 + 112);
      if (DWORD2(v39) != 1819304813 || (~HIDWORD(v39) & 0x21) != 0)
      {
        break;
      }

      if (v5 == ++v9)
      {
        goto LABEL_19;
      }
    }

    if (AUJBase::AUJBaseLogScope(void)::once != -1)
    {
      dispatch_once(&AUJBase::AUJBaseLogScope(void)::once, &__block_literal_global_29198);
    }

    if (AUJBase::AUJBaseLogScope(void)::scope)
    {
      v21 = *AUJBase::AUJBaseLogScope(void)::scope;
      if (!*AUJBase::AUJBaseLogScope(void)::scope)
      {
        return 4294956428;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      CA::StreamDescription::AsString(__p, &v39, v26, v27);
      if (v38 >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = __p[0];
      }

      *buf = 136315906;
      v43 = "AUJBase.cpp";
      v44 = 1024;
      v45 = 95;
      v46 = 1024;
      v47 = v9;
      v48 = 2080;
      v49 = v28;
      v25 = "%25s:%-5d Format not supported, output bus %u (format: %s)\n";
      goto LABEL_63;
    }

    return 4294956428;
  }

LABEL_19:
  v12 = *(this + 70);
  v13 = *(this + 71);
  if (v12 == v13)
  {
    return 4294956428;
  }

  while (1)
  {
    v14 = *v12;
    v15 = v12[1];
    if (v14 == 0xFFFF && v15 == 65534)
    {
      break;
    }

    if (v14 == 0xFFFF && v15 == 0xFFFF)
    {
      v30 = AUJBase::NumInChannels(this, 0);
      v31 = v3 - 2;
      if (v3 >= 2)
      {
        v32 = 1;
        do
        {
          v33 = v31;
          if (AUJBase::NumInChannels(this, v32) != v30)
          {
            break;
          }

          ++v32;
          v31 = v33 - 1;
        }

        while (v33);
      }

      v34 = v5 - 2;
      if (v5 >= 2)
      {
        v35 = 1;
        do
        {
          v36 = v34;
          if (AUJBase::NumOutChannels(this, v35) != v30)
          {
            break;
          }

          ++v35;
          v34 = v36 - 1;
        }

        while (v36);
      }

      break;
    }

    if (v3)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        if (AUJBase::NumInChannels(this, v19) != *v12)
        {
          break;
        }

        v18 = ++v19 >= v3;
      }

      while (v3 != v19);
      if (v5)
      {
LABEL_35:
        v20 = 0;
        while (AUJBase::NumOutChannels(this, v20) == v12[1])
        {
          if (v5 == ++v20)
          {
            goto LABEL_38;
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v18 = 1;
      if (v5)
      {
        goto LABEL_35;
      }
    }

LABEL_38:
    if (v18)
    {
      break;
    }

LABEL_39:
    v12 += 2;
    if (v12 == v13)
    {
      return 4294956428;
    }
  }

  std::vector<std::complex<float> *,std::allocator<std::complex<float> *>>::resize(this + 73, v3);
  std::vector<std::complex<float> *,std::allocator<std::complex<float> *>>::resize(this + 76, v5);
  return 0;
}

uint64_t AUJBase::NumInChannels(AUJBase *this, unsigned int a2)
{
  Element = ausdk::AUScope::GetElement((this + 80), a2);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  return *(Element + 108);
}

uint64_t AUJBase::NumOutChannels(AUJBase *this, unsigned int a2)
{
  Element = ausdk::AUScope::GetElement((this + 128), a2);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  return *(Element + 108);
}

double AUJBase::PostConstructor(AUJBase *this)
{
  (*(*this + 592))(&v4);
  v2 = *(this + 70);
  if (v2)
  {
    *(this + 71) = v2;
    operator delete(v2);
  }

  result = *&v4;
  *(this + 35) = v4;
  *(this + 72) = v5;
  return result;
}

uint64_t AUJBase::AUJBase(uint64_t a1, OpaqueAudioComponentInstance *a2, __int128 *a3)
{
  v5 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  v6 = &unk_1F5934D48;
  v5->__r_.__value_.__r.__words[0] = &unk_1F5934D48;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5 + 22, *a3, *(a3 + 1));
    v6 = *a1;
  }

  else
  {
    v7 = *a3;
    v5[22].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&v5[22].__r_.__value_.__l.__data_ = v7;
  }

  *(a1 + 552) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0;
  v6[14](a1, 36, AUJBase::AUJBasePropertyListener, a1);
  (*(*a1 + 112))(a1, 8, AUJBase::AUJBasePropertyListener, a1);
  return a1;
}

uint64_t AUJBase::AUJBasePropertyListener(uint64_t this, void *a2, OpaqueAudioComponentInstance *a3)
{
  if (a3 == 8)
  {
    return (*(*this + 624))();
  }

  if (a3 == 36)
  {
    return (*(*this + 616))();
  }

  return this;
}

void NeuralRAD::reset(NeuralRAD *this)
{
  Neuralizer::reset(this);
  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 39);
  v3 = *(this + 35);
  for (i = *(this + 36); i != v3; std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](i, 0))
  {
    --i;
  }

  *(this + 36) = v3;
  *(this + 29) = *(this + 28);

  std::vector<std::vector<unsigned int>>::clear[abi:ne200100](this + 49);
}

void NeuralRAD::process(uint64_t a1, void *a2, unsigned int a3)
{
  v110 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) && *(a1 + 116) == 1)
  {
    v5 = *(a1 + 104);
    if (v5 >= a3)
    {
      v5 = a3;
    }

    v105 = v5;
    if (*(a1 + 52))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        memmove(*(*(a1 + 64) + v6), (*(*(a1 + 64) + v6) + 4 * *(a1 + 108)), 4 * (((*(*(a1 + 64) + v6 + 8) - *(*(a1 + 64) + v6)) >> 2) - *(a1 + 108)));
        ++v7;
        v6 += 32;
      }

      while (v7 < *(a1 + 52));
    }

    if (v105)
    {
      v8 = *(a1 + 96);
      v9 = *(a1 + 88);
      v10 = v105;
      v104 = a2;
      while (1)
      {
        ExpectedNumberOfOutputFrames = v8 - v9;
        if (*(a1 + 160) == 1)
        {
          RequiredNumberOfInputFrames = AudioSampleRateConverterGetRequiredNumberOfInputFrames();
          if (RequiredNumberOfInputFrames > v10)
          {
            ExpectedNumberOfOutputFrames = CA::AudioSampleRateConverter::GetExpectedNumberOfOutputFrames(*(a1 + 152));
            RequiredNumberOfInputFrames = v10;
          }

          v106 = v103;
          v107 = RequiredNumberOfInputFrames;
          MEMORY[0x1EEE9AC00](RequiredNumberOfInputFrames);
          v14 = (v103 - ((v13 + 15) & 0xFFFFFFFF0));
          if (v13 >= 0x200)
          {
            v15 = 512;
          }

          else
          {
            v15 = v13;
          }

          bzero(v103 - ((v13 + 15) & 0xFFFFFFFF0), v15);
          v16 = *(a1 + 48);
          MEMORY[0x1EEE9AC00](v17);
          v19 = v103 - ((v18 + 15) & 0xFFFFFFFF0);
          if (v18 >= 0x200)
          {
            v20 = 512;
          }

          else
          {
            v20 = v18;
          }

          bzero(v103 - ((v18 + 15) & 0xFFFFFFFF0), v20);
          if (v16)
          {
            v21 = 0;
            v22 = *(a1 + 120);
            v23 = *a2;
            v24 = v105 - v10;
            v25 = *(a1 + 96);
            v26 = *(a1 + 88);
            v27 = *(a1 + 16);
            do
            {
              if (v22 == 7012356)
              {
                v28 = kFuMa2ACNMapping[v21];
              }

              else
              {
                v28 = v21;
              }

              v14[v21] = (*(v23 + 32 * v28) + 4 * v24);
              *&v19[8 * v21++] = v27 + 4 * v26;
              v26 += v25;
            }

            while (v16 != v21);
          }

          v29 = v107;
          CA::AudioSampleRateConverter::Process(*(a1 + 152), v14, v107, v19, ExpectedNumberOfOutputFrames);
          *(a1 + 88) += ExpectedNumberOfOutputFrames;
          v9 = *(a1 + 88);
        }

        else
        {
          if (ExpectedNumberOfOutputFrames >= v10)
          {
            v29 = v10;
          }

          else
          {
            v29 = ExpectedNumberOfOutputFrames;
          }

          if (*(a1 + 48))
          {
            v30 = 0;
            v31 = v29;
            v32 = v105 - v10;
            v33 = v31;
            v34 = 4 * v31;
            do
            {
              if (*(a1 + 120) == 7012356)
              {
                v35 = kFuMa2ACNMapping[v30];
              }

              else
              {
                v35 = v30;
              }

              memcpy((*(a1 + 16) + 4 * (*(a1 + 88) + *(a1 + 96) * v30++)), (*(*a2 + 32 * v35) + 4 * v32), v34);
            }

            while (v30 < *(a1 + 48));
            v9 = *(a1 + 88);
            v29 = v33;
          }

          v9 += v29;
          *(a1 + 88) = v9;
        }

        v8 = *(a1 + 96);
        if (v9 < v8)
        {
          goto LABEL_115;
        }

        v107 = v29;
        LODWORD(v106) = v10;
        if (*(a1 + 208) != *(a1 + 200) && *(a1 + 48))
        {
          v36 = 0;
          v37 = 0;
          do
          {
            v38 = *(a1 + 16) + 4 * (*(a1 + 96) * v37);
            MEMORY[0x1E12BE940](v38, 1, *(a1 + 200) + v36, v38, 1);
            ++v37;
            v36 += 4;
          }

          while (v37 < *(a1 + 48));
        }

        if (*(a1 + 364))
        {
          v39 = memcpy(*(a1 + 224), *(a1 + 16), *(a1 + 24) - *(a1 + 16));
          MEMORY[0x1EEE9AC00](v39);
          v41 = (v103 - ((v40 + 15) & 0xFFFFFFFF0));
          if (v40 >= 0x200)
          {
            v42 = 512;
          }

          else
          {
            v42 = v40;
          }

          bzero(v103 - ((v40 + 15) & 0xFFFFFFFF0), v42);
          v43 = *(a1 + 48);
          MEMORY[0x1EEE9AC00](v44);
          v46 = (v103 - ((v45 + 15) & 0xFFFFFFFF0));
          if (v45 >= 0x200)
          {
            v47 = 512;
          }

          else
          {
            v47 = v45;
          }

          bzero(v103 - ((v45 + 15) & 0xFFFFFFFF0), v47);
          v48 = *(a1 + 96);
          if (v43)
          {
            v49 = 0;
            v50 = *(a1 + 224);
            v51 = *(a1 + 16);
            v52 = v41;
            v53 = v46;
            do
            {
              *v52++ = (v50 + 4 * v49);
              *v53++ = (v51 + 4 * v49);
              v49 += v48;
              --v43;
            }

            while (v43);
          }

          ParametricFilters::process(*(a1 + 344), v46, v41, v48, 0);
          (*(***(a1 + 8) + 72))(**(a1 + 8), a1 + 224);
          v54 = *(a1 + 364);
          if (v54 == 2)
          {
            v108[0] = 0;
            v108[0] = **(a1 + 312);
            ParametricFilters::process(*(a1 + 352), v46, v108, *(a1 + 96), 0);
          }

          else if (v54 == 3)
          {
            *v108 = 0u;
            v109 = 0u;
            v55 = *(a1 + 312);
            v56 = *(v55 + 24);
            v108[0] = *v55;
            v108[1] = v56;
            v57 = *(v55 + 48);
            v58 = *(v55 + 72);
            *&v109 = v57;
            *(&v109 + 1) = v58;
            ParametricFilters::process(*(a1 + 352), v46, v108, *(a1 + 96), 0);
          }
        }

        else
        {
          (*(***(a1 + 8) + 72))(**(a1 + 8), a1 + 16);
        }

        v59 = *(a1 + 96);
        if (*(a1 + 176) != 1)
        {
          break;
        }

        v59 = CA::AudioSampleRateConverter::GetExpectedNumberOfOutputFrames(*(a1 + 168));
        v103[1] = v103;
        MEMORY[0x1EEE9AC00](v59);
        v61 = (v103 - ((v60 + 15) & 0xFFFFFFFF0));
        if (v60 >= 0x200)
        {
          v62 = 512;
        }

        else
        {
          v62 = v60;
        }

        bzero(v103 - ((v60 + 15) & 0xFFFFFFFF0), v62);
        v64 = *(a1 + 364);
        if (v64 == 2)
        {
          MEMORY[0x1E12BE940](**(a1 + 312), 1, &kMinus10dBLinearGain, **(a1 + 312), 1, *(a1 + 96));
          IR::FixedIntegerDelay<float>::process();
        }

        if (v64 == 3 && *(a1 + 288) != *(a1 + 280))
        {
          IR::FixedIntegerDelay<float>::process();
        }

        if (*(a1 + 52))
        {
          v66 = 0;
          while (1)
          {
            v67 = *(*(a1 + 392) + 24 * v66);
            v68 = v66;
            if (*(a1 + 336) != 1)
            {
              goto LABEL_75;
            }

            v69 = *(a1 + 304);
            if (v66 != v69)
            {
              break;
            }

LABEL_80:
            if (*(a1 + 364) == 3 && *(a1 + 48))
            {
              v75 = 0;
              v76 = 0;
              do
              {
                v63 = MEMORY[0x1E12BE8F0](*(*(a1 + 312) + v75), 1, *(a1 + 368) + 4 * (v66 + *(a1 + 52) * v76++), v67, 1, v67, 1, *(a1 + 96));
                v75 += 24;
              }

              while (v76 < *(a1 + 48));
            }

            v61[v66++] = v67;
            v77 = *(a1 + 52);
            if (v66 >= v77)
            {
              goto LABEL_87;
            }
          }

          v68 = v66 - (v66 > v69);
LABEL_75:
          if (*(a1 + 272) == **(a1 + 248))
          {
            v70 = (*(***(a1 + 8) + 40))(**(a1 + 8));
            v63 = memcpy(v67, (*v70 + 4 * *(a1 + 96) * v68), 4 * *(a1 + 96));
          }

          else
          {
            vDSP_vclr(*(*(a1 + 392) + 24 * v66), 1, *(a1 + 96));
            if (*(a1 + 424) != *(a1 + 416))
            {
              v71 = 0;
              v72 = 1;
              do
              {
                v73 = (*(***(a1 + 8) + 40))(**(a1 + 8));
                v63 = MEMORY[0x1E12BE8F0](*v73 + 4 * *(a1 + 96) * (v72 - 1), 1, *(*(a1 + 416) + 24 * v71) + 4 * v68, v67, 1, v67, 1);
                v71 = v72;
                v74 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 424) - *(a1 + 416)) >> 3) > v72++;
              }

              while (v74);
            }
          }

          goto LABEL_80;
        }

        v77 = 0;
LABEL_87:
        MEMORY[0x1EEE9AC00](v63);
        v79 = v103 - ((v78 + 15) & 0xFFFFFFFF0);
        if (v78 >= 0x200)
        {
          v80 = 512;
        }

        else
        {
          v80 = v78;
        }

        bzero(v103 - ((v78 + 15) & 0xFFFFFFFF0), v80);
        if (v77)
        {
          v81 = *(a1 + 64);
          v82 = *(a1 + 92);
          v83 = v79;
          do
          {
            v84 = *v81;
            v81 += 4;
            *v83++ = v84 + 4 * v82;
            --v77;
          }

          while (v77);
        }

        CA::AudioSampleRateConverter::Process(*(a1 + 168), v61, *(a1 + 96), v79, v59);
        LODWORD(v85) = *(a1 + 52);
LABEL_110:
        a2 = v104;
        LODWORD(v10) = v106;
        LODWORD(v108[0]) = 1068827891;
        if (!v85)
        {
          goto LABEL_114;
        }

        v96 = 0;
        v97 = 0;
        do
        {
          v98 = *(*(a1 + 64) + v96) + 4 * *(a1 + 92);
          MEMORY[0x1E12BE940](v98, 1, v108, v98, 1, *(a1 + 96));
          ++v97;
          v96 += 32;
        }

        while (v97 < *(a1 + 52));
LABEL_113:
        a2 = v104;
        LODWORD(v10) = v106;
LABEL_114:
        v8 = *(a1 + 96);
        v9 = *(a1 + 88) - v8;
        v99 = *(a1 + 92) + v59;
        *(a1 + 88) = v9;
        *(a1 + 92) = v99;
        LODWORD(v29) = v107;
LABEL_115:
        v10 = (v10 - v29);
        if (!v10)
        {
          goto LABEL_116;
        }
      }

      v65 = *(a1 + 364);
      if (v65 == 2)
      {
        MEMORY[0x1E12BE940](**(a1 + 312), 1, &kMinus10dBLinearGain, **(a1 + 312), 1, *(a1 + 96));
        IR::FixedIntegerDelay<float>::process();
      }

      if (v65 == 3 && *(a1 + 288) != *(a1 + 280))
      {
        IR::FixedIntegerDelay<float>::process();
      }

      if (!*(a1 + 52))
      {
        goto LABEL_113;
      }

      v86 = 0;
      while (1)
      {
        v87 = (*(*(a1 + 64) + 32 * v86) + 4 * *(a1 + 92));
        v88 = v86;
        if (*(a1 + 336) != 1)
        {
          goto LABEL_100;
        }

        v89 = *(a1 + 304);
        if (v86 != v89)
        {
          break;
        }

LABEL_105:
        if (*(a1 + 364) == 3 && *(a1 + 48))
        {
          v94 = 0;
          v95 = 0;
          do
          {
            MEMORY[0x1E12BE8F0](*(*(a1 + 312) + v94), 1, *(a1 + 368) + 4 * (v86 + *(a1 + 52) * v95++), v87, 1, v87, 1, v59);
            v94 += 24;
          }

          while (v95 < *(a1 + 48));
        }

        ++v86;
        v85 = *(a1 + 52);
        if (v86 >= v85)
        {
          goto LABEL_110;
        }
      }

      v88 = v86 - (v86 > v89);
LABEL_100:
      if (*(a1 + 272) == **(a1 + 248))
      {
        v90 = (*(***(a1 + 8) + 40))(**(a1 + 8));
        memcpy(v87, (*v90 + 4 * *(a1 + 96) * v88), 4 * *(a1 + 96));
      }

      else
      {
        vDSP_vclr((*(*(a1 + 64) + 32 * v86) + 4 * *(a1 + 92)), 1, v59);
        if (*(a1 + 424) != *(a1 + 416))
        {
          v91 = 0;
          v92 = 1;
          do
          {
            v93 = (*(***(a1 + 8) + 40))(**(a1 + 8));
            MEMORY[0x1E12BE8F0](*v93 + 4 * *(a1 + 96) * (v92 - 1), 1, *(*(a1 + 416) + 24 * v91) + 4 * v88, v87, 1, v87, 1, v59);
            v91 = v92;
            v74 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 424) - *(a1 + 416)) >> 3) > v92++;
          }

          while (v74);
        }
      }

      goto LABEL_105;
    }

LABEL_116:
    v100 = *(a1 + 92);
    v101 = v100 >= v105;
    v102 = v100 - v105;
    if (v101)
    {
      *(a1 + 92) = v102;
    }

    *(a1 + 108) = v105;
  }
}

void sub_1DDFE2490(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void NeuralRAD::~NeuralRAD(NeuralRAD *this)
{
  NeuralRAD::~NeuralRAD(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F5934FE8;
  v5 = (this + 416);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 392);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 46);
  if (v2)
  {
    *(this + 47) = v2;
    operator delete(v2);
  }

  std::unique_ptr<ParametricFilters>::reset[abi:ne200100](this + 44, 0);
  std::unique_ptr<ParametricFilters>::reset[abi:ne200100](this + 43, 0);
  v5 = (this + 312);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 280);
  std::vector<std::unique_ptr<IR::FixedIntegerDelay<float>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(this + 31);
  if (v3)
  {
    *(this + 32) = v3;
    operator delete(v3);
  }

  v4 = *(this + 28);
  if (v4)
  {
    *(this + 29) = v4;
    operator delete(v4);
  }

  Neuralizer::~Neuralizer(this);
}

void NeuralRAD::getLayoutAzimuthElevation(_DWORD **a1, AudioChannelLayout *a2, void *a3, const void **a4, int16x4_t a5)
{
  GetChannelLayoutSphericalCoordinates(&v36, *a1, a5);
  GetChannelLayoutChannelLabels(&__p, *a1);
  if (&v36 != a2)
  {
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, *&v36.mChannelLayoutTag, *&v36.mNumberChannelDescriptions, (*&v36.mNumberChannelDescriptions - *&v36.mChannelLayoutTag) >> 2);
  }

  if (&v36.mChannelDescriptions[0].mCoordinates[1] != a3)
  {
    std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a3, *&v36.mChannelDescriptions[0].mCoordinates[1], v37, &v37[-*&v36.mChannelDescriptions[0].mCoordinates[1]] >> 2);
  }

  v9 = __p;
  if (((v35 - __p) & 0x3FFFFFFFCLL) != 0)
  {
    v10 = ((v35 - __p) >> 2) - 1;
    v11 = 4 * v10;
    v12 = (4 * v10) ^ 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v13 = *(__p + v11);
      if (v13 <= 0x3E && ((0x4000002000000010uLL >> v13) & 1) != 0 || *(v38 + v11) == 0.0)
      {
        v14 = v10;
        v16 = a4[1];
        v15 = a4[2];
        if (v16 >= v15)
        {
          v18 = *a4;
          v19 = v16 - *a4;
          v20 = v19 >> 2;
          v21 = (v19 >> 2) + 1;
          if (v21 >> 62)
          {
            std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
          }

          v22 = v15 - v18;
          if (v22 >> 1 > v21)
          {
            v21 = v22 >> 1;
          }

          v23 = v22 >= 0x7FFFFFFFFFFFFFFCLL;
          v24 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v23)
          {
            v24 = v21;
          }

          if (v24)
          {
            std::allocator<float>::allocate_at_least[abi:ne200100](a4, v24);
          }

          *(4 * v20) = v14;
          v17 = 4 * v20 + 4;
          memcpy(0, v18, v19);
          v25 = *a4;
          *a4 = 0;
          a4[1] = v17;
          a4[2] = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v16 = v14;
          v17 = (v16 + 1);
        }

        a4[1] = v17;
        v26 = *&a2->mNumberChannelDescriptions;
        v27 = *&a2->mChannelLayoutTag + v11;
        v28 = v26 - *&a2->mChannelLayoutTag;
        v29 = v12 + v28;
        if (v27 + 4 != v26)
        {
          memmove((*&a2->mChannelLayoutTag + v11), (v27 + 4), v12 + v28);
        }

        *&a2->mNumberChannelDescriptions = v27 + v29;
        v30 = a3[1];
        v31 = *a3 + v11;
        v32 = v30 - *a3;
        v33 = v12 + v32;
        if (v31 + 4 != v30)
        {
          memmove((*a3 + v11), (v31 + 4), v12 + v32);
        }

        a3[1] = v31 + v33;
      }

      v11 -= 4;
      LODWORD(v10) = v10 - 1;
      v12 += 4;
    }

    while (v10 != -1);
    v9 = __p;
  }

  if (v9)
  {
    v35 = v9;
    operator delete(v9);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (*&v36.mChannelDescriptions[0].mCoordinates[1])
  {
    v37 = *&v36.mChannelDescriptions[0].mCoordinates[1];
    operator delete(*&v36.mChannelDescriptions[0].mCoordinates[1]);
  }

  if (*&v36.mChannelLayoutTag)
  {
    *&v36.mNumberChannelDescriptions = *&v36.mChannelLayoutTag;
    operator delete(*&v36.mChannelLayoutTag);
  }
}

uint64_t ScottyUpmixer::SetOutputChannelMask(ScottyUpmixer *this)
{
  if ((*(*this + 136))(this, 0))
  {
    v2 = 1;
  }

  else
  {
    v2 = (*(*this + 136))(this, 1);
  }

  *(this + 32) = v2;
  return 0;
}

ParametricFilters **ScottyUpmixer::Reset(ScottyUpmixer *this)
{
  v16 = *MEMORY[0x1E69E9840];
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v2 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 296);
    if (*(this + 319) < 0)
    {
      v3 = *v3;
    }

    v12 = 136315394;
    v13 = v3;
    v14 = 2080;
    v15 = "Reset";
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Resetting ScottyUpmixer", &v12, 0x16u);
  }

  v4 = 0;
  *(this + 35) = 0;
  if (*(this + 116) == 1)
  {
    v4 = (*(*this + 72))(this);
  }

  *(this + 72) = v4;
  v5 = *(this + 16);
  v6 = *(this + 17);
  while (v5 != v6)
  {
    v7 = *v5;
    v8 = *(v5 + 8);
    v5 += 24;
    vDSP_vclr(v7, 1, (v8 - v7) >> 2);
  }

  v9 = *(this + 10);
  if (v9)
  {
    ParametricFilters::reset(v9);
  }

  v10 = *(this + 11);
  if (v10)
  {
    ParametricFilters::reset(v10);
  }

  result = *(this + 6);
  if (result)
  {
    return Crossover2f::Reset(result);
  }

  return result;
}

double ScottyUpmixer::UnInitialize(ScottyUpmixer *this)
{
  v10 = *MEMORY[0x1E69E9840];
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v2 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 296);
    if (*(this + 319) < 0)
    {
      v3 = *v3;
    }

    v6 = 136315394;
    v7 = v3;
    v8 = 2080;
    v9 = "UnInitialize";
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Uninitializing ScottyUpmixer", &v6, 0x16u);
  }

  *(this + 8) = 0;
  std::vector<std::vector<float>>::resize(this + 16, 0);
  result = 0.0;
  *(this + 152) = 0u;
  v5 = (this + 152);
  *(v5 + 124) = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[1] = 0u;
  return result;
}

uint64_t ScottyUpmixer::Initialize(ScottyUpmixer *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v2 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 296);
    if (*(this + 319) < 0)
    {
      v3 = *v3;
    }

    buf = 136315394;
    buf_4 = v3;
    buf_12 = 2080;
    buf_14 = "Initialize";
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Initializing ScottyUpmixer", &buf, 0x16u);
  }

  if ((*(this + 8) & 1) == 0)
  {
    if (*(this + 108) == 1)
    {
      v5 = *(this + 28);
      v6 = v5 % (*(*this + 72))(this) != 0;
    }

    else
    {
      v6 = 1;
    }

    *(this + 116) = v6;
    std::vector<std::vector<float>>::resize(this + 16, 0);
    *(this + 152) = 0u;
    *(this + 276) = 0u;
    *(this + 248) = 0u;
    *(this + 264) = 0u;
    *(this + 216) = 0u;
    *(this + 232) = 0u;
    *(this + 184) = 0u;
    *(this + 200) = 0u;
    *(this + 168) = 0u;
    operator new();
  }

  return 0;
}

uint64_t ScottyUpmixer::UpdateCrossover(ScottyUpmixer *this)
{
  v14 = *MEMORY[0x1E69E9840];
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v2 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 296);
    if (*(this + 319) < 0)
    {
      v3 = *v3;
    }

    v10 = 136315394;
    v11 = v3;
    v12 = 2080;
    v13 = "UpdateCrossover";
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Updating crossover for ScottyUpmixer", &v10, 0x16u);
  }

  v4 = COERCE_FLOAT(atomic_load((*(this + 5) + 108)));
  v5 = COERCE_FLOAT(atomic_load((*(this + 5) + 16)));
  v6 = COERCE_FLOAT(atomic_load((*(this + 5) + 112)));
  v7 = COERCE_FLOAT(atomic_load((*(this + 5) + 24)));
  caulk::pooled_semaphore_mutex::_lock((this + 72));
  v8 = *(this + 6);
  if (v8)
  {
    Crossover2f::SetLowCrossover(v8, v4, v5);
    Crossover2f::SetHighCrossover(*(this + 6), v6, v7);
  }

  return caulk::pooled_semaphore_mutex::_unlock((this + 72));
}

void ScottyUpmixer::~ScottyUpmixer(ScottyUpmixer *this)
{
  v7 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5935018;
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v2 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 296);
    if (*(this + 319) < 0)
    {
      v3 = *v3;
    }

    *v4 = 136315394;
    *&v4[4] = v3;
    v5 = 2080;
    v6 = "~ScottyUpmixer";
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "[%s|%s] Destructing", v4, 0x16u);
  }

  std::vector<std::vector<float>>::resize(this + 16, 0);
  *(this + 152) = 0u;
  *(this + 276) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 168) = 0u;
  if (*(this + 319) < 0)
  {
    operator delete(*(this + 37));
  }

  *v4 = this + 128;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](v4);
  std::unique_ptr<ParametricFilters>::reset[abi:ne200100](this + 11, 0);
  std::unique_ptr<ParametricFilters>::reset[abi:ne200100](this + 10, 0);
  std::unique_ptr<Crossover2f>::reset[abi:ne200100](this + 6, 0);
}

void sub_1DDFE3654(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t ScottyUpmixer::GetParamInfo(int a1, uint64_t a2)
{
  v3 = 0;
  v16 = *MEMORY[0x1E69E9840];
  while (kParameterInfo[v3] != a1)
  {
    v3 += 10;
    if (v3 == 340)
    {
      *a2 = -1;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = @"*** Invalid parameter ***";
      *(a2 + 32) = 0;
      if (getScottyLog(void)::onceToken != -1)
      {
        dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
      }

      v4 = getScottyLog(void)::gLog;
      v5 = os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT);
      result = 0;
      if (v5)
      {
        v12 = 136315394;
        v13 = "GetParamInfo";
        v14 = 1024;
        v15 = a1;
        _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "%s: Invalid Parameter ID: %u", &v12, 0x12u);
        return 0;
      }

      return result;
    }
  }

  result = 0;
  v7 = &kParameterInfo[v3];
  *(a2 + 16) = *(v7 + 1);
  *a2 = *v7;
  *(a2 + 32) = v7[8];
  v8 = a2 + 20;
  v9 = *(a2 + 28);
  v10 = 1;
  do
  {
    v11 = v10;
    if (*(v8 + 4 * result) == -10000000.0)
    {
      *(v8 + 4 * result) = v9;
    }

    v10 = 0;
    result = 1;
  }

  while ((v11 & 1) != 0);
  return result;
}

BOOL ScottyUpmixer::GetParamDefault(int a1, unsigned int a2, float *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 > 1)
  {
    return 0;
  }

  v4 = 0;
  while (kParameterInfo[v4] != a1)
  {
    v4 += 10;
    if (v4 == 340)
    {
      if (getScottyLog(void)::onceToken != -1)
      {
        dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
      }

      v5 = getScottyLog(void)::gLog;
      result = os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v8 = 136315394;
        v9 = "GetParamDefault";
        v10 = 1024;
        v11 = a1;
        _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEFAULT, "%s: Invalid Parameter ID: %u", &v8, 0x12u);
        return 0;
      }

      return result;
    }
  }

  v7 = *&kParameterInfo[v4 + 5 + a2];
  if (v7 == -10000000.0)
  {
    return 0;
  }

  *a3 = v7;
  return 1;
}

void ScottyUpmixer::InitializeSurroundFilters(ScottyUpmixer *this, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (getScottyLog(void)::onceToken != -1)
  {
    dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
  }

  v4 = getScottyLog(void)::gLog;
  if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (this + 296);
    if (*(this + 319) < 0)
    {
      v5 = *v5;
    }

    v13 = 136315394;
    v14 = v5;
    v15 = 2080;
    v16 = "InitializeSurroundFilters";
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "[%s|%s] Initializing surround filters", &v13, 0x16u);
  }

  if (*(this + 3) == 0.0)
  {
    if (getScottyLog(void)::onceToken != -1)
    {
      dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
    }

    v6 = getScottyLog(void)::gLog;
    if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v7 = (this + 296);
      if (*(this + 319) < 0)
      {
        v7 = *v7;
      }

      v13 = 136315394;
      v14 = v7;
      v15 = 2080;
      v16 = "InitializeSurroundFilters";
      v8 = "[%s|%s] Sample Rate can not be zero";
      v9 = v6;
      v10 = 22;
LABEL_21:
      _os_log_error_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_ERROR, v8, &v13, v10);
    }
  }

  else
  {
    if ((a2 - 9) > 0xFFFFFFF7)
    {
      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 56);
      operator new();
    }

    if (getScottyLog(void)::onceToken != -1)
    {
      dispatch_once(&getScottyLog(void)::onceToken, &__block_literal_global_30786);
    }

    v11 = getScottyLog(void)::gLog;
    if (os_log_type_enabled(getScottyLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      v12 = (this + 296);
      if (*(this + 319) < 0)
      {
        v12 = *v12;
      }

      v13 = 136315650;
      v14 = v12;
      v15 = 2080;
      v16 = "InitializeSurroundFilters";
      v17 = 1024;
      v18 = a2;
      v8 = "[%s|%s] Invalid number of channels %u";
      v9 = v11;
      v10 = 28;
      goto LABEL_21;
    }
  }
}

void ScottyUpmixer::UpdateSurroundFilters(ScottyUpmixer *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = COERCE_FLOAT(atomic_load((*(this + 5) + 96)));
  *buf = 6;
  v6 = 0x3F400000456FD000;
  v7 = v1 * -7.535;
  v8 = 0x600000000;
  v9 = 0x3F9C28F645ACC800;
  v10[0] = v1 * 6.021;
  *&v10[1] = 0x600000000;
  v11 = 0x3FE8F5C345C73000;
  v12 = v1 * -7.959;
  v13 = 0;
  v3 = 0;
  v4 = 0;
  v2 = 0;
  std::vector<ParametricFilterSpecs>::__init_with_size[abi:ne200100]<ParametricFilterSpecs const*,ParametricFilterSpecs const*>();
}

void sub_1DDFE3EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DDFE3F80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ScottyUpmixer::ProcessBypass(ScottyUpmixer *this, const float **a2, vDSP_Length __N)
{
  v3 = __N;
  v6 = 0;
  v7 = __N;
  v8 = 4 * __N;
  do
  {
    v9 = *(this + v6 * 8);
    v10 = a2[v6];
    if (v9)
    {
      if (v9 != v10 && v3 != 0 && v10 != 0)
      {
        memmove(v10, v9, v8);
      }
    }

    else if (v10)
    {
      vDSP_vclr(v10, 1, v7);
    }

    ++v6;
  }

  while (v6 != 8);
}

void sub_1DDFE4290(_Unwind_Exception *a1)
{
  v9 = v1[207];
  if (v9)
  {
    v1[208] = v9;
    operator delete(v9);
  }

  v10 = *v7;
  if (*v7)
  {
    v1[205] = v10;
    operator delete(v10);
  }

  DspLib::ComplexVector::~ComplexVector((v1 + 194));
  DspLib::ComplexVector::~ComplexVector((v1 + 184));
  v11 = v1[180];
  if (v11)
  {
    v1[181] = v11;
    operator delete(v11);
  }

  v12 = v1[177];
  if (v12)
  {
    v1[178] = v12;
    operator delete(v12);
  }

  v13 = v1[174];
  if (v13)
  {
    v1[175] = v13;
    operator delete(v13);
  }

  v14 = *v6;
  *v6 = 0;
  if (v14)
  {
    DspLib::BuzzKill::HighBuzzKillFFT::~HighBuzzKillFFT(v14);
    MEMORY[0x1E12BD160]();
  }

  DspLib::FFT::Filterbank::~Filterbank(v5);
  DspLib::FFT::Filterbank::~Filterbank(v4);
  v15 = v1[69];
  v1[69] = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  DspLib::Biquad::ParametricFilter::~ParametricFilter((v1 + 56));
  v16 = v1[55];
  v1[55] = 0;
  if (v16)
  {
    DspLib::BuzzKill::FFTForDisplay::~FFTForDisplay(v16);
    MEMORY[0x1E12BD160]();
  }

  v17 = v1[52];
  if (v17)
  {
    v1[53] = v17;
    operator delete(v17);
  }

  DspLib::ComplexVector::~ComplexVector((v1 + 42));
  DspLib::ChannelBuffer::~ChannelBuffer((v1 + 36));
  DspLib::ChannelBuffer::~ChannelBuffer(v3);
  DspLib::AlgorithmBase::~AlgorithmBase(v1);
  MEMORY[0x1E12BD160](v1, v2);
  _Unwind_Resume(a1);
}

void DspLib::BuzzKill::HighBuzzKillFFT::~HighBuzzKillFFT(DspLib::BuzzKill::HighBuzzKillFFT *this)
{
  v2 = *(this + 87);
  if (v2)
  {
    *(this + 88) = v2;
    operator delete(v2);
  }

  v3 = *(this + 84);
  if (v3)
  {
    *(this + 85) = v3;
    operator delete(v3);
  }

  DspLib::FFT::Filterbank::~Filterbank(this);
}

void DspLib::BuzzKill::FFTForDisplay::~FFTForDisplay(DspLib::BuzzKill::FFTForDisplay *this)
{
  v2 = *(this + 55);
  if (v2)
  {
    *(this + 56) = v2;
    operator delete(v2);
  }

  DspLib::FFT::Filterbank::~Filterbank((this + 24));
}

void DspLib::BuzzKill::BuzzKillFFT::~BuzzKillFFT(DspLib::BuzzKill::BuzzKillFFT *this)
{
  DspLib::FFT::Filterbank::~Filterbank(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUBuzzKill::GetParameterValueStrings(AUBuzzKill *this, unsigned int a2, unsigned int a3, const __CFArray **a4)
{
  if (!a4)
  {
    return 0;
  }

  if (*(*(this + 211) + 4 * a3) != 16)
  {
    return 4294956418;
  }

  v5 = AUDspLib::CFArrayOfStringsCreateWithCArrayOfStrings(_ZGRN6DspLib8BuzzKill10ParametersL27kMaxOperationFrequencyNamesE_, 5);
  result = 0;
  *a4 = v5;
  return result;
}

void AUBuzzKill::~AUBuzzKill(AUBuzzKill *this)
{
  AUDspLib::~AUDspLib(this);

  JUMPOUT(0x1E12BD160);
}

void VAD3Configuration::~VAD3Configuration(VAD3Configuration *this)
{
  v2 = *(this + 45);
  if (v2)
  {
    *(this + 46) = v2;
    operator delete(v2);
  }

  v3 = *(this + 42);
  if (v3)
  {
    *(this + 43) = v3;
    operator delete(v3);
  }

  v12 = (this + 312);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  v4 = *(this + 36);
  if (v4)
  {
    *(this + 37) = v4;
    operator delete(v4);
  }

  v12 = (this + 264);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  v5 = *(this + 30);
  if (v5)
  {
    *(this + 31) = v5;
    operator delete(v5);
  }

  v12 = (this + 216);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  v6 = *(this + 22);
  if (v6)
  {
    *(this + 23) = v6;
    operator delete(v6);
  }

  v7 = *(this + 19);
  if (v7)
  {
    *(this + 20) = v7;
    operator delete(v7);
  }

  v12 = (this + 128);
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v8 = *(this + 13);
  if (v8)
  {
    *(this + 14) = v8;
    operator delete(v8);
  }

  v9 = *(this + 10);
  if (v9)
  {
    *(this + 11) = v9;
    operator delete(v9);
  }

  v10 = *(this + 7);
  if (v10)
  {
    *(this + 8) = v10;
    operator delete(v10);
  }

  v11 = *(this + 4);
  if (v11)
  {
    *(this + 5) = v11;
    operator delete(v11);
  }

  v12 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
}

void VADGenUtils::VectorReverseCumulativeProduct<unsigned int>(uint64_t *a1, std::vector<unsigned int> *this)
{
  v4 = (a1[1] - *a1) >> 2;
  std::vector<unsigned int>::resize(this, v4);
  v5 = *a1;
  v6 = a1[1] - *a1;
  if (v6)
  {
    v7 = 0;
    v8 = v6 >> 2;
    begin = this->__begin_;
    v10 = this->__end_ - this->__begin_;
    v11 = v4 - 1;
    v12 = 1;
    v13 = 1;
    do
    {
      if (v10 <= v11 || (begin[v11] = v13, v14 = ~v7, v15 = __CFADD__(v8, v14), v16 = v8 + v14, !v15))
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      v13 *= *(v5 + 4 * v16);
      v7 = v12;
      v17 = v8 > v12++;
      --v11;
    }

    while (v17);
  }
}

void std::vector<std::string>::resize(std::vector<std::string> *this, std::vector<std::string>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
  v6 = __sz - v5;
  if (__sz <= v5)
  {
    if (__sz < v5)
    {
      v11 = &begin[__sz];
      while (end != v11)
      {
        v12 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
        --end;
        if (v12 < 0)
        {
          operator delete(end->__r_.__value_.__l.__data_);
        }
      }

      this->__end_ = v11;
    }
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v6)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v14.__end_cap_.__value_ = this;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<std::string>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v13 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(this->__end_, v13);
    this->__end_ = (end + v13);
  }
}

std::vector<std::string> *std::__copy_impl::operator()[abi:ne200100]<std::vector<std::string> *,std::vector<std::string> *,std::vector<std::string> *>(std::vector<std::string> *a1, std::vector<std::string> *a2, std::vector<std::string> *this)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      if (v4 != this)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(this, v4->__begin_, v4->__end_, 0xAAAAAAAAAAAAAAABLL * ((v4->__end_ - v4->__begin_) >> 3));
      }

      ++v4;
      ++this;
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::string>>,std::vector<std::string>*,std::vector<std::string>*,std::vector<std::string>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v8 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v8 + 3;
      v8 += 3;
    }

    while (v6 != a3);
  }

  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::string>>,std::vector<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }

  return a1;
}

uint64_t HRTFOBHDSpatializer::getLatencyFrames(HRTFOBHDSpatializer *this)
{
  v1 = *(this + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = atomic_load((v1 + 160));
  IRDataAttributes = IR::DynamicIRProcessor::getIRDataAttributes(v8, *(this + 40));
  v4 = IR::IRDataLoader::instance(IRDataAttributes);
  IR::IRDataLoader::getLoadedIR(&v6, v4, v8);
  if (v6)
  {
    v2 = IR::IRData::getModelingDelay(v6) + v2;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8[0])
  {
    CFRelease(v8[0]);
  }

  return v2;
}

void sub_1DDFE4B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  IR::IRDataAttributes::~IRDataAttributes(va);
  _Unwind_Resume(a1);
}

uint64_t HRTFOBHDSpatializer::getFFTFilterConfigParams@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 320);
  if (v2)
  {
    return IR::DynamicIRProcessor::getFFTFilterConfigParams(a2, v2);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  return this;
}

uint64_t HRTFOBHDSpatializer::setIRSource(uint64_t a1, void *a2)
{
  v2 = *(a1 + 320);
  v3 = *(v2 + 157);
  if (v3 == 1)
  {
    v4 = a2[1];
    v6[0] = *a2;
    v6[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IR::DynamicIRProcessor::setIRSource(v2, v6);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return v3;
}

void sub_1DDFE4BD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HRTFOBHDSpatializer::processAccumulating(HRTFOBHDSpatializer *this, const float *__I, float *const *a3, int a4, float **a5, unsigned int a6, vDSP_Length a7, float a8, IR::ComplexDataCircBuffer *a9)
{
  v52 = *MEMORY[0x1E69E9840];
  if (a6 == a4)
  {
    if (*(this + 16))
    {
      v16 = *(this + 6);
      v17 = *(v16 + 56);
      v18 = v17 * (*(v16 + 76) * a8);
      v19 = (*(this + 90) * *(this + 35)) * *(this + 30);
      if (*(this + 41))
      {
        IR::FixedIntegerDelay<float>::process();
      }

      v21 = fmaxf(v18, v19);
      if (a6 >= 2)
      {
        v22 = 2;
      }

      else
      {
        v22 = a6;
      }

      if (v21 > 0.0 && a6 != 0)
      {
        v24 = 0;
        do
        {
          v25 = *(*(this + 6) + 144);
          v26 = v18 * *(v25 + 4 * v24);
          *&__p.__r_.__value_.__l.__data_ = v26;
          if ((*(this + 17) & 1) != 0 || v18 == v19)
          {
            MEMORY[0x1E12BE8F0](__I, 1, &__p, a3[v24], 1, a3[v24], 1, a7);
          }

          else if (a7)
          {
            *&__Start.__r_.__value_.__l.__data_ = v19 * *(v25 + 4 * v24);
            *&__Step.__r_.__value_.__l.__data_ = (v26 - *&__Start.__r_.__value_.__l.__data_) / a7;
            vDSP_vrampmuladd(__I, 1, &__Start, &__Step, a3[v24], 1, a7);
          }

          ++v24;
        }

        while (v22 != v24);
      }

      v27 = (1.0 - v17) * a8;
      if (!*(*(this + 6) + 82))
      {
        v27 = 0.0;
      }

      v28 = *(this + 42);
      v29 = *v28;
      v30 = v28[3];
      __p.__r_.__value_.__r.__words[0] = v29;
      __p.__r_.__value_.__l.__size_ = v30;
      v31 = *(this + 40);
      v32 = 3000.0;
      if (*(this + 73))
      {
        v32 = -1.0;
      }

      *(v31 + 80) = v32;
      __Start.__r_.__value_.__r.__words[0] = __I;
      IR::DynamicIRProcessor::processInternal(v31, &__Start, a5, 1u, v22, a7, v27, &__p, 0, a9);
      if (a6)
      {
        do
        {
          MEMORY[0x1E12BE5D0](*a5, 1, *a3, 1, *a3, 1, a7);
          ++a3;
          ++a5;
          --v22;
        }

        while (v22);
      }

      result = 0;
      *(this + 90) = a8;
      v34 = *(this + 6);
      *(this + 146) = *(v34 + 82);
      *(this + 30) = *(v34 + 56);
      *(this + 35) = *(v34 + 76);
      *(this + 17) = 0;
    }

    else
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v37 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
      {
        std::string::basic_string[abi:ne200100]<0>(&__Step, "HRTFOBHDSpatializer");
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__Start, &__Step, "::");
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &__Start, "processAccumulating");
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        v49 = p_p;
        _os_log_debug_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_DEBUG, "%s: ERROR: not initialized", buf, 0xCu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__Start.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__Start.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__Step.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__Step.__r_.__value_.__l.__data_);
        }
      }

      return 4294956429;
    }
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v36 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      std::string::basic_string[abi:ne200100]<0>(&__Step, "HRTFOBHDSpatializer");
      v38 = std::string::append(&__Step, "::", 2uLL);
      v39 = *&v38->__r_.__value_.__l.__data_;
      __Start.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
      *&__Start.__r_.__value_.__l.__data_ = v39;
      v38->__r_.__value_.__l.__size_ = 0;
      v38->__r_.__value_.__r.__words[2] = 0;
      v38->__r_.__value_.__r.__words[0] = 0;
      v40 = std::string::append(&__Start, "processAccumulating", 0x13uLL);
      v41 = *&v40->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      v42 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v49 = v42;
      v50 = 1024;
      v51 = a4;
      _os_log_debug_impl(&dword_1DDB85000, v36, OS_LOG_TYPE_DEBUG, "%s: ERROR: wrong number of output channels %d", buf, 0x12u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__Start.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__Start.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__Step.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__Step.__r_.__value_.__l.__data_);
      }
    }

    return 4294956445;
  }

  return result;
}

void sub_1DDFE50CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

IR::DynamicIRProcessor *HRTFOBHDSpatializer::reset(IR::DynamicIRProcessor **this)
{
  IR::DynamicIRProcessor::reset(this[40]);
  result = this[41];
  if (result)
  {
    IR::FixedIntegerDelay<float>::reset();
  }

  *(this + 17) = 1;
  *(this + 146) = *(this[6] + 82);
  return result;
}

uint64_t HRTFOBHDSpatializer::initialize(HRTFOBHDSpatializer *this, float a2, unsigned int a3, unsigned int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v8 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    std::string::basic_string[abi:ne200100]<0>(&v30, "HRTFOBHDSpatializer");
    v20 = std::string::append(&v30, "::", 2uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v31, "initialize", 0xAuLL);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v26 = v22->__r_.__value_.__r.__words[2];
    *v25 = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = v25;
    if (v26 < 0)
    {
      v24 = v25[0];
    }

    *buf = 136315138;
    v33 = v24;
    _os_log_debug_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEBUG, "%s: Initializing.", buf, 0xCu);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  *(this + 2) = a2;
  *(this + 3) = a4;
  v9 = *(this + 40);
  *v25 = xmmword_1DE09CD90;
  IR::DynamicIRProcessor::initialize(v9, a4, v25, a2);
  std::vector<std::vector<float>>::resize(this + 42, 2uLL);
  v10 = *(this + 42);
  for (i = *(this + 43); v10 != i; v10 += 3)
  {
    std::vector<float>::resize(v10, a4);
  }

  IRDataAttributes = IR::DynamicIRProcessor::getIRDataAttributes(v25, *(this + 40));
  v13 = IR::IRDataLoader::instance(IRDataAttributes);
  IR::IRDataLoader::getLoadedIR(&v31, v13, v25);
  if (v31.__r_.__value_.__r.__words[0])
  {
    ModelingDelay = IR::IRData::getModelingDelay(v31.__r_.__value_.__l.__data_);
    v15 = IR::IRData::getProcessingDelay(v31.__r_.__value_.__l.__data_) + ModelingDelay;
  }

  else
  {
    v15 = 0;
  }

  if (v26)
  {
    v16 = 0;
  }

  else
  {
    v16 = HIDWORD(v25[1]);
  }

  if (v16 + v15)
  {
    operator new();
  }

  std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](this + 41, 0);
  Spatializer::initialize(this, v17, a3);
  v18 = atomic_load((*(this + 40) + 168));
  *(this + 5) = v18;
  if (v31.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31.__r_.__value_.__l.__size_);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v25[0])
  {
    CFRelease(v25[0]);
  }

  return 0;
}

void sub_1DDFE5444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HRTFOBHDSpatializer::~HRTFOBHDSpatializer(HRTFOBHDSpatializer *this)
{
  *this = &unk_1F5935458;
  v2 = (this + 336);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](this + 41, 0);
  std::unique_ptr<IR::DynamicIRProcessor>::reset[abi:ne200100](this + 40, 0);
  Spatializer::~Spatializer(this);
  MEMORY[0x1E12BD160]();
}

{
  *this = &unk_1F5935458;
  v2 = (this + 336);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::unique_ptr<IR::FixedIntegerDelay<float>>::reset[abi:ne200100](this + 41, 0);
  std::unique_ptr<IR::DynamicIRProcessor>::reset[abi:ne200100](this + 40, 0);
  Spatializer::~Spatializer(this);
}

uint64_t AUECRMDF::ValidFormat(AUECRMDF *this, unsigned int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a4->mBitsPerChannel != 32 || a4->mFormatID != 1819304813 || a4->mChannelsPerFrame >= 0xD)
  {
    return 0;
  }

  else
  {
    return (a4->mFormatFlags >> 5) & 1;
  }
}

uint64_t AUECRMDF::SupportedNumChannels(AUECRMDF *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUECRMDF::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 12;
}

uint64_t AUECRMDF::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 133);
  }

  return result;
}

uint64_t AUECRMDF::GetParameterInfo(AUECRMDF *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0x40000000;
  buffer->unitName = 0;
  result = 4294956418;
  if (!a2 && a3 <= 0x1D)
  {
    v6 = off_1E86718D8[a3];
    v7 = dword_1DE114DF0[a3];
    v8 = flt_1DE114E68[a3];
    v9 = flt_1DE114EE0[a3];
    v10 = flt_1DE114F58[a3];
    v11 = dword_1DE114FD0[a3];
    buffer->cfNameString = v6;
    buffer->flags = 1207959552;
    CFStringGetCString(v6, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = v7;
    buffer->minValue = v8;
    buffer->maxValue = v9;
    buffer->defaultValue = v10;
    buffer->flags |= v11;
  }

  return result;
}

uint64_t AUECRMDF::GetParameterList(AUECRMDF *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *(a3 + 1) = xmmword_1DE09BC60;
    *(a3 + 2) = xmmword_1DE09C1E0;
    *(a3 + 3) = xmmword_1DE09C0E0;
    *(a3 + 4) = xmmword_1DE09C1F0;
    *(a3 + 5) = xmmword_1DE09C200;
    *(a3 + 6) = xmmword_1DE09C210;
    *(a3 + 14) = 0x1D0000001CLL;
  }

  result = 0;
  *a4 = 30;
  return result;
}

uint64_t AUECRMDF::Render(AUECRMDF *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  if (*(this + 84) != a4)
  {
    return 4294956422;
  }

  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v9 = Element, (v10 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v11 = v10;
  v12 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v12 || !*(v12 + 172))
  {
    return 4294956420;
  }

  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v14)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    ausdk::AUBufferList::CopyBufferContentsTo(v9 + 6, (*(v11 + 152) + 48));
    return 0;
  }

  return result;
}

uint64_t AUECRMDF::ProcessMultipleBufferLists(caulk::concurrent::messenger **this, unsigned int *a2, int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v7 = this;
  v8 = *(this + 84);
  if (v8 != a3)
  {
    if (*MEMORY[0x1E69E3C08])
    {
      v12 = this[90];
      v13 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v13 + 16) = 0;
      *(v13 + 24) = a3;
      *(v13 + 28) = v8;
      *v13 = &unk_1F5935860;
      *(v13 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v12, v13);
      return 4294956422;
    }

    goto LABEL_155;
  }

  if (a6 <= 1)
  {
    v9 = (this[86] + 48);
  }

  else
  {
    v9 = a7[1];
    if (a6 != 2)
    {
      v10 = a7[2];
      goto LABEL_9;
    }
  }

  v10 = (this[88] + 48);
LABEL_9:
  v16 = *a5;
  v15 = a5[1];
  v17 = *a7;
  Element = ausdk::AUScope::GetElement((this + 16), 0);
  if (!Element)
  {
    goto LABEL_156;
  }

  if (*(v7 + 528) != 1)
  {
    v38 = __exp10f(*(v7 + 141) / 10.0);
    v39 = *(v7 + 91);
    v40 = v39[7];
    v184 = v16;
    if (v40)
    {
      v182 = v9;
      v183 = v7;
      v41 = 0;
      mBuffers = v15->mBuffers;
      v190 = v16 + 8;
      v187 = v9->mBuffers;
      v188 = v17 + 8;
      v185 = v10;
      do
      {
        v42 = v39[10];
        v186 = v41;
        v194 = v42 * v41;
        if (v39[8])
        {
          v43 = 0;
          v44 = 0;
          v45 = (v16 + 16);
          do
          {
            v46 = (*v45 + 4 * v194);
            LODWORD(__C.realp) = 0;
            memcpy((*(*(v39 + 67) + v43) + 4 * v42), v46, 4 * v42);
            *(*(v39 + 49) + 8 * (v44 >> 6)) |= 1 << v44;
            v47 = v39[10];
            v48 = (*(*(v39 + 67) + v43) + 4 * v47);
            vDSP_dotpr(v48, 1, v48, 1, &__C, v47);
            v42 = v39[10];
            if ((*&__C.realp / v42) < *(v39 + 4))
            {
              *(*(v39 + 49) + 8 * (v44 >> 6)) &= ~(1 << v44);
            }

            ++v44;
            v43 += 24;
            v45 += 2;
          }

          while (v44 < v39[8]);
        }

        v49 = (v185->mBuffers[0].mData + 4 * v194);
        vDSP_vclr(v49, 1, v42);
        LODWORD(v50) = v39[9];
        if (v50)
        {
          v51 = 0;
          do
          {
            v52 = mBuffers[v51].mData + 4 * v194;
            *&__B.realp = 1.0 / v50;
            MEMORY[0x1E12BE8F0](v52, 1, &__B, v49, 1, v49, 1, v39[10]);
            v53 = *(*(v39 + 79) + 24 * v51);
            memmove(v53, &v53[4 * v39[10]], 4 * v39[10]);
            memcpy((*(*(v39 + 79) + 24 * v51) + 4 * v39[10]), v52, 4 * v39[10]);
            ecRMDF::fcnOlsAnaly(v39, *(v39 + 109), *(*(v39 + 79) + 24 * v51), (*(*(v39 + 82) + 24 * v51) + 24 * **(v39 + 106)));
            v54 = 3 * **(v39 + 106);
            v55 = v39[13];
            __C.realp = *(*(*(v39 + 82) + 24 * v51) + 24 * **(v39 + 106));
            __C.imagp = &__C.realp[v55];
            vDSP_zvmags(&__C, 1, *(*(*(v39 + 85) + 24 * v51) + 8 * v54), 1, v55);
            *(*(v39 + 37) + 4 * v51) = 0;
            LODWORD(v195.realp) = 0;
            v56 = v39[30];
            v57 = 0.0;
            if (v56 < v39[31])
            {
              v58 = 4 * v56;
              do
              {
                vDSP_meanv(*(*(*(v39 + 85) + 24 * v51) + 24 * *(*(v39 + 106) + v58)), 1, &v195, v39[13]);
                v59 = *(v39 + 37);
                v60 = v39[31];
                v57 = *(v59 + 4 * v51) + (*&v195.realp / (v60 - v39[30]));
                *(v59 + 4 * v51) = v57;
                ++v56;
                v58 += 4;
              }

              while (v60 > v56);
            }

            v61 = *(v39 + 46);
            v62 = *(v61 + 8 * (v51 >> 6));
            *(v61 + 8 * (v51 >> 6)) = v62 | (1 << v51);
            if (v57 < *(v39 + 4))
            {
              *(v61 + 8 * (v51 >> 6)) = v62 & ~(1 << v51);
            }

            ++v51;
            v50 = v39[9];
          }

          while (v51 < v50);
        }

        if (v39[8])
        {
          v63 = 0;
          do
          {
            v64 = (v187[v63].mData + 4 * v194);
            if ((*(*(v39 + 49) + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v63))
            {
              __dst = (*(v188 + 16 * v63 + 8) + 4 * v194);
              __A = (*(v190 + 16 * v63 + 8) + 4 * v194);
              v191 = v187[v63].mData + 4 * v194;
              ecRMDF::fcnGetError(v39, v63, (*(v39 + 70) + 24 * v63));
              LODWORD(__C.realp) = 0;
              v65 = *(*(v39 + 76) + 24 * v63);
              vDSP_dotpr(v65, 1, v65, 1, &__C, v39[16]);
              v66 = *(v39 + 22);
              v67 = *(v66 + 4 * v63) + 1.0;
              *(v66 + 4 * v63) = v67;
              if (*(v39 + 29) < v67)
              {
                v67 = *(v39 + 29);
              }

              *(v66 + 4 * v63) = v67;
              v68 = v39[13];
              *&__C.realp = v67 * (((*&__C.realp + *&__C.realp) / *(v39 + 6)) / v68);
              vDSP_vfill(&__C, *(v39 + 61), 1, v68);
              vDSP_vthr(*(v39 + 61), 1, v39 + 2, *(v39 + 61), 1, v39[13]);
              memcpy(*(v39 + 55), *(v39 + 61), 4 * v39[13]);
              v70 = v39[30];
              v69 = v39[31];
              if (v70 < v69)
              {
                LODWORD(v71) = v39[9];
                do
                {
                  if (v71)
                  {
                    v72 = 0;
                    v73 = 0;
                    do
                    {
                      if ((*(*(v39 + 46) + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v73))
                      {
                        v74 = *(*(*(*(v39 + 91) + 24 * v63) + v72) + 24 * v70);
                        vDSP_vsdiv(v74, 1, v39 + 1, v74, 1, v39[13]);
                        MEMORY[0x1E12BE780](*(*(*(v39 + 85) + v72) + 24 * *(*(v39 + 106) + 4 * v70)), 1, *(*(*(*(v39 + 91) + 24 * v63) + v72) + 24 * v70), 1, *(v39 + 55), 1, *(v39 + 55), 1, v39[13]);
                        MEMORY[0x1E12BE7F0](*(*(*(*(v39 + 91) + 24 * v63) + v72) + 24 * v70), 1, *(*(*(v39 + 82) + v72) + 24 * *(*(v39 + 106) + 4 * v70)), 1, *(*(*(v39 + 88) + v72) + 24 * v70), 1, v39[13]);
                        MEMORY[0x1E12BE7F0](*(*(*(*(v39 + 91) + 24 * v63) + v72) + 24 * v70), 1, *(*(*(v39 + 82) + v72) + 24 * *(*(v39 + 106) + 4 * v70)) + 4 * v39[13], 1, *(*(*(v39 + 88) + v72) + 24 * v70) + 4 * v39[13], 1);
                        v75 = *(*(*(v39 + 88) + v72) + 24 * v70);
                        MEMORY[0x1E12BE810](v75, 1, v75, 1, v39[13]);
                        v76 = *(*(*(v39 + 88) + v72) + 24 * v70);
                        MEMORY[0x1E12BE940](v76, 1, v39 + 6, v76, 1, v39[16]);
                      }

                      else
                      {
                        vDSP_vclr(*(*(*(v39 + 88) + v72) + 24 * v70), 1, v39[16]);
                      }

                      ++v73;
                      v71 = v39[9];
                      v72 += 24;
                    }

                    while (v73 < v71);
                    v69 = v39[31];
                  }

                  ++v70;
                }

                while (v70 < v69);
              }

              MEMORY[0x1E12BE940](*(v39 + 55), 1, v39 + 6, *(v39 + 55), 1, v39[13]);
              v78 = v39[30];
              v77 = v39[31];
              if (v78 < v77)
              {
                LODWORD(v79) = v39[9];
                do
                {
                  if (v79)
                  {
                    v80 = 0;
                    v81 = 0;
                    do
                    {
                      v82 = *(*(*(v39 + 88) + v80) + 24 * v78);
                      vDSP_vdiv(*(v39 + 55), 1, v82, 1, v82, 1, v39[13]);
                      v83 = v39[13];
                      v84 = (*(*(*(v39 + 88) + v80) + 24 * v78) + 4 * v83);
                      vDSP_vdiv(*(v39 + 55), 1, v84, 1, v84, 1, v83);
                      if (v78 >= v39[30] && v78 < v39[31])
                      {
                        ecRMDF::fcnUpdateFilter(v39, v63, v81, v78);
                      }

                      v85 = v39[13];
                      __B.realp = *(*(*(v39 + 88) + v80) + 24 * v78);
                      __B.imagp = &__B.realp[v85];
                      __C.realp = *(*(*(v39 + 82) + v80) + 24 * *(*(v39 + 106) + 4 * v78));
                      __C.imagp = &__C.realp[v85];
                      v195.realp = *(v39 + 58);
                      v195.imagp = &v195.realp[v85];
                      vDSP_zvmul(&__C, 1, &__B, 1, &v195, 1, v85, 1);
                      vDSP_vabs(*(v39 + 58), 1, *(v39 + 58), 1, v39[13]);
                      MEMORY[0x1E12BE810](*(v39 + 58), 1, *(v39 + 58), 1, v39[13]);
                      MEMORY[0x1E12BE780](*(v39 + 58), 1, *(*(*(*(v39 + 91) + 24 * v63) + v80) + 24 * v78), 1, *(*(*(*(v39 + 91) + 24 * v63) + v80) + 24 * v78), 1, *(*(*(*(v39 + 91) + 24 * v63) + v80) + 24 * v78), 1, v39[13]);
                      v86 = *(*(*(*(v39 + 91) + 24 * v63) + v80) + 24 * v78);
                      vDSP_vabs(v86, 1, v86, 1, v39[13]);
                      ++v81;
                      v79 = v39[9];
                      v80 += 24;
                    }

                    while (v81 < v79);
                    v77 = v39[31];
                  }

                  ++v78;
                }

                while (v78 < v77);
              }

              ecRMDF::fcnGetError(v39, v63, (*(v39 + 73) + 24 * v63));
              v88 = v39[30];
              v87 = v39[31];
              if (v88 < v87)
              {
                v89 = v39[9];
                do
                {
                  if (v89)
                  {
                    for (i = 0; i < v89; ++i)
                    {
                      ecRMDF::fcnUpdateFilter(v39, v63, i, v88);
                      v89 = v39[9];
                    }

                    v87 = v39[31];
                  }

                  ++v88;
                }

                while (v88 < v87);
              }

              v196 = 0;
              v91 = 140;
              if (*(v39 + 68))
              {
                v91 = 146;
              }

              memcpy(__dst, (*(*&v39[v91] + 24 * v63) + 4 * v39[10]), 4 * v39[10]);
              vDSP_dotpr(__dst, 1, __dst, 1, &v196 + 1, v39[10]);
              vDSP_dotpr(__A, 1, __A, 1, &v196, v39[10]);
              v92 = *(v39 + 25);
              *(v92 + 4 * v63) = ((1.0 - *(v39 + 42)) * *&v196) + (*(v39 + 42) * *(v92 + 4 * v63));
              v93 = *(v39 + 28);
              v94 = ((1.0 - *(v39 + 42)) * *(&v196 + 1)) + (*(v39 + 42) * *(v93 + 4 * v63));
              *(v93 + 4 * v63) = v94;
              if (v94 > (*(v92 + 4 * v63) * *(v39 + 3)) && *(v39 + 40) < 1.0)
              {
                *(*(v39 + 22) + 4 * v63) = 1065353216;
                *&__C.realp = (1.0 - *(v39 + 40)) * *(v39 + 5);
                v95 = *v39;
                if (v95)
                {
                  v96 = 0;
                  LODWORD(v97) = v39[9];
                  do
                  {
                    if (v97)
                    {
                      v98 = 0;
                      v99 = 0;
                      do
                      {
                        v100 = *(*(*(*(v39 + 100) + 24 * v63) + v98) + 24 * v96);
                        MEMORY[0x1E12BE940](v100, 1, v39 + 40, v100, 1, v39[13]);
                        v101 = *(*(*(*(v39 + 103) + 24 * v63) + v98) + 24 * v96);
                        MEMORY[0x1E12BE940](v101, 1, v39 + 40, v101, 1, v39[13]);
                        v102 = *(*(*(*(v39 + 91) + 24 * v63) + v98) + 24 * v96);
                        MEMORY[0x1E12BE940](v102, 1, v39 + 40, v102, 1, v39[13]);
                        v103 = *(*(*(*(v39 + 91) + 24 * v63) + v98) + 24 * v96);
                        MEMORY[0x1E12BE8A0](v103, 1, &__C, v103, 1, v39[13]);
                        ++v99;
                        v97 = v39[9];
                        v98 += 24;
                      }

                      while (v99 < v97);
                      v95 = *v39;
                    }

                    ++v96;
                  }

                  while (v96 < v95);
                }
              }

              MEMORY[0x1E12BE9A0](__dst, 1, __A, 1, v191, 1, v39[10]);
              if (*(&v196 + 1) > (*&v196 * *(v39 + 3)))
              {
                memcpy(__dst, __A, 4 * v39[10]);
              }

              if (v63 + 1 == v39[21])
              {
                memcpy((*(v39 + 40) + 4 * v39[10]), v191, 4 * v39[10]);
                LODWORD(v195.realp) = 0;
                v199[0] = 0.0;
                v104 = v39[23] - v39[22] + 1;
                ecRMDF::fcnOlsAnaly(v39, *(v39 + 109), *(*(v39 + 67) + 24 * v63), v39 + 52);
                v105 = v39[13];
                __C.realp = *(v39 + 52);
                __C.imagp = &__C.realp[v105];
                vDSP_zvmags(&__C, 1, *(v39 + 58), 1, v105);
                MEMORY[0x1E12BE8F0](*(v39 + 58), 1, v39 + 25, *(v39 + 31), 1, *(v39 + 31), 1, v39[13]);
                MEMORY[0x1E12BE940](*(v39 + 31), 1, v39 + 24, *(v39 + 31), 1, v39[13]);
                vDSP_meanv((*(v39 + 31) + 4 * v39[22]), 1, &v195, v104);
                ecRMDF::fcnOlsAnaly(v39, *(v39 + 109), *(v39 + 40), v39 + 43);
                v106 = v39[13];
                __B.realp = *(v39 + 43);
                __B.imagp = &__B.realp[v106];
                vDSP_zvcmul(&__C, 1, &__B, 1, &__B, 1, v106);
                vDSP_zvabs(&__B, 1, *(v39 + 58), 1, v39[13]);
                MEMORY[0x1E12BE8F0](*(v39 + 58), 1, v39 + 25, *(v39 + 34), 1, *(v39 + 34), 1, v39[13]);
                MEMORY[0x1E12BE940](*(v39 + 34), 1, v39 + 24, *(v39 + 34), 1, v39[13]);
                vDSP_meanv((*(v39 + 34) + 4 * v39[22]), 1, v199, v104);
                *(v39 + 26) = fmaxf(fminf(v199[0] / (*&v195.realp + *(v39 + 2)), 1.0), 0.0);
              }
            }

            else
            {
              memcpy((*(v188 + 16 * v63 + 8) + 4 * v194), (*(v190 + 16 * v63 + 8) + 4 * v194), 4 * v39[10]);
              vDSP_vclr(v64, 1, v39[10]);
            }

            ++v63;
          }

          while (v63 < v39[8]);
        }

        if (*v39)
        {
          v107 = 0;
          do
          {
            v108 = *(v39 + 106);
            v109 = *(v108 + 4 * v107);
            *(v108 + 4 * v107) = v109 + 1;
            if (v109 + 1 == *v39)
            {
              v110 = 0;
            }

            else
            {
              v110 = v109 + 1;
            }

            *(v108 + 4 * v107++) = v110;
          }

          while (v107 < *v39);
        }

        v41 = v186 + 1;
        v40 = v39[7];
      }

      while (v186 + 1 < v40);
      v9 = v182;
      v7 = v183;
      v10 = v185;
    }

    v111 = v39[35];
    v39[39] = 0;
    LODWORD(__C.realp) = 0;
    LODWORD(__B.realp) = 0;
    v112 = v39[30];
    if (v112 < v39[31])
    {
      v113 = *(v39 + 2);
      LODWORD(v114) = v39[9];
      v115 = 3 * v111;
      do
      {
        if (v114)
        {
          v116 = 0;
          v117 = 0;
          v118 = 0.0;
          do
          {
            v119 = *(*(*(*(v39 + 100) + 8 * v115) + v116) + 24 * v112);
            vDSP_dotpr(v119, 1, v119, 1, &__C, v39[13]);
            v120 = *(*(*(*(v39 + 103) + 8 * v115) + v116) + 24 * v112);
            vDSP_dotpr(v120, 1, v120, 1, &__B, v39[13]);
            v118 = (v118 + *&__C.realp) + *&__B.realp;
            ++v117;
            v114 = v39[9];
            v116 += 24;
          }

          while (v117 < v114);
        }

        else
        {
          v118 = 0.0;
        }

        if (v118 > v113)
        {
          v39[39] = v112;
          v113 = v118;
        }

        ++v112;
      }

      while (v112 < v39[31]);
      LODWORD(v111) = v39[35];
      v40 = v39[7];
      v16 = v184;
    }

    v121 = *(v16 + 16 * v111 + 16);
    v122 = *(v17 + 16 * v111 + 16);
    LODWORD(__C.realp) = 0;
    LODWORD(__B.realp) = 0;
    vDSP_svesq(v121, 1, &__C, v40 * v39[10]);
    vDSP_svesq(v122, 1, &__B, v39[7] * v39[10]);
    v123 = *(v39 + 2);
    v124 = (((1.0 - *(v39 + 37)) * (*&__B.realp + v123)) / (v123 + *&__C.realp)) + (*(v39 + 36) * *(v39 + 37));
    if (v124 <= v123)
    {
      v124 = *(v39 + 2);
    }

    *(v39 + 36) = v124;
    v125 = *(v39 + 128);
    if ((v125 & 1) != 0 && v124 < *(v39 + 38))
    {
      *(v39 + 128) = v125 != *(v39 + 172);
      v126 = v39[39];
      v127 = v39[33];
      v128 = v39[34] + v126;
      if (v128 >= *v39)
      {
        v128 = *v39;
      }

      v129 = v126 >= v127;
      v130 = v126 - v127;
      if (!v129)
      {
        v130 = 0;
      }

      v39[30] = v130;
      v39[31] = v128;
    }

    v131 = *(v7 + 91);
    *(v7 + 149) = *(v131 + 104);
    LODWORD(v132) = *(v131 + 36);
    v133 = 0.0;
    v134 = 0.0;
    if (v132)
    {
      v135 = *(v131 + 296);
      v136 = *(v131 + 36);
      do
      {
        v137 = *v135++;
        v134 = v134 + v137;
        --v136;
      }

      while (v136);
    }

    *(v7 + 154) = v134 / v132;
    *(v7 + 156) = (*(v131 + 108) * (*(v131 + 156) + 0.5)) * 1000.0;
    v138 = *(v7 + 155);
    LODWORD(__C.realp) = 0;
    v139 = *(v131 + 8);
    LODWORD(__B.realp) = 0;
    LODWORD(v195.realp) = 0;
    v141 = *(v131 + 120);
    v140 = *(v131 + 124);
    if (v141 >= v140)
    {
      v143 = v139;
    }

    else
    {
      v133 = 0.0;
      v142 = 3 * v138;
      v143 = v139;
      do
      {
        if (v132)
        {
          v144 = 0;
          v145 = 0;
          do
          {
            vDSP_svesq(*(*(*(*(v131 + 776) + 8 * v142) + v144) + 24 * v141), 1, &__B, *(v131 + 40));
            v143 = v143 + *&__B.realp;
            vDSP_svesq(*(*(*(*(v131 + 752) + 8 * v142) + v144) + 24 * v141), 1, &v195, *(v131 + 40));
            v139 = v139 + *&v195.realp;
            MEMORY[0x1E12BE9A0](*(*(*(*(v131 + 776) + 8 * v142) + v144) + 24 * v141), 1, *(*(*(*(v131 + 752) + 8 * v142) + v144) + 24 * v141), 1, *(*(*(*(v131 + 776) + 8 * v142) + v144) + 24 * v141), 1, *(v131 + 40));
            vDSP_svesq(*(*(*(*(v131 + 776) + 8 * v142) + v144) + 24 * v141), 1, &__C, *(v131 + 40));
            v133 = v133 + *&__C.realp;
            memcpy(*(*(*(*(v131 + 776) + 8 * v142) + v144) + 24 * v141), *(*(*(*(v131 + 752) + 8 * v142) + v144) + 24 * v141), 4 * *(v131 + 40));
            ++v145;
            v132 = *(v131 + 36);
            v144 += 24;
          }

          while (v145 < v132);
          v140 = *(v131 + 124);
        }

        ++v141;
      }

      while (v141 < v140);
      LODWORD(v138) = *(v7 + 155);
    }

    *(v7 + 159) = (v133 / ((v139 * (1.0 - *(v131 + 112))) + (*(v131 + 112) * v143))) * 100.0;
    v146 = *(v7 + 136);
    *(v7 + 157) = log10f(v38 + (*(v7 + 158) / v146)) * 10.0;
    vDSP_svesq(v9->mBuffers[v138].mData, 1, v7 + 158, v146);
    v147 = *(v7 + 91);
    *(v7 + 672) = *(v147 + 144) < *(v147 + 164);
    LODWORD(__C.realp) = 0;
    v148 = 0.0;
    if (*(v147 + 36))
    {
      v149 = 0;
      v150 = 0;
      v151 = 0.0;
      do
      {
        v152 = *(v147 + 40);
        v153 = (*(*(v147 + 632) + v149) + 4 * v152);
        vDSP_dotpr(v153, 1, v153, 1, &__C, v152);
        v151 = v151 + *&__C.realp;
        ++v150;
        v149 += 24;
      }

      while (v150 < *(v147 + 36));
      v147 = *(v7 + 91);
    }

    else
    {
      v151 = 0.0;
    }

    LODWORD(__C.realp) = 0;
    if (*(v147 + 32))
    {
      v154 = 0;
      v155 = 0;
      v148 = 0.0;
      do
      {
        vDSP_dotpr(*(*(v147 + 584) + v154), 1, *(*(v147 + 584) + v154), 1, &__C, *(v147 + 40));
        v148 = v148 + *&__C.realp;
        ++v155;
        v154 += 24;
      }

      while (v155 < *(v147 + 32));
    }

    v156 = (v7 + 624);
    if ((LODWORD(v151) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (LODWORD(v148) & 0x7FFFFFFFu) < 0x7F800000)
    {
LABEL_146:
      v170 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v7 + 32, 0);
      if (v171)
      {
        ausdk::AUElement::SetParameter(v170, 9u, *(v7 + 149));
        v172 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v7 + 32, 0);
        if (v173)
        {
          ausdk::AUElement::SetParameter(v172, 0xEu, *(v7 + 154));
          v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v7 + 32, 0);
          if (v174)
          {
            v37 = *v156;
            goto LABEL_150;
          }
        }
      }

LABEL_154:
      abort();
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v157 = *(v7 + 90);
      v158 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v158 + 16) = 0;
      *(v158 + 21) = (LODWORD(v151) & 0x7FFFFFFFu) < 0x7F800000;
      *(v158 + 22) = (LODWORD(v148) & 0x7FFFFFFFu) < 0x7F800000;
      *v158 = &unk_1F5935888;
      *(v158 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v157, v158);
      ecRMDF::ec_state_reset(*(v7 + 91));
      v159 = ausdk::AUScope::GetElement((v7 + 128), 0);
      if (v159)
      {
        v160 = v159;
        if (*(v159 + 108))
        {
          v161 = 0;
          v162 = (v184 + 16);
          p_mData = &v9->mBuffers[0].mData;
          v164 = (v17 + 16);
          do
          {
            v166 = *p_mData;
            p_mData += 2;
            v165 = v166;
            v167 = *v162;
            v162 += 2;
            memcpy(*v164, v167, *(v164 - 1));
            vDSP_vclr(v165, 1, *(v7 + 136));
            ++v161;
            v164 += 2;
          }

          while (v161 < *(v160 + 108));
        }

        if (v10->mNumberBuffers)
        {
          v168 = 0;
          v169 = 16;
          do
          {
            vDSP_vclr(*(&v10->mNumberBuffers + v169), 1, *(v7 + 136));
            ++v168;
            v169 += 16;
          }

          while (v168 < v10->mNumberBuffers);
        }

        *(v7 + 149) = 0;
        *(v7 + 154) = 0;
        *(v7 + 672) = 0;
        *v156 = 0;
        *(v7 + 79) = 0;
        goto LABEL_146;
      }

LABEL_156:
      ausdk::Throw(0xFFFFD583);
    }

LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (v17 != v16)
  {
    v19 = Element;
    if (*(Element + 108))
    {
      v20 = 0;
      v21 = (v16 + 16);
      v22 = &v9->mBuffers[0].mData;
      v23 = (v17 + 16);
      do
      {
        v25 = *v22;
        v22 += 2;
        v24 = v25;
        v26 = *v21;
        v21 += 2;
        memcpy(*v23, v26, *(v23 - 1));
        vDSP_vclr(v24, 1, *(v7 + 136));
        ++v20;
        v23 += 2;
      }

      while (v20 < *(v19 + 108));
    }
  }

  if (v15 != v10 && v10->mNumberBuffers)
  {
    v27 = 0;
    v28 = &v15->mBuffers[0].mData;
    v29 = &v10->mBuffers[0].mData;
    do
    {
      v30 = *v28;
      v28 += 2;
      memcpy(*v29, v30, *(v29 - 1));
      ++v27;
      v29 += 2;
    }

    while (v27 < v10->mNumberBuffers);
  }

  *(v7 + 149) = 0;
  *(v7 + 154) = 0;
  *(v7 + 672) = 0;
  *(v7 + 39) = 0u;
  v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v7 + 32, 0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_154;
  }

  ausdk::AUElement::SetParameter(v31, 9u, *(v7 + 149));
  v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v7 + 32, 0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_154;
  }

  ausdk::AUElement::SetParameter(v33, 0xEu, *(v7 + 154));
  v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v7 + 32, 0);
  if ((v36 & 1) == 0)
  {
    goto LABEL_154;
  }

  v37 = *(v7 + 156);
LABEL_150:
  ausdk::AUElement::SetParameter(v35, 0x10u, v37);
  v175 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v7 + 32, 0);
  if ((v176 & 1) == 0)
  {
    goto LABEL_154;
  }

  ausdk::AUElement::SetParameter(v175, 0x11u, *(v7 + 159));
  v177 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v7 + 32, 0);
  if ((v178 & 1) == 0)
  {
    goto LABEL_154;
  }

  ausdk::AUElement::SetParameter(v177, 0x12u, *(v7 + 157));
  v179 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(v7 + 32, 0);
  if ((v181 & 1) == 0)
  {
    goto LABEL_154;
  }

  LOBYTE(v180) = *(v7 + 672);
  ausdk::AUElement::SetParameter(v179, 0x1Bu, v180);
  return 0;
}

uint64_t caulk::concurrent::details::rt_message_call<AUECRMDF::ResetMain(AudioBufferList const*,AudioBufferList const*,AudioBufferList*,AudioBufferList*,AudioBufferList*)::$_0,BOOL &,BOOL &>::perform(unsigned __int8 *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1[21];
  v3 = a1[22];
  v4 = AUECRMDFLogScope();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109376;
    v6[1] = v2;
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "********* Reset begins *********\nref-signal buffers have finite values (1 if True): %u\nEC output buffers have valid values (1 if True): %u\n", v6, 0xEu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

uint64_t AUECRMDFLogScope(void)
{
  v0 = &xmmword_1ECDA9000;
  {
    v0 = &xmmword_1ECDA9000;
    if (v2)
    {
      AUECRMDFLogScope(void)::gLog = os_log_create("com.apple.coreaudio", " AUECRMDF");
      v0 = &xmmword_1ECDA9000;
    }
  }

  return *(v0 + 502);
}

void caulk::concurrent::details::rt_message_call<AUECRMDF::ResetMain(AudioBufferList const*,AudioBufferList const*,AudioBufferList*,AudioBufferList*,AudioBufferList*)::$_0,BOOL &,BOOL &>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t caulk::concurrent::details::rt_message_call<AUECRMDF::ProcessMultipleBufferLists(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_0,unsigned int &,unsigned int>::perform(caulk::concurrent::message *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 6);
  v2 = *(a1 + 7);
  v4 = AUECRMDFLogScope();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109376;
    v6[1] = v3;
    v7 = 1024;
    v8 = v2;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "AUECRMDF::ProcessMultipleBufferLists error - wrong (%u) block size expected (%u)\n", v6, 0xEu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<AUECRMDF::ProcessMultipleBufferLists(unsigned int &,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_0,unsigned int &,unsigned int>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUECRMDF::SetParameter(AUECRMDF *this, unsigned int a2, int a3, float a4)
{
  if (a3)
  {
    return 4294956418;
  }

  ++*(this + 133);
  v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v8 & 1) == 0)
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v7, a2, a4);
  return 0;
}

uint64_t AUECRMDF::SetProperty(AUECRMDF *this, int a2, int a3, unsigned int a4, _DWORD *a5, int a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if (a6 == 4)
    {
      result = 0;
      *(this + 528) = *a5 != 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUECRMDF::GetProperty(AUECRMDF *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 528;
    goto LABEL_7;
  }

  if (a2 == 3700)
  {
    v6 = 376;
LABEL_7:
    v5 = 0;
    *a5 = *(this + v6);
    return v5;
  }

  return 4294956417;
}

uint64_t AUECRMDF::GetPropertyInfo(AUECRMDF *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v7 = 1;
  }

  else
  {
    if (a2 != 3700)
    {
      return 4294956417;
    }

    v7 = 0;
  }

  result = 0;
  *a6 = v7;
  *a5 = 4;
  return result;
}

caulk::rt_safe_memory_resource *AUECRMDF::Reset(AUECRMDF *this)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v3 = *(this + 90);
    v4 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v4 + 16) = 0;
    *v4 = &unk_1F5935838;
    *(v4 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v3, v4);
    if (*(this + 17) == 1)
    {
      ecRMDF::ec_state_reset(*(this + 91));
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUECRMDF::Reset(unsigned int,unsigned int)::$_0>::perform(caulk::concurrent::message *a1)
{
  v2 = AUECRMDFLogScope();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "Reset.\n", v4, 2u);
  }

  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  __break(1u);
  return result;
}

void caulk::concurrent::details::rt_message_call<AUECRMDF::Reset(unsigned int,unsigned int)::$_0>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUECRMDF::Initialize(float32x2_t *this)
{
  v162 = *MEMORY[0x1E69E9840];
  v2 = AUECRMDFLogScope();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEFAULT, "Initialize.\n", buf, 2u);
  }

  v3 = this[15];
  if (v3)
  {
    LODWORD(v4) = (*(**&v3 + 24))(v3);
  }

  else
  {
    v4 = (*&this[13] - *&this[12]) >> 3;
  }

  v5 = this[21];
  if (v5)
  {
    LODWORD(v6) = (*(**&v5 + 24))(v5);
  }

  else
  {
    v6 = (*&this[19] - *&this[18]) >> 3;
  }

  Element = ausdk::AUScope::GetElement(&this[10], 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v8 = ausdk::AUScope::GetElement(&this[10], 1u);
  if (!v8)
  {
    ausdk::Throw(0xFFFFD583);
  }

  this[68].i32[1] = *(Element + 108);
  this[69].i32[0] = *(v8 + 108);
  this[67].i32[1] = *(Element + 80);
  if (v4 >= 2)
  {
    v9 = 1;
    do
    {
      v10 = ausdk::AUScope::GetElement(&this[10], v9 - 1);
      if (!v10)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v11 = ausdk::AUScope::GetElement(&this[10], v9);
      if (!v11)
      {
        ausdk::Throw(0xFFFFD583);
      }

      LODWORD(v12) = this[67].i32[1];
      v13 = v12;
      if (*(v10 + 80) != v13 || *(v11 + 80) != v13)
      {
        return 4294956428;
      }
    }

    while (v4 != ++v9);
  }

  if (v6 >= 2)
  {
    v15 = 1;
    do
    {
      v16 = ausdk::AUScope::GetElement(&this[16], v15 - 1);
      if (!v16)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v17 = ausdk::AUScope::GetElement(&this[16], v15);
      if (!v17)
      {
        ausdk::Throw(0xFFFFD583);
      }

      LODWORD(v18) = this[67].i32[1];
      v19 = v18;
      if (*(v16 + 80) != v19 || *(v17 + 80) != v19)
      {
        return 4294956428;
      }
    }

    while (v6 != ++v15);
  }

  v21 = ausdk::AUScope::GetElement(&this[10], 0);
  if (!v21)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v22 = *(v21 + 108);
  v23 = ausdk::AUScope::GetElement(&this[16], 0);
  if (!v23)
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (v22 != *(v23 + 108))
  {
    return 4294956428;
  }

  if (v6 >= 2)
  {
    v24 = ausdk::AUScope::GetElement(&this[10], 0);
    if (!v24)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v25 = *(v24 + 108);
    v26 = ausdk::AUScope::GetElement(&this[16], 1u);
    if (!v26)
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (v25 != *(v26 + 108))
    {
      return 4294956428;
    }
  }

  this[68].i32[0] = this[42].i32[0];
  v27 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_124;
  }

  this[70].i32[0] = ausdk::AUElement::GetParameter(v27, 0);
  v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_124;
  }

  this[70].f32[1] = ausdk::AUElement::GetParameter(v29, 1u);
  v31 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_124;
  }

  this[71].f32[0] = ausdk::AUElement::GetParameter(v31, 2u);
  v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_124;
  }

  this[71].f32[1] = ausdk::AUElement::GetParameter(v33, 3u);
  v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v36 & 1) == 0)
  {
    goto LABEL_124;
  }

  this[72].f32[0] = ausdk::AUElement::GetParameter(v35, 4u);
  v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_124;
  }

  this[72].f32[1] = ausdk::AUElement::GetParameter(v37, 5u);
  v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_124;
  }

  this[73].i32[0] = ausdk::AUElement::GetParameter(v39, 6u);
  if (!((v6 > 1) | this[87].i8[0] & 1))
  {
    v41 = ExtendedAudioBufferList_Create();
    CA::AudioBuffersBase::AudioBuffersBase(buf, v41);
    if (this[87].i8[0] == 1)
    {
      v42 = this[86];
      v43 = *buf;
    }

    else
    {
      v42 = 0;
      v43 = *buf;
      this[87].i8[0] = 1;
    }

    this[86] = v43;
    *buf = v42;
    ExtendedAudioBufferList_Destroy();
  }

  if ((this[89].i8[0] & 1) == 0 && v6 <= 2)
  {
    v45 = ExtendedAudioBufferList_Create();
    CA::AudioBuffersBase::AudioBuffersBase(buf, v45);
    if (this[89].i8[0] == 1)
    {
      v46 = this[88];
      v47 = *buf;
    }

    else
    {
      v46 = 0;
      v47 = *buf;
      this[89].i8[0] = 1;
    }

    this[88] = v47;
    *buf = v46;
    ExtendedAudioBufferList_Destroy();
  }

  v48 = this[68].u32[0];
  v49 = this[73].u32[0];
  v50 = v48 / v49;
  if (-858993459 * (v48 / v49) >= 0x33333334)
  {
    v51 = 1;
  }

  else
  {
    v51 = 5;
  }

  if (-1431655765 * v50 >= 0x55555556)
  {
    v52 = 8;
  }

  else
  {
    v52 = 24;
  }

  v53 = v52 * v51;
  v54 = v53;
  do
  {
    v55 = v54;
    v54 *= 2;
  }

  while (v55 < v50);
  v56 = v55 >> (v55 > v50);
  if (v56 <= v53)
  {
    v57 = v53;
  }

  else
  {
    v57 = v56;
  }

  v58 = 1;
  for (i = v57; i < v48; ++v58)
  {
    i += v57;
  }

  v60 = (__PAIR64__(v58, v48) - i) >> 32;
  if (v60 != v49)
  {
    v61 = AUECRMDFLogScope();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = this[73].i32[0];
      *buf = 67109376;
      *&buf[4] = v62;
      v160 = 1024;
      v161 = v60;
      _os_log_impl(&dword_1DDB85000, v61, OS_LOG_TYPE_DEFAULT, "AUECRMDF::Init warning - tried to set mOrder: (%u), but forced mOrder to (%u)\n", buf, 0xEu);
    }

    this[73].i32[0] = v60;
    v48 = this[68].u32[0];
    v49 = v60;
  }

  v63 = v49 * v57;
  if (v63 != v48)
  {
    v64 = AUECRMDFLogScope();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = this[68].i32[0];
      *buf = 67109376;
      *&buf[4] = v65;
      v160 = 1024;
      v161 = v63;
      _os_log_impl(&dword_1DDB85000, v64, OS_LOG_TYPE_DEFAULT, "AUECRMDF::Init warning - tried to set mBlkSize: (%u), but forced mBlkSize to (%u)\n", buf, 0xEu);
    }

    this[68].i32[0] = v63;
  }

  v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v67 & 1) == 0
    || (this[73].f32[1] = ausdk::AUElement::GetParameter(v66, 7u), v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v69 & 1) == 0)
    || (this[74].i8[0] = ausdk::AUElement::GetParameter(v68, 8u) != 0.0, v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v71 & 1) == 0)
    || (this[74].f32[1] = ausdk::AUElement::GetParameter(v70, 9u), v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v73 & 1) == 0)
    || (this[75].i32[0] = ausdk::AUElement::GetParameter(v72, 0xAu), v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v75 & 1) == 0)
    || (this[75].f32[1] = ausdk::AUElement::GetParameter(v74, 0xBu), v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v77 & 1) == 0)
    || (this[76].f32[0] = ausdk::AUElement::GetParameter(v76, 0xCu), v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v79 & 1) == 0)
    || (this[76].f32[1] = ausdk::AUElement::GetParameter(v78, 0xDu), v80 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v81 & 1) == 0)
    || (this[77].f32[0] = ausdk::AUElement::GetParameter(v80, 0xEu), v82 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v83 & 1) == 0)
    || (this[77].i32[1] = ausdk::AUElement::GetParameter(v82, 0xFu), v84 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v85 & 1) == 0)
    || (this[78].f32[0] = ausdk::AUElement::GetParameter(v84, 0x10u), v86 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v87 & 1) == 0)
    || (this[79].f32[1] = ausdk::AUElement::GetParameter(v86, 0x11u), v88 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v89 & 1) == 0)
    || (this[78].f32[1] = ausdk::AUElement::GetParameter(v88, 0x12u), v90 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v91 & 1) == 0)
    || (this[80].f32[0] = ausdk::AUElement::GetParameter(v90, 0x13u), v92 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v93 & 1) == 0)
    || (this[80].i8[4] = ausdk::AUElement::GetParameter(v92, 0x14u) != 0.0, v94 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v95 & 1) == 0)
    || (this[81].f32[0] = ausdk::AUElement::GetParameter(v94, 0x15u), v96 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v97 & 1) == 0)
    || (this[81].f32[1] = ausdk::AUElement::GetParameter(v96, 0x16u), v98 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v99 & 1) == 0)
    || (this[82].f32[0] = ausdk::AUElement::GetParameter(v98, 0x17u), v100 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v101 & 1) == 0)
    || (this[82].f32[1] = ausdk::AUElement::GetParameter(v100, 0x18u), v102 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v103 & 1) == 0)
    || (this[83].f32[0] = ausdk::AUElement::GetParameter(v102, 0x19u), v104 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v105 & 1) == 0)
    || (this[83].f32[1] = ausdk::AUElement::GetParameter(v104, 0x1Au), v106 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v107 & 1) == 0)
    || (this[84].i8[0] = ausdk::AUElement::GetParameter(v106, 0x1Bu) != 0.0, v108 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v109 & 1) == 0)
    || (this[84].f32[1] = ausdk::AUElement::GetParameter(v108, 0x1Cu), v110 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0), (v111 & 1) == 0))
  {
LABEL_124:
    abort();
  }

  v112 = ausdk::AUElement::GetParameter(v110, 0x1Du) != 0.0;
  this[85].i8[0] = v112;
  v113 = this[75].u32[0];
  v114 = this[68].u32[1];
  if (v113 > v114)
  {
    v113 = 0;
    this[75].i32[0] = 0;
  }

  v115 = this[77].u32[1];
  if (v115 > v114 - 1)
  {
    v115 = 0;
    this[77].i32[1] = 0;
  }

  this[67].i32[0] = this[66].i32[1];
  v116 = this[91];
  if (!*&v116)
  {
    operator new();
  }

  v117 = this[68].u32[0];
  v118 = this[67].u32[1];
  v119 = vcvtps_u32_f32(this[70].u32[0] / ((v117 / v118) * 1000.0));
  this[69].i32[1] = v119;
  v120 = this[70].f32[1];
  v121 = this[73].f32[1];
  v122 = this[72].i32[1];
  v123 = this[72].f32[0];
  v124 = this[71].f32[0];
  v125 = this[73].u32[0];
  v126 = this[69].i32[0];
  v127 = this[74].i8[0];
  v128 = this[75].f32[1];
  v149 = this[71].f32[1];
  v150 = this[76].f32[0];
  v152 = this[76].f32[1];
  v129 = this[80].i32[0];
  v153 = this[80].i8[4];
  v154 = this[81];
  v130 = this[82].f32[0];
  v155 = this[82].f32[1];
  v156 = this[83].f32[0];
  v157 = this[83].f32[1];
  v158 = this[84].f32[1];
  *(*&v116 + 172) = v112;
  *(*&v116 + 140) = v115;
  *(*&v116 + 116) = v129;
  *(*&v116 + 8) = __exp10f(v120 / 10.0);
  *(*&v116 + 68) = v127;
  v131 = __exp10f(v124 / 10.0);
  **&v116 = v125 * v119;
  *(*&v116 + 28) = v125;
  *(*&v116 + 32) = v114;
  v132 = v117 / v125;
  *(*&v116 + 36) = v126;
  *(*&v116 + 40) = v132;
  *(*&v116 + 44) = v118;
  *(*&v116 + 20) = v131;
  *(*&v116 + 24) = v122;
  *(*&v116 + 12) = __exp10f(v121 / 10.0);
  *(*&v116 + 48) = 2 * v132;
  *(*&v116 + 52) = v132 + 1;
  *(*&v116 + 64) = 2 * (v132 + 1);
  *v133.i32 = __exp10f(v123 / 10.0);
  v134 = (((v128 * (2 * v132)) / v118) + -1.0);
  *(*&v116 + 16) = v133.i32[0];
  *(*&v116 + 84) = v113;
  *(*&v116 + 88) = v134;
  v135 = (((v150 * (2 * v132)) / v118) + -1.0);
  if (v132 < v135)
  {
    v135 = v132;
  }

  *(*&v116 + 92) = v135;
  if (v135 <= v134)
  {
    *(*&v116 + 88) = v135 - 1;
  }

  *v133.i32 = v132 / v118;
  v151 = v133;
  *(*&v116 + 108) = v133.i32[0];
  v136 = -*v133.i32;
  v137 = expf(-*v133.i32 / v152);
  v138 = 1.0;
  *(*&v116 + 96) = v137;
  *(*&v116 + 100) = (1.0 - v137) / v137;
  *(*&v116 + 129) = v153;
  *(*&v116 + 132) = vcvt_u32_f32(vmul_f32(vdiv_f32(v154, vdup_lane_s32(v151, 0)), vdup_n_s32(0x3A83126Fu)));
  v139 = expf(v136 / v130);
  if (v130 == 0.0)
  {
    v139 = 1.0;
  }

  *(*&v116 + 148) = v139;
  *(*&v116 + 152) = __exp10f(v155 / 10.0);
  v140 = 1.0;
  if (v156 != 0.0)
  {
    v140 = expf(v136 / v156);
  }

  *(*&v116 + 160) = v140;
  *(*&v116 + 164) = __exp10f(v157 / 10.0);
  if (v158 != 0.0)
  {
    v138 = expf(v136 / v158);
  }

  *(*&v116 + 168) = v138;
  Setup = vDSP_DFT_zrop_CreateSetup(*(*&v116 + 872), 2 * v132, vDSP_DFT_FORWARD);
  std::unique_ptr<vDSP_DFT_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_DFT_SetupStruct*,&(vDSP_DFT_DestroySetup)>>::reset[abi:ne200100]((*&v116 + 872), Setup);
  v142 = vDSP_DFT_zrop_CreateSetup(*(*&v116 + 880), *(*&v116 + 48), vDSP_DFT_INVERSE);
  std::unique_ptr<vDSP_DFT_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_DFT_SetupStruct*,&(vDSP_DFT_DestroySetup)>>::reset[abi:ne200100]((*&v116 + 880), v142);
  v143 = *(*&v116 + 48);
  v144 = 1.0 / v143;
  *(*&v116 + 56) = v144;
  *(*&v116 + 60) = 1056964608;
  v145 = *(*&v116 + 40);
  v146 = 0.0;
  if (v149 > 0.0)
  {
    v146 = expf((-v145 / *(*&v116 + 44)) / v149);
  }

  *(*&v116 + 4) = v146;
  *(*&v116 + 72) = v143 >> 1;
  *(*&v116 + 76) = v145 >> 1;
  *(*&v116 + 80) = v144 * 0.5;
  ecRMDF::ec_state_reset(*&v116);
  (*(*this + 72))(this, 0, 0);
  v147 = AUECRMDFLogScope();
  v148 = os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v148)
  {
    *buf = 0;
    _os_log_impl(&dword_1DDB85000, v147, OS_LOG_TYPE_DEFAULT, "Successfully initialized.\n", buf, 2u);
    return 0;
  }

  return result;
}

void sub_1DDFE80B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<ecRMDF>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<vDSP_DFT_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_DFT_SetupStruct*,&(vDSP_DFT_DestroySetup)>>::reset[abi:ne200100]((v2 + 880), 0);
    std::unique_ptr<vDSP_DFT_SetupStruct,applesauce::raii::v1::detail::opaque_deletion_functor<vDSP_DFT_SetupStruct*,&(vDSP_DFT_DestroySetup)>>::reset[abi:ne200100]((v2 + 872), 0);
    v3 = *(v2 + 848);
    if (v3)
    {
      *(v2 + 856) = v3;
      operator delete(v3);
    }

    v18 = (v2 + 824);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v18 = (v2 + 800);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v18 = (v2 + 776);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v18 = (v2 + 752);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v18 = (v2 + 728);
    std::vector<std::vector<std::vector<std::vector<float>>>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v18 = (v2 + 704);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v18 = (v2 + 680);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v18 = (v2 + 656);
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v18 = (v2 + 632);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v18 = (v2 + 608);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v18 = (v2 + 584);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v18 = (v2 + 560);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v18 = (v2 + 536);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v18 = (v2 + 512);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v18);
    v4 = *(v2 + 488);
    if (v4)
    {
      *(v2 + 496) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 464);
    if (v5)
    {
      *(v2 + 472) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 440);
    if (v6)
    {
      *(v2 + 448) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 416);
    if (v7)
    {
      *(v2 + 424) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 392);
    if (v8)
    {
      operator delete(v8);
    }

    v9 = *(v2 + 368);
    if (v9)
    {
      operator delete(v9);
    }

    v10 = *(v2 + 344);
    if (v10)
    {
      *(v2 + 352) = v10;
      operator delete(v10);
    }

    v11 = *(v2 + 320);
    if (v11)
    {
      *(v2 + 328) = v11;
      operator delete(v11);
    }

    v12 = *(v2 + 296);
    if (v12)
    {
      *(v2 + 304) = v12;
      operator delete(v12);
    }

    v13 = *(v2 + 272);
    if (v13)
    {
      *(v2 + 280) = v13;
      operator delete(v13);
    }

    v14 = *(v2 + 248);
    if (v14)
    {
      *(v2 + 256) = v14;
      operator delete(v14);
    }

    v15 = *(v2 + 224);
    if (v15)
    {
      *(v2 + 232) = v15;
      operator delete(v15);
    }

    v16 = *(v2 + 200);
    if (v16)
    {
      *(v2 + 208) = v16;
      operator delete(v16);
    }

    v17 = *(v2 + 176);
    if (v17)
    {
      *(v2 + 184) = v17;
      operator delete(v17);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void AUECRMDF::~AUECRMDF(AUECRMDF *this)
{
  AUECRMDF::~AUECRMDF(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59355E8;
  std::unique_ptr<ecRMDF>::reset[abi:ne200100](this + 91, 0);
  std::unique_ptr<caulk::concurrent::messenger>::reset[abi:ne200100](this + 90, 0);
  if (*(this + 712) == 1)
  {
    ExtendedAudioBufferList_Destroy();
  }

  if (*(this + 696) == 1)
  {
    ExtendedAudioBufferList_Destroy();
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t AULoudspeakerManager::SetProperty(AULoudspeakerManager *this, int a2, int a3, unsigned int a4, CFTypeRef *a5, void *a6, int *a7)
{
  if (a2 == 6620)
  {
    if (a3)
    {
      return 4294956430;
    }

    else if (a6 == 8)
    {
      v9 = *a5;
      if (*a5)
      {
        CFRetain(*a5);
        v10 = CFGetTypeID(v9);
        if (v10 != CFDictionaryGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      v11 = *(this + 272);
      *(this + 272) = v9;
      if (v11)
      {
        CFRelease(v11);
      }

      if (*(this + 17) == 1)
      {

        return AULoudspeakerManager::ReadCalibrationData(this);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 4294956445;
    }
  }

  else
  {

    return AUDspLib::SetProperty(this, a2, a3, a4, a5, a6, a7);
  }
}

void sub_1DDFE85C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t AULoudspeakerManager::ReadCalibrationData(AULoudspeakerManager *this)
{
  if (!*(this + 272))
  {
    return 0;
  }

  v2 = CFStringCreateWithCString(*MEMORY[0x1E695E480], "SpVA", 0x8000100u);
  cf = v2;
  if (v2)
  {
    v3 = CFGetTypeID(v2);
    if (v3 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v4 = cf;
  }

  else
  {
    v4 = 0;
  }

  Value = CFDictionaryGetValue(*(this + 272), v4);
  v6 = Value;
  if (!Value)
  {
    theData = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_45;
  }

  CFRetain(Value);
  theData = v6;
  v7 = CFGetTypeID(v6);
  if (v7 != CFDataGetTypeID())
  {
    v27 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v27, "Could not construct");
  }

  v29 = 0;
  v30 = 0;
  if (!theData)
  {
LABEL_45:
    v26 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v26, "Could not construct");
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (Length < 8)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_37;
  }

  v10 = 0;
  if (*BytePtr == 1 && *(BytePtr + 1) == 8)
  {
    v11 = *(BytePtr + 2);
    if (*(BytePtr + 2) && 8 * v11 + 8 <= Length)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v13 += BytePtr[v12++];
      }

      while (v12 != 6);
      v14 = 9;
      v15 = 8;
      do
      {
        v13 += BytePtr[v15];
        v15 = v14;
      }

      while (Length > v14++);
      if (*(BytePtr + 3) != -v13)
      {
        goto LABEL_10;
      }

      v17 = (BytePtr + 12);
      do
      {
        v18 = *(v17 - 1);
        if (v18 == 1702054192)
        {
          v19 = &v30;
        }

        else if (v18 == 1886208304)
        {
          v19 = &v29;
        }

        else
        {
          v19 = (&v29 + 4);
          if (v18 != 1702057520)
          {
            goto LABEL_10;
          }
        }

        v20 = *v17;
        v17 += 2;
        *v19 = v20;
        LODWORD(v11) = v11 - 1;
      }

      while (v11);
    }

    v21 = 0;
    for (i = (this + 528); ; i += 7)
    {
      if (*(this + 397))
      {
        v23 = *(this + 265);
        v24 = v23 == *(this + 266) ? 0 : *v23;
      }

      else
      {
        v24 = 1;
      }

      if (v21 >= v24)
      {
        break;
      }

      DspLib::LoudspeakerManagerV1::Algorithm::setCalibrationData(*i, &v29);
      ++v21;
    }

    v10 = 1;
  }

LABEL_37:
  if (theData)
  {
    CFRelease(theData);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

void sub_1DDFE8944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, const void *a13)
{
  __cxa_free_exception(v13);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a13);
  _Unwind_Resume(a1);
}

uint64_t AULoudspeakerManager::GetProperty(AULoudspeakerManager *this, int a2, unsigned int a3, unsigned int a4, unint64_t *a5, int *a6)
{
  if (a2 == 6620)
  {
    if (a3)
    {
      return 4294956430;
    }

    else
    {
      v8 = *(this + 272);
      if (v8)
      {
        Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v8);
        v10 = Copy;
        if (Copy)
        {
          v11 = CFGetTypeID(Copy);
          if (v11 != CFDictionaryGetTypeID())
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }
        }

        result = 0;
        *a5 = v10;
      }

      else
      {
        return 4294956433;
      }
    }
  }

  else
  {

    return AUDspLib::GetProperty(this, a2, a3, a4, a5, a6);
  }

  return result;
}

void sub_1DDFE8AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t AULoudspeakerManager::GetPropertyInfo(AULoudspeakerManager *this, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 != 6620)
  {
    return AUDspLib::GetPropertyInfo(this, a2, a3, a4, a5, a6);
  }

  if (a3)
  {
    return 4294956430;
  }

  result = 0;
  *a5 = 8;
  *a6 = 1;
  return result;
}

uint64_t AULoudspeakerManager::Initialize(AULoudspeakerManager *this)
{
  result = AUDspLib::Initialize(this);
  if (!result)
  {

    return AULoudspeakerManager::ReadCalibrationData(this);
  }

  return result;
}

void AULoudspeakerManager::~AULoudspeakerManager(AULoudspeakerManager *this)
{
  *this = &unk_1F59358B0;
  v2 = *(this + 272);
  if (v2)
  {
    CFRelease(v2);
  }

  AUDspLib::~AUDspLib(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F59358B0;
  v2 = *(this + 272);
  if (v2)
  {
    CFRelease(v2);
  }

  AUDspLib::~AUDspLib(this);
}

InverseWithMoorePenrose *std::unique_ptr<InverseWithMoorePenrose>::reset[abi:ne200100](InverseWithMoorePenrose **a1, InverseWithMoorePenrose *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    InverseWithMoorePenrose::~InverseWithMoorePenrose(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

InverseWithHRLS *std::unique_ptr<InverseWithHRLS>::reset[abi:ne200100](InverseWithHRLS **a1, InverseWithHRLS *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    InverseWithHRLS::~InverseWithHRLS(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

InverseWithGramSchmidt *std::unique_ptr<InverseWithGramSchmidt>::reset[abi:ne200100](InverseWithGramSchmidt **a1, InverseWithGramSchmidt *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    InverseWithGramSchmidt::~InverseWithGramSchmidt(result);

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void GuidedMWF::InitializeMultiChannelFilter(float **this)
{
  vDSP_vclr(this[8], 1, (2 * *(this + 10)));
  if (*this)
  {
    v2 = 0;
    do
    {
      vDSP_vfill(&GuidedMWF::mOne, &this[8][(*(this + 1) + *(this + 9)) * v2++], 1, *(this + 1));
    }

    while (v2 < *this);
  }
}

void GuidedMWF::Reset(GuidedMWF *this)
{
  v15 = *MEMORY[0x1E69E9840];
  bzero(*(this + 8), *(this + 9) - *(this + 8));
  bzero(*(this + 11), *(this + 12) - *(this + 11));
  v2 = *(this + 14);
  v3 = *(this + 15) - v2;
  if (v3 >= 1)
  {
    memset_pattern16(v2, &unk_1DE095DF0, v3);
  }

  bzero(*(this + 44), *(this + 45) - *(this + 44));
  bzero(*(this + 47), *(this + 48) - *(this + 47));
  if (*this)
  {
    v4 = 0;
    do
    {
      *__A = 1.0 / *(this + 4);
      vDSP_vfill(__A, (*(this + 11) + 4 * (*(this + 1) + *(this + 9)) * v4), 1, *(this + 1));
      vDSP_vfill(this + 4, (*(this + 44) + 4 * (*(this + 1) + *(this + 9)) * v4), 1, *(this + 1));
      vDSP_vfill(this + 4, (*(this + 47) + 4 * (*(this + 1) + *(this + 9)) * v4++), 1, *(this + 1));
    }

    while (v4 < *this);
  }

  v5 = *(this + 64);
  if (v5)
  {
    bzero(*v5, *(v5 + 8) - *v5);
    bzero(*(v5 + 24), *(v5 + 32) - *(v5 + 24));
    bzero(*(v5 + 48), *(v5 + 56) - *(v5 + 48));
    bzero(*(v5 + 72), *(v5 + 80) - *(v5 + 72));
    bzero(*(v5 + 96), *(v5 + 104) - *(v5 + 96));
    bzero(*(v5 + 120), *(v5 + 128) - *(v5 + 120));
    bzero(*(v5 + 144), *(v5 + 152) - *(v5 + 144));
    bzero(*(v5 + 168), *(v5 + 176) - *(v5 + 168));
    v6 = *(v5 + 200);
    v11 = 1.0 / v6;
    *__A = 1.0 / sqrtf(v6);
    if (*(v5 + 192))
    {
      v7 = 0;
      do
      {
        vDSP_vfill(__A, (*v5 + 4 * (*(v5 + 196) + *(v5 + 208)) * v7), 1, *(v5 + 196));
        vDSP_vfill(&v11, (*(v5 + 24) + 4 * (*(v5 + 196) + *(v5 + 208)) * v7++), 1, *(v5 + 196));
      }

      while (v7 < *(v5 + 192));
    }
  }

  v8 = *(this + 65);
  if (v8)
  {
    InverseWithGramSchmidt::cleanup(v8);
  }

  *(this + 118) = *this;
  v9 = *(this + 61);
  if (v9 >= 1)
  {
    *__A = *(this + 60);
    *&__A[8] = 0;
    std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(__A, v9);
  }

  GuidedMWF::InitializeMultiChannelFilter(this);
  if (AUDenoiseLogScope(void)::once != -1)
  {
    dispatch_once(&AUDenoiseLogScope(void)::once, &__block_literal_global_30123);
  }

  if (AUDenoiseLogScope(void)::scope)
  {
    v10 = *AUDenoiseLogScope(void)::scope;
    if (!*AUDenoiseLogScope(void)::scope)
    {
      return;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *__A = 136315394;
    *&__A[4] = "GuidedMWF.cpp";
    v13 = 1024;
    v14 = 184;
    _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d successful reset.\n", __A, 0x12u);
  }
}

uint64_t GuidedMWF::UpdatePSD(unsigned int *a1, void *a2, float **a3)
{
  vDSP_vclr(*a3, 1, a1[1]);
  if (*a1)
  {
    v6 = 0;
    do
    {
      v7 = a1[1];
      v8 = (*a2 + 4 * (a1[9] + v7 * v6));
      v10.realp = (*a2 + 4 * v7 * v6);
      v10.imagp = v8;
      vDSP_zvmgsa(&v10, 1, *a3, 1, *a3, 1, v7);
      ++v6;
    }

    while (v6 < *a1);
  }

  return MEMORY[0x1E12BE940](*a3, 1, a1 + 11, *a3, 1, a1[1]);
}

void GuidedMWF::UpdateSpatialCovariance(uint64_t a1, void *a2, const float *a3, void *a4, void *a5)
{
  v28 = *(a1 + 4);
  v9 = (a1 + 232);
  vvsqrtf(*(a1 + 232), a3, &v28);
  vDSP_vthr(*v9, 1, (a1 + 20), *v9, 1, *(a1 + 4));
  vDSP_svdiv(&GuidedMWF::mOne, *v9, 1, *v9, 1, *(a1 + 4));
  GuidedMWF::ApplyMaskOnMultiChannelVector(a1, v9, a2, a5);
  MEMORY[0x1E12BE940](*a4, 1, a1 + 8, *a4, 1, (2 * *(a1 + 40)));
  MEMORY[0x1E12BE940](*a5, 1, a1 + 52, *(a1 + 256), 1, (2 * *(a1 + 36)));
  if (*a1)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = 0;
      v13 = *(a1 + 4) * v10;
      v14 = *(a1 + 256);
      v15 = (v14 + 4 * v13);
      v16 = (v14 + 4 * (*(a1 + 36) + v13));
      __B.realp = v15;
      __B.imagp = v16;
      do
      {
        __N = *(a1 + 4);
        v18 = *(a1 + 36);
        v19 = __N * v12 + v18 * v10;
        v20 = (*a4 + 4 * (v19 + *(a1 + 40)));
        __D.realp = (*a4 + 4 * v19);
        __D.imagp = v20;
        v21 = *(a1 + 256);
        __A.realp = (v21 + 4 * __N * v12);
        __A.imagp = (v21 + 4 * (__N * v12 + v18));
        vDSP_zvcma(&__A, 1, &__B, 1, &__D, 1, &__D, 1, __N);
        if (v12 < v10)
        {
          v22 = *(a1 + 4);
          v23 = *(a1 + 36) * v12 + v22 * v10;
          v24 = *a4 + 4 * (v23 + *(a1 + 40));
          memcpy((*a4 + 4 * v23), __D.realp, 4 * v22);
          MEMORY[0x1E12BE810](__D.imagp, 1, v24, 1, *(a1 + 4));
        }

        ++v12;
      }

      while (v11 != v12);
      ++v10;
      ++v11;
    }

    while (v10 < *a1);
  }
}

unsigned int *GuidedMWF::ApplyFilterFastVersion(uint64_t a1, const void **a2)
{
  if (*(a1 + 28) > 1u)
  {
    v16 = *(a1 + 520);
    memcpy(v16[22], *a2, 4 * *(v16 + 2));
    memcpy(v16[25], *a2 + 4 * *(v16 + 2), 4 * *(v16 + 2));
    LODWORD(v17) = *v16;
    if (*v16)
    {
      v18 = 0;
      v19 = 1;
      v20 = 16;
      do
      {
        if ((*(v16[7] + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v18))
        {
          ++v18;
        }

        else
        {
          v21 = *(v16 + 1);
          v22 = *(a1 + 256);
          v23 = (v22 + 4 * (*(v16 + 2) + v21 * v18));
          __D.realp = (v22 + 4 * (v21 * v18));
          __D.imagp = v23;
          vDSP_zrvdiv(v16[28] + v18, 1, *(v16[10] + 3 * v18), 1, &__D, 1, v21);
          v17 = *v16;
          v24 = v20;
          v25 = v19;
          if (v18 + 1 < v17)
          {
            do
            {
              if (((*(v16[7] + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
              {
                vDSP_zvma((*(v16[19] + 3 * v18) + v24), 1, v16[28] + v18, 1, (v16[28] + v24), 1, (v16[28] + v24), 1, *(v16 + 1));
                LODWORD(v17) = *v16;
              }

              ++v25;
              v24 += 16;
            }

            while (v25 < v17);
          }

          ++v18;
        }

        ++v19;
        v20 += 16;
      }

      while (v18 < v17);
      v26 = (v17 - 1);
      if (v17 - 1 >= 0)
      {
        v27 = v17 - 2;
        do
        {
          if (((*(v16[7] + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            v28 = *(v16 + 1) * v17 - 1;
            v29 = *(a1 + 256);
            v30 = (v29 + 4 * v28);
            v31 = (v29 + 4 * (*(v16 + 2) + v28));
            __D.realp = v30;
            __D.imagp = v31;
            if (v17 - 2 >= 0)
            {
              v32 = 24 * v27;
              v33 = v27;
              do
              {
                if (((*(v16[7] + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
                {
                  __A.realp = 0;
                  __A.imagp = 0;
                  v34 = *(v16 + 1);
                  __A.realp = (*(*(v16[13] + v32) + 24 * v26) + 4 * (v34 - 1));
                  __A.imagp = (*(*(v16[16] + v32) + 24 * v26) + 4 * (v34 - 1));
                  v35 = v34 - 1 + v34 * v33;
                  v36 = *(a1 + 256);
                  v37 = *(v16 + 2) + v35;
                  __B.realp = (v36 + 4 * v35);
                  __B.imagp = (v36 + 4 * v37);
                  vDSP_zvcma(&__A, -1, &__D, -1, &__B, -1, &__B, -1, v34);
                }

                v38 = v33--;
                v32 -= 24;
              }

              while (v38 > 0);
            }
          }

          LODWORD(v17) = v26;
          --v27;
        }

        while (v26-- > 0);
      }
    }
  }

  else
  {
    vDSP_vclr(*(a1 + 256), 1, (2 * *(a1 + 36)));
    if (*a1)
    {
      v4 = 0;
      do
      {
        v5 = 0;
        v6 = *(a1 + 4) * v4;
        v7 = *(a1 + 256);
        v8 = (v7 + 4 * v6);
        v9 = (v7 + 4 * (*(a1 + 36) + v6));
        __D.realp = v8;
        __D.imagp = v9;
        do
        {
          __N = *(a1 + 4);
          v11 = *(a1 + 36);
          v12 = __N * v5 + v11 * v4;
          v13 = *(a1 + 88);
          v14 = (v13 + 4 * (v12 + *(a1 + 40)));
          __A.realp = (v13 + 4 * v12);
          __A.imagp = v14;
          v15 = (*a2 + 4 * __N * v5 + 4 * v11);
          __B.realp = (*a2 + 4 * __N * v5);
          __B.imagp = v15;
          vDSP_zvma(&__A, 1, &__B, 1, &__D, 1, &__D, 1, __N);
          ++v5;
        }

        while (v5 < *a1);
        ++v4;
      }

      while (v4 < *a1);
    }
  }

  if ((*(a1 + 28) - 1) <= 1)
  {
    GuidedMWF::ApplyMaskOnMultiChannelVector(a1, (a1 + 112), (a1 + 256), (a1 + 256));
  }

  vDSP_vclr(*a2, 1, (2 * *(a1 + 36)));
  if (*a1)
  {
    v40 = 0;
    do
    {
      v41 = 0;
      v42 = *(a1 + 4) * v40;
      v43 = (*a2 + 4 * v42);
      v44 = (*a2 + 4 * *(a1 + 36) + 4 * v42);
      __D.realp = v43;
      __D.imagp = v44;
      do
      {
        v45 = *(a1 + 4);
        v46 = *(a1 + 36);
        v47 = v45 * v41 + v46 * v40;
        v48 = *(a1 + 352);
        v49 = (v48 + 4 * (v47 + *(a1 + 40)));
        __A.realp = (v48 + 4 * v47);
        __A.imagp = v49;
        v50 = *(a1 + 256);
        __B.realp = (v50 + 4 * v45 * v41);
        __B.imagp = (v50 + 4 * (v45 * v41 + v46));
        vDSP_zvma(&__A, 1, &__B, 1, &__D, 1, &__D, 1, v45);
        ++v41;
      }

      while (v41 < *a1);
      ++v40;
    }

    while (v40 < *a1);
  }

  return GuidedMWF::ApplyMaskOnMultiChannelVector(a1, (a1 + 400), a2, a2);
}

unsigned int *GuidedMWF::ApplyMaskOnMultiChannelVector(unsigned int *result, void *a2, void *a3, void *a4)
{
  if (*result)
  {
    v7 = result;
    v8 = 0;
    do
    {
      MEMORY[0x1E12BE7F0](*a2, 1, *a3 + 4 * v7[1] * v8, 1, *a4 + 4 * v7[1] * v8, 1);
      v9 = v7[9] + v7[1] * v8;
      result = MEMORY[0x1E12BE7F0](*a2, 1, *a3 + 4 * v9, 1, *a4 + 4 * v9, 1);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

uint64_t GuidedMWF::CopyBufferListToVector(unsigned int *a1, uint64_t a2, void *a3, float a4)
{
  v10 = a4;
  if (*a1)
  {
    v6 = 0;
    v7 = (a2 + 16);
    do
    {
      memcpy((*a3 + 4 * a1[1] * v6), *v7, 4 * a1[1]);
      v8 = *v7;
      v7 += 2;
      memcpy((*a3 + 4 * (a1[9] + a1[1] * v6++ + 1)), &v8[4 * a1[1]], 4 * (a1[1] - 2));
    }

    while (v6 < *a1);
  }

  return MEMORY[0x1E12BE940](*a3, 1, &v10, *a3, 1, 2 * a1[9]);
}

unsigned int *GuidedMWF::ApplyMaskOnBufferList(unsigned int *result, void *a2, uint64_t a3)
{
  if (*result)
  {
    v4 = result;
    v5 = 0;
    v6 = (a3 + 16);
    do
    {
      v7 = *v6;
      v6 += 2;
      MEMORY[0x1E12BE7F0](*a2, 1, v7, 1, v7, 1, v4[1]);
      result = MEMORY[0x1E12BE7F0](*a2 + 4, 1, v7 + 4 * v4[1], 1, v7 + 4 * v4[1], 1, v4[1] - 2);
      ++v5;
    }

    while (v5 < *v4);
  }

  return result;
}

void GuidedMWF::ProcessBufferList(GuidedMWF *this, const AudioBufferList *a2, const AudioBufferList *a3, AudioBufferList *a4, AudioBufferList *a5, int a6, int a7)
{
  v14 = *this;
  *(this + 118) = *this;
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = 0;
  p_mData = &a2->mBuffers[0].mData;
  v17 = 0.0;
  do
  {
    v18 = cblas_sdot(2 * *(this + 1) - 2, *p_mData, 1, *p_mData, 1);
    v19 = *(this + 60);
    v20 = *(v19 + 8 * (v15 >> 6));
    *(v19 + 8 * (v15 >> 6)) = v20 & ~(1 << v15);
    if (v18 == 0.0)
    {
      --*(this + 118);
      *(v19 + 8 * (v15 >> 6)) = v20 | (1 << v15);
    }

    else
    {
      v17 = v17 + v18;
    }

    ++v15;
    p_mData += 2;
  }

  while (v15 < *this);
  v14 = *(this + 118);
  if (v14)
  {
    v21 = v17 / v14;
  }

  else
  {
LABEL_9:
    v21 = 0.0;
  }

  v22 = *(this + 65);
  if (v22)
  {
    *(v22 + 48) = v14;
    std::vector<BOOL>::operator=(v22 + 56, this + 480);
  }

  if ((LODWORD(v21) & 0x7FFFFFFFu) > 0x7F7FFFFF || v21 <= *(this + 5))
  {
    if (*this)
    {
      v24 = 0;
      v25 = &a2->mBuffers[0].mData;
      v26 = &a4->mBuffers[0].mData;
      do
      {
        v28 = *v26;
        v26 += 2;
        v27 = v28;
        v29 = *v25;
        v25 += 2;
        memcpy(v27, v29, 4 * (2 * *(this + 1) - 2));
        ++v24;
        v30 = *this;
      }

      while (v24 < v30);
      if (v30 && a6 != 0)
      {
        v32 = 0;
        v33 = &a3->mBuffers[0].mData;
        v34 = &a5->mBuffers[0].mData;
        do
        {
          v36 = *v34;
          v34 += 2;
          v35 = v36;
          v37 = *v33;
          v33 += 2;
          memcpy(v35, v37, 4 * (2 * *(this + 1) - 2));
          ++v32;
        }

        while (v32 < *this);
      }
    }

    return;
  }

  GuidedMWF::CopyBufferListToVector(this, a2, this + 17, *(this + 14));
  GuidedMWF::CopyBufferListToVector(this, a3, this + 20, *(this + 14));
  if (a7)
  {
    v38 = *(this + 6);
    v125 = a4;
    switch(v38)
    {
      case 2:
        memcpy(*(this + 23), *(this + 20), 4 * (2 * *(this + 9)));
        GuidedMWF::ApplyMaskOnMultiChannelVector(this, this + 38, this + 23, this + 23);
        break;
      case 1:
        if (*this)
        {
          v39 = 0;
          do
          {
            v40 = *(this + 1);
            v41 = *(this + 20);
            v42 = *(this + 9) + v40 * v39;
            __D.realp = (v41 + 4 * v40 * v39);
            __D.imagp = (v41 + 4 * v42);
            v43 = *(this + 17);
            __A.realp = (v43 + 4 * v40 * v39);
            __A.imagp = (v43 + 4 * v42);
            v44 = *(this + 23);
            __C.realp = (v44 + 4 * v40 * v39);
            __C.imagp = (v44 + 4 * v42);
            vDSP_zvphas(&__A, 1, *(this + 29), 1, v40);
            LODWORD(__B.realp) = *(this + 1);
            vvsincosf(__C.imagp, __C.realp, *(this + 29), &__B);
            vDSP_zvmags(&__D, 1, *(this + 29), 1, *(this + 1));
            vvsqrtf(*(this + 29), *(this + 29), &__B);
            vDSP_zrvmul(&__C, 1, *(this + 29), 1, &__C, 1, *(this + 1));
            ++v39;
          }

          while (v39 < *this);
        }

        break;
      case 0:
        memcpy(*(this + 23), *(this + 20), 4 * (2 * *(this + 9)));
        break;
    }

    MEMORY[0x1E12BE9A0](*(this + 23), 1, *(this + 17), 1, *(this + 26), 1, (2 * *(this + 9)));
    GuidedMWF::UpdatePSD(this, this + 23, this + 50);
    GuidedMWF::UpdatePSD(this, this + 26, this + 53);
    GuidedMWF::UpdateSpatialCovariance(this, this + 23, *(this + 50), this + 44, this + 23);
    GuidedMWF::UpdateSpatialCovariance(this, this + 26, *(this + 53), this + 47, this + 26);
    v45 = *(this + 7);
    if (v45 == 1)
    {
      v124 = a5;
      InverseWithHRLS::update(*(this + 64), *(this + 23), *(this + 2), 1.0 - *(this + 2));
      InverseWithHRLS::update(*(this + 64), *(this + 26), 1.0, *(this + 12));
      v87 = *(this + 64);
      v61 = (v87 + 3);
      vDSP_vclr(v87[3], 1, (2 * *(v87 + 51)));
      MEMORY[0x1E12BE810](*v87 + 4 * *(v87 + 51), 1, v87[21], 1);
      if (*(v87 + 48))
      {
        v88 = 0;
        do
        {
          v89 = 0;
          do
          {
            v90 = 0;
            v91 = *(v87 + 52) * v88 + *(v87 + 49) * v89;
            v92 = v87[3];
            v93 = (v92 + 4 * v91);
            v94 = (v92 + 4 * (v91 + *(v87 + 51)));
            __D.realp = v93;
            __D.imagp = v94;
            do
            {
              __N = *(v87 + 49);
              v96 = *(v87 + 52);
              v97 = __N * v90 + v96 * v88;
              v98 = *v87;
              v99 = (*v87 + 4 * (v97 + *(v87 + 51)));
              __A.realp = (*v87 + 4 * v97);
              __A.imagp = v99;
              v100 = __N * v90 + v96 * v89;
              v101 = (v98 + 4 * v100);
              v102 = (v87[21] + 4 * v100);
              __C.realp = v101;
              __C.imagp = v102;
              vDSP_zvma(&__C, 1, &__A, 1, &__D, 1, &__D, 1, __N);
              ++v90;
              v103 = *(v87 + 48);
            }

            while (v90 < v103);
            ++v89;
          }

          while (v89 < v103);
          ++v88;
        }

        while (v88 < v103);
      }

      MEMORY[0x1E12BE5D0](*(this + 50), 1, *(this + 53), 1, *(this + 29), 1, *(this + 1));
      MEMORY[0x1E12BE8A0](*(this + 29), 1, this + 20, *(this + 29), 1, *(this + 1));
      LODWORD(__D.realp) = 0x40000000;
      vDSP_svdiv(&__D, *(this + 29), 1, *(this + 14), 1, *(this + 1));
    }

    else
    {
      if (v45)
      {
        InverseWithGramSchmidt::update_InvR(*(this + 65), this + 23, *(this + 2), *(this + 12));
        InverseWithGramSchmidt::update_InvR(*(this + 65), this + 26, 1.0, *(this + 12));
        MEMORY[0x1E12BE5D0](*(this + 50), 1, *(this + 53), 1, *(this + 29), 1, *(this + 1));
        MEMORY[0x1E12BE8A0](*(this + 29), 1, this + 20, *(this + 29), 1, *(this + 1));
        LODWORD(__D.realp) = 0x40000000;
        vDSP_svdiv(&__D, *(this + 29), 1, *(this + 14), 1, *(this + 1));
        v61 = this + 88;
        goto LABEL_71;
      }

      v124 = a5;
      vDSP_vclr(*(this + 32), 1, (2 * *(this + 9)));
      vDSP_vclr(*(this + 35), 1, (2 * *(this + 10)));
      if (*this)
      {
        v46 = 0;
        v47 = 1;
        do
        {
          v48 = 0;
          do
          {
            v49 = *(this + 9);
            v50 = *(this + 1);
            v51 = v49 * v46 + v50 * v48;
            v52 = *(this + 35);
            v53 = v51 + *(this + 10);
            __D.realp = (v52 + 4 * v51);
            __D.imagp = (v52 + 4 * v53);
            v54 = *(this + 44);
            __A.realp = (v54 + 4 * v51);
            __A.imagp = (v54 + 4 * v53);
            v55 = *(this + 47);
            __C.realp = (v55 + 4 * v51);
            __C.imagp = (v55 + 4 * v53);
            v56 = (*(this + 32) + 4 * v49);
            __B.realp = *(this + 32);
            __B.imagp = v56;
            vDSP_zrvmul(&__A, 1, *(this + 50), 1, &__D, 1, v50);
            vDSP_zrvmul(&__C, 1, *(this + 53), 1, &__B, 1, *(this + 1));
            vDSP_zvadd(&__D, 1, &__B, 1, &__D, 1, *(this + 1));
            if (v48 < v46)
            {
              v57 = *(this + 1);
              v58 = *(this + 9) * v48 + v57 * v46;
              v59 = *(this + 35);
              v60 = v59 + 4 * (v58 + *(this + 10));
              memcpy((v59 + 4 * v58), __D.realp, 4 * v57);
              MEMORY[0x1E12BE810](__D.imagp, 1, v60, 1, *(this + 1));
            }

            ++v48;
          }

          while (v47 != v48);
          ++v46;
          ++v47;
        }

        while (v46 < *this);
      }

      v61 = *(this + 63);
      vDSP_vclr(*v61, 1, (2 * *(v61 + 9)));
      LODWORD(v62) = *(v61 + 7);
      if (v62)
      {
        v63 = 0;
        v64 = *(v61 + 75);
        v65 = v64 + 4 * ((*(v61 + 76) - v64) >> 3);
        v66 = *(v61 + 80);
        v67 = v66 + 4 * ((*(v61 + 81) - v66) >> 3);
        LODWORD(v68) = *(v61 + 6);
        do
        {
          if (v68)
          {
            v69 = 0;
            v70 = 0;
            v71 = 0;
            v72 = *(v61 + 8);
            v73 = *(v61 + 9);
            v74 = *(this + 35) + 4 * v63;
            do
            {
              v75 = v69;
              v76 = v70;
              v77 = v68;
              do
              {
                *(v64 + 4 * v76) = *(v74 + 4 * v75);
                *(v65 + 4 * v76++) = *(v74 + 4 * (v73 + v75));
                v75 += v62;
                --v77;
              }

              while (v77);
              ++v71;
              v70 += v68;
              v69 += v72;
            }

            while (v71 != v68);
          }

          MoorePenrose::pseudoInverse((v61 + 40), (v61 + 624), (v61 + 584));
          v68 = *(v61 + 6);
          v62 = *(v61 + 7);
          if (v68)
          {
            v78 = 0;
            v79 = 0;
            v80 = 0;
            v81 = *(v61 + 8);
            v82 = *(v61 + 9);
            v83 = *v61 + 4 * v63;
            do
            {
              v84 = v78;
              v85 = v79;
              v86 = v68;
              do
              {
                *(v83 + 4 * v84) = *(v66 + 4 * v85);
                *(v83 + 4 * (v82 + v84)) = *(v67 + 4 * v85++);
                v84 += v62;
                --v86;
              }

              while (v86);
              ++v80;
              v79 += v68;
              v78 += v81;
            }

            while (v80 != v68);
          }

          ++v63;
        }

        while (v63 < v62);
      }
    }

    a5 = v124;
LABEL_71:
    memcpy(*(this + 11), *v61, 4 * (2 * *(this + 10)));
    GuidedMWF::ApplyFilterFastVersion(this, this + 17);
    a4 = v125;
    goto LABEL_72;
  }

  GuidedMWF::ApplyFilterFastVersion(this, this + 17);
LABEL_72:
  MEMORY[0x1E12BE940](*(this + 17), 1, this + 60, *(this + 17), 1, (2 * *(this + 9)));
  if (a6)
  {
    GuidedMWF::ApplyFilterFastVersion(this, this + 20);
    MEMORY[0x1E12BE940](*(this + 20), 1, this + 60, *(this + 20), 1, (2 * *(this + 9)));
  }

  v104 = *this;
  if (v104)
  {
    v105 = 0;
    v106 = 0;
    v107 = *(this + 1);
    v108 = (v107 - 1);
    while (!v107)
    {
LABEL_93:
      ++v106;
      v105 += v107;
      if (v106 == v104)
      {
        goto LABEL_94;
      }
    }

    v109 = 0;
    mData = a2->mBuffers[v106].mData;
    v111 = a3->mBuffers[v106].mData;
    v112 = a4->mBuffers[v106].mData;
    v113 = a5->mBuffers[v106].mData;
    while (1)
    {
      v114 = v105 + v109;
      if (!v109 || v108 == v109)
      {
        v121 = *(*(this + 17) + 4 * v114);
        v122 = mData[v109];
        if ((v121 * v121) <= (v122 * v122))
        {
          v112[v109] = (v122 * *(this + 3)) + ((1.0 - *(this + 3)) * v121);
          if (a6)
          {
            v120 = (*(this + 3) * v111[v109]) + ((1.0 - *(this + 3)) * *(*(this + 20) + 4 * v114));
LABEL_88:
            v115 = v109;
LABEL_91:
            v113[v115] = v120;
          }
        }

        else
        {
          v112[v109] = v122;
          if (a6)
          {
            v120 = v111[v109];
            goto LABEL_88;
          }
        }
      }

      else
      {
        v115 = (v108 + v109);
        v116 = *(this + 17);
        v117 = *(v116 + 4 * v114);
        v118 = (v105 + v109 + *(this + 9));
        v119 = mData[v109];
        if (((*(v116 + 4 * v118) * *(v116 + 4 * v118)) + (v117 * v117)) <= ((mData[v115] * mData[v115]) + (v119 * v119)))
        {
          v112[v109] = (v119 * *(this + 3)) + ((1.0 - *(this + 3)) * v117);
          v112[v115] = (*(this + 3) * mData[v115]) + ((1.0 - *(this + 3)) * *(v116 + 4 * v118));
          if (a6)
          {
            v123 = *(this + 20);
            v113[v109] = (*(this + 3) * v111[v109]) + ((1.0 - *(this + 3)) * *(v123 + 4 * v114));
            v120 = (*(this + 3) * v111[v115]) + ((1.0 - *(this + 3)) * *(v123 + 4 * v118));
            goto LABEL_91;
          }
        }

        else
        {
          v112[v109] = v119;
          v112[v115] = mData[v115];
          if (a6)
          {
            v113[v109] = v111[v109];
            v120 = v111[v115];
            goto LABEL_91;
          }
        }
      }

      if (v107 == ++v109)
      {
        goto LABEL_93;
      }
    }
  }

LABEL_94:
  GuidedMWF::ApplyMaskOnBufferList(this, this + 41, a4);
  if (a6)
  {

    GuidedMWF::ApplyMaskOnBufferList(this, this + 41, a5);
  }
}

void PListReader::GetSerializedFloat32DataFromDict(void *a1, CFDictionaryRef theDict, void *key)
{
  v6 = 0;
  __p = 0;
  v4 = 0;
  v5 = 0;
  PListReader::GetSerializedFloat32DataFromDict(a1, &v6, &__p, theDict, key);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_1DDFEA5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PListReader::GetSerializedFloat32DataFromDict(void *a1, _DWORD *a2, unint64_t a3, CFDictionaryRef theDict, void *key)
{
  Value = CFDictionaryGetValue(theDict, key);
  BytePtr = CFDataGetBytePtr(Value);
  v10 = BytePtr + 1;
  v11 = bswap32(*BytePtr);
  *a2 = v11;
  std::vector<unsigned int>::resize(a3, v11);
  if (!*a2)
  {
    a3 = 1;
    std::vector<float>::resize(a1, 1uLL);
LABEL_7:
    v16 = *a1;
    do
    {
      v17 = *v10++;
      *v16++ = bswap32(v17);
      --a3;
    }

    while (a3);
    return;
  }

  v12 = 0;
  v13 = *a3;
  LODWORD(a3) = 1;
  do
  {
    v14 = *v10++;
    v15 = bswap32(v14);
    *(v13 + 4 * v12) = v15;
    a3 = v15 * a3;
    ++v12;
  }

  while (v12 < *a2);
  std::vector<float>::resize(a1, a3);
  if (a3)
  {
    goto LABEL_7;
  }
}

void NeuralNetLoader<FullyConnectedLayerBNNS<signed char>>::loadLayers(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  v444 = *MEMORY[0x1E69E9840];
  if (a3[1] != *a3)
  {
    for (i = 0; i < 0x1B810ECF56BE69C9 * ((a3[1] - *a3) >> 3); ++i)
    {
      std::to_string(v439, i);
      v6 = std::string::insert(v439, 0, "Layer", 5uLL);
      v7 = *&v6->__r_.__value_.__l.__data_;
      v437 = v6->__r_.__value_.__r.__words[2];
      v436 = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (v443.__r_.__value_.__s.__data_[3] < 0)
      {
        operator delete(*v439);
      }

      if (v437 >= 0)
      {
        v8 = &v436;
      }

      else
      {
        v8 = v436;
      }

      if (v8)
      {
        if (v437 >= 0)
        {
          v9 = HIBYTE(v437);
        }

        else
        {
          v9 = *(&v436 + 1);
        }

        v8 = CFStringCreateWithBytes(0, v8, v9, 0x8000100u, 0);
        v435 = v8;
        if (!v8)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      else
      {
        v435 = 0;
      }

      Value = CFDictionaryGetValue(a2, v8);
      v11 = Value;
      if (!Value)
      {
        v258 = 0;
        v434 = 0;
        v259 = *(a1 + 16);
        if (v259)
        {
          v258 = *v259;
        }

        if (os_log_type_enabled(v258, OS_LOG_TYPE_ERROR))
        {
          v260 = &v436;
          if (v437 < 0)
          {
            v260 = v436;
          }

          *v439 = 136315906;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 60;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          WORD2(v443.__r_.__value_.__r.__words[0]) = 2080;
          *(v443.__r_.__value_.__r.__words + 6) = v260;
          _os_log_impl(&dword_1DDB85000, v258, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [topLevelDict_ref.get_cf() == nullptr is false]: Missing dictionary: %s", v439, 0x22u);
        }

        v261 = __cxa_allocate_exception(0x10uLL);
        *v261 = &unk_1F593B0D8;
        v261[2] = -66741;
      }

      CFRetain(Value);
      v434 = v11;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v433, &v434);
      v12 = *(a1 + 16);
      if (v12)
      {
        v13 = *v12;
        if (!*v12)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        if (v437 >= 0)
        {
          v14 = &v436;
        }

        else
        {
          v14 = v436;
        }

        *v439 = 136315650;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 64;
        v442 = 2080;
        v443.__r_.__value_.__r.__words[0] = v14;
        _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Found the dictionary: %s\n", v439, 0x1Cu);
      }

LABEL_25:
      v15 = CFDictionaryGetValue(v433, @"InputVectorDescriptor");
      v16 = v15;
      if (!v15)
      {
        v255 = 0;
        v432 = 0;
        v256 = *(a1 + 16);
        if (v256)
        {
          v255 = *v256;
        }

        if (os_log_type_enabled(v255, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 75;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v255, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [inputDescDict_ref.get_cf() == nullptr is false]: Missing dictionary InputVectorDescriptor.", v439, 0x18u);
        }

        v257 = __cxa_allocate_exception(0x10uLL);
        *v257 = &unk_1F593B0D8;
        v257[2] = -66741;
      }

      CFRetain(v15);
      v432 = v16;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v431, &v432);
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = *v17;
        if (!*v17)
        {
          v430 = 0;
          goto LABEL_38;
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *v439 = 136315394;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 79;
        _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary InputVectorDescriptor.", v439, 0x12u);
        v17 = *(a1 + 16);
      }

      v430 = 0;
      if (v17)
      {
        v19 = *v17;
        if (!*v17)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v19 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *v439 = 136315394;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 83;
        _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from inputDescDict.", v439, 0x12u);
      }

LABEL_38:
      if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(*a1, v431, @"Size", &v430))
      {
        v211 = *(a1 + 16);
        if (v211)
        {
          v212 = *v211;
        }

        else
        {
          v212 = 0;
        }

        if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 86;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v212, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar Size from dictionary InputVectorDescriptor.", v439, 0x18u);
        }

        v239 = __cxa_allocate_exception(0x10uLL);
        *v239 = &unk_1F593B0D8;
        v239[2] = -66741;
      }

      v21 = *a3 + 968 * i;
      *(v21 + 4) = 0x10000;
      v22 = v430;
      *(v21 + 8) = v430;
      *(v21 + 72) = 1;
      *v439 = 0;
      std::vector<float>::resize((v21 + 792), v22, v439, v20);
      v23 = *a3 + 968 * i;
      v24 = (v23 + 912);
      v439[0] = 0;
      v25 = *(v23 + 920);
      v26 = *(v23 + 912);
      v27 = v25 - v26;
      if (v430 <= v27)
      {
        if (v430 < v27)
        {
          v24->__end_ = (v26 + v430);
        }
      }

      else
      {
        std::vector<char>::__append(v24, v430 - v27, v439);
      }

      v28 = CFDictionaryGetValue(v431, @"DataType");
      v29 = v28;
      if (!v28)
      {
        v262 = 0;
        v429 = 0;
        v263 = *(a1 + 16);
        if (v263)
        {
          v262 = *v263;
        }

        if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 98;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v262, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [inputDataType_ref.get_cf() == nullptr is false]: Missing dictionary DataType.", v439, 0x18u);
        }

        v264 = __cxa_allocate_exception(0x10uLL);
        *v264 = &unk_1F593B0D8;
        v264[2] = -66741;
      }

      CFRetain(v28);
      v429 = v29;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v428, &v429);
      v30 = *(a1 + 16);
      if (v30)
      {
        v31 = *v30;
        if (!*v30)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v31 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = CFCopyDescription(v428);
        v438 = v32;
        applesauce::CF::details::CFString_get_value<true>(__p, v32);
        if (v32)
        {
          CFRelease(v32);
        }

        v33 = __p;
        if (v427 < 0)
        {
          v33 = __p[0];
        }

        *v439 = 136315906;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 102;
        v442 = 2080;
        v443.__r_.__value_.__r.__words[0] = v33;
        LOWORD(v443.__r_.__value_.__r.__words[1]) = 2048;
        *(&v443.__r_.__value_.__r.__words[1] + 2) = i;
        _os_log_impl(&dword_1DDB85000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved input data type (%s) for Layer %zu.", v439, 0x26u);
        if (v427 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_55:
      v34 = *(a1 + 8);
      if (v34 != 8)
      {
        goto LABEL_67;
      }

      v35 = v428;
      if (v428)
      {
        CFRetain(v428);
      }

      v425 = v35;
      std::string::basic_string[abi:ne200100]<0>(v423, "int8");
      std::string::basic_string[abi:ne200100]<0>(v421, "Sint8");
      v36 = matchiEither(&v425, v423, v421);
      if (v422 < 0)
      {
        operator delete(v421[0]);
      }

      if ((v424 & 0x80000000) == 0)
      {
        if (!v35)
        {
          goto LABEL_65;
        }

LABEL_64:
        CFRelease(v35);
        goto LABEL_65;
      }

      operator delete(v423[0]);
      if (v35)
      {
        goto LABEL_64;
      }

LABEL_65:
      v37 = 131080;
      if (v36)
      {
        goto LABEL_102;
      }

      v34 = *(a1 + 8);
LABEL_67:
      if (v34 != 16)
      {
        goto LABEL_80;
      }

      v38 = v428;
      if (v428)
      {
        CFRetain(v428);
      }

      v420 = v38;
      std::string::basic_string[abi:ne200100]<0>(v418, "int16");
      std::string::basic_string[abi:ne200100]<0>(v416, "SInt16");
      v39 = matchiEither(&v420, v418, v416);
      if (v417 < 0)
      {
        operator delete(v416[0]);
      }

      if ((v419 & 0x80000000) == 0)
      {
        if (!v38)
        {
          goto LABEL_77;
        }

LABEL_76:
        CFRelease(v38);
        goto LABEL_77;
      }

      operator delete(v418[0]);
      if (v38)
      {
        goto LABEL_76;
      }

LABEL_77:
      if (v39)
      {
        v37 = 131088;
        goto LABEL_102;
      }

      v34 = *(a1 + 8);
LABEL_80:
      if (v34 != 32)
      {
        goto LABEL_93;
      }

      v40 = v428;
      if (v428)
      {
        CFRetain(v428);
      }

      v415 = v40;
      std::string::basic_string[abi:ne200100]<0>(v413, "int32");
      std::string::basic_string[abi:ne200100]<0>(v411, "Sint32");
      v41 = matchiEither(&v415, v413, v411);
      if (v412 < 0)
      {
        operator delete(v411[0]);
      }

      if ((v414 & 0x80000000) == 0)
      {
        if (!v40)
        {
          goto LABEL_90;
        }

LABEL_89:
        CFRelease(v40);
        goto LABEL_90;
      }

      operator delete(v413[0]);
      if (v40)
      {
        goto LABEL_89;
      }

LABEL_90:
      if (v41)
      {
        v37 = 131104;
        goto LABEL_102;
      }

      v34 = *(a1 + 8);
LABEL_93:
      if (v34)
      {
        goto LABEL_697;
      }

      v42 = v428;
      if (v428)
      {
        CFRetain(v428);
      }

      v410 = v42;
      std::string::basic_string[abi:ne200100]<0>(v408, "float32");
      v43 = matchiString(&v410, v408);
      if (v409 < 0)
      {
        operator delete(v408[0]);
        if (!v42)
        {
          goto LABEL_101;
        }

LABEL_100:
        CFRelease(v42);
        goto LABEL_101;
      }

      if (v42)
      {
        goto LABEL_100;
      }

LABEL_101:
      v37 = 65568;
      if (!v43)
      {
LABEL_697:
        v296 = *(a1 + 16);
        if (v296)
        {
          v297 = *v296;
        }

        else
        {
          v297 = 0;
        }

        if (os_log_type_enabled(v297, OS_LOG_TYPE_ERROR))
        {
          v309 = *(a1 + 8);
          *v439 = 136315906;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 124;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66743;
          WORD2(v443.__r_.__value_.__r.__words[0]) = 1024;
          *(v443.__r_.__value_.__r.__words + 6) = v309;
          _os_log_impl(&dword_1DDB85000, v297, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported input data quantization type for Quantization (%u).", v439, 0x1Eu);
        }

        v310 = __cxa_allocate_exception(0x10uLL);
        *v310 = &unk_1F593B0D8;
        v310[2] = -66743;
      }

LABEL_102:
      *(*a3 + 968 * i + 144) = v37;
      v407 = 1065353216;
      v44 = *(a1 + 16);
      if (v44)
      {
        v45 = *v44;
        if (!*v44)
        {
          goto LABEL_108;
        }
      }

      else
      {
        v45 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        *v439 = 136315394;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 129;
        _os_log_impl(&dword_1DDB85000, v45, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from inputDescDict.", v439, 0x12u);
      }

LABEL_108:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v431, @"DataScale", kCFNumberFloat32Type, &v407))
      {
        v213 = *(a1 + 16);
        if (v213)
        {
          v214 = *v213;
        }

        else
        {
          v214 = 0;
        }

        if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 132;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v214, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataScale from dictionary InputVectorDescriptor.", v439, 0x18u);
        }

        v240 = __cxa_allocate_exception(0x10uLL);
        *v240 = &unk_1F593B0D8;
        v240[2] = -66741;
      }

      *(*a3 + 968 * i + 164) = v407;
      v406 = 0;
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v431, @"DataBias", kCFNumberFloat32Type, &v406))
      {
        v215 = *(a1 + 16);
        if (v215)
        {
          v216 = *v215;
        }

        else
        {
          v216 = 0;
        }

        if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 140;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v216, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataBias from dictionary InputVectorDescriptor.", v439, 0x18u);
        }

        v241 = __cxa_allocate_exception(0x10uLL);
        *v241 = &unk_1F593B0D8;
        v241[2] = -66741;
      }

      *(*a3 + 968 * i + 168) = v406;
      v46 = CFDictionaryGetValue(v433, @"OutputVectorDescriptor");
      v47 = v46;
      if (!v46)
      {
        v265 = 0;
        v405 = 0;
        v266 = *(a1 + 16);
        if (v266)
        {
          v265 = *v266;
        }

        if (os_log_type_enabled(v265, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 153;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v265, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [outputDescDict_ref.get_cf() == nullptr is false]: Missing dictionary OutputVectorDescriptor.", v439, 0x18u);
        }

        v267 = __cxa_allocate_exception(0x10uLL);
        *v267 = &unk_1F593B0D8;
        v267[2] = -66741;
      }

      CFRetain(v46);
      v405 = v47;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v404, &v405);
      v48 = *(a1 + 16);
      if (v48)
      {
        v49 = *v48;
        if (!*v48)
        {
          v403 = 0;
          goto LABEL_123;
        }
      }

      else
      {
        v49 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        *v439 = 136315394;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 157;
        _os_log_impl(&dword_1DDB85000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary OutputVectorDescriptor.", v439, 0x12u);
        v48 = *(a1 + 16);
      }

      v403 = 0;
      if (v48)
      {
        v50 = *v48;
        if (!*v48)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v50 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        *v439 = 136315394;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 161;
        _os_log_impl(&dword_1DDB85000, v50, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from outputDescDict.", v439, 0x12u);
      }

LABEL_123:
      if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(*a1, v404, @"Size", &v403))
      {
        v217 = *(a1 + 16);
        if (v217)
        {
          v218 = *v217;
        }

        else
        {
          v218 = 0;
        }

        if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 164;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v218, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar Size from dictionary OutputVectorDescriptor.", v439, 0x18u);
        }

        v242 = __cxa_allocate_exception(0x10uLL);
        *v242 = &unk_1F593B0D8;
        v242[2] = -66741;
      }

      v52 = *a3 + 968 * i;
      *(v52 + 356) = 0x10000;
      v53 = v403;
      *(v52 + 360) = v403;
      *(v52 + 424) = 1;
      *v439 = 0;
      std::vector<float>::resize((v52 + 816), v53, v439, v51);
      v54 = CFDictionaryGetValue(v404, @"DataType");
      v55 = v54;
      if (!v54)
      {
        v268 = 0;
        v402 = 0;
        v269 = *(a1 + 16);
        if (v269)
        {
          v268 = *v269;
        }

        if (os_log_type_enabled(v268, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 176;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v268, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [outputDataType_ref.get_cf() == nullptr is false]: Failed to retrieve output data type (DataType) from dictionary OutputVectorDescriptor.", v439, 0x18u);
        }

        v270 = __cxa_allocate_exception(0x10uLL);
        *v270 = &unk_1F593B0D8;
        v270[2] = -66741;
      }

      CFRetain(v54);
      v402 = v55;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&cf, &v402);
      v56 = *(a1 + 16);
      if (v56)
      {
        v57 = *v56;
        if (!*v56)
        {
          goto LABEL_136;
        }
      }

      else
      {
        v57 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        v58 = CFCopyDescription(cf);
        v438 = v58;
        applesauce::CF::details::CFString_get_value<true>(__p, v58);
        if (v58)
        {
          CFRelease(v58);
        }

        v59 = __p;
        if (v427 < 0)
        {
          v59 = __p[0];
        }

        *v439 = 136315906;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 179;
        v442 = 2080;
        v443.__r_.__value_.__r.__words[0] = v59;
        LOWORD(v443.__r_.__value_.__r.__words[1]) = 1024;
        *(&v443.__r_.__value_.__r.__words[1] + 2) = i;
        _os_log_impl(&dword_1DDB85000, v57, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved output data type (%s) for Layer %u.", v439, 0x22u);
        if (v427 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_136:
      v60 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v400 = v60;
      std::string::basic_string[abi:ne200100]<0>(v398, "float32");
      v61 = matchiString(&v400, v398);
      if (v399 < 0)
      {
        operator delete(v398[0]);
      }

      if (v400)
      {
        CFRelease(v400);
      }

      if (!v61)
      {
        v271 = *(a1 + 16);
        if (v271)
        {
          v272 = *v271;
        }

        else
        {
          v272 = 0;
        }

        if (os_log_type_enabled(v272, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 189;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66743;
          _os_log_impl(&dword_1DDB85000, v272, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported output data type.", v439, 0x18u);
        }

        v304 = __cxa_allocate_exception(0x10uLL);
        *v304 = &unk_1F593B0D8;
        v304[2] = -66743;
      }

      *(*a3 + 968 * i + 496) = 65568;
      v397 = 1065353216;
      v62 = *(a1 + 16);
      if (v62)
      {
        v63 = *v62;
        if (!*v62)
        {
          goto LABEL_149;
        }
      }

      else
      {
        v63 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        *v439 = 136315394;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 194;
        _os_log_impl(&dword_1DDB85000, v63, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from outputDescDict.", v439, 0x12u);
      }

LABEL_149:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v404, @"DataScale", kCFNumberFloat32Type, &v397))
      {
        v219 = *(a1 + 16);
        if (v219)
        {
          v220 = *v219;
        }

        else
        {
          v220 = 0;
        }

        if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 197;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v220, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataScale from dictionary OutputVectorDescriptor.", v439, 0x18u);
        }

        v243 = __cxa_allocate_exception(0x10uLL);
        *v243 = &unk_1F593B0D8;
        v243[2] = -66741;
      }

      *(*a3 + 968 * i + 516) = v397;
      v396 = 0;
      v64 = *(a1 + 16);
      if (v64)
      {
        v65 = *v64;
        if (!*v64)
        {
          goto LABEL_156;
        }
      }

      else
      {
        v65 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        *v439 = 136315394;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 203;
        _os_log_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from outputDescDict.", v439, 0x12u);
      }

LABEL_156:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v404, @"DataBias", kCFNumberFloat32Type, &v396))
      {
        v221 = *(a1 + 16);
        if (v221)
        {
          v222 = *v221;
        }

        else
        {
          v222 = 0;
        }

        if (os_log_type_enabled(v222, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 206;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v222, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataBias from dictionary OutputVectorDescriptor.", v439, 0x18u);
        }

        v244 = __cxa_allocate_exception(0x10uLL);
        *v244 = &unk_1F593B0D8;
        v244[2] = -66741;
      }

      *(*a3 + 968 * i + 520) = v396;
      v66 = CFDictionaryGetValue(v433, @"LayerDescriptor");
      v67 = v66;
      if (!v66)
      {
        v395 = 0;
        v70 = *(a1 + 16);
        if (v70)
        {
          v71 = *v70;
          if (!*v70)
          {
LABEL_206:
            *(*a3 + 968 * i + 964) = 0;
            goto LABEL_207;
          }
        }

        else
        {
          v71 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 221;
          v442 = 2048;
          v443.__r_.__value_.__r.__words[0] = i;
          _os_log_impl(&dword_1DDB85000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d LayerDescriptor for layer %zu not found, using default fully connected layer.", v439, 0x1Cu);
        }

        goto LABEL_206;
      }

      CFRetain(v66);
      v395 = v67;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v394, &v395);
      v68 = *(a1 + 16);
      if (v68)
      {
        v69 = *v68;
        if (!*v68)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v69 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        *v439 = 136315394;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 228;
        _os_log_impl(&dword_1DDB85000, v69, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary LayerDescriptor.", v439, 0x12u);
      }

LABEL_167:
      v72 = CFDictionaryGetValue(v394, @"Type");
      v73 = v72;
      if (!v72)
      {
        v301 = 0;
        v393 = 0;
        v302 = *(a1 + 16);
        if (v302)
        {
          v301 = *v302;
        }

        if (os_log_type_enabled(v301, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 233;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v301, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [layerType_ref.get_cf() == nullptr is false]: Failed to retrieve layer type (Type) from dictionary LayerDescriptor.", v439, 0x18u);
        }

        v303 = __cxa_allocate_exception(0x10uLL);
        *v303 = &unk_1F593B0D8;
        v303[2] = -66741;
      }

      CFRetain(v72);
      v393 = v73;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v392, &v393);
      v74 = *(a1 + 16);
      if (!v74)
      {
        v75 = MEMORY[0x1E69E9C10];
LABEL_172:
        if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
        {
          v76 = CFCopyDescription(v392);
          v438 = v76;
          applesauce::CF::details::CFString_get_value<true>(__p, v76);
          if (v76)
          {
            CFRelease(v76);
          }

          v77 = __p;
          if (v427 < 0)
          {
            v77 = __p[0];
          }

          *v439 = 136315906;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 237;
          v442 = 2080;
          v443.__r_.__value_.__r.__words[0] = v77;
          LOWORD(v443.__r_.__value_.__r.__words[1]) = 2048;
          *(&v443.__r_.__value_.__r.__words[1] + 2) = i;
          _os_log_impl(&dword_1DDB85000, v75, OS_LOG_TYPE_INFO, "%25s:%-5d Successfully retrieved Type (%s) for LayerDescriptor %zu.", v439, 0x26u);
          if (v427 < 0)
          {
            operator delete(__p[0]);
          }
        }

        goto LABEL_179;
      }

      v75 = *v74;
      if (*v74)
      {
        goto LABEL_172;
      }

LABEL_179:
      v78 = v392;
      if (v392)
      {
        CFRetain(v392);
      }

      v391 = v78;
      std::string::basic_string[abi:ne200100]<0>(v389, "FullyConnected");
      std::string::basic_string[abi:ne200100]<0>(v387, "Dense");
      v79 = matchiEither(&v391, v389, v387);
      if (v388 < 0)
      {
        operator delete(v387[0]);
      }

      if (v390 < 0)
      {
        operator delete(v389[0]);
      }

      if (v391)
      {
        CFRelease(v391);
      }

      if (v79)
      {
        v80 = 0;
      }

      else
      {
        v81 = v392;
        if (v392)
        {
          CFRetain(v392);
        }

        v386 = v81;
        std::string::basic_string[abi:ne200100]<0>(v384, "LSTM");
        v82 = matchiString(&v386, v384);
        if (v385 < 0)
        {
          operator delete(v384[0]);
        }

        if (v386)
        {
          CFRelease(v386);
        }

        if (!v82)
        {
          v313 = *(a1 + 16);
          if (v313)
          {
            v314 = *v313;
          }

          else
          {
            v314 = 0;
          }

          if (os_log_type_enabled(v314, OS_LOG_TYPE_ERROR))
          {
            *v439 = 136315650;
            *&v439[4] = "NeuralNetLoader.cpp";
            v440 = 1024;
            v441 = 250;
            v442 = 1024;
            LODWORD(v443.__r_.__value_.__l.__data_) = -66743;
            _os_log_impl(&dword_1DDB85000, v314, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported LayerType.", v439, 0x18u);
          }

          v315 = __cxa_allocate_exception(0x10uLL);
          *v315 = &unk_1F593B0D8;
          v315[2] = -66743;
        }

        v80 = 1;
      }

      *(*a3 + 968 * i + 964) = v80;
      if (v392)
      {
        CFRelease(v392);
      }

      if (v393)
      {
        CFRelease(v393);
      }

      if (v394)
      {
        CFRelease(v394);
      }

LABEL_207:
      v83 = CFDictionaryGetValue(v433, @"Weights");
      v84 = v83;
      if (!v83)
      {
        v273 = 0;
        v394 = 0;
        v274 = *(a1 + 16);
        if (v274)
        {
          v273 = *v274;
        }

        if (os_log_type_enabled(v273, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 262;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v273, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [weightsDict_ref.get_cf() == nullptr is false]: Missing dictionary Weights.", v439, 0x18u);
        }

        v275 = __cxa_allocate_exception(0x10uLL);
        *v275 = &unk_1F593B0D8;
        v275[2] = -66741;
      }

      CFRetain(v83);
      v394 = v84;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v393, &v394);
      v85 = *(a1 + 16);
      if (v85)
      {
        v86 = *v85;
        if (!*v85)
        {
          goto LABEL_214;
        }
      }

      else
      {
        v86 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
      {
        *v439 = 136315394;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 266;
        _os_log_impl(&dword_1DDB85000, v86, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary Weights.", v439, 0x12u);
      }

LABEL_214:
      v87 = *a1;
      v88 = *a3;
      v89 = CFDictionaryGetValue(v393, @"Data");
      v90 = v89;
      if (!v89)
      {
        v278 = *v87;
        if (*v87)
        {
          v277 = *v278;
          if (!*v278)
          {
            goto LABEL_717;
          }
        }

        else
        {
          v277 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v277, OS_LOG_TYPE_DEFAULT))
        {
          *v439 = 136315650;
          *&v439[4] = "DictionaryBlobReader.hpp";
          v440 = 1024;
          v441 = 101;
          v442 = 2112;
          v443.__r_.__value_.__r.__words[0] = @"Data";
LABEL_716:
          _os_log_impl(&dword_1DDB85000, v277, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to retrieve '%@'", v439, 0x1Cu);
        }

LABEL_717:
        v305 = *(a1 + 16);
        if (v305)
        {
          v306 = *v305;
        }

        else
        {
          v306 = 0;
        }

        if (os_log_type_enabled(v306, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 271;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v306, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing vector Data from dictionary Weights.", v439, 0x18u);
        }

        v307 = __cxa_allocate_exception(0x10uLL);
        *v307 = &unk_1F593B0D8;
        v307[2] = -66741;
      }

      v91 = CFGetTypeID(v89);
      if (v91 != CFDataGetTypeID())
      {
        v276 = *v87;
        if (!*v87)
        {
          v277 = MEMORY[0x1E69E9C10];
          goto LABEL_711;
        }

        v277 = *v276;
        if (*v276)
        {
LABEL_711:
          if (os_log_type_enabled(v277, OS_LOG_TYPE_DEFAULT))
          {
            *v439 = 136315650;
            *&v439[4] = "DictionaryBlobReader.hpp";
            v440 = 1024;
            v441 = 107;
            v442 = 2112;
            v443.__r_.__value_.__r.__words[0] = @"Data";
            goto LABEL_716;
          }
        }

        goto LABEL_717;
      }

      v92 = (v88 + 968 * i + 936);
      Length = CFDataGetLength(v90);
      v94 = v92[2];
      v95 = *v92;
      if (v94 - *v92 < Length)
      {
        if (v95)
        {
          v92[1] = v95;
          operator delete(v95);
          v94 = 0;
          *v92 = 0;
          v92[1] = 0;
          v92[2] = 0;
        }

        v96 = 2 * v94;
        if (2 * v94 <= Length)
        {
          v96 = Length;
        }

        if (v94 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v97 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v97 = v96;
        }

        std::vector<char>::__vallocate[abi:ne200100](v92, v97);
      }

      v98 = v92[1];
      v99 = v98 - v95;
      if (v98 - v95 >= Length)
      {
        v100 = Length;
      }

      else
      {
        v100 = v98 - v95;
      }

      if (v100)
      {
        bzero(v95, v100);
      }

      v101 = Length >= v99;
      v102 = Length - v99;
      if (v102 != 0 && v101)
      {
        v103 = v92[1];
        bzero(v103, v102);
        v104 = &v103[v102];
      }

      else
      {
        v104 = *v92 + Length;
      }

      v92[1] = v104;
      BytePtr = CFDataGetBytePtr(v90);
      if (Length)
      {
        for (j = 0; j != Length; ++j)
        {
          *(*v92 + j) = BytePtr[j];
        }
      }

      v107 = *a3 + 968 * i;
      v108 = *(v107 + 964);
      v109 = v108 == 1;
      if (v108 == 1)
      {
        v110 = *(v107 + 360);
      }

      else
      {
        v110 = 0;
      }

      v111 = *(v107 + 8) + v110;
      if (v109)
      {
        v112 = 4 * *(v107 + 360);
      }

      else
      {
        v112 = *(v107 + 360);
      }

      v113 = v112 * v111;
      v114 = *(v107 + 944);
      v115 = *(v107 + 936);
      v116 = v114 - v115;
      if (v114 - v115 != v112 * v111)
      {
        v223 = *(a1 + 16);
        if (v223)
        {
          v224 = *v223;
        }

        else
        {
          v224 = 0;
        }

        if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136316162;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 280;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66743;
          WORD2(v443.__r_.__value_.__r.__words[0]) = 2048;
          *(v443.__r_.__value_.__r.__words + 6) = v116;
          HIWORD(v443.__r_.__value_.__r.__words[1]) = 2048;
          v443.__r_.__value_.__r.__words[2] = v113;
          _os_log_impl(&dword_1DDB85000, v224, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [nnLayers[i].mWeightsQuantized.size() != weightsNumberOfCoefficients is false]: Number of weights in Data (%lu) does not match the required number of weights (%lu).", v439, 0x2Cu);
        }

        v245 = __cxa_allocate_exception(0x10uLL);
        *v245 = &unk_1F593B0D8;
        v245[2] = -66743;
      }

      *(v107 + 180) = 0x20000;
      *(v107 + 184) = v111;
      *(v107 + 192) = v112;
      *(v107 + 248) = 1;
      *(v107 + 256) = v111;
      *(v107 + 312) = v115;
      if (v114 != v115)
      {
        v117 = 0;
        while (1)
        {
          v118 = *(a1 + 8);
          HIDWORD(v120) = v118;
          LODWORD(v120) = v118;
          v119 = v120 >> 3;
          v121 = *(a1 + 16);
          if (v119 > 1)
          {
            break;
          }

          if (v119)
          {
            if (v119 != 1)
            {
              goto LABEL_626;
            }

            if (!v121)
            {
              goto LABEL_272;
            }

            if ((*(v121 + 8) & 1) == 0)
            {
              goto LABEL_272;
            }

            v122 = *v121;
            if (!*v121 || !os_log_type_enabled(*v121, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_272;
            }

            v123 = *(*(v107 + 312) + v117);
            *v439 = 136315906;
            *&v439[4] = "NeuralNetLoader.cpp";
            v440 = 1024;
            v441 = 296;
            v442 = 1024;
            LODWORD(v443.__r_.__value_.__l.__data_) = v123;
            WORD2(v443.__r_.__value_.__r.__words[0]) = 2048;
            *(v443.__r_.__value_.__r.__words + 6) = v117;
            v124 = v122;
            v125 = "%25s:%-5d Successfully retrieved weights data (%i) at index (%zu).";
LABEL_270:
            v130 = 34;
            goto LABEL_271;
          }

          if (!v121)
          {
            goto LABEL_272;
          }

          if ((*(v121 + 8) & 1) == 0)
          {
            goto LABEL_272;
          }

          v128 = *v121;
          if (!*v121 || !os_log_type_enabled(*v121, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_272;
          }

          v129 = *(*(v107 + 312) + 4 * v117);
          *v439 = 136315906;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 308;
          v442 = 2048;
          *&v443.__r_.__value_.__l.__data_ = v129;
          LOWORD(v443.__r_.__value_.__r.__words[1]) = 2048;
          *(&v443.__r_.__value_.__r.__words[1] + 2) = v117;
          v124 = v128;
          v125 = "%25s:%-5d Successfully retrieved weights data (%g) at index (%zu).";
          v130 = 38;
LABEL_271:
          _os_log_impl(&dword_1DDB85000, v124, OS_LOG_TYPE_DEBUG, v125, v439, v130);
LABEL_272:
          ++v117;
          v107 = *a3 + 968 * i;
          v133 = *(v107 + 944) - *(v107 + 936);
          if (v133 >= 4)
          {
            v133 = 4;
          }

          if (v117 >= v133)
          {
            goto LABEL_275;
          }
        }

        if (v119 == 2)
        {
          if (!v121)
          {
            goto LABEL_272;
          }

          if ((*(v121 + 8) & 1) == 0)
          {
            goto LABEL_272;
          }

          v131 = *v121;
          if (!*v121 || !os_log_type_enabled(*v121, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_272;
          }

          v132 = *(*(v107 + 312) + 2 * v117);
          *v439 = 136315906;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 300;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = v132;
          WORD2(v443.__r_.__value_.__r.__words[0]) = 2048;
          *(v443.__r_.__value_.__r.__words + 6) = v117;
          v124 = v131;
          v125 = "%25s:%-5d Successfully retrieved weights data (%i) at index (%zu).";
        }

        else
        {
          if (v119 != 4)
          {
LABEL_626:
            if (v121)
            {
              v253 = *v121;
            }

            else
            {
              v253 = 0;
            }

            if (os_log_type_enabled(v253, OS_LOG_TYPE_ERROR))
            {
              *v439 = 136315906;
              *&v439[4] = "NeuralNetLoader.cpp";
              v440 = 1024;
              v441 = 312;
              v442 = 1024;
              LODWORD(v443.__r_.__value_.__l.__data_) = -66743;
              WORD2(v443.__r_.__value_.__r.__words[0]) = 1024;
              *(v443.__r_.__value_.__r.__words + 6) = v118;
              _os_log_impl(&dword_1DDB85000, v253, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unknown quantization type (%u).", v439, 0x1Eu);
            }

            v254 = __cxa_allocate_exception(0x10uLL);
            *v254 = &unk_1F593B0D8;
            v254[2] = -66743;
          }

          if (!v121)
          {
            goto LABEL_272;
          }

          if ((*(v121 + 8) & 1) == 0)
          {
            goto LABEL_272;
          }

          v126 = *v121;
          if (!*v121 || !os_log_type_enabled(*v121, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_272;
          }

          v127 = *(*(v107 + 312) + 4 * v117);
          *v439 = 136315906;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 304;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = v127;
          WORD2(v443.__r_.__value_.__r.__words[0]) = 2048;
          *(v443.__r_.__value_.__r.__words + 6) = v117;
          v124 = v126;
          v125 = "%25s:%-5d Successfully retrieved weights data (%i) at index (%zu).";
        }

        goto LABEL_270;
      }

LABEL_275:
      v134 = CFDictionaryGetValue(v393, @"DataType");
      v135 = v134;
      if (!v134)
      {
        v279 = 0;
        v392 = 0;
        v280 = *(a1 + 16);
        if (v280)
        {
          v279 = *v280;
        }

        if (os_log_type_enabled(v279, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 320;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v279, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [weightsDataType_ref.get_cf() == nullptr is false]: Missing DataType from dictionary Weights.", v439, 0x18u);
        }

        v281 = __cxa_allocate_exception(0x10uLL);
        *v281 = &unk_1F593B0D8;
        v281[2] = -66741;
      }

      CFRetain(v134);
      v392 = v135;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v383, &v392);
      v136 = *(a1 + 16);
      if (v136)
      {
        v137 = *v136;
        if (!*v136)
        {
          goto LABEL_287;
        }
      }

      else
      {
        v137 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
      {
        v138 = CFCopyDescription(v383);
        v438 = v138;
        applesauce::CF::details::CFString_get_value<true>(__p, v138);
        if (v138)
        {
          CFRelease(v138);
        }

        v139 = __p;
        if (v427 < 0)
        {
          v139 = __p[0];
        }

        *v439 = 136315906;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 324;
        v442 = 2080;
        v443.__r_.__value_.__r.__words[0] = v139;
        LOWORD(v443.__r_.__value_.__r.__words[1]) = 2048;
        *(&v443.__r_.__value_.__r.__words[1] + 2) = i;
        _os_log_impl(&dword_1DDB85000, v137, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved weights data type (%s) for Layer %zu.", v439, 0x26u);
        if (v427 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_287:
      v140 = *(a1 + 8);
      if (v140 == 8)
      {
        v141 = v383;
        if (v383)
        {
          CFRetain(v383);
        }

        v382 = v141;
        std::string::basic_string[abi:ne200100]<0>(v380, "int8");
        std::string::basic_string[abi:ne200100]<0>(v378, "SInt8");
        v142 = matchiEither(&v382, v380, v378);
        if (v379 < 0)
        {
          operator delete(v378[0]);
        }

        if (v381 < 0)
        {
          operator delete(v380[0]);
        }

        if (v382)
        {
          CFRelease(v382);
        }

        v143 = 131080;
        if (v142)
        {
          goto LABEL_330;
        }

        v140 = *(a1 + 8);
      }

      if (v140 == 16)
      {
        v144 = v383;
        if (v383)
        {
          CFRetain(v383);
        }

        v377 = v144;
        std::string::basic_string[abi:ne200100]<0>(v375, "int16");
        std::string::basic_string[abi:ne200100]<0>(v373, "SInt16");
        v145 = matchiEither(&v377, v375, v373);
        if (v374 < 0)
        {
          operator delete(v373[0]);
        }

        if (v376 < 0)
        {
          operator delete(v375[0]);
        }

        if (v377)
        {
          CFRelease(v377);
        }

        if (v145)
        {
          v143 = 131088;
          goto LABEL_330;
        }

        v140 = *(a1 + 8);
      }

      if (v140 == 32)
      {
        v146 = v383;
        if (v383)
        {
          CFRetain(v383);
        }

        v372 = v146;
        std::string::basic_string[abi:ne200100]<0>(v370, "int32");
        std::string::basic_string[abi:ne200100]<0>(v368, "SInt32");
        v147 = matchiEither(&v372, v370, v368);
        if (v369 < 0)
        {
          operator delete(v368[0]);
        }

        if (v371 < 0)
        {
          operator delete(v370[0]);
        }

        if (v372)
        {
          CFRelease(v372);
        }

        if (v147)
        {
          v143 = 131104;
          goto LABEL_330;
        }

        v140 = *(a1 + 8);
      }

      if (v140)
      {
        goto LABEL_699;
      }

      v148 = v383;
      if (v383)
      {
        CFRetain(v383);
      }

      v367 = v148;
      std::string::basic_string[abi:ne200100]<0>(v365, "float32");
      v149 = matchiString(&v367, v365);
      if (v366 < 0)
      {
        operator delete(v365[0]);
      }

      if (v367)
      {
        CFRelease(v367);
      }

      v143 = 65568;
      if (!v149)
      {
LABEL_699:
        v298 = *(a1 + 16);
        if (v298)
        {
          v299 = *v298;
        }

        else
        {
          v299 = 0;
        }

        if (os_log_type_enabled(v299, OS_LOG_TYPE_ERROR))
        {
          v311 = *(a1 + 8);
          *v439 = 136315906;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 346;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66743;
          WORD2(v443.__r_.__value_.__r.__words[0]) = 1024;
          *(v443.__r_.__value_.__r.__words + 6) = v311;
          _os_log_impl(&dword_1DDB85000, v299, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported weights data quantization type for Quantization (%u).", v439, 0x1Eu);
        }

        v312 = __cxa_allocate_exception(0x10uLL);
        *v312 = &unk_1F593B0D8;
        v312[2] = -66743;
      }

LABEL_330:
      *(*a3 + 968 * i + 320) = v143;
      v364 = 1065353216;
      v150 = *(a1 + 16);
      if (v150)
      {
        v151 = *v150;
        if (!*v150)
        {
          goto LABEL_336;
        }
      }

      else
      {
        v151 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
      {
        *v439 = 136315394;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 351;
        _os_log_impl(&dword_1DDB85000, v151, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from weightsDict.", v439, 0x12u);
      }

LABEL_336:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v393, @"DataScale", kCFNumberFloat32Type, &v364))
      {
        v225 = *(a1 + 16);
        if (v225)
        {
          v226 = *v225;
        }

        else
        {
          v226 = 0;
        }

        if (os_log_type_enabled(v226, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 354;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v226, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataScale from dictionary Weights.", v439, 0x18u);
        }

        v246 = __cxa_allocate_exception(0x10uLL);
        *v246 = &unk_1F593B0D8;
        v246[2] = -66741;
      }

      *(*a3 + 968 * i + 340) = v364;
      v363 = 0;
      v152 = *(a1 + 16);
      if (v152)
      {
        v153 = *v152;
        if (!*v152)
        {
          goto LABEL_343;
        }
      }

      else
      {
        v153 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
      {
        *v439 = 136315394;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 360;
        _os_log_impl(&dword_1DDB85000, v153, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from weightsDict.", v439, 0x12u);
      }

LABEL_343:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v393, @"DataBias", kCFNumberFloat32Type, &v363))
      {
        v227 = *(a1 + 16);
        if (v227)
        {
          v228 = *v227;
        }

        else
        {
          v228 = 0;
        }

        if (os_log_type_enabled(v228, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 363;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v228, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataBias from dictionary Weights.", v439, 0x18u);
        }

        v247 = __cxa_allocate_exception(0x10uLL);
        *v247 = &unk_1F593B0D8;
        v247[2] = -66741;
      }

      *(*a3 + 968 * i + 344) = v363;
      v154 = CFDictionaryGetValue(v433, @"Bias");
      v155 = v154;
      if (!v154)
      {
        v282 = 0;
        v362 = 0;
        v283 = *(a1 + 16);
        if (v283)
        {
          v282 = *v283;
        }

        if (os_log_type_enabled(v282, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 374;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v282, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [biasDict_ref.get_cf() == nullptr is false]: Missing dictionary Bias from dictionary Weights.", v439, 0x18u);
        }

        v284 = __cxa_allocate_exception(0x10uLL);
        *v284 = &unk_1F593B0D8;
        v284[2] = -66741;
      }

      CFRetain(v154);
      v362 = v155;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v361, &v362);
      v156 = *(a1 + 16);
      if (v156)
      {
        v157 = *v156;
        if (!*v156)
        {
          goto LABEL_351;
        }
      }

      else
      {
        v157 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
      {
        *v439 = 136315394;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 378;
        _os_log_impl(&dword_1DDB85000, v157, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary Bias.", v439, 0x12u);
      }

LABEL_351:
      if (DictionaryBlobReader::ReadVectorFromDictionary(*a1, v361, @"Data", (*a3 + 968 * i + 888)))
      {
        v229 = *(a1 + 16);
        if (v229)
        {
          v230 = *v229;
        }

        else
        {
          v230 = 0;
        }

        if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 383;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v230, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing vector Data from dictionary Bias.", v439, 0x18u);
        }

        v248 = __cxa_allocate_exception(0x10uLL);
        *v248 = &unk_1F593B0D8;
        v248[2] = -66741;
      }

      v158 = *a3;
      v159 = *a3 + 968 * i;
      *(v159 + 532) = 0x10000;
      v160 = *(v159 + 896);
      v161 = *(v159 + 888);
      *(v159 + 600) = 1;
      *(v159 + 664) = v161;
      v162 = v160 - v161;
      *(v159 + 536) = v162 >> 2;
      if (v162)
      {
        v163 = 0;
        do
        {
          v164 = *(a1 + 16);
          if (v164)
          {
            if (*(v164 + 8))
            {
              v165 = *v164;
              if (*v164)
              {
                if (os_log_type_enabled(*v164, OS_LOG_TYPE_DEBUG))
                {
                  v166 = *(*(v158 + 968 * i + 664) + 4 * v163);
                  *v439 = 136315906;
                  *&v439[4] = "NeuralNetLoader.cpp";
                  v440 = 1024;
                  v441 = 394;
                  v442 = 2048;
                  *&v443.__r_.__value_.__l.__data_ = v166;
                  LOWORD(v443.__r_.__value_.__r.__words[1]) = 2048;
                  *(&v443.__r_.__value_.__r.__words[1] + 2) = v163;
                  _os_log_impl(&dword_1DDB85000, v165, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved bias data (%g) at index (%zu).", v439, 0x26u);
                  v158 = *a3;
                }
              }
            }
          }

          ++v163;
          v167 = (*(v158 + 968 * i + 896) - *(v158 + 968 * i + 888)) >> 2;
          if (v167 >= 4)
          {
            v167 = 4;
          }
        }

        while (v163 < v167);
      }

      v168 = CFDictionaryGetValue(v361, @"DataType");
      v169 = v168;
      if (!v168)
      {
        v287 = 0;
        v360 = 0;
        v288 = *(a1 + 16);
        if (v288)
        {
          v287 = *v288;
        }

        if (os_log_type_enabled(v287, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 401;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v287, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [biasDataType_ref.get_cf() == nullptr is false]: Missing dictionary DataType from dictionary Weights.", v439, 0x18u);
        }

        v289 = __cxa_allocate_exception(0x10uLL);
        *v289 = &unk_1F593B0D8;
        v289[2] = -66741;
      }

      CFRetain(v168);
      v360 = v169;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v359, &v360);
      v170 = *(a1 + 16);
      if (v170)
      {
        v171 = *v170;
        if (!*v170)
        {
          goto LABEL_374;
        }
      }

      else
      {
        v171 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG))
      {
        v172 = CFCopyDescription(v359);
        v438 = v172;
        applesauce::CF::details::CFString_get_value<true>(__p, v172);
        if (v172)
        {
          CFRelease(v172);
        }

        v173 = __p;
        if (v427 < 0)
        {
          v173 = __p[0];
        }

        *v439 = 136315906;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 405;
        v442 = 2080;
        v443.__r_.__value_.__r.__words[0] = v173;
        LOWORD(v443.__r_.__value_.__r.__words[1]) = 2048;
        *(&v443.__r_.__value_.__r.__words[1] + 2) = i;
        _os_log_impl(&dword_1DDB85000, v171, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved bias data type (%s) for Layer %zu.", v439, 0x26u);
        if (v427 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_374:
      v174 = v359;
      if (v359)
      {
        CFRetain(v359);
      }

      v358 = v174;
      std::string::basic_string[abi:ne200100]<0>(v356, "float32");
      v175 = matchiString(&v358, v356);
      if (v357 < 0)
      {
        operator delete(v356[0]);
      }

      if (v358)
      {
        CFRelease(v358);
      }

      if (!v175)
      {
        v285 = *(a1 + 16);
        if (v285)
        {
          v286 = *v285;
        }

        else
        {
          v286 = 0;
        }

        if (os_log_type_enabled(v286, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 414;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66743;
          _os_log_impl(&dword_1DDB85000, v286, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported bias data type.", v439, 0x18u);
        }

        v308 = __cxa_allocate_exception(0x10uLL);
        *v308 = &unk_1F593B0D8;
        v308[2] = -66743;
      }

      *(*a3 + 968 * i + 672) = 65568;
      v355 = 1065353216;
      v176 = *(a1 + 16);
      if (v176)
      {
        v177 = *v176;
        if (!*v176)
        {
          goto LABEL_387;
        }
      }

      else
      {
        v177 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
      {
        *v439 = 136315394;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 419;
        _os_log_impl(&dword_1DDB85000, v177, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from biasDict.", v439, 0x12u);
      }

LABEL_387:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v361, @"DataScale", kCFNumberFloat32Type, &v355))
      {
        v231 = *(a1 + 16);
        if (v231)
        {
          v232 = *v231;
        }

        else
        {
          v232 = 0;
        }

        if (os_log_type_enabled(v232, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 422;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v232, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataScale from dictionary Bias.", v439, 0x18u);
        }

        v249 = __cxa_allocate_exception(0x10uLL);
        *v249 = &unk_1F593B0D8;
        v249[2] = -66741;
      }

      *(*a3 + 968 * i + 692) = v355;
      v354 = 0;
      v178 = *(a1 + 16);
      if (v178)
      {
        v179 = *v178;
        if (!*v178)
        {
          goto LABEL_394;
        }
      }

      else
      {
        v179 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
      {
        *v439 = 136315394;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 428;
        _os_log_impl(&dword_1DDB85000, v179, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from biasDict.", v439, 0x12u);
      }

LABEL_394:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v361, @"DataBias", kCFNumberFloat32Type, &v354))
      {
        v233 = *(a1 + 16);
        if (v233)
        {
          v234 = *v233;
        }

        else
        {
          v234 = 0;
        }

        if (os_log_type_enabled(v234, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 431;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v234, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataBias from dictionary Bias.", v439, 0x18u);
        }

        v250 = __cxa_allocate_exception(0x10uLL);
        *v250 = &unk_1F593B0D8;
        v250[2] = -66741;
      }

      *(*a3 + 968 * i + 696) = v354;
      v180 = CFDictionaryGetValue(v433, @"Activation");
      v181 = v180;
      if (!v180)
      {
        v293 = 0;
        v353 = 0;
        v294 = *(a1 + 16);
        if (v294)
        {
          v293 = *v294;
        }

        if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 443;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v293, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [activationDict_ref.get_cf() == nullptr is false]: Missing dictionary Activation.", v439, 0x18u);
        }

        v295 = __cxa_allocate_exception(0x10uLL);
        *v295 = &unk_1F593B0D8;
        v295[2] = -66741;
      }

      CFRetain(v180);
      v353 = v181;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v352, &v353);
      v182 = *(a1 + 16);
      if (v182)
      {
        v183 = *v182;
        if (!*v182)
        {
          goto LABEL_402;
        }
      }

      else
      {
        v183 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
      {
        *v439 = 136315394;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 447;
        _os_log_impl(&dword_1DDB85000, v183, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary Activation.", v439, 0x12u);
      }

LABEL_402:
      v184 = CFDictionaryGetValue(v352, @"Function");
      v185 = v184;
      if (!v184)
      {
        v290 = 0;
        v351 = 0;
        v291 = *(a1 + 16);
        if (v291)
        {
          v290 = *v291;
        }

        if (os_log_type_enabled(v290, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 453;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v290, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [activationFunction_ref.get_cf() == nullptr is false]: Failed to retrieve activation function (Function) from dictionary Activation.", v439, 0x18u);
        }

        v292 = __cxa_allocate_exception(0x10uLL);
        *v292 = &unk_1F593B0D8;
        v292[2] = -66741;
      }

      CFRetain(v184);
      v351 = v185;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v350, &v351);
      v186 = *(a1 + 16);
      if (v186)
      {
        v187 = *v186;
        if (!*v186)
        {
          goto LABEL_414;
        }
      }

      else
      {
        v187 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v187, OS_LOG_TYPE_DEBUG))
      {
        v188 = CFCopyDescription(v350);
        v438 = v188;
        applesauce::CF::details::CFString_get_value<true>(__p, v188);
        if (v188)
        {
          CFRelease(v188);
        }

        v189 = __p;
        if (v427 < 0)
        {
          v189 = __p[0];
        }

        *v439 = 136315906;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 457;
        v442 = 2080;
        v443.__r_.__value_.__r.__words[0] = v189;
        LOWORD(v443.__r_.__value_.__r.__words[1]) = 2048;
        *(&v443.__r_.__value_.__r.__words[1] + 2) = i;
        _os_log_impl(&dword_1DDB85000, v187, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved activation function (%s) for Layer %zu.", v439, 0x26u);
        if (v427 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_414:
      *(*a3 + 968 * i + 704) = 0;
      v190 = v350;
      if (v350)
      {
        CFRetain(v350);
      }

      v349 = v190;
      std::string::basic_string[abi:ne200100]<0>(v347, "Identity");
      std::string::basic_string[abi:ne200100]<0>(v345, "Linear");
      v191 = matchiEither(&v349, v347, v345);
      if (v346 < 0)
      {
        operator delete(v345[0]);
      }

      if (v348 < 0)
      {
        operator delete(v347[0]);
      }

      if (v349)
      {
        CFRelease(v349);
      }

      if (v191)
      {
        v192 = 0;
      }

      else
      {
        v193 = v350;
        if (v350)
        {
          CFRetain(v350);
        }

        v344 = v193;
        std::string::basic_string[abi:ne200100]<0>(v342, "RectifiedLinear");
        std::string::basic_string[abi:ne200100]<0>(v340, "ReLU");
        v194 = matchiEither(&v344, v342, v340);
        if (v341 < 0)
        {
          operator delete(v340[0]);
        }

        if (v343 < 0)
        {
          operator delete(v342[0]);
        }

        if (v344)
        {
          CFRelease(v344);
        }

        if (v194)
        {
          v192 = 1;
        }

        else
        {
          v195 = v350;
          if (v350)
          {
            CFRetain(v350);
          }

          v339 = v195;
          std::string::basic_string[abi:ne200100]<0>(v337, "LeakyRectifiedLinear");
          std::string::basic_string[abi:ne200100]<0>(v335, "LeakyReLU");
          v196 = matchiEither(&v339, v337, v335);
          if (v336 < 0)
          {
            operator delete(v335[0]);
          }

          if (v338 < 0)
          {
            operator delete(v337[0]);
          }

          if (v339)
          {
            CFRelease(v339);
          }

          if (v196)
          {
            v192 = 2;
          }

          else
          {
            v197 = v350;
            if (v350)
            {
              CFRetain(v350);
            }

            v334 = v197;
            std::string::basic_string[abi:ne200100]<0>(v332, "Sigmoid");
            v198 = matchiString(&v334, v332);
            if (v333 < 0)
            {
              operator delete(v332[0]);
            }

            if (v334)
            {
              CFRelease(v334);
            }

            if (v198)
            {
              v192 = 3;
            }

            else
            {
              v199 = v350;
              if (v350)
              {
                CFRetain(v350);
              }

              v331 = v199;
              std::string::basic_string[abi:ne200100]<0>(v329, "Tanh");
              v200 = matchiString(&v331, v329);
              if (v330 < 0)
              {
                operator delete(v329[0]);
              }

              if (v331)
              {
                CFRelease(v331);
              }

              if (v200)
              {
                v192 = 4;
              }

              else
              {
                v201 = v350;
                if (v350)
                {
                  CFRetain(v350);
                }

                v328 = v201;
                std::string::basic_string[abi:ne200100]<0>(v326, "ScaledTanh");
                v202 = matchiString(&v328, v326);
                if (v327 < 0)
                {
                  operator delete(v326[0]);
                }

                if (v328)
                {
                  CFRelease(v328);
                }

                if (v202)
                {
                  v192 = 5;
                }

                else
                {
                  v203 = v350;
                  if (v350)
                  {
                    CFRetain(v350);
                  }

                  v325 = v203;
                  std::string::basic_string[abi:ne200100]<0>(v323, "Abs");
                  v204 = matchiString(&v325, v323);
                  if (v324 < 0)
                  {
                    operator delete(v323[0]);
                  }

                  if (v325)
                  {
                    CFRelease(v325);
                  }

                  if (v204)
                  {
                    v192 = 6;
                  }

                  else
                  {
                    v205 = v350;
                    if (v350)
                    {
                      CFRetain(v350);
                    }

                    v322 = v205;
                    std::string::basic_string[abi:ne200100]<0>(v320, "ELU");
                    v206 = matchiString(&v322, v320);
                    if (v321 < 0)
                    {
                      operator delete(v320[0]);
                    }

                    if (v322)
                    {
                      CFRelease(v322);
                    }

                    if (!v206)
                    {
                      v316 = *(a1 + 16);
                      if (v316)
                      {
                        v317 = *v316;
                      }

                      else
                      {
                        v317 = 0;
                      }

                      if (os_log_type_enabled(v317, OS_LOG_TYPE_ERROR))
                      {
                        *v439 = 136315650;
                        *&v439[4] = "NeuralNetLoader.cpp";
                        v440 = 1024;
                        v441 = 496;
                        v442 = 1024;
                        LODWORD(v443.__r_.__value_.__l.__data_) = -66743;
                        _os_log_impl(&dword_1DDB85000, v317, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported activation function.", v439, 0x18u);
                      }

                      v318 = __cxa_allocate_exception(0x10uLL);
                      *v318 = &unk_1F593B0D8;
                      v318[2] = -66743;
                    }

                    v192 = 7;
                  }
                }
              }
            }
          }
        }
      }

      *(*a3 + 968 * i + 960) = v192;
      LODWORD(__p[0]) = 1065353216;
      v207 = *(a1 + 16);
      if (v207)
      {
        v208 = *v207;
        if (!*v207)
        {
          goto LABEL_490;
        }
      }

      else
      {
        v208 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v208, OS_LOG_TYPE_DEBUG))
      {
        *v439 = 136315394;
        *&v439[4] = "NeuralNetLoader.cpp";
        v440 = 1024;
        v441 = 501;
        _os_log_impl(&dword_1DDB85000, v208, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from activationDict.", v439, 0x12u);
      }

LABEL_490:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v352, @"Alpha", kCFNumberFloat32Type, __p))
      {
        v235 = *(a1 + 16);
        if (v235)
        {
          v236 = *v235;
        }

        else
        {
          v236 = 0;
        }

        if (os_log_type_enabled(v236, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 504;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v236, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar Alpha from dictionary Activation.", v439, 0x18u);
        }

        v251 = __cxa_allocate_exception(0x10uLL);
        *v251 = &unk_1F593B0D8;
        v251[2] = -66741;
      }

      *(*a3 + 968 * i + 708) = __p[0];
      LODWORD(v438) = 0;
      v209 = *(a1 + 16);
      if (!v209)
      {
        v210 = MEMORY[0x1E69E9C10];
LABEL_495:
        if (os_log_type_enabled(v210, OS_LOG_TYPE_DEBUG))
        {
          *v439 = 136315394;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 510;
          _os_log_impl(&dword_1DDB85000, v210, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from activationDict.", v439, 0x12u);
        }

        goto LABEL_497;
      }

      v210 = *v209;
      if (*v209)
      {
        goto LABEL_495;
      }

LABEL_497:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v352, @"Beta", kCFNumberFloat32Type, &v438))
      {
        v237 = *(a1 + 16);
        if (v237)
        {
          v238 = *v237;
        }

        else
        {
          v238 = 0;
        }

        if (os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
        {
          *v439 = 136315650;
          *&v439[4] = "NeuralNetLoader.cpp";
          v440 = 1024;
          v441 = 513;
          v442 = 1024;
          LODWORD(v443.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v238, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar Beta from dictionary Activation.", v439, 0x18u);
        }

        v252 = __cxa_allocate_exception(0x10uLL);
        *v252 = &unk_1F593B0D8;
        v252[2] = -66741;
      }

      *(*a3 + 968 * i + 712) = v438;
      if (v350)
      {
        CFRelease(v350);
      }

      CFRelease(v185);
      if (v352)
      {
        CFRelease(v352);
      }

      CFRelease(v181);
      if (v359)
      {
        CFRelease(v359);
      }

      CFRelease(v169);
      if (v361)
      {
        CFRelease(v361);
      }

      CFRelease(v155);
      if (v383)
      {
        CFRelease(v383);
      }

      if (v392)
      {
        CFRelease(v392);
      }

      if (v393)
      {
        CFRelease(v393);
      }

      if (v394)
      {
        CFRelease(v394);
      }

      if (v395)
      {
        CFRelease(v395);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v402)
      {
        CFRelease(v402);
      }

      if (v404)
      {
        CFRelease(v404);
      }

      if (v405)
      {
        CFRelease(v405);
      }

      if (v428)
      {
        CFRelease(v428);
      }

      if (v429)
      {
        CFRelease(v429);
      }

      if (v431)
      {
        CFRelease(v431);
      }

      if (v432)
      {
        CFRelease(v432);
      }

      if (v433)
      {
        CFRelease(v433);
      }

      if (v434)
      {
        CFRelease(v434);
      }

      if (v435)
      {
        CFRelease(v435);
      }

      if (SHIBYTE(v437) < 0)
      {
        operator delete(v436);
      }
    }
  }
}