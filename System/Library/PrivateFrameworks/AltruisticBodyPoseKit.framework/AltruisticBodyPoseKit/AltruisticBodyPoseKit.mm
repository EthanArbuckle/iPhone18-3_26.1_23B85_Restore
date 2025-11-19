__CFDictionary *ABPKcreateAttributeDictionaryNewWithZeroCopyOption(unsigned int a1, unsigned int a2, int a3, int a4)
{
  v19 = __PAIR64__(a1, a2);
  LODWORD(v18) = 16;
  HIDWORD(v18) = a3;
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = CFNumberCreate(v5, kCFNumberIntType, &v18 + 4);
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v7;
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E30], v7);
    CFRelease(v8);
    v9 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = v9;
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], v9);
    CFRelease(v10);
    v11 = CFNumberCreate(v5, kCFNumberIntType, &v19 + 4);
    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = v11;
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC4EC8], v11);
    CFRelease(v12);
    v13 = CFNumberCreate(v5, kCFNumberIntType, &v19);
    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = v13;
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC4DD8], v13);
    CFRelease(v14);
    v15 = CFNumberCreate(v5, kCFNumberIntType, &v18);
    if (v15)
    {
      v16 = v15;
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E38], v15);
      CFRelease(v16);
      if (a4)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D60], [MEMORY[0x277CCABB0] numberWithInt:{64, v18, v19}]);
      }
    }

    else
    {
LABEL_9:
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

uint64_t ABPK_pixelBufferPoolCreateNewWithZeroCopyOption(unsigned int a1, unsigned int a2, int a3, CVPixelBufferPoolRef *a4, int a5)
{
  v6 = ABPKcreateAttributeDictionaryNewWithZeroCopyOption(a1, a2, a3, a5);
  if (v6)
  {
    v7 = v6;
    v8 = CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], 0, v6, a4);
    CFRelease(v7);
    if (!v8)
    {
      return v8;
    }
  }

  else
  {
    v8 = 4294960636;
  }

  *a4 = 0;
  return v8;
}

uint64_t ABPKRecreatePixelBufferPoolOnConfigurationChangesWithZeroCopyOption(CVPixelBufferPoolRef *a1, int a2, int a3, double a4, double a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  if (v10)
  {
    v11 = CVPixelBufferPoolGetPixelBufferAttributes(v10);
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC4EC8]];
    v13 = [v12 integerValue];

    v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC4DD8]];
    v15 = [v14 integerValue];

    v16 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC4E30]];
    v17 = [v16 integerValue];

    if (v13 == a4 && v15 == a5)
    {

      if (v17 == a2)
      {
        NewWithZeroCopyOption = 0;
        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v17 = 0;
  }

  v19 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = *a1;
    v24 = 134219520;
    v25 = v20;
    v26 = 2048;
    v27 = v13;
    v28 = 2048;
    v29 = v15;
    v30 = 2048;
    v31 = v17;
    v32 = 1024;
    v33 = a4;
    v34 = 1024;
    v35 = a5;
    v36 = 1024;
    v37 = a2;
    _os_log_impl(&dword_23EDDC000, v19, OS_LOG_TYPE_INFO, " ARSystemTools: Recreating pixel buffer pool (%p) due to configuration changes: %li,%li/%li => %i,%i/%i ", &v24, 0x3Cu);
  }

  if (*a1)
  {
    CVPixelBufferPoolRelease(*a1);
    *a1 = 0;
  }

  NewWithZeroCopyOption = ABPK_pixelBufferPoolCreateNewWithZeroCopyOption(a4, a5, a2, a1, a3);
  if (NewWithZeroCopyOption)
  {
    v21 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_23EDDC000, v21, OS_LOG_TYPE_ERROR, " ARSystemTools: Could not create pixel buffer pool. ", &v24, 2u);
    }
  }

LABEL_16:
  v22 = *MEMORY[0x277D85DE8];
  return NewWithZeroCopyOption;
}

CVPixelBufferRef ABPKCreateCVPixelBufferFromPoolWithZeroCopyOption(CVPixelBufferPoolRef *a1, int a2, void *a3, void *a4, int a5, double a6, double a7)
{
  v36 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  pixelBufferOut = 0;
  v15 = ABPKRecreatePixelBufferPoolOnConfigurationChangesWithZeroCopyOption(a1, a2, a5, a6, a7);
  if (v15)
  {
    v16 = v15;
    v17 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138413058;
      v29 = v19;
      v30 = 2048;
      v31 = v13;
      v32 = 2112;
      v33 = v14;
      v34 = 1024;
      v35 = v16;
      v20 = " %@(%p): Unable to configure pixelbuffer pool for %@: %i ";
LABEL_7:
      _os_log_impl(&dword_23EDDC000, v17, OS_LOG_TYPE_ERROR, v20, buf, 0x26u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v21 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], *a1, &pixelBufferOut);
  if (v21)
  {
    v22 = v21;
    v17 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v19 = NSStringFromClass(v23);
      *buf = 138413058;
      v29 = v19;
      v30 = 2048;
      v31 = v13;
      v32 = 2112;
      v33 = v14;
      v34 = 1024;
      v35 = v22;
      v20 = " %@(%p): Unable to create pixel buffer for %@: %i ";
      goto LABEL_7;
    }

LABEL_8:
  }

  v24 = pixelBufferOut;

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

void abpk::GetRawDetectionXYVisbilityWithRawDetection2D(abpk *this@<X0>, ABPK2DDetectionResult *a2@<X1>, const CGSize *a3@<X2>, void *a4@<X8>)
{
  v6 = this;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  std::vector<std::array<float,3ul>>::reserve(a4, 0x10uLL);
  v7 = [(abpk *)v6 rawJointsOutput];
  v8 = [(abpk *)v6 jointTrackingStates];
  v9 = v8;
  v10 = v7[16];
  if (v10.f32[0] == -1.0 || COERCE_FLOAT(HIDWORD(*&v7[16])) == -1.0)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    v50 = _D0;
  }

  else
  {
    v50 = vcvt_f32_f64(vmulq_f64(*&a2->super.isa, vcvtq_f64_f32(v10)));
  }

  v51 = *(v8 + 64);
  std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  v16 = v7[8];
  if (v16.f32[0] == -1.0 || COERCE_FLOAT(HIDWORD(*&v7[8])) == -1.0)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    v50 = _D0;
  }

  else
  {
    v50 = vcvt_f32_f64(vmulq_f64(*&a2->super.isa, vcvtq_f64_f32(v16)));
  }

  v51 = v9[8];
  std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  v19 = v7[9];
  if (v19.f32[0] == -1.0 || COERCE_FLOAT(HIDWORD(*&v7[9])) == -1.0)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    v50 = _D0;
  }

  else
  {
    v50 = vcvt_f32_f64(vmulq_f64(*&a2->super.isa, vcvtq_f64_f32(v19)));
  }

  v51 = v9[9];
  std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  v22 = v7[10];
  if (v22.f32[0] == -1.0 || v22.f32[1] == -1.0)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    v50 = _D0;
    v51 = v9[10];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  else
  {
    v50 = vcvt_f32_f64(vmulq_f64(*&a2->super.isa, vcvtq_f64_f32(v22)));
    v51 = v9[10];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  v24 = v7[11];
  if (v24.f32[0] == -1.0 || v24.f32[1] == -1.0)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    v50 = _D0;
    v51 = v9[11];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  else
  {
    v50 = vcvt_f32_f64(vmulq_f64(*&a2->super.isa, vcvtq_f64_f32(v24)));
    v51 = v9[11];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  v26 = v7[12];
  if (v26.f32[0] == -1.0 || v26.f32[1] == -1.0)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    v50 = _D0;
    v51 = v9[12];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  else
  {
    v50 = vcvt_f32_f64(vmulq_f64(*&a2->super.isa, vcvtq_f64_f32(v26)));
    v51 = v9[12];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  v28 = v7[13];
  if (v28.f32[0] == -1.0 || v28.f32[1] == -1.0)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    v50 = _D0;
    v51 = v9[13];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  else
  {
    v50 = vcvt_f32_f64(vmulq_f64(*&a2->super.isa, vcvtq_f64_f32(v28)));
    v51 = v9[13];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  v30 = v7[1];
  if (v30.f32[0] == -1.0 || v30.f32[1] == -1.0)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    v50 = _D0;
    v51 = v9[1];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  else
  {
    v50 = vcvt_f32_f64(vmulq_f64(*&a2->super.isa, vcvtq_f64_f32(v30)));
    v51 = v9[1];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  v32 = *v7;
  if (COERCE_FLOAT(*v7) == -1.0 || v32.f32[1] == -1.0)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    v50 = _D0;
    v51 = *v9;
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  else
  {
    v50 = vcvt_f32_f64(vmulq_f64(*&a2->super.isa, vcvtq_f64_f32(v32)));
    v51 = *v9;
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  v34 = *v7;
  if (COERCE_FLOAT(*v7) == -1.0 || v34.f32[1] == -1.0)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    v50 = _D0;
    v51 = *v9;
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  else
  {
    v50 = vcvt_f32_f64(vmulq_f64(*&a2->super.isa, vcvtq_f64_f32(v34)));
    v51 = *v9;
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  v36 = v7[5];
  if (v36.f32[0] == -1.0 || v36.f32[1] == -1.0)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    v50 = _D0;
    v51 = v9[5];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  else
  {
    v50 = vcvt_f32_f64(vmulq_f64(*&a2->super.isa, vcvtq_f64_f32(v36)));
    v51 = v9[5];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  v38 = v7[6];
  if (v38.f32[0] == -1.0 || v38.f32[1] == -1.0)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    v50 = _D0;
    v51 = v9[6];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  else
  {
    v50 = vcvt_f32_f64(vmulq_f64(*&a2->super.isa, vcvtq_f64_f32(v38)));
    v51 = v9[6];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  v40 = v7[7];
  if (v40.f32[0] == -1.0 || v40.f32[1] == -1.0)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    v50 = _D0;
    v51 = v9[7];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  else
  {
    v50 = vcvt_f32_f64(vmulq_f64(*&a2->super.isa, vcvtq_f64_f32(v40)));
    v51 = v9[7];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  v42 = v7[2];
  if (v42.f32[0] == -1.0 || v42.f32[1] == -1.0)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    v50 = _D0;
    v51 = v9[2];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  else
  {
    v50 = vcvt_f32_f64(vmulq_f64(*&a2->super.isa, vcvtq_f64_f32(v42)));
    v51 = v9[2];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  v44 = v7[3];
  if (v44.f32[0] == -1.0 || v44.f32[1] == -1.0)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    v50 = _D0;
    v51 = v9[3];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  else
  {
    v50 = vcvt_f32_f64(vmulq_f64(*&a2->super.isa, vcvtq_f64_f32(v44)));
    v51 = v9[3];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  v46 = v7[4];
  if (v46.f32[0] == -1.0 || v46.f32[1] == -1.0)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    v50 = _D0;
    v51 = v9[4];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  else
  {
    v50 = vcvt_f32_f64(vmulq_f64(*&a2->super.isa, vcvtq_f64_f32(v46)));
    v51 = v9[4];
    std::vector<std::array<float,3ul>>::push_back[abi:ne200100](a4, &v50);
  }

  v48 = *a4;
  if (*(*a4 + 92) != 0.0 && *(v48 + 116) != 0.0)
  {
    v49 = vcvtq_f64_f32(vsub_f32(*(v48 + 84), *(v48 + 96)));
    *v49.f64 = sqrt(vaddvq_f64(vmulq_f64(v49, v49)));
    *v49.f64 = COERCE_FLOAT(HIDWORD(*(v48 + 96))) + *v49.f64 * -0.5;
    *(v48 + 112) = LODWORD(v49.f64[0]);
  }
}

void sub_23EDDEA90(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *std::vector<std::array<float,3ul>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<float,3ul>>>(result, a2);
    }

    std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void abpk::Normalize2DCoordinates(float32x2_t **a1, uint64_t *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    v6 = a2[1];
    v20 = 134218240;
    v21 = v5;
    v22 = 2048;
    v23 = v6;
    _os_log_impl(&dword_23EDDC000, v4, OS_LOG_TYPE_DEBUG, " \t Normalizing the raw 2D x and y coordinates with image width = %f and height = %f ", &v20, 0x16u);
  }

  v7 = *a1;
  v8 = a1[1];
  if (*a1 != v8)
  {
    v9 = vdupq_lane_s64(*a2, 0);
    __asm { FMOV            V1.2D, #-1.0 }

    _Q1.f64[1] = *(a2 + 1) / *a2;
    do
    {
      if (v7[1].f32[0] == 0.0)
      {
        v18 = 0;
      }

      else
      {
        v15 = vcvtq_f64_f32(*v7);
        v16 = vdivq_f64(vaddq_f64(v15, v15), v9);
        *&v17.f64[0] = *&vaddq_f64(v16, _Q1);
        v17.f64[1] = vsubq_f64(v16, _Q1).f64[1];
        v18 = vcvt_f32_f64(v17);
      }

      *v7 = v18;
      v7 = (v7 + 12);
    }

    while (v7 != v8);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void abpk::Normalize2DCoordinatesSquareCrop(float32x2_t **a1, double *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = a2[1];
  v7 = __ABPKLogSharedInstance();
  *&v26 = v5;
  v8 = v6;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v28 = v5;
    v29 = 2048;
    v30 = v6;
    _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_DEBUG, " \t Normalizing the raw 2D x and y coordinates with image width = %f and height = %f. Center cropping in normalization for better model performance. ", buf, 0x16u);
  }

  v9 = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    v11 = (v5 - v6) * 0.5;
    v12 = (v6 - v5) * 0.5;
    v13 = vdupq_lane_s64(v26, 0);
    __asm { FMOV            V5.2D, #-1.0 }

    _Q5.f64[1] = v8 / *&v26;
    do
    {
      v18 = *v9;
      if ((a3 - 1) > 1)
      {
        if ((a3 - 3) > 1 || (v11 <= v18.f32[0] ? (v20 = *&v26 - v11 < v18.f32[0]) : (v20 = 1), !v20))
        {
LABEL_18:
          if (v9[1].f32[0] == 0.0)
          {
            v24 = 0;
          }

          else
          {
            v21 = vcvtq_f64_f32(v18);
            v22 = vdivq_f64(vaddq_f64(v21, v21), v13);
            *&v23.f64[0] = *&vaddq_f64(v22, _Q5);
            v23.f64[1] = vsubq_f64(v22, _Q5).f64[1];
            v24 = vcvt_f32_f64(v23);
          }

          *v9 = v24;
          goto LABEL_22;
        }
      }

      else if (v12 <= v18.f32[1] && v8 - v12 >= v18.f32[1])
      {
        goto LABEL_18;
      }

      *v9 = 0;
      v9[1].i32[0] = 0;
LABEL_22:
      v9 = (v9 + 12);
    }

    while (v9 != v10);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void std::vector<std::array<float,3ul>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<float,3ul>>>(a1, v11);
    }

    v12 = 12 * v8;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v7 = 12 * v8 + 12;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  *(a1 + 8) = v7;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278C71870, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<float,3ul>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_23EDDFEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ABPKRetargeting;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

float32x2_t *distanceBetweenTwoPoses(float32x2_t *result, float32x2_t *a2, uint64_t a3)
{
  for (i = 0.0; a3; --a3)
  {
    if ((vmaxv_u16(vmovn_s32(vcltzq_f32(*result->f32))) & 1) == 0)
    {
      v4 = vsub_f32(*result, *a2);
      i = i + sqrtf(vaddv_f32(vmul_f32(v4, v4)));
    }

    ++a2;
    ++result;
  }

  return result;
}

{
  for (i = 0.0; a3; --a3)
  {
    if ((vmaxv_u16(vmovn_s32(vcltzq_f32(*result->f32))) & 1) == 0)
    {
      v4 = vsub_f32(*result, *a2);
      i = i + sqrtf(vaddv_f32(vmul_f32(v4, v4)));
    }

    ++a2;
    ++result;
  }

  return result;
}

BOOL isValueInVector(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  if (!v3)
  {
    return 0;
  }

  v4 = v3 >> 3;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (*v2 == a2)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v7;
    if (v5 == v7)
    {
      break;
    }

    v9 = v2[v7++];
  }

  while (v9 != a2);
  return v8 < v4;
}

void sub_23EDE164C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  v32 = *(v30 - 176);
  if (v32)
  {
    *(v30 - 168) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void sub_23EDE2710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v36 = *(v34 - 152);
  if (v36)
  {
    *(v34 - 144) = v36;
    operator delete(v36);
  }

  v37 = *(v34 - 128);
  if (v37)
  {
    *(v34 - 120) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23EDE2D5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23EDE2E5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23EDE2ED4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__16vectorIDv3_iNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv3_iNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_23EDE2F48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv3_iNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_iEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
  }

  std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_iEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void abpk::getJointPositionsAndMaximasLegacy(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5, unsigned int a6, uint64_t a7, uint64_t a8, float32x4_t a9)
{
  v77 = *a3 - 1;
  if (a5)
  {
    if (*a3 == 1)
    {
      return;
    }

    v71 = *a3 - 1;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v81 = a3[1];
    if (a3[2] <= 1uLL)
    {
      v12 = 1;
    }

    else
    {
      v12 = a3[2];
    }

    v79 = a3[2];
    v80 = 2 * a4[1];
    do
    {
      v75 = v10;
      v76 = v9;
      if (v81)
      {
        v13 = 0;
        v14 = (a7 + 24 * v10);
        v15 = *a4 * v9;
        v16 = a2 + v15;
        v17 = a1 + v15;
        v18 = v79;
        do
        {
          if (v18)
          {
            v19 = 0;
            do
            {
              v20 = *(v17 + 2 * v19);
              if (v20 > COERCE_SHORT_FLOAT(11878) && v20 == *(v16 + 2 * v19))
              {
                v22 = v14[1];
                v23 = v14[2];
                if (v22 >= v23)
                {
                  v25 = *v14;
                  v26 = v22 - *v14;
                  v27 = v26 >> 4;
                  v28 = (v26 >> 4) + 1;
                  if (v28 >> 60)
                  {
                    goto LABEL_73;
                  }

                  v29 = v23 - v25;
                  if (v29 >> 3 > v28)
                  {
                    v28 = v29 >> 3;
                  }

                  if (v29 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v28 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  if (v28)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<abpk::peak>>(v14, v28);
                  }

                  v30 = 16 * v27;
                  *v30 = v19;
                  *(v30 + 4) = v13;
                  *(v30 + 8) = v20;
                  *(v30 + 12) = v11;
                  v24 = 16 * v27 + 16;
                  memcpy(0, v25, v26);
                  v31 = *v14;
                  *v14 = 0;
                  v14[1] = v24;
                  v14[2] = 0;
                  if (v31)
                  {
                    operator delete(v31);
                  }
                }

                else
                {
                  *v22 = v19;
                  *(v22 + 1) = v13;
                  *(v22 + 4) = v20;
                  v24 = (v22 + 16);
                  *(v22 + 3) = v11;
                }

                ++v11;
                v14[1] = v24;
              }

              ++v19;
            }

            while (v12 != v19);
            v18 = v79;
          }

          ++v13;
          v16 += v80;
          v17 += v80;
        }

        while (v13 != v81);
      }

      v10 = v75 + 1;
      v9 = v76 + 2;
    }

    while (v75 + 1 != v77);
    goto LABEL_50;
  }

  v71 = *a3 - 1;
  if (a6)
  {
    v32 = a1 + 4;
    v33 = a6;
    do
    {
      a9.i32[0] = *(v32 - 4);
      a9 = vcvtq_f32_f16(*a9.f32);
      v34 = vcvtq_s32_f32(a9).u64[0];
      v35 = *(v32 + 2);
      v36 = a7 + 24 * *v32;
      v37 = *(v36 + 8);
      v38 = *(v36 + 16);
      if (v37 >= v38)
      {
        v40 = (v37 - *v36) >> 4;
        v41 = v40 + 1;
        if ((v40 + 1) >> 60)
        {
LABEL_73:
          std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
        }

        v42 = v38 - *v36;
        if (v42 >> 3 > v41)
        {
          v41 = v42 >> 3;
        }

        if (v42 >= 0x7FFFFFFFFFFFFFF0)
        {
          v43 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v41;
        }

        if (v43)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<abpk::peak>>(a7 + 24 * *v32, v43);
        }

        v44 = 16 * v40;
        *v44 = v34;
        *(v44 + 8) = v35;
        *(v44 + 12) = 0;
        v39 = 16 * v40 + 16;
        v45 = *(v36 + 8) - *v36;
        v46 = 16 * v40 - v45;
        memcpy((v44 - v45), *v36, v45);
        v47 = *v36;
        *v36 = v46;
        *(v36 + 8) = v39;
        *(v36 + 16) = 0;
        if (v47)
        {
          operator delete(v47);
        }
      }

      else
      {
        *v37 = v34;
        *(v37 + 8) = v35;
        v39 = v37 + 16;
        *(v37 + 12) = 0;
      }

      *(v36 + 8) = v39;
      v32 += 8;
      --v33;
    }

    while (v33);
  }

  if (v71)
  {
    v11 = 0;
LABEL_50:
    v48 = (a7 + 8);
    v49 = v71;
    do
    {
      v50 = *(v48 - 1);
      v51 = *v48;
      v83 = abpk::isDuplicate;
      v52 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<abpk::peak *>,std::__wrap_iter<abpk::peak *>,BOOL (*&)(abpk::peak const&,abpk::peak const&)>(v50, v51, &v83);
      if (v52 != *v48)
      {
        v53 = *v48;
        *v48 = v52;
      }

      v48 += 3;
      --v49;
    }

    while (v49);
    v54 = 0;
    do
    {
      v55 = (a7 + 24 * v54);
      v56 = *v55;
      if (((v55[1] - *v55) >> 4) >= 1)
      {
        v57 = 0;
        v58 = 0;
        v59 = a8;
        v60 = *(a8 + 8);
        do
        {
          v61 = (v56 + v57);
          *(v56 + v57 + 12) = v11 + v58;
          v62 = *(v59 + 16);
          if (v60 >= v62)
          {
            v63 = (v60 - *v59) >> 4;
            if ((v63 + 1) >> 60)
            {
              goto LABEL_73;
            }

            v64 = v62 - *v59;
            v65 = v64 >> 3;
            if (v64 >> 3 <= (v63 + 1))
            {
              v65 = v63 + 1;
            }

            if (v64 >= 0x7FFFFFFFFFFFFFF0)
            {
              v66 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v66 = v65;
            }

            if (v66)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<abpk::peak>>(v59, v66);
            }

            v67 = (16 * v63);
            *v67 = *v61;
            v60 = (16 * v63 + 16);
            v68 = *(v59 + 8) - *v59;
            v69 = v67 - v68;
            memcpy(v67 - v68, *v59, v68);
            v59 = a8;
            v70 = *a8;
            *a8 = v69;
            *(a8 + 8) = v60;
            *(a8 + 16) = 0;
            if (v70)
            {
              operator delete(v70);
              v59 = a8;
            }
          }

          else
          {
            *v60++ = *v61;
          }

          *(v59 + 8) = v60;
          ++v58;
          v56 = *v55;
          v57 += 16;
        }

        while (v58 < ((v55[1] - *v55) >> 4));
        v11 += v58;
      }

      ++v54;
    }

    while (v54 != v77);
  }
}

BOOL abpk::isDuplicate(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1 - *a2;
  if (v2 < 0)
  {
    v2 = *a2 - *a1;
  }

  if (v2 > 1)
  {
    return 0;
  }

  v3 = a1[1] - a2[1];
  if (v3 < 0)
  {
    v3 = a2[1] - a1[1];
  }

  return v3 < 2;
}

{
  v2 = *a1 - *a2;
  if (v2 < 0)
  {
    v2 = *a2 - *a1;
  }

  if (v2 > 1)
  {
    return 0;
  }

  v3 = a1[1] - a2[1];
  if (v3 < 0)
  {
    v3 = a2[1] - a1[1];
  }

  return v3 < 2;
}

void abpk::extractHumansLegacy(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, char a7@<W6>, unsigned int a8@<W7>, uint64_t *a9@<X8>)
{
  v196 = *MEMORY[0x277D85DE8];
  v190 = 0;
  memset(v189, 0, sizeof(v189));
  v187 = 0;
  v188[0] = 0;
  v188[1] = 0;
  abpk::getJointPositionsAndMaximasLegacy(a1, a2, a4, a6, a7, a8, v189, &v187, 0);
  v12 = 0;
  v176 = *a4;
  v13 = *a4 - 1;
  memset(v195, 0, sizeof(v195));
  v14 = 1.0e-12;
  do
  {
    v174 = v12;
    v15 = &abpk::bones[2 * v12];
    v17 = *v15;
    v16 = v15[1];
    __p[0] = 0;
    __p[1] = 0;
    v186 = 0;
    v18 = v189 + 3 * v17;
    v20 = *v18;
    v19 = v18[1];
    v175 = v18;
    if (v19 != *v18)
    {
      v182 = v189 + 3 * v16;
      v21 = *v182;
      v22 = v182[1];
      if (v22 != *v182)
      {
        if (((v19 - v20) >> 4) < 1)
        {
          v74 = 0uLL;
        }

        else
        {
          v177 = 0;
          v178 = (&abpk::s_bonesmap + 8 * v174);
          do
          {
            if (((v22 - v21) >> 4) >= 1)
            {
              v23 = 0;
              v24 = v20 + 16 * v177;
              do
              {
                v25 = (v21 + 16 * v23);
                v26 = (*v25 - *v24);
                v27 = (v25[1] - *(v24 + 4));
                v28 = sqrtf((v27 * v27) + (v26 * v26));
                v29 = v28;
                if (v28 >= v14)
                {
                  v181 = v21 + 16 * v23;
                  v30 = v14;
                  v31 = 0;
                  v32 = 0;
                  v180 = *(a5 + 8);
                  v34 = *v178;
                  v33 = v178[1];
                  v35 = v26 / v28;
                  v36 = v27 / v28;
                  v192 = 0;
                  __src = 0;
                  v193 = 0;
                  v37 = v26 / 10.0;
                  v38 = v27 / 10.0;
                  do
                  {
                    v39 = ((*v24 + (v32 * v37)) + 0.5);
                    *&v40 = (*(v24 + 4) + (v32 * v38)) + 0.5;
                    v41 = a6[1] * *&v40;
                    v40.i16[0] = *(a3 + 2 * *a6 * v34 + 2 * v41 + 2 * v39);
                    v40.i16[1] = *(a3 + 2 * *a6 * v33 + 2 * v41 + 2 * v39);
                    v42 = vcvtq_f32_f16(v40).u64[0];
                    if (v31 >= v193)
                    {
                      v43 = (v31 - __src) >> 3;
                      if ((v43 + 1) >> 61)
                      {
                        std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
                      }

                      v44 = (v193 - __src) >> 2;
                      if (v44 <= v43 + 1)
                      {
                        v44 = v43 + 1;
                      }

                      if (v193 - __src >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v45 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v45 = v44;
                      }

                      if (v45)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v45);
                      }

                      v46 = (8 * v43);
                      *v46 = v42;
                      v31 = (8 * v43 + 8);
                      v47 = v46 - (v192 - __src);
                      memcpy(v47, __src, v192 - __src);
                      v48 = __src;
                      __src = v47;
                      v192 = v31;
                      v193 = 0;
                      if (v48)
                      {
                        operator delete(v48);
                      }
                    }

                    else
                    {
                      *v31++ = v42;
                    }

                    v192 = v31;
                    ++v32;
                  }

                  while (v32 != 10);
                  v49 = 0;
                  v50 = 0;
                  v51 = 0.0;
                  do
                  {
                    v52 = vmuls_lane_f32(v36, *(__src + v49), 1) + (v35 * COERCE_FLOAT(*(__src + v49)));
                    v51 = v51 + v52;
                    if (v52 > 0.05)
                    {
                      ++v50;
                    }

                    v49 += 8;
                  }

                  while (v49 != 80);
                  v192 = __src;
                  operator delete(__src);
                  v14 = v30;
                  if (v50 >= 7)
                  {
                    v53 = fmin(v180 * 0.5 / v29 + -1.0, 0.0) + v51 / 10.0;
                    if (v53 > 0.0)
                    {
                      _H0 = *(v24 + 8);
                      __asm { FCVT            S0, H0 }

                      _H1 = *(v181 + 8);
                      __asm { FCVT            S1, H1 }

                      v62 = (v53 + _S0) + _S1;
                      v63 = __p[1];
                      if (__p[1] >= v186)
                      {
                        v65 = __p[0];
                        v66 = __p[1] - __p[0];
                        v67 = (__p[1] - __p[0]) >> 4;
                        v68 = v67 + 1;
                        if ((v67 + 1) >> 60)
                        {
                          std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
                        }

                        v69 = v186 - __p[0];
                        if ((v186 - __p[0]) >> 3 > v68)
                        {
                          v68 = v69 >> 3;
                        }

                        if (v69 >= 0x7FFFFFFFFFFFFFF0)
                        {
                          v68 = 0xFFFFFFFFFFFFFFFLL;
                        }

                        if (v68)
                        {
                          _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_iEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(__p, v68);
                        }

                        v70 = (__p[1] - __p[0]) >> 4;
                        v71 = 16 * v67;
                        *v71 = v177;
                        *(v71 + 4) = v23;
                        *(v71 + 8) = v53;
                        *(v71 + 12) = v62;
                        v64 = (16 * v67 + 16);
                        v72 = (v71 - 16 * v70);
                        memcpy(v72, v65, v66);
                        v73 = __p[0];
                        __p[0] = v72;
                        __p[1] = v64;
                        v186 = 0;
                        if (v73)
                        {
                          operator delete(v73);
                        }
                      }

                      else
                      {
                        *__p[1] = v177;
                        *(v63 + 1) = v23;
                        v64 = v63 + 4;
                        v63[2] = v53;
                        v63[3] = v62;
                      }

                      __p[1] = v64;
                    }
                  }
                }

                ++v23;
                v21 = *v182;
                v22 = v182[1];
              }

              while (v23 < ((v22 - *v182) >> 4));
              v13 = v176 - 1;
              v20 = *v175;
              v19 = v175[1];
            }

            ++v177;
          }

          while (v177 < ((v19 - v20) >> 4));
          v74 = *__p;
        }

        v75 = 126 - 2 * __clz((*(&v74 + 1) - v74) >> 4);
        __src = abpk::compareCandidate;
        if (*(&v74 + 1) == v74)
        {
          v76 = 0;
        }

        else
        {
          v76 = v75;
        }

        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*,false>(v74, *(&v74 + 1), &__src, v76, 1);
        v77 = __p[0];
        v78 = __p[1];
        if (((__p[1] - __p[0]) >> 4) >= 1)
        {
          v79 = 0;
          v80 = v195 + 3 * v174;
          v81 = v80[1];
          do
          {
            v82 = &v77[16 * v79];
            v83 = *v80;
            v84 = v81 - *v80;
            v85 = 0xCCCCCCCCCCCCCCCDLL * (v84 >> 2);
            v86 = *v82;
            if (v85 <= 0)
            {
              v89 = v82[1];
LABEL_59:
              v90 = v82[2];
              v91 = *(*v175 + 16 * v86 + 12);
              v92 = *(*v182 + 16 * v89 + 12);
              v93 = v80[2];
              if (v81 >= v93)
              {
                v94 = v85 + 1;
                if (v85 + 1 > 0xCCCCCCCCCCCCCCCLL)
                {
                  std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
                }

                v95 = 0xCCCCCCCCCCCCCCCDLL * ((v93 - v83) >> 2);
                if (2 * v95 > v94)
                {
                  v94 = 2 * v95;
                }

                if (v95 >= 0x666666666666666)
                {
                  v96 = 0xCCCCCCCCCCCCCCCLL;
                }

                else
                {
                  v96 = v94;
                }

                if (v96)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<abpk::Connection>>(v80, v96);
                }

                v97 = (4 * (v84 >> 2));
                *v97 = v91;
                v97[1] = v92;
                v97[2] = v90;
                v97[3] = v86;
                v97[4] = v89;
                v81 = v97 + 5;
                v98 = v97 - v84;
                memcpy(v97 - v84, v83, v84);
                v99 = *v80;
                *v80 = v98;
                v80[1] = v81;
                v80[2] = 0;
                if (v99)
                {
                  operator delete(v99);
                }
              }

              else
              {
                *v81 = v91;
                v81[1] = v92;
                v81[2] = v90;
                v81[3] = v86;
                v81[4] = v89;
                v81 += 5;
              }

              v13 = v176 - 1;
              v80[1] = v81;
              v77 = __p[0];
              v78 = __p[1];
            }

            else
            {
              v87 = v85 & 0x7FFFFFFF;
              v88 = v83 + 4;
              while (*(v88 - 1) != v86)
              {
                v89 = v82[1];
                if (*v88 == v89)
                {
                  break;
                }

                v88 += 5;
                if (!--v87)
                {
                  goto LABEL_59;
                }
              }

              v13 = v176 - 1;
            }

            ++v79;
          }

          while (v79 < ((v78 - v77) >> 4));
        }

        if (v77)
        {
          __p[1] = v77;
          operator delete(v77);
        }
      }
    }

    v12 = v174 + 1;
  }

  while (v174 != 15);
  v100 = 0;
  v101 = 4 * v176;
  v192 = 0;
  __src = 0;
  v193 = 0;
  do
  {
    v183 = v100;
    v102 = v195 + 3 * v100;
    v103 = *v102;
    if ((-858993459 * ((v102[1] - *v102) >> 2)) >= 1)
    {
      v104 = 0;
      v105 = &abpk::bones[2 * v100];
      v107 = *v105;
      v106 = v105[1];
      do
      {
        v108 = v192;
        v109 = __src;
        v110 = -1431655765 * ((v192 - __src) >> 3);
        if (v110 < 1)
        {
          goto LABEL_101;
        }

        v111 = 0;
        v112 = 0;
        v113 = 0;
        v114 = 0;
        v115 = v103 + 20 * v104;
        v116 = v110 & 0x7FFFFFFF;
        v117 = __src;
        do
        {
          if (*(*v117 + 4 * v107) == *v115 || *(*v117 + 4 * v106) == *(v115 + 4))
          {
            if (!v114)
            {
              v113 = v111;
            }

            if (v114 == 1)
            {
              v112 = v111;
            }

            ++v114;
          }

          ++v111;
          v117 += 3;
        }

        while (v116 != v111);
        if (v114)
        {
          v118 = v113;
          if (v114 == 1)
          {
            v129 = *(__src + 3 * v113);
            v130 = *(v115 + 4);
            if (*(v129 + 4 * v106) != v130)
            {
              *(v129 + 4 * v106) = v130;
              *(v129 + 4 * v176) = *(v129 + 4 * v176) + 1.0;
              _H0 = *(v187 + 8 * v130 + 4);
              __asm { FCVT            S0, H0 }

              *(v129 + 4 * v13) = *(v129 + 4 * v13) + (*(v115 + 8) + _S0);
            }
          }

          else if (v114 == 2)
          {
            if (v13)
            {
              v119 = 0;
              v120 = (__src + 24 * v118);
              v121 = (__src + 24 * v112);
              v122 = 1;
              do
              {
                while (*(*v120 + 4 * v119) > 0.0 && *(*v121 + 4 * v119) > 0.0)
                {
                  v122 = 0;
                  if (v176 - 2 == v119++)
                  {
                    goto LABEL_121;
                  }
                }

                ++v119;
              }

              while (v13 != v119);
              if ((v122 & 1) == 0)
              {
LABEL_121:
                v144 = *(v115 + 4);
                v145 = *v120;
                *(*v120 + 4 * v106) = v144;
                *(v145 + 4 * v176) = *(v145 + 4 * v176) + 1.0;
                _H0 = *(v187 + 8 * v144 + 4);
                __asm { FCVT            S0, H0 }

                *(v145 + 4 * v13) = *(v145 + 4 * v13) + (*(v115 + 8) + _S0);
                goto LABEL_122;
              }

              v133 = 0;
              v134 = *v121;
              v135 = *v120;
              do
              {
                *(v135 + 4 * v133) = (*(v134 + 4 * v133) + 1.0) + *(v135 + 4 * v133);
                ++v133;
              }

              while (v13 != v133);
            }

            else
            {
              v134 = *(__src + 3 * v112);
              v135 = *(__src + 3 * v118);
            }

            v136 = v101;
            *(v135 + 4 * v176) = *(v134 + 4 * v176) + *(v135 + 4 * v176);
            v137 = *(v134 + 4 * v13) + *(v135 + 4 * v13);
            *(v135 + 4 * v13) = v137;
            *(v135 + 4 * v13) = v137 + *(v103 + 20 * v104 + 8);
            v138 = v109 + 24 * v112;
            if ((v138 + 24) != v108)
            {
              do
              {
                v139 = v138 + 24;
                std::vector<float>::__move_assign(v138, (v138 + 24));
                v140 = v138 + 48;
                v138 += 24;
              }

              while (v140 != v108);
              v108 = v192;
              v138 = v139;
            }

            if (v108 != v138)
            {
              v141 = v108;
              do
              {
                v143 = *(v141 - 3);
                v141 -= 24;
                v142 = v143;
                if (v143)
                {
                  *(v108 - 2) = v142;
                  operator delete(v142);
                }

                v108 = v141;
              }

              while (v141 != v138);
            }

            v192 = v138;
            v101 = v136;
          }
        }

        else
        {
LABEL_101:
          std::vector<float>::vector[abi:ne200100](__p, v176 + 1);
          v123 = __p[0];
          if (v176 != -1)
          {
            memset_pattern16(__p[0], &unk_23EE28350, v101 + 4);
          }

          v124 = (*v102 + 20 * v104);
          v125 = *v124;
          v123[v107] = v125;
          v126 = *(v124 + 1);
          v123[v106] = v126;
          v123[v176] = 2.0;
          _H0 = *(v187 + 8 * v125 + 4) + *(v187 + 8 * v126 + 4);
          __asm { FCVT            S0, H0 }

          v123[v13] = v124[2] + _S0;
          std::vector<std::vector<float>>::push_back[abi:ne200100](&__src, __p);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

LABEL_122:
        ++v104;
        v103 = *v102;
      }

      while (v104 < (-858993459 * ((v102[1] - *v102) >> 2)));
    }

    v100 = v183 + 1;
  }

  while (v183 != 15);
  v148 = v192;
  v149 = (v192 - __src) >> 3;
  v150 = 0xAAAAAAAAAAAAAAABLL * v149;
  if (-1431655765 * v149 >= 1)
  {
    v151 = v150 & 0x7FFFFFFF;
    do
    {
      v152 = *(__src + 3 * v151 - 3);
      v153 = *(v152 + 4 * v176);
      if (v153 < 8.0 || (*(v152 + 4 * v13) / v153) < 0.3)
      {
        v154 = __src + 24 * v151 - 24;
        if (v154 + 24 == v148)
        {
          v157 = v148;
          v148 = __src + 24 * v151 - 24;
        }

        else
        {
          do
          {
            v155 = v154 + 24;
            std::vector<float>::__move_assign(v154, (v154 + 24));
            v156 = v154 + 48;
            v154 += 24;
          }

          while (v156 != v148);
          v157 = v192;
          v148 = v155;
        }

        if (v157 != v148)
        {
          v158 = v157;
          do
          {
            v160 = *(v158 - 3);
            v158 -= 24;
            v159 = v160;
            if (v160)
            {
              *(v157 - 2) = v159;
              operator delete(v159);
            }

            v157 = v158;
          }

          while (v158 != v148);
        }

        v192 = v148;
      }
    }

    while (v151-- > 1);
    v150 = 0xAAAAAAAAAAAAAAABLL * ((v148 - __src) >> 3);
  }

  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  std::vector<abpk::Human>::reserve(a9, v150);
  if (v192 != __src)
  {
    v162 = 0;
    __asm { FMOV            V8.2S, #-1.0 }

    do
    {
      v184 = *(a5 + 8);
      __p[1] = 0;
      v186 = 0;
      __p[0] = 0;
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(__p, 0x11uLL);
      v164 = 0;
      v165 = vrev64_s32(vcvt_f32_f64(vcvtq_f64_u64(v184)));
      do
      {
        if (*(*(__src + 3 * v162) + v164) < 0)
        {
          v194 = _D8;
        }

        else
        {
          v194 = vdiv_f32(vcvt_f32_s32(*(v187 + 16 * *(*(__src + 3 * v162) + v164))), v165);
        }

        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(__p, &v194);
        v164 += 4;
      }

      while (v164 != 68);
      v166 = a9[1];
      if (v166 >= a9[2])
      {
        v167 = _ZNSt3__16vectorIN4abpk5HumanENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_IDv2_fNS3_IS7_EEEEEEEPS2_DpOT_(a9, __p);
      }

      else
      {
        _ZNSt3__19allocatorIN4abpk5HumanEE9constructB8ne200100IS2_JNS_6vectorIDv2_fNS0_IS6_EEEEEEEvPT_DpOT0_(a9, a9[1], __p);
        v167 = v166 + 120;
      }

      a9[1] = v167;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v162;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v192 - __src) >> 3) > v162);
  }

  __p[0] = &__src;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
  v168 = 48;
  do
  {
    v169 = (&v192)[v168];
    if (v169)
    {
      *(&v193 + v168 * 8) = v169;
      operator delete(v169);
    }

    v168 -= 3;
  }

  while (v168 * 8);
  if (v187)
  {
    v188[0] = v187;
    operator delete(v187);
  }

  v170 = 51;
  do
  {
    v171 = v188[v170 - 1];
    if (v171)
    {
      v188[v170] = v171;
      operator delete(v171);
    }

    v170 -= 3;
  }

  while (v170 * 8);
  v172 = *MEMORY[0x277D85DE8];
}

void sub_23EDE4554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  a23 = a10;
  std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](&a23);
  a23 = &STACK[0x240];
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a23);
  v28 = 384;
  while (1)
  {
    v29 = *(&STACK[0x260] + v28 - 24);
    if (v29)
    {
      *(&STACK[0x260] + v28 - 16) = v29;
      operator delete(v29);
    }

    v28 -= 24;
    if (!v28)
    {
      if (__p)
      {
        a27 = __p;
        operator delete(__p);
      }

      v30 = 408;
      while (1)
      {
        v31 = *(&__p + v30);
        if (v31)
        {
          *(&a27 + v30) = v31;
          operator delete(v31);
        }

        v30 -= 24;
        if (!v30)
        {
          _Unwind_Resume(a1);
        }
      }
    }
  }
}

BOOL abpk::compareCandidate(uint64_t a1, int a2, uint64_t a3, int a4)
{
  return *&a2 > *&a4;
}

{
  return *&a2 > *&a4;
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void *std::vector<abpk::Human>::reserve(void *result, unint64_t a2)
{
  if (0xEEEEEEEEEEEEEEEFLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x222222222222223)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<abpk::Human>>(result, a2);
    }

    std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23EDE47A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<abpk::Human>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *_ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(result, a2);
    }

    std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<abpk::peak>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_OWORD *std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<abpk::peak *>,std::__wrap_iter<abpk::peak *>,BOOL (*&)(abpk::peak const&,abpk::peak const&)>(_OWORD *a1, _OWORD *a2, uint64_t (**a3)(void))
{
  v4 = a2;
  if (a1 != a2)
  {
    while (1)
    {
      v6 = a1 + 1;
      if (a1 + 1 == a2)
      {
        break;
      }

      v7 = (*a3)();
      a1 = v6;
      if (v7)
      {
        v8 = v6 - 1;
        goto LABEL_6;
      }
    }

    v8 = a2;
LABEL_6:
    v4 = a2;
    if (v8 != a2)
    {
      for (i = v8 + 2; i != a2; ++i)
      {
        if (((*a3)(v8, i) & 1) == 0)
        {
          v8[1] = *i;
          ++v8;
        }
      }

      return v8 + 1;
    }
  }

  return v4;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*,false>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, char a5)
{
LABEL_1:
  v53 = a2 - 4;
  v54 = a2 - 2;
  v52 = a2 - 6;
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v47 = *(a2 - 2);
        v48 = *(a2 - 1);
        v49 = a2 - 2;
        if ((*a3)(v47, v48, *v9, v9[1]))
        {
          v73 = *v9;
          *v9 = *v49;
          *v49 = v73;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*,0>(v9, v9 + 2, v9 + 4, v54, a3);
      return;
    }

    if (v12 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*,0>(v9, v9 + 2, v9 + 4, v9 + 6, v54, a3);
      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*>(v9, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*>(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*,abpk::Candidate*>(v9, a2, a2, a3);
      }

      return;
    }

    v13 = &v9[2 * (v12 >> 1)];
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(*v13, v13[1], *v9, v9[1]);
      v16 = (*a3)(*(a2 - 2), *(a2 - 1), *v13, v13[1]);
      if (v15)
      {
        if (v16)
        {
          v55 = *v9;
          v17 = a2 - 2;
          *v9 = *v54;
          goto LABEL_28;
        }

        v61 = *v9;
        *v9 = *v13;
        *v13 = v61;
        if ((*a3)(*(a2 - 2), *(a2 - 1), *v13, v13[1]))
        {
          v55 = *v13;
          v17 = a2 - 2;
          *v13 = *v54;
LABEL_28:
          *v17 = v55;
        }
      }

      else if (v16)
      {
        v57 = *v13;
        *v13 = *v54;
        *v54 = v57;
        if ((*a3)(*v13, v13[1], *v9, v9[1]))
        {
          v58 = *v9;
          *v9 = *v13;
          *v13 = v58;
        }
      }

      v21 = (v9 + 2);
      v22 = v13 - 2;
      v23 = (*a3)(*(v13 - 2), *(v13 - 1), a1[2], a1[3]);
      v24 = (*a3)(*(a2 - 4), *(a2 - 3), *(v13 - 2), *(v13 - 1));
      if (v23)
      {
        if (v24)
        {
          v25 = *v21;
          v26 = a2 - 4;
          *v21 = *v53;
          goto LABEL_42;
        }

        v28 = *v21;
        *v21 = *v22;
        *v22 = v28;
        if ((*a3)(*(a2 - 4), *(a2 - 3), *v22, *(v13 - 1)))
        {
          v64 = *v22;
          v26 = a2 - 4;
          *v22 = *v53;
          v25 = v64;
LABEL_42:
          *v26 = v25;
        }
      }

      else if (v24)
      {
        v62 = *v22;
        *v22 = *v53;
        *v53 = v62;
        if ((*a3)(*v22, *(v13 - 1), a1[2], a1[3]))
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
        }
      }

      v29 = (a1 + 4);
      v30 = v13 + 2;
      v31 = (*a3)(v13[2], v13[3], a1[4], a1[5]);
      v32 = (*a3)(*(a2 - 6), *(a2 - 5), v13[2], v13[3]);
      if (v31)
      {
        if (v32)
        {
          v33 = *v29;
          v34 = a2 - 6;
          *v29 = *v52;
          goto LABEL_51;
        }

        v36 = *v29;
        *v29 = *v30;
        *v30 = v36;
        if ((*a3)(*(a2 - 6), *(a2 - 5), *v30, v13[3]))
        {
          v66 = *v30;
          v34 = a2 - 6;
          *v30 = *v52;
          v33 = v66;
LABEL_51:
          *v34 = v33;
        }
      }

      else if (v32)
      {
        v65 = *v30;
        *v30 = *v52;
        *v52 = v65;
        if ((*a3)(*v30, v13[3], a1[4], a1[5]))
        {
          v35 = *v29;
          *v29 = *v30;
          *v30 = v35;
        }
      }

      v37 = (*a3)(*v13, v13[1], *v22, *(v13 - 1));
      v38 = (*a3)(*v30, v13[3], *v13, v13[1]);
      if (v37)
      {
        if (v38)
        {
          v67 = *v22;
          *v22 = *v30;
          goto LABEL_60;
        }

        v70 = *v22;
        *v22 = *v13;
        *v13 = v70;
        if ((*a3)(*v30, v13[3], *v13, v13[1]))
        {
          v67 = *v13;
          *v13 = *v30;
LABEL_60:
          *v30 = v67;
        }
      }

      else if (v38)
      {
        v68 = *v13;
        *v13 = *v30;
        *v30 = v68;
        if ((*a3)(*v13, v13[1], *v22, *(v13 - 1)))
        {
          v69 = *v22;
          *v22 = *v13;
          *v13 = v69;
        }
      }

      v71 = *a1;
      *a1 = *v13;
      *v13 = v71;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v18 = v14(*v9, v9[1], *v13, v13[1]);
    v19 = (*a3)(*(a2 - 2), *(a2 - 1), *v9, v9[1]);
    if (v18)
    {
      if (v19)
      {
        v56 = *v13;
        v20 = a2 - 2;
        *v13 = *v54;
        goto LABEL_37;
      }

      v63 = *v13;
      *v13 = *v9;
      *v9 = v63;
      if ((*a3)(*(a2 - 2), *(a2 - 1), *v9, v9[1]))
      {
        v56 = *v9;
        v20 = a2 - 2;
        *v9 = *v54;
LABEL_37:
        *v20 = v56;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (!v19)
    {
      goto LABEL_38;
    }

    v59 = *v9;
    *v9 = *v54;
    *v54 = v59;
    if (!(*a3)(*v9, v9[1], *v13, v13[1]))
    {
      goto LABEL_38;
    }

    v60 = *v13;
    *v13 = *v9;
    *v9 = v60;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (((*a3)(*(a1 - 2), *(a1 - 1), *a1, a1[1]) & 1) == 0)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,abpk::Candidate *,BOOL (*&)(abpk::Candidate,abpk::Candidate)>(a1, a2, a3);
      goto LABEL_68;
    }

LABEL_63:
    v39 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,abpk::Candidate *,BOOL (*&)(abpk::Candidate,abpk::Candidate)>(a1, a2, a3);
    if ((v40 & 1) == 0)
    {
      goto LABEL_66;
    }

    v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*>(a1, v39, a3);
    v9 = v39 + 2;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*>(v39 + 2, a2, a3))
    {
      a4 = -v11;
      a2 = v39;
      if (v41)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v41)
    {
LABEL_66:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*,false>(a1, v39, a3, -v11, a5 & 1);
      v9 = v39 + 2;
LABEL_68:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  v42 = v9 + 2;
  v43 = (*a3)(v9[2], v9[3], *v9, v9[1]);
  v44 = a2 - 2;
  v45 = (*a3)(*(a2 - 2), *(a2 - 1), v9[2], v9[3]);
  if (v43)
  {
    if (v45)
    {
      v72 = *v9;
      *v9 = *v44;
      v46 = v72;
    }

    else
    {
      v75 = *v9;
      *v9 = *v42;
      *v42 = v75;
      if (!(*a3)(*(a2 - 2), *(a2 - 1), v9[2], v9[3]))
      {
        return;
      }

      v46 = *v42;
      *v42 = *v44;
    }

    *v44 = v46;
  }

  else if (v45)
  {
    v51 = *v42;
    *v42 = *v44;
    *v44 = v51;
    if ((*a3)(v9[2], v9[3], *v9, v9[1]))
    {
      v74 = *v9;
      *v9 = *v42;
      *v42 = v74;
    }
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*,0>(void *a1, void *a2, void *a3, void *a4, uint64_t (**a5)(void, void, void, void))
{
  v10 = (*a5)(*a2, a2[1], *a1, a1[1]);
  v11 = (*a5)(*a3, a3[1], *a2, a2[1]);
  if (v10)
  {
    if (v11)
    {
      v12 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      goto LABEL_10;
    }

    v15 = *a1;
    *a1 = *a2;
    *a2 = v15;
    if ((*a5)(*a3, a3[1], *a2, a2[1]))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, a2[1], *a1, a1[1]))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

LABEL_10:
  if ((*a5)(*a4, a4[1], *a3, a3[1]))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a5)(*a3, a3[1], *a2, a2[1]))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a5)(*a2, a2[1], *a1, a1[1]))
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*,0>(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t (**a6)(void, void, void, void))
{
  v12 = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*,0>(a1, a2, a3, a4, a6);
  if ((*a6)(*a5, a5[1], *a4, a4[1], v12))
  {
    v14 = *a4;
    *a4 = *a5;
    *a5 = v14;
    if ((*a6)(*a4, a4[1], *a3, a3[1]))
    {
      v15 = *a3;
      *a3 = *a4;
      *a4 = v15;
      if ((*a6)(*a3, a3[1], *a2, a2[1]))
      {
        v16 = *a2;
        *a2 = *a3;
        *a3 = v16;
        if ((*a6)(*a2, a2[1], *a1, a1[1]))
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*>(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v5;
        result = (*a3)(v8[2], v8[3], *v8, v8[1]);
        if (result)
        {
          v10 = *v9;
          v11 = v8[3];
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 16) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v10, v11, *(v4 + v12 - 16), *(v4 + v12 - 8));
            v12 -= 16;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 16);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v10;
          v13[1] = v11;
        }

        v5 = v9 + 2;
        v7 += 16;
        v8 = v9;
      }

      while (v9 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*>(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      do
      {
        v7 = v5;
        result = (*a3)(v4[2], v4[3], *v4, v4[1]);
        if (result)
        {
          v8 = *v7;
          v9 = v4[3];
          v10 = v7;
          do
          {
            v11 = v10 - 1;
            *v10 = *(v10 - 1);
            result = (*a3)(v8, v9, *(v10 - 4), *(v10 - 3));
            v10 = v11;
          }

          while ((result & 1) != 0);
          *v11 = v8;
          v11[1] = v9;
        }

        v5 = v7 + 2;
        v4 = v7;
      }

      while (v7 + 2 != a2);
    }
  }

  return result;
}

void *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,abpk::Candidate *,BOOL (*&)(abpk::Candidate,abpk::Candidate)>(void *a1, _OWORD *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  v7 = a1[1];
  if ((*a3)(*a1, v7, *(a2 - 2), *(a2 - 1)))
  {
    v8 = a1;
    do
    {
      v9 = v8[2];
      v10 = v8[3];
      v8 += 2;
    }

    while (((*a3)(v6, v7, v9, v10) & 1) == 0);
  }

  else
  {
    v11 = a1 + 2;
    do
    {
      v8 = v11;
      if (v11 >= v4)
      {
        break;
      }

      v12 = (*a3)(v6, v7, *v11, v11[1]);
      v11 = v8 + 2;
    }

    while (!v12);
  }

  if (v8 < v4)
  {
    do
    {
      v13 = *(v4 - 2);
      v14 = *(v4-- - 1);
    }

    while (((*a3)(v6, v7, v13, v14) & 1) != 0);
  }

  while (v8 < v4)
  {
    v20 = *v8;
    *v8 = *v4;
    *v4 = v20;
    do
    {
      v15 = v8[2];
      v16 = v8[3];
      v8 += 2;
    }

    while (!(*a3)(v6, v7, v15, v16));
    do
    {
      v17 = *(v4 - 2);
      v18 = *(v4-- - 1);
    }

    while (((*a3)(v6, v7, v17, v18) & 1) != 0);
  }

  if (v8 - 2 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 2) = v6;
  *(v8 - 1) = v7;
  return v8;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,abpk::Candidate *,BOOL (*&)(abpk::Candidate,abpk::Candidate)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  v8 = a1[1];
  do
  {
    v9 = (*a3)(a1[v6 + 2], a1[v6 + 3], v7, v8);
    v6 += 2;
  }

  while ((v9 & 1) != 0);
  v10 = &a1[v6];
  if (v6 == 2)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v13 = *(a2 - 2);
      v14 = *(a2 - 1);
      a2 -= 2;
    }

    while (((*a3)(v13, v14, v7, v8) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *(a2 - 2);
      v12 = *(a2 - 1);
      a2 -= 2;
    }

    while (!(*a3)(v11, v12, v7, v8));
  }

  v15 = &a1[v6];
  if (v10 < a2)
  {
    v16 = a2;
    do
    {
      v17 = *v15;
      *v15 = *v16;
      *v16 = v17;
      do
      {
        v18 = v15[2];
        v19 = v15[3];
        v15 += 2;
      }

      while (((*a3)(v18, v19, v7, v8) & 1) != 0);
      do
      {
        v20 = *(v16 - 2);
        v21 = *(v16 - 1);
        v16 -= 2;
      }

      while (!(*a3)(v20, v21, v7, v8));
    }

    while (v15 < v16);
  }

  result = v15 - 2;
  if (v15 - 2 != a1)
  {
    *a1 = *result;
  }

  *(v15 - 2) = v7;
  *(v15 - 1) = v8;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*>(void *a1, char *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a1 + 2;
        v10 = (*a3)(a1[2], a1[3], *a1, a1[1]);
        v11 = a2 - 16;
        v12 = (*a3)(*(a2 - 2), *(a2 - 1), *v9, a1[3]);
        if ((v10 & 1) == 0)
        {
          if (v12)
          {
            v19 = *v9;
            *v9 = *v11;
            *v11 = v19;
            if ((*a3)(a1[2], a1[3], *a1, a1[1]))
            {
              v20 = *a1;
              *a1 = *v9;
              *v9 = v20;
            }
          }

          return 1;
        }

        if (v12)
        {
          v13 = *a1;
          *a1 = *v11;
        }

        else
        {
          v23 = *a1;
          *a1 = *v9;
          *v9 = v23;
          if (!(*a3)(*(a2 - 2), *(a2 - 1), a1[2], a1[3]))
          {
            return 1;
          }

          v13 = *v9;
          *v9 = *v11;
        }

        *v11 = v13;
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        break;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 16;
    if ((*a3)(*(a2 - 2), *(a2 - 1), *a1, a1[1]))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v15 = (*a3)(a1[2], a1[3], *a1, a1[1]);
  v16 = (a1 + 4);
  v17 = (*a3)(a1[4], a1[5], *v14, a1[3]);
  if (v15)
  {
    if (v17)
    {
      v18 = *a1;
      *a1 = *v16;
    }

    else
    {
      v24 = *a1;
      *a1 = *v14;
      *v14 = v24;
      if (!(*a3)(a1[4], a1[5], a1[2], a1[3]))
      {
        goto LABEL_29;
      }

      v18 = *v14;
      *v14 = *v16;
    }

    *v16 = v18;
  }

  else if (v17)
  {
    v21 = *v14;
    *v14 = *v16;
    *v16 = v21;
    if ((*a3)(a1[2], a1[3], *a1, a1[1]))
    {
      v22 = *a1;
      *a1 = *v14;
      *v14 = v22;
    }
  }

LABEL_29:
  v25 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    if ((*a3)(*v25, *(v25 + 1), *v16, *(v16 + 1)))
    {
      v28 = *v25;
      v29 = *(v25 + 1);
      v30 = v26;
      while (1)
      {
        v31 = a1 + v30;
        *(a1 + v30 + 48) = *(a1 + v30 + 32);
        if (v30 == -32)
        {
          break;
        }

        v30 -= 16;
        if (((*a3)(v28, v29, *(v31 + 2), *(v31 + 3)) & 1) == 0)
        {
          v32 = (a1 + v30 + 48);
          goto LABEL_37;
        }
      }

      v32 = a1;
LABEL_37:
      *v32 = v28;
      v32[1] = v29;
      if (++v27 == 8)
      {
        return v25 + 16 == a2;
      }
    }

    v16 = v25;
    v26 += 16;
    v25 += 16;
    if (v25 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*,abpk::Candidate*>(char *a1, char *a2, char *a3, uint64_t (**a4)(void, void, uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[16 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*>(a1, a4, v8, v11);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *(v12 + 1), *a1, *(a1 + 1)))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*>(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 16;
      do
      {
        v18 = *a1;
        v15 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*>(a1, a4, v8);
        if (v14 == v15)
        {
          *v15 = v18;
        }

        else
        {
          *v15 = *v14;
          *v14 = v18;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*>(a1, (v15 + 16), a4, (v15 + 16 - a1) >> 4);
        }

        v14 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*>(uint64_t result, unsigned int (**a2)(void, void, void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v17 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v9 = (a4 - result) >> 3;
      v10 = v9 + 1;
      v11 = (result + 16 * (v9 + 1));
      v12 = v9 + 2;
      if (v9 + 2 < a3 && (*a2)(*v11, v11[1], v11[2], v11[3]))
      {
        v11 += 2;
        v10 = v12;
      }

      result = (*a2)(*v11, v11[1], *v5, v5[1]);
      if ((result & 1) == 0)
      {
        v13 = *v5;
        v14 = v5[1];
        do
        {
          v15 = v11;
          *v5 = *v11;
          if (v17 < v10)
          {
            break;
          }

          v16 = (2 * v10) | 1;
          v11 = (v6 + 16 * v16);
          if (2 * v10 + 2 < a3)
          {
            if ((*a2)(*v11, v11[1], v11[2], v11[3]))
            {
              v11 += 2;
              v16 = 2 * v10 + 2;
            }
          }

          result = (*a2)(*v11, v11[1], v13, v14);
          v5 = v15;
          v10 = v16;
        }

        while (!result);
        *v15 = v13;
        v15[1] = v14;
      }
    }
  }

  return result;
}

_OWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*>(_OWORD *a1, unsigned int (**a2)(void, void, uint64_t, void), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = *(v8 + 4);
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 2), *(v12 - 1), v13, *(v12 + 1)))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*>(uint64_t result, uint64_t a2, uint64_t (**a3)(void, void, uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = result;
    v8 = v4 >> 1;
    v9 = (result + 16 * (v4 >> 1));
    v10 = (a2 - 16);
    result = (*a3)(*v9, v9[1], *(a2 - 16), *(a2 - 8));
    if (result)
    {
      v11 = *(a2 - 16);
      v12 = *(a2 - 8);
      do
      {
        v13 = v9;
        *v10 = *v9;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (v7 + 16 * v8);
        result = (*a3)(*v9, v9[1], v11, v12);
        v10 = v13;
      }

      while ((result & 1) != 0);
      *v13 = v11;
      v13[1] = v12;
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<abpk::Connection>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<float>>::clear[abi:ne200100](uint64_t *a1)
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

__n128 std::vector<float>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23EDE6150(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::vector<float>>::__construct_one_at_end[abi:ne200100]<std::vector<float> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<float>>::~__split_buffer(&v14);
  return v8;
}

void sub_23EDE6360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23EDE63D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<abpk::Human>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<abpk::Human>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<abpk::Human>>::destroy[abi:ne200100]<abpk::Human,0>(a1, i))
  {
    i -= 120;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<abpk::Human>>::destroy[abi:ne200100]<abpk::Human,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 96) == 1)
  {
    v3 = *(a2 + 72);
    if (v3)
    {
      *(a2 + 80) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a2 + 48);
  if (v4)
  {
    *(a2 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    *(a2 + 32) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v6;

    operator delete(v6);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<abpk::Human>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<abpk::Human>,abpk::Human*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = a2 + v7;
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = *(a2 + v7);
      *(v8 + 16) = *(a2 + v7 + 16);
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 24) = *(a2 + v7 + 24);
      *(v8 + 40) = *(a2 + v7 + 40);
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 48) = *(a2 + v7 + 48);
      *(v8 + 64) = *(a2 + v7 + 64);
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(a4 + v7 + 72) = 0;
      *(v8 + 96) = 0;
      if (*(a2 + v7 + 96) == 1)
      {
        *(a4 + v7 + 72) = 0;
        *(a4 + v7 + 80) = 0;
        *(a4 + v7 + 88) = 0;
        *(v8 + 72) = *(v9 + 72);
        *(v8 + 88) = *(v9 + 88);
        *(v9 + 72) = 0;
        *(v9 + 80) = 0;
        *(v9 + 88) = 0;
        *(v8 + 96) = 1;
      }

      v10 = *(v9 + 104);
      *(v8 + 109) = *(v9 + 109);
      *(v8 + 104) = v10;
      v7 += 120;
    }

    while (v9 + 120 != a3);
    v15 = a4 + v7;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<abpk::Human>>::destroy[abi:ne200100]<abpk::Human,0>(a1, v5);
      v5 += 120;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<abpk::Human>,abpk::Human*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<abpk::Human>,abpk::Human*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<abpk::Human>,abpk::Human*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<abpk::Human>,abpk::Human*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 120;
      std::allocator_traits<std::allocator<abpk::Human>>::destroy[abi:ne200100]<abpk::Human,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<abpk::Human>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<abpk::Human>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<abpk::Human>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 120;
    std::allocator_traits<std::allocator<abpk::Human>>::destroy[abi:ne200100]<abpk::Human,0>(v5, v4 - 120);
  }
}

uint64_t _ZNSt3__16vectorIN4abpk5HumanENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_IDv2_fNS3_IS7_EEEEEEEPS2_DpOT_(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<abpk::Human>>(a1, v6);
  }

  v13 = 0;
  v14 = 120 * v2;
  _ZNSt3__19allocatorIN4abpk5HumanEE9constructB8ne200100IS2_JNS_6vectorIDv2_fNS0_IS6_EEEEEEEvPT_DpOT0_(a1, 120 * v2, a2);
  v15 = 120 * v2 + 120;
  v7 = a1[1];
  v8 = 120 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<abpk::Human>,abpk::Human*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<abpk::Human>::~__split_buffer(&v13);
  return v12;
}

void sub_23EDE6A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<abpk::Human>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__19allocatorIN4abpk5HumanEE9constructB8ne200100IS2_JNS_6vectorIDv2_fNS0_IS6_EEEEEEEvPT_DpOT0_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *__p = *a3;
  v4 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  abpk::Human::Human(a2, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_23EDE6A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double simd_quaternion(simd_float4x4 a1)
{
  v1 = a1.columns[2].f32[2] + (a1.columns[0].f32[0] + a1.columns[1].f32[1]);
  if (v1 >= 0.0)
  {
    a1.columns[3].f32[0] = sqrtf(v1 + 1.0);
    v6 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
    v7 = vmul_f32(v6, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v6));
    *a1.columns[3].f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a1.columns[1], a1.columns[1], 8uLL), *a1.columns[2].f32), vext_s8(*a1.columns[2].f32, *&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), 4uLL)), vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v7)).f32[0]);
  }

  else if (a1.columns[0].f32[0] < a1.columns[1].f32[1] || a1.columns[0].f32[0] < a1.columns[2].f32[2])
  {
    v3 = 1.0 - a1.columns[0].f32[0];
    if (a1.columns[1].f32[1] >= a1.columns[2].f32[2])
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[1].f32[1] + (v3 - a1.columns[2].f32[2]));
      a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
      v15 = vrecpe_f32(a1.columns[3].u32[0]);
      v16 = vmul_f32(v15, vrecps_f32(a1.columns[3].u32[0], v15));
      v17.i32[0] = vmul_f32(v16, vrecps_f32(a1.columns[3].u32[0], v16)).u32[0];
      v16.f32[0] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
      v16.i32[1] = a1.columns[3].i32[0];
      v17.i32[1] = 0.25;
      *a1.columns[3].f32 = vmul_f32(v16, v17);
    }

    else
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[2].f32[2] + (v3 - a1.columns[1].f32[1]));
      v4 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
      v5 = vmul_f32(v4, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v4));
      *a1.columns[3].f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), *&vextq_s8(a1.columns[1], a1.columns[1], 8uLL)), *a1.columns[2].f32), vmul_f32(v5, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v5)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    a1.columns[3].f32[0] = sqrtf(a1.columns[0].f32[0] + ((1.0 - a1.columns[1].f32[1]) - a1.columns[2].f32[2]));
    a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
    v8 = vrecpe_f32(a1.columns[3].u32[0]);
    v9 = vmul_f32(v8, vrecps_f32(a1.columns[3].u32[0], v8));
    v10 = vmul_f32(v9, vrecps_f32(a1.columns[3].u32[0], v9)).u32[0];
    a1.columns[3].f32[1] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v10;
    *a1.columns[3].f32 = vmul_f32(*a1.columns[3].f32, _D5);
  }

  return *a1.columns[3].i64;
}

double simd_matrix4x4(float32x4_t a1)
{
  _S3 = a1.i32[1];
  _S5 = a1.i32[2];
  __asm { FMLS            S2, S5, V0.S[2] }

  _S7 = a1.i32[3];
  __asm { FMLA            S2, S7, V0.S[3] }

  v10 = vmuls_lane_f32(a1.f32[2], a1, 3);
  LODWORD(v11) = _S2;
  *(&v11 + 1) = (v10 + (a1.f32[0] * a1.f32[1])) + (v10 + (a1.f32[0] * a1.f32[1]));
  __asm
  {
    FMLA            S6, S3, V0.S[1]
    FMLA            S6, S7, V0.S[3]
    FMLA            S16, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
    FMLS            S5, S3, V0.S[1]
  }

  return v11;
}

void *std::vector<ABPKTransform>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<ABPKTransform>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23EDE82F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ABPKTransform>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ABPKTransform>>(a1, a2);
  }

  std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ABPKTransform>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<simd_float4x4>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<simd_float4x4>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23EDE83EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<simd_float4x4>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<simd_float4x4>>(a1, a2);
  }

  std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<simd_float4x4>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_23EDE93F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31)
{
  a31 = (v33 - 160);
  std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](&a31);
  *(v33 - 160) = &a27;
  std::vector<abpk::HeatmapPersonData>::__destroy_vector::operator()[abi:ne200100]((v33 - 160));

  _Unwind_Resume(a1);
}

void std::vector<abpk::HeatmapPersonData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 56;
        std::allocator<abpk::HeatmapPersonData>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<abpk::HeatmapPersonData>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

void std::vector<abpk::Human>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 24) == 1)
      {
        v4 = *(v3 - 48);
        if (v4)
        {
          *(v3 - 40) = v4;
          operator delete(v4);
        }
      }

      v5 = *(v3 - 72);
      if (v5)
      {
        *(v3 - 64) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 96);
      if (v6)
      {
        *(v3 - 88) = v6;
        operator delete(v6);
      }

      v7 = v3 - 120;
      v8 = *(v3 - 120);
      if (v8)
      {
        *(v3 - 112) = v8;
        operator delete(v8);
      }

      v3 -= 120;
    }

    while (v7 != v2);
  }

  a1[1] = v2;
}

void abpk::getJointPositionsAndMaximas(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5, unsigned int a6, uint64_t a7, uint64_t a8, float32x4_t a9)
{
  v77 = *a3 - 1;
  if (a5)
  {
    if (*a3 == 1)
    {
      return;
    }

    v71 = *a3 - 1;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v81 = a3[1];
    if (a3[2] <= 1uLL)
    {
      v12 = 1;
    }

    else
    {
      v12 = a3[2];
    }

    v79 = a3[2];
    v80 = 2 * a4[1];
    do
    {
      v75 = v10;
      v76 = v9;
      if (v81)
      {
        v13 = 0;
        v14 = (a7 + 24 * v10);
        v15 = *a4 * v9;
        v16 = a2 + v15;
        v17 = a1 + v15;
        v18 = v79;
        do
        {
          if (v18)
          {
            v19 = 0;
            do
            {
              v20 = *(v17 + 2 * v19);
              if (v20 > COERCE_SHORT_FLOAT(11878) && v20 == *(v16 + 2 * v19))
              {
                v22 = v14[1];
                v23 = v14[2];
                if (v22 >= v23)
                {
                  v25 = *v14;
                  v26 = v22 - *v14;
                  v27 = v26 >> 4;
                  v28 = (v26 >> 4) + 1;
                  if (v28 >> 60)
                  {
                    goto LABEL_73;
                  }

                  v29 = v23 - v25;
                  if (v29 >> 3 > v28)
                  {
                    v28 = v29 >> 3;
                  }

                  if (v29 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v28 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  if (v28)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<abpk::peak>>(v14, v28);
                  }

                  v30 = 16 * v27;
                  *v30 = v19;
                  *(v30 + 4) = v13;
                  *(v30 + 8) = v20;
                  *(v30 + 12) = v11;
                  v24 = 16 * v27 + 16;
                  memcpy(0, v25, v26);
                  v31 = *v14;
                  *v14 = 0;
                  v14[1] = v24;
                  v14[2] = 0;
                  if (v31)
                  {
                    operator delete(v31);
                  }
                }

                else
                {
                  *v22 = v19;
                  *(v22 + 1) = v13;
                  *(v22 + 4) = v20;
                  v24 = (v22 + 16);
                  *(v22 + 3) = v11;
                }

                ++v11;
                v14[1] = v24;
              }

              ++v19;
            }

            while (v12 != v19);
            v18 = v79;
          }

          ++v13;
          v16 += v80;
          v17 += v80;
        }

        while (v13 != v81);
      }

      v10 = v75 + 1;
      v9 = v76 + 2;
    }

    while (v75 + 1 != v77);
    goto LABEL_50;
  }

  v71 = *a3 - 1;
  if (a6)
  {
    v32 = a1 + 4;
    v33 = a6;
    do
    {
      a9.i32[0] = *(v32 - 4);
      a9 = vcvtq_f32_f16(*a9.f32);
      v34 = vcvtq_s32_f32(a9).u64[0];
      v35 = *(v32 + 2);
      v36 = a7 + 24 * *v32;
      v37 = *(v36 + 8);
      v38 = *(v36 + 16);
      if (v37 >= v38)
      {
        v40 = (v37 - *v36) >> 4;
        v41 = v40 + 1;
        if ((v40 + 1) >> 60)
        {
LABEL_73:
          std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
        }

        v42 = v38 - *v36;
        if (v42 >> 3 > v41)
        {
          v41 = v42 >> 3;
        }

        if (v42 >= 0x7FFFFFFFFFFFFFF0)
        {
          v43 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v41;
        }

        if (v43)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<abpk::peak>>(a7 + 24 * *v32, v43);
        }

        v44 = 16 * v40;
        *v44 = v34;
        *(v44 + 8) = v35;
        *(v44 + 12) = 0;
        v39 = 16 * v40 + 16;
        v45 = *(v36 + 8) - *v36;
        v46 = 16 * v40 - v45;
        memcpy((v44 - v45), *v36, v45);
        v47 = *v36;
        *v36 = v46;
        *(v36 + 8) = v39;
        *(v36 + 16) = 0;
        if (v47)
        {
          operator delete(v47);
        }
      }

      else
      {
        *v37 = v34;
        *(v37 + 8) = v35;
        v39 = v37 + 16;
        *(v37 + 12) = 0;
      }

      *(v36 + 8) = v39;
      v32 += 8;
      --v33;
    }

    while (v33);
  }

  if (v71)
  {
    v11 = 0;
LABEL_50:
    v48 = (a7 + 8);
    v49 = v71;
    do
    {
      v50 = *(v48 - 1);
      v51 = *v48;
      v83 = abpk::isDuplicate;
      v52 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<abpk::peak *>,std::__wrap_iter<abpk::peak *>,BOOL (*&)(abpk::peak const&,abpk::peak const&)>(v50, v51, &v83);
      if (v52 != *v48)
      {
        v53 = *v48;
        *v48 = v52;
      }

      v48 += 3;
      --v49;
    }

    while (v49);
    v54 = 0;
    do
    {
      v55 = (a7 + 24 * v54);
      v56 = *v55;
      if (((v55[1] - *v55) >> 4) >= 1)
      {
        v57 = 0;
        v58 = 0;
        v59 = a8;
        v60 = *(a8 + 8);
        do
        {
          v61 = (v56 + v57);
          *(v56 + v57 + 12) = v11 + v58;
          v62 = *(v59 + 16);
          if (v60 >= v62)
          {
            v63 = (v60 - *v59) >> 4;
            if ((v63 + 1) >> 60)
            {
              goto LABEL_73;
            }

            v64 = v62 - *v59;
            v65 = v64 >> 3;
            if (v64 >> 3 <= (v63 + 1))
            {
              v65 = v63 + 1;
            }

            if (v64 >= 0x7FFFFFFFFFFFFFF0)
            {
              v66 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v66 = v65;
            }

            if (v66)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<abpk::peak>>(v59, v66);
            }

            v67 = (16 * v63);
            *v67 = *v61;
            v60 = (16 * v63 + 16);
            v68 = *(v59 + 8) - *v59;
            v69 = v67 - v68;
            memcpy(v67 - v68, *v59, v68);
            v59 = a8;
            v70 = *a8;
            *a8 = v69;
            *(a8 + 8) = v60;
            *(a8 + 16) = 0;
            if (v70)
            {
              operator delete(v70);
              v59 = a8;
            }
          }

          else
          {
            *v60++ = *v61;
          }

          *(v59 + 8) = v60;
          ++v58;
          v56 = *v55;
          v57 += 16;
        }

        while (v58 < ((v55[1] - *v55) >> 4));
        v11 += v58;
      }

      ++v54;
    }

    while (v54 != v77);
  }
}

void abpk::extractHumans(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, char a7@<W6>, unsigned int a8@<W7>, uint64_t *a9@<X8>)
{
  v196 = *MEMORY[0x277D85DE8];
  v190 = 0;
  memset(v189, 0, sizeof(v189));
  v187 = 0;
  v188[0] = 0;
  v188[1] = 0;
  abpk::getJointPositionsAndMaximas(a1, a2, a4, a6, a7, a8, v189, &v187, 0);
  v12 = 0;
  v176 = *a4;
  v13 = *a4 - 1;
  memset(v195, 0, sizeof(v195));
  v14 = 1.0e-12;
  do
  {
    v174 = v12;
    v15 = &abpk::bones[2 * v12];
    v17 = *v15;
    v16 = v15[1];
    __p[0] = 0;
    __p[1] = 0;
    v186 = 0;
    v18 = v189 + 3 * v17;
    v20 = *v18;
    v19 = v18[1];
    v175 = v18;
    if (v19 != *v18)
    {
      v182 = v189 + 3 * v16;
      v21 = *v182;
      v22 = v182[1];
      if (v22 != *v182)
      {
        if (((v19 - v20) >> 4) < 1)
        {
          v74 = 0uLL;
        }

        else
        {
          v177 = 0;
          v178 = (&abpk::s_bonesmap + 8 * v174);
          do
          {
            if (((v22 - v21) >> 4) >= 1)
            {
              v23 = 0;
              v24 = v20 + 16 * v177;
              do
              {
                v25 = (v21 + 16 * v23);
                v26 = (*v25 - *v24);
                v27 = (v25[1] - *(v24 + 4));
                v28 = sqrtf((v27 * v27) + (v26 * v26));
                v29 = v28;
                if (v28 >= v14)
                {
                  v181 = v21 + 16 * v23;
                  v30 = v14;
                  v31 = 0;
                  v32 = 0;
                  v180 = *(a5 + 8);
                  v34 = *v178;
                  v33 = v178[1];
                  v35 = v26 / v28;
                  v36 = v27 / v28;
                  v192 = 0;
                  __src = 0;
                  v193 = 0;
                  v37 = v26 / 10.0;
                  v38 = v27 / 10.0;
                  do
                  {
                    v39 = ((*v24 + (v32 * v37)) + 0.5);
                    *&v40 = (*(v24 + 4) + (v32 * v38)) + 0.5;
                    v41 = a6[1] * *&v40;
                    v40.i16[0] = *(a3 + 2 * *a6 * v34 + 2 * v41 + 2 * v39);
                    v40.i16[1] = *(a3 + 2 * *a6 * v33 + 2 * v41 + 2 * v39);
                    v42 = vcvtq_f32_f16(v40).u64[0];
                    if (v31 >= v193)
                    {
                      v43 = (v31 - __src) >> 3;
                      if ((v43 + 1) >> 61)
                      {
                        std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
                      }

                      v44 = (v193 - __src) >> 2;
                      if (v44 <= v43 + 1)
                      {
                        v44 = v43 + 1;
                      }

                      if (v193 - __src >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v45 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v45 = v44;
                      }

                      if (v45)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v45);
                      }

                      v46 = (8 * v43);
                      *v46 = v42;
                      v31 = (8 * v43 + 8);
                      v47 = v46 - (v192 - __src);
                      memcpy(v47, __src, v192 - __src);
                      v48 = __src;
                      __src = v47;
                      v192 = v31;
                      v193 = 0;
                      if (v48)
                      {
                        operator delete(v48);
                      }
                    }

                    else
                    {
                      *v31++ = v42;
                    }

                    v192 = v31;
                    ++v32;
                  }

                  while (v32 != 10);
                  v49 = 0;
                  v50 = 0;
                  v51 = 0.0;
                  do
                  {
                    v52 = vmuls_lane_f32(v36, *(__src + v49), 1) + (v35 * COERCE_FLOAT(*(__src + v49)));
                    v51 = v51 + v52;
                    if (v52 > 0.05)
                    {
                      ++v50;
                    }

                    v49 += 8;
                  }

                  while (v49 != 80);
                  v192 = __src;
                  operator delete(__src);
                  v14 = v30;
                  if (v50 >= 7)
                  {
                    v53 = fmin(v180 * 0.5 / v29 + -1.0, 0.0) + v51 / 10.0;
                    if (v53 > 0.0)
                    {
                      _H0 = *(v24 + 8);
                      __asm { FCVT            S0, H0 }

                      _H1 = *(v181 + 8);
                      __asm { FCVT            S1, H1 }

                      v62 = (v53 + _S0) + _S1;
                      v63 = __p[1];
                      if (__p[1] >= v186)
                      {
                        v65 = __p[0];
                        v66 = __p[1] - __p[0];
                        v67 = (__p[1] - __p[0]) >> 4;
                        v68 = v67 + 1;
                        if ((v67 + 1) >> 60)
                        {
                          std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
                        }

                        v69 = v186 - __p[0];
                        if ((v186 - __p[0]) >> 3 > v68)
                        {
                          v68 = v69 >> 3;
                        }

                        if (v69 >= 0x7FFFFFFFFFFFFFF0)
                        {
                          v68 = 0xFFFFFFFFFFFFFFFLL;
                        }

                        if (v68)
                        {
                          _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_iEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(__p, v68);
                        }

                        v70 = (__p[1] - __p[0]) >> 4;
                        v71 = 16 * v67;
                        *v71 = v177;
                        *(v71 + 4) = v23;
                        *(v71 + 8) = v53;
                        *(v71 + 12) = v62;
                        v64 = (16 * v67 + 16);
                        v72 = (v71 - 16 * v70);
                        memcpy(v72, v65, v66);
                        v73 = __p[0];
                        __p[0] = v72;
                        __p[1] = v64;
                        v186 = 0;
                        if (v73)
                        {
                          operator delete(v73);
                        }
                      }

                      else
                      {
                        *__p[1] = v177;
                        *(v63 + 1) = v23;
                        v64 = v63 + 4;
                        v63[2] = v53;
                        v63[3] = v62;
                      }

                      __p[1] = v64;
                    }
                  }
                }

                ++v23;
                v21 = *v182;
                v22 = v182[1];
              }

              while (v23 < ((v22 - *v182) >> 4));
              v13 = v176 - 1;
              v20 = *v175;
              v19 = v175[1];
            }

            ++v177;
          }

          while (v177 < ((v19 - v20) >> 4));
          v74 = *__p;
        }

        v75 = 126 - 2 * __clz((*(&v74 + 1) - v74) >> 4);
        __src = abpk::compareCandidate;
        if (*(&v74 + 1) == v74)
        {
          v76 = 0;
        }

        else
        {
          v76 = v75;
        }

        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(abpk::Candidate,abpk::Candidate),abpk::Candidate*,false>(v74, *(&v74 + 1), &__src, v76, 1);
        v77 = __p[0];
        v78 = __p[1];
        if (((__p[1] - __p[0]) >> 4) >= 1)
        {
          v79 = 0;
          v80 = v195 + 3 * v174;
          v81 = v80[1];
          do
          {
            v82 = &v77[16 * v79];
            v83 = *v80;
            v84 = v81 - *v80;
            v85 = 0xCCCCCCCCCCCCCCCDLL * (v84 >> 2);
            v86 = *v82;
            if (v85 <= 0)
            {
              v89 = v82[1];
LABEL_59:
              v90 = v82[2];
              v91 = *(*v175 + 16 * v86 + 12);
              v92 = *(*v182 + 16 * v89 + 12);
              v93 = v80[2];
              if (v81 >= v93)
              {
                v94 = v85 + 1;
                if (v85 + 1 > 0xCCCCCCCCCCCCCCCLL)
                {
                  std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
                }

                v95 = 0xCCCCCCCCCCCCCCCDLL * ((v93 - v83) >> 2);
                if (2 * v95 > v94)
                {
                  v94 = 2 * v95;
                }

                if (v95 >= 0x666666666666666)
                {
                  v96 = 0xCCCCCCCCCCCCCCCLL;
                }

                else
                {
                  v96 = v94;
                }

                if (v96)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<abpk::Connection>>(v80, v96);
                }

                v97 = (4 * (v84 >> 2));
                *v97 = v91;
                v97[1] = v92;
                v97[2] = v90;
                v97[3] = v86;
                v97[4] = v89;
                v81 = v97 + 5;
                v98 = v97 - v84;
                memcpy(v97 - v84, v83, v84);
                v99 = *v80;
                *v80 = v98;
                v80[1] = v81;
                v80[2] = 0;
                if (v99)
                {
                  operator delete(v99);
                }
              }

              else
              {
                *v81 = v91;
                v81[1] = v92;
                v81[2] = v90;
                v81[3] = v86;
                v81[4] = v89;
                v81 += 5;
              }

              v13 = v176 - 1;
              v80[1] = v81;
              v77 = __p[0];
              v78 = __p[1];
            }

            else
            {
              v87 = v85 & 0x7FFFFFFF;
              v88 = v83 + 4;
              while (*(v88 - 1) != v86)
              {
                v89 = v82[1];
                if (*v88 == v89)
                {
                  break;
                }

                v88 += 5;
                if (!--v87)
                {
                  goto LABEL_59;
                }
              }

              v13 = v176 - 1;
            }

            ++v79;
          }

          while (v79 < ((v78 - v77) >> 4));
        }

        if (v77)
        {
          __p[1] = v77;
          operator delete(v77);
        }
      }
    }

    v12 = v174 + 1;
  }

  while (v174 != 17);
  v100 = 0;
  v101 = 4 * v176;
  v192 = 0;
  __src = 0;
  v193 = 0;
  do
  {
    v183 = v100;
    v102 = v195 + 3 * v100;
    v103 = *v102;
    if ((-858993459 * ((v102[1] - *v102) >> 2)) >= 1)
    {
      v104 = 0;
      v105 = &abpk::bones[2 * v100];
      v107 = *v105;
      v106 = v105[1];
      do
      {
        v108 = v192;
        v109 = __src;
        v110 = -1431655765 * ((v192 - __src) >> 3);
        if (v110 < 1)
        {
          goto LABEL_101;
        }

        v111 = 0;
        v112 = 0;
        v113 = 0;
        v114 = 0;
        v115 = v103 + 20 * v104;
        v116 = v110 & 0x7FFFFFFF;
        v117 = __src;
        do
        {
          if (*(*v117 + 4 * v107) == *v115 || *(*v117 + 4 * v106) == *(v115 + 4))
          {
            if (!v114)
            {
              v113 = v111;
            }

            if (v114 == 1)
            {
              v112 = v111;
            }

            ++v114;
          }

          ++v111;
          v117 += 3;
        }

        while (v116 != v111);
        if (v114)
        {
          v118 = v113;
          if (v114 == 1)
          {
            v129 = *(__src + 3 * v113);
            v130 = *(v115 + 4);
            if (*(v129 + 4 * v106) != v130)
            {
              *(v129 + 4 * v106) = v130;
              *(v129 + 4 * v176) = *(v129 + 4 * v176) + 1.0;
              _H0 = *(v187 + 8 * v130 + 4);
              __asm { FCVT            S0, H0 }

              *(v129 + 4 * v13) = *(v129 + 4 * v13) + (*(v115 + 8) + _S0);
            }
          }

          else if (v114 == 2)
          {
            if (v13)
            {
              v119 = 0;
              v120 = (__src + 24 * v118);
              v121 = (__src + 24 * v112);
              v122 = 1;
              do
              {
                while (*(*v120 + 4 * v119) > 0.0 && *(*v121 + 4 * v119) > 0.0)
                {
                  v122 = 0;
                  if (v176 - 2 == v119++)
                  {
                    goto LABEL_121;
                  }
                }

                ++v119;
              }

              while (v13 != v119);
              if ((v122 & 1) == 0)
              {
LABEL_121:
                v144 = *(v115 + 4);
                v145 = *v120;
                *(*v120 + 4 * v106) = v144;
                *(v145 + 4 * v176) = *(v145 + 4 * v176) + 1.0;
                _H0 = *(v187 + 8 * v144 + 4);
                __asm { FCVT            S0, H0 }

                *(v145 + 4 * v13) = *(v145 + 4 * v13) + (*(v115 + 8) + _S0);
                goto LABEL_122;
              }

              v133 = 0;
              v134 = *v121;
              v135 = *v120;
              do
              {
                *(v135 + 4 * v133) = (*(v134 + 4 * v133) + 1.0) + *(v135 + 4 * v133);
                ++v133;
              }

              while (v13 != v133);
            }

            else
            {
              v134 = *(__src + 3 * v112);
              v135 = *(__src + 3 * v118);
            }

            v136 = v101;
            *(v135 + 4 * v176) = *(v134 + 4 * v176) + *(v135 + 4 * v176);
            v137 = *(v134 + 4 * v13) + *(v135 + 4 * v13);
            *(v135 + 4 * v13) = v137;
            *(v135 + 4 * v13) = v137 + *(v103 + 20 * v104 + 8);
            v138 = v109 + 24 * v112;
            if ((v138 + 24) != v108)
            {
              do
              {
                v139 = v138 + 24;
                std::vector<float>::__move_assign(v138, (v138 + 24));
                v140 = v138 + 48;
                v138 += 24;
              }

              while (v140 != v108);
              v108 = v192;
              v138 = v139;
            }

            if (v108 != v138)
            {
              v141 = v108;
              do
              {
                v143 = *(v141 - 3);
                v141 -= 24;
                v142 = v143;
                if (v143)
                {
                  *(v108 - 2) = v142;
                  operator delete(v142);
                }

                v108 = v141;
              }

              while (v141 != v138);
            }

            v192 = v138;
            v101 = v136;
          }
        }

        else
        {
LABEL_101:
          std::vector<float>::vector[abi:ne200100](__p, v176 + 1);
          v123 = __p[0];
          if (v176 != -1)
          {
            memset_pattern16(__p[0], &unk_23EE28350, v101 + 4);
          }

          v124 = (*v102 + 20 * v104);
          v125 = *v124;
          v123[v107] = v125;
          v126 = *(v124 + 1);
          v123[v106] = v126;
          v123[v176] = 2.0;
          _H0 = *(v187 + 8 * v125 + 4) + *(v187 + 8 * v126 + 4);
          __asm { FCVT            S0, H0 }

          v123[v13] = v124[2] + _S0;
          std::vector<std::vector<float>>::push_back[abi:ne200100](&__src, __p);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

LABEL_122:
        ++v104;
        v103 = *v102;
      }

      while (v104 < (-858993459 * ((v102[1] - *v102) >> 2)));
    }

    v100 = v183 + 1;
  }

  while (v183 != 17);
  v148 = v192;
  v149 = (v192 - __src) >> 3;
  v150 = 0xAAAAAAAAAAAAAAABLL * v149;
  if (-1431655765 * v149 >= 1)
  {
    v151 = v150 & 0x7FFFFFFF;
    do
    {
      v152 = *(__src + 3 * v151 - 3);
      v153 = *(v152 + 4 * v176);
      if (v153 < 8.0 || (*(v152 + 4 * v13) / v153) < 0.3)
      {
        v154 = __src + 24 * v151 - 24;
        if (v154 + 24 == v148)
        {
          v157 = v148;
          v148 = __src + 24 * v151 - 24;
        }

        else
        {
          do
          {
            v155 = v154 + 24;
            std::vector<float>::__move_assign(v154, (v154 + 24));
            v156 = v154 + 48;
            v154 += 24;
          }

          while (v156 != v148);
          v157 = v192;
          v148 = v155;
        }

        if (v157 != v148)
        {
          v158 = v157;
          do
          {
            v160 = *(v158 - 3);
            v158 -= 24;
            v159 = v160;
            if (v160)
            {
              *(v157 - 2) = v159;
              operator delete(v159);
            }

            v157 = v158;
          }

          while (v158 != v148);
        }

        v192 = v148;
      }
    }

    while (v151-- > 1);
    v150 = 0xAAAAAAAAAAAAAAABLL * ((v148 - __src) >> 3);
  }

  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  std::vector<abpk::Human>::reserve(a9, v150);
  if (v192 != __src)
  {
    v162 = 0;
    __asm { FMOV            V8.2S, #-1.0 }

    do
    {
      v184 = *(a5 + 8);
      __p[1] = 0;
      v186 = 0;
      __p[0] = 0;
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(__p, 0x13uLL);
      v164 = 0;
      v165 = vrev64_s32(vcvt_f32_f64(vcvtq_f64_u64(v184)));
      do
      {
        if (*(*(__src + 3 * v162) + v164) < 0)
        {
          v194 = _D8;
        }

        else
        {
          v194 = vdiv_f32(vcvt_f32_s32(*(v187 + 16 * *(*(__src + 3 * v162) + v164))), v165);
        }

        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(__p, &v194);
        v164 += 4;
      }

      while (v164 != 76);
      v166 = a9[1];
      if (v166 >= a9[2])
      {
        v167 = _ZNSt3__16vectorIN4abpk5HumanENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_IDv2_fNS3_IS7_EEEEEEEPS2_DpOT_(a9, __p);
      }

      else
      {
        _ZNSt3__19allocatorIN4abpk5HumanEE9constructB8ne200100IS2_JNS_6vectorIDv2_fNS0_IS6_EEEEEEEvPT_DpOT0_(a9, a9[1], __p);
        v167 = v166 + 120;
      }

      a9[1] = v167;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v162;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v192 - __src) >> 3) > v162);
  }

  __p[0] = &__src;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
  v168 = 54;
  do
  {
    v169 = (&v192)[v168];
    if (v169)
    {
      *(&v193 + v168 * 8) = v169;
      operator delete(v169);
    }

    v168 -= 3;
  }

  while (v168 * 8);
  if (v187)
  {
    v188[0] = v187;
    operator delete(v187);
  }

  v170 = 57;
  do
  {
    v171 = v188[v170 - 1];
    if (v171)
    {
      v188[v170] = v171;
      operator delete(v171);
    }

    v170 -= 3;
  }

  while (v170 * 8);
  v172 = *MEMORY[0x277D85DE8];
}

void sub_23EDEB1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  a23 = a10;
  std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](&a23);
  a23 = &STACK[0x270];
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a23);
  v28 = 432;
  while (1)
  {
    v29 = *(&STACK[0x290] + v28 - 24);
    if (v29)
    {
      *(&STACK[0x290] + v28 - 16) = v29;
      operator delete(v29);
    }

    v28 -= 24;
    if (!v28)
    {
      if (__p)
      {
        a27 = __p;
        operator delete(__p);
      }

      v30 = 456;
      while (1)
      {
        v31 = *(&__p + v30);
        if (v31)
        {
          *(&a27 + v30) = v31;
          operator delete(v31);
        }

        v30 -= 24;
        if (!v30)
        {
          _Unwind_Resume(a1);
        }
      }
    }
  }
}

void std::vector<long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_23EDEC6CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v21 = *(v19 - 80);
  if (v21)
  {
    *(v19 - 72) = v21;
    operator delete(v21);
  }

  v22 = *(v19 - 56);
  if (v22)
  {
    *(v19 - 48) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::vector<int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, __n);
    }

    std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
  }
}

void *std::__tree<std::__value_type<long,std::vector<long>>,std::__map_value_compare<long,std::__value_type<long,std::vector<long>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::vector<long>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
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
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<long,std::vector<long>>,std::__map_value_compare<long,std::__value_type<long,std::vector<long>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::vector<long>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
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

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23EDECD40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<long,std::vector<long>>,std::__map_value_compare<long,std::__value_type<long,std::vector<long>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::vector<long>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<long,std::vector<long>>,std::__map_value_compare<long,std::__value_type<long,std::vector<long>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::vector<long>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<long,std::vector<long>>,std::__map_value_compare<long,std::__value_type<long,std::vector<long>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::vector<long>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void std::vector<simd_float4x4>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + (a2 << 6);
    }
  }

  else
  {
    std::vector<simd_float4x4>::__append(a1, a2 - v2);
  }
}

void sub_23EDEDD6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  v33 = *(v31 - 160);
  if (v33)
  {
    *(v31 - 152) = v33;
    operator delete(v33);
  }

  v34 = *(v31 - 128);
  if (v34)
  {
    *(v31 - 120) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void sub_23EDEE748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  _Block_object_dispose(&a21, 8);
  std::deque<std::pair<long,long>>::~deque[abi:ne200100](&a27);
  v29 = *(v27 - 136);
  if (v29)
  {
    *(v27 - 128) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

double __Block_byref_object_copy_(void *a1, void *a2)
{
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  v2 = a2[10];
  a1[9] = a2[9];
  result = 0.0;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  a1[10] = v2;
  a1[11] = a2[11];
  a2[10] = 0;
  a2[11] = 0;
  return result;
}

uint64_t std::deque<std::pair<long,long>>::emplace_back<long &,int>(uint64_t a1, void *a2, int *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 8);
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 32 * (v7 - v8) - 1;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40) + v10;
  if (v9 == v11)
  {
    std::deque<std::pair<long,long>>::__add_back_capacity(a1);
    v8 = *(a1 + 8);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40) + v10;
  }

  v12 = (*(v8 + ((v11 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v11);
  v13 = *a3;
  *v12 = *a2;
  v12[1] = v13;
  v14 = *(a1 + 40) + 1;
  *(a1 + 40) = v14;
  v15 = v14 + v10;
  v16 = (v8 + 8 * (v15 >> 8));
  if (v15)
  {
    v17 = *v16 + 16 * v15;
  }

  else
  {
    v17 = *(v16 - 1) + 4096;
  }

  return v17 - 16;
}

uint64_t std::deque<std::pair<long,long>>::emplace_back<long &,long const&>(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 8);
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 32 * (v7 - v8) - 1;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40) + v10;
  if (v9 == v11)
  {
    std::deque<std::pair<long,long>>::__add_back_capacity(a1);
    v8 = *(a1 + 8);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40) + v10;
  }

  v12 = (*(v8 + ((v11 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v11);
  *v12 = *a2;
  v12[1] = *a3;
  v13 = *(a1 + 40) + 1;
  *(a1 + 40) = v13;
  v14 = v13 + v10;
  v15 = (v8 + 8 * (v14 >> 8));
  if (v14)
  {
    v16 = *v15 + 16 * v14;
  }

  else
  {
    v16 = *(v15 - 1) + 4096;
  }

  return v16 - 16;
}

void std::vector<simd_float4x4>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 6)
  {
    if (a2)
    {
      bzero(*(a1 + 8), a2 << 6);
      v5 += a2 << 6;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 6);
    if (v7 >> 58)
    {
      std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 5 > v7)
    {
      v7 = v8 >> 5;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v9 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<simd_float4x4>>(a1, v9);
    }

    v10 = (v6 >> 6 << 6);
    bzero(v10, a2 << 6);
    v11 = &v10[64 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv3_iNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_23EDEECD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::deque<std::pair<long,long>>::~deque[abi:ne200100](void *a1)
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
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<std::pair<long,long> *,std::allocator<std::pair<long,long> *>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<std::pair<long,long> *,std::allocator<std::pair<long,long> *>>::~__split_buffer(uint64_t a1)
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

void *std::deque<std::pair<long,long>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<long,long> *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::pair<long,long> *,std::allocator<std::pair<long,long> *>>::emplace_back<std::pair<long,long> *&>(a1, &v10);
}

void sub_23EDEEF70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<std::pair<long,long> *,std::allocator<std::pair<long,long> *>>::emplace_back<std::pair<long,long> *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<long,long> *>>(result, v11);
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

const void **std::__split_buffer<std::pair<long,long> *,std::allocator<std::pair<long,long> *>>::emplace_front<std::pair<long,long> *>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<long,long> *>>(result, v9);
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

void *std::__split_buffer<std::pair<long,long> *,std::allocator<std::pair<long,long> *> &>::emplace_back<std::pair<long,long> *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<long,long> *>>(result[4], v11);
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

const void **std::__split_buffer<std::pair<long,long> *,std::allocator<std::pair<long,long> *> &>::emplace_front<std::pair<long,long> *&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<long,long> *>>(result[4], v9);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<long,long> *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<std::pair<long,long>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

void sub_23EDEFBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ABPKOutput;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23EDF1994(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23EDF1D4C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23EDF2514(_Unwind_Exception *a1)
{
  v7 = *(v5 - 120);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(a1);
}

void std::vector<espresso_buffer_t>::resize(void *a1, unint64_t a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<espresso_buffer_t>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 168 * a2;
  }
}

void std::vector<__CVPixelBufferPool *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<__CVPixelBufferPool *>::__append(a1, a2 - v2);
  }
}

void std::vector<__CVBuffer *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<long,long> *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_23EDF45FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ABPK2DDetection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::vector<espresso_buffer_t>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCF3CF3CF3CF3CF3DLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 168 * ((168 * a2 - 168) / 0xA8) + 168;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCF3CF3CF3CF3CF3DLL * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x186186186186186)
    {
      std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xCF3CF3CF3CF3CF3DLL * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0xC30C30C30C30C3)
    {
      v9 = 0x186186186186186;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<espresso_buffer_t>>(a1, v9);
    }

    v11 = 168 * v6;
    v12 = 168 * ((168 * a2 - 168) / 0xA8) + 168;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<espresso_buffer_t>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<__CVPixelBufferPool *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<long,long> *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

id __ABPKLogSharedInstance()
{
  if (__ABPKLogSharedInstance_onceToken != -1)
  {
    __ABPKLogSharedInstance_cold_1();
  }

  v1 = sharedInstance;

  return v1;
}

void sub_23EDF5144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  [(ABPK3DLiftingResult *)&a12 init];
  _Unwind_Resume(a1);
}

void sub_23EDF52FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23EDF5444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv3_iNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_23EDF55D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100Em(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv3_iNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void sub_23EDF5650(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abpk::Human::Human(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0u;
  v3 = (a1 + 24);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v4 = (*(a1 + 8) - *a1) >> 3;
  std::vector<int>::reserve((a1 + 24), v4);
  std::vector<int>::reserve((a1 + 48), v4);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (*a1 != v6)
  {
    do
    {
      if (COERCE_FLOAT(*v5) == -1.0 || COERCE_FLOAT(HIDWORD(*v5)) == -1.0)
      {
        v9 = 0;
        std::vector<int>::push_back[abi:ne200100](v3, &v9);
        v9 = 0;
        std::vector<float>::push_back[abi:ne200100]((a1 + 48), &v9);
      }

      else
      {
        v9 = 1;
        std::vector<int>::push_back[abi:ne200100](v3, &v9);
        v9 = 1056964608;
        std::vector<float>::push_back[abi:ne200100]((a1 + 48), &v9);
        ++*(a1 + 104);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return a1;
}

void sub_23EDF57A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 96) == 1)
  {
    v4 = *(v1 + 72);
    if (v4)
    {
      *(v1 + 80) = v4;
      operator delete(v4);
    }
  }

  v5 = *(v1 + 48);
  if (v5)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t abpk::Human::Human(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0u;
  v4 = (a1 + 24);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 48) = *a3;
  *(a1 + 64) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  std::vector<int>::reserve((a1 + 24), (*(a1 + 8) - *a1) >> 3);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (*a1 != v6)
  {
    do
    {
      if (COERCE_FLOAT(*v5) == -1.0 || COERCE_FLOAT(HIDWORD(*v5)) == -1.0)
      {
        v10 = 0;
        std::vector<int>::push_back[abi:ne200100](v4, &v10);
      }

      else
      {
        v9 = 1;
        std::vector<int>::push_back[abi:ne200100](v4, &v9);
        ++*(a1 + 104);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return a1;
}

void sub_23EDF5A0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 96) == 1)
  {
    v4 = *(v1 + 72);
    if (v4)
    {
      *(v1 + 80) = v4;
      operator delete(v4);
    }
  }

  v5 = *(v1 + 48);
  if (v5)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void abpk::Human::resize(abpk::Human *this, unint64_t a2)
{
  if (a2 > (*(this + 1) - *this) >> 3)
  {
    abpk::Human::resize();
  }

  v4 = *(this + 4);
  v5 = (this + 24);
  v6 = (*(this + 3) + 4 * a2);
  if (v6 == v4)
  {
    v7 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *v6++;
      v8 += v9;
    }

    while (v6 != v4);
    v7 = v8;
  }

  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(this, a2);
  std::vector<unsigned int>::resize(v5, a2);
  if (*(this + 96) == 1)
  {
    v10 = *(this + 9);
    if (v10)
    {
      *(this + 10) = v10;
      operator delete(v10);
    }

    *(this + 96) = 0;
  }

  if (*(this + 116) == 1)
  {
    *(this + 116) = 0;
  }

  *(this + 13) -= v7;
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEm(a1, a2 - v2);
  }
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v2);
  }
}

void abpk::Human::updateFromRawJointArray(uint64_t *a1, void *a2)
{
  {
    v25 = a2;
    a2 = v25;
    if (v24)
    {
      v26 = 286199296;
      v27 = 18;
      std::set<unsigned char>::set[abi:ne200100](&abpk::Human::updateFromRawJointArray(std::vector<float> const&)::ignoreJointIndexes, &v26, 5);
      __cxa_atexit(std::set<unsigned char>::~set[abi:ne200100], &abpk::Human::updateFromRawJointArray(std::vector<float> const&)::ignoreJointIndexes, &dword_23EDDC000);
      a2 = v25;
    }
  }

  v3 = *a1;
  v4 = a1[1];
  if (v4 != *a1)
  {
    v5 = 0;
    v6 = 0;
    v7 = qword_27E3938C8;
    __asm { FMOV            V1.2S, #-1.0 }

    do
    {
      if (v7)
      {
        v13 = v7;
        do
        {
          v14 = *(v13 + 25);
          if (v14 <= v6)
          {
            if (v14 >= v6)
            {
              goto LABEL_17;
            }

            v13 += 8;
          }

          v13 = *v13;
        }

        while (v13);
      }

      v15 = *(*a2 + 8 * v5);
      v16.i64[0] = v15;
      v16.i64[1] = v15;
      v17.i32[0] = vmovn_s32(vcgtq_f32(v16, xmmword_23EE285B0)).u32[0];
      v17.i32[1] = vmovn_s32(vcgtq_f32(xmmword_23EE285B0, v16)).i32[1];
      v18 = a1[3];
      v19 = *(v18 + 4 * v5);
      if (vmaxv_u16(v17))
      {
        v15 = _D1;
        if (v19 != 1)
        {
          goto LABEL_16;
        }

        v20 = 0;
        v21 = -1;
        v22 = 0.0;
        v15 = _D1;
      }

      else
      {
        if (v19)
        {
          goto LABEL_16;
        }

        v22 = 0.5;
        v20 = 1;
        v21 = 1;
      }

      *(v18 + 4 * v5) = v20;
      *(a1[6] + 4 * v5) = v22;
      a1[13] += v21;
LABEL_16:
      *(v3 + 8 * v5) = v15;
      v7 = qword_27E3938C8;
      v3 = *a1;
      v4 = a1[1];
LABEL_17:
      v5 = ++v6;
    }

    while (v6 < ((v4 - v3) >> 3));
  }

  if (*(a1 + 96) == 1)
  {
    v23 = a1[9];
    if (v23)
    {
      a1[10] = v23;
      operator delete(v23);
    }

    *(a1 + 96) = 0;
  }

  if (*(a1 + 116) == 1)
  {
    *(a1 + 116) = 0;
  }
}

void abpk::Human::updateJoint(uint64_t a1, uint64_t a2, double _D0)
{
  v4 = *&_D0 >= 0.0 && *&_D0 <= 1.0;
  if (v4 && (*(&_D0 + 1) >= 0.0 ? (v5 = *(&_D0 + 1) <= 1.0) : (v5 = 0), v5))
  {
    v13 = *(a1 + 24);
    if (!*(v13 + 4 * a2))
    {
      v11 = 1;
      *(v13 + 4 * a2) = 1;
      v12 = 0.5;
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *(a1 + 24);
    if (*(v6 + 4 * a2) == 1)
    {
      *(v6 + 4 * a2) = 0;
      __asm { FMOV            V0.2S, #-1.0 }

      v11 = -1;
      v12 = 0.0;
LABEL_12:
      *(*(a1 + 48) + 4 * a2) = v12;
      *(a1 + 104) += v11;
      goto LABEL_15;
    }

    __asm { FMOV            V0.2S, #-1.0 }
  }

LABEL_15:
  *(*a1 + 8 * a2) = _D0;
  if (*(a1 + 96) == 1)
  {
    v14 = *(a1 + 72);
    if (v14)
    {
      *(a1 + 80) = v14;
      operator delete(v14);
    }

    *(a1 + 96) = 0;
  }

  if (*(a1 + 116) == 1)
  {
    *(a1 + 116) = 0;
  }
}

abpk::Human *abpk::Human::jointVector(abpk::Human *this)
{
  v2 = *(this + 1) - *this;
  if (*(this + 13) == v2 >> 3)
  {
    return this;
  }

  v3 = this + 72;
  if (*(this + 96))
  {
    return v3;
  }

  __p = 0uLL;
  v22 = 0;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&__p, v2 >> 3);
  v4 = *this;
  if (*(this + 1) != *this)
  {
    v5 = 0;
    v6 = vneg_f32(0x3F0000003FLL);
    do
    {
      if (*(*(this + 3) + 4 * v5))
      {
        v7 = __p.n128_u64[1];
        if (__p.n128_u64[1] >= v22)
        {
          v10 = (__p.n128_u64[1] - __p.n128_u64[0]) >> 3;
          if ((v10 + 1) >> 61)
          {
            std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
          }

          v11 = (v22 - __p.n128_u64[0]) >> 2;
          if (v11 <= v10 + 1)
          {
            v11 = v10 + 1;
          }

          if (v22 - __p.n128_u64[0] >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          if (v12)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v12);
          }

          v16 = 8 * v10;
          v17 = (8 * v10);
          *v17 = *(v4 + 8 * v5);
          v8 = (v17 + 1);
LABEL_29:
          v18 = (v16 - (__p.n128_u64[1] - __p.n128_u64[0]));
          memcpy(v18, __p.n128_u64[0], __p.n128_u64[1] - __p.n128_u64[0]);
          v19 = __p.n128_u64[0];
          __p.n128_u64[0] = v18;
          __p.n128_u64[1] = v8;
          v22 = 0;
          if (v19)
          {
            operator delete(v19);
          }

          goto LABEL_31;
        }

        *__p.n128_u64[1] = *(v4 + 8 * v5);
        v8 = v7 + 8;
      }

      else
      {
        v9 = __p.n128_u64[1];
        if (__p.n128_u64[1] >= v22)
        {
          v13 = (__p.n128_u64[1] - __p.n128_u64[0]) >> 3;
          if ((v13 + 1) >> 61)
          {
            std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
          }

          v14 = (v22 - __p.n128_u64[0]) >> 2;
          if (v14 <= v13 + 1)
          {
            v14 = v13 + 1;
          }

          if (v22 - __p.n128_u64[0] >= 0x7FFFFFFFFFFFFFF8)
          {
            v15 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v15);
          }

          v16 = 8 * v13;
          *(8 * v13) = v6;
          v8 = 8 * v13 + 8;
          goto LABEL_29;
        }

        *__p.n128_u64[1] = v6;
        v8 = v9 + 8;
      }

LABEL_31:
      __p.n128_u64[1] = v8;
      ++v5;
      v4 = *this;
    }

    while (v5 < (*(this + 1) - *this) >> 3);
  }

  _ZNSt3__18optionalINS_6vectorIDv2_fNS_9allocatorIS2_EEEEEaSB8ne200100IS5_vEERS6_OT_(this + 72, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  return v3;
}

void sub_23EDF607C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__18optionalINS_6vectorIDv2_fNS_9allocatorIS2_EEEEEaSB8ne200100IS5_vEERS6_OT_(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    std::vector<float>::__move_assign(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

double abpk::Human::boundingBox(abpk::Human *this, CGSize a2)
{
  v2 = *this;
  v3 = *(this + 1) - *this;
  if (v3)
  {
    v4 = v3 >> 3;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v5 = 0.0;
    v6 = 3.4028e38;
    v7 = 3.4028e38;
    v8 = 0.0;
    do
    {
      v9 = *v2;
      LODWORD(v10) = HIDWORD(*v2);
      if (COERCE_FLOAT(*v2) != -1.0 && v10 != -1.0)
      {
        if (*&v9 > v8)
        {
          LODWORD(v12) = *v2;
        }

        else
        {
          v12 = v8;
        }

        if (*&v9 < v6)
        {
          LODWORD(v6) = *v2;
        }

        else
        {
          v8 = v12;
        }

        if (v10 >= v7)
        {
          if (v10 > v5)
          {
            LODWORD(v5) = HIDWORD(*v2);
          }
        }

        else
        {
          LODWORD(v7) = HIDWORD(*v2);
        }
      }

      ++v2;
      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = 3.4028e38;
  }

  return (v6 * a2.width);
}

float32x2_t abpk::Human::area(abpk::Human *this, float32x2_t result)
{
  if (*(this + 116) == 1)
  {
    result.i32[0] = *(this + 28);
  }

  else
  {
    v2 = *(this + 1);
    v3 = v2 - *this;
    if (v2 == *this)
    {
      v9 = 0x80000000800000;
    }

    else
    {
      v4 = 0;
      v5 = v3 >> 3;
      v6 = vneg_f32(0x80000000800000);
      v7 = 0x80000000800000;
      do
      {
        if (*(*(this + 3) + 4 * v4))
        {
          v8 = *(*this + 8 * v4);
          v6 = vminnm_f32(v6, v8);
          v7 = vmaxnm_f32(v7, v8);
        }

        ++v4;
      }

      while (v5 > v4);
      v9 = vsub_f32(v7, v6);
    }

    result = vmul_lane_f32(v9, v9, 1);
    *(this + 28) = result.i32[0];
    *(this + 116) = 1;
  }

  return result;
}

void abpk::Human::printData(abpk::Human *this)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(this + 1) != *this)
  {
    for (i = 0; i < (*(this + 1) - *this) >> 3; ++i)
    {
      v3 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v19) = i;
        _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " \t\t Joint: %d ", buf, 8u);
      }

      v4 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(*(this + 3) + 4 * i);
        *buf = 67109120;
        LODWORD(v19) = v5;
        _os_log_impl(&dword_23EDDC000, v4, OS_LOG_TYPE_DEBUG, " \t\t\t %d ", buf, 8u);
      }

      v6 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(*(this + 6) + 4 * i);
        *buf = 134217984;
        v19 = v7;
        _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_DEBUG, " \t\t\t Confidence: %f ", buf, 0xCu);
      }

      v8 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = COERCE_FLOAT(*(*this + 8 * i));
        v10 = COERCE_FLOAT(HIDWORD(*(*this + 8 * i)));
        *buf = 134218240;
        v19 = v9;
        v20 = 2048;
        v21 = v10;
        _os_log_impl(&dword_23EDDC000, v8, OS_LOG_TYPE_DEBUG, " \t\t\t RawArray: (%f, %f) ", buf, 0x16u);
      }

      if (*(*(this + 3) + 4 * i))
      {
        v17 = *(*this + 8 * i);
        v11 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          v19 = *&v17;
          v20 = 2048;
          v21 = *(&v17 + 1);
          v12 = v11;
          v13 = " \t\t\t JointMap: (%f, %f) ";
          v14 = 22;
LABEL_16:
          _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, v13, buf, v14);
        }
      }

      else
      {
        v15 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v12 = v15;
          v13 = " \t\t\t JointMap: Missing ";
          v14 = 2;
          goto LABEL_16;
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t abpk::Human::printMissingJoints(abpk::Human *this)
{
  v18 = *MEMORY[0x277D85DE8];
  __p = 0;
  v14 = 0;
  v15 = 0;
  *buf = 0;
  v1 = *this;
  if (*(this + 1) == *this)
  {
    goto LABEL_20;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    if (!*(*(this + 3) + 4 * v3) || (COERCE_FLOAT(*(v1 + 8 * v3)) != -1.0 ? (v5 = COERCE_FLOAT(HIDWORD(*(v1 + 8 * v3))) == -1.0) : (v5 = 1), v5))
    {
      std::vector<int>::push_back[abi:ne200100](&__p, buf);
      v4 = 1;
    }

    v3 = *buf + 1;
    ++*buf;
    v1 = *this;
  }

  while (v3 < (*(this + 1) - *this) >> 3);
  if ((v4 & 1) == 0)
  {
LABEL_20:
    v4 = 0;
    v7 = __p;
  }

  else
  {
    v6 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_DEBUG, " \tMissing Joints: ", buf, 2u);
    }

    v7 = __p;
    if (v14 == __p)
    {
      v4 = 1;
      if (!__p)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v8 = 0;
    do
    {
      v9 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(__p + v8);
        *buf = 67109120;
        v17 = v10;
        _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_DEBUG, " \t\t %d ", buf, 8u);
      }

      ++v8;
      v7 = __p;
    }

    while (v8 < (v14 - __p) >> 2);
  }

  if (v7)
  {
LABEL_22:
    v14 = v7;
    operator delete(v7);
  }

LABEL_23:
  v11 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

void sub_23EDF66E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *std::set<unsigned char>::set[abi:ne200100](void *a1, unsigned __int8 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a3;
    do
    {
      std::__tree<unsigned char>::__emplace_hint_unique_key_args<unsigned char,unsigned char const&>(a1, v4, a2++);
      --v5;
    }

    while (v5);
  }

  return a1;
}

uint64_t std::__tree<unsigned char>::__emplace_hint_unique_key_args<unsigned char,unsigned char const&>(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *std::__tree<unsigned char>::__find_equal<unsigned char>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<unsigned char>::__find_equal<unsigned char>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 25), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

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
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 25) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 25);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 25))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 25);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<unsigned char>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<unsigned char>::destroy(a1, *a2);
    std::__tree<unsigned char>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void abpk::parsePersonsfromHeatmapBuffer(uint64_t a1@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>, __n128 a5@<Q0>)
{
  v7 = *a5.n128_u16;
  v87 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v80 = a4;
  v9 = std::vector<abpk::HeatmapPersonData>::reserve(a4, 5uLL);
  if (a1)
  {
    v71[1] = v71;
    v74 = a3 * a2;
    v72 = 2 * a3 * a2;
    MEMORY[0x28223BE20](v9);
    v11 = v71 - v10;
    v12 = 0;
    LOWORD(v13) = COERCE_UNSIGNED_INT(-1.0);
    v73 = a1;
    v77 = v71 - v10;
    do
    {
      v75 = (a1 + 2 * v74 * v12);
      memcpy(v11, v75, v72);
      v76 = v12;
      v17 = v80;
      if (a2)
      {
        v18 = 0;
        LODWORD(v19) = 0;
        v79 = v73 + 2 * v74 * (v76 + 19);
        v17 = v80;
        v20 = 4294967293;
        do
        {
          if (a3)
          {
            v21 = 0;
            *&v14 = v18;
            v78 = v14;
            v19 = v19;
            v22 = v11;
            do
            {
              _H0 = *&v11[2 * v19];
              if (_H0 >= v7)
              {
                v24 = -3;
                v25 = v20;
                while (2)
                {
                  v26 = (v24 + v18);
                  v28 = (v26 & 0x80000000) != 0 || v26 >= a2;
                  for (i = -3; i != 4; ++i)
                  {
                    if (!v28 && v21 + i >= 0 && v21 + i < a3 && *&v22[2 * i + 2 * a3 * v25] > _H0)
                    {
                      _H0 = _H0 + v13;
                      *&v11[2 * v19] = _H0;
                      goto LABEL_25;
                    }
                  }

                  ++v24;
                  ++v25;
                  if (v24 != 4)
                  {
                    continue;
                  }

                  break;
                }

LABEL_25:
                v17 = v80;
                if (_H0 >= v7)
                {
                  _H1 = *(v79 + 2 * v19);
                  __asm { FCVT            S1, H1 }

                  v86 = LODWORD(_S1);
                  v35 = *v80;
                  v36 = v80[1];
                  if (*v80 != v36)
                  {
                    for (j = v35 + 56; j != v36; j += 56)
                    {
                      if (vabds_f32(_S1, *(j + 48)) < vabds_f32(_S1, *(v35 + 48)))
                      {
                        v35 = j;
                      }
                    }
                  }

                  __asm { FCVT            S14, H0 }

                  if (v35 == v36 || (v39 = *(v35 + 48), vabds_f32(_S1, v39) >= 0.3))
                  {
                    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(&v84, 0x13uLL);
                    *&v41 = v21;
                    HIDWORD(v41) = v78;
                    *(v84 + 8 * v16) = v41;
                    std::vector<float>::vector[abi:ne200100](&v82, 0x13uLL);
                    v42 = v20;
                    v43 = v82;
                    v44 = v16;
                    v82[v16] = _S14;
                    v81 = 1065353216;
                    v45 = v80;
                    v46 = v80[1];
                    if (v46 >= v80[2])
                    {
                      v50 = _ZNSt3__16vectorIN4abpk17HeatmapPersonDataENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_IDv2_fNS3_IS7_EEEENS0_IfNS3_IfEEEERKffEEEPS2_DpOT_(v80, &v84, &v82, &v86, &v81);
                      v51 = v82;
                      v45[1] = v50;
                      if (v51)
                      {
                        *&v83 = v51;
                        operator delete(v51);
                      }
                    }

                    else
                    {
                      v47 = v85;
                      v14 = v84;
                      v85 = 0;
                      v84 = 0uLL;
                      v48 = v86;
                      *(v46 + 16) = v47;
                      *(v46 + 24) = v43;
                      v49 = v83;
                      *v46 = v14;
                      *(v46 + 32) = v49;
                      *(v46 + 48) = v48;
                      *(v46 + 52) = 1065353216;
                      v45[1] = v46 + 56;
                    }

                    v16 = v44;
                    if (v84)
                    {
                      *(&v84 + 1) = v84;
                      operator delete(v84);
                    }

                    v20 = v42;
                    v11 = v77;
                  }

                  else
                  {
                    v40 = *(v35 + 52);
                    *(v35 + 48) = (_S1 + (v39 * v40)) / (v40 + 1.0);
                    *(v35 + 52) = v40 + 1.0;
                    if (*(*(v35 + 24) + 4 * v16) < _S14)
                    {
                      *&v14 = v21;
                      DWORD1(v14) = v78;
                      *(*v35 + 8 * v16) = v14;
                      *(*(v35 + 24) + 4 * v16) = _S14;
                    }
                  }

                  v17 = v80;
                }
              }

              else
              {
                *&v11[2 * v19] = _H0 + v13;
              }

              ++v21;
              ++v19;
              v22 += 2;
            }

            while (v21 != a3);
          }

          ++v18;
          v20 = (v20 + 1);
        }

        while (v18 != a2);
      }

      v52 = v16;
      v53 = v17;
      v54 = *v17;
      v55 = v53[1];
      a1 = v73;
      v56 = v76;
      for (k = v75; v54 != v55; v54 += 7)
      {
        v58 = 0;
        _D1 = 0;
        for (m = -3; m != 4; ++m)
        {
          v61 = (m + COERCE_FLOAT(HIDWORD(*(*v54 + 8 * v52))));
          v62 = &k[2 * v61 * a3];
          v63 = v61;
          v65 = (v61 & 0x80000000) != 0 || v61 >= a2;
          v66 = 7;
          v67 = COERCE_FLOAT(*(*v54 + 8 * v52)) - 3;
          do
          {
            v68 = (v67 & 0x80000000) != 0 || v65;
            if ((v68 & 1) == 0 && v67 < a3)
            {
              v69 = *&v62[2 * v67];
              if (v69 > COERCE_SHORT_FLOAT(10854))
              {
                *_D1.i16 = *_D1.i16 + v69;
                *v15.i16 = v67;
                *&v15.i16[1] = v63;
                v58 = vmla_n_f16(v58, v15, v69);
              }
            }

            ++v67;
            --v66;
          }

          while (v66);
        }

        __asm { FCMP            H1, #0 }

        if (!(_NF ^ _VF | _ZF))
        {
          *(*v54 + 8 * v52) = vadd_f32(*&vcvtq_f32_f16(vdiv_f16(v58, vdup_lane_s16(_D1, 0))), 0x3F0000003F000000);
        }
      }

      v12 = v56 + 1;
    }

    while (v12 != 19);
  }

  v70 = *MEMORY[0x277D85DE8];
}

void sub_23EDF7178(_Unwind_Exception *a1)
{
  *(v1 - 192) = *(v1 - 232);
  std::vector<abpk::HeatmapPersonData>::__destroy_vector::operator()[abi:ne200100]((v1 - 192));
  _Unwind_Resume(a1);
}

void *std::vector<abpk::HeatmapPersonData>::reserve(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<abpk::HeatmapPersonData>>(result, a2);
    }

    std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23EDF729C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<abpk::HeatmapPersonData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t abpk::convertPersonsToHuman@<X0>(std::vector<unsigned int> **a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = std::vector<abpk::Human>::reserve(a3, 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3));
  v7 = *a1;
  v8 = a1[1];
  if (*a1 != v8)
  {
    __asm { FMOV            V9.2S, #-1.0 }

    do
    {
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(v7, a2);
      std::vector<unsigned int>::resize(v7 + 1, a2);
      begin = v7->__begin_;
      end = v7->__end_;
      if (end != v7->__begin_)
      {
        v16 = 0;
        do
        {
          v17 = v7[1].__begin_;
          v18 = *&begin[2 * v16];
          v19 = *&v18 >= 0.0 && *&v18 <= 1.0;
          if (!v19 || (*(&v18 + 1) >= 0.0 ? (v20 = *(&v18 + 1) <= 1.0) : (v20 = 0), !v20 || *&v17[v16] == 0.0))
          {
            *&begin[2 * v16] = _D9;
            v17[v16] = 0;
            begin = v7->__begin_;
            end = v7->__end_;
          }

          ++v16;
        }

        while (v16 < (end - begin) >> 3);
      }

      v21 = a3[1];
      if (v21 >= a3[2])
      {
        result = _ZNSt3__16vectorIN4abpk5HumanENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_IDv2_fNS3_IS7_EEEENS0_IfNS3_IfEEEEEEEPS2_DpOT_(a3, v7, &v7[1]);
      }

      else
      {
        _ZNSt3__19allocatorIN4abpk5HumanEE9constructB8ne200100IS2_JNS_6vectorIDv2_fNS0_IS6_EEEENS5_IfNS0_IfEEEEEEEvPT_DpOT0_(a3, a3[1], v7, &v7[1]);
        result = v21 + 120;
      }

      a3[1] = result;
      v7 = (v7 + 56);
    }

    while (v7 != v8);
  }

  return result;
}

void sub_23EDF73FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t abpk::filterValidPersons(__n128 **a1, unint64_t a2, unint64_t a3, float a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
    goto LABEL_35;
  }

  v8 = a2;
  v9 = a3;
  __asm { FMOV            V0.2S, #1.0 }

  while (1)
  {
    v15 = v5->n128_u64[0];
    if (v5->n128_u64[1] == v5->n128_u64[0])
    {
      break;
    }

    v16 = 0;
    v17 = 0.0;
    v18 = 0;
    v19 = _D0;
    v20 = 0.0;
    do
    {
      v21.f32[0] = COERCE_FLOAT(*(v15 + 8 * v16)) / v8;
      v21.f32[1] = COERCE_FLOAT(HIDWORD(*(v15 + 8 * v16))) / v9;
      *(v15 + 8 * v16) = v21;
      v22 = *(v5[1].n128_u64[1] + 4 * v16);
      if (v22 > a4)
      {
        v19 = vminnm_f32(v19, v21);
        v18 = vmaxnm_f32(v18, v21);
        v17 = v17 + v22;
        v20 = v20 + 1.0;
      }

      ++v16;
      v15 = v5->n128_u64[0];
    }

    while (v16 < (v5->n128_u64[1] - v5->n128_u64[0]) >> 3);
    v23 = vsub_f32(v18, v19);
    if (v23.f32[0] <= 0.0 || v23.f32[1] <= 0.0 || v20 <= 4.0)
    {
      break;
    }

    if (v23.f32[0] < v23.f32[1])
    {
      v23.f32[0] = v23.f32[1];
    }

    if (v23.f32[0] <= 0.1 || (v17 / v20) <= a4)
    {
      break;
    }

    v5 = (v5 + 56);
    if (v5 == v6)
    {
      v24 = v6;
      goto LABEL_36;
    }
  }

  if (v5 == v6 || (v25 = (v5 + 56), &v5[3].n128_i8[8] == v6))
  {
LABEL_35:
    v24 = v5;
  }

  else
  {
    __asm { FMOV            V12.2S, #1.0 }

    v24 = v5;
    do
    {
      v27 = v5;
      v5 = v25;
      v28 = v27[3].n128_u64[1];
      if (v27[4].n128_u64[0] != v28)
      {
        v29 = 0;
        v30 = 0.0;
        v31 = 0;
        v32 = _D12;
        v33 = 0.0;
        do
        {
          v34.f32[0] = COERCE_FLOAT(*(v28 + 8 * v29)) / v8;
          v34.f32[1] = COERCE_FLOAT(HIDWORD(*(v28 + 8 * v29))) / v9;
          *(v28 + 8 * v29) = v34;
          v35 = *(v27[5].n128_u64[0] + 4 * v29);
          if (v35 > a4)
          {
            v32 = vminnm_f32(v32, v34);
            v31 = vmaxnm_f32(v31, v34);
            v30 = v30 + v35;
            v33 = v33 + 1.0;
          }

          ++v29;
          v28 = v5->n128_u64[0];
        }

        while (v29 < (v27[4].n128_u64[0] - v5->n128_u64[0]) >> 3);
        v36 = vsub_f32(v31, v32);
        if (v36.f32[0] > 0.0 && v36.f32[1] > 0.0 && v33 > 4.0)
        {
          if (v36.f32[0] < v36.f32[1])
          {
            v36.f32[0] = v36.f32[1];
          }

          if (v36.f32[0] > 0.1 && (v30 / v33) > a4)
          {
            std::vector<float>::__move_assign(v24, v5);
            std::vector<float>::__move_assign(v24 + 24, v27 + 5);
            *(v24 + 48) = v27[6].n128_u64[1];
            v24 += 56;
          }
        }
      }

      v25 = (v5 + 56);
    }

    while (&v5[3].n128_i8[8] != v6);
  }

LABEL_36:
  v37 = a1[1];

  return std::vector<abpk::HeatmapPersonData>::erase(a1, v24, v37);
}

uint64_t std::vector<abpk::HeatmapPersonData>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<abpk::HeatmapPersonData *,abpk::HeatmapPersonData *,abpk::HeatmapPersonData *>(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 56;
        std::allocator<abpk::HeatmapPersonData>::destroy[abi:ne200100](a1, v7);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<abpk::HeatmapPersonData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<abpk::HeatmapPersonData>,abpk::HeatmapPersonData*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v7;
      a4[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v7 + 24);
      a4[5] = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      a4[6] = *(v7 + 48);
      v7 += 56;
      a4 += 7;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator<abpk::HeatmapPersonData>::destroy[abi:ne200100](a1, v5);
      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<abpk::HeatmapPersonData>,abpk::HeatmapPersonData*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<abpk::HeatmapPersonData>,abpk::HeatmapPersonData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<abpk::HeatmapPersonData>,abpk::HeatmapPersonData*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<abpk::HeatmapPersonData>,abpk::HeatmapPersonData*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      std::allocator<abpk::HeatmapPersonData>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<abpk::HeatmapPersonData>::~__split_buffer(void **a1)
{
  std::__split_buffer<abpk::HeatmapPersonData>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<abpk::HeatmapPersonData>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    std::allocator<abpk::HeatmapPersonData>::destroy[abi:ne200100](v4, i - 56);
  }
}

uint64_t _ZNSt3__16vectorIN4abpk17HeatmapPersonDataENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_IDv2_fNS3_IS7_EEEENS0_IfNS3_IfEEEERKffEEEPS2_DpOT_(uint64_t *a1, __int128 *a2, __int128 *a3, int *a4, int *a5)
{
  v5 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v6 = v5 + 1;
  if ((v5 + 1) > 0x492492492492492)
  {
    std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v6)
  {
    v6 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v9 = 0x492492492492492;
  }

  else
  {
    v9 = v6;
  }

  v26 = a1;
  if (v9)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<abpk::HeatmapPersonData>>(a1, v9);
  }

  v10 = 56 * v5;
  v23 = 0;
  v24 = 56 * v5;
  *(&v25 + 1) = 0;
  v11 = *(a2 + 2);
  v12 = *a2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v13 = *(a3 + 2);
  v14 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  v15 = *a4;
  v16 = *a5;
  *v10 = v12;
  *(v10 + 16) = v11;
  *(v10 + 24) = v14;
  *(v10 + 40) = v13;
  *(v10 + 48) = v15;
  *(v10 + 52) = v16;
  *&v25 = 56 * v5 + 56;
  v17 = a1[1];
  v18 = (56 * v5 + *a1 - v17);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<abpk::HeatmapPersonData>,abpk::HeatmapPersonData*>(a1, *a1, v17, v18);
  v19 = *a1;
  *a1 = v18;
  v20 = a1[2];
  v22 = v25;
  *(a1 + 1) = v25;
  *&v25 = v19;
  *(&v25 + 1) = v20;
  v23 = v19;
  v24 = v19;
  std::__split_buffer<abpk::HeatmapPersonData>::~__split_buffer(&v23);
  return v22;
}

void sub_23EDF7ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<abpk::HeatmapPersonData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__16vectorIN4abpk5HumanENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS0_IDv2_fNS3_IS7_EEEENS0_IfNS3_IfEEEEEEEPS2_DpOT_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x222222222222222)
  {
    std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v7 = 0x222222222222222;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<abpk::Human>>(a1, v7);
  }

  v14 = 0;
  v15 = 120 * v3;
  _ZNSt3__19allocatorIN4abpk5HumanEE9constructB8ne200100IS2_JNS_6vectorIDv2_fNS0_IS6_EEEENS5_IfNS0_IfEEEEEEEvPT_DpOT0_(a1, 120 * v3, a2, a3);
  v16 = 120 * v3 + 120;
  v8 = a1[1];
  v9 = 120 * v3 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<abpk::Human>,abpk::Human*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<abpk::Human>::~__split_buffer(&v14);
  return v13;
}

void sub_23EDF7C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<abpk::Human>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__19allocatorIN4abpk5HumanEE9constructB8ne200100IS2_JNS_6vectorIDv2_fNS0_IS6_EEEENS5_IfNS0_IfEEEEEEEvPT_DpOT0_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v6 = *a3;
  v7 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *__p = *a4;
  v5 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  abpk::Human::Human(a2, v6, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_23EDF7CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
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

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<abpk::HeatmapPersonData *,abpk::HeatmapPersonData *,abpk::HeatmapPersonData *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    std::vector<float>::__move_assign(a4, v5);
    std::vector<float>::__move_assign(a4 + 24, (v5 + 24));
    *(a4 + 48) = *(v5 + 48);
    a4 += 56;
    v5 += 56;
  }

  while (v5 != v6);
  return v6;
}

void sub_23EDF877C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  a19 = &a23;
  std::vector<abpk::Human>::__destroy_vector::operator()[abi:ne200100](&a19);

  _Unwind_Resume(a1);
}

void std::vector<abpk::Human>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<abpk::Human>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23EDFA060(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void btr::ProjectPoints(double **a1@<X0>, uint64_t a2@<X1>, float64x2_t **a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  std::vector<cva::Matrix<double,2u,1u,false>>::vector[abi:ne200100](a3, 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1));
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    v7 = *a3;
    v8 = a2 + 168;
    do
    {
      v15[0] = a2 + 72;
      v15[1] = 4;
      v16[0] = v15;
      v16[1] = v5;
      v20 = 0;
      v21 = 0;
      v19.f64[1] = 0.0;
      cva::assign<false,false,cva::Matrix<double,3u,1u,false>,cva::MatrixRef<double const,3u,3u,false>,cva::Matrix<double,3u,1u,false>>(&v19.f64[1], v16);
      v13 = 0uLL;
      v14 = 0;
      if ((a2 + 72) == &v13)
      {
        v10 = 0;
        v17 = 0uLL;
        v18 = 0;
        do
        {
          *(&v17 + v10 * 8) = v19.f64[v10 + 1] + *(v8 + v10 * 8);
          ++v10;
        }

        while (v10 != 3);
        v13 = v17;
        v14 = v18;
      }

      else
      {
        for (i = 0; i != 3; ++i)
        {
          *(&v13 + i * 8) = v19.f64[i + 1] + *(v8 + i * 8);
        }
      }

      *&v17 = a2;
      *(&v17 + 1) = &v13;
      v20 = 0;
      v19 = 0uLL;
      cva::assign<false,false,cva::Matrix<double,3u,1u,false>,cva::Matrix<double,3u,3u,false>,cva::Matrix<double,3u,1u,false>>(&v19, &v17);
      *v7++ = vdivq_f64(v19, vdupq_lane_s64(v20, 0));
      v5 += 3;
    }

    while (v5 != v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_23EDFA20C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

double btr::ComputeReprojectionAvg(btr *this, const CameraPoseInfo *a2, const Correspondences2d3d *a3)
{
  btr::ProjectPoints(&a2->camera_matrix.m_data[3], this, __p);
  v4 = a2->camera_matrix.m_data[0];
  v5 = *&a2->camera_matrix.m_data[1] - *&a2->camera_matrix.m_data[0];
  v6 = v5 >> 4;
  if (!v5)
  {
    v14 = 0;
    v10 = 0.0;
    if (!__p[0])
    {
      return v10 / (v6 - v14);
    }

    goto LABEL_12;
  }

  v7 = 0;
  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  v9 = (*&v4 + 8);
  v10 = 0.0;
  v11 = __p[0];
  do
  {
    v12.f64[0] = *(v9 - 1);
    if (v12.f64[0] <= 0.0 || *v9 <= 0.0)
    {
      ++v7;
    }

    else
    {
      v12.f64[1] = *v9;
      v13 = vsubq_f64(v12, *v11);
      v10 = v10 + sqrt(vaddvq_f64(vmulq_f64(v13, v13)));
    }

    v9 += 2;
    ++v11;
    --v8;
  }

  while (v8);
  v14 = v7;
  if (__p[0])
  {
LABEL_12:
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v10 / (v6 - v14);
}

double btr::ComputeTotalBoneLength(uint64_t *a1)
{
  v1 = *a1;
  result = 0.0;
  if (a1[1] - *a1 == 384)
  {
    v3 = &unk_23EE287A4;
    v4 = 120;
    do
    {
      v5 = v1 + 24 * *(v3 - 1);
      v6 = v1 + 24 * *v3;
      v7 = vsubq_f64(*(v5 + 8), *(v6 + 8));
      v8 = vmulq_f64(v7, v7);
      result = result + sqrt((*v5 - *v6) * (*v5 - *v6) + v8.f64[0] + v8.f64[1]);
      v3 += 2;
      v4 -= 8;
    }

    while (v4);
  }

  return result;
}

void btr::BodyRegistration::RegisterBody(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *(a9 + 152) = xmmword_23EE288C0;
  *(a9 + 168) = unk_23EE288D0;
  *(a9 + 184) = xmmword_23EE288E0;
  *(a9 + 200) = unk_23EE288F0;
  *(a9 + 88) = xmmword_23EE28880;
  *(a9 + 104) = *algn_23EE28890;
  *(a9 + 120) = xmmword_23EE288A0;
  *(a9 + 16) = 0u;
  v10 = a9 + 16;
  *a9 = 5;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0;
  *(a9 + 136) = unk_23EE288B0;
  *(a9 + 224) = 0u;
  v11 = a9 + 224;
  *(a9 + 288) = 0u;
  v12 = (a9 + 288);
  *(a9 + 304) = 0u;
  *(a9 + 320) = 0u;
  *(a9 + 256) = 0u;
  *(a9 + 272) = 0u;
  v13 = 1;
  *(v11 + 16) = 0u;
  if (!a2 || !a4 || !a6 || (v13 = 2, !a3) || !a5 || !a7)
  {
    *a9 = v13;
    *a1 = v13;
    v51 = __ABPKLogSharedInstance();
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *v85 = 0;
    v52 = " Failed to find 2d-3d correspondences ";
    v53 = v85;
    v54 = v51;
    v55 = OS_LOG_TYPE_ERROR;
    goto LABEL_49;
  }

  v78 = v10;
  std::vector<cva::Matrix<double,2u,1u,false>>::reserve(v12, a3);
  std::vector<cva::Matrix<double,3u,1u,false>>::reserve((v11 + 88), a3);
  v17 = 0;
  v18 = *(a9 + 296);
  do
  {
    v19 = vcvtq_f64_f32(*(a2 + 8 * v17));
    v20 = *(a9 + 304);
    if (v18 >= v20)
    {
      v21 = (v18 - *&v12->camera_matrix.m_data[0]) >> 4;
      if ((v21 + 1) >> 60)
      {
        std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
      }

      v22 = v20 - *&v12->camera_matrix.m_data[0];
      v23 = v22 >> 3;
      if (v22 >> 3 <= (v21 + 1))
      {
        v23 = v21 + 1;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF0)
      {
        v24 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v23;
      }

      if (v24)
      {
        _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_iEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v12, v24);
      }

      v25 = (16 * v21);
      *v25 = v19;
      v18 = (16 * v21 + 16);
      v26 = *(a9 + 288);
      v27 = *(a9 + 296);
      v28 = (v25->f64 + v26 - v27);
      if (v27 != v26)
      {
        v29 = v28;
        do
        {
          v30 = *v26;
          v26 += 16;
          *v29++ = v30;
        }

        while (v26 != v27);
        v26 = *&v12->camera_matrix.m_data[0];
      }

      *(a9 + 288) = v28;
      *(a9 + 296) = v18;
      *(a9 + 304) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v18++ = v19;
    }

    *(a9 + 296) = v18;
    ++v17;
  }

  while (v17 != a3);
  v31 = 0;
  v32 = *(a9 + 320);
  do
  {
    v33 = a4 + 16 * v31;
    v34 = COERCE_FLOAT(*(v33 + 16 * (v31 > 6) + 8));
    v35 = vcvtq_f64_f32(*(v33 + 16 * (v31 > 6)));
    v36 = *(a9 + 328);
    if (v32 >= v36)
    {
      v37 = *(v11 + 88);
      v38 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v37) >> 3);
      v39 = v38 + 1;
      if (v38 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
      }

      v40 = 0xAAAAAAAAAAAAAAABLL * ((v36 - v37) >> 3);
      if (2 * v40 > v39)
      {
        v39 = 2 * v40;
      }

      if (v40 >= 0x555555555555555)
      {
        v41 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v41 = v39;
      }

      if (v41)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<cva::Matrix<double,3u,1u,false>>>(v11 + 88, v41);
      }

      v42 = 24 * v38;
      *v42 = v35;
      *(v42 + 16) = v34;
      v43 = *(a9 + 312);
      v44 = *(a9 + 320);
      v45 = 24 * v38 + v43 - v44;
      if (v44 != v43)
      {
        v46 = (v42 + v43 - v44);
        do
        {
          v47 = *v43;
          *(v46 + 2) = *(v43 + 2);
          *v46 = v47;
          v46 += 24;
          v43 += 24;
        }

        while (v43 != v44);
        v43 = *(v11 + 88);
      }

      v32 = (v42 + 24);
      *(a9 + 312) = v45;
      *(a9 + 320) = v42 + 24;
      *(a9 + 328) = 0;
      if (v43)
      {
        operator delete(v43);
      }
    }

    else
    {
      *v32 = v35;
      v32[1].f64[0] = v34;
      v32 = (v32 + 24);
    }

    *(a9 + 320) = v32;
    ++v31;
  }

  while (v31 != a3);
  *a9 = 0;
  if (*a1)
  {
    v48 = v78;
    v49 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v49, OS_LOG_TYPE_DEBUG, " Previous body-camera registration failed. Reinitializing.. ", buf, 2u);
    }

    *(a9 + 200) = 0x3FF0000000000000;
  }

  else
  {
    v48 = v78;
    v56 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      *v84 = 0;
      _os_log_impl(&dword_23EDDC000, v56, OS_LOG_TYPE_DEBUG, " Previous body-camera registration successful. Initializing with previos pose.. ", v84, 2u);
    }

    if (a9 != a1)
    {
      *(a9 + 152) = *(a1 + 152);
      *(a9 + 168) = *(a1 + 168);
      *(a9 + 184) = *(a1 + 184);
      *(a9 + 200) = *(a1 + 200);
      *(a9 + 88) = *(a1 + 88);
      *(a9 + 104) = *(a1 + 104);
      *(a9 + 120) = *(a1 + 120);
      *(a9 + 136) = *(a1 + 136);
    }

    v57 = *(a1 + 240);
    *v11 = *(a1 + 224);
    *(v11 + 16) = v57;
    v58 = *(a1 + 272);
    *(v11 + 32) = *(a1 + 256);
    *(v11 + 48) = v58;
  }

  v59 = *(a8 + 16);
  v60 = *(a8 + 32);
  v61 = COERCE_FLOAT(*(a8 + 40));
  v62 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(*a8, *a8, 8uLL), *v59.i8));
  *(a9 + 16) = vcvtq_f64_f32(*a8);
  *(a9 + 32) = v62;
  *(a9 + 48) = vcvtq_f64_f32(vext_s8(*v59.i8, *&vextq_s8(v59, v59, 8uLL), 4uLL));
  *(a9 + 64) = vcvtq_f64_f32(*&v60);
  *(a9 + 80) = v61;
  *a9 = v63;
  if (!v63)
  {
    goto LABEL_62;
  }

  v64 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    *v82 = 0;
    _os_log_impl(&dword_23EDDC000, v64, OS_LOG_TYPE_DEBUG, " Trying with a different init pose ", v82, 2u);
  }

  *(a9 + 200) = 0x3FE0000000000000;
  *a9 = v66;
  if (v66)
  {
    *a1 = v66;
    v67 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
    {
      v80 = 0;
      v52 = " Registration Failed with a different init pose ";
      v53 = &v80;
      v54 = v67;
      v55 = OS_LOG_TYPE_DEBUG;
LABEL_49:
      _os_log_impl(&dword_23EDDC000, v54, v55, v52, v53, 2u);
    }
  }

  else
  {
LABEL_62:
    v68 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
    {
      *v81 = 0;
      _os_log_impl(&dword_23EDDC000, v68, OS_LOG_TYPE_DEBUG, " Registration successful ", v81, 2u);
    }

    *a1 = *a9;
    if (a1 == a9)
    {
      v75 = *(v11 + 16);
      *(a1 + 224) = *v11;
      *(a1 + 240) = v75;
      v76 = *(v11 + 48);
      *(a1 + 256) = *(v11 + 32);
      *(a1 + 272) = v76;
    }

    else
    {
      v69 = *(v48 + 48);
      *(a1 + 48) = *(v48 + 32);
      *(a1 + 64) = v69;
      *(a1 + 80) = *(v48 + 64);
      v70 = *(v48 + 16);
      *(a1 + 16) = *v48;
      *(a1 + 32) = v70;
      *(a1 + 152) = *(a9 + 152);
      *(a1 + 168) = *(a9 + 168);
      *(a1 + 184) = *(a9 + 184);
      *(a1 + 200) = *(a9 + 200);
      *(a1 + 88) = *(a9 + 88);
      *(a1 + 104) = *(a9 + 104);
      *(a1 + 120) = *(a9 + 120);
      *(a1 + 136) = *(a9 + 136);
      v71 = *(v11 + 48);
      *(a1 + 256) = *(v11 + 32);
      *(a1 + 272) = v71;
      v72 = *(v11 + 16);
      v73 = *(a9 + 288);
      v74 = *(a9 + 296);
      *(a1 + 224) = *v11;
      *(a1 + 240) = v72;
      std::vector<cva::Matrix<double,2u,1u,false>>::__assign_with_size[abi:ne200100]<cva::Matrix<double,2u,1u,false>*,cva::Matrix<double,2u,1u,false>*>((a1 + 288), v73, v74, (v74 - v73) >> 4);
      std::vector<cva::Matrix<double,3u,1u,false>>::__assign_with_size[abi:ne200100]<cva::Matrix<double,3u,1u,false>*,cva::Matrix<double,3u,1u,false>*>((a1 + 312), *(a9 + 312), *(a9 + 320), 0xAAAAAAAAAAAAAAABLL * ((*(a9 + 320) - *(a9 + 312)) >> 3));
    }
  }
}

uint64_t btr::anonymous namespace::EstimatePoseFromCorrespondences(btr::_anonymous_namespace_ *this, CameraPoseInfo *a2, const Correspondences2d3d *a3)
{
  v5 = (*&a2->camera_matrix.m_data[1] - *&a2->camera_matrix.m_data[0]) >> 4;
  if (*&a2->camera_matrix.m_data[1] == *&a2->camera_matrix.m_data[0])
  {
    v6 = 0;
  }

  else
  {
    LODWORD(v6) = 0;
    if (v5 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = (*&a2->camera_matrix.m_data[1] - *&a2->camera_matrix.m_data[0]) >> 4;
    }

    v8 = (*&a2->camera_matrix.m_data[0] + 8);
    do
    {
      if (*(v8 - 1) <= 0.0 || *v8 <= 0.0)
      {
        LODWORD(v6) = v6 + 1;
      }

      v8 += 2;
      --v7;
    }

    while (v7);
    v6 = v6;
  }

  std::vector<std::pair<cva::Matrix<double,3u,1u,false>,cva::Matrix<double,2u,1u,false>>>::vector[abi:ne200100](v62, v5 - v6);
  v9 = a2->camera_matrix.m_data[0];
  if (*&a2->camera_matrix.m_data[1] != *&a2->camera_matrix.m_data[0])
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14.f64[0] = *(*&v9 + v11);
      if (v14.f64[0] <= 0.0 || (v15 = *&v9 + v11, *(v15 + 8) <= 0.0))
      {
        v21 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, v21, OS_LOG_TYPE_DEBUG, " ABPKRegistrationUtils: Skipping because of invisible joints ", buf, 2u);
        }
      }

      else
      {
        v16 = *this;
        v17 = (*&a2->camera_matrix.m_data[3] + v10);
        v18 = v62[0] + 40 * v12++;
        v14.f64[1] = *(v15 + 8);
        v16.f64[1] = *(this + 4);
        v19 = vdivq_f64(vsubq_f64(v14, *(this + 3)), v16);
        v20 = *v17;
        *(v18 + 2) = *(v17 + 2);
        *v18 = v20;
        *(v18 + 24) = v19;
      }

      ++v13;
      v9 = a2->camera_matrix.m_data[0];
      v11 += 16;
      v10 += 24;
    }

    while (v13 < (*&a2->camera_matrix.m_data[1] - *&a2->camera_matrix.m_data[0]) >> 4);
  }

  *buf = 0x6400000000;
  v34 = xmmword_23EE28750;
  v35 = 3;
  v60 = 0;
  v61 = 0;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v59 = 0;
  v58 = 0;
  v32 = 0;
  v22 = cva::PoseRefiner<double>::refinePose(buf, v62, (this + 72), &v32);
  *&v23 = vcvt_f32_f64(*(this + 72));
  *&v24 = *(this + 11);
  *(&v23 + 1) = v24;
  *&v25 = vcvt_f32_f64(*(this + 104));
  *&v26 = *(this + 15);
  *(&v25 + 1) = v26;
  *&v27 = vcvt_f32_f64(*(this + 136));
  *&v28 = *(this + 19);
  *(&v27 + 1) = v28;
  *&v29 = vcvt_f32_f64(*(this + 168));
  *&v30 = *(this + 23);
  *(&v29 + 1) = __PAIR64__(1.0, v30);
  *(this + 13) = v23;
  *(this + 14) = v25;
  *(this + 15) = v27;
  *(this + 16) = v29;
  cva::PoseRefiner<double>::~PoseRefiner(buf);
  if (v62[0])
  {
    v62[1] = v62[0];
    operator delete(v62[0]);
  }

  if (v22)
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

void sub_23EDFACF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v13 = *(v11 - 120);
  if (v13)
  {
    *(v11 - 112) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<cva::Matrix<double,2u,1u,false>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_iEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(result, a2);
    }

    std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<cva::Matrix<double,3u,1u,false>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<cva::Matrix<double,3u,1u,false>>>(result, a2);
    }

    std::vector<std::array<float,3ul>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cva::Matrix<double,3u,1u,false>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

BOOL cva::PoseRefiner<double>::refinePose(uint64_t a1, uint64_t *a2, __int128 *a3, double *a4)
{
  v6 = a2;
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  if (v8 > (*(a1 + 408) - *(a1 + 400)) >> 3)
  {
    std::vector<double>::resize((a1 + 400), v8);
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v6[1] - *v6) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 40) - *(a1 + 32)) >> 4) < v8)
  {
    std::vector<cva::PoseRefiner<double>::projData,std::allocator<cva::PoseRefiner<double>::projData>>::resize((a1 + 32), v8);
  }

  if (*(a1 + 4) < 1)
  {
    return 1;
  }

  else
  {
    v9 = 0;
    v10 = (a1 + 344);
    v11 = &xmmword_23EE28818;
    do
    {
      cva::PoseRefiner<double>::computeError(a1, v6, a3);
      v12 = *(a1 + 392);
      v48 = v12 > 4;
      if (v12 < 5)
      {
        break;
      }

      v13 = 0.0;
      v14 = 0uLL;
      if (*a1 == 1)
      {
        v15 = v11;
        v16 = v6;
        v17 = a4;
        v18 = 0;
        v19 = *(a1 + 400);
        v20 = 8 * v12;
        do
        {
          v21 = v19[v18 / 8];
          if (v21 < 0.0)
          {
            v21 = -v21;
          }

          v19[v18 / 8] = v21;
          v18 += 8;
        }

        while (v20 != v18);
        v22 = v12 >> 1;
        std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(v19, &v19[v12 >> 1], &v19[v12], v21);
        v24 = *(a1 + 400);
        v25 = v24[v12 >> 1];
        if (v12)
        {
          a4 = v17;
          v6 = v16;
          v14 = 0uLL;
          v11 = v15;
        }

        else
        {
          v26 = v22 - 1;
          v27 = 8 * (v22 - 1);
          if (v27 != v20)
          {
            std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<double *>>(v24, &v24[v27 / 8], &v24[v20 / 8], v23);
            v24 = *(a1 + 400);
          }

          a4 = v17;
          v14 = 0uLL;
          v11 = v15;
          v25 = (v25 + v24[v26]) * 0.5;
          v6 = v16;
        }

        v13 = v25 * 3.0;
        v10 = (a1 + 344);
        if (v25 * 3.0 < 1.0e-10)
        {
          v13 = 1.0e-10;
        }
      }

      *(a1 + 360) = v14;
      *(a1 + 376) = v14;
      *(a1 + 328) = v14;
      *(a1 + 344) = v14;
      *(a1 + 296) = v14;
      *(a1 + 312) = v14;
      *(a1 + 264) = v14;
      *(a1 + 280) = v14;
      *(a1 + 232) = v14;
      *(a1 + 248) = v14;
      *(a1 + 200) = v14;
      *(a1 + 216) = v14;
      *(a1 + 168) = v14;
      *(a1 + 184) = v14;
      *(a1 + 136) = v14;
      *(a1 + 152) = v14;
      *(a1 + 104) = v14;
      *(a1 + 120) = v14;
      *(a1 + 72) = v14;
      *(a1 + 88) = v14;
      *(a1 + 56) = v14;
      cva::PoseRefiner<double>::accumuateJacobian(a1, a4, v13);
      v28 = v10[1];
      *v53 = *v10;
      *&v53[16] = v28;
      *&v53[32] = v10[2];
      memcpy(__dst, (a1 + 56), sizeof(__dst));
      if (!cva::ldlt<double,6u,1u>())
      {
        return 0;
      }

      v29 = *v53;
      v49 = *&v53[16];
      *v51 = *&v53[24];
      *&v51[16] = *&v53[40];
      v30 = v11[1];
      v54 = *v11;
      v55 = v30;
      v31 = v11[3];
      v56 = v11[2];
      v57 = v31;
      *&v58 = 0x3FF0000000000000;
      v32 = vmulq_f64(*&v53[8], *&v53[8]);
      cva::ExponentialCoefficients<double,3>::ExponentialCoefficients(&v62, *&v29 * *&v29 + v32.f64[0] + v32.f64[1]);
      *&v58 = v62 + v63.f64[1] * v49 * v49;
      v33 = *&v29 * v63.f64[1] * *(&v29 + 1);
      v34 = *&v29 * v63.f64[1] * v49;
      v35 = v63.f64[1] * *(&v29 + 1) * v49;
      *&v54 = v62 + *&v29 * v63.f64[1] * *&v29;
      *(&v54 + 1) = v33 + v63.f64[0] * v49;
      *&v57 = v63.f64[0] * *(&v29 + 1) + v34;
      *(&v57 + 1) = v35 - *&v29 * v63.f64[0];
      *(&v55 + 1) = v33 - v63.f64[0] * v49;
      *&v55 = v34 - v63.f64[0] * *(&v29 + 1);
      *&v56 = v62 + v63.f64[1] * *(&v29 + 1) * *(&v29 + 1);
      *(&v56 + 1) = *&v29 * v63.f64[0] + v35;
      cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::SE3GroupStorage(v50, &v54, v51);
      v62 = COERCE_DOUBLE(v50);
      *&v63.f64[0] = a3;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      cva::assign<false,false,cva::Matrix<double,4u,4u,false>,cva::Matrix<double,4u,4u,false>,cva::Matrix<double,4u,4u,false>>(&v54, &v62);
      v36 = v59;
      a3[4] = v58;
      a3[5] = v36;
      v37 = v61;
      a3[6] = v60;
      a3[7] = v37;
      v38 = v55;
      *a3 = v54;
      a3[1] = v38;
      v39 = v57;
      a3[2] = v56;
      a3[3] = v39;
      cva::SE3GroupStorage<double,cva::Matrix<double,4u,4u,false>>::log(a3, &v62);
      v40 = vmulq_f64(v63, v63);
      v41 = v62 * v62 + v40.f64[0] + v40.f64[1];
      if (v41 >= 9.8706044)
      {
        cva::PoseRefiner<double>::refinePose();
      }

      v58 = xmmword_23EE288C0;
      v59 = unk_23EE288D0;
      v60 = xmmword_23EE288E0;
      v61 = unk_23EE288F0;
      v54 = xmmword_23EE28880;
      v55 = *algn_23EE28890;
      v56 = xmmword_23EE288A0;
      v57 = unk_23EE288B0;
      cva::ExponentialCoefficients<double,3>::ExponentialCoefficients(v64, v41);
      cva::computeExponentialMatrix<double,cva::Matrix<double,6u,1u,false>,cva::Matrix<double,4u,4u,false>>(&v62, v64[0].f64, &v54);
      v42 = v59;
      a3[4] = v58;
      a3[5] = v42;
      v43 = v61;
      a3[6] = v60;
      a3[7] = v43;
      v44 = v55;
      *a3 = v54;
      a3[1] = v44;
      v45 = v57;
      a3[2] = v56;
      a3[3] = v45;
      if (v9 >= *(a1 + 24) && sqrt(*&v29 * *&v29 + *(&v29 + 1) * *(&v29 + 1) + v49 * v49) < *(a1 + 8))
      {
        v46 = vmulq_f64(*&v51[8], *&v51[8]);
        if (sqrt(*v51 * *v51 + v46.f64[0] + v46.f64[1]) < *(a1 + 16))
        {
          return 1;
        }
      }

      ++v9;
    }

    while (v9 < *(a1 + 4));
  }

  return v48;
}