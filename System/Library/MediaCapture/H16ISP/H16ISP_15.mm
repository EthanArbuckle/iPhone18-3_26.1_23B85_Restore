double Matrix<double>::Sqrt@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = Matrix<double>::Matrix(a2, *(a1 + 16), *(a1 + 20));
  v5 = *(a1 + 20) * *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(v3 + 8);
    do
    {
      v8 = *v6++;
      result = sqrt(v8);
      *v7++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t GMC_UpdateParamsWithResults(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = *(a2 + 96) * *(a1 + 80);
  if (a2 + 72 != a1 + 456)
  {
    v2 = *(a2 + 72);
    *(a1 + 472) = *(a2 + 88);
    *(a1 + 456) = v2;
  }

  return 0;
}

void MatrixNxPts<4u,double>::~MatrixNxPts(uint64_t a1)
{
  Matrix<double>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

void MatrixMxN<3u,4u,double>::operator*(const double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) == 4)
  {
    Matrix<double>::Matrix(a3, 3, *(a2 + 20));
    LODWORD(v6) = 4;
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

void CNeonBlurMAccelerate::CNeonBlurMAccelerate(CNeonBlurMAccelerate *this)
{
  *this = &unk_2838143F8;
}

{
  *this = &unk_2838143F8;
}

void H16ISP::H16ISPGraphExclaveFaceTrackingSecondaryNode::H16ISPGraphExclaveFaceTrackingSecondaryNode(H16ISP::H16ISPGraphExclaveFaceTrackingSecondaryNode *this, H16ISP::H16ISPDevice *a2, int a3)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 23);
  *v5 = &unk_283814428;
  *(v5 + 80) = 0;
  *(v5 + 88) = a2;
  *(v5 + 96) = a3;
}

{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 23);
  *v5 = &unk_283814428;
  *(v5 + 80) = 0;
  *(v5 + 88) = a2;
  *(v5 + 96) = a3;
}

void H16ISP::H16ISPGraphExclaveFaceTrackingSecondaryNode::~H16ISPGraphExclaveFaceTrackingSecondaryNode(H16ISP::H16ISPGraphExclaveFaceTrackingSecondaryNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISP::H16ISPGraphExclaveFaceTrackingSecondaryNode::onActivate(H16ISP::H16ISPGraphExclaveFaceTrackingSecondaryNode *this)
{
  v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_DEFAULT, "H16ISPGraphExclaveFaceTrackingSecondaryNode::onActivate\n", v3, 2u);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphExclaveFaceTrackingSecondaryNode::onDeactivate(H16ISP::H16ISPGraphExclaveFaceTrackingSecondaryNode *this)
{
  v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_DEFAULT, "H16ISPGraphExclaveFaceTrackingSecondaryNode::onDeactivate\n", v3, 2u);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphExclaveFaceTrackingSecondaryNode::onMessageProcessing(H16ISP::H16ISPDevice **this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 9) & (1 << H16ISP::H16ISPFilterGraphNode::GetType(this));
  *(this + 80) = v4 != 0;
  if (!v4)
  {
    return 0;
  }

  pthread_mutex_lock((a2 + 8));
  v5 = *(a2 + 90);
  v6 = *(a2 + 384);
  pthread_mutex_unlock((a2 + 8));
  if (H16ISP::H16ISPDevice::enabledExclaveDebug(this[11]))
  {
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(this + 24);
      LODWORD(v14) = 67109632;
      HIDWORD(v14) = v8;
      *v15 = 1024;
      *&v15[2] = v6;
      v16 = 1024;
      v17 = v5;
      _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_DEFAULT, "[Exclaves]: channel=%u runSecondaryProcessing=%{BOOL}d requestID=0x%08x\n", &v14, 0x14u);
    }
  }

  if (!v6)
  {
    return 0;
  }

  v14 = 0x1000000090005;
  v9 = *(this + 24);
  *v15 = 528;
  v18 = v9;
  kdebug_trace();
  v10 = ispExclaveKitCommand();
  kdebug_trace();
  if (!v10)
  {
    return 0;
  }

  v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v11 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v11;
  }

  v12 = 3758097084;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPGraphExclaveFaceTrackingSecondaryNode::onMessageProcessing(v10, v11);
  }

  return v12;
}

void H16ISPColorPearlOnlineCalibrationRunner::H16ISPColorPearlOnlineCalibrationRunner(H16ISPColorPearlOnlineCalibrationRunner *this, void *a2)
{
  *this = &unk_2838144A0;
  *(this + 4) = 0;
  *(this + 12) = 0x100000000;
  *(this + 5) = 0;
  *(this + 24) = 0;
  *(this + 4) = a2;
}

void H16ISPRgbIrRunner::H16ISPRgbIrRunner(H16ISPRgbIrRunner *this, void *a2)
{
  *(this + 4) = 0;
  *(this + 12) = 0x100000000;
  *(this + 5) = 0;
  *(this + 24) = 0;
  *(this + 4) = a2;
  *(this + 5) = 0;
  *this = &unk_2838144E0;
  *(this + 12) = 0;
  *(this + 7) = 0;
  operator new();
}

void H16ISPRgbIrRunner::~H16ISPRgbIrRunner(H16ISPRgbIrRunner *this)
{
  *this = &unk_2838144E0;
  v2 = *(this + 7);
  if (v2)
  {
    dispatch_sync(v2, &__block_literal_global_7);
    dispatch_release(*(this + 7));
    *(this + 7) = 0;
  }

  v3 = *(this + 5);
  if (v3)
  {
    if (*v3)
    {
      RgbIrCalibration::~RgbIrCalibration(*v3);
      MEMORY[0x22AA55B60]();
      v3 = *(this + 5);
    }

    v4 = *(v3 + 8);
    if (!v4 || (v4, *(this + 5)))
    {
      MEMORY[0x22AA55B60]();
    }

    *(this + 5) = 0;
  }
}

{
  H16ISPRgbIrRunner::~H16ISPRgbIrRunner(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISPRgbIrRunner::markForDeletion(uint64_t this)
{
  *(this + 24) = 1;
  v1 = *(this + 40);
  if (v1)
  {
    this = *v1;
    if (*v1)
    {
      return RgbIrCalibration::abort(this);
    }
  }

  return this;
}

__n128 H16ISPRgbIrRunner::setDepthConfig(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 96) = *(a2 + 32);
  *(a1 + 64) = result;
  *(a1 + 80) = v3;
  return result;
}

uint64_t H16ISPRgbIrRunner::run(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v11[1682] = *MEMORY[0x277D85DE8];
  if ((*(v2 + 9) & 1) == 0)
  {
    v6 = v2;
    if (*(v2 + 20) == 1)
    {
      if (*(v2 + 8) == 1)
      {
        v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v7 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v11[0]) = 0;
          _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI): Already ran algorithm\n", v11, 2u);
        }
      }
    }

    else if (*(v2 + 12) < *(v2 + 16))
    {
      v8 = v4;
      v9 = v3;
      v11[5] = 0;
      v11[6] = 0;
      CFRetain(v4);
      CFRetain(v9);
      CVPixelBufferCreateFromCVImageBufferRef();
      if (v8)
      {
        CFRelease(v8);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      if (*(v6 + 8) == 1)
      {
        v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v10 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v10;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          H16ISPRgbIrRunner::run();
        }
      }
    }
  }

  return 3758097084;
}

void ___ZN17H16ISPRgbIrRunner3runEP10__CVBufferS1_S1_PK14__CFDictionaryS4_b26sCIspCmdChPearlCalibrationt_block_invoke(uint64_t a1)
{
  keys[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if ((CVPixelBufferGetPixelFormatType(*(*(*(a1 + 32) + 8) + 24)) | 0x10) == 0x34323076)
  {
    v3 = 0;
  }

  else
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;
    Width = CVPixelBufferGetWidth(v5);
    Height = CVPixelBufferGetHeight(v5);
    v8 = Width >> 2;
    if (Width <= 0xA03)
    {
      v8 = 640;
    }

    if (v8 >= Width)
    {
      v8 = Width;
    }

    v9 = (2 * llroundf(vcvts_n_f32_u64(v8, 1uLL)));
    v10 = (2 * llroundf(vcvts_n_f32_u64(Height * v9 / Width, 1uLL)));
    keys[0] = *MEMORY[0x277CC4DE8];
    v11 = *MEMORY[0x277CBECE8];
    v12 = MEMORY[0x277CBF138];
    v13 = MEMORY[0x277CBF150];
    values = CFDictionaryCreate(*MEMORY[0x277CBECE8], 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v3 = 1;
    v14 = CFDictionaryCreate(v11, keys, &values, 1, v12, v13);
    LODWORD(v9) = CVPixelBufferCreate(v11, v9, v10, 0x34323076u, v14, (*(*(a1 + 32) + 8) + 24));
    CFRelease(values);
    CFRelease(v14);
    if (!v9)
    {
      v15 = *(*(*(a1 + 32) + 8) + 24);
      pixelTransferSessionOut = 0;
      if (VTPixelTransferSessionCreate(v11, &pixelTransferSessionOut))
      {
        v16 = 0;
        pixelTransferSessionOut = 0;
        v3 = 1;
      }

      else
      {
        if (VTPixelTransferSessionTransferImage(pixelTransferSessionOut, v5, *(*(*(a1 + 32) + 8) + 24)))
        {
          v17 = 1;
        }

        else
        {
          v17 = v15 == 0;
        }

        v3 = v17;
        v16 = pixelTransferSessionOut;
      }

      VTPixelTransferSessionInvalidate(v16);
      CFRelease(pixelTransferSessionOut);
    }

    CVBufferRelease(v5);
  }

  if (*(v2 + 23) == 1)
  {
    dumpBuffers(*(*(*(a1 + 32) + 8) + 24), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  }

  keys[0] = 0;
  if ((v3 & 1) == 0)
  {
    v18 = *MEMORY[0x277CBECE8];
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(*(*(*(a1 + 32) + 8) + 24), 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(*(*(*(a1 + 32) + 8) + 24), 0);
    if (!CVPixelBufferCreate(v18, WidthOfPlane, HeightOfPlane, 0x4C303038u, *(a1 + 48), keys))
    {
      CVPixelBufferLockBaseAddress(*(*(*(a1 + 32) + 8) + 24), 1uLL);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(*(*(*(a1 + 32) + 8) + 24), 0);
      CVPixelBufferLockBaseAddress(keys[0], 0);
      BaseAddress = CVPixelBufferGetBaseAddress(keys[0]);
      if (BaseAddressOfPlane)
      {
        v23 = BaseAddress == 0;
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        v24 = BaseAddress;
        v25 = CVPixelBufferGetHeight(keys[0]);
        v26 = CVPixelBufferGetWidth(keys[0]);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(*(*(a1 + 32) + 8) + 24), 0);
        BytesPerRow = CVPixelBufferGetBytesPerRow(keys[0]);
        if (v25)
        {
          v29 = BytesPerRow;
          do
          {
            memcpy(v24, BaseAddressOfPlane, v26);
            BaseAddressOfPlane += BytesPerRowOfPlane;
            v24 += v29;
            --v25;
          }

          while (v25);
        }
      }

      CVPixelBufferUnlockBaseAddress(keys[0], 0);
      CVPixelBufferUnlockBaseAddress(*(*(*(a1 + 32) + 8) + 24), 1uLL);
    }
  }

  v30 = *(*(*(a1 + 32) + 8) + 24);
  if (v30)
  {
    CVPixelBufferRelease(v30);
  }

  if (keys[0])
  {
    *(v2 + 20) = H16ISPRgbIrRunner::runAlgorithm(v2, *(a1 + 56), *(a1 + 64), keys[0], *(a1 + 48), *(a1 + 72), *(a1 + 13392), (a1 + 80), v2 + 64, *(v2 + 104));
  }

  CFRelease(*(a1 + 72));
  CFRelease(*(a1 + 56));
  if (keys[0])
  {
    CFRelease(keys[0]);
  }

  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 64));
  ++*(v2 + 12);
  *(v2 + 9) = 0;
}

FILE *dumpBuffers(__CVBuffer *a1, const __CFDictionary *a2, FILE *a3, const __CFDictionary *a4, FILE *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0;
  setlocale(0, "");
  time(&v29);
  v10 = localtime(&v29);
  strftime(v32, 0x14uLL, "%m%d%g_%H%M%S", v10);
  snprintf(__str, 0x400uLL, "/var/mobile/Media/DCIM/%s-RGBIR-", v32);
  dumpMetadata(a2, __str, "Color");
  dumpMetadata(a4, __str, "IR");
  if (a1)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    v30[0] = HIBYTE(PixelFormatType);
    v30[1] = BYTE2(PixelFormatType);
    v30[2] = BYTE1(PixelFormatType);
    v30[3] = PixelFormatType;
    v30[4] = 0;
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
    snprintf(__filename, 0x400uLL, "%s%s.%lux%lu.%lu.%s.bin", __str, "Color", WidthOfPlane, HeightOfPlane, BytesPerRowOfPlane, v30);
    if (HeightOfPlane * BytesPerRowOfPlane <= CVPixelBufferGetDataSize(a1))
    {
      v15 = fopen(__filename, "wb");
      if (v15)
      {
        v16 = v15;
        CVPixelBufferLockBaseAddress(a1, 0);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
        if (HeightOfPlane)
        {
          v18 = BaseAddressOfPlane;
          v19 = 0;
          v20 = 1;
          do
          {
            fwrite(&v18[v19 * BytesPerRowOfPlane], WidthOfPlane, 1uLL, v16);
            v19 = v20;
            v21 = HeightOfPlane > v20++;
          }

          while (v21);
        }

        v22 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
        v23 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
        v24 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
        if (v23)
        {
          v25 = v24;
          v26 = 0;
          v27 = 1;
          do
          {
            fwrite(&v25[v26 * v22], WidthOfPlane, 1uLL, v16);
            v26 = v27;
            v21 = v23 > v27++;
          }

          while (v21);
        }

        CVPixelBufferUnlockBaseAddress(a1, 0);
        fclose(v16);
      }
    }
  }

  dumpSinglePlaneBuffer(a3, __str, "IR");
  return dumpSinglePlaneBuffer(a5, __str, "Depth");
}

BOOL H16ISPRgbIrRunner::runAlgorithm(uint64_t a1, int a2, const __CFDictionary *a3, int a4, CFDictionaryRef theDict, int a6, int a7, double *a8, uint64_t a9, __int16 a10)
{
  v13 = theDict;
  v65 = *MEMORY[0x277D85DE8];
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CF4BC8]);
  }

  else
  {
    Value = 0;
  }

  valuePtr = -269488145;
  v19 = CFDictionaryGetValue(a3, @"StereoGMC-Result");
  if (v19)
  {
    CFNumberGetValue(v19, kCFNumberIntType, &valuePtr);
  }

  v54 = 0;
  v55 = 0;
  mach_timebase_info(&info);
  v46 = mach_absolute_time();
  v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v20 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v20;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2247DB000, v20, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI): Starting\n", buf, 2u);
  }

  v21 = a1;
  v22 = **(a1 + 40);
  v23 = a8;
  v24 = RgbIrCalibration::Calibrate(v22, a2, a3, a4, v13, a6, a7 ^ 1u, *MEMORY[0x277CBED28], a8, Value, a10, a9, &v55, &v47, &v54, &v50);
  v25 = MEMORY[0x277D86220];
  v26 = v24;
  v27 = (mach_absolute_time() - v46) * info.numer / info.denom / 0xF4240;
  reportMutualInformationResults();
  v28 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v25)
  {
    v28 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v28;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v62 = v26;
    v63 = 1024;
    v64 = v27;
    _os_log_impl(&dword_2247DB000, v28, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI): status 0x%08X (%d msec)\n", buf, 0xEu);
  }

  if (!v26)
  {
    PearlIsf::PearlIsf(v43);
    Isf::setStepDetectionMode(v43, *(v21 + 48) != 0);
    IsfReadPearlHistory(buf, v44);
    kdebug_trace();
    if (v54 == 1)
    {
      v29 = PearlIsf::RunFromMiFullGrid(v43, buf, &v42, v47, v48, v49, v50);
    }

    else
    {
      v29 = PearlIsf::RunFromLmv(v43, buf, &v42, v47, v48, v49);
    }

    v30 = v29;
    kdebug_trace();
    v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v25)
    {
      v31 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v31;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *v59 = 67109120;
      v60 = v30;
      _os_log_impl(&dword_2247DB000, v31, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (ISF): status 0x%08X\n", v59, 8u);
    }

    reportIsfResults(v30, v42.i64, v54 == 1, v55, v23, v44);
    writeAnalyticsIsfThresholds(v44);
    v32 = fopen("/var/mobile/Library/ISP/Pearl/IsfHistory.bin.bak", "wb");
    if (v32)
    {
      fwrite(buf, 0xE38uLL, 1uLL, v32);
      fclose(v32);
      rename("/var/mobile/Library/ISP/Pearl/IsfHistory.bin.bak", "/var/mobile/Library/ISP/Pearl/IsfHistory.bin", v33);
    }

    v57[0] = @"MutualInformation-Result";
    v58[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
    v57[1] = @"MutualInformation-Stage";
    v58[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v54];
    v57[2] = @"MutualInformation-SelectedMode";
    v58[2] = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v55];
    v57[3] = @"MutualInformation-RotationX";
    LODWORD(v34) = v51;
    v58[3] = [MEMORY[0x277CCABB0] numberWithFloat:v34];
    v57[4] = @"MutualInformation-RotationY";
    LODWORD(v35) = v52;
    v58[4] = [MEMORY[0x277CCABB0] numberWithFloat:v35];
    v57[5] = @"MutualInformation-RotationZ";
    LODWORD(v36) = v53;
    v58[5] = [MEMORY[0x277CCABB0] numberWithFloat:v36];
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:6];
    v38 = *(*(v21 + 40) + 8);
    if (v38)
    {
    }

    v39 = [v37 mutableCopy];
    v40 = *(v21 + 40);
    *(v40 + 8) = v39;
    if (!v54)
    {
      [v39 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", v50), @"MutualInformation-Confidence"}];
      v40 = *(v21 + 40);
      v39 = *(v40 + 8);
    }

    [v39 setValue:RgbIrCalibration::GetDebugInfo(*v40) forKey:@"DebugInfo"];
    PearlIsf::~PearlIsf(v43);
  }

  return v26 == 0;
}

void sub_2249055EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  PearlIsf::~PearlIsf(va);
  _Unwind_Resume(a1);
}

FILE *IsfReadPearlHistory(_BYTE *a1, uint64_t a2)
{
  readAnalyticsIsfThresholds(a2, a2);
  result = fopen("/var/mobile/Library/ISP/Pearl/IsfHistory.bin", "rb");
  if (result)
  {
    v4 = result;
    fread(a1, 0xE38uLL, 1uLL, result);

    return fclose(v4);
  }

  else
  {
    *a1 = 3;
    a1[4] = 1;
  }

  return result;
}

BOOL H16ISPRgbIrRunner::getUpdatedPceCalib(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v2;
  __dst[1664] = *MEMORY[0x277D85DE8];
  if (*(v2 + 20) == 1 && (*(v2 + 21) & 1) == 0)
  {
    v6 = v3;
    IsfReadPearlHistory(v14, v13);
    memcpy(__dst, v6, 0x3400uLL);
    PearlIsf::PearlIsf(v12);
    Isf::setStepDetectionMode(v12, *(v4 + 48) != 0);
    if (PearlIsf::updatePCECalib(v12, v14, __dst))
    {
      v5 = 0;
    }

    else
    {
      memset(v21, 0, sizeof(v21));
      calcRotationAngle(&__dst[1069], v21);
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      v8 = MEMORY[0x277D86220];
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v16 = v21[0];
        v17 = 2048;
        v18 = v21[1];
        v19 = 2048;
        v20 = v21[2];
        _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI) finalization: final rotation: (%lf, %f, %f)\n", buf, 0x20u);
      }

      v9 = memcmp(v6, __dst, 0x3400uLL);
      v5 = v9 != 0;
      if (v9)
      {
        v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v8)
        {
          v10 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v10;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI) finalization: Updating PCECalib on disk\n", buf, 2u);
        }

        PCECalibration::save(__dst);
      }
    }

    memcpy(v6, __dst, 0x3400uLL);
    *(v4 + 21) = 1;
    PearlIsf::~PearlIsf(v12);
  }

  else
  {
    v5 = 0;
  }

  if (*(v4 + 22) == 1)
  {
    *(v4 + 20) = 0;
    *(v4 + 12) = 0;
  }

  return v5;
}

void sub_224905914(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PearlIsf::~PearlIsf(va);
  _Unwind_Resume(a1);
}

long double calcRotationAngle(const double (*a1)[3][3], double (*a2)[3])
{
  (*a2)[0] = atan2((*a1)[2][1], (*a1)[2][2]) * 1000.0;
  (*a2)[1] = atan2(-(*a1)[2][0], sqrt((*a1)[2][2] * (*a1)[2][2] + (*a1)[2][1] * (*a1)[2][1])) * 1000.0;
  result = atan2((*a1)[1][0], (*a1)[0][0]) * 1000.0;
  (*a2)[2] = result;
  return result;
}

CFDictionaryRef H16ISPRgbIrRunner::getReport(H16ISPRgbIrRunner *this)
{
  v1 = *(*(this + 5) + 8);
  if (!v1)
  {
    return 0;
  }

  Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v1);

  *(*(this + 5) + 8) = 0;
  return Copy;
}

BOOL H16ISPRgbIrRunner::validateSession(H16ISPRgbIrRunner *this, __CVBuffer *a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  if (a4)
  {
    Width = CVPixelBufferGetWidth(this);
    if (Width == CVPixelBufferGetHeight(this))
    {
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v6 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
      }

      result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      if (result)
      {
        H16ISPRgbIrRunner::validateSession();
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v8;
    }

    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      H16ISP::H16ISPPearlCalibrationNode::isSessionOK();
      return 0;
    }
  }

  return result;
}

BOOL H16ISPRgbIrRunner::validateFrame(H16ISPRgbIrRunner *this, __CVBuffer *a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  v4 = a4;
  if (a3)
  {
    v6 = [(__CFDictionary *)a3 valueForKey:*MEMORY[0x277CF4930]];
    if (v6)
    {
      if ([v6 intValue])
      {
        v7 = [(__CFDictionary *)a3 valueForKey:*MEMORY[0x277CF4BC8]];
        if (v7)
        {
          v8 = [v7 count];
          v10 = v8 == 0;
          result = v8 != 0;
          v10 = !v10 || v4 == 0;
          if (!v10)
          {
            v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
            {
              v11 = os_log_create("com.apple.isp", "general");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v11;
            }

            result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
            if (result)
            {
              H16ISPRgbIrRunner::validateFrame();
              return 0;
            }
          }
        }

        else
        {
          if (!v4)
          {
            return 0;
          }

          v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
          {
            v15 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
          }

          result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
          if (result)
          {
            H16ISPRgbIrRunner::validateFrame();
            return 0;
          }
        }
      }

      else
      {
        if (!v4)
        {
          return 0;
        }

        v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v14 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v14;
        }

        result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
        if (result)
        {
          H16ISPRgbIrRunner::validateFrame();
          return 0;
        }
      }
    }

    else
    {
      if (!v4)
      {
        return 0;
      }

      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v13 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v13;
      }

      result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (result)
      {
        H16ISPRgbIrRunner::validateFrame();
        return 0;
      }
    }
  }

  else
  {
    if (!a4)
    {
      return 0;
    }

    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v12;
    }

    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (result)
    {
      H16ISPRgbIrRunner::validateFrame();
      return 0;
    }
  }

  return result;
}

BOOL H16ISPRgbpRunner::validateSession(H16ISPRgbpRunner *this, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, const __CFDictionary *a5, const __CFDictionary *a6)
{
  if (a6)
  {
    Width = CVPixelBufferGetWidth(this);
    if (Width == CVPixelBufferGetHeight(this))
    {
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v8;
      }

      result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (result)
      {
        H16ISPRgbIrRunner::validateSession();
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v10;
    }

    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (result)
    {
      H16ISP::H16ISPPearlCalibrationNode::isSessionOK();
      return 0;
    }
  }

  return result;
}

uint64_t H16ISPRgbpRunner::validateFrame(H16ISPRgbpRunner *this, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, const __CFDictionary *a5, const __CFDictionary *a6)
{
  result = [MEMORY[0x277CED020] isColorFrameValid:this withMetadata:{a4, a5, a6}];
  if (result)
  {
    v9 = MEMORY[0x277CED020];

    return [v9 isPearlFrameValid:a3 withMetadata:a5];
  }

  return result;
}

void H16ISPRgbpRunner::H16ISPRgbpRunner(H16ISPRgbpRunner *this, void *a2)
{
  *(this + 4) = 0;
  *(this + 12) = 0x100000000;
  *(this + 5) = 0;
  *(this + 24) = 0;
  *(this + 4) = a2;
  *this = &unk_283814540;
  *(this + 12) = 0;
  *(this + 12) = 0;
  *(this + 7) = 0x3FF0000000000000;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  operator new();
}

void H16ISPRgbpRunner::~H16ISPRgbpRunner(H16ISPRgbpRunner *this)
{
  *this = &unk_283814540;
  v2 = *(this + 12);
  if (v2)
  {
    dispatch_sync(v2, &__block_literal_global_36);
    dispatch_release(*(this + 12));
    *(this + 12) = 0;
  }

  v3 = *(this + 9);
  if (v3)
  {
    CFRelease(v3);
    *(this + 9) = 0;
  }

  v4 = *(this + 5);
  if (v4)
  {
    RgbpRunnerInternal::~RgbpRunnerInternal(v4);
    MEMORY[0x22AA55B60]();
    *(this + 5) = 0;
  }
}

{
  H16ISPRgbpRunner::~H16ISPRgbpRunner(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISPRgbpRunner::setNormalizationParmas(uint64_t this, double a2, double a3)
{
  *(this + 56) = a2;
  *(this + 64) = a3;
  return this;
}

CFDictionaryRef H16ISPRgbpRunner::setColorGdcCoefficients(H16ISPRgbpRunner *this, CFDictionaryRef theDict)
{
  v4 = *(this + 9);
  if (v4)
  {
    CFRelease(v4);
    *(this + 9) = 0;
  }

  result = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], theDict);
  *(this + 9) = result;
  return result;
}

uint64_t H16ISPRgbpRunner::run(uint64_t a1, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, const __CFDictionary *a5, const __CFDictionary *a6, int a7, double *a8, unsigned __int16 a9)
{
  if (*(a1 + 9) == 1)
  {
    v10 = 3758097084;
    if (*(a1 + 8) == 1)
    {
      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v11 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v79 = 0;
        v12 = "Pearl Calibration (MI): Already running algorithm\n";
LABEL_37:
        _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, v12, v79, 2u);
        return v10;
      }
    }

    return v10;
  }

  v19 = 0;
  v20 = a9;
  v80 = 0u;
  v81 = 0u;
  memset(v79, 0, sizeof(v79));
  v21 = a8 + 1069;
  do
  {
    v22 = 0;
    v23 = v21;
    do
    {
      v24 = *v23++;
      v25 = v24;
      if (v19 >= 2uLL)
      {
        v26 = 2;
      }

      else
      {
        v26 = v19;
      }

      *&v79[4 * v26 + v22] = v25;
      v22 += 16;
    }

    while (v22 != 48);
    ++v19;
    v21 += 3;
  }

  while (v19 != 3);
  v27 = a8[1078];
  v28 = a8[1079];
  v29 = a8[1080];
  v30 = vzip1q_s32(*v79, v80);
  v31 = vtrn2q_s32(*v79, *&v79[16]);
  v31.i32[2] = v80.i32[1];
  v75 = vzip1q_s32(vzip2q_s32(*v79, v80), vdupq_laneq_s32(*&v79[16], 2));
  v76 = vzip1q_s32(v30, *&v79[16]);
  v73 = vnegq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v76, v27), v31, v28), v75, v29));
  v74 = vzip2q_s32(v30, vdupq_lane_s32(*&v79[16], 1));
  v32 = *(*(a1 + 40) + 16);
  if (!v32)
  {
    RgbpRunnerInternal::invalidate(*(a1 + 40));
    v50 = *(a1 + 40);
    *(v50 + 48) = 0;
    *v50 = 4;
    v51 = objc_alloc_init(MEMORY[0x277CED018]);
    [v51 setReportTelemetry:1];
    *(*(a1 + 40) + 16) = [objc_alloc(MEMORY[0x277CED010]) initForEngineType:**(a1 + 40) andExecutorParameters:v51];

    if ([*(*(a1 + 40) + 16) prepare])
    {
      goto LABEL_51;
    }

    v52 = objc_alloc(MEMORY[0x277CED068]);
    v53 = *(a1 + 80);
    *&v53 = v53;
    v54 = [v52 initWithPixelSize:*(a1 + 72) gdcModel:v53 cameraToPlatformTransform:{*MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48)}];
    *(*(a1 + 40) + 8) = v54;
    v55 = [v54 cameraCalibration];
    v56 = [v55 mutableCopy];
    Width = CVPixelBufferGetWidth(a4);
    Height = CVPixelBufferGetHeight(a4);
    [v56 referenceDimensions];
    v61 = v60 / (Height / Width);
    if (v59 < v61)
    {
      v61 = v59;
    }

    [v56 crop:{(v59 - v61) * 0.5, (v60 - Height / Width * v61) * 0.5}];
    [v56 scale:{Width, Height}];
    v62 = [*(*(a1 + 40) + 16) pipeline];
    v63 = [v62 createInterSessionDataWithDictionaryRepresentation:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithContentsOfFile:", @"/var/mobile/Library/ISP/Pearl/rgbpInterSession.plist"}];
    v64 = *(a1 + 40);
    *(v64 + 24) = v63;
    if (!v63)
    {
      v63 = [objc_msgSend(*(v64 + 16) "pipeline")];
      *(*(a1 + 40) + 24) = v63;
    }

    v65 = v63;
    v66 = [v55 copy];
    [*(*(a1 + 40) + 16) setColorCameraCalibration:v66];
    [*(*(a1 + 40) + 16) setPearlCameraCalibration:v56];

    v32 = *(*(a1 + 40) + 16);
    v20 = a9;
  }

  if ([objc_msgSend(v32 "pipeline")])
  {
    if (([objc_msgSend(*(*(a1 + 40) + 16) "pipeline")] & 1) == 0)
    {
      v10 = 3758097084;
      if (*(a1 + 8) == 1)
      {
        v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v11 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v11;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v79 = 0;
          v12 = "Pearl Calibration (MI): pearl frame not valid for algorithm\n";
          goto LABEL_37;
        }
      }

      return v10;
    }

    v33 = *(*(a1 + 40) + 8);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a2, 0);
    [v33 updateForFrameWithDimensions:a5 metadataDictionary:{WidthOfPlane, CVPixelBufferGetHeightOfPlane(a2, 0)}];
    v35 = [*(*(a1 + 40) + 8) cameraCalibration];
    v36 = [v35 mutableCopy];
    v37 = CVPixelBufferGetWidth(a4);
    v38 = CVPixelBufferGetHeight(a4);
    [v36 referenceDimensions];
    v41 = v40 / (v38 / v37);
    if (v39 < v41)
    {
      v41 = v39;
    }

    [v36 crop:{(v39 - v41) * 0.5, (v40 - v38 / v37 * v41) * 0.5}];
    [v36 scale:{v37, v38}];
    memset(v79, 0, 24);
    Value = CFDictionaryGetValue(a6, *MEMORY[0x277CF3F80]);
    CMTimeMakeFromDictionary(v79, Value);
    time = *v79;
    Seconds = CMTimeGetSeconds(&time);
    v44 = *(*(a1 + 40) + 16);
    v45 = *MEMORY[0x277D860B8];
    v46 = *(MEMORY[0x277D860B8] + 16);
    v47 = *(MEMORY[0x277D860B8] + 32);
    v48 = *(MEMORY[0x277D860B8] + 48);
    if (a7)
    {
      v49 = [v44 preprocessInputColorFrame:a2 pearlDepth:a4 pearlPoses:v36 pceCameraCalibration:v35 pearlCameraCalibrationTransform:*&v45 colorCameraCalibration:*&v46 timestamp:{*&v47, *&v48, *v76.i64, *v74.i64, *v75.i64, *v73.i64, *&Seconds}];
    }

    else
    {
      v49 = [v44 preprocessInputColorFrame:a2 pearlNormalizedDX:a4 pearlPoses:v36 disparityNormalizationMultiplier:v35 disparityNormalizationOffset:*&v45 pceCameraCalibration:*&v46 pearlCameraCalibrationTransform:*&v47 colorCameraCalibration:*&v48 timestamp:{*(a1 + 56), *(a1 + 64), *&v76, *&v74, *&v75, *&v73, *&Seconds}];
    }

    v67 = v49;

    if (!v67)
    {
      if (a2)
      {
        CVPixelBufferLockBaseAddress(a2, 1uLL);
        CVPixelBufferGetBaseAddressOfPlane(a2, 0);
        CVPixelBufferUnlockBaseAddress(a2, 1uLL);
        v68 = 0xFFFF;
      }

      else
      {
        v68 = 0;
      }

      if (a3)
      {
        CVPixelBufferLockBaseAddress(a3, 1uLL);
        CVPixelBufferGetBaseAddress(a3);
        v68 ^= 0xFFFFu;
        CVPixelBufferUnlockBaseAddress(a3, 1uLL);
      }

      if (a4)
      {
        CVPixelBufferLockBaseAddress(a4, 1uLL);
        CVPixelBufferGetBaseAddress(a4);
        v68 ^= 0xFFFFu;
        CVPixelBufferUnlockBaseAddress(a4, 1uLL);
      }

      if (v68 == v20)
      {
        if (*(a1 + 23) == 1)
        {
          dumpBuffers(a2, a5, a3, a6, a4);
        }

        *(a1 + 9) = 1;
        v69 = *(*(a1 + 40) + 16);
        v70 = *(*(a1 + 40) + 24);
        v71 = *(a1 + 96);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = ___ZN16H16ISPRgbpRunner3runEP10__CVBufferS1_S1_PK14__CFDictionaryS4_b26sCIspCmdChPearlCalibrationt_block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0l;
        block[4] = a1;
        dispatch_async(v71, block);
        return 0;
      }
    }

LABEL_51:
    v10 = 3758097084;
    ++*(a1 + 12);
    return v10;
  }

  v10 = 3758097084;
  if (*(a1 + 8) == 1)
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v79 = 0;
      v12 = "Pearl Calibration (MI): color frame not valid for algorithm\n";
      goto LABEL_37;
    }
  }

  return v10;
}

double RgbpRunnerInternal::invalidate(RgbpRunnerInternal *this)
{
  v2 = *(this + 2);
  if (v2)
  {
  }

  v3 = *(this + 1);
  if (v3)
  {
  }

  v4 = *(this + 4);
  if (v4)
  {
  }

  v5 = *(this + 3);
  if (v5)
  {
  }

  *(this + 48) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void ___ZN16H16ISPRgbpRunner3runEP10__CVBufferS1_S1_PK14__CFDictionaryS4_b26sCIspCmdChPearlCalibrationt_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(v1 + 40) + 32);
  if (v2)
  {
  }

  v3 = objc_opt_new();
  v4 = *(v1 + 40);
  *(v4 + 32) = v3;
  v5 = [*(v4 + 16) executePreprocessedInputsWithInterSessionData:*(v4 + 24) outResult:v3];
  *(v1 + 20) = v5 == 0;
  v6 = *(v1 + 40);
  *(v6 + 48) = 0;
  *(v1 + 9) = 0;
  ++*(v1 + 12);
  if (!v5)
  {
    v7 = [*(v6 + 32) executed];
    v6 = *(v1 + 40);
    if (v7)
    {
      v8 = *(v6 + 40);
      if (v8)
      {

        v6 = *(v1 + 40);
      }

      v9 = *(v6 + 32);
      *(v6 + 40) = v9;
      v10 = v9;
      v6 = *(v1 + 40);
    }
  }

  [objc_msgSend(*(v6 + 24) "persistenceData")];

  v11 = *(*(v1 + 40) + 24);
}

uint64_t H16ISPRgbpRunner::getUpdatedPceCalib(uint64_t a1, uint64_t a2)
{
  v40[3] = *MEMORY[0x277D85DE8];
  if (*(a1 + 88))
  {
    return 0;
  }

  v4 = *(a1 + 40);
  if (!v4[5])
  {
    v2 = 0;
    goto LABEL_30;
  }

  [v4[5] pearlToColorExtrinsics];
  v6 = 0;
  LOBYTE(v2) = 0;
  v9 = vzip1q_s32(v7, v8);
  v10 = vzip2q_s32(v7, v8);
  v12 = vdupq_laneq_s32(v11, 2);
  v13 = vtrn2q_s32(v7, v11);
  v13.i32[2] = v8.i32[1];
  v14 = vzip1q_s32(v9, v11);
  v15 = vzip1q_s32(v10, v12);
  v27 = v8.i32[0];
  v26 = v14.i64[0];
  v17 = vnegq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v16.f32[0]), v13, *v16.f32, 1), v15, v16, 2));
  v29 = v8.i32[1];
  v31 = v8.i32[2];
  v28 = v13.i64[0];
  v30 = v15.i64[0];
  v33 = v17.i32[2];
  v32 = v17.i64[0];
  v18 = a2 + 8552;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v20 = (&v26 + 2 * i);
      if (v2)
      {
        v21 = *(v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3)));
LABEL_9:
        v2 = 1;
        goto LABEL_10;
      }

      v21 = *(v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3)));
      if (*(v18 + 8 * i) != v21)
      {
        goto LABEL_9;
      }

      v2 = 0;
LABEL_10:
      *(v18 + 8 * i) = v21;
    }

    ++v6;
    v18 += 24;
  }

  while (v6 != 3);
  memset(v40, 0, 24);
  calcRotationAngle((a2 + 8552), v40);
  v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v23 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v22 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v22;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v35 = v40[0];
    v36 = 2048;
    v37 = v40[1];
    v38 = 2048;
    v39 = v40[2];
    _os_log_impl(&dword_2247DB000, v22, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI) finalization: final rotation: (%lf, %f, %f)\n", buf, 0x20u);
  }

  v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (v2)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v23)
    {
      v24 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v24;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, v24, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI) finalization: Updating PCECalib on disk\n", buf, 2u);
    }

    PCECalibration::save(a2);
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v23)
    {
      v24 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v24;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, v24, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI) finalization: No changes to PCECalib\n", buf, 2u);
    }
  }

  *(a1 + 21) = 1;

  v4 = *(a1 + 40);
  v4[5] = 0;
LABEL_30:
  RgbpRunnerInternal::invalidate(v4);
  if (*(a1 + 22) == 1)
  {
    *(a1 + 20) = 0;
    *(a1 + 12) = 0;
  }

  return v2;
}

uint64_t H16ISPRgbpRunner::getReport(H16ISPRgbpRunner *this)
{
  v2 = *(this + 5);
  v3 = *(v2 + 32);
  if (!v3 || (*(v2 + 48) & 1) != 0)
  {
    return 0;
  }

  result = [objc_msgSend(v3 "dictionaryRepresentation")];
  *(*(this + 5) + 48) = 1;
  return result;
}

void dumpMetadata(const __CFDictionary *a1, const char *a2, const char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    snprintf(__str, 0x400uLL, "%s%s-metadata.plist", a2, a3);
    v4 = *MEMORY[0x277CBECE8];
    SystemEncoding = CFStringGetSystemEncoding();
    v6 = CFStringCreateWithCString(v4, __str, SystemEncoding);
    v7 = CFURLCreateWithFileSystemPath(v4, v6, kCFURLPOSIXPathStyle, 0);
    v8 = CFWriteStreamCreateWithFile(v4, v7);
    CFWriteStreamOpen(v8);
    CFPropertyListWrite(a1, v8, kCFPropertyListXMLFormat_v1_0, 0, 0);
    CFWriteStreamClose(v8);
    CFRelease(v8);
    CFRelease(v7);
    CFRelease(v6);
  }
}

FILE *dumpSinglePlaneBuffer(FILE *result, const char *a2, const char *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v5 = result;
    PixelFormatType = CVPixelBufferGetPixelFormatType(result);
    v12[0] = HIBYTE(PixelFormatType);
    v12[1] = BYTE2(PixelFormatType);
    v12[2] = BYTE1(PixelFormatType);
    v12[3] = PixelFormatType;
    v12[4] = 0;
    BytesPerRow = CVPixelBufferGetBytesPerRow(v5);
    Width = CVPixelBufferGetWidth(v5);
    Height = CVPixelBufferGetHeight(v5);
    snprintf(__str, 0x400uLL, "%s%s.%lux%lu.%lu.%s.bin", a2, a3, Width, Height, BytesPerRow, v12);
    result = fopen(__str, "wb");
    if (result)
    {
      v10 = result;
      CVPixelBufferLockBaseAddress(v5, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(v5);
      fwrite(BaseAddress, Height * BytesPerRow, 1uLL, v10);
      fclose(v10);
      return CVPixelBufferUnlockBaseAddress(v5, 0);
    }
  }

  return result;
}

void RgbpRunnerInternal::~RgbpRunnerInternal(RgbpRunnerInternal *this)
{
  RgbpRunnerInternal::invalidate(this);
  v2 = *(this + 5);
  if (v2)
  {
  }
}

void GeomUtils::FindSpots(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  v19 = 1;
  v20 = 0;
  v17 = &unk_283812C88;
  v15 = 1;
  v16 = 0;
  v13 = &unk_283812C88;
  v14 = 0;
  v11 = 1;
  v12 = 0;
  v9 = &unk_283812C88;
  v10 = 0;
  v7 = 1;
  v8 = 0;
  v5 = &unk_283812C88;
  v6 = 0;
  v3[6] = 1;
  v4 = 0;
  v3[4] = &unk_283812C88;
  v3[5] = 0;
  Matrix<double>::Matrix(v3, a3, 0, -1);
}

void sub_2249080A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  Matrix<double>::~Matrix(&a15);
  Matrix<double>::~Matrix(&a19);
  Matrix<double>::~Matrix(&a23);
  Matrix<double>::~Matrix(&a27);
  Matrix<double>::~Matrix(&a31);
  Matrix<double>::~Matrix(v71 - 232);
  Matrix<double>::~Matrix(v71 - 200);
  Matrix<double>::~Matrix(&a39);
  Matrix<double>::~Matrix(&a59);
  Matrix<double>::~Matrix(&a63);
  Matrix<double>::~Matrix(&a67);
  Matrix<double>::~Matrix(&a71);
  Matrix<double>::~Matrix(&STACK[0x210]);
  _Unwind_Resume(a1);
}

void GeomUtils::ImTxTy2AlphaBeta<double>(int a1, uint64_t a2, int a3, int a4, int a5, Algo *this, Algo *a7, int a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15)
{
  v16 = this;
  Algo::LinearSpace(this, a10, a11, &v40);
  Matrix<double>::Resize(a14, v42, v43);
  memcpy(*(a14 + 8), v41, 8 * *(a14 + 16) * *(a14 + 20));
  Matrix<double>::~Matrix(&v40);
  Algo::LinearSpace(a7, a12, a13, &v40);
  Matrix<double>::Resize(a15, v42, v43);
  memcpy(*(a15 + 8), v41, 8 * *(a15 + 16) * *(a15 + 20));
  Matrix<double>::~Matrix(&v40);
  Matrix<double>::Matrix(v39, a7, v16);
  Matrix<double>::Matrix(v38, a7, v16);
  v34[0] = &unk_283812C58;
  v20 = *(a14 + 8);
  v21 = *(a14 + 16);
  v22 = *(a14 + 20);
  v40 = &unk_283812C58;
  v41 = v20;
  v42 = v21;
  v43 = v22;
  v44 = 0;
  v34[1] = v20;
  v35 = v21;
  v36 = v22;
  v37 = 0;
  v23 = Matrix<double>::~Matrix(&v40);
  v30[0] = &unk_283812C58;
  v24 = *(a15 + 8);
  v25 = *(a15 + 16);
  v26 = *(a15 + 20);
  v40 = &unk_283812C58;
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v44 = 0;
  v30[1] = v24;
  v31 = v25;
  v32 = v26;
  v33 = 0;
  Matrix<double>::~Matrix(v23);
  Algo::MeshGrid<double>(v34, v30, v39, v38);
  LODWORD(a7) = a7 * v16;
  Matrix<double>::~Matrix(v30);
  Matrix<double>::~Matrix(v34);
  Matrix<double>::Matrix(&v29, 1, a7);
  v29 = &unk_283812C88;
  Matrix<double>::Matrix(&v28, 1, a7);
  v28 = &unk_283812C88;
  Matrix<double>::Matrix(v27, a2, 0, -1);
}

void sub_224908750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  Matrix<double>::~Matrix(&a10);
  Matrix<double>::~Matrix(v38 - 152);
  Matrix<double>::~Matrix(&a34);
  Matrix<double>::~Matrix(&a38);
  Matrix<double>::~Matrix(v38 - 216);
  Matrix<double>::~Matrix(v38 - 184);
  _Unwind_Resume(a1);
}

void sub_224909224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  Matrix<double>::~Matrix(v71 - 128);
  Matrix<double>::~Matrix(&a14);
  Matrix<double>::~Matrix(&a18);
  Matrix<double>::~Matrix(&a22);
  Matrix<double>::~Matrix(&a26);
  Matrix<double>::~Matrix(&a30);
  Matrix<double>::~Matrix(&a34);
  Matrix<double>::~Matrix(&a38);
  Matrix<double>::~Matrix(&a42);
  Matrix<double>::~Matrix(&a46);
  Matrix<double>::~Matrix(&a51);
  Matrix<double>::~Matrix(&a55);
  Matrix<double>::~Matrix(&a59);
  Matrix<double>::~Matrix(&a63);
  Matrix<double>::~Matrix(&a67);
  Matrix<double>::~Matrix(&a71);
  Matrix<double>::~Matrix(v71 - 192);
  Matrix<double>::~Matrix(v71 - 160);
  _Unwind_Resume(a1);
}

uint64_t GeomUtils::ApproxPolyDP(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = a4 * a4;
  v11 = *(a1 + 20);
  v12 = 0.0;
  while (1)
  {
    v13 = v8;
    if (v11)
    {
      v14 = 0;
      v15 = (*(a1 + 8) + 8 * v8);
      v16 = *v15;
      v17 = v15[v11];
      v18 = *(a1 + 8);
      v8 = v13;
      do
      {
        v19 = (v18[v11] - v17) * (v18[v11] - v17);
        if (v19 + (*v18 - v16) * (*v18 - v16) > v12)
        {
          v12 = v19 + (*v18 - v16) * (*v18 - v16);
          v8 = v14;
        }

        ++v18;
        ++v14;
      }

      while (v11 != v14);
    }

    if (v13 == v8)
    {
      break;
    }

    ++v9;
    v7 = v13;
    if (v9 == 3)
    {
      goto LABEL_11;
    }
  }

  v8 = v13;
  v13 = v7;
LABEL_11:
  if (v13 <= v8)
  {
    v20 = v8;
  }

  else
  {
    v20 = v13;
  }

  if (v13 >= v8)
  {
    v21 = v8;
  }

  else
  {
    v21 = v13;
  }

  if (v12 <= v10)
  {
    result = Matrix<double>::Resize(a3, 2, 1);
    **(a3 + 8) = *(*(a1 + 8) + 8 * v21);
    *(*(a3 + 8) + 8) = *(*(a1 + 8) + 8 * (v21 + v11));
    return result;
  }

  v22 = v20 - v21 + 1;
  if (a2)
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  v24 = v11 - v22 + v23;
  Matrix<double>::Matrix(&v57, 2, v20 - v21 + 1);
  v57 = &unk_283813CF8;
  Matrix<double>::Matrix(&v55, 2, v24);
  v48 = a2;
  v55 = &unk_283813CF8;
  v25 = *(a1 + 8);
  v26 = __dst;
  memcpy(__dst, &v25[8 * v21], 8 * (v20 - v21 + 1));
  memcpy(&v26[v20 - v21 + 1], &v25[8 * v21 + 8 * v11], 8 * (v20 - v21 + 1));
  v27 = v56;
  memcpy(v56, &v25[8 * v20], 8 * (v11 - v20));
  memcpy(&v27[8 * v24], &v25[8 * v20 + 8 * v11], 8 * (v11 - v20));
  memcpy(&v27[8 * v11 + -8 * v20], v25, 8 * (v21 + 1));
  if (v48)
  {
    v28 = 8 * (v21 + 1);
  }

  else
  {
    v28 = 8 * v21;
  }

  memcpy(&v27[8 * v11 + 8 * v24 + -8 * v20], &v25[8 * v11], v28);
  __p = 0;
  v53 = 0;
  v54 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v29 = GeomUtils::ApproxPolyDP(&v57, &__p, v10);
  v30 = GeomUtils::ApproxPolyDP(&v55, &v49, v10);
  if (v48)
  {
    v31 = -2;
  }

  else
  {
    v31 = -1;
  }

  v32 = v29 + v31 + v30;
  Matrix<double>::Resize(a3, 2, v32);
  v33 = *(a3 + 8);
  v34 = __p;
  v35 = v53 & 0x3F;
  if (v53 > 0x3F || (v53 & 0x3F) != 0)
  {
    v36 = 0;
    v37 = __p + 8 * (v53 >> 6);
    do
    {
      if ((*v34 >> v36))
      {
        *v33 = *v26;
        v33[v32] = v26[v22];
        ++v33;
      }

      v34 += 8 * (v36 == 63);
      if (v36 == 63)
      {
        v36 = 0;
      }

      else
      {
        ++v36;
      }

      ++v26;
    }

    while (v34 != v37 || v36 != v35);
  }

  v39 = v49;
  v40 = &v49[8 * (v50 >> 6)];
  v41 = v50 & 0x3F;
  if (v48)
  {
    if ((v50 & 0x3F) == 0)
    {
      v40 -= 8;
      v41 = 63;
      goto LABEL_48;
    }

    --v41;
  }

  if (v50 > 0x3F || v41 != 1)
  {
LABEL_48:
    v43 = v27 + 8;
    v44 = 1;
    v45 = v49;
    do
    {
      if ((*v45 >> v44))
      {
        *v33 = *v43;
        v33[v32] = v43[v24];
        ++v33;
      }

      v45 += 8 * (v44 == 63);
      if (v44 == 63)
      {
        v44 = 0;
      }

      else
      {
        ++v44;
      }

      ++v43;
    }

    while (v45 != v40 || v44 != v41);
  }

  if (v39)
  {
    operator delete(v39);
  }

  if (__p)
  {
    operator delete(__p);
  }

  Matrix<double>::~Matrix(&v55);
  return Matrix<double>::~Matrix(&v57);
}

void sub_224909748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  Matrix<double>::~Matrix(&a18);
  Matrix<double>::~Matrix(&a22);
  _Unwind_Resume(a1);
}

unint64_t GeomUtils::ApproxPolyDP(uint64_t a1, void *a2, double a3)
{
  v6 = *(a1 + 20);
  v30 = 0;
  v31 = 0;
  v32 = 0;
  std::vector<std::pair<unsigned int,unsigned int>>::reserve(&v30, v6);
  LODWORD(v29) = 0;
  HIDWORD(v29) = v6 - 1;
  std::vector<std::pair<unsigned int,unsigned int>>::push_back[abi:ne200100](&v30, &v29);
  std::vector<BOOL>::resize(a2, v6, 0);
  if (a2[1])
  {
    v7 = 0;
    v8 = *a2;
    v9 = *a2;
    do
    {
      *v9 |= 1 << v7;
      v9 += v7 == 63;
      if (v7 == 63)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }
    }

    while (v9 != &v8[a2[1] >> 6] || v7 != (a2[1] & 0x3F));
  }

  v11 = v30;
  v12 = v31;
  if (v31 != v30)
  {
    v13 = v6;
    while (1)
    {
      v14 = *(v12 - 2);
      v15 = *(v12 - 1);
      v12 -= 2;
      v31 = v12;
      v16 = *(a1 + 8);
      v17 = *(v16 + 8 * v14);
      v18 = *(v16 + 8 * (v14 + v6));
      v19 = *(v16 + 8 * v15) - v17;
      v20 = *(v16 + 8 * (v15 + v6)) - v18;
      v21 = (v14 + 1);
      if (v21 < v15)
      {
        break;
      }

      v25 = v15;
      if (0.0 / (v20 * v20 + v19 * v19) > a3)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (v12 == v11)
      {
        if (v11)
        {
          goto LABEL_27;
        }

        return v13;
      }
    }

    v22 = (v16 + 8 * v21);
    v23 = 0.0;
    v24 = v14 + 1;
    v25 = v15;
    do
    {
      v26 = fabs((*v22 - v17) * v20 - (v22[v6] - v18) * v19);
      if (v26 > v23)
      {
        v25 = v24;
        v23 = v26;
      }

      ++v24;
      ++v22;
    }

    while (v15 != v24);
    if (v23 * v23 / (v20 * v20 + v19 * v19) <= a3)
    {
      v13 = (v13 + v14 - v15 + 1);
      v27 = ~v14 + v15;
      do
      {
        if (a2[1] <= v21)
        {
          std::vector<ImageUtils::Blob>::__throw_out_of_range[abi:ne200100]();
        }

        *(*a2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v21);
        ++v21;
        --v27;
      }

      while (v27);
      goto LABEL_25;
    }

LABEL_24:
    v29 = __PAIR64__(v25, v14);
    std::vector<std::pair<unsigned int,unsigned int>>::push_back[abi:ne200100](&v30, &v29);
    v29 = __PAIR64__(v15, v25);
    std::vector<std::pair<unsigned int,unsigned int>>::push_back[abi:ne200100](&v30, &v29);
    v11 = v30;
    v12 = v31;
    goto LABEL_25;
  }

  v13 = v6;
  if (v30)
  {
LABEL_27:
    v31 = v11;
    operator delete(v11);
  }

  return v13;
}

void sub_2249099D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void GeomUtils::AlgebricCameraCalibration(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1] - *a1;
  v4 = *a2;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if ((v3 >> 5))
  {
    v22 = &unk_283812C58;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    GeomUtils::ComputeHomography(v4, v2);
  }

  v13 = 0;
  v14 = 0;
  v12 = 0;
  std::vector<Matrix<double>>::__init_with_size[abi:ne200100]<Matrix<double>*,Matrix<double>*>(&v12, 0, 0, 0);
  v5 = v12;
  v6 = v13 - v12;
  v7 = (v13 - v12) >> 5;
  Matrix<double>::Matrix(&v22, 2 * v7, 4);
  if (v7)
  {
    v8 = (v5 + 8);
    v9 = (v23 + 16);
    v10 = (v23 + 16 + (v6 & 0x7FFFFFFE0));
    do
    {
      v11 = *v8;
      v8 += 4;
      *(v9 - 2) = v11[3] * v11[4] + *v11 * v11[1];
      *(v9 - 1) = v11[6] * v11[1] + *v11 * v11[7];
      *v9 = v11[6] * v11[4] + v11[3] * v11[7];
      v9[1] = v11[6] * v11[7];
      *(v10 - 2) = v11[3] * v11[3] + *v11 * *v11 - v11[1] * v11[1] - v11[4] * v11[4];
      *(v10 - 1) = v11[1] * -2.0 * v11[7] + (*v11 + *v11) * v11[6];
      *v10 = v11[4] * -2.0 * v11[7] + (v11[3] + v11[3]) * v11[6];
      v10[1] = v11[6] * v11[6] - v11[7] * v11[7];
      v9 += 4;
      v10 += 4;
      LODWORD(v7) = v7 - 1;
    }

    while (v7);
  }

  v20 = 1;
  v21 = 0;
  v18 = &unk_283812C88;
  v19 = 0;
  Matrix<double>::Svd0LowestSingularVector(&v22);
}

void sub_224909E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void **a28)
{
  Matrix<double>::~Matrix(&a28);
  Matrix<double>::~Matrix(v28 - 136);
  a28 = &a18;
  std::vector<Matrix<double>>::__destroy_vector::operator()[abi:ne200100](&a28);
  a28 = &a25;
  std::vector<Matrix<double>>::__destroy_vector::operator()[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

void GeomUtils::ComputeHomography(uint64_t a1, uint64_t a2)
{
  GeomUtils::ToHomg(a2, v4);
  GeomUtils::ToHomg(a1, v3);
  GeomUtils::ComputeHomography(v3, v4);
}

{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 20);
  Matrix<double>::Row(a2, 0, v37);
  Matrix<double>::Row(a2, 1, v33);
  v42 = 0.0;
  vDSPMeanv<double>(v38, 1, &v42, v40 * v39);
  v5 = v42;
  v42 = 0.0;
  vDSPMeanv<double>(v34, 1, &v42, v36 * v35);
  v6 = v42;
  MatrixNxPts<1u,double>::operator-(v37, v41, v5);
  MatrixNxPts<1u,double>::Abs(v41, &v42);
  v31[0] = 0.0;
  vDSPMeanv<double>(v43, 1, v31, HIDWORD(v44) * LODWORD(v44));
  v7 = v31[0];
  Matrix<double>::~Matrix(&v42);
  Matrix<double>::~Matrix(v41);
  MatrixNxPts<1u,double>::operator-(v33, v41, v6);
  MatrixNxPts<1u,double>::Abs(v41, &v42);
  v31[0] = 0.0;
  vDSPMeanv<double>(v43, 1, v31, HIDWORD(v44) * LODWORD(v44));
  v8 = v31[0];
  Matrix<double>::~Matrix(&v42);
  Matrix<double>::~Matrix(v41);
  v42 = 1.0 / v7;
  v43 = 0;
  v44 = -v5 / v7;
  v45 = 0;
  v46 = 1.0 / v8;
  v47 = -v6 / v8;
  v48 = 0;
  v49 = 0;
  v50 = 0x3FF0000000000000;
  *v41 = v7;
  v41[1] = 0;
  *&v41[2] = v5;
  v41[3] = 0;
  *&v41[4] = v8;
  *&v41[5] = v6;
  v41[6] = 0;
  v41[7] = 0;
  v41[8] = 0x3FF0000000000000;
  *&v31[0] = &unk_283812C58;
  *&v31[1] = &v42;
  *&v31[2] = 0x300000003;
  v32 = 0;
  v27 = &unk_283812C58;
  v28 = v41;
  v29 = 0x300000003;
  v30 = 0;
  Matrix<double>::operator*(v31, a2, v18);
  v9 = __dst;
  v26 = v21;
  __dst = 0;
  v21 = 0;
  v22 = &unk_283812E40;
  v23 = v9;
  v24 = 3;
  v25 = v20;
  Matrix<double>::~Matrix(v18);
  Matrix<double>::Matrix(v18, 2 * v4, 9);
  if (v4)
  {
    v10 = v23;
    v11 = *(a1 + 8);
    v12 = v4;
    v13 = __dst;
    do
    {
      v14 = *v11;
      v15 = v11[v4];
      v16 = *v10;
      v17 = v10[v4];
      *v13 = *v11;
      v13[1] = v15;
      v13[2] = 1.0;
      v13[3] = 0.0;
      v13[4] = 0.0;
      v13[5] = 0.0;
      v13[6] = -(v16 * v14);
      v13[7] = -(v16 * v15);
      v13[8] = -v16;
      v13[10] = 0.0;
      v13[11] = 0.0;
      v13[9] = 0.0;
      v13[12] = v14;
      v13[13] = v15;
      v13[14] = 1.0;
      v13[15] = -(v17 * v14);
      v13[16] = -(v17 * v15);
      v13[17] = -v17;
      v13 += 18;
      ++v11;
      ++v10;
      --v12;
    }

    while (v12);
    if (v4 > 4)
    {
      Matrix<double>::Transpose(v18);
    }
  }

  Matrix<double>::Svd0LowestSingularVector(v18);
}

void sub_224909EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  Matrix<double>::~Matrix(&a9);
  Matrix<double>::~Matrix(&a13);
  _Unwind_Resume(a1);
}

void std::vector<Matrix<double>>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  if (a1[1] < a1[2])
  {
    Matrix<double>::Matrix(a1[1], a2, 0, -1);
  }

  std::vector<Matrix<double>>::__emplace_back_slow_path<Matrix<double> const&>(a1, a2);
}

void sub_22490A470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  Matrix<double>::~Matrix(&a9);
  Matrix<double>::~Matrix(v25 - 80);
  Matrix<double>::~Matrix(&a13);
  Matrix<double>::~Matrix(&a17);
  Matrix<double>::~Matrix(&a21);
  Matrix<double>::~Matrix(&a25);
  Matrix<double>::~Matrix(v25 - 144);
  Matrix<double>::~Matrix(v25 - 112);
  _Unwind_Resume(a1);
}

uint64_t GeomUtils::DistortRadialLiteInternal(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, int a6, double a7)
{
  if (*(a1 + 16) != 2)
  {
    GeomUtils::DistortRadialLiteInternal();
  }

  v14 = *(a2 + 32);
  if (a5)
  {
    v15 = *(a2 + 32);
  }

  else
  {
    v15 = *(a2 + 40);
  }

  if (a5)
  {
    v14 = *(a2 + 40);
  }

  v16 = *(a2 + 24);
  v86[1] = v14;
  v87 = 1;
  v88 = v16;
  v89 = 0;
  v86[0] = &unk_283812C88;
  v83 = 1;
  v84 = v16;
  v85 = 0;
  v82[0] = &unk_283812C88;
  v82[1] = v15;
  Matrix<double>::Matrix(&v78, 1, *(a1 + 20));
  v78 = &unk_283812C88;
  Matrix<double>::Matrix(v77, 1, *(a1 + 20));
  v77[0] = &unk_283812C88;
  v17 = v81;
  Matrix<double>::Matrix(v73, 2, *(a1 + 20));
  v18 = *(a1 + 20);
  if (a5)
  {
    if (v18)
    {
      v19 = *(a1 + 16);
      if (v19)
      {
        if (v75)
        {
          v20 = 0;
          v22 = v19 == 1 || v75 == 1;
          v23 = 8 * v76;
          v24 = 8 * v18;
          while (v23 != v20)
          {
            *(v74 + v20) = *(*(a1 + 8) + v20);
            if (v22)
            {
              if (v19 == 1)
              {
                v57 = 125;
              }

              else
              {
                v57 = 119;
              }

              __assert_rtn("operator()", "Matrix.hpp", v57, "row < m_rows && col < m_cols");
            }

            *(v74 + v23 + v20) = *(*(a1 + 8) + v24 + v20);
            v20 += 8;
            if (v24 == v20)
            {
              goto LABEL_35;
            }
          }
        }

        v59 = 119;
      }

      else
      {
        v59 = 125;
      }

      __assert_rtn("operator()", "Matrix.hpp", v59, "row < m_rows && col < m_cols");
    }
  }

  else if (v18)
  {
    v25 = *(a1 + 16);
    if (v25)
    {
      if (v75)
      {
        v26 = 0;
        v28 = v25 == 1 || v75 == 1;
        v29 = 8 * v76;
        v30 = 8 * v18;
        while (v29 != v26)
        {
          *(v74 + v26) = *(*(a1 + 8) + v26) - *(a2 + 216) * *a2;
          if (v28)
          {
            if (v25 == 1)
            {
              v58 = 125;
            }

            else
            {
              v58 = 119;
            }

            __assert_rtn("operator()", "Matrix.hpp", v58, "row < m_rows && col < m_cols");
          }

          *(v74 + v29 + v26) = *(*(a1 + 8) + v30 + v26) - *(a2 + 224) * *a2;
          v26 += 8;
          if (v30 == v26)
          {
            goto LABEL_35;
          }
        }
      }

      v60 = 119;
    }

    else
    {
      v60 = 125;
    }

    __assert_rtn("operator()", "Matrix.hpp", v60, "row < m_rows && col < m_cols");
  }

LABEL_35:
  Matrix<double>::DotMult<double>(v73, v73, v69);
  if (a4)
  {
    if (v17 >= 1)
    {
      v31 = v71;
      if (v71)
      {
        v32 = 0;
        v33 = v72;
        v34 = v80;
        v35 = 8 * v72;
        while (v33 && v31 != 1 && v34 && v32 < v81)
        {
          v36 = sqrt(*(v70 + 8 * v32) + *(v70 + v35));
          if (v36 >= a7)
          {
            v36 = a7;
          }

          *(v79 + 8 * v32++) = v36;
          --v33;
          v35 += 8;
          if (v17 == v32)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_84;
    }
  }

  else if (v17 >= 1)
  {
    v37 = v71;
    if (v71)
    {
      v38 = 0;
      v39 = v72;
      v40 = v80;
      v41 = 8 * v72;
      while (v39 && v37 != 1 && v40 && v38 < v81)
      {
        *(v79 + 8 * v38) = sqrt(*(v70 + 8 * v38) + *(v70 + v41));
        ++v38;
        --v39;
        v41 += 8;
        if (v17 == v38)
        {
          goto LABEL_55;
        }
      }
    }

LABEL_84:
    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

LABEL_55:
  if (a6)
  {
    Interp1SortedWithExtrap<double,LinearInterpolator<double>>(v86, v82, &v78, v77);
  }

  else
  {
    Algo::Interp1WithExtrap<double>(v86, v82, &v78, 1, v77, 0);
  }

  MatrixNxPts<1u,double>::DotDiv(v77, &v78, &v61);
  v65 = &unk_283812C58;
  v66 = v62;
  v67 = v63;
  v68 = v64;
  v62 = 0;
  v64 = 0;
  Matrix<double>::~Matrix(&v61);
  v42 = v81;
  if (v81 >= 1)
  {
    if (!v80)
    {
      goto LABEL_83;
    }

    v43 = 0;
    v44 = v67;
    do
    {
      if (*(v79 + 8 * v43) == 0.0)
      {
        if (!v44 || v43 >= HIDWORD(v67))
        {
          goto LABEL_83;
        }

        *(v66 + 8 * v43) = 0x3FF0000000000000;
      }

      ++v43;
    }

    while (v42 != v43);
    v45 = v75;
    if (!v75)
    {
LABEL_83:
      __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
    }

    v46 = 0;
    v47 = v76;
    v48 = v67;
    v49 = 8 * v76;
    do
    {
      if (v47 == v46)
      {
        goto LABEL_83;
      }

      if (!v48)
      {
        goto LABEL_83;
      }

      if (v46 >= HIDWORD(v67))
      {
        goto LABEL_83;
      }

      v50 = *(a3 + 16);
      if (!v50)
      {
        goto LABEL_83;
      }

      v51 = *(a3 + 20);
      if (v46 >= v51)
      {
        goto LABEL_83;
      }

      *(*(a3 + 8) + 8 * v46) = *(v74 + 8 * v46) * *(v66 + 8 * v46);
      if (v45 == 1 || v50 == 1)
      {
        goto LABEL_83;
      }

      *(*(a3 + 8) + 8 * v51 + 8 * v46) = *(v66 + 8 * v46) * *(v74 + v49 + 8 * v46);
      ++v46;
    }

    while (v42 != v46);
    if (a5)
    {
      v52 = *(a3 + 16);
      if (v52)
      {
        v53 = 0;
        v54 = 8 * *(a3 + 20);
        v55 = 8 * v42;
        while (v54 != v53)
        {
          *(*(a3 + 8) + v53) = *(*(a3 + 8) + v53) + *(a2 + 216) * *a2;
          if (v52 == 1)
          {
            break;
          }

          *(*(a3 + 8) + v54 + v53) = *(*(a3 + 8) + v54 + v53) + *(a2 + 224) * *a2;
          v53 += 8;
          if (v55 == v53)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_83;
    }
  }

LABEL_82:
  Matrix<double>::~Matrix(&v65);
  Matrix<double>::~Matrix(v69);
  Matrix<double>::~Matrix(v73);
  Matrix<double>::~Matrix(v77);
  Matrix<double>::~Matrix(&v78);
  Matrix<double>::~Matrix(v82);
  Matrix<double>::~Matrix(v86);
  return 0;
}

void sub_22490AB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  Matrix<double>::~Matrix(&a17);
  Matrix<double>::~Matrix(&a21);
  Matrix<double>::~Matrix(&a25);
  Matrix<double>::~Matrix(&a29);
  Matrix<double>::~Matrix(v29 - 144);
  Matrix<double>::~Matrix(v29 - 112);
  _Unwind_Resume(a1);
}

uint64_t Matrix<double>::operator()(uint64_t a1, _DWORD *a2, unsigned int *a3)
{
  if (*a2 >= *(a1 + 16) || (v3 = *a3, v4 = *(a1 + 20), v3 >= v4))
  {
    MatrixNxPts<3u,double>::CloneColumn();
  }

  return *(a1 + 8) + 8 * v3 + 8 * v4 * *a2;
}

void GeomUtils::ToHomg(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 20);
  v4 = Matrix<double>::Matrix(a2, 3, *(a1 + 20));
  *v4 = &unk_283812E40;
  v5 = v4[1];
  v6 = *(a1 + 8);
  v7 = 8 * (2 * v3);
  memcpy(v5, v6, v7);
  if (v3)
  {
    v8 = v5 + 8 * v3 + v7;
    if (v8 <= v7 + v5 + 8)
    {
      v8 = v7 + v5 + 8;
    }

    memset_pattern16((v5 + 8 * (2 * v3)), &unk_2249D2110, ((v8 + ~v5 - v7) & 0xFFFFFFFFFFFFFFF8) + 8);
  }
}

double GeomUtils::ToNonHomg@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 20);
  v4 = Matrix<double>::Matrix(a2, 2, v3);
  *v4 = &unk_283813CF8;
  if (v3)
  {
    v6 = *(a1 + 8);
    v7 = v4[1];
    v8 = 2 * v3;
    v9 = v3;
    do
    {
      *v7 = *v6 / v6[v8];
      result = v6[v3] / v6[v8];
      v7[v3] = result;
      ++v7;
      ++v6;
      --v9;
    }

    while (v9);
  }

  return result;
}

{
  v3 = *(a1 + 20);
  v4 = Matrix<double>::Matrix(a2, 2, v3);
  *v4 = &unk_283813CF8;
  if (v3)
  {
    v6 = *(a1 + 8);
    v7 = v4[1];
    v8 = 2 * v3;
    v9 = v3;
    do
    {
      *v7 = *v6 / v6[v8];
      result = v6[v3] / v6[v8];
      v7[v3] = result;
      ++v7;
      ++v6;
      --v9;
    }

    while (v9);
  }

  return result;
}

void sub_22490B2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  Matrix<double>::~Matrix(&a18);
  Matrix<double>::~Matrix(&a14);
  Matrix<double>::~Matrix(&a22);
  Matrix<double>::~Matrix(&a26);
  Matrix<double>::~Matrix(&a30);
  Matrix<double>::~Matrix(&a34);
  Matrix<double>::~Matrix(&a38);
  Matrix<double>::~Matrix(&a42);
  _Unwind_Resume(a1);
}

uint64_t MatrixNxPts<1u,double>::Abs@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Matrix<double>::Matrix(&v7, *(a1 + 16), *(a1 + 20));
  vDSPVabs<double>(*(a1 + 8), 1, v8, 1, *(a1 + 20) * *(a1 + 16));
  v4 = v8;
  v5 = v9;
  *(a2 + 16) = 1;
  *(a2 + 20) = v5;
  *(a2 + 24) = v10;
  v8 = 0;
  v10 = 0;
  *a2 = &unk_283812C88;
  *(a2 + 8) = v4;
  return Matrix<double>::~Matrix(&v7);
}

void sub_22490B4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Matrix<double>::~Matrix(v9);
  Matrix<double>::~Matrix(&a9);
  _Unwind_Resume(a1);
}

void Matrix<double>::Svd0LowestSingularVector(uint64_t a1)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = &unk_283812C58;
  v6 = 0;
  v3[1] = 0;
  v3[2] = 0;
  v3[0] = &unk_283812C58;
  v4 = 0;
  v1[2] = 1;
  v2 = 0;
  v1[0] = &unk_283812C88;
  v1[1] = 0;
  Matrix<double>::Svd(a1, v5, v1, v3);
}

void sub_22490B644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  Matrix<double>::~Matrix(&a9);
  Matrix<double>::~Matrix(&a13);
  Matrix<double>::~Matrix(&a17);
  _Unwind_Resume(a1);
}

void GeomUtils::homography2d(void *a1@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  v1 = 0u;
  v2 = 0u;
  *a1 = &unk_283812C58;
  operator new[]();
}

void sub_22490B8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  Matrix<double>::~Matrix(v26 - 136);
  Matrix<double>::~Matrix(&a9);
  Matrix<double>::~Matrix(&a13);
  Matrix<double>::~Matrix(&a17);
  Matrix<double>::~Matrix(&a21);
  Matrix<double>::~Matrix(&a25);
  Matrix<double>::~Matrix(v25);
  _Unwind_Resume(a1);
}

void GeomUtils::ransacComputeHomography(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, _DWORD *a6)
{
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  Matrix<double>::Matrix(&v50, 3, *(a1 + 20));
  v50 = &unk_283812E40;
  Matrix<double>::Matrix(&v46, 3, *(a2 + 20));
  v46 = &unk_283812E40;
  Algo::Normalize2DPts(a1, &v50, v56);
  Algo::Normalize2DPts(a2, &v46, v54);
  Algo::RansacHomography(&v50, &v46, 4, 10, 50, 1, a4, a5, a6);
  Matrix<double>::Matrix(&v42, 3, *a5);
  v42 = &unk_283812E40;
  Matrix<double>::Matrix(&v38, 3, *a5);
  v38 = &unk_283812E40;
  v11 = *a5;
  if (*a5)
  {
    v12 = v53;
    if (v53 == v49)
    {
      v13 = 0;
      v14 = 0;
      v15 = *(a4 + 20) * *(a4 + 16);
      v16 = v52;
      v17 = v44;
      v18 = v45;
      v19 = 2 * v53;
      v20 = 2 * v45;
      v21 = v48;
      v22 = v40;
      v23 = v41;
      v24 = 2 * v41;
      v25 = "row < m_rows && col < m_cols";
      while (v15 > v13)
      {
        v26 = *(*(a4 + 8) + 4 * v14);
        v27 = 119;
        if (!v16)
        {
          goto LABEL_33;
        }

        v28 = v12 <= v26 || v17 == 0;
        if (v28 || v18 <= v13)
        {
          goto LABEL_33;
        }

        *(__dst + v14) = *(v51 + 8 * v26);
        v27 = 119;
        if (v16 < 2)
        {
          goto LABEL_33;
        }

        v30 = *(*(a4 + 8) + 4 * v14);
        if (v12 <= v30)
        {
          goto LABEL_33;
        }

        if (v17 == 1)
        {
          goto LABEL_33;
        }

        *(__dst + v14 + v18) = *(v51 + 8 * v30 + 8 * v12);
        v27 = 119;
        if (v16 < 3)
        {
          goto LABEL_33;
        }

        v31 = *(*(a4 + 8) + 4 * v14);
        if (v12 <= v31)
        {
          goto LABEL_33;
        }

        if (v17 < 3)
        {
          goto LABEL_33;
        }

        *(__dst + v14 + v20) = *(v51 + 8 * v31 + 8 * v19);
        v32 = *(*(a4 + 8) + 4 * v14);
        v27 = 119;
        if (!v21)
        {
          goto LABEL_33;
        }

        if (v12 <= v32)
        {
          goto LABEL_33;
        }

        if (!v22)
        {
          goto LABEL_33;
        }

        if (v23 <= v13)
        {
          goto LABEL_33;
        }

        *(v39 + v14) = *(v47 + 8 * v32);
        v27 = 119;
        if (v21 < 2)
        {
          goto LABEL_33;
        }

        v33 = *(*(a4 + 8) + 4 * v14);
        if (v12 <= v33)
        {
          goto LABEL_33;
        }

        if (v22 == 1)
        {
          goto LABEL_33;
        }

        *(v39 + v14 + v23) = *(v47 + 8 * v33 + 8 * v12);
        v27 = 119;
        if (v21 < 3)
        {
          goto LABEL_33;
        }

        v34 = *(*(a4 + 8) + 4 * v14);
        if (v12 <= v34 || v22 <= 2)
        {
          goto LABEL_33;
        }

        *(v39 + v14++ + v24) = *(v47 + 8 * v34 + 8 * v19);
        v13 = v14;
        if (v11 <= v14)
        {
          GeomUtils::ToNonHomg(&v42, &v37);
          GeomUtils::ToHomg(&v37, &v58);
          Matrix<double>::Resize(&v42, v60, v61);
          memcpy(__dst, v59, 8 * v44 * v45);
          Matrix<double>::~Matrix(&v58);
          Matrix<double>::~Matrix(&v37);
          GeomUtils::ToNonHomg(&v38, &v37);
          GeomUtils::ToHomg(&v37, &v58);
          Matrix<double>::Resize(&v38, v60, v61);
          memcpy(v39, v59, 8 * v40 * v41);
          Matrix<double>::~Matrix(&v58);
          Matrix<double>::~Matrix(&v37);
          GeomUtils::ComputeHomography(&v42, &v38);
        }
      }

      v27 = 131;
      v25 = "index < m_rows * m_cols";
LABEL_33:
      __assert_rtn("operator()", "Matrix.hpp", v27, v25);
    }

    v35 = "x1_norm.GetNumOfPoints() == x2_norm.GetNumOfPoints()";
    v36 = 930;
  }

  else
  {
    v35 = "*ninliers != 0";
    v36 = 928;
  }

  __assert_rtn("ransacComputeHomography", "GeomUtils.cpp", v36, v35);
}

void sub_22490BF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  Matrix<double>::~Matrix(&a15);
  Matrix<double>::~Matrix(&a11);
  Matrix<double>::~Matrix(&a19);
  Matrix<double>::~Matrix(v35 - 152);
  Matrix<double>::~Matrix(&a23);
  Matrix<double>::~Matrix(&a27);
  Matrix<double>::~Matrix(&a31);
  Matrix<double>::~Matrix(&a35);
  _Unwind_Resume(a1);
}

void GeomUtils::estimateBestRotMat(uint64_t a1)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = &unk_283812C58;
  v6 = 0;
  v3[1] = 0;
  v3[2] = 0;
  v3[0] = &unk_283812C58;
  v4 = 0;
  v1[2] = 1;
  v2 = 0;
  v1[0] = &unk_283812C88;
  v1[1] = 0;
  Matrix<double>::Svd(a1, v5, v1, v3);
}

void sub_22490C138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  Matrix<double>::~Matrix(&a9);
  Matrix<double>::~Matrix(&a13);
  Matrix<double>::~Matrix(&a17);
  Matrix<double>::~Matrix(v17 - 80);
  Matrix<double>::~Matrix(v17 - 48);
  _Unwind_Resume(a1);
}

void Matrix<double>::Svd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 16);
  v8 = *(a1 + 20);
  v23 = v8;
  v24 = v9;
  Matrix<double>::Matrix(v21, v9, v8);
  if (v8 >= 1)
  {
    v10 = *(a1 + 8);
    v11 = &v10[v8];
    v12 = v22;
    v13 = v9 * v8;
    do
    {
      if (v13 >= 1)
      {
        v14 = v10;
        do
        {
          *v12++ = *v14;
          v14 += v8;
        }

        while (v14 < &v10[v13]);
      }

      ++v10;
    }

    while (v10 < v11);
  }

  v20 = v8;
  Matrix<double>::Resize(a3, 1, v8);
  Matrix<double>::Resize(a4, v8, v8);
  if (v9 >= v8)
  {
    v15 = 83;
  }

  else
  {
    v15 = 65;
  }

  v19 = v15;
  if (v9 >= v8)
  {
    v16 = v8;
  }

  else
  {
    v16 = v9;
  }

  Matrix<double>::Resize(a2, v9, v16);
  v18 = 0;
  v17 = -1;
  operator new[]();
}

void sub_22490C3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t GeomUtils::CalcRotTrans(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v118 = 0;
  v119 = 0;
  v120 = xmmword_2249D2100;
  v121 = 0x3FF0000000000000;
  v122 = 0u;
  v123 = 0u;
  v124 = 0x3FF0000000000000;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v113 = 0;
  memset(v112, 0, sizeof(v112));
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v10 = &v114;
  MatrixMxN<3u,3u,double>::SVDMxN<3u,void>(a1, &v114);
  v12 = 0;
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  do
  {
    v13 = 0;
    v14 = &v119;
    do
    {
      v15 = 0;
      v16 = 0.0;
      v17 = v14;
      do
      {
        v18 = *v17;
        v17 += 3;
        v16 = v16 + *(v10 + v15) * v18;
        v15 += 8;
      }

      while (v15 != 24);
      *(&v100 + 3 * v12 + v13++) = v16;
      ++v14;
    }

    while (v13 != 3);
    ++v12;
    v10 = (v10 + 24);
  }

  while (v12 != 3);
  v19 = 0;
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v20 = &v95;
  v21 = v112;
  do
  {
    v22 = 0;
    v23 = v20;
    do
    {
      *v23 = *&v21[v22];
      v23 = (v23 + 24);
      v22 += 8;
    }

    while (v22 != 24);
    ++v19;
    v20 = (v20 + 8);
    v21 += 24;
  }

  while (v19 != 3);
  v24 = 0;
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  memset(v105, 0, sizeof(v105));
  v25 = &v100;
  do
  {
    v26 = 0;
    v27 = &v95;
    do
    {
      v28 = 0;
      v29 = 0.0;
      v30 = v27;
      do
      {
        v31 = *v30;
        v30 += 3;
        v29 = v29 + *(v25 + v28) * v31;
        v28 += 8;
      }

      while (v28 != 24);
      *&v105[3 * v24 + v26++] = v29;
      v27 = (v27 + 8);
    }

    while (v26 != 3);
    ++v24;
    v25 = (v25 + 24);
  }

  while (v24 != 3);
  v32 = 0;
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v33 = &v90;
  v34 = &v119;
  do
  {
    v35 = 0;
    v36 = v33;
    do
    {
      *v36 = v34[v35];
      v36 = (v36 + 24);
      ++v35;
    }

    while (v35 != 3);
    ++v32;
    v33 = (v33 + 8);
    v34 += 3;
  }

  while (v32 != 3);
  v37 = 0;
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v38 = &v114;
  do
  {
    v39 = 0;
    v40 = &v90;
    do
    {
      v41 = 0;
      v42 = 0.0;
      v43 = v40;
      do
      {
        v44 = *v43;
        v43 += 3;
        v42 = v42 + *(v38 + v41) * v44;
        v41 += 8;
      }

      while (v41 != 24);
      *(&v95 + 3 * v37 + v39++) = v42;
      v40 = (v40 + 8);
    }

    while (v39 != 3);
    ++v37;
    v38 = (v38 + 24);
  }

  while (v37 != 3);
  v45 = 0;
  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v46 = &v85;
  v47 = v112;
  do
  {
    v48 = 0;
    v49 = v46;
    do
    {
      *v49 = *&v47[v48];
      v49 = (v49 + 24);
      v48 += 8;
    }

    while (v48 != 24);
    ++v45;
    v46 = (v46 + 8);
    v47 += 24;
  }

  while (v45 != 3);
  v50 = 0;
  v104 = 0;
  v51.i64[1] = 0;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v52 = &v95;
  do
  {
    v53 = 0;
    v54 = &v85;
    do
    {
      v55 = 0;
      v56 = 0.0;
      v57 = v54;
      do
      {
        v58 = *v57;
        v57 += 3;
        v56 = v56 + *(v52 + v55) * v58;
        v55 += 8;
      }

      while (v55 != 24);
      *(&v100 + 3 * v50 + v53++) = v56;
      v54 = (v54 + 8);
    }

    while (v53 != 3);
    ++v50;
    v52 = (v52 + 24);
  }

  while (v50 != 3);
  *&v90 = v115;
  *(&v90 + 1) = *(&v116 + 1);
  *&v91 = v118;
  v51.i64[0] = v105[0];
  if (((v106 ^ v105[0]) & 0x8000000000000000) != 0 || (v108 ^ v105[0]) < 0)
  {
    v63 = 0;
    v51.i64[0] = v100;
    v11.i64[0] = 1.0;
    v64.f64[0] = NAN;
    v64.f64[1] = NAN;
    v95 = 0u;
    v96 = 0u;
    v51.i64[0] = vbslq_s8(vnegq_f64(v64), v11, v51).u64[0];
    v97 = 0u;
    v98 = 0u;
    v99 = 0;
    do
    {
      *(&v95 + v63) = *v51.i64 * *(&v100 + v63);
      v62 = v63 >= 0x40;
      v63 += 8;
    }

    while (!v62);
  }

  else
  {
    v59 = 0;
    v11.i64[0] = 1.0;
    v60.f64[0] = NAN;
    v60.f64[1] = NAN;
    v99 = 0;
    v97 = 0u;
    v98 = 0u;
    *&v61 = vbslq_s8(vnegq_f64(v60), v11, v51).u64[0];
    v95 = 0u;
    v96 = 0u;
    do
    {
      *(&v95 + v59 * 8) = v61 * *&v105[v59];
      v62 = v59++ >= 8;
    }

    while (!v62);
  }

  v65 = v98;
  *(a5 + 32) = v97;
  *(a5 + 48) = v65;
  *(a5 + 64) = v99;
  v66 = v96;
  *a5 = v95;
  *(a5 + 16) = v66;
  v67 = 0;
  v85 = 0uLL;
  *&v86 = 0;
  do
  {
    *(&v85 + v67) = *(a3 + v67) - *(a2 + v67);
    v67 += 8;
  }

  while (v67 != 24);
  v68 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  do
  {
    *(&v82 + v68) = *(a3 + v68) - *(a2 + v68);
    v68 += 8;
  }

  while (v68 != 24);
  v69 = 0;
  v70 = 0.0;
  do
  {
    v70 = v70 + *(&v82 + v69) * *(&v82 + v69);
    v69 += 8;
  }

  while (v69 != 24);
  v71 = 0;
  v95 = 0uLL;
  *&v96 = 0;
  v72 = sqrt(v70);
  do
  {
    *(&v95 + v71) = *(&v85 + v71) / v72;
    v71 += 8;
  }

  while (v71 != 24);
  v73 = 0;
  v74 = 0.0;
  do
  {
    v74 = v74 + *(&v95 + v73) * *(&v90 + v73);
    v73 += 8;
  }

  while (v73 != 24);
  if (v74 < 0.0)
  {
    v75 = 0;
    v85 = 0uLL;
    *&v86 = 0;
    do
    {
      *(&v85 + v75) = -*(&v90 + v75);
      v62 = v75 >= 0x10;
      v75 += 8;
    }

    while (!v62);
    v90 = v85;
    *&v91 = v86;
  }

  v76 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  do
  {
    *(&v82 + v76) = *(a3 + v76) - *(a2 + v76);
    v76 += 8;
  }

  while (v76 != 24);
  v77 = 0;
  v78 = 0.0;
  do
  {
    v78 = v78 + *(&v82 + v77) * *(&v82 + v77);
    v77 += 8;
  }

  while (v77 != 24);
  v79 = 0;
  v85 = 0uLL;
  *&v86 = 0;
  v80 = sqrt(v78);
  do
  {
    *(&v85 + v79) = v80 * *(&v90 + v79);
    v62 = v79 >= 0x10;
    v79 += 8;
  }

  while (!v62);
  *a6 = v85;
  *(a6 + 16) = v86;
  return 0;
}

uint64_t GeomUtils::homogDist2d(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, double a6)
{
  v37 = 3;
  v38 = 0;
  v35 = &unk_283812E40;
  v36 = 0;
  __dst = 0;
  v33 = 0;
  v31 = &unk_283812C58;
  v34 = 0;
  Matrix<double>::operator*(a1, a2, &v27);
  Matrix<double>::Resize(&v31, v29, v30);
  memcpy(__dst, __src, 8 * v33 * HIDWORD(v33));
  Matrix<double>::~Matrix(&v27);
  Matrix<double>::Matrix(&v27, 1, SHIDWORD(v33));
  v27 = &unk_283812C88;
  GeomUtils::ToNonHomg(a3, v22);
  GeomUtils::ToHomg(v22, v23);
  Matrix<double>::Resize(&v35, v25, v26);
  memcpy(v36, v24, 8 * v37 * HIDWORD(v37));
  Matrix<double>::~Matrix(v23);
  Matrix<double>::~Matrix(v22);
  GeomUtils::ToNonHomg(&v31, v22);
  GeomUtils::ToHomg(v22, v23);
  Matrix<double>::Resize(&v31, v25, v26);
  memcpy(__dst, v24, 8 * v33 * HIDWORD(v33));
  Matrix<double>::~Matrix(v23);
  Matrix<double>::~Matrix(v22);
  v10 = HIDWORD(v33);
  if (HIDWORD(v33))
  {
    v11 = 0;
    v12 = 0;
    v13 = "row < m_rows && col < m_cols";
    while (v37 && v11 < HIDWORD(v37) && v33)
    {
      v14 = 119;
      if (v37 == 1 || v33 == 1 || v37 < 3 || v33 < 3)
      {
        goto LABEL_21;
      }

      if (v11 >= (v30 * v29))
      {
        goto LABEL_20;
      }

      v15 = &v36[8 * v11];
      v16 = (__dst + 8 * v11);
      v17 = v15[HIDWORD(v37)] - v16[v10];
      v18 = v17 * v17 + (*v15 - *v16) * (*v15 - *v16);
      v19 = *&v36[8 * (2 * HIDWORD(v37)) + 8 * v11] - *(__dst + 2 * v10 + v11);
      *(__src + v11) = v18 + v19 * v19;
      if (*(__src + v11) >= a6)
      {
        v20 = v10;
      }

      else
      {
        if (*(a4 + 20) * *(a4 + 16) <= v12)
        {
LABEL_20:
          v14 = 131;
          v13 = "index < m_rows * m_cols";
LABEL_21:
          __assert_rtn("operator()", "Matrix.hpp", v14, v13);
        }

        *(*(a4 + 8) + 4 * v12++) = v11;
        v20 = HIDWORD(v33);
        v10 = HIDWORD(v33);
      }

      if (++v11 >= v20)
      {
        goto LABEL_18;
      }
    }

    v14 = 119;
    goto LABEL_21;
  }

  v12 = 0;
LABEL_18:
  *a5 = v12;
  Matrix<double>::~Matrix(&v27);
  Matrix<double>::~Matrix(&v31);
  return Matrix<double>::~Matrix(&v35);
}

void sub_22490CCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  Matrix<double>::~Matrix(&a13);
  Matrix<double>::~Matrix(&a9);
  Matrix<double>::~Matrix(&a17);
  Matrix<double>::~Matrix(&a21);
  Matrix<double>::~Matrix(v21 - 80);
  _Unwind_Resume(a1);
}

BOOL GeomUtils::check3of4SpotsOnSameLine(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != 4 || *(a1 + 16) != 3)
  {
    GeomUtils::check3of4SpotsOnSameLine();
  }

  if (*(a2 + 20) != 4 || *(a2 + 16) != 3)
  {
    GeomUtils::check3of4SpotsOnSameLine();
  }

  v3 = *(a1 + 8);
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[4];
  v7 = v3[5];
  v9 = v3[8];
  v8 = v3[9];
  v10 = v3[2];
  v11 = v3[6];
  v12 = v3[10];
  v13 = v7 * v12 - v11 * v8;
  v14 = -(v11 * v9);
  v15 = v6 * v8 - v7 * v9;
  if (fabs(*v3 * v13 - v4 * (v9 * v12 - v11 * v9) + v10 * v15) < 0.00000011920929)
  {
    return 1;
  }

  v16 = v3[3];
  v17 = v3[7];
  v18 = v3[11];
  v19 = v9 * v18 - v17 * v9;
  if (fabs(v19 * -v4 + v5 * (v7 * v18 - v17 * v8) + v16 * v15) < 0.00000011920929)
  {
    return 1;
  }

  v20 = v12 * -v17 + v11 * v18;
  if (fabs(v5 * v20 - v10 * v19 + v16 * (v14 + v6 * v12)) < 0.00000011920929)
  {
    return 1;
  }

  if (fabs((v8 * v18 - v17 * v8) * -v10 + v4 * v20 + v16 * v13) < 0.00000011920929)
  {
    return 1;
  }

  v21 = *(a2 + 8);
  v22 = v21[1];
  v23 = v21[5];
  v24 = v21[8];
  v25 = v21[9];
  v26 = v21[4] * v25 - v23 * v24;
  if (fabs(*v21 * (v23 * v21[10] - v21[6] * v25) - v22 * (v24 * v21[10] - v21[6] * v24) + v21[2] * v26) < 0.00000011920929)
  {
    return 1;
  }

  v27 = 1;
  if (fabs((v24 * v21[11] - v21[7] * v24) * -v22 + *v21 * (v23 * v21[11] - v21[7] * v25) + v21[3] * v26) >= 0.00000011920929)
  {
    v47 = 0;
    v29 = *Matrix<double>::operator()(a2, &v47 + 1, &v47);
    v47 = 0x100000000;
    v30 = *Matrix<double>::operator()(a2, &v47 + 1, &v47);
    v47 = 0x200000000;
    v31 = *Matrix<double>::operator()(a2, &v47 + 1, &v47);
    v47 = 2;
    v32 = *Matrix<double>::operator()(a2, &v47 + 1, &v47);
    v47 = 0x100000002;
    v33 = *Matrix<double>::operator()(a2, &v47 + 1, &v47);
    v47 = 0x200000002;
    v34 = *Matrix<double>::operator()(a2, &v47 + 1, &v47);
    v47 = 3;
    v35 = *Matrix<double>::operator()(a2, &v47 + 1, &v47);
    v47 = 0x100000003;
    v36 = *Matrix<double>::operator()(a2, &v47 + 1, &v47);
    v47 = 0x200000003;
    v37 = Matrix<double>::operator()(a2, &v47 + 1, &v47);
    if (fabs(v29 * (v33 * *v37 - v36 * v34) - v32 * (v31 * *v37 - v36 * v31) + v35 * (v30 * v34 - v33 * v31)) >= 0.00000011920929)
    {
      v47 = 1;
      v38 = *Matrix<double>::operator()(a2, &v47 + 1, &v47);
      v47 = 0x100000001;
      v39 = *Matrix<double>::operator()(a2, &v47 + 1, &v47);
      v47 = 0x200000001;
      v40 = *Matrix<double>::operator()(a2, &v47 + 1, &v47);
      v47 = 2;
      v41 = *Matrix<double>::operator()(a2, &v47 + 1, &v47);
      v47 = 0x100000002;
      v42 = *Matrix<double>::operator()(a2, &v47 + 1, &v47);
      v47 = 0x200000002;
      v43 = *Matrix<double>::operator()(a2, &v47 + 1, &v47);
      v47 = 3;
      v44 = *Matrix<double>::operator()(a2, &v47 + 1, &v47);
      v47 = 0x100000003;
      v45 = *Matrix<double>::operator()(a2, &v47 + 1, &v47);
      v47 = 0x200000003;
      v46 = Matrix<double>::operator()(a2, &v47 + 1, &v47);
      return fabs(v38 * (v42 * *v46 - v45 * v43) - v41 * (v40 * *v46 - v45 * v40) + v44 * (v39 * v43 - v42 * v40)) < 0.00000011920929;
    }
  }

  return v27;
}

float32x2_t GeomUtils::ExtrinsicsToSimd4x3(float64x2_t *a1)
{
  v1 = *a1;
  v1.f64[1] = a1[1].f64[1];
  return vcvt_f32_f64(v1);
}

double GeomUtils::ExtrinsicsFromSimd4x3(float64x2_t *a1, float64x2_t *a2, int8x16_t a3, int8x16_t a4, __n128 a5, __n128 a6)
{
  v6 = vzip1_s32(*a3.i8, *a4.i8);
  v7 = vzip1_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(a4, a4, 8uLL));
  v8 = vzip2_s32(*a4.i8, a5.n128_u64[0]);
  a5.n128_u32[1] = a3.u32[1];
  *a1 = vcvtq_f64_f32(v6);
  a1[1] = vcvtq_f64_f32(a5.n128_u64[0]);
  a1[2] = vcvtq_f64_f32(v8);
  a1[3] = vcvtq_f64_f32(v7);
  a1[4].f64[0] = a5.n128_f32[2];
  *a2 = vcvtq_f64_f32(a6.n128_u64[0]);
  result = a6.n128_f32[2];
  a2[1].f64[0] = a6.n128_f32[2];
  return result;
}

double Matrix<double>::DotMult<BOOL>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 20);
  if (v4 != *(a1 + 20) || (v6 = *(a2 + 16), v6 != *(a1 + 16)))
  {
    Matrix<double>::DotMult<double>();
  }

  v7 = Matrix<double>::Matrix(a3, v6, v4);
  v9 = *(a1 + 20) * *(a1 + 16);
  if (v9 >= 1)
  {
    v10 = *(a1 + 8);
    v11 = &v10[v9];
    v12 = *(v7 + 8);
    v13 = *(a2 + 8);
    do
    {
      v14 = *v10++;
      v15 = v14;
      LODWORD(v14) = *v13++;
      result = v15 * LODWORD(v14);
      *v12++ = result;
    }

    while (v10 < v11);
  }

  return result;
}

void std::vector<ImageUtils::Blob>::clear[abi:ne200100](uint64_t *a1)
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

uint64_t std::vector<ImageUtils::Blob>::__init_with_size[abi:ne200100]<ImageUtils::Blob*,ImageUtils::Blob*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ImageUtils::Blob>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22490D380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ImageUtils::Blob>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ImageUtils::Blob>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<ImageUtils::Blob>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ImageUtils::Blob>,ImageUtils::Blob*,ImageUtils::Blob*,ImageUtils::Blob*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ImageUtils::Blob>,ImageUtils::Blob*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<ImageUtils::Blob>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ImageUtils::Blob>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::pair<unsigned int,unsigned int>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<std::pair<unsigned int,unsigned int>>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<std::pair<unsigned int,unsigned int>>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
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
      std::allocator<std::pair<unsigned int,unsigned int>>::allocate_at_least[abi:ne200100](a1, v10);
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

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>(v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22, &v18);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v20, v5);
    return;
  }

  v14 = *a1 + 8 * (v4 >> 6);
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v20, v5);
}

void sub_22490D7B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<std::pair<unsigned int,unsigned int>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_22490D8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::allocator<std::pair<unsigned int,unsigned int>>::allocate_at_least[abi:ne200100](a1, v2);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

unint64_t *std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t *__src@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - __src);
  if (v8 <= 0)
  {
    v16 = *a5;
  }

  else
  {
    v9 = __src;
    __src = *a5;
    if (a2)
    {
      if (v8 >= (64 - a2))
      {
        v10 = 64 - a2;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2);
      v12 = v10 + *(a5 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a5 = __src;
      *(a5 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a5;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a5 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a5 + 8) = v15;
    }
  }

  *a6 = v16;
  *(a6 + 8) = *(a5 + 8);
  return __src;
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void std::vector<Matrix<double>>::__emplace_back_slow_path<Matrix<double> const&>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 59))
  {
    v5 = a1[2] - *a1;
    if (v5 >> 4 > v3)
    {
      v3 = v5 >> 4;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFE0)
    {
      v6 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v3;
    }

    v8 = a1;
    if (v6)
    {
      std::allocator<Matrix<double>>::allocate_at_least[abi:ne200100](a1, v6);
    }

    v7 = (32 * v2);
    Matrix<double>::Matrix(32 * v2, a2, 0, -1);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

void sub_22490DEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Matrix<double>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<Matrix<double>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Matrix<double>>,Matrix<double>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    Matrix<double>::Matrix(a4, a2, 0, -1);
  }
}

void sub_22490DFCC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Matrix<double>>,Matrix<double>*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<Matrix<double>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 32);
    *(a1 + 16) = i - 32;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<Matrix<double>>::__init_with_size[abi:ne200100]<Matrix<double>*,Matrix<double>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Matrix<double>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22490E0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<Matrix<double>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<Matrix<double>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::allocator<Matrix<double>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Matrix<double>>,Matrix<double>*,Matrix<double>*,Matrix<double>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a4;
    do
    {
      *v4 = &unk_283812C58;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      v10 = *(v6 + 20);
      v12[0] = &unk_283812C58;
      v12[1] = v8;
      v13 = v9;
      v14 = v10;
      v15 = 0;
      *(v4 + 8) = v8;
      *(v4 + 16) = v9;
      *(v4 + 20) = v10;
      *(v4 + 24) = 0;
      Matrix<double>::~Matrix(v12);
      v6 += 32;
      v4 += 32;
      v7 += 32;
    }

    while (v6 != a3);
  }

  return v4;
}

void std::vector<Matrix<double>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      v7 = v4 - 32;
      v8 = v4 - 32;
      do
      {
        v9 = *v8;
        v8 -= 32;
        (*v9)(v7);
        v6 -= 32;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t Algo::MeshGrid<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 20);
  v8 = *(a2 + 20);
  Matrix<double>::Resize(a3, v8, v7);
  Matrix<double>::Resize(a4, v8, v7);
  if (v8)
  {
    v9 = 0;
    v10 = *(a1 + 8);
    v11 = *(a3 + 8);
    do
    {
      if (v7)
      {
        v12 = v7;
        v13 = v10;
        do
        {
          v14 = *v13++;
          *v11++ = v14;
          --v12;
        }

        while (v12);
      }

      ++v9;
    }

    while (v9 != v8);
  }

  Matrix<double>::Transpose(a3, a4);
  return 0;
}

void Matrix<double>::Transpose(uint64_t a1, uint64_t a2)
{
  Matrix<double>::Resize(a2, *(a1 + 20), *(a1 + 16));
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 20);

  vDSPMtranspose<double>(v4, 1, v5, 1, v6, v7);
}

uint64_t Interp2<double,CubicInterpolator<double>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double a8)
{
  v8 = *(a1 + 20);
  if (v8 != *(a3 + 20))
  {
    Interp2<double,CubicInterpolator<double>>();
  }

  v11 = *(a2 + 20);
  if (v11 != *(a3 + 16))
  {
    Interp2<double,CubicInterpolator<double>>();
  }

  if (v8 <= 1)
  {
    Interp2<double,CubicInterpolator<double>>();
  }

  if (v11 <= 1)
  {
    Interp2<double,CubicInterpolator<double>>();
  }

  v14 = *(a4 + 20);
  if (v14 != *(a5 + 20))
  {
    Interp2<double,CubicInterpolator<double>>();
  }

  Matrix<double>::Resize(a6, 1, v14);
  v19 = *(a1 + 8);
  v20 = *v19;
  v21 = v19[*(a1 + 20) - 1];
  v22 = *(a2 + 8);
  v23 = *v22;
  v24 = v22[*(a2 + 20) - 1];
  v25 = *(a4 + 20);
  if (a7)
  {
    if (v25)
    {
      v26 = 0;
      v27 = v19[1] - v20;
      v28 = v22[1] - v23;
      v29 = 8 * v25;
      do
      {
        v30 = *(*(a4 + 8) + v26);
        v31 = *(*(a5 + 8) + v26);
        v34 = v30 > v21 || v30 < v20 || v31 > v24 || v31 < v23;
        v35 = a8;
        if (!v34)
        {
          v36 = ((v30 - v20) / v27);
          v37 = *(a1 + 20);
          if (v36 + 1 < v37 && *(*(a1 + 8) + 8 * (v36 + 1)) <= v30)
          {
            ++v36;
          }

          v38 = ((v31 - v23) / v28);
          v39 = *(a2 + 20);
          v40 = *(a2 + 8);
          if (v38 + 1 < v39 && v40[v38 + 1] <= v31)
          {
            ++v38;
          }

          v35 = CubicInterpolator<double>::operator()(&v51, *(a1 + 8), v40, *(a3 + 8), v37, v39, v36, v38, v30, v31);
        }

        *(*(a6 + 8) + v26) = v35;
        v26 += 8;
      }

      while (v29 != v26);
    }
  }

  else if (v25)
  {
    v41 = 0;
    v42 = 8 * v25;
    do
    {
      v43 = *(*(a4 + 8) + v41);
      v44 = *(*(a5 + 8) + v41);
      if (v43 > v21 || v43 < v20 || v44 > v24 || v44 < v23)
      {
        *(*(a6 + 8) + v41) = a8;
      }

      else
      {
        v49 = 0;
        v50 = 0;
        Algo::BinSearchNearestLowest<double>(a1, 0, &v50, v43);
        Algo::BinSearchNearestLowest<double>(a2, 0, &v49, v44);
        *(*(a6 + 8) + v41) = CubicInterpolator<double>::operator()(&v51, *(a1 + 8), *(a2 + 8), *(a3 + 8), *(a1 + 20), *(a2 + 20), v50, v49, v43, v44);
      }

      v41 += 8;
    }

    while (v42 != v41);
  }

  return 0;
}

double CubicInterpolator<double>::operator()(uint64_t a1, double *a2, double *a3, double *a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, double a9, double a10)
{
  if (a6 < 4)
  {
    if (a6 == 3)
    {
      v22 = CubicInterpolator<double>::operator()(a9, a1, a2, a4, a5, a7);
      v29 = CubicInterpolator<double>::operator()(a9, a1, a2, &a4[a5], a5, a7);
      v23 = v29;
      if (!a8)
      {
        v36 = -(v29 - v22 * 2.0);
        v25 = CubicInterpolator<double>::operator()(a9, a1, a2, &a4[2 * a5], a5, a7);
        v34 = (a10 - *a3) / (a3[1] - *a3);
        v24 = v23;
        v23 = v22;
        v22 = v36;
        return v23 + v34 * (v34 * (v22 + v23 * -2.5 + v24 * 2.0 + v25 * -0.5)) + v34 * (v34 * ((v23 - v24) * 1.5 + (v25 - v22) * 0.5)) * v34 + (v24 - v22) * 0.5 * v34;
      }

      v24 = CubicInterpolator<double>::operator()(a9, a1, a2, &a4[2 * a5], a5, a7);
      v25 = -(v23 - v24 * 2.0);
      v30 = a3[1];
      v31 = a10 - v30;
      v32 = v30 - *a3;
      goto LABEL_13;
    }

    v23 = CubicInterpolator<double>::operator()(a9, a1, a2, a4, a5, a7);
    v24 = CubicInterpolator<double>::operator()(a9, a1, a2, &a4[a5], a5, a7);
    v22 = -(v24 - v23 * 2.0);
    v25 = -(v23 - v24 * 2.0);
LABEL_12:
    v31 = a10 - *a3;
    v32 = a3[1] - *a3;
LABEL_13:
    v34 = v31 / v32;
    return v23 + v34 * (v34 * (v22 + v23 * -2.5 + v24 * 2.0 + v25 * -0.5)) + v34 * (v34 * ((v23 - v24) * 1.5 + (v25 - v22) * 0.5)) * v34 + (v24 - v22) * 0.5 * v34;
  }

  v20 = a6 - 2;
  if (a6 - 2 <= a8)
  {
    v33 = &a4[(a6 - 3) * a5];
    v22 = CubicInterpolator<double>::operator()(a9, a1, a2, v33, a5, a7);
    v23 = CubicInterpolator<double>::operator()(a9, a1, a2, &v33[a5], a5, a7);
    v24 = CubicInterpolator<double>::operator()(a9, a1, a2, &v33[2 * a5], a5, a7);
    v25 = -(v23 - v24 * 2.0);
    v26 = a3[v20];
    v27 = a10 - v26;
    v28 = a6 - 1;
    goto LABEL_9;
  }

  if (!a8)
  {
    v23 = CubicInterpolator<double>::operator()(a9, a1, a2, a4, a5, a7);
    v24 = CubicInterpolator<double>::operator()(a9, a1, a2, &a4[a5], a5, a7);
    v22 = -(v24 - v23 * 2.0);
    v25 = CubicInterpolator<double>::operator()(a9, a1, a2, &a4[2 * a5], a5, a7);
    goto LABEL_12;
  }

  v21 = &a4[(a8 - 1) * a5];
  v22 = CubicInterpolator<double>::operator()(a9, a1, a2, v21, a5, a7);
  v23 = CubicInterpolator<double>::operator()(a9, a1, a2, &v21[a5], a5, a7);
  v24 = CubicInterpolator<double>::operator()(a9, a1, a2, &v21[2 * a5], a5, a7);
  v25 = CubicInterpolator<double>::operator()(a9, a1, a2, &v21[3 * a5], a5, a7);
  v26 = a3[a8];
  v27 = a10 - v26;
  v28 = a8 + 1;
LABEL_9:
  v34 = v27 / (a3[v28] - v26);
  return v23 + v34 * (v34 * (v22 + v23 * -2.5 + v24 * 2.0 + v25 * -0.5)) + v34 * (v34 * ((v23 - v24) * 1.5 + (v25 - v22) * 0.5)) * v34 + (v24 - v22) * 0.5 * v34;
}

uint64_t Interp1<double,LinearInterpolator<double>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = *(a1 + 20);
  if (v5 != *(a2 + 20))
  {
    Interp1<double,LinearInterpolator<double>>();
  }

  if (v5 <= 1)
  {
    Interp1<double,LinearInterpolator<double>>();
  }

  v10 = *(a1 + 8);
  v11 = *(a3 + 8);
  v12 = *(a2 + 8);
  v13 = *(a3 + 20);
  Matrix<double>::Resize(a4, 1, *(a3 + 20));
  if (v13 >= 1)
  {
    v14 = *(a4 + 8);
    v15 = *v10;
    v16 = v10[v5 - 1];
    v17 = v12 + 8 * v5;
    v18 = v5 - 1;
    v19 = v5 - 2;
    do
    {
      v20 = *v11;
      if (*v11 > v16 || v20 < v15)
      {
        *v14 = a5;
      }

      else
      {
        v25 = 0;
        Algo::BinSearchNearestLowest<double>(a1, 0, &v25, v20);
        if (v20 >= v16)
        {
          v23 = *(v17 - 8);
        }

        else
        {
          v22 = v25;
          if (v18 <= v25)
          {
            v22 = v19;
          }

          v23 = *(*(a2 + 8) + 8 * v22) + (*(*(a2 + 8) + 8 * (v22 + 1)) - *(*(a2 + 8) + 8 * v22)) * ((v20 - v10[v22]) / (v10[v22 + 1] - v10[v22]));
        }

        *v14 = v23;
      }

      ++v14;
      ++v11;
      --v13;
    }

    while (v13);
  }

  return 0;
}

uint64_t GeomUtils::CalcRotationMatrix<double>(uint64_t a1, double a2, long double a3, long double a4)
{
  v8 = cos(a3);
  v9 = cos(a4);
  v10 = *(a1 + 16);
  if (!v10 || (v11 = *(a1 + 20), !v11))
  {
    GMC_Homography();
  }

  v12 = v9;
  **(a1 + 8) = v8 * v9;
  v13 = __sincos_stret(a2);
  v14 = sin(a3);
  v15 = sin(a4);
  if (v11 == 1)
  {
    GMC_Homography();
  }

  *(*(a1 + 8) + 8) = v13.__sinval * v12 * v14 - v13.__cosval * v15;
  if (v11 <= 2)
  {
    GMC_Homography();
  }

  *(*(a1 + 8) + 16) = v13.__cosval * v14 * v12 + v13.__sinval * v15;
  if (v10 == 1)
  {
    GMC_Homography();
  }

  *(*(a1 + 8) + 8 * v11) = v8 * v15;
  *(*(a1 + 8) + 8 * v11 + 8) = v13.__sinval * v14 * v15 + v13.__cosval * v12;
  *(*(a1 + 8) + 8 * v11 + 16) = v13.__cosval * v14 * v15 - v13.__sinval * v12;
  if (v10 <= 2)
  {
    GMC_Homography();
  }

  v16 = 2 * v11;
  *(*(a1 + 8) + 8 * v16) = -v14;
  *(*(a1 + 8) + 8 * v16 + 8) = v13.__sinval * v8;
  *(*(a1 + 8) + 8 * v16 + 16) = v13.__cosval * v8;
  return 0;
}

uint64_t Matrix<double>::AsVector@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 20) * *(a1 + 16);
  v6 = 1;
  v7 = v3;
  *(a2 + 16) = 1;
  *(a2 + 20) = v3;
  *(a2 + 24) = 0;
  v5[0] = &unk_283812C58;
  v5[1] = 0;
  v8 = 0;
  *a2 = &unk_283812C88;
  *(a2 + 8) = v2;
  return Matrix<double>::~Matrix(v5);
}

void sub_22490F3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  Matrix<double>::~Matrix(&a15);
  Matrix<double>::~Matrix(v35 - 112);
  Matrix<double>::~Matrix(&a19);
  Matrix<double>::~Matrix(&a23);
  Matrix<double>::~Matrix(&a27);
  Matrix<double>::~Matrix(&a31);
  Matrix<double>::~Matrix(&a35);
  Matrix<double>::~Matrix(v35 - 176);
  Matrix<double>::~Matrix(v35 - 144);
  _Unwind_Resume(a1);
}

uint64_t Matrix<double>::DotRepeatSubFromRightInPlace@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 20);
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  if (v5 == v4 && v3 == 1)
  {
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        if (v5)
        {
          v14 = 0;
          v15 = 0;
          do
          {
            *(*(a1 + 8) + 8 * i + 8 * v14) = *(*(a1 + 8) + 8 * i + 8 * v14) - *(*(a2 + 8) + v15);
            v15 += 8;
            v14 += v6;
          }

          while (8 * v5 != v15);
        }
      }

      LODWORD(v3) = v6;
    }

    else
    {
      LODWORD(v3) = 0;
    }
  }

  else
  {
    if (v4 != 1 || v6 != v3)
    {
      Matrix<double>::DotRepeatSubFromRightInPlace();
    }

    if (v5)
    {
      v9 = 0;
      for (j = 0; j != v5; ++j)
      {
        if (v3)
        {
          v11 = 0;
          v12 = 8 * v9;
          do
          {
            *(*(a1 + 8) + v12) = *(*(a1 + 8) + v12) - *(*(a2 + 8) + v11);
            v12 += 8;
            v11 += 8;
          }

          while (8 * v3 != v11);
        }

        v9 += v3;
      }
    }
  }

  *a3 = &unk_283812C58;
  v16 = *(a1 + 16);
  v17 = *(a1 + 8);
  v19[0] = &unk_283812C58;
  v19[1] = v17;
  v20 = v16;
  v21 = v3;
  v22 = 0;
  *(a3 + 8) = v17;
  *(a3 + 16) = v16;
  *(a3 + 20) = v3;
  *(a3 + 24) = 0;
  return Matrix<double>::~Matrix(v19);
}

uint64_t Matrix<double>::DotRepeatProductFromRight@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = Matrix<double>::Matrix(a3, *(a1 + 16), *(a1 + 20));
  v8 = *(a2 + 16);
  v7 = *(a2 + 20);
  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  if (v9 == v8 && v7 == 1)
  {
    if (v10)
    {
      v20 = 0;
      v21 = *(a3 + 16);
      do
      {
        if (v9)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v25 = *(a3 + 20);
          do
          {
            if (v24 >= v21 || v20 >= v25)
            {
              __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
            }

            *(*(a3 + 8) + 8 * v20 + 8 * v23) = *(*(a1 + 8) + 8 * v20 + 8 * v22) * *(*(a2 + 8) + 8 * v24++);
            v23 += v25;
            v22 += v10;
          }

          while (v9 != v24);
        }

        ++v20;
      }

      while (v20 != v10);
    }
  }

  else
  {
    if (v8 != 1 || v10 != v7)
    {
      __assert_rtn("DotRepeatProductFromRight", "Matrix.hpp", 1468, "0");
    }

    if (v9)
    {
      v13 = 0;
      v14 = 0;
      v15 = *(a3 + 16);
      do
      {
        if (v7)
        {
          if (v14 < v15)
          {
            v16 = 0;
            v17 = 8 * v13;
            v18 = *(a3 + 20);
            v19 = 8 * (v18 * v14);
            while (v18)
            {
              result = *(a3 + 8) + v19;
              *(result + v16) = *(*(a1 + 8) + v17) * *(*(a2 + 8) + v16);
              --v18;
              v17 += 8;
              v16 += 8;
              if (8 * v7 == v16)
              {
                goto LABEL_17;
              }
            }
          }

          __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
        }

LABEL_17:
        ++v14;
        v13 += v7;
      }

      while (v14 != v9);
    }
  }

  return result;
}

void Matrix<double>::MultAxBToC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  if (v6 == 1 && v7 == 1)
  {
    Matrix<double>::ScalarProduct(a2, *(a1 + 8), v13);
    Matrix<double>::Resize(a3, v15, v16);
LABEL_15:
    memcpy(*(a3 + 8), __src, 8 * *(a3 + 16) * *(a3 + 20));
    Matrix<double>::~Matrix(v13);
    goto LABEL_16;
  }

  v10 = *(a2 + 16);
  v9 = *(a2 + 20);
  if (v9 == 1 && v10 == 1)
  {
    Matrix<double>::ScalarProduct(a1, *(a2 + 8), v13);
    Matrix<double>::Resize(a3, v15, v16);
    goto LABEL_15;
  }

  if (v7 != v10)
  {
    Matrix<float>::MultAxBToC();
  }

  if (v6 != *(a3 + 16) || v9 != *(a3 + 20))
  {
    Matrix<float>::MultAxBToC();
  }

LABEL_16:
  LODWORD(v12) = *(a1 + 20);
  vDSPMmul<double>(*(a1 + 8), 1, *(a2 + 8), 1, *(a3 + 8), 1, *(a1 + 16), *(a3 + 20), v12);
}

void sub_22490F88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Matrix<double>::~Matrix(va);
  _Unwind_Resume(a1);
}

void CRandomGenerator::CRandomGenerator(CRandomGenerator *this, int a2)
{
  *this = &unk_2838145E0;
  CRandomGenerator::Init(this, a2);
}

{
  *this = &unk_2838145E0;
  CRandomGenerator::Init(this, a2);
}

uint64_t CRandomGenerator::Init(uint64_t this, int a2)
{
  v2 = ((a2 / 0xADC8u) | ((a2 / 0xADC8u) << 31)) + 48271 * a2;
  v3 = v2 - (v2 < 1);
  if (a2 <= 3399)
  {
    v3 = 48271 * a2;
  }

  *(this + 1012) = 0;
  for (i = 12; i != 1012; i += 4)
  {
    v5 = 48271 * (v3 % 0xADC8) - 3399 * (v3 / 0xADC8);
    v6 = v5 - (v5 < 1);
    if (v3 <= 3399)
    {
      v3 *= 48271;
    }

    else
    {
      v3 = v6;
    }

    *(this + i) = v3;
  }

  for (j = 12; j != 1012; j += 4)
  {
    v8 = 48271 * (v3 % 0xADC8) - 3399 * (v3 / 0xADC8);
    v9 = v8 - (v8 < 1);
    if (v3 <= 3399)
    {
      v3 *= 48271;
    }

    else
    {
      v3 = v9;
    }

    if (v3 >= 0x40000001)
    {
      *(this + j) |= 0x80000000;
    }
  }

  *(this + 8) = v3;
  v10 = -1;
  v11 = 0x80000000;
  for (k = 24; k != 920; k += 28)
  {
    *(this + k) = *(this + k) & v10 | v11;
    v10 >>= 1;
    v11 >>= 1;
  }

  *(this + 1013) = 0;
  return this;
}

uint64_t CRandomGenerator::randlcg(CRandomGenerator *this)
{
  v1 = *(this + 2);
  v2 = 48271 * (v1 % 0xADC8u) - 3399 * (v1 / 0xADC8u);
  v3 = v2 - (v2 < 1);
  if (v1 <= 3399)
  {
    v4 = (48271 * v1);
  }

  else
  {
    v4 = v3;
  }

  *(this + 2) = v4;
  return v4;
}

float CRandomGenerator::UniformRand(CRandomGenerator *this)
{
  v1 = *(this + 1012);
  if (v1 <= 0x92)
  {
    v2 = 103;
  }

  else
  {
    v2 = -147;
  }

  v3 = *(this + v2 + *(this + 1012) + 3) ^ *(this + *(this + 1012) + 3);
  *(this + *(this + 1012) + 3) = v3;
  if (v1 <= 0xF8)
  {
    v4 = v1 + 1;
  }

  else
  {
    v4 = 0;
  }

  *(this + 1012) = v4;
  return vcvts_n_f32_u32(v3, 0x20uLL);
}

float CRandomGenerator::NormalRand(CRandomGenerator *this, float a2)
{
  if (*(this + 1013))
  {
    v4 = 0;
    v5 = *(this + 254);
  }

  else
  {
    v6 = this + 12;
    v7 = *(this + 1012);
    do
    {
      v8 = v7;
      if (v7 <= 0x92u)
      {
        v9 = 103;
      }

      else
      {
        v9 = -147;
      }

      v10 = *&v6[4 * v9 + 4 * v7];
      if (v7 <= 0xF8u)
      {
        v11 = v7 + 1;
      }

      else
      {
        v11 = 0;
      }

      v12 = v10 ^ *&v6[4 * v8];
      v13 = v11;
      if (v11 <= 0x92u)
      {
        v14 = 103;
      }

      else
      {
        v14 = -147;
      }

      *&v6[4 * v8] = v12;
      v15 = vcvts_n_f32_u32(v12, 0x20uLL);
      v16 = *&v6[4 * v14 + 4 * v11] ^ *&v6[4 * v11];
      if (v11 <= 0xF8u)
      {
        v7 = v11 + 1;
      }

      else
      {
        v7 = 0;
      }

      v17 = (v15 * 2.0) + -1.0;
      v18 = (vcvts_n_f32_u32(v16, 0x20uLL) * 2.0) + -1.0;
      v19 = (v18 * v18) + (v17 * v17);
      *&v6[4 * v13] = v16;
    }

    while (v19 >= 1.0 || v19 == 0.0);
    *(this + 1012) = v7;
    v20 = sqrtf((logf((v18 * v18) + (v17 * v17)) * -2.0) / v19);
    v5 = v17 * v20;
    *(this + 254) = v18 * v20;
    v4 = 1;
  }

  *(this + 1013) = v4;
  return v5 * a2;
}

void MyIOHIDEventCallback(int a1, uint64_t a2, IOHIDServiceClientRef service)
{
  valuePtr = 0;
  if (service)
  {
    v4 = IOHIDServiceClientCopyProperty(service, @"Placement");
    CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
    if (IOHIDEventGetType() == 12 && valuePtr == 2)
    {
      IOHIDEventGetFloatValue();
      if (a2)
      {
        if (*(a2 + 24) == 1)
        {
          v6 = *(a2 + 8);
          if (v6)
          {
            v7 = *(v6 + 296);
            if (v7)
            {
              v8 = v5;
              *(v7 + 84) = v8;
              *(v7 + 104) = 1;
              *(*(v6 + 296) + 96) = mach_absolute_time();
              pthread_mutex_lock((v6 + 424));
              pthread_cond_broadcast((v6 + 488));
              pthread_mutex_unlock((v6 + 424));
            }
          }
        }
      }
    }
  }

  else
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "photon");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      MyIOHIDEventCallback(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

H16ISP::H16ISPPhotometerManager *H16ISP::H16ISPPhotometerManager::H16ISPPhotometerManager(H16ISP::H16ISPPhotometerManager *this, int (*a2)(H16ISPFlickerDetectorContext *, void *, photometer_flicker_result *), void *a3, CFArrayRef *a4, H16ISP::H16ISPDevice *a5)
{
  ValueAtIndex = a5;
  v6 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v18 = a4;
  *this = 0;
  *(this + 2) = 0;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 56) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0xBFF0000000000000;
  *(this + 10) = 2;
  *(this + 12) = a4;
  *(this + 13) = a5;
  *(this + 112) = 0;
  mach_timebase_info(this + 6);
  v17 = 0;
  if (!v6)
  {
    H16ISP::CreateH16ISPDeviceController(&v18, 0, 0, v9);
    v6 = v18;
  }

  v10 = 1;
  if (!ValueAtIndex && v6)
  {
    if (CFArrayGetCount(*v6) < 1)
    {
      goto LABEL_14;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*v18, 0);
    v11 = H16ISP::H16ISPDevice::H16ISPDeviceOpen(ValueAtIndex, 0, 0);
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "photon");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v20 = v11;
      _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_INFO, "H16ISPDeviceOpen returned 0x%08x\n", buf, 8u);
    }

    *(this + 224) = 1;
    v10 = v11 == 0;
  }

  if (ValueAtIndex && v10)
  {
    H16ISP::H16ISPDevice::GetFlickerDetectorHWType(ValueAtIndex, &v17);
  }

LABEL_14:
  v13 = dispatch_queue_create("com.apple.video.PhotometerManager.CommandQueue", 0);
  *(this + 2) = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = ___ZN6H16ISP23H16ISPPhotometerManagerC2EPFiP28H16ISPFlickerDetectorContextPvP25photometer_flicker_resultES3_PNS_22H16ISPDeviceControllerEPNS_12H16ISPDeviceE_block_invoke;
  v15[3] = &__block_descriptor_52_e5_v8__0l;
  v16 = v17;
  v15[4] = this;
  v15[5] = a3;
  dispatch_async(v13, v15);
  return this;
}

void ___ZN6H16ISP23H16ISPPhotometerManagerC2EPFiP28H16ISPFlickerDetectorContextPvP25photometer_flicker_resultES3_PNS_22H16ISPDeviceControllerEPNS_12H16ISPDeviceE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = H16ISPFlickerDetectorCreate(*(a1 + 48));
  *(v2 + 8) = v3;
  if (v3)
  {
    v4 = *(*(a1 + 40) + 928);
    v3->var31 = v4;
    if (v4)
    {
      AppleH16PhotonDetectorServicesAssistant::GetCalibrationData(v4, v3->var32, v3->var33);
      v3 = *(v2 + 8);
    }

    H16ISPFlickerDetectorRegisterDataCollectionCallback(v3, v2, H16ISPPhotometerManagerDataCollectionCallback);
    bzero((v2 + 112), 0x68uLL);
    bzero((v2 + 232), 0x20uLL);
    H16ISPFlickerDetectorStartDataCollection(*(v2 + 8));
    if (*(*(v2 + 8) + 16))
    {
      if (*(a1 + 48) == 9)
      {
        H16ISP::H16ISPPhotometerManager::InitializeHIDEventSystemClientForALS(v2);
      }

      *(v2 + 88) = 1065353216;
      H16ISPFlickerDetectorSetGain(*(v2 + 8), *(v2 + 88));
      *(v2 + 24) = 1;
    }

    else
    {
      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == MEMORY[0x277D86220])
      {
        v13 = os_log_create("com.apple.isp", "photon");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v13;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        ___ZN6H16ISP23H16ISPPhotometerManagerC2EPFiP28H16ISPFlickerDetectorContextPvP25photometer_flicker_resultES3_PNS_22H16ISPDeviceControllerEPNS_12H16ISPDeviceE_block_invoke_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
      }
    }
  }

  else
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "photon");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ___ZN6H16ISP23H16ISPPhotometerManagerC2EPFiP28H16ISPFlickerDetectorContextPvP25photometer_flicker_resultES3_PNS_22H16ISPDeviceControllerEPNS_12H16ISPDeviceE_block_invoke_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

uint64_t H16ISPPhotometerManagerDataCollectionCallback(H16ISPFlickerDetectorContext *a1, void *a2, photometer_flicker_result *a3)
{
  if (a2)
  {
    v3 = a2[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZN6H16ISP23H16ISPPhotometerManager26PhotometerAnalysisCallbackEP28H16ISPFlickerDetectorContextP25photometer_flicker_result_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = a2;
    block[5] = a3;
    block[6] = a1;
    dispatch_async(v3, block);
  }

  else
  {
    free(a3);
  }

  return 0;
}

void H16ISP::H16ISPPhotometerManager::InitializeHIDEventSystemClientForALS(H16ISP::H16ISPPhotometerManager *this)
{
  v76 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  v3 = IOHIDEventSystemClientCreateWithType();
  *this = v3;
  if (v3)
  {
    v69 = 4;
    valuePtr = 65280;
    v4 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
    v5 = CFNumberCreate(v2, kCFNumberSInt32Type, &v69);
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "photon");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPPhotometerManager::InitializeHIDEventSystemClientForALS(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    else
    {
      v23 = v5;
      *keys = xmmword_278531BE8;
      values[0] = v4;
      values[1] = v5;
      v24 = CFDictionaryCreate(v2, keys, values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v24)
      {
        v25 = v24;
        v67 = 65;
        v68 = 32;
        v66 = 2;
        v26 = CFNumberCreate(v2, kCFNumberSInt32Type, &v68);
        v27 = CFNumberCreate(v2, kCFNumberSInt32Type, &v67);
        v28 = CFNumberCreate(v2, kCFNumberSInt32Type, &v66);
        if (v26 && v27 && (v29 = v28) != 0)
        {
          *v72 = xmmword_278531BF8;
          v73 = @"Placement";
          v71[0] = v26;
          v71[1] = v27;
          v71[2] = v28;
          v30 = CFDictionaryCreate(v2, v72, v71, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v30)
          {
            v31 = v30;
            Mutable = CFArrayCreateMutable(v2, 2, MEMORY[0x277CBF128]);
            if (Mutable)
            {
              v33 = Mutable;
              CFArrayAppendValue(Mutable, v31);
              CFArrayAppendValue(v33, v25);
              IOHIDEventSystemClientSetMatchingMultiple();
              IOHIDEventSystemClientRegisterEventCallback();
              IOHIDEventSystemClientSetCancelHandler();
              IOHIDEventSystemClientSetDispatchQueue();
              IOHIDEventSystemClientActivate();
              CFRelease(v25);
              CFRelease(v31);
              CFRelease(v4);
              CFRelease(v26);
              CFRelease(v23);
              CFRelease(v27);
              CFRelease(v29);
              CFRelease(v33);
            }

            else
            {
              v58 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == MEMORY[0x277D86220])
              {
                v58 = os_log_create("com.apple.isp", "photon");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v58;
              }

              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                H16ISP::H16ISPPhotometerManager::InitializeHIDEventSystemClientForALS(v58, v59, v60, v61, v62, v63, v64, v65);
              }
            }
          }

          else
          {
            v50 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == MEMORY[0x277D86220])
            {
              v50 = os_log_create("com.apple.isp", "photon");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v50;
            }

            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              H16ISP::H16ISPPhotometerManager::InitializeHIDEventSystemClientForALS(v50, v51, v52, v53, v54, v55, v56, v57);
            }
          }
        }

        else
        {
          v42 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == MEMORY[0x277D86220])
          {
            v42 = os_log_create("com.apple.isp", "photon");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v42;
          }

          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPPhotometerManager::InitializeHIDEventSystemClientForALS(v42, v43, v44, v45, v46, v47, v48, v49);
          }
        }
      }

      else
      {
        v34 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == MEMORY[0x277D86220])
        {
          v34 = os_log_create("com.apple.isp", "photon");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v34;
        }

        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPPhotometerManager::InitializeHIDEventSystemClientForALS(v34, v35, v36, v37, v38, v39, v40, v41);
        }
      }
    }
  }

  else
  {
    v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == MEMORY[0x277D86220])
    {
      v15 = os_log_create("com.apple.isp", "photon");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v15;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPPhotometerManager::InitializeHIDEventSystemClientForALS(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }
}

void H16ISP::H16ISPPhotometerManager::~H16ISPPhotometerManager(H16ISP::H16ISPPhotometerManager *this)
{
  v2 = *(this + 2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN6H16ISP23H16ISPPhotometerManagerD2Ev_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);
  dispatch_sync(*(this + 2), &__block_literal_global_8);
  dispatch_release(*(this + 2));
  *(this + 2) = 0;
  if (*(this + 224) == 1)
  {
    v4 = *(this + 13);
    if (v4)
    {
      H16ISP::H16ISPDevice::H16ISPDeviceClose(v4);
      *(this + 13) = 0;
    }

    v5 = *(this + 12);
    if (v5)
    {
      H16ISP::DestroyH16ISPDeviceController(v5, v3);
    }
  }
}

H16ISPFlickerDetectorContext *___ZN6H16ISP23H16ISPPhotometerManagerD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 24) = 0;
  H16ISPFlickerDetectorRegisterDataCollectionCallback(*(v1 + 8), 0, 0);
  *(v1 + 32) = 0;
  bzero((v1 + 112), 0x68uLL);
  bzero((v1 + 232), 0x20uLL);
  *(v1 + 88) = 1065353216;
  if (*v1)
  {
    IOHIDEventSystemClientCancel();
  }

  result = *(v1 + 8);
  if (result)
  {
    H16ISPFlickerDetectorStopDataCollection(result);
    result = H16ISPFlickerDetectorDispose(*(v1 + 8));
    *(v1 + 8) = 0;
  }

  return result;
}

uint64_t H16ISP::H16ISPPhotometerManager::PhotometerAnalysisCallback(H16ISP::H16ISPPhotometerManager *this, H16ISPFlickerDetectorContext *a2, photometer_flicker_result *a3)
{
  v3 = *(this + 2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN6H16ISP23H16ISPPhotometerManager26PhotometerAnalysisCallbackEP28H16ISPFlickerDetectorContextP25photometer_flicker_result_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = this;
  block[5] = a3;
  block[6] = a2;
  dispatch_async(v3, block);
  return 0;
}

void ___ZN6H16ISP23H16ISPPhotometerManager26PhotometerAnalysisCallbackEP28H16ISPFlickerDetectorContextP25photometer_flicker_result_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    goto LABEL_34;
  }

  v3 = *(a1 + 48);
  if (v3 && *v3)
  {
    v4 = **v3;
    if (v4 == 10 || v4 == 6)
    {
      v6 = *(v2 + 208);
      v7 = v2 + 24 * v6;
      v8 = v3[37];
      *(v7 + 112) = *(v8 + 21);
      v9 = v7 + 112;
      *(v9 + 8) = *(v8 + 12);
      v10 = *(v2 + 56);
      if (v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = *(v2 + 225);
      }

      *(v9 + 16) = v11 | (4 * *(v8 + 112));
      *(v2 + 225) = v10;
      v12 = (v6 + 1) & 3;
      if (!v12 && (*(v2 + 212) & 1) == 0)
      {
        *(v2 + 212) = 1;
      }

      *(v2 + 208) = v12;
    }
  }

  v13 = mach_absolute_time();
  if ((*(v2 + 56) & 1) != 0 || (HIDWORD(v15) = 1041313291, LODWORD(v15) = *(v2 + 48), LODWORD(v14) = *(v2 + 52), (v13 - *(v2 + 64)) * 0.000000001 * v15 / v14 < 1.5))
  {
LABEL_34:
    v25 = *(a1 + 40);
    if (v25)
    {

      free(v25);
    }
  }

  else
  {
    if (*(v2 + 88) != 1.0)
    {
      *(v2 + 88) = 1065353216;
      H16ISPFlickerDetectorSetGain(*(v2 + 8), *(v2 + 88));
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = *(a1 + 48);
      if (v17)
      {
        v18 = *(v17 + 296);
        if (v18)
        {
          v16[21] = *(v18 + 84);
          v16[26] = *(v18 + 104);
          v19 = *(v2 + 32);
          if (v19)
          {
            v19(0, *(v2 + 40));
          }

          v20 = *(v2 + 104);
          if (v20)
          {
            if (H16ISP::H16ISPDevice::ISP_IsPowered(v20))
            {
              v21 = *(v2 + 104);
              memcpy(v26, *(a1 + 40), 0x110uLL);
              if (!H16ISP::H16ISPDevice::SetFlickerFrequency(v21, v26))
              {
                v22 = *(a1 + 40);
                *(v2 + 72) = *(v22 + 8);
                *(v2 + 80) = *(v22 + 4);
                v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == MEMORY[0x277D86220])
                {
                  v23 = os_log_create("com.apple.isp", "photon");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v23;
                }

                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  v24 = *(*(a1 + 40) + 8);
                  v26[0] = 134218240;
                  *&v26[1] = v24;
                  LOWORD(v26[3]) = 1024;
                  *(&v26[3] + 2) = 0;
                  _os_log_impl(&dword_2247DB000, v23, OS_LOG_TYPE_INFO, "SetFlickerFrequency: %6.2f Hz, deviceStatus 0x%08x \n", v26, 0x12u);
                }
              }
            }
          }

          v16 = *(a1 + 40);
          *(v2 + 232) = *(v16 + 1);
          *(v2 + 240) = *(v16 + 3);
          *(v2 + 248) = v16[21];
          *(v2 + 252) = *v16;
          *(v2 + 256) = v16[26] != 0;
          *(v2 + 257) = 1;
        }
      }
    }

    free(v16);
  }
}

uint64_t H16ISP::H16ISPPhotometerManager::PhotometerCommand(uint64_t a1, int a2)
{
  v2 = 3758097090;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v3 = *(a1 + 16);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = ___ZN6H16ISP23H16ISPPhotometerManager17PhotometerCommandENS_24PhotometerManagerCommandE_block_invoke_4;
        v10[3] = &__block_descriptor_40_e5_v8__0l;
        v10[4] = a1;
        v4 = v10;
        goto LABEL_13;
      case 4:
        v5 = *(a1 + 16);
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = ___ZN6H16ISP23H16ISPPhotometerManager17PhotometerCommandENS_24PhotometerManagerCommandE_block_invoke_5;
        v9[3] = &__block_descriptor_40_e5_v8__0l;
        v9[4] = a1;
        v6 = v9;
        break;
      case 5:
        v5 = *(a1 + 16);
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = ___ZN6H16ISP23H16ISPPhotometerManager17PhotometerCommandENS_24PhotometerManagerCommandE_block_invoke_6;
        v8[3] = &__block_descriptor_40_e5_v8__0l;
        v8[4] = a1;
        v6 = v8;
        break;
      default:
        return v2;
    }

    dispatch_async(v5, v6);
    return 3758097097;
  }

  switch(a2)
  {
    case 0:
      v3 = *(a1 + 16);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = ___ZN6H16ISP23H16ISPPhotometerManager17PhotometerCommandENS_24PhotometerManagerCommandE_block_invoke;
      v13[3] = &__block_descriptor_40_e5_v8__0l;
      v13[4] = a1;
      v4 = v13;
      goto LABEL_13;
    case 1:
      v3 = *(a1 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___ZN6H16ISP23H16ISPPhotometerManager17PhotometerCommandENS_24PhotometerManagerCommandE_block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      v4 = block;
      goto LABEL_13;
    case 2:
      v3 = *(a1 + 16);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = ___ZN6H16ISP23H16ISPPhotometerManager17PhotometerCommandENS_24PhotometerManagerCommandE_block_invoke_3;
      v11[3] = &__block_descriptor_40_e5_v8__0l;
      v11[4] = a1;
      v4 = v11;
LABEL_13:
      dispatch_async(v3, v4);
      return 0;
  }

  return v2;
}

uint64_t ___ZN6H16ISP23H16ISPPhotometerManager17PhotometerCommandENS_24PhotometerManagerCommandE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 56) = 1;
  *(v1 + 64) = mach_absolute_time();
  *(v1 + 225) = 1;
  v2 = *(v1 + 104);
  if (v2)
  {
    H16ISP::H16ISPDevice::ISP_SetStrobeState(v2, 1uLL);
  }

  v3 = *(v1 + 8);
  v4 = *(v1 + 88);

  return H16ISPFlickerDetectorSetGain(v3, v4);
}

H16ISP::H16ISPDevice *___ZN6H16ISP23H16ISPPhotometerManager17PhotometerCommandENS_24PhotometerManagerCommandE_block_invoke_2(H16ISP::H16ISPDevice *result)
{
  v1 = *(result + 4);
  if (*(v1 + 56) == 1)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = mach_absolute_time();
    result = *(v1 + 104);
    if (result)
    {

      return H16ISP::H16ISPDevice::ISP_SetStrobeState(result, 0);
    }
  }

  return result;
}

H16ISP::H16ISPDevice *___ZN6H16ISP23H16ISPPhotometerManager17PhotometerCommandENS_24PhotometerManagerCommandE_block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  H16ISPFlickerDetectorSetJasperState(*(v1 + 8), 1);
  result = *(v1 + 104);
  if (result)
  {

    return H16ISP::H16ISPDevice::ISP_SetLidarState(result, 1uLL);
  }

  return result;
}

H16ISP::H16ISPDevice *___ZN6H16ISP23H16ISPPhotometerManager17PhotometerCommandENS_24PhotometerManagerCommandE_block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  H16ISPFlickerDetectorSetJasperState(*(v1 + 8), 0);
  result = *(v1 + 104);
  if (result)
  {

    return H16ISP::H16ISPDevice::ISP_SetLidarState(result, 0);
  }

  return result;
}

uint64_t H16ISP::H16ISPPhotometerManager::SetIRSignalRateHint(H16ISP::H16ISPPhotometerManager *this, float a2)
{
  v2 = *(this + 2);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___ZN6H16ISP23H16ISPPhotometerManager19SetIRSignalRateHintEf_block_invoke;
  v4[3] = &__block_descriptor_44_e5_v8__0l;
  v4[4] = this;
  v5 = a2;
  dispatch_async(v2, v4);
  return 0;
}

float ___ZN6H16ISP23H16ISPPhotometerManager19SetIRSignalRateHintEf_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    result = *(a1 + 40);
    *(v1 + 408) = result;
  }

  return result;
}

uint64_t H16ISP::H16ISPPhotometerManager::GetLuxInfo(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x2020000000;
  v13 = 0;
  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
  v5 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "photon");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPPhotometerManager::GetLuxInfo();
  }

  v6 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN6H16ISP23H16ISPPhotometerManager10GetLuxInfoEP7luxInfo_block_invoke;
  block[3] = &unk_278531BA8;
  block[4] = &v11;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v6, block);
  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == v5)
  {
    v7 = os_log_create("com.apple.isp", "photon");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPPhotometerManager::GetLuxInfo(v12, v7);
  }

  v8 = *(v12[0] + 24);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t ___ZN6H16ISP23H16ISPPhotometerManager10GetLuxInfoEP7luxInfo_block_invoke(uint64_t result)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(result + 40);
  if (*(v1 + 8))
  {
    v2 = result;
    bzero(&v14, 0x10uLL);
    v14.tv_nsec = 175000000;
    v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
    v4 = MEMORY[0x277D86220];
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "photon");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___ZN6H16ISP23H16ISPPhotometerManager10GetLuxInfoEP7luxInfo_block_invoke_cold_1();
    }

    pthread_mutex_lock((*(v1 + 8) + 424));
    *(*(*(v2 + 32) + 8) + 24) = pthread_cond_timedwait_relative_np((*(v1 + 8) + 488), (*(v1 + 8) + 424), &v14);
    v5 = *(v2 + 32);
    if (*(*(v5 + 8) + 24))
    {
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog == v4)
      {
        v6 = os_log_create("com.apple.isp", "photon");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_photonLog = v6;
        v5 = *(v2 + 32);
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v13 = *(*(v5 + 8) + 24);
        *buf = 136315394;
        v16 = "GetLuxInfo_block_invoke";
        v17 = 1024;
        v18 = v13;
        _os_log_error_impl(&dword_2247DB000, v6, OS_LOG_TYPE_ERROR, "%s - timed wait on a condition returned %d\n", buf, 0x12u);
        v5 = *(v2 + 32);
      }

      *(*(v5 + 8) + 24) = -536870186;
      v7 = *(v1 + 8);
    }

    else
    {
      v7 = *(v1 + 8);
      if (v7 && (v8 = *(v7 + 296)) != 0)
      {
        v9 = *(v2 + 48);
        *(v9 + 8) = *(v8 + 96);
        *v9 = *(v8 + 84);
        v10 = *(v1 + 56);
        if (v10)
        {
          v11 = 1;
        }

        else
        {
          v11 = *(v1 + 225);
        }

        *(v9 + 16) = v11 | (2 * *(*(v7 + 416) + 1)) | (4 * *(v8 + 112));
        *(v1 + 225) = v10;
      }

      else
      {
        v12 = *(v2 + 48);
        *v12 = 0;
        *(v12 + 8) = 0;
        *(v12 + 16) = 0;
        *(*(*(v2 + 32) + 8) + 24) = -536870212;
      }
    }

    return pthread_mutex_unlock((v7 + 424));
  }

  return result;
}

uint64_t H16ISP::H16ISPPhotometerManager::GetCorrectionFactor(H16ISP::H16ISPPhotometerManager *this, double *a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -536870212;
  v2 = *(this + 2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN6H16ISP23H16ISPPhotometerManager19GetCorrectionFactorEPd_block_invoke;
  block[3] = &unk_278531BA8;
  block[5] = this;
  block[6] = a2;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

double ___ZN6H16ISP23H16ISPPhotometerManager19GetCorrectionFactorEPd_block_invoke(uint64_t a1)
{
  result = vcvtd_n_f64_u32(*(*(*(a1 + 40) + 8) + 564), 0xFuLL);
  **(a1 + 48) = result;
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t H16ISP::H16ISPPhotometerManager::GetLuxCache(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___ZNK6H16ISP23H16ISPPhotometerManager11GetLuxCacheEP8luxCache_block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_sync(v2, v4);
  return 0;
}

uint64_t H16ISP::H16ISPPhotometerManager::GetFlickerResult(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = ___ZN6H16ISP23H16ISPPhotometerManager16GetFlickerResultEP13flickerResult_block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_sync(v2, v4);
  return 0;
}

__n128 ___ZN6H16ISP23H16ISPPhotometerManager16GetFlickerResultEP13flickerResult_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  result = *(v1 + 232);
  v4 = *(v1 + 248);
  *v2 = result;
  *(v2 + 16) = v4;
  return result;
}

void ___ZN6H16ISP23H16ISPPhotometerManager36InitializeHIDEventSystemClientForALSEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  IOHIDEventSystemClientUnregisterEventCallback();
  IOHIDEventSystemClientCancel();
  CFRelease(*v1);
  *v1 = 0;
}

void H16ISP::LoadSavageDATFile(H16ISP *this, H16ISP::H16ISPDevice *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = 255;
  v3 = *MEMORY[0x277CD2898];
  v4 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(v3, v4);
  v27 = 0;
  v6 = [objc_msgSend(MEMORY[0x277D25710] "sharedDataAccessor")];
  v7 = v6;
  if (!this)
  {
    H16ISP::LoadSavageDATFile(v6);
    return;
  }

  if (!v6)
  {
    NSLog(&cfstr_PersonalizedFi.isa);
    return;
  }

  if (H16ISP::H16ISPDevice::isSavageSensorSupported(this, &v28))
  {
    v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:@"/private/var/tmp/usr/standalone/firmware/Savage/SavagePatch.DAT"];
    if (v8)
    {
      v23 = v8;
      NSLog(&cfstr_FoundSavageOve.isa, @"/private/var/tmp/usr/standalone/firmware/Savage/SavagePatch.DAT");
      v12 = 0;
      v10 = 0;
      v18 = 3722248192;
    }

    else
    {
      v9 = *MEMORY[0x277CBECE8];
      v10 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageDeviceRev", *MEMORY[0x277CBECE8], 0);
      v11 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"SavageMNS", v9, 0);
      v12 = v11;
      if (v10)
      {
        v13 = v11 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        NSLog(&cfstr_IrSensorNotDet.isa);
        v25 = 0;
        v24 = 0;
        v18 = 3149594624;
        goto LABEL_19;
      }

      v14 = CFGetTypeID(v10);
      if (v14 != CFDataGetTypeID() || (v15 = CFGetTypeID(v12), v15 != CFDataGetTypeID()))
      {
        v25 = 0;
        goto LABEL_21;
      }

      CFDataGetBytePtr(v10);
      BytePtr = CFDataGetBytePtr(v12);
      v17 = "Dev";
      if (BytePtr && *BytePtr == 10)
      {
        v17 = "Prod";
      }

      v18 = 2863267840;
      snprintf(__str, 0x400uLL, "Savage/SavagePatch%s.DAT", v17);
      v19 = [v7 stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", __str)}];
      NSLog(&cfstr_DatFileForUnpr.isa, v19);
      v20 = [v7 stringByAppendingPathComponent:@"/Savage/SavagePatch.DAT"];
      NSLog(&cfstr_DatFileForProv.isa, v20);
      v21 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v19];
      if (v21)
      {
        v23 = v21;
        NSLog(&cfstr_LoadingDatFile.isa);
      }

      else
      {
        v22 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v20];
        if (!v22)
        {
          NSLog(&cfstr_NoDatFileForSa.isa);
          v25 = 0;
          v24 = 0;
          v18 = 3435921408;
          goto LABEL_19;
        }

        v23 = v22;
      }
    }

    v24 = [v23 length];
    v25 = malloc_type_calloc(v24, 1uLL, 0x100004077774924uLL);
    if (!v25)
    {
      goto LABEL_20;
    }

    [v23 getBytes:v25 length:v24];
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v12 = 0;
    v10 = 0;
    v18 = 4008574976;
  }

LABEL_19:
  DataFile = H16ISP::H16ISPDevice::ISP_LoadDataFile(this, v28 | 0x80000000, v25, v24, v18 | 5);
  NSLog(&cfstr_LoadSavageDatF.isa, v24, DataFile, v18);
LABEL_20:
  if (v12)
  {
LABEL_21:
    CFRelease(v12);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  CFRelease(v7);
  if (v25)
  {
    free(v25);
  }
}

void H16ISP::LoadYonkersDATFile(H16ISP *this, H16ISP::H16ISPDevice *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = 2;
  v3 = *MEMORY[0x277CD2898];
  v4 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(v3, v4);
  v31 = 0;
  v6 = [objc_msgSend(MEMORY[0x277D25710] "sharedDataAccessor")];
  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:@"/private/var/tmp/usr/standalone/firmware/Yonkers/YonkersPatch.DAT"];
  if (!this)
  {
    NSLog(&cfstr_PdeviceIsNull.isa);
    if (!v6)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!v6)
  {
    NSLog(&cfstr_PersonalizedFi.isa);
    return;
  }

  v8 = v7;
  if (v7)
  {
    NSLog(&cfstr_FoundYonkersOv.isa, @"/private/var/tmp/usr/standalone/firmware/Yonkers/YonkersPatch.DAT");
    v12 = 0;
    v10 = 0;
    v23 = 3722248192;
    goto LABEL_29;
  }

  if (!H16ISP::H16ISPDevice::isYonkersSensorSupported(this, &v32))
  {
LABEL_41:
    CFRelease(v6);
    return;
  }

  v9 = *MEMORY[0x277CBECE8];
  v10 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"YonkersFabRevision", *MEMORY[0x277CBECE8], 0);
  v11 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"YonkersMNS", v9, 0);
  v12 = v11;
  if (v11)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    NSLog(&cfstr_SecureRgbSenso.isa);
    v29 = 0;
    v28 = 0;
    v23 = 3149594624;
    goto LABEL_31;
  }

  v14 = CFGetTypeID(v11);
  if (v14 != CFDataGetTypeID() || (v15 = CFGetTypeID(v10), v15 != CFDataGetTypeID()))
  {
    v29 = 0;
    goto LABEL_33;
  }

  BytePtr = CFDataGetBytePtr(v10);
  if (BytePtr)
  {
    v17 = __rev16(*BytePtr);
    v18 = "Ymgt";
    v20 = v17 == 54529 || v17 == 59905 || v17 == 61953;
    if (!v20 && v17 != 56577)
    {
      v18 = "Ngsk";
    }
  }

  else
  {
    v18 = "Ngsk";
  }

  v21 = CFDataGetBytePtr(v12);
  v22 = "Dev";
  if (v21 && *v21 == 8)
  {
    v22 = "Prod";
  }

  v23 = 2863267840;
  snprintf(__str, 0x400uLL, "Yonkers/YonkersPatch%s%s.DAT", v18, v22);
  v24 = [v6 stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", __str)}];
  NSLog(&cfstr_DatFileForUnpr_0.isa, v24);
  v25 = [v6 stringByAppendingPathComponent:@"/Yonkers/YonkersPatch.DAT"];
  NSLog(&cfstr_DatFileForProv_0.isa, v25);
  v26 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v24];
  if (v26)
  {
    v8 = v26;
    NSLog(&cfstr_LoadingDatFile_0.isa);
  }

  else
  {
    v27 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v25];
    if (!v27)
    {
      NSLog(&cfstr_NoDatFileForYo.isa);
      v29 = 0;
      v28 = 0;
      v23 = 3435921408;
      goto LABEL_31;
    }

    v8 = v27;
  }

LABEL_29:
  v28 = [v8 length];
  v29 = malloc_type_calloc(v28, 1uLL, 0x100004077774924uLL);
  if (!v29)
  {
    goto LABEL_32;
  }

  [v8 getBytes:v29 length:v28];
LABEL_31:
  DataFile = H16ISP::H16ISPDevice::ISP_LoadDataFile(this, v32 | 0x80000000, v29, v28, v23 | 5);
  NSLog(&cfstr_LoadYonkersDat.isa, v28, DataFile, v23);
LABEL_32:
  if (v12)
  {
LABEL_33:
    CFRelease(v12);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  CFRelease(v6);
  if (v29)
  {
    free(v29);
  }
}

void analyze_flicker_Hawking(DSPComplex *a1, int a2, float a3, float *a4, float *a5, float *a6, OpaqueFFTSetup **a7)
{
  v80 = *MEMORY[0x277D85DE8];
  v13 = (1 << a2) / 2;
  v14 = v13 + 1;
  v15 = ((1 << a2) + ((1 << a2) >> 31)) >> 1;
  __Z.realp = a6;
  __Z.imagp = &a6[v13 + 1];
  vDSP_ctoz(a1, 2, &__Z, 1, v15);
  vDSP_fft_zrip(*a7, &__Z, 1, a2, 1);
  imagp = __Z.imagp;
  __Z.realp[v13] = *__Z.imagp;
  imagp[v13] = 0.0;
  *imagp = 0.0;
  v17 = v13 + 1;
  vDSP_zvabs(&__Z, 1, a1, 1, v17);
  v18 = a3 * 0.5;
  v19 = v13;
  vDSP_vclr(a1, 1, fmin((((v13 + 1) * 90.0) / v18), v13));
  v79 = 0;
  v77[1] = 0;
  __C = 0;
  __I = 0;
  v77[0] = 0;
  vDSP_maxvi(a1, 1, &__C, &__I, v15);
  v20 = 0;
  v21 = fmin(v13, fmax(__I, 1.0));
  v22 = v21;
  v23 = *(&a1->real + v21);
  v24 = v21;
  v25 = v21 - 1;
  v26 = *(&a1->real + v25);
  v27 = v22 + 1;
  v28 = v23 * v24;
  if (v26 <= *(&a1->real + v27))
  {
    LODWORD(v25) = v27;
    v26 = *(&a1->real + v27);
  }

  v29 = (v23 + v26) + 0.0000001;
  v30 = (v28 + (v26 * v25)) / v29;
  while (1)
  {
    v73 = 0.0;
    v72 = 0;
    v31 = *&dword_2249D2240[v20];
    v32 = (v30 * v31) + -1.0;
    v33 = v32 >= 0.0 ? v32 : 0;
    vDSP_maxvi(a1 + v33, 1, &v73, &v72, 3uLL);
    v34 = v33 + v72;
    v72 += v33;
    if (*&__C > 0.0 && (v73 / *&__C) > 0.1)
    {
      break;
    }

    if (++v20 == 4)
    {
      goto LABEL_12;
    }
  }

  v30 = v30 * v31;
  __I = v34;
LABEL_12:
  v35 = 0;
  memset(v75, 0, 60);
  v36 = v13;
  v37 = *&__C * 0.08;
  do
  {
    if (v35 == 15)
    {
      break;
    }

    v38 = v30 * (v35 + 1);
    if (v38 >= v36)
    {
      break;
    }

    v39 = fmax((v38 + -7.0), 0.0);
    v40 = fmin(v19, (v38 + 7.0));
    v41 = *(v75 + v35);
    if (v40 > v39)
    {
      v42 = a1 + v39;
      v43 = v39 + 1;
      do
      {
        v44 = *v42++;
        v45 = v44;
        if (v41 < v44)
        {
          v41 = v45;
        }

        v46 = v43++;
      }

      while (v40 > v46);
      *(v75 + v35) = v41;
    }

    ++v35;
  }

  while (v41 >= v37);
  v47 = 0;
  do
  {
    v48 = v30 * ++v47;
    if (v48 >= v36)
    {
      break;
    }

    v49 = fmax((v48 + -7.0), 0.0);
    v50 = fmin(v19, (v48 + 7.0));
    if (v50 > v49)
    {
      v51 = a1 + v49;
      v52 = v49 + 1;
      do
      {
        *v51++ = 0.0;
        --v14;
        v53 = v52++;
      }

      while (v50 > v53);
    }
  }

  while (v47 != 15);
  vDSP_maxvi(a1, 1, &__C + 1, v77, v17);
  v71 = 0.0;
  vDSP_meanv(a1, 1, &v71, v17);
  v54 = fmin(v19, fmax(v77[0], 1.0));
  v55 = *(a1 + v54 - 1);
  v56 = v54 + 1;
  v57 = *(&a1->real + v56);
  v58 = *(&a1->real + v54);
  v59 = v58 * v54;
  if (v55 <= v57)
  {
    v60 = v54 + 1;
  }

  else
  {
    v60 = v54 - 1;
  }

  if (v55 <= v57)
  {
    v55 = *(&a1->real + v56);
  }

  v61 = v59 + (v55 * v60);
  v62 = (v58 + v55) + 0.0000001;
  v63 = v61 / v62;
  v64 = fmax(v14, 1.0);
  v65 = ((v13 + 1) / v64) * v71;
  v66 = v18 * v30 / v19;
  *a4 = v66;
  if (v65 == 0.0)
  {
    *a5 = 0.0;
    v70 = v18 * v63 / v19;
    a4[1] = v70;
    v69 = 0.0;
  }

  else
  {
    v67 = *(&__C + 1);
    *a5 = *&__C / v65;
    v68 = v18 * v63 / v19;
    a4[1] = v68;
    v69 = v67 / v65;
  }

  a5[1] = v69;
  a4[2] = a4[1];
  a5[2] = a5[1];
}

uint64_t flicker_temporal_filter_Hawking(float a1, float a2, float a3, float a4, float *a5, CPastFlickerHistory *a6)
{
  v10 = *a6;
  v11 = *(a6 + 1);
  v12 = (*a6 & 0xFFFFFFFD) == 5 || v10 == 3;
  v13 = (a6 + 12);
  v14 = *(a6 + 2);
  *(a6 + v14 + 3) = a1;
  v15 = a6 + 76;
  *(a6 + v14 + 19) = a2;
  if (v12)
  {
    v16 = v10;
  }

  else
  {
    v16 = 5;
  }

  v17 = fmin((v11 + 1), v16);
  *(a6 + 1) = v17;
  if (v17 <= 0)
  {
    *a5 = 0.0;
    goto LABEL_21;
  }

  v18 = v16 + v14;
  LOBYTE(v19) = 1;
  v20 = v17;
  LOBYTE(v21) = 1;
  do
  {
    v22 = v18 % v16;
    if (v21 && vabds_f32(a1, v13[v22]) < 2.0)
    {
      v21 = *&v15[4 * v22] > 15.0;
      if (!v19)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v21 = 0;
      if (!v19)
      {
LABEL_12:
        v19 = 0;
        goto LABEL_15;
      }
    }

    v19 = *&v15[4 * v22] < 6.0;
LABEL_15:
    --v18;
    --v20;
  }

  while (v20);
  *a5 = 0.0;
  if (v21)
  {
LABEL_21:
    *a5 = medianFilter(v13, v17);
    v17 = *(a6 + 1);
    result = 1;
    goto LABEL_22;
  }

  if (v19)
  {
    result = 3;
  }

  else
  {
    result = 0;
  }

LABEL_22:
  v24 = *(a6 + 2);
  if (v17 >= 2)
  {
    a3 = (*(a6 + (v16 + v24 - 1) % v16 + 35) * 0.382) + (a3 * 0.618);
  }

  v25 = (a6 + 4 * v24);
  v25[35] = a3;
  v25[51] = a4;
  *(a6 + 2) = (v24 + 1) % v16;
  return result;
}

float medianFilter(float *a1, int a2)
{
  if (a2 == 2)
  {
    return (*a1 + a1[1]) * 0.5;
  }

  if (a2 == 1)
  {
    return *a1;
  }

  if ((a2 - 3) > 1)
  {
    if ((a2 - 5) > 1)
    {
      result = 0.0;
      if (a2 == 7)
      {
        v23 = a1[1];
        v25 = a1[4];
        v24 = a1[5];
        v26 = fminf(*a1, v24);
        v27 = fmaxf(*a1, v24);
        v29 = a1[2];
        v28 = a1[3];
        v30 = fminf(v26, v28);
        v31 = fmaxf(v26, v28);
        v32 = a1[6];
        v33 = fminf(v23, v32);
        v34 = fmaxf(v23, v32);
        v35 = fminf(v29, v25);
        v36 = fmaxf(v29, v25);
        v37 = fminf(v30, v33);
        v38 = fmaxf(v30, v33);
        v39 = fminf(v31, v27);
        v40 = fmaxf(v31, v27);
        v41 = fminf(v35, v34);
        v42 = fmaxf(v35, v34);
        v43 = fminf(v41, v39);
        v44 = fmaxf(v41, v39);
        v45 = fminf(v44, v42);
        a1[6] = fmaxf(v44, v42);
        v46 = fminf(v36, v40);
        v47 = fmaxf(v36, v40);
        v48 = fminf(v38, v46);
        v49 = fmaxf(v38, v46);
        *a1 = v37;
        a1[1] = fminf(v48, v45);
        v50 = fmaxf(v48, v45);
        result = fminf(v50, v49);
        a1[2] = v43;
        a1[3] = result;
        a1[4] = fmaxf(v50, v49);
        a1[5] = v47;
      }
    }

    else
    {
      v8 = a1[1];
      v9 = fminf(*a1, v8);
      v10 = fmaxf(*a1, v8);
      v12 = a1[3];
      v11 = a1[4];
      v13 = a1[2];
      v14 = fminf(v12, v11);
      v15 = fmaxf(v12, v11);
      v16 = fminf(v9, v14);
      v17 = fmaxf(v9, v14);
      v18 = fminf(v10, v15);
      v19 = fmaxf(v10, v15);
      v20 = fminf(v18, v13);
      *a1 = v16;
      a1[1] = v20;
      v21 = fmaxf(v18, v13);
      v22 = fminf(v21, v17);
      a1[2] = v22;
      a1[3] = fmaxf(v21, v17);
      a1[4] = v19;
      return fmaxf(v20, v22);
    }
  }

  else
  {
    v3 = a1[1];
    v4 = fminf(*a1, v3);
    v5 = fmaxf(*a1, v3);
    v6 = a1[2];
    v7 = fminf(v5, v6);
    *a1 = v4;
    a1[1] = v7;
    a1[2] = fmaxf(v5, v6);
    return fmaxf(v4, v7);
  }

  return result;
}

void analyze_flicker(DSPComplex *a1, int a2, float a3, float *a4, float *a5, float *a6, OpaqueFFTSetup **a7)
{
  v94 = *MEMORY[0x277D85DE8];
  v13 = 1 << a2;
  v14 = (1 << a2) / 2;
  v15 = v14 + 1;
  __Z.realp = a6;
  __Z.imagp = &a6[v14 + 1];
  v87 = 1056780059;
  MEMORY[0x22AA56F30](a1, 1, &v87, a1, 1, 1 << a2);
  vDSP_ctoz(a1, 2, &__Z, 1, (v13 + (v13 >> 31)) >> 1);
  vDSP_fft_zrip(*a7, &__Z, 1, a2, 1);
  imagp = __Z.imagp;
  __Z.realp[v14] = *__Z.imagp;
  imagp[v14] = 0.0;
  *imagp = 0.0;
  v17 = v14 + 1;
  vDSP_zvabs(&__Z, 1, a1, 1, v17);
  v18 = (v14 + 1);
  v19 = a3 * 0.5;
  v20 = v14;
  v21 = fmin(((v18 * 90.0) / v19), v14);
  real = a1->real;
  vDSP_vclr(a1, 1, v21);
  v93 = 0;
  v91[1] = 0;
  __C = 0;
  __I = 0;
  v91[0] = 0;
  vDSP_maxvi(a1, 1, &__C, &__I, (v13 + (v13 >> 31)) >> 1);
  v23 = fmin(v14, fmax(__I, 1.0));
  v24 = *(a1 + v23 - 1);
  v25 = v23 + 1;
  v26 = *(&a1->real + v25);
  v27 = *(&a1->real + v23);
  v28 = v27 * v23;
  if (v24 <= v26)
  {
    v29 = v23 + 1;
  }

  else
  {
    v29 = v23 - 1;
  }

  if (v24 <= v26)
  {
    v24 = *(&a1->real + v25);
  }

  v30 = v28 + (v24 * v29);
  v31 = (v27 + v24) + 0.0000001;
  v32 = v30 / v31;
  v86 = 0.0;
  v85 = 0;
  v33 = *&__C;
  v34 = (*&__C * 1024.0) / v13;
  if (v34 <= 0.1)
  {
    v39 = 0.06;
  }

  else if (v34 >= 100.0)
  {
    v39 = 0.03;
  }

  else
  {
    v35 = 1;
    v36 = 1;
    do
    {
      v37 = v36;
      v38 = flt_2249D2250[v36];
      if ((v35 & 1) == 0)
      {
        break;
      }

      v35 = 0;
      v36 = 2;
    }

    while (v38 < v34);
    v39 = flt_2249D225C[v37 - 1] + (((flt_2249D225C[v37] - flt_2249D225C[v37 - 1]) * (v34 - flt_2249D2250[v37 - 1])) / (v38 - flt_2249D2250[v37 - 1]));
  }

  v40 = vcvtms_u32_f32(v32 / v21);
  if (v40 <= 1)
  {
    v40 = 1;
  }

  v41 = v40 - 1;
  if (v40 != 1)
  {
    v83 = v19;
    v42 = 0;
    v43 = v40;
    while (1)
    {
      v44 = 1.0 / (v43 - v42);
      v86 = 0.0;
      v85 = 0;
      v45 = (v32 * v44) + -1.0;
      v46 = 0.0;
      if (v45 < 0.0)
      {
        v45 = 0.0;
      }

      v47 = v45;
      vDSP_maxvi(a1 + v47, 1, &v86, &v85, 3uLL);
      v48 = v85 + v47;
      v85 += v47;
      v33 = *&__C;
      v49 = 0.0;
      if (*&__C > 0.0)
      {
        v49 = v86 / *&__C;
      }

      v50 = (v32 * v44) + -3.0;
      if (v50 < 0.0)
      {
        v50 = 0.0;
      }

      v51 = v50;
      v52 = 6;
      v53 = 0.0;
      do
      {
        if (v48 != v51)
        {
          v53 = v53 + *(&a1->real + v51);
          v46 = v46 + 1.0;
        }

        ++v51;
        --v52;
      }

      while (v52);
      if (v46 >= 1.0)
      {
        v54 = v46;
      }

      else
      {
        v54 = 1.0;
      }

      v55 = v53 / v54;
      if (v55 <= 0.0)
      {
        v55 = 1.0;
      }

      if (v49 > v39 && (v86 / v55) > 1.5)
      {
        break;
      }

      if (++v42 == v41)
      {
        goto LABEL_38;
      }
    }

    v32 = v32 * v44;
    __I = v48;
LABEL_38:
    v19 = v83;
    v18 = v15;
  }

  v56 = 0;
  memset(v89, 0, 60);
  v57 = v14;
  v58 = v33 * 0.08;
  do
  {
    if (v56 == 15)
    {
      break;
    }

    v59 = v32 * (v56 + 1);
    if (v59 >= v57)
    {
      break;
    }

    v60 = fmax((v59 + -7.0), 0.0);
    v61 = fmin(v20, (v59 + 7.0));
    v62 = *(v89 + v56);
    if (v61 > v60)
    {
      do
      {
        if (v62 < *(&a1->real + v60))
        {
          v62 = *(&a1->real + v60);
        }

        ++v60;
      }

      while (v61 > v60);
      *(v89 + v56) = v62;
    }

    ++v56;
  }

  while (v62 >= v58);
  v63 = 0;
  do
  {
    v64 = v32 * ++v63;
    if (v64 >= v57)
    {
      break;
    }

    v65 = fmax((v64 + -7.0), 0.0);
    v66 = fmin(v20, (v64 + 7.0));
    while (v66 > v65)
    {
      *(&a1->real + v65) = 0;
      --v15;
      ++v65;
    }
  }

  while (v63 != 15);
  vDSP_maxvi(a1, 1, &__C + 1, v91, v17);
  v84 = 0.0;
  vDSP_meanv(a1, 1, &v84, v17);
  v67 = 1.0;
  v68 = fmin(v20, fmax(v91[0], 1.0));
  v69 = v68 - 1;
  v70 = *(&a1->real + v69);
  v71 = *(&a1->imag + v68);
  v72 = *(&a1->real + v68);
  v73 = fmax(v15, 1.0);
  v74 = (v18 / v73) * v84;
  v75 = v19 * v32 / v20;
  *a4 = v75;
  v76 = *&__C;
  if (v74 == 0.0)
  {
    v77 = 0.0;
    v78 = 0.0;
  }

  else
  {
    v77 = *&__C / v74;
    v78 = *(&__C + 1) / v74;
  }

  if (v70 <= v71)
  {
    v70 = v71;
    LODWORD(v69) = v68 + 1;
  }

  v79 = (v72 * v68) + (v70 * v69);
  v80 = (v72 + v70) + 0.0000001;
  v81 = v19 * (v79 / v80) / v20;
  *a5 = v77;
  a4[1] = v81;
  a5[1] = v78;
  if (v76 > 0.0)
  {
    v67 = v76;
  }

  v82 = real / v67;
  a4[2] = v82;
  a5[2] = a5[1];
}

uint64_t flicker_temporal_filter_Penrose(float a1, float a2, float a3, float a4, float a5, float *a6, float *a7, CPastFlickerHistory *a8, double a9)
{
  v13 = a9;
  v14 = 1.0;
  if (v13 > 3000.0)
  {
    v14 = 0.625;
    if (v13 < 12000.0)
    {
      v14 = (((v13 + -3000.0) * -0.375) / 9000.0) + 1.0;
    }
  }

  v15 = v14 * a2;
  v16 = *a8;
  v17 = *(a8 + 1);
  v18 = (*a8 & 0xFFFFFFFD) == 5 || v16 == 3;
  v19 = a8 + 12;
  v20 = *(a8 + 2);
  *(a8 + v20 + 3) = a1;
  v21 = a8 + 76;
  *(a8 + v20 + 19) = v15;
  v22 = a8 + 268;
  *(a8 + v20 + 67) = a5;
  if (v18)
  {
    v23 = v16;
  }

  else
  {
    v23 = 5;
  }

  if (v17 + 1 < v23)
  {
    v24 = v17 + 1;
  }

  else
  {
    v24 = v23;
  }

  *(a8 + 1) = v24;
  v25 = v24 - 1;
  if (v24 > 1)
  {
    v26 = v23 + v20 - 1;
    while (1)
    {
      v27 = v26 % v23;
      v28 = *&v19[4 * (v26 % v23)];
      if (v28 < a1 && v28 > 0.0)
      {
        v29 = fabsf(a1 / v28);
        if (v29 > 1.9 && vabds_f32(a1 / v28, v29) < 0.05)
        {
          break;
        }
      }

      --v26;
      if (!--v25)
      {
        goto LABEL_20;
      }
    }

    if (v15 < (*&v21[4 * v27] * 1.25))
    {
      *&v19[4 * v20] = v28;
    }

    a1 = *&v19[4 * v27];
  }

LABEL_20:
  if (v24 < 1)
  {
    *a6 = 0.0;
    goto LABEL_37;
  }

  v30 = v23 + v20;
  LOBYTE(v31) = 1;
  v32 = v24;
  LOBYTE(v33) = 1;
  do
  {
    v34 = v30 % v23;
    if (v31 && vabds_f32(a1, *&v19[4 * v34]) < 2.0 && *&v21[4 * v34] > 15.0)
    {
      v31 = *&v22[4 * v34] < 300.0;
      if (!v33)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v31 = 0;
      if (!v33)
      {
LABEL_26:
        v33 = 0;
        goto LABEL_31;
      }
    }

    v33 = *&v21[4 * v34] < 6.0 || *&v22[4 * v34] > 400.0;
LABEL_31:
    --v30;
    --v32;
  }

  while (v32);
  *a6 = 0.0;
  if (v31)
  {
LABEL_37:
    v36 = *&v19[4 * v20];
    *&v19[4 * v20] = a1;
    *a6 = medianFilter(a8 + 3, v24);
    v24 = *(a8 + 1);
    *&v19[4 * *(a8 + 2)] = v36;
    v35 = 1;
    goto LABEL_38;
  }

  if (v33)
  {
    v35 = 3;
  }

  else
  {
    v35 = 0;
  }

LABEL_38:
  __C = 0.0;
  vDSP_meanv(a8 + 19, 1, &__C, v24);
  *a7 = __C;
  v37 = *(a8 + 2);
  if (*(a8 + 1) >= 2)
  {
    a3 = (*(a8 + (v23 + v37 - 1) % v23 + 35) * 0.382) + (a3 * 0.618);
  }

  v38 = (a8 + 4 * v37);
  v38[35] = a3;
  v38[51] = a4;
  *(a8 + 2) = (v37 + 1) % v23;
  return v35;
}

float meanFilter(const float *a1, vDSP_Length __N)
{
  __C = 0.0;
  vDSP_meanv(a1, 1, &__C, __N);
  return __C;
}

float32x4_t *waveMatching(float32x4_t *result, unint64_t a2, float a3, float *a4, float *a5, unsigned int a6)
{
  if (a6)
  {
    v6 = 0;
    v7 = a6;
    v8 = 1;
    do
    {
      a5[v6] = 0.0;
      v9 = a4[v6];
      if (v9 <= 0.0)
      {
        v18 = v8;
      }

      else
      {
        v10 = (((a3 / v9) * ((a2 / (a3 / v9)) / 5.0)) + 0.5);
        if (v10 >= a2)
        {
          v11 = a2;
        }

        else
        {
          v11 = v10;
        }

        v12 = v11 & 0xFFFFFFFC;
        if (v12 < 1)
        {
          v17 = 0;
          v14 = 0uLL;
        }

        else
        {
          v13 = 0;
          v14 = 0uLL;
          v15 = result;
          do
          {
            v16 = *v15++;
            v14 = vmlaq_f32(v14, v16, v16);
            v13 += 4;
          }

          while (v13 < v12);
          v17 = v13;
        }

        v19 = v14.f32[3] + (v14.f32[2] + vaddv_f32(*v14.f32));
        if (v17 < v11)
        {
          v20 = v11 - v17;
          v21 = &result->f32[v17];
          do
          {
            v22 = *v21++;
            v19 = v19 + (v22 * v22);
            --v20;
          }

          while (v20);
        }

        v18 = v8 + 4;
        v23 = 0.0;
        v24 = v8;
        v25 = v10;
        v26 = result;
        do
        {
          v27 = v19;
          v28 = result->i64 + 4 * v25;
          v29 = ~v25 + a2;
          if (v29 <= v10)
          {
            v29 = v29;
          }

          else
          {
            v29 = v10;
          }

          v30 = v29 & 0xFFFFFFFC;
          if (v30 < 1)
          {
            v38 = 0;
            v32 = 0uLL;
          }

          else
          {
            v31 = 0;
            v32 = 0uLL;
            v33 = v26;
            v34 = (result + 4 * v25);
            do
            {
              v35 = *v33++;
              v36 = v35;
              v37 = *v34++;
              v32 = vmlaq_f32(v32, v37, v36);
              v31 += 4;
            }

            while (v31 < v30);
            v38 = v31;
          }

          v39 = v25;
          v40 = v32.f32[3] + (v32.f32[2] + vaddv_f32(*v32.f32));
          if (v38 < v29)
          {
            v41 = v29 - v38;
            v42 = &result->f32[v38 + v39];
            v43 = (v26 + 4 * v38);
            do
            {
              v44 = *v43++;
              v45 = v44;
              v46 = *v42++;
              v40 = v40 + (v45 * v46);
              --v41;
            }

            while (v41);
          }

          if (v30 < 1)
          {
            v51 = 0;
            v48 = 0uLL;
          }

          else
          {
            v47 = 0;
            v48 = 0uLL;
            v49 = (result + 4 * v25);
            do
            {
              v50 = *v49++;
              v48 = vmlaq_f32(v48, v50, v50);
              v47 += 4;
            }

            while (v47 < v30);
            v51 = v47;
          }

          v19 = v48.f32[3] + (v48.f32[2] + vaddv_f32(*v48.f32));
          if (v51 < v29)
          {
            v52 = v29 - v51;
            v53 = &result->f32[v51 + v39];
            do
            {
              v54 = *v53++;
              v19 = v19 + (v54 * v54);
              --v52;
            }

            while (v52);
          }

          v55 = 0.0;
          if (fabsf(v27) > 0.001 && fabsf(v19) > 0.001)
          {
            v55 = (fabsf(v40) / sqrtf(v27)) / sqrtf(v19);
          }

          v25 += v10;
          v23 = v23 + v55;
          ++v24;
          v26 = v28;
        }

        while (v24 != v18);
        if (v18 > 1)
        {
          a5[v6] = v23 / (v8 + 3);
        }
      }

      ++v6;
      v8 = v18;
    }

    while (v6 != v7);
  }

  return result;
}

float fun_vector_dotpr_float(float *a1, float *a2, int a3)
{
  v3 = a3 & 0xFFFFFFFC;
  if (v3 < 1)
  {
    LODWORD(v4) = 0;
    v5 = 0uLL;
  }

  else
  {
    v4 = 0;
    v5 = 0uLL;
    v6 = a1;
    v7 = a2;
    do
    {
      v8 = *v6;
      v6 += 4;
      v9 = v8;
      v10 = *v7;
      v7 += 4;
      v5 = vmlaq_f32(v5, v10, v9);
      v4 += 4;
    }

    while (v4 < v3);
  }

  result = v5.f32[3] + (v5.f32[2] + vaddv_f32(*v5.f32));
  if (v4 < a3)
  {
    v12 = &a2[v4];
    v13 = &a1[v4];
    v14 = a3 - v4;
    do
    {
      v15 = *v13++;
      v16 = v15;
      v17 = *v12++;
      result = result + (v16 * v17);
      --v14;
    }

    while (v14);
  }

  return result;
}

void mem_free(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }
}

uint64_t my_log2(int a1)
{
  if (a1 < 2)
  {
    return 0;
  }

  LODWORD(v1) = 0;
  do
  {
    a1 >>= 1;
    v1 = (v1 + 1);
  }

  while (a1 > 1);
  return v1;
}

void fun_get_histogram(const float *a1, int a2, int a3, int *a4, float *a5)
{
  v9 = a1;
  __C = 0;
  v10 = a2;
  vDSP_maxv(a1, 1, &__C + 1, a2);
  vDSP_minv(v9, 1, &__C, v10);
  v11 = *&__C;
  v12 = (*(&__C + 1) - *&__C) / a3;
  if (v12 == 0.0)
  {
    v12 = 0.0000001;
  }

  if (a3 >= 1)
  {
    v13 = 0;
    do
    {
      a5[v13] = v11 + (v13 * v12);
      a4[v13++] = 0;
    }

    while (a3 != v13);
  }

  if (a2 >= 1)
  {
    v14 = a2;
    do
    {
      v15 = *v9++;
      v16 = vcvtms_s32_f32((v15 - v11) / v12);
      if (v16 >= a3)
      {
        v16 = a3 - 1;
      }

      ++a4[v16];
      --v14;
    }

    while (v14);
  }
}

float fun_get_threshold_histogram(int *a1, int a2, float *a3, float result, float *a5)
{
  if (a2 >= 1)
  {
    v5 = 0;
    v6 = a2;
    v7 = a2;
    v8 = a1;
    do
    {
      v9 = *v8++;
      v5 += v9;
      --v7;
    }

    while (v7);
    result = v5 * result;
    while (1)
    {
      v10 = *a1++;
      LODWORD(v7) = v10 + v7;
      if (result <= v7)
      {
        break;
      }

      ++a3;
      if (!--v6)
      {
        return result;
      }
    }

    result = *a3;
    *a5 = *a3;
  }

  return result;
}

float fun_signal_noise_ratio(int a1, float *a2, int a3, float a4, int a5, float a6, float *a7)
{
  v8 = (a5 >> 1);
  v9 = a3;
  v10 = ((a4 / v8) * a3) + 0.5;
  v11 = v10;
  v12 = v10 <= 1.0;
  v13 = 1.0;
  if (!v12)
  {
    v13 = v11;
  }

  v14 = ((v9 / v13) + 0.5);
  if (v14 < 1)
  {
    v16 = 0.0;
  }

  else
  {
    v15 = 0;
    v16 = 0.0;
    do
    {
      v17 = (((++v15 * a4) / v8) * v9) + 0.5;
      v18 = (v17 - a1) & ~((v17 - a1) >> 31);
      v19 = v17 + a1;
      if (v19 >= a3 - 1)
      {
        v19 = a3 - 1;
      }

      if (v18 <= v19)
      {
        v20 = (v19 + 1);
        v21 = &a2[v18];
        v22 = v20 - v18;
        do
        {
          v23 = *v21++;
          v16 = v16 + (v23 * v23);
          --v22;
        }

        while (v22);
      }
    }

    while (v15 != v14);
  }

  result = log10f(v16 / a6) * 10.0;
  *a7 = result;
  return result;
}

float fun_dc_ratio(int a1, float *a2, int a3, float a4, int a5, float a6, float *a7, float a8)
{
  v9 = (a5 >> 1);
  v10 = a3;
  v11 = ((a4 / v9) * a3) + 0.5;
  v12 = v11;
  v13 = v11 <= 1.0;
  v14 = 1.0;
  if (!v13)
  {
    v14 = v12;
  }

  v15 = ((v10 / v14) + 0.5);
  if (v15 < 1)
  {
    v18 = 0.0;
  }

  else
  {
    v16 = 0;
    v17 = vcvtmd_s64_f64(((a8 / v9) * v10) + 0.5);
    v18 = 0.0;
    do
    {
      v19 = ((((++v16 * a4) / v9) * v10) + 0.5);
      v20 = v19 - a1;
      if (v19 - a1 <= v17)
      {
        v20 = v17;
      }

      v21 = v19 + a1;
      if (v21 >= a3 - 1)
      {
        v22 = a3 - 1;
      }

      else
      {
        v22 = v21;
      }

      if (v20 <= v22)
      {
        v23 = &a2[v20];
        v24 = v22 - v20 + 1;
        do
        {
          v25 = *v23++;
          v18 = v18 + (v25 * v25);
          --v24;
        }

        while (v24);
      }
    }

    while (v16 != v15);
  }

  result = log10f(a6 / v18) * 10.0;
  *a7 = result;
  return result;
}

uint64_t fun_signal_correlation2(uint64_t result, float *a2, int a3, float a4, int a5, float *a6)
{
  v6 = (a5 >> 1);
  v7 = a3;
  v8 = fmax(((a4 / v6) * a3) + 0.5, 1.0);
  v9 = (v8 - 4) >> 1;
  if (v9 <= 1)
  {
    v9 = 1;
  }

  v10 = ((v7 / v8) + 0.5);
  v11 = 0.0;
  v12 = 0.0;
  v13 = a3 - 1;
  if (a3 >= 1)
  {
    v14 = a3;
    v15 = a2;
    do
    {
      v16 = *v15++;
      v12 = v12 + (v16 * v16);
      --v14;
    }

    while (v14);
  }

  if (v10 >= 1)
  {
    v17 = 0;
    v11 = 0.0;
    do
    {
      v18 = ((((++v17 * a4) / v6) * v7) + 0.5);
      v19 = (v18 - result) & ~((v18 - result) >> 31);
      if (v19 >= v13)
      {
        v19 = a3 - 1;
      }

      v20 = v18 + result;
      if (v18 + result >= v13)
      {
        v20 = a3 - 1;
      }

      if (v19 > v20)
      {
        v20 = v19;
      }

      v21 = (v18 - v9) & ~((v18 - v9) >> 31);
      if (v21 >= v13)
      {
        v21 = a3 - 1;
      }

      v22 = v9 + v18;
      if (v22 >= v13)
      {
        v22 = a3 - 1;
      }

      if (v22 <= v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = v22;
      }

      v24 = &a2[v21];
      v25 = *v24;
      v26 = v23 - v21;
      if (v26 >= 0)
      {
        v27 = -(v26 + 1);
        do
        {
          v28 = *v24++;
          v29 = v28;
          if (v25 < v28)
          {
            v25 = v29;
          }

          v30 = __CFADD__(v27++, 1);
        }

        while (!v30);
      }

      v31 = &a2[v19];
      v32 = *v31;
      if (v20 - v19 >= 0)
      {
        v33 = -(v20 - v19 + 1);
        v34 = &a2[v19];
        do
        {
          v35 = *v34++;
          v36 = v35;
          if (v32 < v35)
          {
            v32 = v36;
          }

          v30 = __CFADD__(v33++, 1);
        }

        while (!v30);
      }

      if (v25 * 0.999 < v32)
      {
        v37 = ~v20 + v19;
        do
        {
          v38 = *v31++;
          v11 = v11 + (v38 * v38);
          v30 = __CFADD__(v37++, 1);
        }

        while (!v30);
      }
    }

    while (v17 != v10);
  }

  v39 = v11 / v12;
  if ((v11 / v12) > 1.0)
  {
    v39 = 1.0;
  }

  *a6 = v39;
  return result;
}

float *fun_get_max(float *result, int a2, float *a3, int *a4)
{
  v4 = *result;
  if (a2 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (v4 < result[v5])
      {
        v6 = v5;
        v4 = result[v5];
      }

      ++v5;
    }

    while (a2 != v5);
  }

  *a3 = v4;
  *a4 = v6;
  return result;
}

uint64_t fun_signal_correlation(uint64_t result, float *a2, int a3, float a4, int a5, float *a6)
{
  v6 = (a5 >> 1);
  v7 = a3;
  v8 = ((a4 / v6) * a3) + 0.5;
  v9 = v8;
  v10 = v8 <= 1.0;
  v11 = 1.0;
  if (!v10)
  {
    v11 = v9;
  }

  v12 = ((v7 / v11) + 0.5);
  v13 = 0.0;
  v14 = 0.0;
  if (a3 >= 1)
  {
    v15 = a3;
    v16 = a2;
    do
    {
      v17 = *v16++;
      v14 = v14 + (v17 * v17);
      --v15;
    }

    while (v15);
  }

  if (v12 >= 1)
  {
    v18 = 0;
    v13 = 0.0;
    do
    {
      v19 = (((++v18 * a4) / v6) * v7) + 0.5;
      v20 = (v19 - result) & ~((v19 - result) >> 31);
      v21 = v19 + result;
      if (v21 >= a3 - 1)
      {
        v21 = a3 - 1;
      }

      if (v20 <= v21)
      {
        v22 = (v21 + 1);
        v23 = &a2[v20];
        v24 = v22 - v20;
        do
        {
          v25 = *v23++;
          v13 = v13 + (v25 * v25);
          --v24;
        }

        while (v24);
      }
    }

    while (v18 != v12);
  }

  v26 = v13 / v14;
  if ((v13 / v14) > 1.0)
  {
    v26 = 1.0;
  }

  *a6 = v26;
  return result;
}

void fun_get_hannign_window(int a1, float *a2, double a3)
{
  if (a1 >= 1)
  {
    v3 = 0;
    *&a3 = (a1 - 1);
    v4 = vdupq_n_s64(a1 - 1);
    v5 = xmmword_2249BBCC0;
    v6 = xmmword_2249B9820;
    v27 = vdupq_n_s64(4uLL);
    v28 = vdupq_n_s32(0x40C90FDAu);
    v7 = (a1 + 3) & 0xFFFFFFFC;
    v8 = a2 + 2;
    __asm
    {
      FMOV            V5.2D, #-0.5
      FMOV            V6.2D, #0.5
    }

    v29 = v4;
    v25 = _Q5;
    v26 = vdupq_lane_s32(*&a3, 0);
    v24 = _Q6;
    do
    {
      v34 = v6;
      v35 = v5;
      v15 = vorr_s8(vdup_n_s32(v3), 0x300000002);
      v16 = vmovn_s64(vcgeq_u64(v4, v6));
      v32 = vuzp1_s16(v16, v15).u8[0];
      v17.i32[0] = v3;
      v17.i32[1] = v3 + 1;
      v17.u64[1] = v15;
      v36 = vmulq_f32(vdivq_f32(vcvtq_f32_u32(v17), v26), v28);
      v33 = cosf(v36.f32[2]);
      v31 = cosf(v36.f32[3]);
      v30 = cosf(v36.f32[0]);
      v18 = vmlaq_f64(v24, v25, vcvtq_f64_f32(__PAIR64__(COERCE_UNSIGNED_INT(cosf(v36.f32[1])), LODWORD(v30))));
      if (v32)
      {
        v19 = v18.f64[0];
        *(v8 - 2) = v19;
      }

      if (vuzp1_s16(v16, *&v18).i8[2])
      {
        v20 = v18.f64[1];
        *(v8 - 1) = v20;
      }

      v21 = vmlaq_f64(v24, v25, vcvtq_f64_f32(__PAIR64__(LODWORD(v31), LODWORD(v33))));
      v4 = v29;
      if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v29, *&v35))).i32[1])
      {
        v22 = v21.f64[0];
        *v8 = v22;
        v23 = v21.f64[1];
        v8[1] = v23;
      }

      v3 += 4;
      v5 = vaddq_s64(v35, v27);
      v6 = vaddq_s64(v34, v27);
      v8 += 4;
    }

    while (v7 != v3);
  }
}

float fun_vec_mpy(float *a1, float *a2, float *a3, int a4)
{
  if (a4 >= 1)
  {
    v4 = a4;
    do
    {
      v5 = *a1++;
      v6 = v5;
      v7 = *a2++;
      result = v6 * v7;
      *a3++ = result;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t quickSort_float(float *a1, int *a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v35 = *MEMORY[0x277D85DE8];
  v34[0] = 0;
  v33[0] = v4;
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = vdupq_n_s64(v4 - 1);
    v7 = xmmword_2249BBCC0;
    v8 = xmmword_2249B9820;
    v9 = (v3 + 8);
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v6, v8));
      if (vuzp1_s16(v11, *v6.i8).u8[0])
      {
        *(v9 - 2) = v5;
      }

      if (vuzp1_s16(v11, *&v6).i8[2])
      {
        *(v9 - 1) = v5 + 1;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
      {
        *v9 = v5 + 2;
        v9[1] = v5 + 3;
      }

      v5 += 4;
      v7 = vaddq_s64(v7, v10);
      v8 = vaddq_s64(v8, v10);
      v9 += 4;
    }

    while (((v4 + 3) & 0xFFFFFFFC) != v5);
  }

  v12 = 0;
  v13 = v3 + 4;
  while (1)
  {
    while (1)
    {
      v14 = v12;
      v15 = v34[v12];
      v16 = v33[v12];
      v17 = v16 - 1;
      if (v15 < v16 - 1)
      {
        break;
      }

      --v12;
      if (v14 - 1 < 0)
      {
        return 0;
      }
    }

    if (v12 == 999)
    {
      break;
    }

    v18 = *(v2 + 4 * v15);
    v19 = *(v3 + 4 * v15);
    do
    {
      v20 = v17;
      v21 = v15;
      v22 = (v17 << 32) + 0x100000000;
      v23 = (v2 + 4 + 4 * v17);
      do
      {
        v24 = v20;
        v25 = *--v23;
        v26 = v25;
        --v20;
        v22 -= 0x100000000;
      }

      while (v24 > v21 && v26 >= v18);
      if (v24 > v21)
      {
        *(v2 + 4 * v21) = v26;
        *(v3 + 4 * v21) = *(v13 + 4 * v20);
        v21 = v21 + 1;
      }

      v17 = v20 + 1;
      v27 = v22 >> 32;
      v28 = (v21 << 32) - 0x100000000;
      do
      {
        v29 = v21;
        v30 = *(v2 + 4 * v21++);
        v28 += 0x100000000;
      }

      while (v29 < v27 && v30 <= v18);
      if (v29 < v27)
      {
        *v23 = v30;
        *(v13 + 4 * v20) = *(v3 - 4 + 4 * v21);
        v17 = v20;
      }

      v15 = v21 - 1;
    }

    while (v17 > v21 - 1);
    v31 = v28 >> 30;
    *(v2 + v31) = v18;
    *(v3 + v31) = v19;
    v12 = v14 + 1;
    v34[v12] = v21;
    v33[v12] = v16;
    v33[v14] = v15;
    if (v14 + 1 < 0)
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

float fun_median_float(float *a1, int a2)
{
  v4 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  if (v4)
  {
    v5 = v4;
    if (a2 >= 1)
    {
      v6 = 0;
      v7 = vdupq_n_s64(a2 - 1);
      v8 = xmmword_2249BBCC0;
      v9 = xmmword_2249B9820;
      v10 = v4 + 2;
      v11 = vdupq_n_s64(4uLL);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v7, v9));
        if (vuzp1_s16(v12, *v7.i8).u8[0])
        {
          *(v10 - 2) = v6;
        }

        if (vuzp1_s16(v12, *&v7).i8[2])
        {
          *(v10 - 1) = v6 + 1;
        }

        if (vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v8))).i32[1])
        {
          *v10 = v6 + 2;
          v10[1] = v6 + 3;
        }

        v6 += 4;
        v8 = vaddq_s64(v8, v11);
        v9 = vaddq_s64(v9, v11);
        v10 += 4;
      }

      while (((a2 + 3) & 0xFFFFFFFC) != v6);
    }

    quickSort_float(a1, v4);
    free(v5);
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (a2)
    {
      v13 = 0;
    }

    v14 = &a1[(a2 >> 1) + v13];
  }

  else
  {
    v14 = &a1[a2 - 1];
  }

  return *v14;
}

float *fun_get_percent(float a1, float a2, float a3, float *result)
{
  v4 = 0.0;
  if (a1 >= a2)
  {
    v4 = 1.0;
    if (a2 < a1 && a1 <= a3)
    {
      v4 = (a1 - a2) / (a3 - a2);
    }
  }

  *result = v4;
  return result;
}

uint64_t fun_get_spectrum_value(float a1, uint64_t result, int a3, int a4, float *a5)
{
  v5 = ((a1 / (a4 / 2)) * a3);
  if (v5 <= 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = ((a1 / (a4 / 2)) * a3);
  }

  v7 = v6 - 2;
  if (v7 >= a3 - 1)
  {
    v7 = a3 - 1;
  }

  v8 = v5 + 2;
  if (v8 >= a3 - 1)
  {
    v8 = a3 - 1;
  }

  v9 = v8 & ~(v8 >> 31);
  v10 = (result + 4 * v7);
  v11 = *v10;
  v12 = v9 - v7;
  if (v12 >= 0)
  {
    v13 = -(v12 + 1);
    do
    {
      v14 = *v10++;
      v15 = v14;
      if (v11 < v14)
      {
        v11 = v15;
      }
    }

    while (!__CFADD__(v13++, 1));
  }

  *a5 = v11;
  return result;
}

uint64_t fun_get_tight_idx(float *a1, int a2, int a3)
{
  v3 = a3 + 2;
  v4 = -1;
  v5 = 1.0 / a1[a3];
  do
  {
    if (v3 >= a2 - 1)
    {
      v6 = a2 - 1;
    }

    else
    {
      v6 = v3;
    }

    v7 = v5 + (-1.0 / a1[v6]);
    v8 = v4 - 1;
    ++v3;
  }

  while (v7 < 30.0 && v4-- != -9);
  v10 = a3 - 2;
  v11 = -v8;
  v12 = 1;
  do
  {
    v13 = (1.0 / a1[v10 & ~(v10 >> 31)]) - v5;
    v14 = v12 + 1;
    --v10;
  }

  while (v13 < 30.0 && v12++ != 9);
  if (v11 >= v14)
  {
    return v14;
  }

  else
  {
    return v11;
  }
}

float fun_equal_max(float a1, float a2, float a3)
{
  v3 = vabds_f32(a1, a2) < 3.0;
  result = 0.0;
  if (v3)
  {
    return a3;
  }

  return result;
}

float fun_non_equal_max(float a1, float a2, float a3)
{
  v3 = vabds_f32(a1, a2) < 3.0;
  result = 0.0;
  if (!v3)
  {
    return a3;
  }

  return result;
}

float fun_val_ratio(float a1, float a2, float a3, float a4)
{
  if (vabds_f32(a1, a2) >= 3.0)
  {
    return a4;
  }

  else
  {
    return a3;
  }
}

float fun_cpes_th(float a1, float a2, float a3, float a4)
{
  if (vabds_f32(a1, a2) >= 3.0)
  {
    return a3;
  }

  else
  {
    return a4;
  }
}

float fun_get_interpolate_max(int a1, float *a2, int a3, int a4)
{
  if (a1 < 1 || (a3 >> 1) - 1 <= a1)
  {
    return (a1 / a3 * a4);
  }

  v4 = &a2[a1];
  v5 = v4[1];
  v6 = *(v4 - 1);
  v7 = (v6 + v5) + (*v4 * -2.0);
  v8 = 0.0;
  if (v7 != 0.0)
  {
    v9 = (v6 - v5) * 0.5 / v7;
    v8 = v9;
  }

  v10 = -0.5;
  if (v8 >= -0.5)
  {
    v10 = v8;
  }

  v11 = v10;
  if (v11 > 0.5)
  {
    v11 = 0.5;
  }

  v12 = v11 + a1;
  if (v12 > (a3 - 1))
  {
    v12 = (a3 - 1);
  }

  if (v12 < 0.0)
  {
    v12 = 0.0;
  }

  return (v12 / a3) * a4;
}

float32_t fun_vector_mpy_float(float *a1, float *a2, float *a3, int a4)
{
  v4 = a4 & 0xFFFFFFFC;
  if (v4 < 1)
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = 0;
    v6 = a1;
    v7 = a2;
    v8 = a3;
    do
    {
      v9 = *v6;
      v6 += 4;
      v10 = v9;
      v11 = *v7;
      v7 += 4;
      v12 = vmulq_f32(v10, v11);
      *v8 = v12;
      v8 += 4;
      v5 += 4;
    }

    while (v5 < v4);
  }

  if (v5 < a4)
  {
    v13 = &a3[v5];
    v14 = &a2[v5];
    v15 = &a1[v5];
    v16 = a4 - v5;
    do
    {
      v17 = *v15++;
      v18 = v17;
      v19 = *v14++;
      v12.f32[0] = v18 * v19;
      *v13++ = v12.f32[0];
      --v16;
    }

    while (v16);
  }

  return v12.f32[0];
}

float fun_get_data_pulse_diff(float *a1, float *a2, int a3, int a4)
{
  result = 0.0;
  if (a4 && a1 && a2)
  {
    v5 = 0.0;
    v6 = 0.0;
    if (a4 >= 1)
    {
      v7 = a4;
      v8 = a1;
      do
      {
        v9 = *v8++;
        v6 = v6 + v9;
        --v7;
      }

      while (v7);
    }

    v10 = a4;
    if (fabsf(v6) <= a4)
    {
      v5 = v6;
    }

    *a2 = v5;
    if (a3 > a4)
    {
      v11 = a2 + 1;
      v12 = (a3 - a4 + 1) - 1;
      do
      {
        v5 = (v5 - *a1) + a1[a4];
        if (fabsf(v5) <= v10)
        {
          v13 = v5;
        }

        else
        {
          v13 = 0.0;
        }

        *v11++ = v13;
        ++a1;
        --v12;
      }

      while (v12);
    }

    v14 = 0.0;
    if (2 * a4 <= a3)
    {
      v15 = (a3 - 2 * a4 + 1);
      do
      {
        v16 = a2[a4];
        v17 = *a2++;
        v18 = vabds_f32(v16, v17);
        if (v18 > v14)
        {
          v14 = v18;
        }

        --v15;
      }

      while (v15);
    }

    return v14 / v10;
  }

  return result;
}

void flicker_detection_init(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, float a7, float a8)
{
  v8 = a6;
  *(a1 + 4) = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 20) = a5;
  *(a1 + 24) = a7;
  *(a1 + 28) = a8;
  *(a1 + 32) = 0x100000008;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x3F7333333F666666;
  v10.i32[1] = 90;
  *(a1 + 52) = 0x5A00000001;
  *(a1 + 336) = 64;
  *v10.i32 = (a2 / a3 / 2);
  *(a1 + 60) = a2 / a3;
  v11 = vcvt_s32_f32(vmul_n_f32(vdiv_f32(0x4580200042B40000, vdup_lane_s32(v10, 0)), (a4 / 2)));
  *(a1 + 64) = v11;
  *(a1 + 72) = a6;
  v12 = (a6 + 4 * a4);
  if (a4 >= 1)
  {
    v13 = 0;
    *v11.i32 = (a4 - 1);
    v14 = (a4 + 3) & 0xFFFFFFFC;
    v15 = vdupq_n_s64(a4 - 1);
    v91 = vdupq_lane_s32(v11, 0);
    v16 = xmmword_2249BBCC0;
    v17 = xmmword_2249B9820;
    v89 = vdupq_n_s64(4uLL);
    v90 = vdupq_n_s32(0x40C90FDAu);
    v18 = (a6 + 8);
    __asm
    {
      FMOV            V5.2D, #-0.5
      FMOV            V6.2D, #0.5
    }

    v92 = v15;
    v87 = _Q6;
    v88 = _Q5;
    do
    {
      v97 = v17;
      v98 = v16;
      v25 = vorr_s8(vdup_n_s32(v13), 0x300000002);
      v26 = vmovn_s64(vcgeq_u64(v15, v17));
      v95 = vuzp1_s16(v26, v25).u8[0];
      v27.i32[0] = v13;
      v27.i32[1] = v13 + 1;
      v27.u64[1] = v25;
      v99 = vmulq_f32(vdivq_f32(vcvtq_f32_u32(v27), v91), v90);
      v96 = cosf(v99.f32[2]);
      v94 = cosf(v99.f32[3]);
      v93 = cosf(v99.f32[0]);
      v28 = vmlaq_f64(v87, v88, vcvtq_f64_f32(__PAIR64__(COERCE_UNSIGNED_INT(cosf(v99.f32[1])), LODWORD(v93))));
      if (v95)
      {
        v29 = v28.f64[0];
        *(v18 - 2) = v29;
      }

      if (vuzp1_s16(v26, *&v28).i8[2])
      {
        v30 = v28.f64[1];
        *(v18 - 1) = v30;
      }

      v31 = vmlaq_f64(v87, v88, vcvtq_f64_f32(__PAIR64__(LODWORD(v94), LODWORD(v96))));
      v15 = v92;
      if (vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v92, *&v98))).i32[1])
      {
        v32 = v31.f64[0];
        *v18 = v32;
        v33 = v31.f64[1];
        v18[1] = v33;
      }

      v13 += 4;
      v16 = vaddq_s64(v98, v89);
      v17 = vaddq_s64(v97, v89);
      v18 += 4;
    }

    while (v14 != v13);
  }

  for (i = 0; i != 64; i += 8)
  {
    v35 = v12;
    *(a1 + 80 + i) = v12;
    v36 = 4 * (*(a1 + 12) / 2) + 4;
    v12 += v36;
    bzero(v35, v36);
  }

  *(a1 + 216) = v12;
  v37 = 4 * (*(a1 + 12) / 2) + 4;
  v38 = &v12[v37];
  bzero(v12, v37);
  for (j = 0; j != 64; j += 8)
  {
    v40 = v38;
    *(a1 + 144 + j) = v38;
    v41 = *(a1 + 12) / 2;
    v42 = 4 * v41 + 4;
    v38 += v42;
    bzero(v40, v42);
  }

  *(a1 + 224) = v38;
  v43 = *(a1 + 12) / 2;
  v44 = 4 * v43 + 4;
  v45 = &v38[v44];
  bzero(v38, v44);
  v46 = 0;
  *(a1 + 208) = 0;
  v47 = *(a1 + 12);
  v48 = v47;
  v49 = &v45[4 * v47];
  *(a1 + 232) = v45;
  *(a1 + 240) = v49;
  v50 = &v49[4 * v47];
  v51 = v47 + 2;
  v52 = v47 / 2;
  *(a1 + 264) = v50;
  *(a1 + 272) = &v50[4 * (v47 / 2)];
  v53 = &v50[4 * v47 + 8];
  *(a1 + 248) = v50;
  *(a1 + 256) = v53;
  v54 = &v53[4 * v47 + 8];
  if (v47 >= 2)
  {
    v46 = 0;
    for (k = v47; k > 1; k >>= 1)
    {
      ++v46;
    }
  }

  *(a1 + 16) = v46;
  v56 = (v52 + 1);
  v57 = &v54[4 * v56];
  *(a1 + 280) = v54;
  *(a1 + 288) = v57;
  v58 = &v57[4 * v47];
  *(a1 + 336) = 64;
  *(a1 + 344) = v58 + 256;
  *(a1 + 352) = v58;
  v59 = v58 + 512;
  v60 = &v58[4 * v56 + 512];
  *(a1 + 296) = v59;
  *(a1 + 304) = v60;
  v61 = &v60[4 * v56];
  v62 = &v61[v56];
  *(a1 + 312) = v61;
  *(a1 + 320) = v62;
  v63 = &v62[v56];
  *(a1 + 816) = v63;
  *(a1 + 824) = v63 - v8;
  *(a1 + 828) = 0;
  if (v47 > -2)
  {
    v66 = 0;
    v67 = vdupq_n_s64(v56 - 1);
    v68 = v47;
    v69 = *(a1 + 60);
    v70 = (v56 + 3) & 0x1FFFFFFFCLL;
    v71 = &v40[12 * v47 + 536 + 8 * v51 + 4 * v43 + 4 * v52 + 4 * v41];
    v72 = xmmword_2249BBCC0;
    v73 = xmmword_2249B9820;
    v74 = vdupq_n_s64(4uLL);
    do
    {
      v75 = vmovn_s64(vcgeq_u64(v67, v73));
      if (vuzp1_s16(v75, *v67.i8).u8[0])
      {
        *(v71 - 3) = (v66 / v68) * v69;
      }

      if (vuzp1_s16(v75, *&v67).i8[2])
      {
        *(v71 - 2) = ((v66 + 1) / v68) * v69;
      }

      if (vuzp1_s16(*&v67, vmovn_s64(vcgeq_u64(v67, *&v72))).i32[1])
      {
        *(v71 - 1) = ((v66 + 2) / v68) * v69;
        *v71 = ((v66 + 3) / v68) * v69;
      }

      v66 += 4;
      v72 = vaddq_s64(v72, v74);
      v73 = vaddq_s64(v73, v74);
      v71 += 4;
    }

    while (v70 != v66);
    *(a1 + 328) = 0;
    v65 = v52 - 1;
    *(a1 + 332) = v52 - 1;
    *v60 = 925353388;
    if (v47 < 4)
    {
      v64 = 0;
    }

    else
    {
      v64 = 0;
      v76 = *(a1 + 60);
      if (v52 <= 2)
      {
        v77 = 2;
      }

      else
      {
        v77 = v52;
      }

      v78 = &v40[12 * v48 + 528 + 8 * v51 + 8 * v52 + 4 * v43 + 4 * v41];
      v79 = 1;
      while (1)
      {
        v80 = v79 / v76;
        v78[1] = v80;
        if (v80 >= 0.0002 && *v78 < 0.0002)
        {
          *(a1 + 328) = v79;
          v64 = v79;
        }

        if (v80 >= 0.011111 && *v78 < 0.011111)
        {
          break;
        }

        ++v79;
        ++v78;
        if (v77 == v79)
        {
          goto LABEL_41;
        }
      }

      *(a1 + 332) = v79;
      v65 = v79;
    }
  }

  else
  {
    v64 = 0;
    *(a1 + 328) = 0;
    v65 = v52 - 1;
    *(a1 + 332) = v52 - 1;
    *v60 = 925353388;
  }

LABEL_41:
  if (v64 <= v65)
  {
    v81 = (v65 - v64 + 1);
    v82 = &v40[12 * v48 + 8 * v51 + 8 * v52 + 4 * v64];
    v83 = v43 + v41;
    v84 = &v82[4 * v83 + 528];
    v85 = &v40[12 * v48 + 532 + 12 * v52 + 8 * v51 + 4 * v83];
    do
    {
      v86 = *v84;
      v84 += 4;
      *v85 = v86;
      v85 += 4;
      --v81;
    }

    while (v81);
  }
}

void fun_get_fft(float *a1, DSPComplex *a2, float *a3, int a4, int a5, float *a6, OpaqueFFTSetup **a7, DSPSplitComplex *a8)
{
  fun_vector_mpy_float(a1, a3, a2, a4);
  v14 = a4 + (a4 >> 31);
  v15 = a4 / 2;
  vDSP_ctoz(a2, 2, a8, 1, v14 >> 1);
  vDSP_fft_zrip(*a7, a8, 1, a5, 1);
  imagp = a8->imagp;
  a8->realp[v15] = *imagp;
  imagp[v15] = 0.0;
  *imagp = 0.0;

  vDSP_zvabs(a8, 1, a6, 1, v15 + 1);
}

uint64_t flicker_data_processing(uint64_t a1, OpaqueFFTSetup **a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v366 = *MEMORY[0x277D85DE8];
  v355 = 0.0;
  v353 = 0;
  v354 = 0;
  v352 = 0;
  v351 = 0;
  v347 = 0.0;
  v346 = 0;
  v344 = 0;
  if (*(a1 + 72))
  {
    if (*(a1 + 232))
    {
      v8 = *(a1 + 240);
      if (v8)
      {
        if (*(a1 + 248) && *(a1 + 256) && *(a1 + 280) && *(a1 + 288) && *(a1 + 216) && *(a1 + 224) && *(a1 + 344) && *(a1 + 352) && *(a1 + 296) && *(a1 + 304) && *(a1 + 320) && *(a1 + 312))
        {
          v12 = 0;
          v13 = *a2;
          v14 = *(a1 + 708);
          v15 = a1 + 80;
          v16 = a1 + 144;
          v17 = *(a1 + 712);
          do
          {
            if (!*(a1 + v12 + 80) || !*(a1 + v12 + 144))
            {
              return 1;
            }

            v12 += 8;
          }

          while (v12 != 64);
          __C = 0;
          __N = 0;
          v358 = 0;
          __I = 0;
          v357 = 0;
          v356 = 0.0;
          v350 = 0.0;
          v349 = 0;
          v348 = 0.0;
          v345 = 0.0;
          if (a3 && a4 && a5 && *(a1 + 12) == 4096)
          {
            v332 = v17;
            v337 = v14;
            v18 = *(a1 + 60);
            v345 = -*(a1 + 24);
            v19 = 16000.0 / v18;
            if (*a1 & 1) != 0 || (*(a1 + 1))
            {
              v20 = 1;
              MEMORY[0x22AA57010](a4, 1, a3, 1);
              MEMORY[0x22AA56F30](a3, 1, &v345, *(a1 + 256), 1, *(a1 + 12));
            }

            else
            {
              MEMORY[0x22AA56F30](a3, 1, &v345, v8, 1, 4096);
              v20 = 0;
            }

            data_pulse_diff = fun_get_data_pulse_diff(*(a1 + 240), *(a1 + 232), *(a1 + 12), 10);
            fun_get_fft(*(a1 + 240), *(a1 + 232), *(a1 + 72), *(a1 + 12), *(a1 + 16), *(a1 + 280), a2, (a1 + 264));
            v24 = *(a1 + 12);
            v25 = *(a1 + 280);
            v26 = v24 / 2 + 1;
            if (v24 >= -1)
            {
              v27 = (v24 / 2 + 1);
              v28 = *(a1 + 280);
              do
              {
                v29 = *v28;
                if (*v28 < 0.00001)
                {
                  v29 = 0.00001;
                }

                *v28++ = v29;
                --v27;
              }

              while (v27);
            }

            HIDWORD(__N) = v26;
            vvlogf(*(a1 + 288), v25, &__N + 1);
            v30 = *(a1 + 12);
            v31 = v30 / 2;
            if (v30 >= -1)
            {
              v34 = *(a1 + 216);
              v35 = *(v15 + 8 * *(a1 + 208));
              v36 = *(a1 + 280);
              v33 = v31 + 1;
              v37 = v33;
              v38 = v33;
              do
              {
                v39 = *v35++;
                v40 = *v34 - v39;
                v41 = *v36++;
                *v34++ = v40 + v41;
                --v38;
              }

              while (v38);
              v42 = *(a1 + 224);
              v32 = *(a1 + 208);
              v43 = *(v16 + 8 * v32);
              v44 = *(a1 + 288);
              do
              {
                v45 = *v43++;
                v46 = *v42 - v45;
                v47 = *v44++;
                *v42++ = v46 + v47;
                --v37;
              }

              while (v37);
            }

            else
            {
              v32 = *(a1 + 208);
              v33 = v31 + 1;
            }

            v48 = (v19 * 5.0) + 0.5;
            memcpy(*(v15 + 8 * v32), *(a1 + 280), 4 * v33);
            memcpy(*(v16 + 8 * *(a1 + 208)), *(a1 + 288), 4 * (*(a1 + 12) / 2) + 4);
            v49 = *(a1 + 32);
            *(a1 + 208) = (*(a1 + 208) + 1) % v49;
            if (*(a1 + 696) >= v49 && *(a1 + 12) >= -1)
            {
              v50 = *(a1 + 216);
              v51 = v49;
              v52 = *(a1 + 280);
              v53 = (*(a1 + 12) / 2 + 1);
              v54 = v53;
              do
              {
                v55 = *v50++;
                *v52++ = v55 / v51;
                --v54;
              }

              while (v54);
              v56 = *(a1 + 224);
              v57 = *(a1 + 288);
              do
              {
                v58 = *v56++;
                *v57++ = v58 / v51;
                --v53;
              }

              while (v53);
            }

            v59 = v48;
            if (v20)
            {
              fun_get_fft(*(a1 + 256), *(a1 + 232), *(a1 + 72), *(a1 + 12), *(a1 + 16), *(a1 + 240), a2, (a1 + 264));
              v60 = *(a1 + 12);
              v61 = *(a1 + 240);
              if (v60 >= -1)
              {
                v62 = (v60 / 2 + 1);
                v63 = *(a1 + 240);
                do
                {
                  v64 = *v63;
                  if (*v63 < 0.00001)
                  {
                    v64 = 0.00001;
                  }

                  *v63++ = v64;
                  --v62;
                }

                while (v62);
              }

              v336 = ((((v61[1] * v61[1]) + (*v61 * *v61)) + (v61[2] * v61[2])) + (v61[3] * v61[3])) + (v61[4] * v61[4]);
            }

            else
            {
              v65 = *(a1 + 280);
              v336 = ((((v65[1] * v65[1]) + (*v65 * *v65)) + (v65[2] * v65[2])) + (v65[3] * v65[3])) + (v65[4] * v65[4]);
              v61 = *(a1 + 240);
              v60 = *(a1 + 12);
            }

            v345 = -*(a1 + 28);
            MEMORY[0x22AA56F30](a4, 1, &v345, v61, 1, v60);
            fun_get_fft(*(a1 + 240), *(a1 + 232), *(a1 + 72), *(a1 + 12), *(a1 + 16), *(a1 + 248), a2, (a1 + 264));
            if (a6 == 0.0)
            {
              *(a5 + 20) = 1120403456;
              *(a5 + 32) = 0;
              v71 = HIDWORD(__N);
            }

            else
            {
              if (a6 == 30.0 || a6 == 15.0)
              {
                v68 = 1;
              }

              else
              {
                v68 = 2;
              }

              if (a6 == 8.0 || a6 == 1.0)
              {
                v70 = 0;
              }

              else
              {
                v70 = v68;
              }

              v71 = HIDWORD(__N);
              v66 = *(a1 + 248);
              fun_dc_ratio(v70, v66, SHIDWORD(__N), a6, *(a1 + 60), ((((v66[1] * v66[1]) + (*v66 * *v66)) + (v66[2] * v66[2])) + (v66[3] * v66[3])) + (v66[4] * v66[4]), (a5 + 20), *(a1 + 56));
              LODWORD(v362) = 0;
              v72 = *(a1 + 64);
              v73 = *(a1 + 248);
              if (v72 >= -1)
              {
                bzero(*(a1 + 248), 4 * (v72 + 2));
              }

              fun_signal_correlation(v48, v73, v71, 120.0, *(a1 + 60), &v362);
              *(a5 + 32) = v362;
            }

            fun_get_histogram(*(a1 + 288), v71, *(a1 + 336), *(a1 + 352), *(a1 + 344));
            v74 = *(a1 + 336);
            if (v74 >= 1)
            {
              v75 = 0;
              v77 = *(a1 + 344);
              v76 = *(a1 + 352);
              v78 = v76;
              v79 = *(a1 + 336);
              do
              {
                v80 = *v78++;
                v75 += v80;
                --v79;
              }

              while (v79);
              v81 = 0;
              while (1)
              {
                v82 = *v76++;
                v81 += v82;
                if ((*(a1 + 44) * v75) <= v81)
                {
                  break;
                }

                ++v77;
                if (!--v74)
                {
                  goto LABEL_83;
                }
              }

              LODWORD(__N) = *v77;
            }

LABEL_83:
            v83 = HIDWORD(__N);
            v84 = SHIDWORD(__N);
            v85 = *(a1 + 288);
            if (SHIDWORD(__N) < 1)
            {
              v90 = 0.0;
              v89 = 0.0;
            }

            else
            {
              v86 = 0;
              v87 = 0;
              v88 = 4 * HIDWORD(__N);
              v89 = 0.0;
              do
              {
                if (*&v85[v86] < *&__N)
                {
                  v89 = v89 + (*(*(a1 + 280) + v86) * *(*(a1 + 280) + v86));
                  ++v87;
                  *&v85[v86] = __N;
                }

                v86 += 4;
              }

              while (v88 != v86);
              v90 = v87;
            }

            memcpy(*(a1 + 248), v85, 4 * v84);
            if (*(a1 + 52) && SHIDWORD(__N) >= 3)
            {
              v91 = (*(a1 + 248) + 8);
              v92 = 4 * (HIDWORD(__N) - 1);
              v93 = 4;
              do
              {
                if (*(v91 - 2) == *&__N && *v91 == *&__N)
                {
                  *(*(a1 + 288) + v93) = __N;
                }

                ++v91;
                v93 += 4;
              }

              while (v92 != v93);
            }

            v94 = *(a1 + 64);
            v95 = *(a1 + 288);
            if (v94 > -2)
            {
              v97 = *(a1 + 280);
              v98 = (v94 + 2);
              v99 = *(a1 + 288);
              do
              {
                *v97++ = 0;
                v96 = *&__N;
                *v99++ = __N;
                --v98;
              }

              while (v98);
            }

            else
            {
              v96 = *&__N;
            }

            *&__N = -v96;
            memcpy(*(a1 + 248), v95, 4 * SHIDWORD(__N));
            MEMORY[0x22AA56F30](*(a1 + 248), 1, &__N, *(a1 + 288), 1, SHIDWORD(__N));
            vDSP_maxvi(*(a1 + 280), 1, &__C + 1, &__I, SHIDWORD(__N));
            v100 = *(a1 + 280);
            v335 = 0;
            if (__I >= 2)
            {
              v101 = v100 + 4 * __I;
              if (*(v101 - 4) == 0.0 && *(v101 - 8) == 0.0)
              {
                v335 = 1;
              }
            }

            v102 = ((4100.0 / (*(a1 + 60) / 2)) * (*(a1 + 12) / 2));
            memcpy(*(a1 + 248), v100, 4 * SHIDWORD(__N));
            v103 = SHIDWORD(__N);
            v104 = *(a1 + 248);
            if (SHIDWORD(__N) >= v102)
            {
              bzero(&v104[v102 - 1], 4 * (HIDWORD(__N) - v102) + 4);
            }

            vDSP_maxvi(v104, 1, &__C + 1, &__I, v103);
            v105 = *(a1 + 12);
            if (__I)
            {
              v106 = __I;
            }

            else
            {
              v106 = 1.0;
            }

            if (__I <= (v105 >> 1))
            {
              v107 = v106;
            }

            else
            {
              v107 = (v105 >> 1);
            }

            v108 = v107;
            __I = v107;
            v109 = (*(a1 + 280) + 4 * v107);
            v110 = quadratic_interpolation_dx((v109 - 1));
            v111 = *v109 + (v110 * (*(v109 - 1) - v109[1])) * -0.25;
            *(&__C + 1) = v111;
            v112 = v105;
            v113 = (v110 + v108) * *(a1 + 60);
            if (v108 <= 5)
            {
              v114 = 5;
            }

            else
            {
              v114 = v108;
            }

            v115 = v108 + 5;
            v116 = SHIDWORD(__N);
            if (v108 + 5 >= HIDWORD(__N) - 1)
            {
              v115 = HIDWORD(__N) - 1;
            }

            v117 = *(a1 + 248);
            if ((v114 - 5) <= v115)
            {
              bzero(&v117[v114 - 5], 4 * (v115 - v114 + 5) + 4);
            }

            v118 = v113 / v112;
            vDSP_maxvi(v117, 1, &__C, &v358, v116);
            v119 = *(a1 + 12);
            if (v358)
            {
              v120 = v358;
            }

            else
            {
              v120 = 1.0;
            }

            if (v358 <= (v119 >> 1))
            {
              v121 = v120;
            }

            else
            {
              v121 = (v119 >> 1);
            }

            v122 = v121;
            v358 = v121;
            v123 = (*(a1 + 280) + 4 * v121);
            v124 = quadratic_interpolation_dx((v123 - 1));
            v125 = *v123 + (v124 * (*(v123 - 1) - v123[1])) * -0.25;
            *&__C = v125;
            v126 = ((v124 + v122) * *(a1 + 60)) / v119;
            if (vabds_f32(*(a1 + 680), v126) < 3.0 && *(&__C + 1) * 0.95 < v125)
            {
              v118 = v126;
            }

            v127 = *(a1 + 288);
            if (SHIDWORD(__N) < v119)
            {
              v128 = 4 * SHIDWORD(__N);
              v129 = v119 - SHIDWORD(__N);
              do
              {
                *(&v127->real + v128) = *(&v127->real + v129);
                v128 += 4;
                --v129;
              }

              while (v129);
            }

            vDSP_ctoz(v127, 2, (a1 + 264), 1, (v119 + (v119 >> 31)) >> 1);
            vDSP_fft_zrip(v13, (a1 + 264), 1, *(a1 + 16), 1);
            v130 = *(a1 + 264);
            v131 = *(a1 + 272);
            v132 = *(a1 + 12) / 2;
            v130[v132] = *v131;
            v131[v132] = 0.0;
            *v131 = 0.0;
            vDSP_vabs(v130, 1, *(a1 + 288), 1, v132 + 1);
            v133 = *(a1 + 328);
            v134 = *(a1 + 332);
            v135 = *(a1 + 320);
            if (v133 <= v134)
            {
              v139 = 0;
              v136 = (v134 - v133 + 1);
              v140 = *(a1 + 288) + 4 * v133;
              do
              {
                v135[v139] = *(v140 + 4 * v139);
                ++v139;
              }

              while (v136 != v139);
              v138 = *v135;
              if (v136)
              {
                v141 = 0;
                v137 = 0;
                do
                {
                  if (v138 < v135[v141])
                  {
                    v137 = v141;
                    v138 = v135[v141];
                  }

                  ++v141;
                }

                while (v136 != v141);
                v142 = 0;
                goto LABEL_145;
              }

              v137 = 0;
            }

            else
            {
              LODWORD(v136) = 0;
              v137 = 0;
              v138 = *v135;
            }

            v142 = 1;
LABEL_145:
            v143 = v19 * 7.0;
            *(&__C + 1) = v138;
            v144 = *(a1 + 312);
            v145 = 1.0 / v144[v137];
            if (v145 < 90.0)
            {
              v145 = 90.0;
            }

            v146 = *(a1 + 60);
            v147 = (v146 / 2);
            if (v145 >= v147)
            {
              v145 = (v146 / 2);
            }

            *(&v357 + 1) = v145;
            tight_idx = fun_get_tight_idx(v144, v136, v137);
            v149 = (v137 - tight_idx) & ~((v137 - tight_idx) >> 31);
            v150 = tight_idx + v137;
            if (tight_idx + v137 >= v136)
            {
              v150 = v136;
            }

            v151 = __OFSUB__(v150, v149);
            v152 = v150 - v149;
            if (v152 < 0 == v151)
            {
              bzero(&v135[v149], 4 * v152 + 4);
            }

            v153 = *v135;
            if (v142)
            {
              v154 = 0;
            }

            else
            {
              v155 = 0;
              v154 = 0;
              do
              {
                if (v153 < v135[v155])
                {
                  v154 = v155;
                  v153 = v135[v155];
                }

                ++v155;
              }

              while (v136 != v155);
            }

            v156 = v143 + 0.5;
            *(&__C + 1) = v153;
            v157 = (v138 - v153) / v138;
            v158 = v157 > 0.5 || v157 <= 0.0;
            v159 = v157 + v157;
            if (v158)
            {
              v159 = 1.0;
            }

            if (v157 >= 0.0)
            {
              v160 = v159;
            }

            else
            {
              v160 = 0.0;
            }

            if (v138 == 0.0)
            {
              v160 = 1.0;
            }

            v333 = v160;
            v161 = 1.0 / v144[v154];
            if (v161 < 90.0)
            {
              v161 = 90.0;
            }

            if (v161 >= v147)
            {
              v161 = (v146 / 2);
            }

            *&v357 = v161;
            v162 = fun_get_tight_idx(v144, v136, v154);
            v163 = (v154 - v162) & ~((v154 - v162) >> 31);
            v164 = v162 + v154;
            if (v162 + v154 >= v136)
            {
              v164 = v136;
            }

            v151 = __OFSUB__(v164, v163);
            v165 = v164 - v163;
            if (v165 < 0 == v151)
            {
              bzero(&v135[v163], 4 * v165 + 4);
            }

            v334 = v156;
            v166 = *v135;
            if (v142)
            {
              v167 = 0;
            }

            else
            {
              v168 = 0;
              LODWORD(v167) = 0;
              do
              {
                if (v166 < v135[v168])
                {
                  LODWORD(v167) = v168;
                  v166 = v135[v168];
                }

                ++v168;
              }

              while (v136 != v168);
              v167 = v167;
            }

            v169 = 0;
            v340 = (v89 * v83) / v90;
            *(&__C + 1) = v166;
            v170 = 1.0 / v144[v167];
            if (v170 < 90.0)
            {
              v170 = 90.0;
            }

            if (v170 >= v147)
            {
              v170 = (v146 / 2);
            }

            v356 = v170;
            *&v362 = &v357 + 4;
            *(&v362 + 1) = &v357;
            v171 = *(a1 + 12);
            v172 = v171;
            v173 = v146;
            *&v363 = &v356;
            v174 = *(a1 + 280);
            do
            {
              v175 = *(&v362 + v169);
              v176 = (*v175 * v172) / v173;
              v177 = (v176 + 2.0) + 0.5;
              v178 = v177;
              v179 = (v176 + -2.0);
              if (v179 >= v178)
              {
                v181 = v177;
              }

              else
              {
                v180 = v174[v178];
                v181 = v177;
                do
                {
                  if (v174[v179] > v180)
                  {
                    v180 = v174[v179];
                    v181 = v179;
                  }

                  ++v179;
                }

                while (v178 != v179);
              }

              *v175 = ((quadratic_interpolation_dx(&v174[v181 - 1]) + v181) * v173) / v172;
              ++v169;
            }

            while (v169 != 3);
            v182 = 1;
            while (1)
            {
              v183 = v118 / v182;
              v184 = vabds_f32(*(&v357 + 1), v183);
              v185 = *(&v357 + 1) > 1000.0 && v184 < 20.0;
              v186 = v185;
              if (v184 < 6.0 || v186)
              {
                break;
              }

              if (++v182 == 30)
              {
                v183 = *(&v357 + 1);
                goto LABEL_209;
              }
            }

            *(&v357 + 1) = v118 / v182;
LABEL_209:
            v187 = 1;
            while (1)
            {
              v188 = v118 / v187;
              v189 = vabds_f32(*&v357, v188);
              v190 = *&v357 > 1000.0 && v189 < 20.0;
              v191 = v190;
              if (v189 < 6.0 || v191)
              {
                break;
              }

              if (++v187 == 30)
              {
                v188 = *&v357;
                goto LABEL_221;
              }
            }

            *&v357 = v118 / v187;
LABEL_221:
            v192 = 1;
            while (1)
            {
              v193 = v118 / v192;
              v194 = vabds_f32(v356, v193);
              v195 = v356 > 1000.0 && v194 < 20.0;
              v196 = v195;
              if (v194 < 6.0 || v196)
              {
                break;
              }

              if (++v192 == 30)
              {
                v193 = v356;
                goto LABEL_233;
              }
            }

            v356 = v118 / v192;
LABEL_233:
            v197 = HIDWORD(__N);
            fun_signal_noise_ratio(v59, v174, SHIDWORD(__N), v183, v146, v340, &v355);
            fun_signal_noise_ratio(v59, v174, v197, v188, v146, v340, &v354 + 1);
            fun_signal_noise_ratio(v59, v174, v197, v193, v146, v340, &v354);
            fun_signal_noise_ratio(v59, v174, v197, v118, v146, v340, &v353 + 1);
            fun_signal_correlation(v59, v174, v197, v183, v146, &v353);
            fun_signal_correlation(v59, v174, v197, v188, v146, &v352 + 1);
            fun_signal_correlation(v59, v174, v197, v193, v146, &v352);
            fun_signal_correlation(v59, v174, v197, v118, v146, &v351);
            v198 = 0;
            *v365 = v118;
            *&v365[1] = v183;
            *&v362 = &v348;
            *(&v362 + 1) = &v350;
            *&v363 = &v349 + 4;
            *(&v363 + 1) = &v349;
            *&v365[2] = v188;
            *&v365[3] = v193;
            do
            {
              **(&v362 + v198) = quadratic_interpolation_y(&v174[(((*&v365[v198] * v172) / v173) + 0.5) - 1]);
              ++v198;
            }

            while (v198 != 4);
            if (v171 >= -1)
            {
              v199 = (v171 / 2 + 1);
              v200 = v174;
              do
              {
                v201 = *v200;
                if (*v200 < 0.00001)
                {
                  v201 = 0.00001;
                }

                *v200++ = v201;
                --v199;
              }

              while (v199);
            }

            vvlogf(*(a1 + 288), v174, &__N + 1);
            fun_get_histogram(*(a1 + 288), SHIDWORD(__N), *(a1 + 336), *(a1 + 352), *(a1 + 344));
            v202 = *(a1 + 336);
            v203 = 0.0;
            v341 = 0.0;
            if (v202 >= 1)
            {
              v204 = 0;
              v206 = *(a1 + 344);
              v205 = *(a1 + 352);
              v207 = v205;
              v208 = *(a1 + 336);
              do
              {
                v209 = *v207++;
                v204 += v209;
                --v208;
              }

              while (v208);
              v210 = 0;
              while (1)
              {
                v211 = *v205++;
                v210 += v211;
                if ((*(a1 + 48) * v204) <= v210)
                {
                  break;
                }

                ++v206;
                if (!--v202)
                {
                  v212 = 0.0;
                  goto LABEL_248;
                }
              }

              v212 = *v206;
LABEL_248:
              v341 = v212;
            }

            v213 = *(a1 + 572);
            v214 = *(&v357 + 1);
            if (vabds_f32(v213, *(&v357 + 1)) < 3.0)
            {
              v203 = 0.2;
            }

            v338 = v355;
            v342 = *(&v353 + 1);
            if ((v355 + v203) < *(&v353 + 1))
            {
              goto LABEL_255;
            }

            v215 = v350;
            v216 = expf(v341);
            if (v216 <= (v348 * 0.02))
            {
              v216 = v348 * 0.02;
            }

            if (v215 >= v216)
            {
              v217 = (fabsf(v118 - (roundf(v118 / v214) * v214)) / v214) >= 0.02;
            }

            else
            {
LABEL_255:
              v217 = 1;
            }

            v218 = *&v357;
            v219 = 0.2;
            if (vabds_f32(v213, *&v357) >= 3.0)
            {
              v219 = 0.0;
            }

            v339 = *(&v354 + 1);
            if ((*(&v354 + 1) + v219) < v342)
            {
              goto LABEL_263;
            }

            v220 = *(&v349 + 1);
            v221 = expf(v341);
            if (v221 <= (v348 * 0.02))
            {
              v221 = v348 * 0.02;
            }

            if (v220 >= v221)
            {
              v222 = (fabsf(v118 - (roundf(v118 / v218) * v218)) / v218) >= 0.02;
            }

            else
            {
LABEL_263:
              v222 = 1;
            }

            LODWORD(v223) = v354;
            v224 = v356;
            v225 = 0.2;
            if (vabds_f32(v213, v356) >= 3.0)
            {
              v225 = 0.0;
            }

            if ((*&v354 + v225) < v342)
            {
              goto LABEL_271;
            }

            v226 = *&v349;
            v227 = expf(v341);
            if (v227 <= (v348 * 0.02))
            {
              v227 = v348 * 0.02;
            }

            if (v226 >= v227)
            {
              v263 = (fabsf(v118 - (roundf(v118 / v224) * v224)) / v224);
              v228 = 0.0;
              if (v217)
              {
                v229 = 0.0;
              }

              else
              {
                v229 = v214;
              }

              if (!v222)
              {
                v228 = v218;
              }

              if (v263 < 0.02)
              {
LABEL_277:
                v230 = 0.0;
                if (fabs(v229 + -111.1) <= 1.0)
                {
                  v229 = 0.0;
                }

                v231 = fabs(v229 + -111.1);
                if (v231 > 1.0)
                {
                  v232 = v228;
                }

                else
                {
                  v232 = 0.0;
                }

                v357 = __PAIR64__(LODWORD(v229), LODWORD(v232));
                if (v231 > 1.0)
                {
                  v233 = v224;
                }

                else
                {
                  v233 = 0.0;
                }

                v356 = v233;
                if (v232 <= v233)
                {
                  v234 = v233;
                }

                else
                {
                  v234 = v232;
                }

                if (v229 <= v234)
                {
                  v236 = 0;
                }

                else
                {
                  v235 = v339;
                  if (v339 <= v223)
                  {
                    v235 = v223;
                  }

                  if (vabds_f32(v213, v229) >= 3.0)
                  {
                    v230 = 0.2;
                  }

                  v236 = v338 > (v235 + v230);
                }

                if (v229 <= v233)
                {
                  v237 = v233;
                }

                else
                {
                  v237 = v229;
                }

                v238 = vabds_f32(v213, v232);
                if (v232 <= v237)
                {
                  v241 = 0;
                }

                else
                {
                  v239 = v338;
                  if (v338 <= v223)
                  {
                    v239 = v223;
                  }

                  v240 = 0.0;
                  if (v238 >= 3.0)
                  {
                    v240 = 0.2;
                  }

                  v241 = v339 > (v239 + v240);
                }

                if (v229 <= v232)
                {
                  v242 = v232;
                }

                else
                {
                  v242 = v229;
                }

                v158 = v233 <= v242;
                v243 = vabds_f32(v213, v233);
                if (v158)
                {
                  v246 = 0;
                }

                else
                {
                  v244 = v338;
                  if (v338 <= v339)
                  {
                    v244 = v339;
                  }

                  v245 = 0.0;
                  if (v243 >= 3.0)
                  {
                    v245 = 0.2;
                  }

                  v246 = v223 > (v244 + v245);
                }

                if (v229 >= v232 || v333 >= flt_2249D2198[v238 < 3.0] || *(&v349 + 1) <= (flt_2249D21A0[v238 < 3.0] * v350))
                {
                  v248 = 0;
                }

                else
                {
                  v185 = v238 < 3.0;
                  v247 = 0.0;
                  if (v185)
                  {
                    v247 = 0.5;
                  }

                  v248 = (v339 + v247) > v338;
                }

                if (v232 >= v233 || v333 >= flt_2249D2198[v243 < 3.0] || *&v349 <= (flt_2249D21A0[v243 < 3.0] * *(&v349 + 1)))
                {
                  v250 = 0;
                }

                else
                {
                  v185 = v243 < 3.0;
                  v249 = 0.0;
                  if (v185)
                  {
                    v249 = 0.5;
                  }

                  v250 = (v223 + v249) > v339;
                }

                if (v233 == 0.0 && v229 == 0.0 && v232 == 0.0)
                {
                  v346 = __PAIR64__(v351, LODWORD(v342));
                  v251 = HIDWORD(__N);
                  v252 = v348;
                  v253 = (v348 * 0.3);
                  v254 = expf(v341);
                  if (v254 * 1.2 >= v253)
                  {
                    v253 = v254 * 1.2;
                  }

                  if ((v252 * 0.2) <= v254)
                  {
                    v255 = v254;
                  }

                  else
                  {
                    v255 = v252 * 0.2;
                  }

                  v256 = 31;
                  while (1)
                  {
                    v232 = v118 / --v256;
                    if (v232 >= 90.0)
                    {
                      v257 = *(a1 + 280);
                      v258 = *(a1 + 60);
                      fun_get_spectrum_value(v118 / v256, v257, v251, v258, &v347);
                      v259 = vabds_f32(v232, v213);
                      if (v259 > 3.0 && v253 < v347)
                      {
                        break;
                      }

                      if (v259 <= 3.0 && v347 > v255)
                      {
                        break;
                      }
                    }

                    if (v256 <= 2)
                    {
                      v232 = v118;
                      goto LABEL_374;
                    }
                  }

                  fun_signal_noise_ratio(v59, v257, v251, v118 / v256, v258, v340, &v346);
                  fun_signal_correlation(v59, v257, v251, v118 / v256, v258, &v346 + 1);
LABEL_374:
                  v265 = 1;
                  while (1)
                  {
                    v266 = v118 / v265;
                    if (vabds_f32(v232, v266) < 5.0)
                    {
                      break;
                    }

                    if (++v265 == 31)
                    {
                      v266 = v232;
                      break;
                    }
                  }

                  v267 = fabsf(v266 + -100.0);
                  v268 = fabsf(v266 + -120.0);
                  v269 = *(&v346 + 1);
                  if (v266 < 140.0 && v267 > 1.5 && v268 > 1.5 && *(&v346 + 1) < 0.75)
                  {
                    if (v118 >= 140.0)
                    {
                      v269 = *&v351;
                      v346 = __PAIR64__(v351, LODWORD(v342));
                      v266 = v118;
                    }

                    else
                    {
                      v273 = 0.0;
                      if (*&v346 >= 0.5)
                      {
                        v273 = 1.0;
                        if (*&v346 > 0.5 && *&v346 <= 0.75)
                        {
                          v273 = (*&v346 + -0.5) * 4.0;
                        }
                      }

                      v269 = *(&v346 + 1) * v273;
                      *&v346 = *&v346 * v273;
                      *(&v346 + 1) = *(&v346 + 1) * v273;
                    }
                  }

                  v274 = *(a1 + 280);
                  v275 = HIDWORD(__N);
                  v276 = *(a1 + 60);
                  fun_signal_correlation(v59, v274, SHIDWORD(__N), v213, v276, &v344 + 1);
                  fun_signal_noise_ratio(v59, v274, v275, v213, v276, v340, &v344);
                  if (*(a1 + 688) > 0.0 && vabds_f32(v213, *(a1 + 684)) < 2.0 && *(&v344 + 1) > (v269 * 5.0) && *(a1 + 564) >= 19)
                  {
                    v346 = v344;
                    v269 = *(&v344 + 1);
                    v266 = v213;
                  }

                  if ((fabsf(v213 - (roundf(v213 / v266) * v266)) / v266) < 0.02)
                  {
                    v277 = 0;
                    if (v213 <= (v266 + 10.0) || *(&v344 + 1) <= 0.4)
                    {
LABEL_407:
                      v278 = (fabsf(v266 - (roundf(v266 / v213) * v213)) / v213) < 0.02 && v266 * 0.9 > v213 && *(&v344 + 1) > 0.4 && *(&v344 + 1) * 0.7 > v269 && *(a1 + 564) > 9;
                      v279 = 1;
                      while (2)
                      {
                        v280 = v279;
                        for (i = 1; i != 20; ++i)
                        {
                          if (fabsf((v266 * v280) - (i * v213)) < 0.1)
                          {
                            v282 = v266 * v280;
                            goto LABEL_420;
                          }
                        }

                        if (++v279 != 20)
                        {
                          continue;
                        }

                        break;
                      }

                      v282 = 0.0;
LABEL_420:
                      v283 = vabds_f32(v282, v118) < 0.01 && *(&v344 + 1) > 0.4 && vabds_f32(*(&v344 + 1), v269) < 0.05 && *(a1 + 564) > 9;
                      if (v277 || v278 || v283)
                      {
                        v285 = 0;
                        while (vabds_f32(v266, *(a1 + 576 + v285)) <= 3.0)
                        {
                          v285 += 4;
                          if (v285 == 32)
                          {
                            v284 = v266;
                            if (!v283)
                            {
                              goto LABEL_433;
                            }

                            break;
                          }
                        }

                        v269 = *(&v344 + 1);
                        HIDWORD(v346) = HIDWORD(v344);
                        v284 = v213;
                      }

                      else
                      {
                        v284 = v266;
                      }

LABEL_433:
                      *(a1 + 576) = *(a1 + 580);
                      *(a1 + 592) = *(a1 + 596);
                      *(a1 + 600) = *(a1 + 604);
                      *(a1 + 604) = v266;
                      memmove((a1 + 608), (a1 + 612), 0x44uLL);
                      *(a1 + 676) = v266;
                      if (v284 <= 90.0 || fabsf(v284 + -5333.0) <= 4.0)
                      {
                        if (v213 <= 90.0 || fabsf(v213 + -5333.0) <= 4.0)
                        {
                          HIDWORD(v346) = 0;
                          v269 = 0.0;
                          v284 = 120.0;
                        }

                        else
                        {
                          v269 = *(&v344 + 1);
                          HIDWORD(v346) = HIDWORD(v344);
                          v284 = v213;
                        }
                      }

                      v286 = *(a5 + 28) != 1 && v335;
                      if (v286)
                      {
                        HIDWORD(v346) = 0;
                        v269 = 0.0;
                      }

                      *(a5 + 8) = v269;
                      *a5 = v284;
                      v287 = (a5 + 16);
                      fun_dc_ratio(v334, v274, v275, v284, v276, v336, (a5 + 16), *(a1 + 56));
                      v288 = *a5;
                      fun_signal_correlation2(v59, *(a1 + 280), v275, *a5, *(a1 + 60), &v346 + 1);
                      v289 = *(a5 + 16);
                      v290 = 0.0;
                      if (v289 >= 65.0)
                      {
                        v290 = 1.0;
                        if (v289 > 65.0 && v289 <= 70.0)
                        {
                          v290 = (v289 + -65.0) / 5.0;
                        }
                      }

                      *(a5 + 8) = (v290 * *(&v346 + 1)) + ((1.0 - v290) * *(a5 + 8));
                      v291 = *(a1 + 360);
                      *(a1 + 368 + 4 * v291) = v288;
                      v292 = (a1 + 440);
                      *(a1 + 440 + 4 * v291) = data_pulse_diff;
                      v293 = (a1 + 476);
                      v294 = *(a1 + 364);
                      *(a1 + 476 + 4 * v294) = 0;
                      if (*(a1 + 696))
                      {
                        v293[v294] = *v287;
                      }

                      *(a1 + 404) = *(a1 + 408);
                      *(a1 + 420) = *(a1 + 424);
                      v295 = *(a5 + 8);
                      *(a1 + 436) = v295;
                      *(a1 + 360) = (v291 + 1) % 9;
                      *(a1 + 364) = (v294 + 1) % 22;
                      v296 = (*(a1 + 564) + 1) % 0xFFFFFFF;
                      *(a1 + 564) = v296;
                      if (v296 > 8)
                      {
                        v298 = *(a1 + 384);
                        v362 = *(a1 + 368);
                        v363 = v298;
                        v364 = *(a1 + 400);
                        *(a5 + 4) = fun_median_float(&v362, 9);
                        v299 = *(a1 + 420);
                        v362 = *(a1 + 404);
                        v363 = v299;
                        v364 = *(a1 + 436);
                        *(a5 + 12) = 0;
                        v295 = 0.0;
                        if (!v286)
                        {
                          v295 = fun_median_float(&v362, 9);
                          *(a5 + 12) = v295;
                        }

                        v300 = *(a1 + 572);
                        if (v300 <= *a5)
                        {
                          v301 = *a5;
                        }

                        else
                        {
                          v301 = *(a1 + 572);
                        }

                        if (v300 >= *a5)
                        {
                          v300 = *a5;
                        }

                        if ((fabsf(v301 - (roundf(v301 / v300) * v300)) / v300) >= 0.02 && *(a5 + 8) > 0.7)
                        {
                          *(a5 + 4) = *a5;
                          *(a1 + 564) = 0;
                          *(a1 + 688) = 0;
                        }

                        v302 = (a1 + 408);
                        LOBYTE(v297) = 1;
                        v303 = 8;
                        do
                        {
                          v297 = v297 && *v302 > *(v302 - 1);
                          ++v302;
                          --v303;
                        }

                        while (v303);
                        v304 = 0;
                        data_pulse_diff = *v292;
                        do
                        {
                          if (data_pulse_diff < v292[v304])
                          {
                            data_pulse_diff = v292[v304];
                          }

                          ++v304;
                        }

                        while (v304 != 9);
                        v296 = *(a1 + 564);
                        if (v296 > 21)
                        {
                          v306 = 0;
                          v305 = *v293;
                          do
                          {
                            if (v305 < v293[v306])
                            {
                              v305 = v293[v306];
                            }

                            ++v306;
                          }

                          while (v306 != 22);
LABEL_477:
                          *(a5 + 24) = v305;
                          v307 = 0.0;
                          if (data_pulse_diff >= v337)
                          {
                            v308 = v337 >= data_pulse_diff || data_pulse_diff > v332;
                            v307 = (data_pulse_diff - v337) / (v332 - v337);
                            if (v308)
                            {
                              v307 = 1.0;
                            }
                          }

                          v309 = *(a5 + 8);
                          if (v309 < 0.8 && *(a5 + 28) != 1)
                          {
                            v310 = 1.0 - v307;
                            v309 = v309 * v310;
                            v295 = v310 * v295;
                            *(a5 + 8) = v309;
                            *(a5 + 12) = v295;
                          }

                          *(a1 + 680) = v118;
                          v311 = *(a5 + 4);
                          *(a1 + 572) = v311;
                          *(a1 + 704) = v295;
                          if (v305 >= 30.0)
                          {
                            if (v305 <= 70.0)
                            {
                              v312 = (v305 * 0.0067) + 0.1333;
                            }

                            else
                            {
                              v312 = 0.6;
                            }
                          }

                          else
                          {
                            v312 = 0.3333;
                          }

                          v313 = v312 * 0.6;
                          if (!v297)
                          {
                            v313 = v312;
                          }

                          v314 = (v295 + -0.5) * 10.0;
                          if (v314 >= 0.0)
                          {
                            v315 = v314 + 65.0;
                          }

                          else
                          {
                            v315 = 65.0;
                          }

                          v316 = *(a5 + 28);
                          *(a1 + 692) = v316;
                          switch(v316)
                          {
                            case 3:
                              v317 = 0;
                              if (v305 >= (v315 + -6.0) || v295 <= 0.2433)
                              {
                                goto LABEL_527;
                              }

                              if (v295 <= v313)
                              {
                                v318 = v309 > 0.5 && v295 > 0.8;
                                v317 = v318;
                                goto LABEL_526;
                              }

                              goto LABEL_518;
                            case 1:
                              v319 = v313 + -0.2;
                              v320 = 0.3333;
                              if (v319 >= 0.3333)
                              {
                                v320 = v319;
                              }

                              if (v295 < 0.1533 || (v295 < v320 ? (v321 = v305 < v315) : (v321 = 0), !v321))
                              {
                                v317 = 0;
                                v318 = 3;
                                if (v305 < v315 && v295 >= 0.1533)
                                {
                                  v317 = 1;
LABEL_527:
                                  if (vabds_f32(*(a1 + 608), v266) <= 0.5)
                                  {
                                    v323 = 0;
                                    do
                                    {
                                      v324 = v323;
                                      if (v323 == 16)
                                      {
                                        break;
                                      }

                                      v325 = vabds_f32(*(a1 + 612 + 4 * v323++), v266);
                                    }

                                    while (v325 <= 0.5);
                                    v322 = v324 > 0xF;
                                  }

                                  else
                                  {
                                    v322 = 0;
                                  }

                                  v326 = v295 <= 0.8 || v296 <= 8;
                                  v327 = v317 & v322;
                                  if (!v326)
                                  {
                                    v327 = 1;
                                  }

                                  if (v327 == 1 && v316 == 1)
                                  {
                                    *(a1 + 684) = v311;
                                    *(a1 + 688) = v295;
                                  }

                                  if (!*(a1 + 568))
                                  {
                                    *(a1 + 568) = 1;
                                  }

                                  v329 = *(a1 + 696);
                                  if (v329 >= 4)
                                  {
                                    LOBYTE(v317) = 0;
                                  }

                                  v331 = v295 == 0.0 && v311 == 120.0;
                                  if ((v317 & 1) != 0 || v331)
                                  {
                                    *(a5 + 28) = 0;
                                  }

                                  result = 0;
                                  *(a1 + 696) = v329 + 1;
                                  return result;
                                }

LABEL_526:
                                *(a5 + 28) = v318;
                                goto LABEL_527;
                              }

                              break;
                            case 0:
                              if (v295 <= v313 && (v295 <= 0.5 || v309 <= 0.5) || v305 >= v315)
                              {
                                v317 = 0;
                                v318 = 3;
                                if (v305 < v315 && v295 >= 0.1533)
                                {
                                  goto LABEL_527;
                                }

                                goto LABEL_526;
                              }

LABEL_518:
                              v318 = 1;
                              v317 = 1;
                              goto LABEL_526;
                          }

                          v318 = 0;
                          v317 = 0;
                          goto LABEL_526;
                        }
                      }

                      else
                      {
                        v297 = 0;
                        *(a5 + 4) = *a5;
                        *(a5 + 12) = v295;
                      }

                      v305 = *v287;
                      goto LABEL_477;
                    }

                    if ((*&v344 + 1.5) > *&v346)
                    {
                      v277 = *(a1 + 564) > 9;
                      goto LABEL_407;
                    }
                  }

                  v277 = 0;
                  goto LABEL_407;
                }

                if (v229 <= 0.0 || v232 <= 0.0 || v233 <= 0.0)
                {
                  if (v229 <= 0.0)
                  {
                    v264 = v232 <= 0.0 || v250;
                    if (v264)
                    {
                      goto LABEL_372;
                    }

                    goto LABEL_373;
                  }
                }

                else
                {
                  v262 = v236 || v241;
                  if ((v262 | v246))
                  {
                    if (!v236)
                    {
                      if ((v262 & 1) == 0)
                      {
LABEL_372:
                        v346 = __PAIR64__(v352, LODWORD(v223));
                        v232 = v233;
                        goto LABEL_374;
                      }

LABEL_373:
                      v346 = __PAIR64__(HIDWORD(v352), LODWORD(v339));
                      goto LABEL_374;
                    }

LABEL_367:
                    v346 = __PAIR64__(v353, LODWORD(v338));
                    v232 = v229;
                    goto LABEL_374;
                  }
                }

                if (v248)
                {
                  goto LABEL_373;
                }

                goto LABEL_367;
              }
            }

            else
            {
LABEL_271:
              v228 = 0.0;
              if (v217)
              {
                v229 = 0.0;
              }

              else
              {
                v229 = v214;
              }

              if (!v222)
              {
                v228 = v218;
              }
            }

            v224 = 0.0;
            goto LABEL_277;
          }

          v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
          {
            v21 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v21;
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            flicker_data_processing(a1, v21);
          }
        }
      }
    }
  }

  return 1;
}