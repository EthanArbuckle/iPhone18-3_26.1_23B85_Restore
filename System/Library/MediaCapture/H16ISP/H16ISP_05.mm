uint64_t H16ISP::JasperConfigManagerInternal::getSequenceId(H16ISP::JasperConfigManagerInternal *this)
{
  v1 = *(this + 12);
  if (*(this + 13) == v1)
  {
    return 0;
  }

  else
  {
    return *(v1 + 2052 * *(this + 30));
  }
}

uint64_t H16ISP::JasperConfigManagerInternal::describeSequence(H16ISP::JasperConfigManagerInternal *this, int *a2, int *a3)
{
  *a2 = 0;
  *a3 = 8;
  return 1;
}

uint64_t H16ISP::JasperConfigManager::overrideJasperConfig(H16ISP::JasperConfigManager *this, const __CFDictionary *a2)
{
  [qword_281003940 removeAllObjects];
  [qword_281003940 setValue:&unk_28381FF60 forKey:@"Version"];
  v3 = qword_281003940;

  return [v3 addEntriesFromDictionary:this];
}

BOOL H16ISP::JasperConfigManager::FrameModeDescription(H16ISP::JasperConfigManager *this, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = H16ISP::_frameConfigManager;
  if (H16ISP::_frameConfigManager)
  {
    *a2 = dword_2810038F4;
    *a3 = H16ISP::_frameConfigManager - 1;
    *this = qword_2810038EC;
  }

  return v4 != 0;
}

uint64_t H16ISP::JasperConfigManager::getAggregatedBufferPointer(H16ISP::JasperConfigManager *this, unint64_t *a2)
{
  H16ISP::JasperConfigManagerInternal::initJasperSpecs(&H16ISP::_frameConfigManager);
  *this = 403200;
  return qword_281003910;
}

uint64_t H16ISP::JasperConfigManager::aggregateJasperSpecData(H16ISP::JasperConfigManager *this, __CVBuffer *a2)
{
  v2 = a2;
  BaseAddress = CVPixelBufferGetBaseAddress(this);
  CVPixelBufferGetDataSize(this);
  H16ISP::JasperConfigManagerInternal::aggregateJasperSpecData(&H16ISP::_frameConfigManager, BaseAddress, v5, v2);
  return 0;
}

uint64_t H16ISP::JasperConfigManager::setFrameFromArray(H16ISP::JasperConfigManager *this, H16ISP::H16ISPDevice *a2, void *cf, const void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!cf || (v5 = a2, v7 = CFGetTypeID(cf), v7 != CFArrayGetTypeID()))
  {
    NSLog(&cfstr_JasperFrameFro.isa);
    return 4294954516;
  }

  if ([cf count] <= 2)
  {
    NSLog(&cfstr_JasperFrameFro_0.isa);
    return 4294954516;
  }

  v9 = [cf objectAtIndex:0];
  v10 = [cf objectAtIndex:1];
  v11 = [cf objectAtIndex:2];
  if (!v9 || (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    NSLog(&cfstr_JasperFrameFro_1.isa);
    return 4294954516;
  }

  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    NSLog(&cfstr_JasperFrameFro_2.isa);
    return 4294954516;
  }

  if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    NSLog(&cfstr_JasperFrameFro_3.isa);
    return 4294954516;
  }

  if ([v12 length] != 2048)
  {
    NSLog(&cfstr_JasperFrameFro_4.isa, [v12 length], 2048);
    return 4294954516;
  }

  v14 = 13057;
  v15 = v5;
  v16 = [v9 intValue];
  v17 = v16;
  v18 = 0;
  v19 = 0;
  *&v20[2050] = [v10 intValue];
  [v12 getBytes:v20 length:2048];
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x818u, 0, 0xFFFFFFFF);
  if (result)
  {
    NSLog(&cfstr_JasperFrameFro_5.isa, result);
    return 4294954516;
  }

  return result;
}

uint64_t H16ISP::JasperConfigManager::preloadFrameFromArray(H16ISP::JasperConfigManager *this, H16ISP::H16ISPDevice *a2, void *cf, const void *a4)
{
  *&v18[2050] = *MEMORY[0x277D85DE8];
  if (!cf || (v5 = a2, v7 = CFGetTypeID(cf), v7 != CFArrayGetTypeID()))
  {
    NSLog(&cfstr_JasperPreloadF.isa);
    return 4294954516;
  }

  if ([cf count] <= 1)
  {
    NSLog(&cfstr_JasperPreloadF_0.isa);
    return 4294954516;
  }

  v9 = [cf objectAtIndex:0];
  v10 = [cf objectAtIndex:1];
  if (!v9 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    NSLog(&cfstr_JasperPreloadF_1.isa);
    return 4294954516;
  }

  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    NSLog(&cfstr_JasperPreloadF_2.isa);
    return 4294954516;
  }

  if ([v11 length] != 2048)
  {
    NSLog(&cfstr_JasperPreloadF_3.isa, [v11 length], 2048);
    return 4294954516;
  }

  v13 = 13056;
  v14 = v5;
  v15 = [v9 intValue];
  v16 = 4;
  v17 = 0;
  [v11 getBytes:v18 length:2048];
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v12, 0x814u, 0, 0xFFFFFFFF);
  if (result)
  {
    NSLog(&cfstr_JasperPreloadF_4.isa, result);
    return 4294954516;
  }

  return result;
}

uint64_t H16ISP::JasperConfigManager::setFrameOffsetFromArray(H16ISP::JasperConfigManager *this, H16ISP::H16ISPDevice *a2, void *cf, const void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  if (!cf || (v5 = a2, v7 = CFGetTypeID(cf), v7 != CFArrayGetTypeID()))
  {
    NSLog(&cfstr_JasperFrameOff.isa);
    return 4294954516;
  }

  if ([cf count] <= 2)
  {
    NSLog(&cfstr_JasperFrameOff_0.isa);
    return 4294954516;
  }

  v9 = [cf objectAtIndex:0];
  v10 = [cf objectAtIndex:1];
  v11 = [cf objectAtIndex:2];
  if (!v9 || (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    NSLog(&cfstr_JasperFrameOff_1.isa);
    return 4294954516;
  }

  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    NSLog(&cfstr_JasperFrameOff_2.isa);
    return 4294954516;
  }

  if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    NSLog(&cfstr_JasperFrameOff_3.isa);
    return 4294954516;
  }

  v13 = [v9 intValue];
  *v27 = 0u;
  v28 = 0u;
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
  *&v27[4] = 13058;
  *&v27[8] = v5;
  WORD2(v28) = 0;
  v39 = 0;
  LODWORD(v38) = [v10 intValue];
  LOBYTE(v28) = v13;
  BYTE1(v28) = v13;
  v14 = [v12 objectForKey:@"JasperOffset_DXY"];
  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      NSLog(&cfstr_JasperFrameOff_4.isa);
      return 4294954516;
    }

    v15 = [v14 objectAtIndex:0];
    v16 = [v14 objectAtIndex:1];
    if (!v15 || (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      NSLog(&cfstr_JasperFrameOff_5.isa);
      return 4294954516;
    }

    v18 = [v15 intValue];
    v19 = [v17 intValue];
    if (v18 != v18 || (v19 + 128) > 0xFF)
    {
      NSLog(&cfstr_JasperFrameOff_6.isa);
      return 4294954516;
    }

    BYTE6(v28) = v18;
    BYTE7(v28) = v19;
    *&v27[12] = 1;
  }

  v20 = [v12 objectForKey:@"JasperOffset_AXY"];
  if (v20)
  {
    v21 = v20;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      NSLog(&cfstr_JasperFrameOff_7.isa);
      return 4294954516;
    }

    v22 = [v21 objectAtIndex:0];
    v23 = [v21 objectAtIndex:1];
    if (!v22 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      NSLog(&cfstr_JasperFrameOff_8.isa);
      return 4294954516;
    }

    v25 = [v22 intValue];
    v26 = [v24 intValue];
    if (v25 != v25 || (v26 + 128) > 0xFF)
    {
      NSLog(&cfstr_JasperFrameOff_9.isa);
      return 4294954516;
    }

    BYTE6(v28) = v25;
    BYTE7(v28) = v26;
    *&v27[12] = 32769;
  }

  else if (!v14)
  {
    NSLog(&cfstr_JasperFrameOff_10.isa);
    return 4294954516;
  }

  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v27, 0xC4u, 0, 0xFFFFFFFF);
  if (result)
  {
    NSLog(&cfstr_JasperFrameOff_11.isa, result);
    return 4294954516;
  }

  return result;
}

uint64_t H16ISP::JasperConfigManager::setSequenceFromArray(H16ISP::JasperConfigManager *this, H16ISP::H16ISPDevice *a2, void *cf, const void *a4)
{
  if (!cf || (v5 = a2, v7 = CFGetTypeID(cf), v7 != CFArrayGetTypeID()))
  {
    NSLog(&cfstr_JasperSequence.isa);
    return 4294954516;
  }

  if ([cf count] <= 1)
  {
    NSLog(&cfstr_JasperSequence_0.isa);
    return 4294954516;
  }

  v10 = [cf objectAtIndex:0];
  v11 = [cf objectAtIndex:1];
  if (!v10 || (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    NSLog(&cfstr_JasperSequence_1.isa);
    return 4294954516;
  }

  if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    NSLog(&cfstr_JasperSequence_2.isa);
    return 4294954516;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0xA012000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = "";
  v29 = v5;
  v28 = 13059;
  bzero(&v30, 0x62uLL);
  v13 = [v12 count];
  *(v23 + 60) = v13;
  v14 = [v10 intValue];
  *(v23 + 61) = v14;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN6H16ISP19JasperConfigManager20setSequenceFromArrayEPNS_12H16ISPDeviceEjPKv_block_invoke;
  v17[3] = &unk_278530DD8;
  v17[4] = &v18;
  v17[5] = &v22;
  [v12 enumerateObjectsUsingBlock:v17];
  v15 = v23;
  *(v23 + 60) = *(v19 + 6);
  v16 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v15 + 48, 0x70u, 0, 0xFFFFFFFF);
  if (v16)
  {
    NSLog(&cfstr_JasperSequence_6.isa, v16);
    v8 = 4294954516;
  }

  else
  {
    v8 = 0;
    qword_2810038EC = -1;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v8;
}

void sub_224860E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 48) = v2;
  result = *(a2 + 96);
  v5 = *(a2 + 112);
  v6 = *(a2 + 128);
  *(a1 + 142) = *(a2 + 142);
  *(a1 + 112) = v5;
  *(a1 + 128) = v6;
  *(a1 + 96) = result;
  return result;
}

void ___ZN6H16ISP19JasperConfigManager20setSequenceFromArrayEPNS_12H16ISPDeviceEjPKv_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([a2 count] > 2)
    {
      if (*(*(*(a1 + 32) + 8) + 24) < 16)
      {
        v8 = [a2 objectAtIndex:0];
        v9 = [a2 objectAtIndex:1];
        v10 = [a2 objectAtIndex:2];
        *(*(*(a1 + 40) + 8) + 6 * *(*(*(a1 + 32) + 8) + 24) + 62) = [v8 intValue];
        *(*(*(a1 + 40) + 8) + 6 * *(*(*(a1 + 32) + 8) + 24) + 64) = [v9 intValue];
        *(*(*(a1 + 40) + 8) + 6 * (*(*(*(a1 + 32) + 8) + 24))++ + 66) = [v10 intValue];
      }

      else
      {
        NSLog(&cfstr_JasperSequence_5.isa, 16);
        *a4 = 1;
      }
    }

    else
    {
      NSLog(&cfstr_JasperSequence_4.isa, a3);
    }
  }

  else
  {
    NSLog(&cfstr_JasperSequence_3.isa, a3);
  }
}

uint64_t H16ISP::JasperConfigManager::onlineUpdate(H16ISP::H16ISPDevice *a1, uint64_t a2, void *__src)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 14092;
  v9 = a2;
  memcpy(v10, __src, sizeof(v10));
  NSLog(&cfstr_SChDSendingPer.isa, "onlineUpdate", a2);
  v5 = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x3D0u, 0, 0xFFFFFFFF);
  if (!v5)
  {
    return v11;
  }

  NSLog(&cfstr_SSendingPerido.isa, "onlineUpdate", v5);
  return 0;
}

uint64_t H16ISP::JasperConfigManager::describeSequence(H16ISP::JasperConfigManager *this, int *a2, int *a3)
{
  *this = 0;
  *a2 = 8;
  return 1;
}

uint64_t _GLOBAL__sub_I_H16ISPJasperConfigManager_mm()
{
  H16ISP::JasperConfigManagerInternal::JasperConfigManagerInternal(&H16ISP::_frameConfigManager);

  return __cxa_atexit(H16ISP::JasperConfigManagerInternal::~JasperConfigManagerInternal, &H16ISP::_frameConfigManager, &dword_2247DB000);
}

uint64_t ImageUtils::IntegralImage<double>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  result = Matrix<double>::Resize(a2, v4, v5);
  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  if (v5)
  {
    v9 = 0.0;
    v10 = v5;
    do
    {
      v11 = *v7++;
      v9 = v9 + v11;
      *v8++ = v9;
      --v10;
    }

    while (v10);
  }

  if (v4 >= 2)
  {
    v12 = *(a2 + 8);
    for (i = 1; i != v4; ++i)
    {
      if (v5)
      {
        v14 = 0.0;
        v15 = v5;
        do
        {
          v16 = *v7++;
          v14 = v14 + v16;
          v17 = *v12++;
          *v8++ = v14 + v17;
          --v15;
        }

        while (v15);
      }
    }
  }

  return result;
}

uint64_t Matrix<double>::Resize(uint64_t result, int a2, int a3)
{
  v5 = result;
  if (*(result + 16) != a2 || *(result + 20) != a3)
  {
    if (*(result + 8))
    {
      if (*(result + 24) == 1)
      {
        MEMORY[0x22AA55B40]();
      }
    }

    *(v5 + 16) = a2;
    *(v5 + 20) = a3;
    operator new[]();
  }

  return result;
}

void ImageUtils::AdaptiveThreshold<double>(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3)
  {
    AdaptiveThreshold<double,true>(a1, a2, a4);
  }

  AdaptiveThreshold<double,false>(a1, a2, a4);
}

void AdaptiveThreshold<double,true>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 20);
  if (v3 > a2)
  {
    v4 = *(a1 + 16);
    if (v4 > a2)
    {
      Matrix<BOOL>::Resize(a3, v4, v3);
      v6 = 0;
      v7 = 0;
      v5 = &unk_283812C58;
      v8 = 0;
      ImageUtils::IntegralImage<double>();
    }
  }

  AdaptiveThreshold<double,true>();
}

void sub_224861A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void AdaptiveThreshold<double,false>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 20);
  if (v3 > a2)
  {
    v4 = *(a1 + 16);
    if (v4 > a2)
    {
      Matrix<BOOL>::Resize(a3, v4, v3);
      v6 = 0;
      v7 = 0;
      v5 = &unk_283812C58;
      v8 = 0;
      ImageUtils::IntegralImage<double>();
    }
  }

  AdaptiveThreshold<double,true>();
}

void sub_224862208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t ImageUtils::TraceOuterBoundaries(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v50 = 0;
  v51 = 0;
  v49 = &unk_283812CC0;
  v52 = 0;
  PadImage1<unsigned short>(a1, &v49);
  v6 = HIDWORD(v51);
  v8 = *(a1 + 16);
  v7 = *(a1 + 20);
  v68[1] = 1;
  v68[2] = HIDWORD(v51);
  v68[3] = -1;
  v67[1] = 1;
  v67[2] = v7;
  v67[3] = -1;
  v9 = vsub_s32(0x100000000, vdup_n_s32(HIDWORD(v51)));
  v68[0] = v9.i32[0];
  v60 = v9;
  v61 = 1;
  v62 = HIDWORD(v51) + 1;
  v63 = HIDWORD(v51);
  v64 = HIDWORD(v51) - 1;
  v65 = -1;
  v66 = ~HIDWORD(v51);
  v10 = vsub_s32(0x100000000, vdup_n_s32(v7));
  v67[0] = v10.i32[0];
  v53 = v10;
  v54 = 1;
  v55 = v7 + 1;
  v56 = v7;
  v57 = v7 - 1;
  v58 = -1;
  v59 = ~v7;
  if (a2 == 4)
  {
    v11 = v68;
    v40 = &unk_2249B3940;
    v12 = v67;
  }

  else
  {
    if (a2 != 8)
    {
      return Matrix<unsigned short>::~Matrix(&v49);
    }

    v11 = &v60;
    v40 = &unk_2249B3950;
    v12 = &v53;
  }

  v39 = v12;
  if ((v8 * v7) >= 1)
  {
    LOWORD(v13) = 0;
    v14 = *(a1 + 8);
    v15 = &v14[v8 * v7];
    do
    {
      v17 = *v14++;
      v16 = v17;
      if (v17 <= v13)
      {
        v13 = v13;
      }

      else
      {
        v13 = v16;
      }
    }

    while (v14 < v15);
    if (v13)
    {
      __p = 0;
      v47 = 0;
      v48 = 0;
      std::vector<ImageUtils::Blob>::resize(a3, v13, &__p);
      if (v8)
      {
        v18 = 0;
        v19 = 0;
        v20 = v50 + 2 * v6;
        v38 = a3;
        v35 = v8;
        v36 = v7;
        do
        {
          if (v7)
          {
            v37 = v18;
            v21 = v7 + v19;
            v41 = v7 + v19;
            do
            {
              v22 = v20;
              v24 = *(v20 + 2);
              v20 += 2;
              v23 = v24;
              if (v24)
              {
                v25 = (v23 - 1);
                if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v25)
                {
                  std::vector<ImageUtils::Blob>::__throw_out_of_range[abi:ne200100]();
                }

                v26 = *a3 + 24 * v25;
                if (*(v26 + 8) == *v26)
                {
                  v42 = v20;
                  LOBYTE(v27) = 0;
                  v44 = 0;
                  v45 = v19;
                  v43 = 255;
                  v28 = 2;
LABEL_20:
                  v29 = 0;
                  do
                  {
                    v30 = v27;
                    v31 = v28 + 2 * v11->i32[v27];
                    if (*(v22 + v31) == v23)
                    {
                      v27 = v40[v27];
                      if (v28 == 2)
                      {
                        v32 = ++v44;
                        if (v27 == v43 || v32 > 3)
                        {
                          goto LABEL_33;
                        }

                        v43 = v40[v30];
                      }

                      std::vector<unsigned int>::push_back[abi:ne200100](v26, &v45);
                      v45 += v39->i32[v30];
                      v28 = v31;
                      goto LABEL_20;
                    }

                    LOBYTE(v27) = (v27 + 1) & (a2 - 1);
                    ++v29;
                  }

                  while (v29 < a2);
                  if (!v44)
                  {
                    std::vector<unsigned int>::push_back[abi:ne200100](v26, &v45);
                  }

LABEL_33:
                  a3 = v38;
                  v20 = v42;
                  v21 = v41;
                }
              }

              ++v19;
            }

            while (v19 != v21);
            v19 = v21;
            v8 = v35;
            v7 = v36;
            v18 = v37;
          }

          v20 += 4;
          ++v18;
        }

        while (v18 != v8);
      }

      if (__p)
      {
        v47 = __p;
        operator delete(__p);
      }
    }
  }

  return Matrix<unsigned short>::~Matrix(&v49);
}

void sub_224862588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  Matrix<unsigned short>::~Matrix(&a21);
  _Unwind_Resume(a1);
}

void PadImage1<unsigned short>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20) + 2;
  Matrix<unsigned short>::Resize(a2, *(a1 + 16) + 2, v4);
  v5 = *(a2 + 8);
  v6 = *(a1 + 8);
  v7 = 2 * v4;
  bzero(v5, v7);
  v8 = &v5[v7];
  if (*(a1 + 16))
  {
    v9 = 0;
    v10 = *(a1 + 20);
    do
    {
      *v8 = 0;
      v11 = v8 + 2;
      memcpy(v11, v6, 2 * v10);
      v12 = *(a1 + 16);
      v10 = *(a1 + 20);
      v13 = &v11[2 * v10];
      v6 += 2 * v10;
      *v13 = 0;
      v8 = v13 + 2;
      ++v9;
    }

    while (v9 < v12);
  }

  bzero(v8, v7);
}

void std::vector<ImageUtils::Blob>::resize(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    std::vector<ImageUtils::Blob>::__append(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 24 * a2;
    if (v4 != v8)
    {
      v9 = a1[1];
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v4 - 16) = v10;
          operator delete(v10);
        }

        v4 = v9;
      }

      while (v9 != v8);
    }

    a1[1] = v8;
  }
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
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
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
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
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](a1, v12);
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

_BYTE *ImageUtils::ErodeRect2x2(uint64_t a1, uint64_t a2)
{
  Matrix<BOOL>::Resize(a2, *(a1 + 16), *(a1 + 20));
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  if (v5 < 3 || v4 <= 2)
  {
    ImageUtils::ErodeRect2x2();
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  memset(v8, 1, v5 * v4);
  if ((*v7 & 1) == 0)
  {
    *v8 = 0;
  }

  v9 = v8 + 1;
  v10 = v5 - 2;
  v11 = v7 + 1;
  v12 = v5 - 1;
  v13 = v5 - 1;
  do
  {
    v14 = *v11++;
    if ((v14 & 1) == 0)
    {
      *(v9 - 1) = 0;
    }

    ++v9;
    --v13;
  }

  while (v13);
  v15 = &v7[v10 + 2];
  v16 = -*(a1 + 20);
  v17 = v10 + 2;
  v18 = &v7[2 * v10 + 5];
  v19 = &v7[v10 + 3];
  v20 = 1;
  do
  {
    v21 = v9;
    v22 = v18;
    if ((*v15 & 1) == 0)
    {
      *v9 = 0;
      v9[v16] = 0;
    }

    v23 = 0;
    v24 = &v9[-*(a1 + 20)];
    do
    {
      if ((*(v19 + v23) & 1) == 0)
      {
        *&v21[v23] = 0;
        *&v24[v23] = 0;
      }

      ++v23;
    }

    while (v12 != v23);
    v15 += v17;
    v18 += v17;
    v19 += v17;
    result = &v21[v23];
    v9 = &v21[v23 + 1];
  }

  while (v20++ != v4 - 2);
  if (!*v15)
  {
    result[1] = 0;
    v21[v23 - *(a1 + 20) + 1] = 0;
  }

  v27 = -*(a1 + 20);
  do
  {
    v28 = *v22++;
    if ((v28 & 1) == 0)
    {
      *(result + 1) = 0;
      *&result[v27 + 1] = 0;
    }

    ++result;
    --v12;
  }

  while (v12);
  return result;
}

uint64_t Matrix<BOOL>::Resize(uint64_t result, int a2, int a3)
{
  v5 = result;
  if (*(result + 16) != a2 || *(result + 20) != a3)
  {
    if (*(result + 8))
    {
      if (*(result + 24) == 1)
      {
        MEMORY[0x22AA55B40]();
      }
    }

    *(v5 + 16) = a2;
    *(v5 + 20) = a3;
    operator new[]();
  }

  return result;
}

uint64_t ErodeOrDilateRect3x3<false>(uint64_t a1, uint64_t a2)
{
  Matrix<BOOL>::Resize(a2, *(a1 + 16), *(a1 + 20));
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = v5 - 3;
  if (v5 < 3 || v4 <= 2)
  {
    ErodeOrDilateRect3x3<false>();
  }

  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  memset(v9, 1, v5 * v4);
  if ((*v8 & 1) == 0)
  {
    *v9 = 0;
    *(v9 + *(a1 + 20)) = 0;
  }

  v10 = 0;
  v11 = v5 - 2;
  v12 = v9 + *(a1 + 20);
  do
  {
    if ((v8[v10 + 1] & 1) == 0)
    {
      v13 = v9 + v10;
      *v13 = 0;
      v13[2] = 0;
      v14 = &v12[v10];
      *v14 = 0;
      v14[2] = 0;
    }

    ++v10;
  }

  while (v11 != v10);
  v15 = &v8[v6 + 2];
  v16 = (v9 + v10);
  v17 = v16 + 1;
  if (!*v15)
  {
    *v16 = 0;
    *(v16 + *(a1 + 20)) = 0;
  }

  v18 = &v8[v6 + 3];
  v19 = v16 + 1;
  v20 = *(a1 + 20);
  v21 = v6 + 3;
  v22 = &v8[2 * v6 + 7];
  v23 = &v8[v6 + 4];
  v24 = 1;
  result = v20 + 1;
  do
  {
    v26 = v17;
    v27 = v22;
    if ((*v18 & 1) == 0)
    {
      *v19 = 0;
      v17[2] = 0;
      *&v19[-v20] = 0;
      *&v19[v20] = 0;
    }

    v28 = 0;
    v29 = *(a1 + 20);
    v30 = &v26[v29 + 1];
    v31 = &v26[-v29 + 1];
    do
    {
      if ((*(v23 + v28) & 1) == 0)
      {
        v32 = &v26[v28];
        v32[1] = 0;
        *(v32 + 1) = 0;
        v33 = &v31[v28];
        *v33 = 0;
        v33[2] = 0;
        v34 = &v30[v28];
        *v34 = 0;
        v34[2] = 0;
      }

      ++v28;
    }

    while (v11 != v28);
    v15 += v21;
    v35 = &v26[v28];
    if (!*v15)
    {
      *(v35 + 1) = 0;
      *&v26[1 - v20 + v28] = 0;
      *&v26[result + v28] = 0;
    }

    v17 = v35 + 2;
    v19 = v35 + 3;
    v18 = v15 + 1;
    v22 += v21;
    v23 += v21;
  }

  while (v24++ != v4 - 2);
  v37 = &v26[v28];
  v38 = &v26[v28 + 3];
  if (!*v18)
  {
    *v38 = 0;
    v37[4] = 0;
    *&v37[-*(a1 + 20) + 3] = 0;
  }

  v39 = -*(a1 + 20);
  do
  {
    v40 = *v27++;
    if ((v40 & 1) == 0)
    {
      *v38 = 0;
      v38[2] = 0;
      v41 = &v38[v39];
      *v41 = 0;
      v41[2] = 0;
    }

    ++v38;
    --v11;
  }

  while (v11);
  if (!v18[v6 + 2])
  {
    *v38 = 0;
    *&v38[-*(a1 + 20)] = 0;
  }

  return result;
}

void ErodeOrDilateRect2x2<true>(uint64_t a1, uint64_t a2)
{
  Matrix<BOOL>::Resize(a2, *(a1 + 16), *(a1 + 20));
  v5 = *(a1 + 16);
  v4 = *(a1 + 20);
  v6 = v4 - 2;
  if (v4 < 2 || v5 <= 1)
  {
    ErodeOrDilateRect2x2<true>();
  }

  v8 = v4 - 1;
  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  bzero(v10, v4 * v5);
  v11 = 0;
  v12 = *(a1 + 20);
  v13 = v6 + 1;
  do
  {
    v14 = 0;
    v15 = v10;
    v16 = &v10[*(a1 + 20)];
    do
    {
      if (*(v9 + v14) == 1)
      {
        *&v10[v14] = 257;
        *&v16[v14] = 257;
      }

      ++v14;
    }

    while (v8 != v14);
    if (*(v9 + v13))
    {
      v17 = &v10[v14];
      *v17 = 1;
      v17[v12] = 1;
    }

    v9 += v13 + 1;
    v10 += v14 + 1;
  }

  while (v11++ != v5 - 2);
  v19 = 0;
  do
  {
    if (*(v9 + v19) == 1)
    {
      v20 = &v15[v19 + v14];
      v20[1] = 1;
      v20[2] = 1;
    }

    ++v19;
  }

  while (v8 != v19);
  if (*(v9 + v6 + 1))
  {
    v15[v19 + 1 + v14] = 1;
  }
}

uint64_t ErodeOrDilateRect3x3<true>(uint64_t a1, uint64_t a2)
{
  Matrix<BOOL>::Resize(a2, *(a1 + 16), *(a1 + 20));
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = v5 - 3;
  if (v5 < 3 || v4 <= 2)
  {
    ErodeOrDilateRect3x3<false>();
  }

  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  bzero(v9, v5 * v4);
  if (*v8 == 1)
  {
    *v9 = 257;
    *(v9 + *(a1 + 20)) = 257;
  }

  v10 = 0;
  v11 = v5 - 2;
  v12 = v9 + *(a1 + 20);
  do
  {
    if (v8[v10 + 1] == 1)
    {
      v13 = v9 + v10;
      *v13 = 1;
      v13[1] = 1;
      v13[2] = 1;
      v14 = &v12[v10];
      *v14 = 257;
      v14[2] = 1;
    }

    ++v10;
  }

  while (v11 != v10);
  v15 = &v8[v6 + 2];
  v16 = v9 + v10;
  v17 = v16 + 1;
  if (*v15)
  {
    v16[1] = 1;
    *v16 = 1;
    v18 = &v16[*(a1 + 20)];
    v18[1] = 1;
    *v18 = 1;
  }

  v19 = &v8[v6 + 3];
  v20 = v16 + 2;
  v21 = *(a1 + 20);
  v22 = v6 + 3;
  v23 = &v8[2 * v6 + 7];
  v24 = &v8[v6 + 4];
  result = 1 - v21;
  v26 = 1;
  do
  {
    v27 = v17;
    v28 = v23;
    if (*v19 == 1)
    {
      *v20 = 1;
      v17[2] = 1;
      *&v20[-v21] = 257;
      *&v20[v21] = 257;
    }

    v29 = 0;
    v30 = *(a1 + 20);
    v31 = &v27[v30 + 1];
    v32 = &v27[-v30 + 1];
    do
    {
      if (*(v24 + v29) == 1)
      {
        v33 = &v27[v29];
        v33[1] = 1;
        v33[2] = 1;
        v33[3] = 1;
        v34 = &v32[v29];
        *v34 = 257;
        v34[2] = 1;
        v35 = &v31[v29];
        *v35 = 257;
        v35[2] = 1;
      }

      ++v29;
    }

    while (v11 != v29);
    v15 += v22;
    v36 = &v27[v29];
    if (*v15)
    {
      *(v36 + 1) = 257;
      *&v27[result + v29] = 257;
      *&v27[v21 + 1 + v29] = 257;
    }

    v17 = v36 + 2;
    v20 = v36 + 3;
    v19 = v15 + 1;
    v23 += v22;
    v24 += v22;
  }

  while (v26++ != v4 - 2);
  v38 = &v27[v29];
  v39 = &v27[v29 + 3];
  if (*v19)
  {
    *v39 = 1;
    v38[4] = 1;
    *&v38[-*(a1 + 20) + 3] = 257;
  }

  v40 = -*(a1 + 20);
  do
  {
    v41 = *v28++;
    if (v41 == 1)
    {
      *v39 = 257;
      v39[2] = 1;
      v42 = &v39[v40];
      *v42 = 257;
      v42[2] = 1;
    }

    ++v39;
    --v11;
  }

  while (v11);
  if (v19[v6 + 2])
  {
    *v39 = 257;
    *&v39[-*(a1 + 20)] = 257;
  }

  return result;
}

uint64_t ImageUtils::CloseRect2x2(uint64_t a1, uint64_t a2)
{
  v4[1] = 0;
  v4[2] = 0;
  v4[0] = &unk_283812CF0;
  v5 = 0;
  ErodeOrDilateRect2x2<true>(a1, v4);
  ImageUtils::ErodeRect2x2(v4, a2);
  return Matrix<BOOL>::~Matrix(v4);
}

uint64_t ImageUtils::CloseRect3x3(uint64_t a1, uint64_t a2)
{
  v4[1] = 0;
  v4[2] = 0;
  v4[0] = &unk_283812CF0;
  v5 = 0;
  ErodeOrDilateRect3x3<true>(a1, v4);
  ErodeOrDilateRect3x3<false>(v4, a2);
  return Matrix<BOOL>::~Matrix(v4);
}

uint64_t Scale<double>(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v11 = *(a1 + 16);
  v12 = *(a1 + 20);
  v13 = vcvtpd_u64_f64(v11 * a4);
  LODWORD(v5) = vcvtpd_u64_f64(v12 * a5);
  Matrix<double>::Matrix(v70, v11, v5);
  Matrix<double>::Resize(a3, v13, v5);
  v66 = a3;
  v14 = v71;
  v15 = a5 < 1.0;
  if ((v15 & a2) != 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = 1.0;
  }

  if ((v15 & a2) != 0)
  {
    v17 = 4.0 / a5;
  }

  else
  {
    v17 = 4.0;
  }

  v18 = vcvtpd_u64_f64(v17);
  v19 = a4 < 1.0;
  if ((v19 & a2) != 0)
  {
    v20 = 4.0 / a4;
  }

  else
  {
    v20 = 4.0;
  }

  if ((v19 & a2) != 0)
  {
    v21 = a4;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = vcvtpd_u64_f64(v20);
  if (v22 <= v18)
  {
    v23 = v18;
  }

  else
  {
    v23 = v22;
  }

  Matrix<double>::Matrix(&v68, 1, v23 + 4);
  v68 = &unk_283812C88;
  if (v5)
  {
    v24 = 0;
    v25 = v14 + 8 * (v11 * v5);
    do
    {
      v67 = 0;
      CalculateWeightsForScale<double>(&v68, v18, &v67 + 1, &v67, v17, (v24 + 0.5) / a5 + -0.5, v16);
      v26 = v67;
      if (v67 >= v12)
      {
        v27 = v67 - v12 + 1;
      }

      else
      {
        v27 = 0;
      }

      v28 = (v71 + 8 * v24);
      if (v28 < v25)
      {
        v29 = -HIDWORD(v67) & (SHIDWORD(v67) >> 31);
        if (v67 >= v12)
        {
          v26 = v12 - 1;
        }

        v30 = *(a1 + 8);
        v31 = v30 + 8 * v26;
        v32 = (v30 + 8 * (HIDWORD(v67) & ~(SHIDWORD(v67) >> 31)));
        do
        {
          v33 = v69;
          if (v29)
          {
            v34 = 0;
            v35 = 0.0;
            do
            {
              v36 = *v33++;
              v35 = v35 + v36 * *v32;
              ++v34;
            }

            while (v34 < v29);
          }

          else
          {
            v35 = 0.0;
          }

          for (i = v32; i < v31; v35 = v35 + v39 * v40)
          {
            v38 = *v33++;
            v39 = v38;
            v40 = *i++;
          }

          v41 = *i;
          v42 = v35 + *v33 * *i;
          if (v27)
          {
            v43 = v33 + 1;
            v44 = v27;
            do
            {
              v45 = *v43++;
              v42 = v42 + v45 * v41;
              --v44;
            }

            while (v44);
          }

          *v28 = v42;
          v28 += v5;
          v32 += v12;
          v31 += 8 * v12;
        }

        while (v28 < v25);
      }

      ++v24;
    }

    while (v24 != v5);
  }

  if (v13)
  {
    v46 = 0;
    v47 = *(v66 + 8);
    do
    {
      v67 = 0;
      CalculateWeightsForScale<double>(&v68, v22, &v67 + 1, &v67, v20, (v46 + 0.5) / a4 + -0.5, v21);
      v48 = v67;
      if (v67 >= v11)
      {
        v49 = v67 - v11 + 1;
      }

      else
      {
        v49 = 0;
      }

      if (v5)
      {
        v50 = -HIDWORD(v67) & (SHIDWORD(v67) >> 31);
        v51 = &v47[v5];
        if (v67 >= v11)
        {
          v48 = v11 - 1;
        }

        v52 = v71 + 8 * (v48 * v5);
        v53 = (v71 + 8 * (HIDWORD(v67) & ~(SHIDWORD(v67) >> 31)) * v5);
        do
        {
          v54 = v69;
          if (v50)
          {
            v55 = 0;
            v56 = 0.0;
            do
            {
              v57 = *v54++;
              v56 = v56 + v57 * *v53;
              ++v55;
            }

            while (v55 < v50);
          }

          else
          {
            v56 = 0.0;
          }

          for (j = v53; j < v52; j += v5)
          {
            v59 = *v54++;
            v56 = v56 + v59 * *j;
          }

          v60 = *j;
          v61 = v56 + *v54 * *j;
          if (v49)
          {
            v62 = v54 + 1;
            v63 = v49;
            do
            {
              v64 = *v62++;
              v61 = v61 + v64 * v60;
              --v63;
            }

            while (v63);
          }

          *v47++ = v61;
          ++v53;
          v52 += 8;
        }

        while (v47 < v51);
      }

      ++v46;
    }

    while (v46 != v13);
  }

  Matrix<double>::~Matrix(&v68);
  return Matrix<double>::~Matrix(v70);
}

void sub_2248634D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t Scale<unsigned short>(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v11 = *(a1 + 16);
  v12 = *(a1 + 20);
  v13 = vcvtpd_u64_f64(v11 * a4);
  LODWORD(v5) = vcvtpd_u64_f64(v12 * a5);
  Matrix<double>::Matrix(v68, v11, v5);
  Matrix<double>::Resize(a3, v13, v5);
  v64 = a3;
  v14 = v69;
  v15 = a5 < 1.0;
  if ((v15 & a2) != 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = 1.0;
  }

  if ((v15 & a2) != 0)
  {
    v17 = 4.0 / a5;
  }

  else
  {
    v17 = 4.0;
  }

  v18 = vcvtpd_u64_f64(v17);
  v19 = a4 < 1.0;
  if ((v19 & a2) != 0)
  {
    v20 = 4.0 / a4;
  }

  else
  {
    v20 = 4.0;
  }

  if ((v19 & a2) != 0)
  {
    v21 = a4;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = vcvtpd_u64_f64(v20);
  if (v22 <= v18)
  {
    v23 = v18;
  }

  else
  {
    v23 = v22;
  }

  Matrix<double>::Matrix(&v66, 1, v23 + 4);
  v66 = &unk_283812C88;
  if (v5)
  {
    v24 = 0;
    v25 = v14 + 8 * (v11 * v5);
    do
    {
      v65 = 0;
      CalculateWeightsForScale<double>(&v66, v18, &v65 + 1, &v65, v17, (v24 + 0.5) / a5 + -0.5, v16);
      v28 = v65;
      if (v65 >= v12)
      {
        v29 = v65 - v12 + 1;
      }

      else
      {
        v29 = 0;
      }

      v30 = (v69 + 8 * v24);
      if (v30 < v25)
      {
        v31 = -HIDWORD(v65) & (SHIDWORD(v65) >> 31);
        if (v65 >= v12)
        {
          v28 = v12 - 1;
        }

        v32 = *(a1 + 8);
        v33 = v32 + 2 * v28;
        v34 = (v32 + 2 * (HIDWORD(v65) & ~(SHIDWORD(v65) >> 31)));
        do
        {
          v35 = v67;
          if (v31)
          {
            v36 = 0;
            LOWORD(v26) = *v34;
            v27 = *&v26;
            v37 = 0.0;
            do
            {
              v38 = *v35++;
              v37 = v37 + v38 * v27;
              ++v36;
            }

            while (v36 < v31);
          }

          else
          {
            v37 = 0.0;
          }

          for (i = v34; i < v33; v37 = v37 + v27 * LODWORD(v40))
          {
            v40 = *v35++;
            v27 = v40;
            LODWORD(v40) = *i++;
          }

          LOWORD(v27) = *i;
          v27 = *&v27;
          v26 = v37 + *v35 * v27;
          if (v29)
          {
            v41 = v35 + 1;
            v42 = v29;
            do
            {
              v43 = *v41++;
              v26 = v26 + v43 * v27;
              --v42;
            }

            while (v42);
          }

          *v30 = v26;
          v30 += v5;
          v34 += v12;
          v33 += 2 * v12;
        }

        while (v30 < v25);
      }

      ++v24;
    }

    while (v24 != v5);
  }

  if (v13)
  {
    v44 = 0;
    v45 = *(v64 + 8);
    do
    {
      v65 = 0;
      CalculateWeightsForScale<double>(&v66, v22, &v65 + 1, &v65, v20, (v44 + 0.5) / a4 + -0.5, v21);
      v46 = v65;
      if (v65 >= v11)
      {
        v47 = v65 - v11 + 1;
      }

      else
      {
        v47 = 0;
      }

      if (v5)
      {
        v48 = -HIDWORD(v65) & (SHIDWORD(v65) >> 31);
        v49 = &v45[v5];
        if (v65 >= v11)
        {
          v46 = v11 - 1;
        }

        v50 = v69 + 8 * (v46 * v5);
        v51 = (v69 + 8 * (HIDWORD(v65) & ~(SHIDWORD(v65) >> 31)) * v5);
        do
        {
          v52 = v67;
          if (v48)
          {
            v53 = 0;
            v54 = 0.0;
            do
            {
              v55 = *v52++;
              v54 = v54 + v55 * *v51;
              ++v53;
            }

            while (v53 < v48);
          }

          else
          {
            v54 = 0.0;
          }

          for (j = v51; j < v50; j += v5)
          {
            v57 = *v52++;
            v54 = v54 + v57 * *j;
          }

          v58 = *j;
          v59 = v54 + *v52 * *j;
          if (v47)
          {
            v60 = v52 + 1;
            v61 = v47;
            do
            {
              v62 = *v60++;
              v59 = v59 + v62 * v58;
              --v61;
            }

            while (v61);
          }

          *v45++ = v59;
          ++v51;
          v50 += 8;
        }

        while (v45 < v49);
      }

      ++v44;
    }

    while (v44 != v13);
  }

  Matrix<double>::~Matrix(&v66);
  return Matrix<double>::~Matrix(v68);
}

void sub_2248638B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t Scale<unsigned char>(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v11 = *(a1 + 16);
  v12 = *(a1 + 20);
  v13 = vcvtpd_u64_f64(v11 * a4);
  LODWORD(v5) = vcvtpd_u64_f64(v12 * a5);
  Matrix<double>::Matrix(v72, v11, v5);
  Matrix<double>::Resize(a3, v13, v5);
  v68 = a3;
  v14 = v73;
  v15 = a5 < 1.0;
  if ((v15 & a2) != 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = 1.0;
  }

  if ((v15 & a2) != 0)
  {
    v17 = 4.0 / a5;
  }

  else
  {
    v17 = 4.0;
  }

  v18 = vcvtpd_u64_f64(v17);
  v19 = a4 < 1.0;
  if ((v19 & a2) != 0)
  {
    v20 = 4.0 / a4;
  }

  else
  {
    v20 = 4.0;
  }

  if ((v19 & a2) != 0)
  {
    v21 = a4;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = vcvtpd_u64_f64(v20);
  if (v22 <= v18)
  {
    v23 = v18;
  }

  else
  {
    v23 = v22;
  }

  Matrix<double>::Matrix(&v70, 1, v23 + 4);
  v70 = &unk_283812C88;
  if (v5)
  {
    v24 = 0;
    v25 = v14 + 8 * (v11 * v5);
    do
    {
      v69 = 0;
      CalculateWeightsForScale<double>(&v70, v18, &v69 + 1, &v69, v17, (v24 + 0.5) / a5 + -0.5, v16);
      v29 = HIDWORD(v69);
      if (v69 < 0)
      {
        v30 = -HIDWORD(v69);
        HIDWORD(v69) = 0;
        v29 = 0;
      }

      else
      {
        v30 = 0;
      }

      v31 = v69;
      if (v69 >= v12)
      {
        v32 = v69 - v12 + 1;
        LODWORD(v69) = v12 - 1;
        v31 = v12 - 1;
      }

      else
      {
        v32 = 0;
      }

      v33 = (v73 + 8 * v24);
      if (v33 < v25)
      {
        v34 = *(a1 + 8);
        v35 = v31;
        v36 = (v34 + v31);
        v37 = (v34 + v29);
        v38 = v35 - v29;
        do
        {
          v39 = v71;
          if (v30)
          {
            v40 = 0;
            LOBYTE(v26) = *v37;
            v27 = *&v26;
            v41 = 0.0;
            do
            {
              v42 = *v39++;
              v28 = v42;
              v41 = v41 + v42 * v27;
              ++v40;
            }

            while (v40 < v30);
          }

          else
          {
            v41 = 0.0;
          }

          if (v37 >= v36)
          {
            v44 = v37;
          }

          else
          {
            v43 = 0;
            do
            {
              v27 = v39[v43];
              LOBYTE(v28) = v37[v43];
              v28 = *&v28;
              v41 = v41 + v27 * v28;
              ++v43;
            }

            while (v38 != v43);
            v39 += v38;
            v44 = v36;
          }

          v28 = *v39;
          LOBYTE(v27) = *v44;
          v27 = *&v27;
          v26 = v41 + *v39 * v27;
          if (v32)
          {
            v45 = v39 + 1;
            v46 = v32;
            do
            {
              v47 = *v45++;
              v28 = v47;
              v26 = v26 + v47 * v27;
              --v46;
            }

            while (v46);
          }

          *v33 = v26;
          v33 += v5;
          v37 += v12;
          v36 += v12;
        }

        while (v33 < v25);
      }

      ++v24;
    }

    while (v24 != v5);
  }

  if (v13)
  {
    v48 = 0;
    v49 = *(v68 + 8);
    do
    {
      v69 = 0;
      CalculateWeightsForScale<double>(&v70, v22, &v69 + 1, &v69, v20, (v48 + 0.5) / a4 + -0.5, v21);
      v50 = v69;
      if (v69 >= v11)
      {
        v51 = v69 - v11 + 1;
      }

      else
      {
        v51 = 0;
      }

      if (v5)
      {
        v52 = -HIDWORD(v69) & (SHIDWORD(v69) >> 31);
        v53 = &v49[v5];
        if (v69 >= v11)
        {
          v50 = v11 - 1;
        }

        v54 = v73 + 8 * (v50 * v5);
        v55 = (v73 + 8 * (HIDWORD(v69) & ~(SHIDWORD(v69) >> 31)) * v5);
        do
        {
          v56 = v71;
          if (v52)
          {
            v57 = 0;
            v58 = 0.0;
            do
            {
              v59 = *v56++;
              v58 = v58 + v59 * *v55;
              ++v57;
            }

            while (v57 < v52);
          }

          else
          {
            v58 = 0.0;
          }

          for (i = v55; i < v54; i += v5)
          {
            v61 = *v56++;
            v58 = v58 + v61 * *i;
          }

          v62 = *i;
          v63 = v58 + *v56 * *i;
          if (v51)
          {
            v64 = v56 + 1;
            v65 = v51;
            do
            {
              v66 = *v64++;
              v63 = v63 + v66 * v62;
              --v65;
            }

            while (v65);
          }

          *v49++ = v63;
          ++v55;
          v54 += 8;
        }

        while (v49 < v53);
      }

      ++v48;
    }

    while (v48 != v13);
  }

  Matrix<double>::~Matrix(&v70);
  return Matrix<double>::~Matrix(v72);
}

void sub_224863CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t Scale<BOOL>(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  v11 = *(a1 + 16);
  v12 = *(a1 + 20);
  v13 = vcvtpd_u64_f64(v11 * a4);
  LODWORD(v5) = vcvtpd_u64_f64(v12 * a5);
  Matrix<double>::Matrix(v72, v11, v5);
  Matrix<double>::Resize(a3, v13, v5);
  v68 = a3;
  v14 = v73;
  v15 = a5 < 1.0;
  if ((v15 & a2) != 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = 1.0;
  }

  if ((v15 & a2) != 0)
  {
    v17 = 4.0 / a5;
  }

  else
  {
    v17 = 4.0;
  }

  v18 = vcvtpd_u64_f64(v17);
  v19 = a4 < 1.0;
  if ((v19 & a2) != 0)
  {
    v20 = 4.0 / a4;
  }

  else
  {
    v20 = 4.0;
  }

  if ((v19 & a2) != 0)
  {
    v21 = a4;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = vcvtpd_u64_f64(v20);
  if (v22 <= v18)
  {
    v23 = v18;
  }

  else
  {
    v23 = v22;
  }

  Matrix<double>::Matrix(&v70, 1, v23 + 4);
  v70 = &unk_283812C88;
  if (v5)
  {
    v24 = 0;
    v25 = v14 + 8 * (v11 * v5);
    do
    {
      v69 = 0;
      CalculateWeightsForScale<double>(&v70, v18, &v69 + 1, &v69, v17, (v24 + 0.5) / a5 + -0.5, v16);
      v29 = v69;
      if (v69 >= v12)
      {
        v30 = v69 - v12 + 1;
      }

      else
      {
        v30 = 0;
      }

      v31 = (v73 + 8 * v24);
      if (v31 < v25)
      {
        v32 = -HIDWORD(v69) & (SHIDWORD(v69) >> 31);
        if (v69 >= v12)
        {
          v29 = v12 - 1;
        }

        v33 = HIDWORD(v69) & ~(SHIDWORD(v69) >> 31);
        v34 = *(a1 + 8);
        v35 = v29;
        v36 = (v34 + v29);
        v37 = (v34 + v33);
        v38 = v35 - v33;
        do
        {
          v39 = v71;
          if (v32)
          {
            v40 = 0;
            LOBYTE(v26) = *v37;
            v27 = *&v26;
            v41 = 0.0;
            do
            {
              v42 = *v39++;
              v28 = v42;
              v41 = v41 + v42 * v27;
              ++v40;
            }

            while (v40 < v32);
          }

          else
          {
            v41 = 0.0;
          }

          if (v37 >= v36)
          {
            v44 = v37;
          }

          else
          {
            v43 = 0;
            do
            {
              v27 = v39[v43];
              LOBYTE(v28) = v37[v43];
              v28 = *&v28;
              v41 = v41 + v27 * v28;
              ++v43;
            }

            while (v38 != v43);
            v39 += v38;
            v44 = v36;
          }

          v28 = *v39;
          LOBYTE(v27) = *v44;
          v27 = *&v27;
          v26 = v41 + *v39 * v27;
          if (v30)
          {
            v45 = v39 + 1;
            v46 = v30;
            do
            {
              v47 = *v45++;
              v28 = v47;
              v26 = v26 + v47 * v27;
              --v46;
            }

            while (v46);
          }

          *v31 = v26;
          v31 += v5;
          v37 += v12;
          v36 += v12;
        }

        while (v31 < v25);
      }

      ++v24;
    }

    while (v24 != v5);
  }

  if (v13)
  {
    v48 = 0;
    v49 = *(v68 + 8);
    do
    {
      v69 = 0;
      CalculateWeightsForScale<double>(&v70, v22, &v69 + 1, &v69, v20, (v48 + 0.5) / a4 + -0.5, v21);
      v50 = v69;
      if (v69 >= v11)
      {
        v51 = v69 - v11 + 1;
      }

      else
      {
        v51 = 0;
      }

      if (v5)
      {
        v52 = -HIDWORD(v69) & (SHIDWORD(v69) >> 31);
        v53 = &v49[v5];
        if (v69 >= v11)
        {
          v50 = v11 - 1;
        }

        v54 = v73 + 8 * (v50 * v5);
        v55 = (v73 + 8 * (HIDWORD(v69) & ~(SHIDWORD(v69) >> 31)) * v5);
        do
        {
          v56 = v71;
          if (v52)
          {
            v57 = 0;
            v58 = 0.0;
            do
            {
              v59 = *v56++;
              v58 = v58 + v59 * *v55;
              ++v57;
            }

            while (v57 < v52);
          }

          else
          {
            v58 = 0.0;
          }

          for (i = v55; i < v54; i += v5)
          {
            v61 = *v56++;
            v58 = v58 + v61 * *i;
          }

          v62 = *i;
          v63 = v58 + *v56 * *i;
          if (v51)
          {
            v64 = v56 + 1;
            v65 = v51;
            do
            {
              v66 = *v64++;
              v63 = v63 + v66 * v62;
              --v65;
            }

            while (v65);
          }

          *v49++ = v63;
          ++v55;
          v54 += 8;
        }

        while (v49 < v53);
      }

      ++v48;
    }

    while (v48 != v13);
  }

  Matrix<double>::~Matrix(&v70);
  return Matrix<double>::~Matrix(v72);
}

void sub_2248640D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

double ImageUtils::Gradient<double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 16);
  v6 = *(a1 + 20);
  Matrix<double>::Resize(a2, v7, v6);
  Matrix<double>::Resize(a3, v7, v6);
  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  v10 = *(a3 + 8);
  v11 = v8 + 1;
  *v9 = v8[1] - *v8;
  v12 = v9 + 1;
  *v10 = v8[v6] - *v8;
  v13 = v10 + 1;
  v14 = v6 - 1;
  if ((v6 - 1) >= 2)
  {
    v15 = 0;
    v16 = v6 - 2;
    do
    {
      v12[v15] = (v8[v15 + 2] - v8[v15]) * 0.5;
      v13[v15] = v8[v6 + 1 + v15] - v8[v15 + 1];
      ++v15;
      --v16;
    }

    while (v16);
    v12 = (v12 + v15 * 8);
    v13 = (v13 + v15 * 8);
    v11 = &v8[v15 + 1];
  }

  *v12 = *v11 - *(v11 - 1);
  v17 = v12 + 1;
  *v13 = v11[v6] - *v11;
  v18 = v13 + 1;
  v19 = v11 + 1;
  if ((v7 - 1) >= 2)
  {
    v20 = 1;
    do
    {
      v12[1] = v11[2] - v11[1];
      v13[1] = (v19[v6] - v19[-v6]) * 0.5;
      v12 += 2;
      v13 += 2;
      if (v14 < 2)
      {
        v11 += 2;
      }

      else
      {
        v21 = 0;
        v22 = v6 - 2;
        do
        {
          v12[v21] = (v11[v21 + 3] - v11[v21 + 1]) * 0.5;
          v13[v21] = (v11[v6 + 2 + v21] - *(v11 + 16 - 8 * v6 + v21 * 8)) * 0.5;
          ++v21;
          --v22;
        }

        while (v22);
        v13 = (v13 + v21 * 8);
        v12 = (v12 + v21 * 8);
        v11 = (v11 + v21 * 8 + 16);
      }

      *v13 = (v11[v6] - v11[-v6]) * 0.5;
      v18 = v13 + 1;
      *v12 = *v11 - *(v11 - 1);
      v17 = v12 + 1;
      ++v20;
      v19 = v11 + 1;
    }

    while (v20 != v7 - 1);
  }

  v23 = v11 + 2;
  *v17 = v11[2] - v11[1];
  v24 = v17 + 1;
  *v18 = v11[1] - v19[-v6];
  v25 = v18 + 1;
  if (v14 >= 2)
  {
    v26 = 0;
    v27 = v6 - 2;
    do
    {
      v24[v26] = (v11[v26 + 3] - v11[v26 + 1]) * 0.5;
      v25[v26] = v11[v26 + 2] - v11[v26 + 2 - v6];
      ++v26;
      --v27;
    }

    while (v27);
    v24 = (v24 + v26 * 8);
    v25 = (v25 + v26 * 8);
    v23 = &v11[v26 + 2];
  }

  *v24 = *v23 - *(v23 - 1);
  result = *v23 - v23[-v6];
  *v25 = result;
  return result;
}

uint64_t ImageUtils::Fliplr<double>(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 20);
  result = Matrix<double>::Resize(a2, v5, v4);
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(a2 + 8);
    do
    {
      if (v4)
      {
        v10 = (*(a1 + 8) + 8 * v4 - 8 + 8 * v7);
        v11 = v4;
        do
        {
          v12 = *v10--;
          *v9++ = v12;
          --v11;
        }

        while (v11);
      }

      ++v8;
      v7 += v4;
    }

    while (v8 != v5);
  }

  return result;
}

uint64_t ImageUtils::Flipud<double>(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 20);
  result = Matrix<double>::Resize(a2, v5, v4);
  if (v5)
  {
    v7 = 0;
    v8 = *(a2 + 8);
    do
    {
      if (v4)
      {
        v9 = (*(a1 + 8) + 8 * ((v5 + ~v7) * v4));
        v10 = v4;
        do
        {
          v11 = *v9++;
          *v8++ = v11;
          --v10;
        }

        while (v10);
      }

      ++v7;
    }

    while (v7 != v5);
  }

  return result;
}

double ImageUtils::Rot90<double>(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 20);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      Matrix<double>::Resize(a3, v6, v5);
      v20 = v6 * v5;
      if (v6 * v5)
      {
        v21 = (*(a1 + 8) + 8 * (v20 - 1));
        v22 = *(a3 + 8);
        do
        {
          v23 = *v21--;
          result = v23;
          *v22++ = v23;
          --v20;
        }

        while (v20);
      }
    }

    else if (a2 == 3)
    {
      Matrix<double>::Resize(a3, v5, v6);
      if (v5)
      {
        v13 = 0;
        v14 = *(a3 + 8);
        v15 = 8 * ((v6 - 1) * v5);
        do
        {
          if (v6)
          {
            v16 = (*(a1 + 8) + v15);
            v17 = v6;
            do
            {
              result = *v16;
              *v14++ = *v16;
              v16 -= v5;
              --v17;
            }

            while (v17);
          }

          ++v13;
          v15 += 8;
        }

        while (v13 != v5);
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      Matrix<double>::Resize(a3, v5, v6);
      if (v5)
      {
        v8 = 0;
        v9 = *(a3 + 8);
        v10 = 8 * (v5 - 1);
        do
        {
          if (v6)
          {
            v11 = (*(a1 + 8) + v10);
            v12 = v6;
            do
            {
              result = *v11;
              *v9++ = *v11;
              v11 += v5;
              --v12;
            }

            while (v12);
          }

          ++v8;
          v10 -= 8;
        }

        while (v8 != v5);
      }
    }
  }

  else
  {
    v18 = *(a1 + 8);
    Matrix<double>::Resize(a3, v6, v5);
    v19 = *(a3 + 8);

    memcpy(v19, v18, 8 * (v6 * v5));
  }

  return result;
}

unsigned int *ImageUtils::Rot90<BOOL>(unsigned int *result, int a2, uint64_t a3)
{
  v4 = result;
  v6 = result[4];
  v5 = result[5];
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      result = Matrix<BOOL>::Resize(a3, v6, v5);
      v17 = v6 * v5;
      if (v6 * v5)
      {
        v18 = (*(v4 + 1) + (v17 - 1));
        v19 = *(a3 + 8);
        do
        {
          v20 = *v18--;
          *v19++ = v20;
          --v17;
        }

        while (v17);
      }
    }

    else if (a2 == 3)
    {
      result = Matrix<BOOL>::Resize(a3, v5, v6);
      if (v5)
      {
        v11 = 0;
        v12 = *(a3 + 8);
        do
        {
          if (v6)
          {
            v13 = (*(v4 + 1) + ((v6 - 1) * v5) + v11);
            v14 = v6;
            do
            {
              *v12++ = *v13;
              v13 -= v5;
              --v14;
            }

            while (v14);
          }

          ++v11;
        }

        while (v11 != v5);
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      result = Matrix<BOOL>::Resize(a3, v5, v6);
      if (v5)
      {
        v7 = 0;
        v8 = *(a3 + 8);
        do
        {
          if (v6)
          {
            v9 = (*(v4 + 1) + (v5 - 1) - v7);
            v10 = v6;
            do
            {
              *v8++ = *v9;
              v9 += v5;
              --v10;
            }

            while (v10);
          }

          ++v7;
        }

        while (v7 != v5);
      }
    }
  }

  else
  {
    v15 = *(result + 1);
    Matrix<BOOL>::Resize(a3, v6, v5);
    v16 = *(a3 + 8);

    return memcpy(v16, v15, (v6 * v5));
  }

  return result;
}

void ImageUtils::OtsuThreshold(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 20);
  v4 = *(a1 + 8);
  v5 = *v4;
  v6 = v3 * v2;
  if (v3 * v2 < 2)
  {
    v9 = *v4;
  }

  else
  {
    v7 = v4 + 1;
    v8 = v6 - 1;
    v9 = v5;
    do
    {
      if (*v7 >= v5)
      {
        if (*v7 > v9)
        {
          v9 = *v7;
        }
      }

      else
      {
        v5 = *v7;
      }

      ++v7;
      --v8;
    }

    while (v8);
  }

  if (v5 != v9)
  {
    v10 = malloc_type_calloc(0x100uLL, 8uLL, 0x100004000313F17uLL);
    v11 = v10;
    if (v6)
    {
      v12 = *(a1 + 8);
      do
      {
        v13 = *v12++;
        v14 = vcvtad_u64_f64((v13 - v5) / (v9 - v5) * 255.0);
        *&v10[v14] = 1.0 / (v2 * v3) + *&v10[v14];
        --v6;
      }

      while (v6);
    }

    v15 = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
    v16 = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
    v17 = v16;
    v18 = 0;
    v19 = *v11;
    *v15 = *v11;
    *v16 = v19;
    v20 = 2;
    v21 = v16;
    v22 = v15;
    do
    {
      ++v21;
      ++v22;
      *&v15[v18 + 1] = *&v15[v18] + *&v11[v18 + 1];
      v23 = *&v16[v18] + *&v11[v18 + 1] * v20;
      *&v16[++v18] = v23;
      ++v20;
    }

    while ((v18 * 8) != 2040);
    v24 = 0;
    v25 = 0;
    v26 = *&v15[v18 - 255];
    v27 = -(*&v16[v18 - 255] - v23 * v26);
    v28 = v27 * v27 / (v26 * (1.0 - v26));
    v29 = 1;
    v30 = 1;
    do
    {
      v31 = &v22[v24 - 254];
      v32 = -(*&v21[v24 - 254] - v23 * *v31);
      v33 = v32 * v32 / (*v31 * (1.0 - *v31));
      if (v33 <= v28)
      {
        if (v33 == v28)
        {
          v25 += v24 + 1;
          ++v30;
        }

        v33 = v28;
      }

      else
      {
        v30 = 1;
        v25 = v29;
      }

      ++v29;
      ++v24;
      v28 = v33;
    }

    while (v24 != 254);
    v34 = &v11[v18 - 255];
    free(v15);
    free(v17);
    free(v34);
  }
}

uint64_t ImageUtils::ExtractPatch<double>(uint64_t a1, unsigned int a2, unsigned int a3, int a4, unsigned int a5, uint64_t a6)
{
  v10 = a2;
  v11 = *(a1 + 20);
  v12 = *(a1 + 8);
  result = Matrix<double>::Resize(a6, a3 - a2 + 1, a5 - a4 + 1);
  if (a3 >= v10)
  {
    v14 = v12 + 8 * v11 * v10;
    v15 = *(a6 + 8);
    do
    {
      for (i = a4; i <= a5; ++i)
      {
        *v15++ = *(v14 + 8 * i);
      }

      ++v10;
      v14 += 8 * v11;
    }

    while (v10 <= a3);
  }

  return result;
}

void ImageUtils::Conv2<double>()
{
  v1 = 0;
  v2 = 0;
  v0 = &unk_283812C58;
  v3 = 0;
  ImageUtils::Rot90<double>();
}

void ImageUtils::Filter2<double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a3)
  {
    ImageUtils::Filter2<double>();
  }

  Matrix<double>::Resize(a3, *(a1 + 16), *(a1 + 20));
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a2 + 8);
  v10 = *(a3 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);

  vDSPImgfir<double>(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t ImageUtils::Conv2<float>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = &unk_283812D20;
  v7 = 0;
  ImageUtils::Rot90<float>(a2, 2, v6);
  ImageUtils::Filter2<float>(a1, v6, a3);
  return Matrix<float>::~Matrix(v6);
}

float ImageUtils::Rot90<float>(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 20);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      Matrix<float>::Resize(a3, v6, v5);
      v20 = v6 * v5;
      if (v6 * v5)
      {
        v21 = (*(a1 + 8) + 4 * (v20 - 1));
        v22 = *(a3 + 8);
        do
        {
          v23 = *v21--;
          result = v23;
          *v22++ = v23;
          --v20;
        }

        while (v20);
      }
    }

    else if (a2 == 3)
    {
      Matrix<float>::Resize(a3, v5, v6);
      if (v5)
      {
        v13 = 0;
        v14 = *(a3 + 8);
        v15 = 4 * ((v6 - 1) * v5);
        do
        {
          if (v6)
          {
            v16 = (*(a1 + 8) + v15);
            v17 = v6;
            do
            {
              result = *v16;
              *v14++ = *v16;
              v16 -= v5;
              --v17;
            }

            while (v17);
          }

          ++v13;
          v15 += 4;
        }

        while (v13 != v5);
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      Matrix<float>::Resize(a3, v5, v6);
      if (v5)
      {
        v8 = 0;
        v9 = *(a3 + 8);
        v10 = 4 * (v5 - 1);
        do
        {
          if (v6)
          {
            v11 = (*(a1 + 8) + v10);
            v12 = v6;
            do
            {
              result = *v11;
              *v9++ = *v11;
              v11 += v5;
              --v12;
            }

            while (v12);
          }

          ++v8;
          v10 -= 4;
        }

        while (v8 != v5);
      }
    }
  }

  else
  {
    v18 = *(a1 + 8);
    Matrix<float>::Resize(a3, v6, v5);
    v19 = *(a3 + 8);

    memcpy(v19, v18, 4 * (v6 * v5));
  }

  return result;
}

void ImageUtils::Filter2<float>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a3)
  {
    ImageUtils::Filter2<double>();
  }

  Matrix<float>::Resize(a3, *(a1 + 16), *(a1 + 20));
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = *(a2 + 8);
  v10 = *(a3 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 20);

  vDSPImgfir<float>(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t ImageUtils::ConnectedComp<BOOL>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 20);
  Matrix<unsigned short>::Resize(a3, v8, v9);
  v10 = *(a3 + 8);
  DisjointSet::DisjointSet(&v77);
  DisjointSet::SetCapacity(&v77, 0xFFFEu);
  *v78 = 0;
  v11 = v77;
  if (!v77)
  {
    __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
  }

  v12 = v79;
  *v79 = 0;
  v13 = 1;
  *v78 = 1;
  if (*v7 == 1)
  {
    if (v11 == 1)
    {
      __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
    }

    v14 = 1;
    v12[1] = 1;
    v13 = 2;
    *v78 = 2;
    v15 = 1;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  *v10 = v14;
  if (v9 != 1)
  {
    v16 = 0;
    v17 = v10 + 1;
    for (i = v9 - 1; i; --i)
    {
      if (v7[v16 + 1] == 1)
      {
        if (!v10[v16] || (v7[v16] & 1) == 0 || (v19 = *(v17 - 1)) == 0)
        {
          if (v15 <= 65531)
          {
            if (v13 >= v11)
            {
              __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
            }

            v12[v13] = v13;
            *v17 = v13++;
            *v78 = v13;
            ++v15;
            goto LABEL_18;
          }

          v19 = v13 - 1;
        }

        *v17 = v19;
      }

      else
      {
        *v17 = 0;
      }

LABEL_18:
      ++v17;
      ++v16;
    }
  }

  v69 = a3;
  v70 = a4;
  v75 = v9;
  v71 = v8;
  if (a2 == 4)
  {
    v74 = v9 - 1;
    v47 = v8 - 1;
    if (!v47)
    {
      goto LABEL_132;
    }

    v48 = 1 - v9;
    v49 = v9;
    while (1)
    {
      if (v7[v49] != 1)
      {
        v10[v49] = 0;
        goto LABEL_108;
      }

      v50 = v49 - v9;
      if (v10[v49 - v9])
      {
        if (v7[v50])
        {
          v51 = v10[v50];
          if (v51)
          {
            goto LABEL_107;
          }
        }
      }

      v52 = *v78;
      if (v15 > 65531)
      {
        break;
      }

      if (*v78 >= v77)
      {
        __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
      }

      v79[*v78] = v78[0];
      *v78 = v52 + 1;
      v10[v49] = v52;
      ++v15;
LABEL_108:
      if (v9 != 1)
      {
        v53 = v74;
        while (1)
        {
          v54 = v49 + 1;
          if (v7[v49 + 1] == 1)
          {
            break;
          }

          v10[v54] = 0;
LABEL_129:
          ++v49;
          if (!--v53)
          {
            ++v49;
            v9 = v75;
            goto LABEL_131;
          }
        }

        if (v10[v49] && v7[v49] == 1)
        {
          v55 = v10[v49];
        }

        else
        {
          v55 = 0;
        }

        v56 = v48 + v49;
        v57 = v10[v48 + v49];
        if (v55 != v57 && v10[v56] && v7[v56] == 1)
        {
          if (v55)
          {
            DisjointSet::Unite(&v77, v57, v55);
LABEL_124:
            v10[v54] = v55;
            goto LABEL_129;
          }

          v55 = v10[v48 + v49];
        }

        if (!v55)
        {
          v58 = *v78;
          if (v15 > 65531)
          {
            v10[v54] = v78[0] - 1;
          }

          else
          {
            if (*v78 >= v77)
            {
              __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
            }

            v79[*v78] = v78[0];
            *v78 = v58 + 1;
            v10[v54] = v58;
            ++v15;
          }

          goto LABEL_129;
        }

        goto LABEL_124;
      }

      ++v49;
LABEL_131:
      if (!--v47)
      {
        goto LABEL_132;
      }
    }

    LOWORD(v51) = v78[0] - 1;
LABEL_107:
    v10[v49] = v51;
    goto LABEL_108;
  }

  if (a2 != 8)
  {
    goto LABEL_132;
  }

  v20 = v8 - 1;
  if (v8 == 1)
  {
    goto LABEL_132;
  }

  v21 = v9 - 2;
  v72 = -v9;
  v22 = v9;
  do
  {
    if (v7[v22] == 1)
    {
      v23 = v22 - v9;
      if (v10[v22 - v9] && v7[v23] == 1)
      {
        v24 = v10[v23];
      }

      else
      {
        v24 = 0;
      }

      v25 = v23 + 1;
      v26 = v10[v25];
      if (v24 != v26 && v10[v25] && v7[v25] == 1)
      {
        if (v24)
        {
          DisjointSet::Unite(&v77, v26, v24);
LABEL_36:
          v10[v22] = v24;
          goto LABEL_41;
        }

        v24 = v10[v25];
      }

      if (!v24)
      {
        v27 = *v78;
        if (v15 > 65531)
        {
          v10[v22] = v78[0] - 1;
        }

        else
        {
          if (*v78 >= v77)
          {
            __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
          }

          v79[*v78] = v78[0];
          *v78 = v27 + 1;
          v10[v22] = v27;
          ++v15;
        }

        goto LABEL_41;
      }

      goto LABEL_36;
    }

    v10[v22] = 0;
LABEL_41:
    if (v9 == 2)
    {
      v28 = v22 + 1;
      goto LABEL_76;
    }

    v73 = v20;
    v29 = 0;
    v30 = v72 + v22;
    do
    {
      v31 = v22 + v29;
      v32 = v22 + v29 + 1;
      if (v7[v32] != 1)
      {
        v10[v32] = 0;
        goto LABEL_74;
      }

      if (v10[v31] && v7[v31] == 1)
      {
        v33 = v10[v31];
      }

      else
      {
        v33 = 0;
      }

      v34 = v30 + v29;
      v35 = v10[v30 + v29];
      if (v33 != v35 && v10[v34] && v7[v34] == 1)
      {
        if (v33)
        {
          DisjointSet::Unite(&v77, v35, v33);
        }

        else
        {
          v33 = v10[v34];
        }
      }

      v36 = v34 + 1;
      v37 = v10[v34 + 1];
      if (v33 != v37 && v10[v36] && v7[v36] == 1)
      {
        if (v33)
        {
          DisjointSet::Unite(&v77, v37, v33);
        }

        else
        {
          v33 = v10[v34 + 1];
        }
      }

      v38 = v34 + 2;
      v39 = v10[v34 + 2];
      if (v33 != v39 && v10[v38] && v7[v38] == 1)
      {
        if (v33)
        {
          DisjointSet::Unite(&v77, v39, v33);
LABEL_69:
          v10[v32] = v33;
          goto LABEL_74;
        }

        v33 = v10[v34 + 2];
      }

      if (v33)
      {
        goto LABEL_69;
      }

      v40 = *v78;
      if (v15 > 65531)
      {
        v10[v32] = v78[0] - 1;
      }

      else
      {
        if (*v78 >= v77)
        {
          __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
        }

        v79[*v78] = v78[0];
        *v78 = v40 + 1;
        v10[v32] = v40;
        ++v15;
      }

LABEL_74:
      ++v29;
    }

    while (v21 != v29);
    v22 += v29;
    v28 = v22 + 1;
    v20 = v73;
    v9 = v75;
LABEL_76:
    v41 = v28;
    if (v7[v28])
    {
      v42 = v28 - v9;
      v43 = v41 - v9 - 1;
      if (v10[v43] && v7[v43] == 1)
      {
        v44 = v10[v43];
      }

      else
      {
        v44 = 0;
      }

      v45 = v10[v42];
      if (v44 != v45 && v10[v42] && v7[v42] == 1)
      {
        if (v44)
        {
          DisjointSet::Unite(&v77, v45, v44);
          goto LABEL_89;
        }

        v44 = v10[v42];
      }

      if (v44)
      {
LABEL_89:
        v10[v41] = v44;
      }

      else
      {
        v46 = *v78;
        if (v15 > 65531)
        {
          v10[v41] = v78[0] - 1;
        }

        else
        {
          if (*v78 >= v77)
          {
            __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
          }

          v79[*v78] = v78[0];
          *v78 = v46 + 1;
          v10[v41] = v46;
          ++v15;
        }
      }
    }

    else
    {
      v10[v28] = 0;
    }

    v22 += 2;
    --v20;
  }

  while (v20);
LABEL_132:
  v59 = DisjointSet::Compact(&v77, v78[0], 0);
  v60 = v59;
  v61 = *(v69 + 8);
  v62 = v71 * v9;
  if (v70)
  {
    std::vector<ImageUtils::Blob>::resize(v70, (v59 - 1));
    v76 = 0;
    if (v62)
    {
      v63 = 0;
      do
      {
        v64 = v79[*v61];
        *v61 = v64;
        if (v64)
        {
          v65 = (v64 - 1);
          if (0xAAAAAAAAAAAAAAABLL * ((v70[1] - *v70) >> 3) <= v65)
          {
            std::vector<ImageUtils::Blob>::__throw_out_of_range[abi:ne200100]();
          }

          std::vector<unsigned int>::push_back[abi:ne200100]((*v70 + 24 * v65), &v76);
          v63 = v76;
        }

        v76 = ++v63;
        ++v61;
      }

      while (v63 < v62);
    }
  }

  else if (v62 >= 1)
  {
    v66 = v79;
    v67 = v62 + 1;
    do
    {
      *v61 = v66[*v61];
      ++v61;
      --v67;
    }

    while (v67 > 1);
  }

  DisjointSet::~DisjointSet(&v77);
  return v60;
}

void sub_2248656CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

uint64_t Matrix<unsigned short>::Resize(uint64_t result, int a2, int a3)
{
  v5 = result;
  if (*(result + 16) != a2 || *(result + 20) != a3)
  {
    if (*(result + 8))
    {
      if (*(result + 24) == 1)
      {
        MEMORY[0x22AA55B40]();
      }
    }

    *(v5 + 16) = a2;
    *(v5 + 20) = a3;
    operator new[]();
  }

  return result;
}

uint64_t DisjointSet::Unite(DisjointSet *this, uint64_t a2, unsigned int a3)
{
  v3 = a2;
  v5 = *(this + 1);
  v6 = a2;
  do
  {
    v7 = v6;
    v6 = *(v5 + 2 * v6);
  }

  while (v7 > v6);
  if (a2 != a3)
  {
    v8 = a3;
    do
    {
      v9 = v8;
      v8 = *(v5 + 2 * v8);
    }

    while (v9 > v8);
    if (v7 >= v9)
    {
      v7 = v9;
    }

    else
    {
      v7 = v7;
    }

    DisjointSet::SetRoot(this, a3, v7);
  }

  DisjointSet::SetRoot(this, v3, v7);
  return v7;
}

void std::vector<ImageUtils::Blob>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<ImageUtils::Blob>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

uint64_t ImageUtils::ConnectedComp<MatrixMxN<1u,3u,double>>(uint64_t a1, int a2, uint64_t a3, void *a4, double a5)
{
  v147 = *(a1 + 8);
  v9 = *(a1 + 16);
  v146 = *(a1 + 20);
  Matrix<unsigned short>::Resize(a3, v9, v146);
  v149 = *(a3 + 8);
  DisjointSet::DisjointSet(&v152);
  DisjointSet::SetCapacity(&v152, 0xFFFEu);
  *v153 = 0;
  v10 = v152;
  if (!v152)
  {
    __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
  }

  v11 = 0;
  v12 = v154;
  *v154 = 0;
  *v153 = 1;
  do
  {
    v13 = *(v147 + v11);
    v14 = v13 == 0.0 || v11 == 16;
    v11 += 8;
  }

  while (!v14);
  if (v13 == 0.0)
  {
    v15 = 0;
    v144 = 0;
    v16 = 1;
  }

  else
  {
    if (v10 == 1)
    {
      __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
    }

    v15 = 1;
    v12[1] = 1;
    v16 = 2;
    *v153 = 2;
    v144 = 1;
  }

  *v149 = v15;
  if (v146 != 1)
  {
    v17 = 0;
    v18 = v146 - 2;
    v19 = v147 + 24;
    v20 = 1;
    do
    {
      v21 = 0;
      v22 = v18;
      v23 = v20;
      v24 = v147 + 24 * v20;
      do
      {
        v25 = *(v19 + v21);
        v26 = v25 == 0.0 || v21 == 16;
        v21 += 8;
      }

      while (!v26);
      if (v25 == 0.0)
      {
        v149[v23] = 0;
      }

      else
      {
        if (!v149[v23 - 1])
        {
          goto LABEL_26;
        }

        v27 = 0;
        v28 = 0.0;
        do
        {
          v28 = v28 + *(v24 + v27) * *(v147 + 24 * v17 + v27);
          v27 += 8;
        }

        while (v27 != 24);
        if (fabs(v28) <= a5 / 1000.0 || (v29 = v149[(v23 - 1)]) == 0)
        {
LABEL_26:
          if (v144 <= 65531)
          {
            if (v16 >= v10)
            {
              __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
            }

            v12[v16] = v16;
            *v153 = v16 + 1;
            v149[v23] = v16;
            ++v144;
            ++v16;
            goto LABEL_32;
          }

          v29 = v16 - 1;
        }

        v149[v23] = v29;
      }

LABEL_32:
      v20 = v23 + 1;
      v18 = v22 - 1;
      v19 += 24;
      ++v17;
    }

    while (v22);
  }

  v140 = a3;
  v141 = a4;
  v142 = v9;
  if (a2 == 4)
  {
    v98 = v9 - 1;
    v99 = v146;
    v100 = v147;
    v101 = v149;
    if (v9 == 1)
    {
      goto LABEL_200;
    }

    v102 = a5 / 1000.0;
    v103 = v146;
    while (1)
    {
      v104 = 0;
      v105 = (v100 + 24 * v103);
      v150 = *v105;
      v151 = *(v105 + 2);
      do
      {
        v106 = *(&v150 + v104);
        v107 = v106 == 0.0 || v104 == 16;
        v104 += 8;
      }

      while (!v107);
      if (v106 == 0.0)
      {
        v101[v103] = 0;
        goto LABEL_167;
      }

      v108 = v103 - v99;
      if (v101[v103 - v99])
      {
        v109 = 0;
        v110 = 0.0;
        do
        {
          v110 = v110 + *(v100 + 24 * v103 + v109) * *(v100 + 24 * v108 + v109);
          v109 += 8;
        }

        while (v109 != 24);
        if (fabs(v110) > v102)
        {
          v111 = v101[v108];
          if (v111)
          {
            goto LABEL_166;
          }
        }
      }

      v112 = *v153;
      if (v144 > 65531)
      {
        break;
      }

      if (*v153 >= v152)
      {
        __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
      }

      v154[*v153] = v153[0];
      *v153 = v112 + 1;
      v101[v103] = v112;
      ++v144;
LABEL_167:
      v113 = v103 + 1;
      if (v99 != 1)
      {
        v114 = 1 - v146 + v103;
        v115 = v146 - 2;
        while (1)
        {
          v116 = 0;
          v117 = v115;
          v118 = v100 + 24 * v113;
          v119 = v113;
          v120 = (v100 + 24 * v113);
          v150 = *v120;
          v151 = *(v120 + 2);
          do
          {
            v121 = *(&v150 + v116);
            v122 = v121 == 0.0 || v116 == 16;
            v116 += 8;
          }

          while (!v122);
          if (v121 != 0.0)
          {
            break;
          }

          v101[v119] = 0;
LABEL_198:
          v113 = v119 + 1;
          v115 = v117 - 1;
          ++v103;
          ++v114;
          if (!v117)
          {
            goto LABEL_199;
          }
        }

        if (!v101[v103])
        {
          goto LABEL_181;
        }

        v123 = 0;
        v124 = 0.0;
        do
        {
          v124 = v124 + *(v118 + v123) * *(v100 + 24 * v103 + v123);
          v123 += 8;
        }

        while (v123 != 24);
        if (fabs(v124) > v102)
        {
          v125 = v101[v103];
        }

        else
        {
LABEL_181:
          v125 = 0;
        }

        v126 = v149[(v119 - v146)];
        if (v125 != v126)
        {
          if (v149[v119 - v146])
          {
            v127 = 0;
            v128 = 0.0;
            do
            {
              v128 = v128 + *(v118 + v127) * *(v100 + 24 * v114 + v127);
              v127 += 8;
            }

            while (v127 != 24);
            if (fabs(v128) > v102)
            {
              if (v125)
              {
                DisjointSet::Unite(&v152, v126, v125);
                goto LABEL_192;
              }

              v125 = v149[(v119 - v146)];
            }
          }
        }

        if (v125)
        {
LABEL_192:
          v101 = v149;
          v149[v119] = v125;
        }

        else
        {
          v129 = *v153;
          if (v144 <= 65531)
          {
            v100 = v147;
            v101 = v149;
            if (*v153 >= v152)
            {
              __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
            }

            v154[*v153] = v153[0];
            *v153 = v129 + 1;
            v149[v119] = v129;
            ++v144;
            goto LABEL_198;
          }

          v101 = v149;
          v149[v119] = v153[0] - 1;
        }

        v100 = v147;
        goto LABEL_198;
      }

LABEL_199:
      v103 = v113;
      --v98;
      v99 = v146;
      if (!v98)
      {
        goto LABEL_200;
      }
    }

    LOWORD(v111) = v153[0] - 1;
LABEL_166:
    v101[v103] = v111;
    goto LABEL_167;
  }

  v30 = v146;
  v31 = v147;
  v32 = v149;
  if (a2 == 8)
  {
    v33 = v9 - 1;
    if (v9 != 1)
    {
      v34 = a5 / 1000.0;
      v35 = v146;
      do
      {
        v36 = 0;
        do
        {
          v37 = *(v31 + 24 * v35 + v36);
          v38 = v37 == 0.0 || v36 == 16;
          v36 += 8;
        }

        while (!v38);
        if (v37 == 0.0)
        {
          v32[v35] = 0;
          goto LABEL_66;
        }

        v39 = v35 - v30;
        if (!v32[v35 - v30])
        {
          goto LABEL_49;
        }

        v40 = 0;
        v41 = v31 + 24 * v35;
        v42 = v31 + 24 * v39;
        v43 = 0.0;
        do
        {
          v43 = v43 + *(v41 + v40) * *(v42 + v40);
          v40 += 8;
        }

        while (v40 != 24);
        if (fabs(v43) > v34)
        {
          v44 = v32[v39];
        }

        else
        {
LABEL_49:
          v44 = 0;
        }

        v45 = v39 + 1;
        v46 = v149[v39 + 1];
        if (v44 != v46)
        {
          if (v149[v45])
          {
            v47 = 0;
            v48 = 0.0;
            v49 = v147 + 24 * v45;
            do
            {
              v48 = v48 + *(v147 + 24 * v35 + v47) * *(v49 + v47);
              v47 += 8;
            }

            while (v47 != 24);
            if (fabs(v48) > v34)
            {
              if (v44)
              {
                DisjointSet::Unite(&v152, v46, v44);
LABEL_60:
                v32 = v149;
                v149[v35] = v44;
LABEL_65:
                v31 = v147;
                goto LABEL_66;
              }

              v44 = v46;
            }
          }
        }

        if (v44)
        {
          goto LABEL_60;
        }

        v50 = *v153;
        if (v144 > 65531)
        {
          v32 = v149;
          v149[v35] = v153[0] - 1;
          goto LABEL_65;
        }

        v31 = v147;
        v32 = v149;
        if (*v153 >= v152)
        {
          __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
        }

        v154[*v153] = v153[0];
        *v153 = v50 + 1;
        v149[v35] = v50;
        ++v144;
LABEL_66:
        v143 = v33;
        v51 = v35 + 1;
        if (v30 != 2)
        {
          v53 = v35 - v146;
          v54 = 1 - v146 + v35;
          v55 = 2 - v146 + v35;
          v56 = v146 - 3;
          while (1)
          {
            v57 = 0;
            v52 = v51;
            v58 = v56;
            v59 = v31 + 24 * v55;
            v60 = v31 + 24 * v51;
            v61 = v31 + 24 * v54;
            v62 = (v31 + 24 * v51);
            v150 = *v62;
            v151 = *(v62 + 2);
            do
            {
              v63 = *(&v150 + v57);
              v64 = v63 == 0.0 || v57 == 16;
              v57 += 8;
            }

            while (!v64);
            if (v63 != 0.0)
            {
              break;
            }

            v32[v51] = 0;
LABEL_114:
            v51 = v52 + 1;
            v56 = v58 - 1;
            ++v35;
            ++v53;
            ++v54;
            ++v55;
            if (!v58)
            {
              goto LABEL_115;
            }
          }

          v148 = v51;
          v145 = v56;
          if (!v32[v35])
          {
            goto LABEL_81;
          }

          v65 = 0;
          v66 = 0.0;
          do
          {
            v66 = v66 + *(v60 + v65) * *(v31 + 24 * v35 + v65);
            v65 += 8;
          }

          while (v65 != 24);
          if (fabs(v66) > v34)
          {
            v67 = v32[v35];
          }

          else
          {
LABEL_81:
            v67 = 0;
          }

          v68 = v51 - v146;
          v69 = v51 - v146 - 1;
          v70 = v149[v69];
          if (v67 != v70)
          {
            if (v149[v69])
            {
              v71 = 0;
              v72 = 0.0;
              do
              {
                v72 = v72 + *(v60 + v71) * *(v31 + 24 * v53 + v71);
                v71 += 8;
              }

              while (v71 != 24);
              if (fabs(v72) > v34)
              {
                if (v67)
                {
                  DisjointSet::Unite(&v152, v70, v67);
                }

                else
                {
                  v67 = v70;
                }
              }
            }
          }

          v73 = v149[v68];
          if (v67 != v73)
          {
            if (v149[v68])
            {
              v74 = 0;
              v75 = 0.0;
              do
              {
                v75 = v75 + *(v60 + v74) * *(v61 + v74);
                v74 += 8;
              }

              while (v74 != 24);
              if (fabs(v75) > v34)
              {
                if (v67)
                {
                  DisjointSet::Unite(&v152, v73, v67);
                }

                else
                {
                  v67 = v149[v68];
                }
              }
            }
          }

          v76 = v149[v68 + 1];
          if (v67 != v76)
          {
            if (v149[v68 + 1])
            {
              v77 = 0;
              v78 = 0.0;
              do
              {
                v78 = v78 + *(v60 + v77) * *(v59 + v77);
                v77 += 8;
              }

              while (v77 != 24);
              if (fabs(v78) > v34)
              {
                if (v67)
                {
                  DisjointSet::Unite(&v152, v76, v67);
                  goto LABEL_108;
                }

                v67 = v149[v68 + 1];
              }
            }
          }

          if (v67)
          {
LABEL_108:
            v32 = v149;
            v52 = v148;
            v149[v148] = v67;
          }

          else
          {
            v79 = *v153;
            if (v144 <= 65531)
            {
              v31 = v147;
              v32 = v149;
              v52 = v148;
              v58 = v145;
              if (*v153 >= v152)
              {
                __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
              }

              v154[*v153] = v153[0];
              *v153 = v79 + 1;
              v149[v148] = v79;
              ++v144;
              goto LABEL_114;
            }

            v32 = v149;
            v52 = v148;
            v149[v148] = v153[0] - 1;
          }

          v31 = v147;
          v58 = v145;
          goto LABEL_114;
        }

        v52 = v35;
LABEL_115:
        v80 = 0;
        v81 = v51;
        v82 = v31 + 24 * v51;
        do
        {
          v83 = *(v82 + v80);
          v84 = v83 == 0.0 || v80 == 16;
          v80 += 8;
        }

        while (!v84);
        if (v83 != 0.0)
        {
          v85 = v81 - v146;
          v86 = v81 - v146 - 1;
          if (v32[v86])
          {
            v87 = 0;
            v88 = v31 + 24 * v81;
            v89 = v31 + 24 * v86;
            v90 = 0.0;
            do
            {
              v90 = v90 + *(v88 + v87) * *(v89 + v87);
              v87 += 8;
            }

            while (v87 != 24);
            v91 = v52;
            if (fabs(v90) > v34)
            {
              v92 = v32[v86];
LABEL_130:
              v93 = v149[v85];
              if (v92 != v93)
              {
                if (v149[v85])
                {
                  v94 = 0;
                  v95 = 0.0;
                  v96 = v147 + 24 * v85;
                  do
                  {
                    v95 = v95 + *(v147 + 24 * v81 + v94) * *(v96 + v94);
                    v94 += 8;
                  }

                  while (v94 != 24);
                  if (fabs(v95) > v34)
                  {
                    if (v92)
                    {
                      DisjointSet::Unite(&v152, v93, v92);
                      goto LABEL_139;
                    }

                    v92 = v93;
                  }
                }
              }

              if (v92)
              {
LABEL_139:
                v32 = v149;
                v149[v81] = v92;
              }

              else
              {
                v97 = *v153;
                if (v144 <= 65531)
                {
                  v31 = v147;
                  v32 = v149;
                  if (*v153 >= v152)
                  {
                    __assert_rtn("AddSet", "DisjointSet.hpp", 38, "m_nSize<m_nCapacity");
                  }

                  v52 = v91;
                  v154[*v153] = v153[0];
                  *v153 = v97 + 1;
                  v149[v81] = v97;
                  ++v144;
                  goto LABEL_145;
                }

                v32 = v149;
                v149[v81] = v153[0] - 1;
              }

              v31 = v147;
              v52 = v91;
              goto LABEL_145;
            }
          }

          else
          {
            v91 = v52;
          }

          v92 = 0;
          goto LABEL_130;
        }

        v32[v81] = 0;
LABEL_145:
        v35 = v52 + 2;
        v33 = v143 - 1;
        v30 = v146;
      }

      while (v143 != 1);
    }
  }

LABEL_200:
  v130 = DisjointSet::Compact(&v152, v153[0], 0);
  v131 = v130;
  v132 = *(v140 + 8);
  v133 = v142 * v146;
  if (v141)
  {
    std::vector<ImageUtils::Blob>::resize(v141, (v130 - 1));
    LODWORD(v150) = 0;
    if (v133)
    {
      v134 = 0;
      do
      {
        v135 = v154[*v132];
        *v132 = v135;
        if (v135)
        {
          v136 = (v135 - 1);
          if (0xAAAAAAAAAAAAAAABLL * ((v141[1] - *v141) >> 3) <= v136)
          {
            std::vector<ImageUtils::Blob>::__throw_out_of_range[abi:ne200100]();
          }

          std::vector<unsigned int>::push_back[abi:ne200100]((*v141 + 24 * v136), &v150);
          v134 = v150;
        }

        LODWORD(v150) = ++v134;
        ++v132;
      }

      while (v134 < v133);
    }
  }

  else if (v133 >= 1)
  {
    v137 = v154;
    v138 = v133 + 1;
    do
    {
      *v132 = v137[*v132];
      ++v132;
      --v138;
    }

    while (v138 > 1);
  }

  DisjointSet::~DisjointSet(&v152);
  return v131;
}

void sub_2248665C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  DisjointSet::~DisjointSet(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<ImageUtils::Blob>::__append(uint64_t *result, unint64_t a2, uint64_t *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = &v7[3 * a2];
      v13 = 24 * a2;
      do
      {
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v7, *a3, a3[1], (a3[1] - *a3) >> 2);
        v7 += 3;
        v13 -= 24;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v21 = result;
    if (v11)
    {
      std::allocator<ImageUtils::Blob>::allocate_at_least[abi:ne200100](result, v11);
    }

    v18 = 0;
    v19 = 24 * v8;
    v20 = 24 * v8;
    std::__split_buffer<ImageUtils::Blob>::__construct_at_end(&v18, a2, a3);
    v14 = v5[1];
    v15 = (v19 + *v5 - v14);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ImageUtils::Blob>,ImageUtils::Blob*>(v5, *v5, v14, v15);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<ImageUtils::Blob>::~__split_buffer(&v18);
  }

  return result;
}

void sub_22486678C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ImageUtils::Blob>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<ImageUtils::Blob>::__construct_at_end(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a2)
  {
    v6 = &v4[3 * a2];
    v7 = 24 * a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v4, *a3, a3[1], (a3[1] - *a3) >> 2);
      v4 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_224866890(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<unsigned int>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278530D90, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::allocator<unsigned int>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
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

void std::allocator<ImageUtils::Blob>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ImageUtils::Blob>,ImageUtils::Blob*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;
  v11 = a4;
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
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v6 += 24;
      a4 += 3;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 24;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ImageUtils::Blob>,ImageUtils::Blob*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ImageUtils::Blob>,ImageUtils::Blob*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ImageUtils::Blob>,ImageUtils::Blob*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ImageUtils::Blob>,ImageUtils::Blob*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::__split_buffer<ImageUtils::Blob>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ImageUtils::Blob>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ImageUtils::Blob>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278530D98, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t DisjointSet::SetRoot(uint64_t this, unsigned int a2, unsigned int a3)
{
  v3 = a2;
  v4 = *(this + 8);
  v5 = (v4 + 2 * a2);
  v6 = *v5;
  if (v6 < a2)
  {
    do
    {
      if (v3 < a3)
      {
        DisjointSet::SetRoot();
      }

      v3 = v6;
      *v5 = a3;
      v5 = (v4 + 2 * v6);
      v6 = *v5;
    }

    while (v3 > v6);
  }

  if (v3 < a3)
  {
    DisjointSet::SetRoot();
  }

  *v5 = a3;
  return this;
}

void std::vector<ImageUtils::Blob>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v19 = a1;
    if (v9)
    {
      std::allocator<ImageUtils::Blob>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v16 = 0;
    v17 = 24 * v6;
    v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero((24 * v6), v11);
    v18 = 24 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = (24 * v6 + *a1 - v12);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ImageUtils::Blob>,ImageUtils::Blob*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<ImageUtils::Blob>::~__split_buffer(&v16);
  }
}

void sub_224866EC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ImageUtils::Blob>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void Matrix<unsigned short>::~Matrix(uint64_t a1)
{
  Matrix<unsigned short>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

uint64_t Matrix<unsigned short>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283812CC0;
  if (*(a1 + 8) && *(a1 + 24) == 1)
  {
    MEMORY[0x22AA55B40]();
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = 0;
  return a1;
}

void Matrix<BOOL>::~Matrix(uint64_t a1)
{
  Matrix<BOOL>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

uint64_t Matrix<BOOL>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283812CF0;
  if (*(a1 + 8) && *(a1 + 24) == 1)
  {
    MEMORY[0x22AA55B40]();
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = 0;
  return a1;
}

uint64_t CalculateWeightsForScale<double>(uint64_t result, int a2, int *a3, _DWORD *a4, double a5, double a6, double a7)
{
  v7 = vcvtmd_s64_f64(a6 + a5 * -0.5);
  v8 = v7;
  v9 = (a6 - v7) * a7;
  v10 = fabs(v9);
  v11 = v9 * v9;
  v12 = v9 * v9 * v10;
  v13 = 1.0;
  if (v10 <= 1.0)
  {
    v14 = v11 * -2.5 + v12 * 1.5;
LABEL_5:
    v15 = v14 + v13;
    if (v15 != 0.0)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v13 = 2.0;
  if (v10 <= 2.0)
  {
    v14 = v11 * 2.5 + v12 * -0.5 + v10 * -4.0;
    goto LABEL_5;
  }

  do
  {
LABEL_6:
    v16 = (a6 - ++v8) * a7;
    v17 = fabs(v16);
    v18 = v16 * v16;
    v19 = v16 * v16 * v17;
    if (v17 <= 1.0)
    {
      v15 = v18 * -2.5 + v19 * 1.5 + 1.0;
    }

    else
    {
      v15 = 0.0;
      if (v17 <= 2.0)
      {
        v15 = v18 * 2.5 + v19 * -0.5 + v17 * -4.0 + 2.0;
      }
    }
  }

  while (v15 == 0.0);
LABEL_11:
  v20 = *(result + 8);
  *v20 = v15;
  v21 = v20 + 1;
  if (v8 < v7 + a2)
  {
    v22 = v7 + a2 - v8;
    v23 = v8 + 1;
    do
    {
      v24 = (a6 - v23) * a7;
      v25 = fabs(v24);
      v26 = v24 * v24;
      v27 = v24 * v24 * v25;
      if (v25 <= 1.0)
      {
        v28 = v26 * -2.5 + v27 * 1.5 + 1.0;
      }

      else
      {
        v28 = 0.0;
        if (v25 <= 2.0)
        {
          v28 = v26 * 2.5 + v27 * -0.5 + v25 * -4.0 + 2.0;
        }
      }

      *v21++ = v28;
      v15 = v15 + v28;
      ++v23;
      --v22;
    }

    while (v22);
  }

  v29 = 0;
  v30 = v21 - 1;
  do
  {
    v31 = v30[v29--];
  }

  while (v31 == 0.0);
  v32 = v7 + a2;
  v33 = v32 - v8 + v29;
  v34 = v32 + 1 + v29;
  v35 = v33 + 2;
  if (v35)
  {
    v36 = *(result + 8);
    v37 = &v36[v35];
    do
    {
      *v36 = *v36 / v15;
      ++v36;
    }

    while (v36 < v37);
  }

  *a3 = v8;
  *a4 = v34;
  return result;
}

void Matrix<float>::~Matrix(uint64_t a1)
{
  Matrix<float>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

uint64_t Matrix<float>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283812D20;
  if (*(a1 + 8) && *(a1 + 24) == 1)
  {
    MEMORY[0x22AA55B40]();
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = 0;
  return a1;
}

uint64_t Matrix<float>::Resize(uint64_t result, int a2, int a3)
{
  v5 = result;
  if (*(result + 16) != a2 || *(result + 20) != a3)
  {
    if (*(result + 8))
    {
      if (*(result + 24) == 1)
      {
        MEMORY[0x22AA55B40]();
      }
    }

    *(v5 + 16) = a2;
    *(v5 + 20) = a3;
    operator new[]();
  }

  return result;
}

uint64_t GMC_EssentialMatrix(double *a1, double *a2, uint64_t a3)
{
  v3 = a2[3];
  v49 = a2[2] / v3;
  v4 = a2[1];
  *&v50[1] = *a2 / v3;
  *&v51[1] = v49;
  *&v51[2] = v4 / v3;
  v5 = a2[9];
  v6 = a2[10];
  v7 = a2[8];
  v48[2] = a2[7] / v6;
  v50[0] = 0;
  v51[0] = 0;
  v51[3] = 0;
  v51[4] = 0;
  v51[5] = 0x3FF0000000000000;
  v48[0] = v5 / v6;
  v48[1] = 0.0;
  v48[3] = 0.0;
  v48[4] = v5 / v6;
  v48[5] = v7 / v6;
  v8 = v50;
  v9 = v51;
  v48[6] = 0.0;
  v48[7] = 0.0;
  v48[8] = 1.0;
  for (i = 1; i != 3; ++i)
  {
    v11 = 0;
    v12 = v8;
    do
    {
      v13 = v9[v11];
      v9[v11] = *v12;
      *v12 = v13;
      v12 += 3;
      ++v11;
    }

    while (i != v11);
    ++v8;
    v9 += 3;
  }

  v14 = 0;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v15 = &v49;
  do
  {
    v16 = 0;
    v17 = a1;
    do
    {
      v18 = 0;
      v19 = 0.0;
      v20 = v17;
      do
      {
        v21 = *v20;
        v20 += 3;
        v19 = v19 + v15[v18++] * v21;
      }

      while (v18 != 3);
      *(v41 + 3 * v14 + v16++) = v19;
      ++v17;
    }

    while (v16 != 3);
    ++v14;
    v15 += 3;
  }

  while (v14 != 3);
  v22 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v23 = v41;
  do
  {
    v24 = 0;
    v25 = v48;
    do
    {
      v26 = 0;
      v27 = 0.0;
      v28 = v25;
      do
      {
        v29 = *v28;
        v28 += 3;
        v27 = v27 + *(v23 + v26) * v29;
        v26 += 8;
      }

      while (v26 != 24);
      *(&v43 + 3 * v22 + v24++) = v27;
      ++v25;
    }

    while (v24 != 3);
    ++v22;
    v23 = (v23 + 24);
  }

  while (v22 != 3);
  v30 = v46;
  *(a3 + 32) = v45;
  *(a3 + 48) = v30;
  *(a3 + 64) = v47;
  v31 = v44;
  *a3 = v43;
  *(a3 + 16) = v31;
  v32 = (a3 + 8);
  v33 = a3 + 24;
  for (j = 1; j != 3; ++j)
  {
    v35 = 0;
    v36 = v32;
    do
    {
      v37 = *(v33 + 8 * v35);
      *(v33 + 8 * v35) = *v36;
      *v36 = v37;
      v36 += 3;
      ++v35;
    }

    while (j != v35);
    ++v32;
    v33 += 24;
  }

  for (k = 0; k != 3; ++k)
  {
    for (m = 0; m != 24; m += 8)
    {
      *(a3 + m) = -*(a3 + m);
    }

    a3 += 24;
  }

  return 0;
}

void H16ISP::H16ISPGraphExclaveEyeReliefNode::H16ISPGraphExclaveEyeReliefNode(H16ISP::H16ISPGraphExclaveEyeReliefNode *this, H16ISP::H16ISPDevice *a2, int a3)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 20);
  *v5 = &unk_283812D50;
  *(v5 + 80) = 0;
  *(v5 + 88) = a2;
  *(v5 + 96) = a3;
}

{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 20);
  *v5 = &unk_283812D50;
  *(v5 + 80) = 0;
  *(v5 + 88) = a2;
  *(v5 + 96) = a3;
}

void H16ISP::H16ISPGraphExclaveEyeReliefNode::~H16ISPGraphExclaveEyeReliefNode(H16ISP::H16ISPGraphExclaveEyeReliefNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISP::H16ISPGraphExclaveEyeReliefNode::onActivate(H16ISP::H16ISPGraphExclaveEyeReliefNode *this)
{
  v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_INFO, "[Exclaves] H16ISPGraphEyeReliefNode::onActivate\n", v3, 2u);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphExclaveEyeReliefNode::onDeactivate(H16ISP::H16ISPGraphExclaveEyeReliefNode *this)
{
  v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_INFO, "[Exclaves] H16ISPGraphEyeReliefNode::onDeactivate\n", v3, 2u);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphExclaveEyeReliefNode::onMessageProcessing(H16ISP::H16ISPDevice **this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 9) & (1 << H16ISP::H16ISPFilterGraphNode::GetType(this));
  *(this + 80) = v4 != 0;
  if (v4)
  {
    pthread_mutex_lock((a2 + 8));
    v5 = *(a2 + 90);
    pthread_mutex_unlock((a2 + 8));
    if (H16ISP::H16ISPDevice::enabledExclaveDebug(this[11]))
    {
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v6 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v6;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(this + 24);
        *buf = 136315650;
        v24 = "onMessageProcessing";
        v25 = 1024;
        v26 = v5;
        v27 = 1024;
        v28 = v7;
        _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_DEFAULT, "[Exclaves] H16ISPGraphExclaveEyeReliefNode::%s RunKit ER reqid 0x%08X camChan %d\n", buf, 0x18u);
      }
    }

    bzero(&v24, 0x31CuLL);
    v29 = *(this + 24);
    *buf = 0x40000;
    kdebug_trace();
    v8 = ispExclaveKitCommand();
    kdebug_trace();
    if (v8)
    {
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
      }

      v10 = 3758097130;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPGraphExclaveEyeReliefNode::onMessageProcessing(v5, v8, v9);
      }

      return v10;
    }

    if (H16ISP::H16ISPDevice::enabledExclaveDebug(this[11]))
    {
      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v12 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v12;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18[0] = 67109632;
        v18[1] = v29;
        v19 = 2048;
        v20 = v31;
        v21 = 1024;
        v22 = v30;
        _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_DEFAULT, "[Exclaves]: IR Eye Relief IDL Success: channel=%u dist %f status %d\n", v18, 0x18u);
      }
    }

    v13 = v31;
    v14 = v30;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v16 = Mutable;
      setValueCFDict<int>(Mutable, *MEMORY[0x277CF5E80], v14);
      if (v14 == 1)
      {
        setValueCFDict<float>(v16, *MEMORY[0x277CF5E78], v13);
      }

      pthread_mutex_lock((a2 + 8));
      CFDictionarySetValue(*(a2 + 46), *MEMORY[0x277CF48B0], v16);
      pthread_mutex_unlock((a2 + 8));
      CFRelease(v16);
    }

    return 0;
  }

  v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v11 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v11;
  }

  v10 = 0;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "onMessageProcessing";
    _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, "[Exclaves] H16ISPGraphExclaveEyeReliefNode::%s Skipped processing secure eye relief algorithm\n", buf, 0xCu);
    return 0;
  }

  return v10;
}

void setValueCFDict<int>(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

double H16ISP::H16ISPFusionNode::H16ISPFusionNode(H16ISP::H16ISPFusionNode *this, H16ISP::H16ISPDevice *a2, __int16 a3, __int16 a4)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 5);
  *v7 = &unk_283812DC8;
  *(v7 + 80) = a2;
  *(v7 + 88) = a3;
  *(v7 + 90) = a4;
  *(v7 + 92) = 0;
  *(v7 + 96) = 0;
  result = 3.53369413e72;
  *(v7 + 100) = xmmword_2249B39D0;
  *(v7 + 116) = 0;
  return result;
}

{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 5);
  *v7 = &unk_283812DC8;
  *(v7 + 80) = a2;
  *(v7 + 88) = a3;
  *(v7 + 90) = a4;
  *(v7 + 92) = 0;
  *(v7 + 96) = 0;
  result = 3.53369413e72;
  *(v7 + 100) = xmmword_2249B39D0;
  *(v7 + 116) = 0;
  return result;
}

void H16ISP::H16ISPFusionNode::~H16ISPFusionNode(H16ISP::H16ISPFusionNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISP::H16ISPFusionNode::onDeactivate(H16ISP::H16ISPFusionNode *this)
{
  H16ISP::H16ISPDevice::SetIrRgbStereo(*(this + 10), 0);
  H16ISP::H16ISPDevice::EnablePDEOutput(*(this + 10), *(this + 45), 0, 0);
  return 0;
}

uint64_t H16ISP::H16ISPFusionNode::onMessageProcessing(H16ISP::H16ISPFusionNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  pthread_mutex_lock((a2 + 8));
  v4 = 0;
  v5 = (a2 + 96);
  v6 = 0xFFFF;
  do
  {
    if (*v5 == *(this + 44))
    {
      v6 = v4;
    }

    ++v4;
    v5 += 86;
  }

  while (v4 != 3);
  if (v6 != 0xFFFF)
  {
    v7 = a2 + 344 * v6 + 80;
    v8 = *(this + 23);
    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_23;
      }

      if ((*(this + 96) & 1) == 0)
      {
        v9 = *(v7 + 5);
        if (v9)
        {
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = v7 + 24;
          do
          {
            v14 = *(v13 + 2);
            switch(v14)
            {
              case 2:
                v10 = *v13;
                break;
              case 21:
                v11 = *v13;
                break;
              case 15:
                v12 = *v13;
                break;
            }

            v13 += 16;
            --v9;
          }

          while (v9);
        }

        else
        {
          v12 = 0;
          v11 = 0;
          v10 = 0;
        }

        H16ISP::H16ISPFusionNode::fuseDXBuffers(this, v12, v11, v10);
      }
    }

    H16ISP::H16ISPFilterGraphNode::RemoveFrame(this, v7, 21);
    if (v15)
    {
      CVPixelBufferRelease(v15);
    }
  }

LABEL_23:
  pthread_mutex_unlock((a2 + 8));
  return 0;
}

size_t H16ISP::H16ISPFusionNode::fuseDXBuffers(size_t this, CVPixelBufferRef pixelBuffer, __CVBuffer *a3, __CVBuffer *a4)
{
  v84 = *MEMORY[0x277D85DE8];
  if (pixelBuffer)
  {
    if (a3)
    {
      if (a4)
      {
        v7 = this;
        Width = CVPixelBufferGetWidth(pixelBuffer);
        this = CVPixelBufferGetWidth(a3);
        if (Width == this)
        {
          Height = CVPixelBufferGetHeight(pixelBuffer);
          this = CVPixelBufferGetHeight(a3);
          if (Height == this)
          {
            BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
            this = CVPixelBufferGetBytesPerRow(a3);
            if (BytesPerRow == this)
            {
              v73 = a3;
              v79 = 1.0;
              valuePtr = 0.0;
              v67 = &v7[12] + 4;
              v70 = v7;
              if (v7[12].f32[1] <= 0.0 && v7[13].f32[0] >= 2147500000.0 && v7[13].f32[1] >= 2147500000.0)
              {
                LOWORD(v12) = 0;
                v11 = 0;
                v69 = 0;
                v68 = 0;
              }

              else
              {
                H16ISP::H16ISPFrameMetadata::H16ISPFrameMetadata(__str, a4, 1uLL);
                v69 = v83 != 0;
                if (v83)
                {
                  valuePtr = *(v83 + 348);
                  v79 = *(v83 + 356);
                  v11 = ((1000.0 / v7[12].f32[1] - valuePtr) / v79);
                  v68 = vmovn_s64(vcvtq_s64_f64(vdivq_f64(vsubq_f64(vdivq_f64(vdupq_n_s64(0x408F400000000000uLL), vcvtq_f64_f32(v7[13])), vdupq_lane_s64(*&valuePtr, 0)), vdupq_lane_s64(*&v79, 0))));
                  v12 = ((1000.0 / v7[14].f32[0] - valuePtr) / v79);
                }

                else
                {
                  v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
                  {
                    v13 = os_log_create("com.apple.isp", "general");
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v13;
                  }

                  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                  {
                    H16ISP::H16ISPFusionNode::fuseDXBuffers(v13);
                  }

                  LOWORD(v12) = 0;
                  v11 = 0;
                  v68 = 0;
                }

                H16ISP::H16ISPFrameMetadata::~H16ISPFrameMetadata(__str);
              }

              pixelBuffera = pixelBuffer;
              v14 = CVPixelBufferGetWidth(pixelBuffer);
              v15 = CVPixelBufferGetHeight(pixelBuffer);
              v16 = CVPixelBufferGetBytesPerRow(pixelBuffer);
              CVPixelBufferLockBaseAddress(pixelBuffera, 0);
              CVPixelBufferLockBaseAddress(v73, 1uLL);
              BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffera);
              v18 = CVPixelBufferGetBaseAddress(v73);
              v75 = v16 >> 1;
              v19 = v70[29];
              if (v19 <= 0)
              {
                v21 = 0;
                ++H16ISP::H16ISPFusionNode::fuseDXBuffers(__CVBuffer *,__CVBuffer *,__CVBuffer *)::frameNum;
              }

              else if (H16ISP::H16ISPFusionNode::fuseDXBuffers(__CVBuffer *,__CVBuffer *,__CVBuffer *)::frameNum++ % v19)
              {
                v21 = 0;
              }

              else
              {
                v76 = 0;
                setlocale(0, "");
                time(&v76);
                v22 = localtime(&v76);
                strftime(v81, 0x14uLL, "%m%d%g_%H%M%S", v22);
                v23 = snprintf(__str, 0x400uLL, "/var/mobile/Media/DCIM/%s-%05lu-", v81, H16ISP::H16ISPFusionNode::fuseDXBuffers(__CVBuffer *,__CVBuffer *,__CVBuffer *)::frameNum);
                PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffera);
                v78 = 0;
                v66 = &__str[v23];
                snprintf(v66, 0x400uLL, "dx.%lux%lu.%s", v14, v15, &PixelFormatType);
                __stream = fopen(__str, "wb");
                if (__stream)
                {
                  if (v15)
                  {
                    v24 = BaseAddress;
                    v25 = v15;
                    do
                    {
                      fwrite(v24, 2 * v14, 1uLL, __stream);
                      v24 += 2 * v75;
                      --v25;
                    }

                    while (v25);
                  }

                  fclose(__stream);
                }

                snprintf(v66, 0x400uLL, "dx2.%lux%lu.%s", v14, v15, &PixelFormatType);
                __streama = fopen(__str, "wb");
                if (__streama)
                {
                  if (v15)
                  {
                    v26 = v18;
                    v27 = v15;
                    do
                    {
                      fwrite(v26, 2 * v14, 1uLL, __streama);
                      v26 += 2 * v75;
                      --v27;
                    }

                    while (v27);
                  }

                  fclose(__streama);
                }

                v28 = *MEMORY[0x277CBECE8];
                Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                v30 = CFNumberCreate(v28, kCFNumberFloat64Type, &valuePtr);
                CFDictionarySetValue(Mutable, *MEMORY[0x277CF42A8], v30);
                CFRelease(v30);
                v31 = CFNumberCreate(v28, kCFNumberFloat64Type, &v79);
                CFDictionarySetValue(Mutable, *MEMORY[0x277CF42A0], v31);
                CFRelease(v31);
                v32 = CFNumberCreate(v28, kCFNumberFloat32Type, v67);
                CFDictionarySetValue(Mutable, @"FusionMinDepthThreshold", v32);
                CFRelease(v32);
                v33 = CFNumberCreate(v28, kCFNumberFloat32Type, v70 + 26);
                CFDictionarySetValue(Mutable, @"FusionMaxDepthThreshold", v33);
                CFRelease(v33);
                v34 = CFNumberCreate(v28, kCFNumberFloat32Type, v70 + 28);
                CFDictionarySetValue(Mutable, @"FusionFixedDepthValue", v34);
                CFRelease(v34);
                v35 = CFNumberCreate(v28, kCFNumberFloat32Type, v70 + 27);
                CFDictionarySetValue(Mutable, @"FusionFixedDepthThreshold", v35);
                CFRelease(v35);
                strcpy(v66, "params.plist");
                SystemEncoding = CFStringGetSystemEncoding();
                v37 = CFStringCreateWithCString(v28, __str, SystemEncoding);
                v38 = CFURLCreateWithFileSystemPath(v28, v37, kCFURLPOSIXPathStyle, 0);
                v39 = CFWriteStreamCreateWithFile(v28, v38);
                CFWriteStreamOpen(v39);
                CFPropertyListWrite(Mutable, v39, kCFPropertyListXMLFormat_v1_0, 0, 0);
                CFWriteStreamClose(v39);
                CFRelease(v39);
                CFRelease(v38);
                CFRelease(v37);
                *v66 = 0;
                v21 = 1;
              }

              if (v69)
              {
                if (v79 <= 0.0)
                {
                  if (v15)
                  {
                    for (i = 0; i != v15; ++i)
                    {
                      if (v14)
                      {
                        v54 = &v18[2 * i * v75];
                        v55 = &BaseAddress[2 * i * v75];
                        v56 = v14;
                        do
                        {
                          if (*v55 == 0x1FFF)
                          {
                            v57 = *v54;
                            v58 = v57 != 0x1FFF && v68.i32[1] < v57;
                            v59 = v12;
                            if (v58 || (v11 <= v57 ? (v60 = v68.i32[0] < v57) : (v60 = 1), v59 = *v54, !v60))
                            {
                              *v55 = v59;
                            }
                          }

                          v55 += 2;
                          v54 += 2;
                          --v56;
                        }

                        while (v56);
                      }
                    }
                  }
                }

                else if (v15)
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (v14)
                    {
                      v41 = &v18[2 * j * v75];
                      v42 = &BaseAddress[2 * j * v75];
                      v43 = v14;
                      do
                      {
                        if (*v42 == 0x1FFF)
                        {
                          v44 = *v41;
                          v45 = v44 == 0x1FFF || v68.i32[1] <= v44;
                          v46 = v12;
                          if (!v45 || (v11 >= v44 ? (v47 = v68.i32[0] <= v44) : (v47 = 0), v46 = *v41, v47))
                          {
                            *v42 = v46;
                          }
                        }

                        v42 += 2;
                        v41 += 2;
                        --v43;
                      }

                      while (v43);
                    }
                  }
                }
              }

              else if (v15)
              {
                v48 = 0;
                v49 = 2 * v75;
                v50.i64[0] = 0xE000E000E000E000;
                v50.i64[1] = 0xE000E000E000E000;
                do
                {
                  if (v14)
                  {
                    v51 = 0;
                    for (k = 0; k < v14; k += 8)
                    {
                      *&BaseAddress[v51] = vbslq_s8(vceqq_s16(*&BaseAddress[v51], v50), *&v18[v51], *&BaseAddress[v51]);
                      v51 += 16;
                    }
                  }

                  ++v48;
                  v18 += v49;
                  BaseAddress += v49;
                }

                while (v48 != v15);
              }

              if (v21)
              {
                v61 = strlen(__str);
                snprintf(&__str[v61], 0x400uLL, "fusedDx.%lux%lu.%s", v14, v15, &PixelFormatType);
                v62 = fopen(__str, "wb");
                if (v62)
                {
                  v63 = CVPixelBufferGetBaseAddress(pixelBuffera);
                  if (v15)
                  {
                    v64 = v63;
                    v65 = 2 * v14;
                    do
                    {
                      fwrite(v64, v65, 1uLL, v62);
                      v64 += 2 * v75;
                      --v15;
                    }

                    while (v15);
                  }

                  fclose(v62);
                }
              }

              CVPixelBufferUnlockBaseAddress(pixelBuffera, 0);
              return CVPixelBufferUnlockBaseAddress(v73, 1uLL);
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t H16ISP::H16ISPFusionNode::SetFusionMode(H16ISP::H16ISPFusionNode *this, int a2, int a3)
{
  *(this + 23) = a2;
  *(this + 96) = a3;
  if (a2 == 2)
  {
    v5 = 1;
  }

  else
  {
    if (a2 != 1)
    {
      result = H16ISP::H16ISPDevice::SetIrRgbStereo(*(this + 10), 0);
      if (!a2)
      {
        return result;
      }

      goto LABEL_9;
    }

    if (a3)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  H16ISP::H16ISPDevice::SetIrRgbStereo(*(this + 10), v5);
LABEL_9:
  v7 = *(this + 10);
  v8 = *(this + 45);

  return H16ISP::H16ISPDevice::EnablePDEOutput(v7, v8, 1, 1);
}

float H16ISP::H16ISPFusionNode::SetFusionThresholds(H16ISP::H16ISPFusionNode *this, int a2, int a3, int a4, int a5)
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0x7FFFFFFF;
  }

  *(this + 25) = a2;
  *(this + 26) = v5;
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0x7FFFFFFF;
  }

  result = v6;
  *(this + 27) = v6;
  *(this + 28) = a5;
  return result;
}

uint64_t GMC_Homography(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 20) != *(a2 + 20))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(a3 + 8);
  v69[2] = *a3 / v5;
  v69[0] = v4 / v5;
  v69[1] = 0.0;
  v69[3] = 0.0;
  v69[4] = v4 / v5;
  v69[5] = v6 / v5;
  v69[6] = 0.0;
  v69[7] = 0.0;
  v69[8] = 1.0;
  v7 = *(a3 + 336);
  v67[2] = *(a3 + 320);
  v67[3] = v7;
  v68 = *(a3 + 352);
  v8 = *(a3 + 304);
  v67[0] = *(a3 + 288);
  v67[1] = v8;
  memset(v66, 0, sizeof(v66));
  v9 = 45;
  v10 = a3;
  do
  {
    *&v66[v9 - 45] = *(v10 + 360) - *(v10 + 32);
    ++v9;
    v10 += 8;
  }

  while (v9 != 48);
  v11 = 0;
  v65 = *(a3 + 504);
  v64 = *(a3 + 488);
  v12 = *(a3 + 480);
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v13 = &v57;
  v14 = v67;
  do
  {
    v15 = 0;
    v16 = v13;
    do
    {
      *v16 = *(v14 + v15);
      v16 = (v16 + 24);
      v15 += 8;
    }

    while (v15 != 24);
    ++v11;
    v13 = (v13 + 8);
    v14 = (v14 + 24);
  }

  while (v11 != 3);
  v17 = 0;
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  v18 = v50;
  do
  {
    v19 = 0;
    v20 = *&v66[v17];
    do
    {
      *(v18 + v19) = v20 * *(&v64 + v19) + 0.0;
      v19 += 8;
    }

    while (v19 != 24);
    ++v17;
    v18 = (v18 + 24);
  }

  while (v17 != 3);
  v21 = 0;
  v22 = 0;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  *__src = 0u;
  v53 = 0u;
  do
  {
    v23 = v21;
    v24 = 3;
    do
    {
      *(__src + v23) = *(v50 + v23) / v12;
      v23 += 8;
      --v24;
    }

    while (v24);
    ++v22;
    v21 += 24;
  }

  while (v22 != 3);
  v25 = 0;
  v26 = 0;
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  do
  {
    v27 = v25;
    v28 = 3;
    do
    {
      *(v62 + v27) = *(&v57 + v27) - *(__src + v27);
      v27 += 8;
      --v28;
    }

    while (v28);
    ++v26;
    v25 += 24;
  }

  while (v26 != 3);
  v29 = 0;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  *__src = 0u;
  v53 = 0u;
  v30 = v69;
  do
  {
    v31 = 0;
    v32 = v62;
    do
    {
      v33 = 0;
      v34 = 0.0;
      v35 = v32;
      do
      {
        v36 = *v35;
        v35 += 3;
        v34 = v34 + v30[v33++] * v36;
      }

      while (v33 != 3);
      *(&__src[3 * v29] + v31++) = v34;
      v32 = (v32 + 8);
    }

    while (v31 != 3);
    ++v29;
    v30 += 3;
  }

  while (v29 != 3);
  MatrixMxN<3u,3u,double>::Inverse<3u,void>(v69, v50);
  v37 = 0;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v38 = __src;
  do
  {
    v39 = 0;
    v40 = v50;
    do
    {
      v41 = 0;
      v42 = 0.0;
      v43 = v40;
      do
      {
        v44 = *v43;
        v43 += 3;
        v42 = v42 + *&v38[v41++] * v44;
      }

      while (v41 != 3);
      *(&v57 + 3 * v37 + v39++) = v42;
      v40 = (v40 + 8);
    }

    while (v39 != 3);
    ++v37;
    v38 += 3;
  }

  while (v37 != 3);
  MatrixMxN<3u,3u,double>::operator*<3u>(&v57, a2, __src);
  Matrix<double>::Resize(a2, v53, SDWORD1(v53));
  memcpy(*(a2 + 8), __src[1], 8 * *(a2 + 16) * *(a2 + 20));
  Matrix<double>::~Matrix(__src);
  v45 = *(a2 + 20);
  if (v45)
  {
    if (*(a2 + 16) < 3u)
    {
      GMC_Homography();
    }

    v46 = 0;
    v47 = 8 * (2 * v45);
    v48 = 8 * v45;
    do
    {
      *(*(a2 + 8) + v46) = *(*(a2 + 8) + v46) / *(*(a2 + 8) + v46 + v47);
      *(*(a2 + 8) + v48 + v46) = *(*(a2 + 8) + v48 + v46) / *(*(a2 + 8) + v47 + v46);
      *(*(a2 + 8) + v47 + v46) = 0x3FF0000000000000;
      v46 += 8;
    }

    while (v48 != v46);
  }

  return 0;
}

void sub_224868F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t MatrixMxN<3u,3u,double>::Inverse<3u,void>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = 0.0;
  v4 = -1;
  do
  {
    if (v2 == 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = v2 + 1;
    }

    v6 = v4;
    if (!v2)
    {
      v6 = 2;
    }

    v3 = v3 + *(result + 8 * v2) * (*(result + 24 + 8 * v5) * *(result + 48 + 8 * v6) - *(result + 24 + 8 * v6) * *(result + 48 + 8 * v5));
    ++v4;
    ++v2;
  }

  while (v2 != 3);
  v7 = 0;
  do
  {
    v8 = 0;
    v9 = v7++;
    v10 = v7;
    if (v9 == 2)
    {
      v10 = 0;
    }

    v11 = v9 - 1;
    if (!v9)
    {
      v11 = 2;
    }

    v12 = result + 24 * v10;
    v13 = result + 24 * v11;
    v14 = a2;
    v15 = -1;
    do
    {
      if (v8 == 2)
      {
        v16 = 0;
      }

      else
      {
        v16 = v8 + 1;
      }

      v17 = v8 == 0;
      v18 = v8 + 1;
      v19 = v15;
      if (v17)
      {
        v19 = 2;
      }

      *v14 = (*(v12 + 8 * v16) * *(v13 + 8 * v19) - *(v12 + 8 * v19) * *(v13 + 8 * v16)) / v3;
      v14 += 3;
      ++v15;
      v8 = v18;
    }

    while (v18 != 3);
    a2 += 8;
  }

  while (v7 != 3);
  return result;
}

uint64_t MatrixMxN<3u,3u,double>::operator*<3u>@<X0>(const double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MatrixMxN<3u,3u,double>::operator*(a1, a2, &v7);
  v4 = v8;
  v5 = v9;
  *(a3 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a3 = &unk_283812E40;
  *(a3 + 8) = v4;
  *(a3 + 16) = 3;
  *(a3 + 20) = v5;
  return Matrix<double>::~Matrix(&v7);
}

void MatrixMxN<3u,3u,double>::operator*(const double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) == 3)
  {
    Matrix<double>::Matrix(a3, 3, *(a2 + 20));
    LODWORD(v6) = 3;
    vDSPMmul<double>(a1, 1, *(a2 + 8), 1, *(a3 + 8), 1, 3, *(a2 + 20), v6);
  }

  else
  {
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = &unk_283812C58;
    *(a3 + 24) = 0;
  }
}

void MatrixNxPts<3u,double>::~MatrixNxPts(uint64_t a1)
{
  Matrix<double>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

void H16ISP::H16ISPFrameReceiverBufferPool::~H16ISPFrameReceiverBufferPool(H16ISP::H16ISPFrameReceiverBufferPool *this)
{
  pthread_mutex_lock(this + 4);
  *this = 0;
  v2 = *(this + 19);
  if (v2)
  {
    v3 = 0;
    valuePtr = 0;
    while (1)
    {
      Count = CFArrayGetCount(v2);
      v5 = *(this + 19);
      if (Count <= v3)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v5, v3);
      if (ValueAtIndex)
      {
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
        H16ISP::H16ISPDevice::ISP_ReleasePreMappedClientSurface(*(this + 1), valuePtr);
      }

      ++v3;
      v2 = *(this + 19);
    }

    CFRelease(v5);
  }

  while (1)
  {
    v7 = *(this + 29);
    if (!v7)
    {
      break;
    }

    v8 = *(*(*(this + 25) + ((*(this + 28) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 28) & 0x1FFLL));
    ++*(this + 28);
    *(this + 29) = v7 - 1;
    std::deque<__CVBuffer *>::__maybe_remove_front_spare[abi:ne200100](this + 192, 1);
    CVPixelBufferRelease(v8);
  }

  if (*(this + 20))
  {
    kdebug_trace();
    CVPixelBufferPoolRelease(*(this + 20));
    *(this + 20) = 0;
    kdebug_trace();
  }

  v9 = *(this + 21);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(this + 30);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(this + 22);
  if (v11)
  {
    CFRelease(v11);
  }

  CVPixelBufferPoolRelease(*(this + 23));
  *(this + 23) = 0;
  pthread_mutex_unlock(this + 4);
  pthread_mutex_destroy(this + 4);
  *(this + 80) = 0;
  std::deque<__CVBuffer *>::~deque[abi:ne200100](this + 24);
}

uint64_t H16ISP::H16ISPFrameReceiverBufferPool::PreMapClientSurface(H16ISP::H16ISPDevice **this, unsigned int a2)
{
  valuePtr = a2;
  v3 = H16ISP::H16ISPDevice::ISP_PreMapClientSurface(this[1], a2);
  if (v3)
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiverBufferPool::PreMapClientSurface();
    }

    printf("H16ISPFrameReceiverBufferPool::%s - ISP_PreMapClientSurface failed: 0x%08X\n", "PreMapClientSurface", v3);
  }

  else if (this[19])
  {
    v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
    CFArrayAppendValue(this[19], v5);
    CFRelease(v5);
  }

  return v3;
}

uint64_t H16ISP::H16ISPFrameReceiverBufferPool::deactivatePool(H16ISP::H16ISPFrameReceiverBufferPool *this)
{
  pthread_mutex_lock(this + 4);
  if (*(this + 20))
  {
    *this = 0;
    kdebug_trace();
    CVPixelBufferPoolRelease(*(this + 20));
    *(this + 20) = 0;
    *(this + 80) = 0;
    bzero(this + 336, 0x80uLL);
    kdebug_trace();
    v2 = 0;
  }

  else
  {
    v2 = 3758097122;
  }

  pthread_mutex_unlock(this + 4);
  return v2;
}

uint64_t H16ISP::H16ISPFrameReceiverBufferPool::ModifyBufferCount(pthread_mutex_t *this, int a2)
{
  v4 = 3758097085;
  pthread_mutex_lock(this + 4);
  if (*&this[2].__opaque[24])
  {
    if (a2 < 1)
    {
      v4 = 3758097090;
    }

    else
    {
      kdebug_trace();
      if (*&this[2].__opaque[48] || !CVPixelBufferPoolSetMinBufferCount())
      {
        v4 = 0;
        *&this[1].__opaque[28] = a2;
        *&this[1].__opaque[32] = a2;
        this[1].__opaque[52] = 1;
      }

      kdebug_trace();
    }
  }

  else
  {
    v4 = 3758097086;
  }

  pthread_mutex_unlock(this + 4);
  return v4;
}

uint64_t H16ISP::H16ISPFrameReceiverBufferPool::SetCapacity(pthread_mutex_t *this, int a2)
{
  v4 = 3758097084;
  pthread_mutex_lock(this + 4);
  kdebug_trace();
  if (*&this[2].__opaque[24])
  {
    if (*&this[2].__opaque[48] || !CVPixelBufferPoolSetMinBufferCount())
    {
      v4 = 0;
      *&this[1].__opaque[28] = a2;
      *&this[1].__opaque[32] = a2;
      this[1].__opaque[52] = 1;
    }
  }

  else
  {
    v4 = 3758097131;
  }

  kdebug_trace();
  pthread_mutex_unlock(this + 4);
  return v4;
}

uint64_t H16ISP::H16ISPFrameReceiverBufferPool::AddPendingStillImageBuffers(pthread_mutex_t *this, uint64_t a2)
{
  pthread_mutex_lock(this + 4);
  *this[5].__opaque += a2;

  return pthread_mutex_unlock(this + 4);
}

BOOL H16ISP::H16ISPFrameReceiverBufferPool::TryStillImageBufferRemove(pthread_mutex_t *this, __CVBuffer *a2)
{
  pthread_mutex_lock(this + 4);
  v3 = *this[5].__opaque;
  if (v3)
  {
    *this[5].__opaque = v3 - 1;
  }

  v4 = v3 != 0;
  pthread_mutex_unlock(this + 4);
  return v4;
}

void H16ISP::H16ISPFrameReceiverSharedBufferPool::~H16ISPFrameReceiverSharedBufferPool(H16ISP::H16ISPFrameReceiverSharedBufferPool *this)
{
  pthread_mutex_lock((this + 8));
  H16ISP::H16ISPFrameReceiverSharedBufferPool::ReleaseAllBuffers(this);
  v2 = *(this + 9);
  if (v2)
  {
    H16ISP::H16ISPFrameReceiverBufferPool::~H16ISPFrameReceiverBufferPool(v2);
    MEMORY[0x22AA55B60]();
    *(this + 9) = 0;
  }

  pthread_mutex_unlock((this + 8));
  pthread_mutex_destroy((this + 8));
  std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::~__hash_table(this + 104);
}

uint64_t H16ISP::H16ISPFrameReceiverSharedBufferPool::ReleaseAllBuffers(H16ISP::H16ISPFrameReceiverSharedBufferPool *this)
{
  pthread_mutex_lock((this + 8));
  for (i = *(this + 15); i; i = *i)
  {
    CVPixelBufferRelease(i[3]);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::clear(this + 13);
  *(*(this + 9) + 120) = 0;
  *(this + 19) = 0;

  return pthread_mutex_unlock((this + 8));
}

uint64_t H16ISP::H16ISPFrameReceiverSharedBufferPool::FindBuffer(H16ISP::H16ISPFrameReceiverSharedBufferPool *this, unsigned int a2)
{
  v5 = a2;
  pthread_mutex_lock((this + 8));
  if (std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::find<unsigned int>(this + 13, &v5))
  {
    v6 = &v5;
    v3 = std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 13, &v5)[3];
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock((this + 8));
  return v3;
}

uint64_t H16ISP::H16ISPFrameReceiverSharedBufferPool::ReleaseBuffer(H16ISP::H16ISPFrameReceiverSharedBufferPool *this, __CVBuffer *a2)
{
  pthread_mutex_lock((this + 8));
  IOSurface = CVPixelBufferGetIOSurface(a2);
  ID = IOSurfaceGetID(IOSurface);
  if (std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::find<unsigned int>(this + 13, &ID))
  {
    CVPixelBufferRelease(a2);
    std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::__erase_unique<unsigned int>(this + 13, &ID);
  }

  --*(*(this + 9) + 120);
  return pthread_mutex_unlock((this + 8));
}

uint64_t H16ISP::H16ISPFrameReceiverSharedBufferPool::SendStillImageBuffers(H16ISP::H16ISPFrameReceiverSharedBufferPool *this, uint64_t a2)
{
  v26[444] = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 8));
  if (a2)
  {
    v4 = 0;
    v5 = *(this + 9);
    v6 = v26;
    do
    {
      pixelBuffer = 0;
      ID = 0;
      v7 = H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(v5, &pixelBuffer, 0);
      if (v7)
      {
        v12 = v7;
        v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v14 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v14;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPFrameReceiverSharedBufferPool::SendStillImageBuffers();
        }

        goto LABEL_31;
      }

      if (!v4 && (*(this + 148) & 1) == 0)
      {
        v22[0] = CVPixelBufferGetDataSize(pixelBuffer);
        v22[1] = CVPixelBufferGetBytesPerRow(pixelBuffer);
      }

      IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
      ID = IOSurfaceGetID(IOSurface);
      v9 = pixelBuffer;
      p_ID = &ID;
      std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 13, &ID)[3] = v9;
      *(v6 - 2) = *(this + 5);
      *(v6 - 4) = ID;
      v5 = *(this + 9);
      *(v6 - 3) = *(v5 + 24);
      v10 = *(v5 + 20);
      *(v6 - 1) = *(v5 + 40);
      *v6 = v10;
      ++v4;
      v6 += 14;
    }

    while (a2 != v4);
    if ((*(this + 148) & 1) == 0)
    {
      v11 = H16ISP::H16ISPDevice::SetSharedBufferPoolInfo(*this, *(this + 72), *(this + 73), 7, a2, 0, 1u, v22);
      if (v11)
      {
        v12 = v11;
        v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v13 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v13;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPFrameReceiverSharedBufferPool::SendStillImageBuffers();
        }

        goto LABEL_31;
      }

      *(this + 148) = 1;
    }

    v12 = H16ISP::H16ISPDevice::ISP_SendBuffers(*this, v24, a2, *(this + 24));
    if (v12)
    {
      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v15 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPFrameReceiverSharedBufferPool::SendStillImageBuffers();
      }

      v16 = &v25;
      do
      {
        v17 = *v16;
        v16 += 14;
        Buffer = H16ISP::H16ISPFrameReceiverSharedBufferPool::FindBuffer(this, v17);
        if (Buffer)
        {
          H16ISP::H16ISPFrameReceiverSharedBufferPool::ReleaseBuffer(this, Buffer);
        }

        --a2;
      }

      while (a2);
    }

    else
    {
      *(*(this + 9) + 120) += a2;
      *(this + 19) += a2;
    }
  }

  else
  {
    v12 = 3758097084;
  }

LABEL_31:
  pthread_mutex_unlock((this + 8));
  return v12;
}

BOOL H16ISP::H16ISPFrameReceiverSharedBufferPool::TryStillImageBufferRemove(H16ISP::H16ISPFrameReceiverSharedBufferPool *this, __CVBuffer *a2)
{
  pthread_mutex_lock((this + 8));
  if (*(this + 19))
  {
    IOSurface = CVPixelBufferGetIOSurface(a2);
    ID = IOSurfaceGetID(IOSurface);
    v5 = std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::find<unsigned int>(this + 13, &ID);
    v6 = v5 != 0;
    if (v5)
    {
      std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::__erase_unique<unsigned int>(this + 13, &ID);
      --*(*(this + 9) + 120);
      --*(this + 19);
    }
  }

  else
  {
    v6 = 0;
  }

  pthread_mutex_unlock((this + 8));
  return v6;
}

uint64_t H16ISP::H16ISPFrameReceiverSharedBufferPool::InitiateShutdown(H16ISP::H16ISPFrameReceiverSharedBufferPool *this)
{
  pthread_mutex_lock((this + 8));
  v2 = H16ISP::H16ISPDevice::ReturnAllSharedBuffersInPool(*this, *(this + 72), *(this + 73), *(*(this + 9) + 20));
  if (v2)
  {
    v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiverSharedBufferPool::InitiateShutdown();
    }
  }

  *(this + 148) = 0;
  pthread_mutex_unlock((this + 8));
  return v2;
}

uint64_t H16ISP::H16ISPFrameReceiverSharedBufferPool::SendBuffer(H16ISP::H16ISPFrameReceiverSharedBufferPool *this, __CVBuffer *a2)
{
  pthread_mutex_lock((this + 8));
  v10 = *(this + 5);
  IOSurface = CVPixelBufferGetIOSurface(a2);
  ID = IOSurfaceGetID(IOSurface);
  v5 = *(this + 9);
  v12 = *(v5 + 24);
  v6 = *(v5 + 40);
  LODWORD(v5) = *(v5 + 20);
  v13 = v6;
  v14 = v5;
  v7 = H16ISP::H16ISPDevice::ISP_SendBuffers(*this, &v10, 1u, *(this + 24));
  if (v7)
  {
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiverSharedBufferPool::SendBuffer();
    }
  }

  pthread_mutex_unlock((this + 8));
  return v7;
}

uint64_t H16ISP::H16ISPFrameReceiverDataBufferPool::H16ISPFrameReceiverDataBufferPool(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = a4;
  *(a1 + 16) = 1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = a5;
  kdebug_trace();
  pthread_mutex_init((a1 + 112), 0);
  if (a3)
  {
    *(a1 + 24) = CFRetain(a3);
    H16ISP::H16ISPFrameReceiverDataBufferPool::IOSurfaceAllocSize(a1);
  }

  H16ISP::H16ISPFrameReceiverDataBufferPool::createDataBufferPoolAuxAttributes(a1, a4);
  kdebug_trace();
  return a1;
}

uint64_t H16ISP::H16ISPFrameReceiverDataBufferPool::IOSurfaceAllocSize(H16ISP::H16ISPFrameReceiverDataBufferPool *this)
{
  valuePtr = 0;
  if (!*(this + 3))
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;
    }

    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    H16ISP::H16ISPFrameReceiverDataBufferPool::IOSurfaceAllocSize();
    return 0;
  }

  DataBufferAttributes = CVDataBufferPoolGetDataBufferAttributes();
  if (!DataBufferAttributes)
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
    }

    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    H16ISP::H16ISPFrameReceiverDataBufferPool::IOSurfaceAllocSize();
    return 0;
  }

  Value = CFDictionaryGetValue(DataBufferAttributes, *MEMORY[0x277CC4B58]);
  if (!Value)
  {
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;
    }

    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    H16ISP::H16ISPFrameReceiverDataBufferPool::IOSurfaceAllocSize();
    return 0;
  }

  v3 = CFDictionaryGetValue(Value, *MEMORY[0x277CD2948]);
  if (v3)
  {
    CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v8 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v8;
  }

  result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    H16ISP::H16ISPFrameReceiverDataBufferPool::IOSurfaceAllocSize();
    return 0;
  }

  return result;
}

void H16ISP::H16ISPFrameReceiverDataBufferPool::createDataBufferPoolAuxAttributes(H16ISP::H16ISPFrameReceiverDataBufferPool *this, uint64_t a2)
{
  valuePtr = a2;
  v3 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(this + 4) = Mutable;
  if (Mutable)
  {
    v5 = CFNumberCreate(v3, kCFNumberIntType, &valuePtr);
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(*(this + 4), *MEMORY[0x277CC4B60], v5);
      CFRelease(v6);
    }
  }
}

void H16ISP::H16ISPFrameReceiverDataBufferPool::~H16ISPFrameReceiverDataBufferPool(H16ISP::H16ISPFrameReceiverDataBufferPool *this)
{
  if (*(this + 10))
  {
    kdebug_trace();
  }

  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*(this + 10))
  {
    kdebug_trace();
    v4 = *(this + 10);
    if (v4)
    {
      H16ISP::H16ISPFrameReceiverBufferPool::~H16ISPFrameReceiverBufferPool(v4);
      MEMORY[0x22AA55B60]();
    }
  }

  pthread_mutex_destroy((this + 112));
  std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::~__hash_table(this + 40);
}

uint64_t H16ISP::H16ISPFrameReceiverDataBufferPool::allocateBuffer(H16ISP::H16ISPFrameReceiverDataBufferPool *this, __CVBuffer **a2)
{
  v9 = 0;
  if (CVDataBufferPoolCreateDataBufferWithAuxAttributes())
  {
    return 3758097085;
  }

  IOSurface = CVDataBufferGetIOSurface();
  ID = IOSurfaceGetID(IOSurface);
  v6 = v9;
  p_ID = &ID;
  v7 = std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 5, &ID);
  result = 0;
  v7[3] = v6;
  *a2 = v9;
  return result;
}

uint64_t H16ISP::H16ISPFrameReceiverDataBufferPool::NumBuffersSent(H16ISP::H16ISPFrameReceiverDataBufferPool *this)
{
  pthread_mutex_lock((this + 112));
  v2 = *(*(this + 10) + 120);
  pthread_mutex_unlock((this + 112));
  return v2;
}

uint64_t H16ISP::H16ISPFrameReceiverDataBufferPool::AllocateBuffer(H16ISP::H16ISPFrameReceiverDataBufferPool *this, __CVBuffer **a2)
{
  pthread_mutex_lock((this + 112));
  Buffer = H16ISP::H16ISPFrameReceiverDataBufferPool::allocateBuffer(this, a2);
  pthread_mutex_unlock((this + 112));
  return Buffer;
}

BOOL H16ISP::H16ISPFrameReceiverDataBufferPool::removeBufferWithRelease(H16ISP::H16ISPFrameReceiverDataBufferPool *this, __CVBuffer *a2, int a3)
{
  IOSurface = CVDataBufferGetIOSurface();
  ID = IOSurfaceGetID(IOSurface);
  pthread_mutex_lock((this + 112));
  v7 = std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::find<unsigned int>(this + 5, &ID);
  if (v7)
  {
    if (a3)
    {
      CVBufferRelease(a2);
    }

    std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::__erase_unique<unsigned int>(this + 5, &ID);
    --*(*(this + 10) + 120);
  }

  pthread_mutex_unlock((this + 112));
  return v7 != 0;
}

uint64_t H16ISP::H16ISPFrameReceiverDataBufferPool::ReleaseBuffer(H16ISP::H16ISPFrameReceiverDataBufferPool *this, __CVBuffer *a2)
{
  if (H16ISP::H16ISPFrameReceiverDataBufferPool::removeBufferWithRelease(this, a2, 1))
  {
    return 0;
  }

  else
  {
    return 3758097136;
  }
}

uint64_t H16ISP::H16ISPFrameReceiverDataBufferPool::RemoveBuffer(H16ISP::H16ISPFrameReceiverDataBufferPool *this, __CVBuffer *a2)
{
  if (H16ISP::H16ISPFrameReceiverDataBufferPool::removeBufferWithRelease(this, a2, 0))
  {
    return 0;
  }

  else
  {
    return 3758097136;
  }
}

uint64_t H16ISP::H16ISPFrameReceiverDataBufferPool::SetCapacity(H16ISP::H16ISPFrameReceiverDataBufferPool *this, uint64_t a2)
{
  v2 = a2;
  valuePtr = a2;
  pthread_mutex_lock((this + 112));
  if (*(this + 16))
  {
LABEL_8:
    v5 = 0;
    *(this + 1) = v2;
    goto LABEL_9;
  }

  v4 = *MEMORY[0x277CBECE8];
  if (!CVDataBufferPoolSetMinBufferCount())
  {
    if (*(this + 4))
    {
      v6 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
      if (v6)
      {
        v7 = v6;
        CFDictionarySetValue(*(this + 4), *MEMORY[0x277CC4B60], v6);
        CFRelease(v7);
      }
    }

    v2 = valuePtr;
    goto LABEL_8;
  }

  v5 = 3758097084;
LABEL_9:
  pthread_mutex_unlock((this + 112));
  return v5;
}

uint64_t H16ISP::H16ISPFrameReceiverDataBufferPool::SendBuffer(H16ISP::H16ISPFrameReceiverDataBufferPool *this, __CVBuffer *a2)
{
  v8 = *(this + 88);
  IOSurface = CVDataBufferGetIOSurface();
  ID = IOSurfaceGetID(IOSurface);
  DataSize = CVDataBufferGetDataSize();
  v11 = 1;
  v4 = *(this + 10);
  v5 = *(v4 + 40);
  LODWORD(v4) = *(v4 + 20);
  v12 = v5;
  v13 = v4;
  pthread_mutex_lock((this + 112));
  v6 = H16ISP::H16ISPDevice::ISP_SendBuffers(*this, &v8, 1u, *(this + 26));
  if (!v6)
  {
    ++*(*(this + 10) + 120);
  }

  pthread_mutex_unlock((this + 112));
  return v6;
}

uint64_t H16ISP::H16ISPFrameReceiverDataBufferPool::FindBuffer(H16ISP::H16ISPFrameReceiverDataBufferPool *this, unsigned int a2)
{
  v5 = a2;
  pthread_mutex_lock((this + 112));
  if (std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::find<unsigned int>(this + 5, &v5))
  {
    v6 = &v5;
    v3 = std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 5, &v5)[3];
  }

  else
  {
    v3 = 0;
  }

  pthread_mutex_unlock((this + 112));
  return v3;
}

uint64_t H16ISP::H16ISPFrameReceiverDataBufferPool::ReleaseBuffers(H16ISP::H16ISPFrameReceiverDataBufferPool *this)
{
  pthread_mutex_lock((this + 112));
  for (i = *(this + 7); i; i = *i)
  {
    CVBufferRelease(i[3]);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::clear(this + 5);
  *(*(this + 10) + 120) = 0;

  return pthread_mutex_unlock((this + 112));
}

uint64_t H16ISP::H16ISPFrameReceiverDataBufferPool::SendInitialFirmwareBuffers(H16ISP::H16ISPFrameReceiverDataBufferPool *this)
{
  pthread_mutex_lock((this + 112));
  v2 = *(this + 10);
  if (*(v2 + 120))
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = 3758097085;
    v5 = *(v2 + 112);
    if ((v5 - 65) >= 0xFFFFFFC0)
    {
      v6 = malloc_type_calloc(v5, 0x38uLL, 0x1080040782C1A1FuLL);
      v4 = v6;
      if (v6)
      {
        v7 = v6 + 8;
        v8 = v5;
        while (1)
        {
          v16 = 0;
          v9 = H16ISP::H16ISPFrameReceiverDataBufferPool::allocateBuffer(this, &v16);
          if (v9)
          {
            break;
          }

          *(v7 - 2) = *(this + 88);
          IOSurface = CVDataBufferGetIOSurface();
          *(v7 - 4) = IOSurfaceGetID(IOSurface);
          *(v7 - 3) = CVDataBufferGetDataSize();
          *(v7 - 2) = 1;
          v11 = *(this + 10);
          v12 = *(v11 + 40);
          LODWORD(v11) = *(v11 + 20);
          *(v7 - 1) = v12;
          *v7 = v11;
          v7 += 14;
          if (!--v8)
          {
            v3 = H16ISP::H16ISPDevice::ISP_SendBuffers(*this, v4, v5, *(this + 26));
            if (v3)
            {
              v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
              {
                v13 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v13;
              }

              if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
              {
                H16ISP::H16ISPFrameReceiverDataBufferPool::SendInitialFirmwareBuffers();
              }
            }

            else
            {
              *(*(this + 10) + 120) = v5;
            }

            goto LABEL_19;
          }
        }

        v3 = v9;
        v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v14 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v14;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPFrameReceiverDataBufferPool::SendInitialFirmwareBuffers();
        }
      }
    }

    else
    {
      v4 = 0;
      v3 = 3758097095;
    }
  }

LABEL_19:
  pthread_mutex_unlock((this + 112));
  free(v4);
  return v3;
}

uint64_t H16ISP::H16ISPFrameReceiverDataBufferPool::RegisterCompletionCallback(uint64_t this, uint64_t a2, uint64_t a3, int a4)
{
  *(this + 88) = a2;
  *(this + 96) = a3;
  *(this + 104) = a4;
  return this;
}

void *std::__split_buffer<__CVBuffer **>::emplace_back<__CVBuffer **&>(void *result, void *a2)
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

      std::allocator<__CVBuffer **>::allocate_at_least[abi:ne200100](result, v11);
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

const void **std::__split_buffer<__CVBuffer **>::emplace_front<__CVBuffer **>(const void **result, void *a2)
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

      std::allocator<__CVBuffer **>::allocate_at_least[abi:ne200100](result, v9);
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

const void **std::__split_buffer<__CVBuffer **>::emplace_front<__CVBuffer **&>(const void **result, void *a2)
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

      std::allocator<__CVBuffer **>::allocate_at_least[abi:ne200100](result[4], v9);
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::__erase_unique<unsigned int>(void *a1, unsigned int *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::find<unsigned int>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void H16ISP::H16ISPGraphExclaveFaceTrackingNode::H16ISPGraphExclaveFaceTrackingNode(H16ISP::H16ISPGraphExclaveFaceTrackingNode *this, H16ISP::H16ISPDevice *a2, int a3)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 22);
  *v5 = &unk_283812E78;
  *(v5 + 80) = 0;
  *(v5 + 88) = a2;
  *(v5 + 96) = a3;
}

{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 22);
  *v5 = &unk_283812E78;
  *(v5 + 80) = 0;
  *(v5 + 88) = a2;
  *(v5 + 96) = a3;
}

void H16ISP::H16ISPGraphExclaveFaceTrackingNode::~H16ISPGraphExclaveFaceTrackingNode(H16ISP::H16ISPGraphExclaveFaceTrackingNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISP::H16ISPGraphExclaveFaceTrackingNode::onActivate(H16ISP::H16ISPGraphExclaveFaceTrackingNode *this)
{
  v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_INFO, "[Exclaves] H16ISPGraphExclaveFaceTrackingNode::onActivate\n", v3, 2u);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphExclaveFaceTrackingNode::onDeactivate(H16ISP::H16ISPGraphExclaveFaceTrackingNode *this)
{
  v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_INFO, "[Exclaves] H16ISPGraphExclaveFaceTrackingNode::onDeactivate\n", v3, 2u);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphExclaveFaceTrackingNode::onMessageProcessing(H16ISP::H16ISPDevice **this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 9) & (1 << H16ISP::H16ISPFilterGraphNode::GetType(this));
  *(this + 80) = v4 != 0;
  if (!v4)
  {
    return 0;
  }

  pthread_mutex_lock((a2 + 8));
  v5 = *(a2 + 90);
  pthread_mutex_unlock((a2 + 8));
  v6 = H16ISP::H16ISPDevice::enabledExclaveDebug(this[11]);
  v7 = MEMORY[0x277D86220];
  if (v6)
  {
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(this + 24);
      *buf = 67109376;
      *&buf[4] = v9;
      LOWORD(v54) = 1024;
      *(&v54 + 2) = v5;
      _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_DEFAULT, "face kit first pass channel=%u reqid=0x%08x\n", buf, 0xEu);
    }
  }

  kdebug_trace();
  v10 = ispExclaveKitCommand();
  kdebug_trace();
  if (v10)
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v7)
    {
      v11 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v11;
    }

    v12 = 3758097130;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPGraphExclaveFaceTrackingNode::onMessageProcessing();
    }

    return v12;
  }

  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0;
  *buf = v20;
  v61 = v28;
  v60 = v27;
  v59 = v26;
  v55 = v22;
  v54 = v21;
  v56 = v23;
  v58 = v25;
  v57 = v24;
  v62 = v29;
  LOBYTE(v63) = v30;
  if (v31 == 1)
  {
    DWORD1(v63) = 1;
    v13 = v32;
    if (v32 > 799)
    {
      if (v32 != 800 && v32 != 950)
      {
        goto LABEL_19;
      }
    }

    else if (v32 && v32 != 500)
    {
LABEL_19:
      v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v7)
      {
        v14 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v14;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPGraphExclaveFaceTrackingNode::onMessageProcessing();
      }

      v13 = 0;
    }

    DWORD2(v63) = v13;
    v15 = v33;
    if (v33 >= 8)
    {
      v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v7)
      {
        v16 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v16;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPGraphExclaveFaceTrackingNode::onMessageProcessing();
      }

      v15 = 1;
    }

    HIDWORD(v63) = v15;
    v64 = v34;
    v65 = v35;
    v66 = v36;
    v67 = v37;
    v68 = v38;
    v69 = v39;
    LOWORD(v70) = v40;
  }

  BYTE12(v71) = v41;
  BYTE8(v70) = convertExpressionActivation(v42);
  BYTE9(v70) = convertExpressionActivation(v43);
  BYTE10(v70) = convertExpressionActivation(v44);
  BYTE11(v70) = convertExpressionActivation(v45);
  BYTE12(v70) = convertExpressionActivation(v46);
  BYTE13(v70) = convertExpressionActivation(v47);
  BYTE14(v70) = convertExpressionActivation(v48);
  HIBYTE(v70) = convertExpressionActivation(v49);
  LOBYTE(v71) = convertExpressionActivation(v50);
  *(&v71 + 4) = v51;
  LOBYTE(v72) = v52;
  if (CVAFaceTrackingLiteFilterCopyDecodedOutput())
  {
    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v7)
    {
      v17 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v17;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPGraphExclaveFaceTrackingNode::onMessageProcessing();
    }
  }

  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v7)
  {
    v18 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v18;
  }

  v12 = 3758097084;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPGraphExclaveFaceTrackingNode::onMessageProcessing();
  }

  return v12;
}

uint64_t convertExpressionActivation(uint64_t a1)
{
  v1 = a1;
  if (a1 >= 4)
  {
    v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v2 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v2;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      convertExpressionActivation();
    }

    return 0;
  }

  return v1;
}

uint64_t H16ISP::H16ISPGraphExclaveObjectDetectionNode::H16ISPGraphExclaveObjectDetectionNode(uint64_t a1, H16ISP::H16ISPDevice *this, int a3, const unsigned int *a4, int a5)
{
  v7 = H16ISP::H16ISPExclaveGraphNode::H16ISPExclaveGraphNode(a1, 21, this, a3, a5);
  *v7 = &unk_283812EF0;
  H16ISP::H16ISPGraphExclaveObjectDetectionNode::updateEnabledObjects(v7, a4);
  return a1;
}

void H16ISP::H16ISPGraphExclaveObjectDetectionNode::updateEnabledObjects(H16ISP::H16ISPGraphExclaveObjectDetectionNode *this, const unsigned int *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a2 + 1);
  *(this + 32) = a2[8];
  *(this + 6) = v3;
  *(this + 7) = v4;
  v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  v6 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v5 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    H16ISP::H16ISPGraphExclaveObjectDetectionNode::updateEnabledObjects(v5);
  }

  if (*(this + 24) >= 0xBu)
  {
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v6)
    {
      v7 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPGraphExclaveObjectDetectionNode::updateEnabledObjects();
    }

    *(this + 24) = 10;
  }

  if (*(this + 26) >= 0xBu)
  {
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v6)
    {
      v8 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPGraphExclaveObjectDetectionNode::updateEnabledObjects();
    }

    *(this + 26) = 10;
  }

  if (*(this + 25) >= 0x15u)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v6)
    {
      v9 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPGraphExclaveObjectDetectionNode::updateEnabledObjects();
    }

    *(this + 25) = 20;
  }

  if ((vaddvq_s32(*(this + 108)) + *(this + 31) + *(this + 32)) >= 0x15)
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v6)
    {
      v10 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = *(this + 27);
      v22 = *(this + 28);
      v23 = *(this + 29);
      v24 = *(this + 30);
      v25 = *(this + 31);
      v26 = *(this + 32);
      v27 = 136316930;
      v28 = "updateEnabledObjects";
      v29 = 1024;
      v30 = v21;
      v31 = 1024;
      v32 = v22;
      v33 = 1024;
      v34 = v23;
      v35 = 1024;
      v36 = v24;
      v37 = 1024;
      v38 = v25;
      v39 = 1024;
      v40 = v26;
      v41 = 1024;
      v42 = 20;
      _os_log_error_impl(&dword_2247DB000, v10, OS_LOG_TYPE_ERROR, "%s - [Exclaves]: Number of requested objects: HumanBody=%u, HumanFullBody=%u, DogBody=%u, DogHead=%u, CatBody=%u, CatHead=%u! Max ANST Supported Objects is %u, truncating output!\n", &v27, 0x36u);
    }
  }

  if (H16ISP::H16ISPExclaveGraphNode::Verbose(this))
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v6)
    {
      v11 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(this + 26);
      v13 = *(this + 27);
      v14 = *(this + 24);
      v15 = *(this + 25);
      v16 = *(this + 28);
      v17 = *(this + 29);
      v18 = *(this + 30);
      v19 = *(this + 31);
      v20 = *(this + 32);
      v27 = 136317442;
      v28 = "updateEnabledObjects";
      v29 = 1024;
      v30 = v14;
      v31 = 1024;
      v32 = v12;
      v33 = 1024;
      v34 = v13;
      v35 = 1024;
      v36 = v16;
      v37 = 1024;
      v38 = v15;
      v39 = 1024;
      v40 = v17;
      v41 = 1024;
      v42 = v18;
      v43 = 1024;
      v44 = v19;
      v45 = 1024;
      v46 = v20;
      _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, "%s - [Exclaves]: Number of requested objects: HumanFaces=%u, HumanHeads=%u, HumanBody=%u, HumanFullBody=%u, HumanHands=%u, DogBody=%u, DogHead=%u, CatBody=%u, CatHead=%u!\n", &v27, 0x42u);
    }
  }
}

void H16ISP::H16ISPGraphExclaveObjectDetectionNode::asyncUpdateEnabledObjects(H16ISP::H16ISPGraphExclaveObjectDetectionNode *this, const unsigned int *a2)
{
  v2 = *(this + 1);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = ___ZN6H16ISP37H16ISPGraphExclaveObjectDetectionNode25asyncUpdateEnabledObjectsEPKj_block_invoke;
  v3[3] = &__block_descriptor_tmp;
  v3[4] = this;
  v3[5] = a2;
  dispatch_async(v2, v3);
}

uint64_t H16ISP::H16ISPGraphExclaveObjectDetectionNode::onMessageProcessing(H16ISP::H16ISPGraphExclaveObjectDetectionNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 9) & (1 << H16ISP::H16ISPFilterGraphNode::GetType(this));
  pthread_mutex_lock((a2 + 8));
  v5 = *(a2 + 11);
  v6 = *(a2 + 90);
  if (!CGRectIsNull(*(a2 + 392)))
  {
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(a2 + 392));
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v9 = Mutable;
    if (DictionaryRepresentation && Mutable)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF5300], DictionaryRepresentation);
      CFDictionarySetValue(*(a2 + 46), *MEMORY[0x277CF48C0], v9);
      CFRelease(DictionaryRepresentation);
LABEL_8:
      CFRelease(v9);
      goto LABEL_9;
    }

    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }

    if (v9)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  pthread_mutex_unlock((a2 + 8));
  if (v4 || (H16ISP::H16ISPExclaveGraphNode::MustRunNode(this) & 1) != 0)
  {
    if (H16ISP::H16ISPExclaveGraphNode::Verbose(this))
    {
      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v10;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136316162;
        v13 = "onMessageProcessing";
        v14 = 1024;
        v15 = H16ISP::H16ISPExclaveGraphNode::Channel(this);
        v16 = 1024;
        v17 = v6;
        v18 = 2048;
        v19 = v5;
        v20 = 1024;
        v21 = v4 != 0;
        _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_DEFAULT, "%s - [Exclaves]: Runkit Object Detection channel=%d, reqID=0x%08X, pts=%llu, publishResult=%{BOOL}d\n", &v12, 0x28u);
      }
    }

    return (*(*this + 80))(this, a2, v4 != 0);
  }

  else
  {
    H16ISP::H16ISPGraphExclaveObjectDetectionNode::onMessageProcessing(&v12);
    return v12;
  }
}

void *H16ISP::H16ISPGraphExclaveIRObjectDetectionNode::H16ISPGraphExclaveIRObjectDetectionNode(H16ISP::H16ISPGraphExclaveIRObjectDetectionNode *this, H16ISP::H16ISPDevice *a2, int a3, const unsigned int *a4)
{
  result = H16ISP::H16ISPGraphExclaveObjectDetectionNode::H16ISPGraphExclaveObjectDetectionNode(this, a2, a3, a4, 0);
  *result = &unk_283812F58;
  return result;
}

{
  result = H16ISP::H16ISPGraphExclaveObjectDetectionNode::H16ISPGraphExclaveObjectDetectionNode(this, a2, a3, a4, 0);
  *result = &unk_283812F58;
  return result;
}

uint64_t H16ISP::H16ISPGraphExclaveIRObjectDetectionNode::InvokeEKRunKit(H16ISP::H16ISPGraphExclaveIRObjectDetectionNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v2 = a2;
  v10 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a2 + 8));
  pthread_mutex_unlock((v2 + 8));
  H16ISP::H16ISPExclaveGraphNode::Channel(this);
  kdebug_trace();
  LODWORD(v2) = ispExclaveKitCommand();
  kdebug_trace();
  if (v2)
  {
    H16ISP::H16ISPGraphExclaveIRObjectDetectionNode::InvokeEKRunKit(buf);
    return *buf;
  }

  else
  {
    result = H16ISP::H16ISPExclaveGraphNode::Verbose(this);
    if (result)
    {
      v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v5 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v5;
      }

      result = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        *buf = 136315394;
        v7 = "InvokeEKRunKit";
        v8 = 1024;
        v9 = H16ISP::H16ISPExclaveGraphNode::Channel(this);
        _os_log_impl(&dword_2247DB000, v5, OS_LOG_TYPE_DEFAULT, "%s - [Exclaves]: IR Face Detection IDL Success!: channel=%u\n", buf, 0x12u);
        return 0;
      }
    }
  }

  return result;
}

void *H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode::H16ISPGraphExclaveRGBObjectDetectionNode(H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode *this, H16ISP::H16ISPDevice *a2, int a3, const unsigned int *a4)
{
  result = H16ISP::H16ISPGraphExclaveObjectDetectionNode::H16ISPGraphExclaveObjectDetectionNode(this, a2, a3, a4, 1);
  *result = &unk_283812FC0;
  return result;
}

{
  result = H16ISP::H16ISPGraphExclaveObjectDetectionNode::H16ISPGraphExclaveObjectDetectionNode(this, a2, a3, a4, 1);
  *result = &unk_283812FC0;
  return result;
}

void H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode::GenerateRGBObjectDictionary(_DWORD *a1, uint64_t a2, unsigned int *a3)
{
  allocator = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  pthread_mutex_lock((a2 + 8));
  v178 = *(a2 + 88);
  pthread_mutex_unlock((a2 + 8));
  v211 = Mutable;
  if (Mutable)
  {
    v175 = a2;
    v6 = a1[24];
    v177 = a1;
    if (!v6)
    {
      goto LABEL_24;
    }

    v7 = a3[66];
    valuePtr[0] = v178;
    v8 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v9 = CFArrayCreateMutable(allocator, 0, MEMORY[0x277CBF128]);
    v10 = CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
    v11 = v10;
    if (v8)
    {
      v12 = v9 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12 || v10 == 0)
    {
      H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode::GenerateRGBObjectDictionary();
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      value = v10;
      theDict = v8;
      if (v7)
      {
        v14 = 0;
        key = *MEMORY[0x277CF4B68];
        v193 = *MEMORY[0x277CF43C8];
        v184 = *MEMORY[0x277CF43D0];
        v176 = *MEMORY[0x277CF50B8];
        v181 = *MEMORY[0x277CF4C98];
        v179 = *MEMORY[0x277CF4A48];
        v15 = *MEMORY[0x277CF4A38];
        v16 = *MEMORY[0x277CF4A40];
        v17 = 1;
        v18 = a3;
        do
        {
          if (*(v18 + 328) == 1)
          {
            v19 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v220 = *(v18 + 74);
            v20 = CFNumberCreate(0, kCFNumberSInt32Type, &v220);
            CFDictionarySetValue(v19, key, v20);
            CFRelease(v20);
            v219 = v18[68];
            v21 = CFNumberCreate(0, kCFNumberSInt32Type, &v219);
            CFDictionarySetValue(v19, v193, v21);
            CFRelease(v21);
            v218 = v18[67];
            v22 = CFNumberCreate(0, kCFNumberSInt32Type, &v218);
            CFDictionarySetValue(v19, v184, v22);
            CFRelease(v22);
            v222.origin.x = *(v18 + 70);
            v222.origin.y = *(v18 + 71);
            v222.size.width = *(v18 + 72);
            v222.size.height = *(v18 + 73);
            DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v222);
            if (DictionaryRepresentation)
            {
              v24 = DictionaryRepresentation;
              CFDictionarySetValue(v19, v176, DictionaryRepresentation);
              CFRelease(v24);
            }

            v217 = *(v18 + 81);
            v25 = CFNumberCreate(0, kCFNumberCGFloatType, &v217);
            CFDictionarySetValue(v19, v181, v25);
            CFRelease(v25);
            v216 = v18[77];
            v26 = CFNumberCreate(0, kCFNumberSInt32Type, &v216);
            CFDictionarySetValue(v19, v179, v26);
            CFRelease(v26);
            v215 = v18[79];
            v27 = CFNumberCreate(0, kCFNumberSInt32Type, &v215);
            CFDictionarySetValue(v19, v15, v27);
            CFRelease(v27);
            v214 = v18[78];
            v28 = CFNumberCreate(0, kCFNumberSInt32Type, &v214);
            CFDictionarySetValue(v19, v16, v28);
            CFRelease(v28);
            CFArrayAppendValue(v9, v19);
            CFRelease(v19);
            ++v14;
          }

          if (v17 >= v7)
          {
            break;
          }

          v18 += 16;
          ++v17;
        }

        while (v14 < v6);
      }

      v8 = theDict;
      CFDictionarySetValue(theDict, *MEMORY[0x277CF4440], v9);
      v11 = value;
      CFDictionarySetValue(theDict, *MEMORY[0x277CF52E8], value);
      CFDictionarySetValue(v211, *MEMORY[0x277CF4408], theDict);
      a1 = v177;
      if (!theDict)
      {
        goto LABEL_20;
      }
    }

    CFRelease(v8);
LABEL_20:
    if (v9)
    {
      CFRelease(v9);
    }

    if (v11)
    {
      CFRelease(v11);
    }

LABEL_24:
    v29 = a1[26];
    if (!v29)
    {
      goto LABEL_46;
    }

    v30 = a3[66];
    valuePtr[0] = v178;
    v31 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v32 = CFArrayCreateMutable(allocator, 0, MEMORY[0x277CBF128]);
    v33 = CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
    v34 = v33;
    if (v31)
    {
      v35 = v32 == 0;
    }

    else
    {
      v35 = 1;
    }

    if (v35 || v33 == 0)
    {
      H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode::GenerateRGBObjectDictionary();
      if (!v31)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v180 = v33;
      v182 = v31;
      if (v30)
      {
        v37 = 0;
        keya = *MEMORY[0x277CF4B68];
        v194 = *MEMORY[0x277CF43C8];
        v38 = *MEMORY[0x277CF43D0];
        v185 = *MEMORY[0x277CF50B8];
        v39 = *MEMORY[0x277CF4C98];
        v40 = 1;
        v41 = a3;
        do
        {
          if (!*(v41 + 328))
          {
            v42 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v220 = *(v41 + 74);
            v43 = CFNumberCreate(0, kCFNumberSInt32Type, &v220);
            CFDictionarySetValue(v42, keya, v43);
            CFRelease(v43);
            v219 = v41[68];
            v44 = CFNumberCreate(0, kCFNumberSInt32Type, &v219);
            CFDictionarySetValue(v42, v194, v44);
            CFRelease(v44);
            v218 = v41[67];
            v45 = CFNumberCreate(0, kCFNumberSInt32Type, &v218);
            CFDictionarySetValue(v42, v38, v45);
            CFRelease(v45);
            v223.origin.x = *(v41 + 70);
            v223.origin.y = *(v41 + 71);
            v223.size.width = *(v41 + 72);
            v223.size.height = *(v41 + 73);
            v46 = CGRectCreateDictionaryRepresentation(v223);
            if (v46)
            {
              v47 = v46;
              CFDictionarySetValue(v42, v185, v46);
              CFRelease(v47);
            }

            v217 = *(v41 + 81);
            v48 = CFNumberCreate(0, kCFNumberCGFloatType, &v217);
            CFDictionarySetValue(v42, v39, v48);
            CFRelease(v48);
            CFArrayAppendValue(v32, v42);
            CFRelease(v42);
            ++v37;
          }

          if (v40 >= v30)
          {
            break;
          }

          ++v40;
          v41 += 16;
        }

        while (v37 < v29);
      }

      v31 = v182;
      CFDictionarySetValue(v182, *MEMORY[0x277CF4440], v32);
      v34 = v180;
      CFDictionarySetValue(v182, *MEMORY[0x277CF52E8], v180);
      CFDictionarySetValue(v211, *MEMORY[0x277CF4420], v182);
      a1 = v177;
      if (!v182)
      {
        goto LABEL_42;
      }
    }

    CFRelease(v31);
LABEL_42:
    if (v32)
    {
      CFRelease(v32);
    }

    if (v34)
    {
      CFRelease(v34);
    }

LABEL_46:
    v49 = a1[25];
    if (v49)
    {
      v50 = a3[227];
      valuePtr[0] = v178;
      v51 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v52 = CFArrayCreateMutable(allocator, 0, MEMORY[0x277CBF128]);
      v53 = CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
      v54 = v53;
      if (v51)
      {
        v55 = v52 == 0;
      }

      else
      {
        v55 = 1;
      }

      if (v55 || v53 == 0)
      {
        H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode::GenerateRGBObjectDictionary();
      }

      else
      {
        v183 = v53;
        v186 = v51;
        if (v50)
        {
          v57 = 0;
          keyb = *MEMORY[0x277CF43D0];
          v58 = *MEMORY[0x277CF4B68];
          v59 = *MEMORY[0x277CF43C8];
          v195 = *MEMORY[0x277CF50B8];
          v60 = *MEMORY[0x277CF43C0];
          v61 = (a3 + 235);
          do
          {
            if ((*(v61 - 5) - 7) <= 1)
            {
              if (v57 >= v49)
              {
                break;
              }

              v62 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              *&v217 = *(v61 - 7);
              v63 = CFNumberCreate(0, kCFNumberSInt32Type, &v217);
              CFDictionarySetValue(v62, keyb, v63);
              CFRelease(v63);
              v220 = *v61;
              v64 = CFNumberCreate(0, kCFNumberSInt32Type, &v220);
              CFDictionarySetValue(v62, v58, v64);
              CFRelease(v64);
              v219 = *(v61 - 6);
              v65 = CFNumberCreate(0, kCFNumberSInt32Type, &v219);
              CFDictionarySetValue(v62, v59, v65);
              CFRelease(v65);
              v224.origin.x = *(v61 - 4);
              v224.origin.y = *(v61 - 3);
              v224.size.width = *(v61 - 2);
              v224.size.height = *(v61 - 1);
              v66 = CGRectCreateDictionaryRepresentation(v224);
              if (v66)
              {
                v67 = v66;
                CFDictionarySetValue(v62, v195, v66);
                CFRelease(v67);
              }

              v218 = *(v61 - 5) != 8;
              v68 = CFNumberCreate(0, kCFNumberSInt32Type, &v218);
              CFDictionarySetValue(v62, v60, v68);
              CFRelease(v68);
              CFArrayAppendValue(v52, v62);
              CFRelease(v62);
              ++v57;
            }

            v61 += 9;
            --v50;
          }

          while (v50);
        }

        v51 = v186;
        CFDictionarySetValue(v186, *MEMORY[0x277CF4440], v52);
        v54 = v183;
        CFDictionarySetValue(v186, *MEMORY[0x277CF52E8], v183);
        CFDictionarySetValue(v211, *MEMORY[0x277CF4418], v186);
      }

      a1 = v177;
      if (v51)
      {
        CFRelease(v51);
      }

      if (v52)
      {
        CFRelease(v52);
      }

      if (v54)
      {
        CFRelease(v54);
      }
    }

    v69 = a1[28];
    if (!v69)
    {
LABEL_91:
      v88 = a1[27];
      if (!v88)
      {
        goto LABEL_109;
      }

      v89 = a3[227];
      valuePtr[0] = v178;
      v90 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v91 = CFArrayCreateMutable(allocator, 0, MEMORY[0x277CBF128]);
      v92 = CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
      v93 = v92;
      if (v90 && v91 && v92)
      {
        v188 = v92;
        v197 = v90;
        if (v89)
        {
          v94 = 0;
          v95 = *MEMORY[0x277CF43D0];
          v96 = *MEMORY[0x277CF4B68];
          v97 = *MEMORY[0x277CF43C8];
          keyd = *MEMORY[0x277CF50B8];
          v98 = (a3 + 235);
          do
          {
            if (*(v98 - 5) == 1)
            {
              if (v94 >= v88)
              {
                break;
              }

              v99 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              *&v217 = *(v98 - 7);
              v100 = CFNumberCreate(0, kCFNumberSInt32Type, &v217);
              CFDictionarySetValue(v99, v95, v100);
              CFRelease(v100);
              v220 = *v98;
              v101 = CFNumberCreate(0, kCFNumberSInt32Type, &v220);
              CFDictionarySetValue(v99, v96, v101);
              CFRelease(v101);
              v219 = *(v98 - 6);
              v102 = CFNumberCreate(0, kCFNumberSInt32Type, &v219);
              CFDictionarySetValue(v99, v97, v102);
              CFRelease(v102);
              v226.origin.x = *(v98 - 4);
              v226.origin.y = *(v98 - 3);
              v226.size.width = *(v98 - 2);
              v226.size.height = *(v98 - 1);
              v103 = CGRectCreateDictionaryRepresentation(v226);
              if (v103)
              {
                v104 = v103;
                CFDictionarySetValue(v99, keyd, v103);
                CFRelease(v104);
              }

              CFArrayAppendValue(v91, v99);
              CFRelease(v99);
              ++v94;
            }

            v98 += 9;
            --v89;
          }

          while (v89);
        }

        v90 = v197;
        CFDictionarySetValue(v197, *MEMORY[0x277CF4440], v91);
        v93 = v188;
        CFDictionarySetValue(v197, *MEMORY[0x277CF52E8], v188);
        CFDictionarySetValue(v211, *MEMORY[0x277CF4400], v197);
        a1 = v177;
      }

      else
      {
        H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode::GenerateRGBObjectDictionary();
        if (!v90)
        {
          goto LABEL_105;
        }
      }

      CFRelease(v90);
LABEL_105:
      if (v91)
      {
        CFRelease(v91);
      }

      if (v93)
      {
        CFRelease(v93);
      }

LABEL_109:
      v105 = a1[31];
      if (!v105)
      {
        goto LABEL_127;
      }

      v106 = a3[227];
      valuePtr[0] = v178;
      v107 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v108 = CFArrayCreateMutable(allocator, 0, MEMORY[0x277CBF128]);
      v109 = CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
      v110 = v109;
      if (v107 && v108 && v109)
      {
        v189 = v109;
        v198 = v107;
        if (v106)
        {
          v111 = 0;
          v112 = *MEMORY[0x277CF43D0];
          v113 = *MEMORY[0x277CF4B68];
          v114 = *MEMORY[0x277CF43C8];
          keye = *MEMORY[0x277CF50B8];
          v115 = (a3 + 235);
          do
          {
            if (*(v115 - 5) == 2)
            {
              if (v111 >= v105)
              {
                break;
              }

              v116 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              *&v217 = *(v115 - 7);
              v117 = CFNumberCreate(0, kCFNumberSInt32Type, &v217);
              CFDictionarySetValue(v116, v112, v117);
              CFRelease(v117);
              v220 = *v115;
              v118 = CFNumberCreate(0, kCFNumberSInt32Type, &v220);
              CFDictionarySetValue(v116, v113, v118);
              CFRelease(v118);
              v219 = *(v115 - 6);
              v119 = CFNumberCreate(0, kCFNumberSInt32Type, &v219);
              CFDictionarySetValue(v116, v114, v119);
              CFRelease(v119);
              v227.origin.x = *(v115 - 4);
              v227.origin.y = *(v115 - 3);
              v227.size.width = *(v115 - 2);
              v227.size.height = *(v115 - 1);
              v120 = CGRectCreateDictionaryRepresentation(v227);
              if (v120)
              {
                v121 = v120;
                CFDictionarySetValue(v116, keye, v120);
                CFRelease(v121);
              }

              CFArrayAppendValue(v108, v116);
              CFRelease(v116);
              ++v111;
            }

            v115 += 9;
            --v106;
          }

          while (v106);
        }

        v107 = v198;
        CFDictionarySetValue(v198, *MEMORY[0x277CF4440], v108);
        v110 = v189;
        CFDictionarySetValue(v198, *MEMORY[0x277CF52E8], v189);
        CFDictionarySetValue(v211, *MEMORY[0x277CF43E0], v198);
        a1 = v177;
      }

      else
      {
        H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode::GenerateRGBObjectDictionary();
        if (!v107)
        {
          goto LABEL_123;
        }
      }

      CFRelease(v107);
LABEL_123:
      if (v108)
      {
        CFRelease(v108);
      }

      if (v110)
      {
        CFRelease(v110);
      }

LABEL_127:
      v122 = a1[32];
      if (!v122)
      {
        goto LABEL_145;
      }

      v123 = a3[227];
      valuePtr[0] = v178;
      v124 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v125 = CFArrayCreateMutable(allocator, 0, MEMORY[0x277CBF128]);
      v126 = CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
      v127 = v126;
      if (v124 && v125 && v126)
      {
        v190 = v126;
        v199 = v124;
        if (v123)
        {
          v128 = 0;
          v129 = *MEMORY[0x277CF43D0];
          v130 = *MEMORY[0x277CF4B68];
          v131 = *MEMORY[0x277CF43C8];
          keyf = *MEMORY[0x277CF50B8];
          v132 = (a3 + 235);
          do
          {
            if (*(v132 - 5) == 3)
            {
              if (v128 >= v122)
              {
                break;
              }

              v133 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              *&v217 = *(v132 - 7);
              v134 = CFNumberCreate(0, kCFNumberSInt32Type, &v217);
              CFDictionarySetValue(v133, v129, v134);
              CFRelease(v134);
              v220 = *v132;
              v135 = CFNumberCreate(0, kCFNumberSInt32Type, &v220);
              CFDictionarySetValue(v133, v130, v135);
              CFRelease(v135);
              v219 = *(v132 - 6);
              v136 = CFNumberCreate(0, kCFNumberSInt32Type, &v219);
              CFDictionarySetValue(v133, v131, v136);
              CFRelease(v136);
              v228.origin.x = *(v132 - 4);
              v228.origin.y = *(v132 - 3);
              v228.size.width = *(v132 - 2);
              v228.size.height = *(v132 - 1);
              v137 = CGRectCreateDictionaryRepresentation(v228);
              if (v137)
              {
                v138 = v137;
                CFDictionarySetValue(v133, keyf, v137);
                CFRelease(v138);
              }

              CFArrayAppendValue(v125, v133);
              CFRelease(v133);
              ++v128;
            }

            v132 += 9;
            --v123;
          }

          while (v123);
        }

        v124 = v199;
        CFDictionarySetValue(v199, *MEMORY[0x277CF4440], v125);
        v127 = v190;
        CFDictionarySetValue(v199, *MEMORY[0x277CF52E8], v190);
        CFDictionarySetValue(v211, *MEMORY[0x277CF43E8], v199);
        a1 = v177;
      }

      else
      {
        H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode::GenerateRGBObjectDictionary();
        if (!v124)
        {
          goto LABEL_141;
        }
      }

      CFRelease(v124);
LABEL_141:
      if (v125)
      {
        CFRelease(v125);
      }

      if (v127)
      {
        CFRelease(v127);
      }

LABEL_145:
      v139 = a1[29];
      if (!v139)
      {
        goto LABEL_163;
      }

      v140 = a3[227];
      valuePtr[0] = v178;
      v141 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v142 = CFArrayCreateMutable(allocator, 0, MEMORY[0x277CBF128]);
      v143 = CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
      v144 = v143;
      if (v141 && v142 && v143)
      {
        v191 = v143;
        v200 = v141;
        if (v140)
        {
          v145 = 0;
          v146 = *MEMORY[0x277CF43D0];
          v147 = *MEMORY[0x277CF4B68];
          v148 = *MEMORY[0x277CF43C8];
          keyg = *MEMORY[0x277CF50B8];
          v149 = (a3 + 235);
          do
          {
            if (*(v149 - 5) == 4)
            {
              if (v145 >= v139)
              {
                break;
              }

              v150 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              *&v217 = *(v149 - 7);
              v151 = CFNumberCreate(0, kCFNumberSInt32Type, &v217);
              CFDictionarySetValue(v150, v146, v151);
              CFRelease(v151);
              v220 = *v149;
              v152 = CFNumberCreate(0, kCFNumberSInt32Type, &v220);
              CFDictionarySetValue(v150, v147, v152);
              CFRelease(v152);
              v219 = *(v149 - 6);
              v153 = CFNumberCreate(0, kCFNumberSInt32Type, &v219);
              CFDictionarySetValue(v150, v148, v153);
              CFRelease(v153);
              v229.origin.x = *(v149 - 4);
              v229.origin.y = *(v149 - 3);
              v229.size.width = *(v149 - 2);
              v229.size.height = *(v149 - 1);
              v154 = CGRectCreateDictionaryRepresentation(v229);
              if (v154)
              {
                v155 = v154;
                CFDictionarySetValue(v150, keyg, v154);
                CFRelease(v155);
              }

              CFArrayAppendValue(v142, v150);
              CFRelease(v150);
              ++v145;
            }

            v149 += 9;
            --v140;
          }

          while (v140);
        }

        v141 = v200;
        CFDictionarySetValue(v200, *MEMORY[0x277CF4440], v142);
        v144 = v191;
        CFDictionarySetValue(v200, *MEMORY[0x277CF52E8], v191);
        CFDictionarySetValue(v211, *MEMORY[0x277CF43F0], v200);
        a1 = v177;
      }

      else
      {
        H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode::GenerateRGBObjectDictionary();
        if (!v141)
        {
          goto LABEL_159;
        }
      }

      CFRelease(v141);
LABEL_159:
      if (v142)
      {
        CFRelease(v142);
      }

      if (v144)
      {
        CFRelease(v144);
      }

LABEL_163:
      v156 = a1[30];
      if (!v156)
      {
LABEL_181:
        pthread_mutex_lock((v175 + 8));
        CFDictionarySetValue(*(v175 + 368), *MEMORY[0x277CF48A8], v211);
        pthread_mutex_unlock((v175 + 8));
        CFRelease(v211);
        return;
      }

      v157 = a3[227];
      valuePtr[0] = v178;
      v158 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v159 = CFArrayCreateMutable(allocator, 0, MEMORY[0x277CBF128]);
      v160 = CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
      v161 = v160;
      if (v158 && v159 && v160)
      {
        v192 = v160;
        v201 = v158;
        if (v157)
        {
          v162 = 0;
          v163 = *MEMORY[0x277CF43D0];
          v164 = *MEMORY[0x277CF4B68];
          v165 = *MEMORY[0x277CF43C8];
          keyh = *MEMORY[0x277CF50B8];
          v166 = (a3 + 235);
          do
          {
            if (*(v166 - 5) == 5)
            {
              if (v162 >= v156)
              {
                break;
              }

              v167 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              *&v217 = *(v166 - 7);
              v168 = CFNumberCreate(0, kCFNumberSInt32Type, &v217);
              CFDictionarySetValue(v167, v163, v168);
              CFRelease(v168);
              v220 = *v166;
              v169 = CFNumberCreate(0, kCFNumberSInt32Type, &v220);
              CFDictionarySetValue(v167, v164, v169);
              CFRelease(v169);
              v219 = *(v166 - 6);
              v170 = CFNumberCreate(0, kCFNumberSInt32Type, &v219);
              CFDictionarySetValue(v167, v165, v170);
              CFRelease(v170);
              v230.origin.x = *(v166 - 4);
              v230.origin.y = *(v166 - 3);
              v230.size.width = *(v166 - 2);
              v230.size.height = *(v166 - 1);
              v171 = CGRectCreateDictionaryRepresentation(v230);
              if (v171)
              {
                v172 = v171;
                CFDictionarySetValue(v167, keyh, v171);
                CFRelease(v172);
              }

              CFArrayAppendValue(v159, v167);
              CFRelease(v167);
              ++v162;
            }

            v166 += 9;
            --v157;
          }

          while (v157);
        }

        v158 = v201;
        CFDictionarySetValue(v201, *MEMORY[0x277CF4440], v159);
        v161 = v192;
        CFDictionarySetValue(v201, *MEMORY[0x277CF52E8], v192);
        CFDictionarySetValue(v211, *MEMORY[0x277CF43F8], v201);
      }

      else
      {
        H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode::GenerateRGBObjectDictionary();
        if (!v158)
        {
          goto LABEL_177;
        }
      }

      CFRelease(v158);
LABEL_177:
      if (v159)
      {
        CFRelease(v159);
      }

      if (v161)
      {
        CFRelease(v161);
      }

      goto LABEL_181;
    }

    v70 = a3[227];
    valuePtr[0] = v178;
    v71 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v72 = CFArrayCreateMutable(allocator, 0, MEMORY[0x277CBF128]);
    v73 = CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
    v74 = v73;
    if (v71)
    {
      v75 = v72 == 0;
    }

    else
    {
      v75 = 1;
    }

    if (v75 || v73 == 0)
    {
      H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode::GenerateRGBObjectDictionary();
      if (!v71)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v187 = v73;
      v196 = v71;
      if (v70)
      {
        v77 = 0;
        v78 = *MEMORY[0x277CF43D0];
        v79 = *MEMORY[0x277CF4B68];
        v80 = *MEMORY[0x277CF43C8];
        keyc = *MEMORY[0x277CF50B8];
        v81 = (a3 + 235);
        do
        {
          if (*(v81 - 5) == 6)
          {
            if (v77 >= v69)
            {
              break;
            }

            v82 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            *&v217 = *(v81 - 7);
            v83 = CFNumberCreate(0, kCFNumberSInt32Type, &v217);
            CFDictionarySetValue(v82, v78, v83);
            CFRelease(v83);
            v220 = *v81;
            v84 = CFNumberCreate(0, kCFNumberSInt32Type, &v220);
            CFDictionarySetValue(v82, v79, v84);
            CFRelease(v84);
            v219 = *(v81 - 6);
            v85 = CFNumberCreate(0, kCFNumberSInt32Type, &v219);
            CFDictionarySetValue(v82, v80, v85);
            CFRelease(v85);
            v225.origin.x = *(v81 - 4);
            v225.origin.y = *(v81 - 3);
            v225.size.width = *(v81 - 2);
            v225.size.height = *(v81 - 1);
            v86 = CGRectCreateDictionaryRepresentation(v225);
            if (v86)
            {
              v87 = v86;
              CFDictionarySetValue(v82, keyc, v86);
              CFRelease(v87);
            }

            CFArrayAppendValue(v72, v82);
            CFRelease(v82);
            ++v77;
          }

          v81 += 9;
          --v70;
        }

        while (v70);
      }

      v71 = v196;
      CFDictionarySetValue(v196, *MEMORY[0x277CF4440], v72);
      v74 = v187;
      CFDictionarySetValue(v196, *MEMORY[0x277CF52E8], v187);
      CFDictionarySetValue(v211, *MEMORY[0x277CF4410], v196);
      a1 = v177;
      if (!v196)
      {
        goto LABEL_87;
      }
    }

    CFRelease(v71);
LABEL_87:
    if (v72)
    {
      CFRelease(v72);
    }

    if (v74)
    {
      CFRelease(v74);
    }

    goto LABEL_91;
  }

  H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode::GenerateRGBObjectDictionary();
}

uint64_t H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode::InvokeEKRunKit(H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode *this, H16ISP::H16ISPFilterGraphMessage *a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a2 + 8));
  pthread_mutex_unlock((a2 + 8));
  H16ISP::H16ISPExclaveGraphNode::Channel(this);
  kdebug_trace();
  v6 = ispExclaveKitCommand();
  kdebug_trace();
  if (!a3)
  {
    return 0;
  }

  if (v6)
  {
    return 3758097130;
  }

  if (v17)
  {
    return 0;
  }

  H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode::GenerateRGBObjectDictionary(this, a2, &v16);
  result = H16ISP::H16ISPExclaveGraphNode::Verbose(this);
  if (result)
  {
    v8 = v19;
    v9 = MEMORY[0x277D86220];
    if (v19)
    {
      v10 = &v20;
      do
      {
        if (*v10 == 9)
        {
          v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v9)
          {
            v11 = os_log_create("com.apple.isp", "exclaves");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v11;
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = *(v10 - 2);
            v13 = *(v10 - 1);
            *buf = 136315650;
            v22 = "PrintInvalidANSTDetections";
            v23 = 1024;
            v24 = v12;
            v25 = 1024;
            v26 = v13;
            _os_log_error_impl(&dword_2247DB000, v11, OS_LOG_TYPE_ERROR, "%s - [Exclaves]: ObjectID=%u, GroupID=%u has an INVALID category!\n", buf, 0x18u);
          }
        }

        v10 = (v10 + 36);
        --v8;
      }

      while (v8);
    }

    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v9)
    {
      v14 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v14;
    }

    result = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v15 = H16ISP::H16ISPExclaveGraphNode::Channel(this);
      *buf = 136315906;
      v22 = "InvokeEKRunKit";
      v23 = 1024;
      v24 = v15;
      v25 = 1024;
      v26 = v18;
      v27 = 1024;
      v28 = v19;
      _os_log_impl(&dword_2247DB000, v14, OS_LOG_TYPE_DEFAULT, "%s - [Exclaves]: RGB Object Detection Framework Success: channel=%u, numfaces=%u, numobjects=%u\n", buf, 0x1Eu);
      return 0;
    }
  }

  return result;
}

void H16ISP::H16ISPGraphExclaveIRObjectDetectionNode::~H16ISPGraphExclaveIRObjectDetectionNode(H16ISP::H16ISPGraphExclaveIRObjectDetectionNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

void H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode::~H16ISPGraphExclaveRGBObjectDetectionNode(H16ISP::H16ISPGraphExclaveRGBObjectDetectionNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x18u);
}

uint64_t H16ISP::H16ISPFilterGraphManager::Deactivate(H16ISP::H16ISPFilterGraphManager *this)
{
  v2 = *(this + 8);
  v3 = *(this + 9);
  v4 = (v2 + 8 * (*(this + 11) >> 9));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (*v4 + 8 * (*(this + 11) & 0x1FFLL));
  }

  while (1)
  {
    if (v3 == v2)
    {
      v9 = 0;
    }

    else
    {
      v8 = *(this + 12) + *(this + 11);
      v9 = *(v2 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF);
    }

    if (v5 == v9)
    {
      break;
    }

    v6 = *v5++;
    (*(*v6 + 24))(v6);
    if ((v5 - *v4) == 4096)
    {
      v7 = v4[1];
      ++v4;
      v5 = v7;
    }

    v2 = *(this + 8);
    v3 = *(this + 9);
  }

  return 0;
}

void H16ISP::H16ISPFilterGraphManager::~H16ISPFilterGraphManager(H16ISP::H16ISPFilterGraphManager *this)
{
  *this = &unk_283813070;
  v2 = *(this + 8);
  v3 = *(this + 9);
  v4 = (v2 + 8 * (*(this + 11) >> 9));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (*v4 + 8 * (*(this + 11) & 0x1FFLL));
  }

  while (1)
  {
    if (v3 == v2)
    {
      v8 = 0;
    }

    else
    {
      v7 = *(this + 12) + *(this + 11);
      v8 = *(v2 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF);
    }

    if (v5 == v8)
    {
      break;
    }

    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    if ((++v5 - *v4) == 4096)
    {
      v6 = v4[1];
      ++v4;
      v5 = v6;
    }

    v2 = *(this + 8);
    v3 = *(this + 9);
  }

  std::deque<__CVBuffer *>::~deque[abi:ne200100](this + 7);
  std::deque<__CVBuffer *>::~deque[abi:ne200100](this + 1);
}

{
  H16ISP::H16ISPFilterGraphManager::~H16ISPFilterGraphManager(this);

  JUMPOUT(0x22AA55B60);
}

H16ISP::ProjectorManager *H16ISP::ProjectorManager::ProjectorManager(H16ISP::ProjectorManager *this, H16ISP::H16ISPDevice *a2, H16ISP::H16ISPDevice *a3, uint64_t a4, uint64_t a5, int *a6)
{
  *this = a3;
  *(this + 1) = a2;
  *(this + 2) = 0x4000000000;
  *(this + 6) = 64;
  *(this + 51) = 7680;
  *(this + 416) = 0;
  *(this + 7) = 0;
  v7 = (this + 28);
  H16ISP::ProjectorManager::getProjectorVersion(a2, a3, &v12, &v11, this + 7, a6);
  v8 = *v7 - 8;
  if (v8 > 3)
  {
    v9 = &H16ISP::g_ProjectorSettings_Pearl;
  }

  else
  {
    v9 = *(&off_278530E18 + v8);
  }

  *(this + 50) = v9;
  H16ISP::ProjectorManager::populateProjectorModes(this);
  return this;
}

uint64_t H16ISP::ProjectorManager::getProjectorVersion(H16ISP::ProjectorManager *this, H16ISP::H16ISPDevice *a2, _DWORD *a3, int *a4, int *a5, int *a6)
{
  v9 = a2;
  v21 = *MEMORY[0x277D85DE8];
  bzero(v15, 0x68uLL);
  v16 = 1565;
  v17 = v9;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x68u, 0, 0xFFFFFFFF);
  v12 = v18;
  v13 = v19;
  v14 = v20;
  if (result)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  *a3 = v12;
  *a4 = v13;
  *a5 = v14;
  return result;
}

uint64_t H16ISP::ProjectorManager::populateProjectorModes(H16ISP::ProjectorManager *this)
{
  H16ISP::ProjectorManager::setEntryPattern(this, 0);
  H16ISP::ProjectorManager::setEntryFlood(this, 1u);
  H16ISP::ProjectorManager::setEntryPattern(this, 2u);
  H16ISP::ProjectorManager::setEntryPattern(this, 3u);
  H16ISP::ProjectorManager::setEntryPattern(this, 4u);
  H16ISP::ProjectorManager::setEntryPattern(this, 5u);
  H16ISP::ProjectorManager::setEntryPattern(this, 6u);
  H16ISP::ProjectorManager::setEntryPattern(this, 7u);
  H16ISP::ProjectorManager::setEntryPattern(this, 8u);
  H16ISP::ProjectorManager::setEntryPattern(this, 9u);
  H16ISP::ProjectorManager::setEntryPattern(this, 0xAu);
  H16ISP::ProjectorManager::setEntryPattern(this, 0xBu);
  H16ISP::ProjectorManager::setEntryPattern(this, 0xCu);
  H16ISP::ProjectorManager::setEntryPattern(this, 0xDu);
  H16ISP::ProjectorManager::setEntryPattern(this, 0xEu);
  H16ISP::ProjectorManager::setEntryPattern(this, 0xFu);
  H16ISP::ProjectorManager::setEntryPattern(this, 0x10u);
  H16ISP::ProjectorManager::setEntryPattern(this, 0x11u);
  H16ISP::ProjectorManager::setEntryPattern(this, 0x12u);
  H16ISP::ProjectorManager::setEntryPattern(this, 0x13u);
  H16ISP::ProjectorManager::setEntryPattern(this, 0x14u);
  H16ISP::ProjectorManager::setEntryFlood(this, 0x15u);
  H16ISP::ProjectorManager::setEntryFlood(this, 0x16u);
  H16ISP::ProjectorManager::setEntryFlood(this, 0x17u);
  H16ISP::ProjectorManager::setEntryPattern(this, 0x1Au);
  H16ISP::ProjectorManager::setEntryPattern(this, 0x1Bu);
  H16ISP::ProjectorManager::setEntryPattern(this, 0x18u);
  H16ISP::ProjectorManager::setEntryFlood(this, 0x19u);

  return H16ISP::ProjectorManager::initializeAEParams(this);
}

H16ISP::ProjectorManager *H16ISP::ProjectorManager::setFrameRate(H16ISP::ProjectorManager *this, float a2)
{
  if (a2 == 0.0)
  {
    a2 = 30.0;
  }

  if (a2 < 256.0)
  {
    a2 = a2 * 256.0;
  }

  v3 = a2 & 0xFFFFFF00;
  if (v3 != *(this + 102))
  {
    v4 = this;
    *(this + 102) = v3;
    H16ISP::ProjectorManager::initializeAEParams(this);
    v5 = *(v4 + 4);

    return H16ISP::ProjectorManager::setProjectorType(v4, v5);
  }

  return this;
}

uint64_t H16ISP::ProjectorManager::initializeAEParams(uint64_t this)
{
  *(this + 40) = 0u;
  *(this + 392) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 56) = 0u;
  v1 = *(this + 408);
  if (v1 >= 15360)
  {
    v2 = 15360;
  }

  else
  {
    v2 = *(this + 408);
  }

  if (v1 >= 7680)
  {
    v3 = 7680;
  }

  else
  {
    v3 = *(this + 408);
  }

  if (v1 >= 3840)
  {
    v4 = 3840;
  }

  else
  {
    v4 = *(this + 408);
  }

  *(this + 32) = 0;
  *(this + 36) = v2;
  v5 = *(this + 400);
  *(this + 40) = v5[9];
  *(this + 44) = v2;
  *(this + 52) = v3;
  v6 = v5[14];
  *(this + 60) = v3;
  *(this + 64) = v6;
  v7 = v5[54];
  *(this + 68) = v4;
  *(this + 72) = v7;
  *(this + 76) = v3;
  *(this + 80) = v6;
  *(this + 84) = v3;
  *(this + 88) = v7;
  *(this + 92) = v2;
  *(this + 96) = v6;
  *(this + 100) = v3;
  v8 = v3;
  v9 = *(this + 28);
  if (v9 != 8)
  {
    v8 = v3;
    if (v9 != 11)
    {
      if (v1 >= 1280)
      {
        v8 = 1280;
      }

      else
      {
        v8 = v1;
      }
    }
  }

  *(this + 104) = v5[94];
  *(this + 108) = v8;
  *(this + 112) = v5[104];
  *(this + 116) = v8;
  *(this + 160) = v5[109];
  *(this + 164) = v8;
  *(this + 168) = v5[119];
  *(this + 172) = v8;
  *(this + 392) = v5[139];
  *(this + 396) = v8;
  v10 = v5[34];
  *(this + 120) = v10;
  *(this + 124) = v4;
  v11 = v5[74];
  *(this + 128) = v11;
  *(this + 132) = v3;
  *(this + 136) = v10;
  *(this + 140) = v3;
  *(this + 144) = v11;
  *(this + 148) = v2;
  *(this + 152) = v10;
  *(this + 156) = v3;
  *(this + 176) = v5[19];
  *(this + 180) = v4;
  *(this + 184) = v5[24];
  *(this + 188) = v4;
  *(this + 192) = v5[29];
  *(this + 196) = v4;
  *(this + 200) = v5[59];
  *(this + 204) = v3;
  *(this + 208) = v5[64];
  *(this + 212) = v3;
  v12 = v5[69];
  *(this + 216) = v12;
  *(this + 220) = v3;
  *(this + 224) = v5[39];
  *(this + 228) = v4;
  *(this + 232) = v5[44];
  *(this + 236) = v4;
  *(this + 240) = v5[49];
  *(this + 244) = v4;
  *(this + 248) = v5[79];
  *(this + 252) = v3;
  *(this + 256) = v5[84];
  *(this + 260) = v3;
  *(this + 264) = v5[89];
  *(this + 268) = v3;
  *(this + 272) = v12;
  *(this + 276) = v2;
  v13 = v5[124];
  *(this + 280) = v13;
  *(this + 284) = 15360;
  *(this + 288) = v13;
  *(this + 292) = 10240;
  return this;
}

uint64_t H16ISP::ProjectorManager::setProjectorType(H16ISP::ProjectorManager *this, unsigned int a2)
{
  v2 = a2;
  if (a2 == 47)
  {
    if (H16ISP::g_UserDefinedProjectorType)
    {

      return H16ISP::ProjectorManager::applyUserDefinedType(this);
    }

    v2 = 0;
  }

  *(this + 20) = 0x4000000040;
  v10 = 1572;
  v11 = *this;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(v20, 0, 128);
  v5 = H16ISP::ProjectorManager::_projectorSequences[129 * v2];
  if (v5 >= 1)
  {
    v6 = v20;
    v7 = &H16ISP::ProjectorManager::_projectorSequences[129 * v2 + 2];
    do
    {
      v8 = *v7;
      *(v6 - 64) = *(v7 - 1);
      *v6++ = v8;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  H16ISP::ProjectorManager::updateOnChange(this, *(this + 2 * v2 + 8), *(this + 2 * v2 + 9));
  result = H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 1), v9, 0x12Cu, 0, 0xFFFFFFFF);
  *(this + 4) = v2;
  return result;
}

uint64_t H16ISP::ProjectorManager::setProjectorType(H16ISP::ProjectorManager *this, CFDictionaryRef theDict)
{
  H16ISP::ProjectorManager::setUserDefinedProjectorType(theDict, theDict);

  return H16ISP::ProjectorManager::setProjectorType(this, 0x2Fu);
}

CFDictionaryRef H16ISP::ProjectorManager::setUserDefinedProjectorType(CFDictionaryRef theDict, const __CFDictionary *a2)
{
  if (H16ISP::g_UserDefinedProjectorType)
  {
    CFRelease(H16ISP::g_UserDefinedProjectorType);
    H16ISP::g_UserDefinedProjectorType = 0;
  }

  result = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], theDict);
  H16ISP::g_UserDefinedProjectorType = result;
  return result;
}