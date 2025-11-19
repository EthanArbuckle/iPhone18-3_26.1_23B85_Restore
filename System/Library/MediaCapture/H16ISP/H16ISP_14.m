uint64_t GetDistortionCenter(const __CFDictionary *a1, int a2, int a3, int a4, int a5, CGPoint *a6)
{
  dict = 0;
  point = *MEMORY[0x277CBF348];
  v14 = *MEMORY[0x277CBF3A0];
  v15 = *(MEMORY[0x277CBF3A0] + 16);
  if (!FigCFDictionaryGetCGRectIfPresent() && !FigCFDictionaryGetCGRectIfPresent() && !FigCFDictionaryGetCGRectIfPresent())
  {
    return 3758097084;
  }

  v11 = (a2 + -1.0) * 0.5;
  v12 = (a3 + -1.0) * 0.5;
  if (FigCFDictionaryGetValueIfPresent())
  {
    if (CGPointMakeWithDictionaryRepresentation(dict, &point))
    {
      v11 = v11 + (point.x - (*&v14 + (*&v15 + -1.0) * 0.5)) * a4;
      v12 = v12 + (point.y - (*(&v14 + 1) + (*(&v15 + 1) + -1.0) * 0.5)) * a5;
    }
  }

  result = 0;
  a6->x = v11;
  a6->y = v12;
  return result;
}

uint64_t GetGDCPolynomials(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 + 260);
  v5 = *(a2 + 16);
  if ((v5 - 49921) >= 5)
  {
    if (v5 == 49926)
    {
      v35 = (a4 + 32);
      v36 = (a3 + 32);
      v37 = 8;
      do
      {
        v38 = *(v4 - 8);
        *(v35 - 8) = v38;
        v39 = *(v4 - 24);
        *v35++ = v39;
        v40 = *v4;
        *(v36 - 8) = v40;
        v41 = *(v4 - 16);
        *v36++ = v41;
        ++v4;
        --v37;
      }

      while (v37);
      return 0;
    }

    else
    {
      return 3758097126;
    }
  }

  else
  {
    result = 0;
    *a4 = 0;
    v7 = *(a2 + 436);
    *(a4 + 4) = v7;
    v8 = *(a2 + 444);
    *(a4 + 8) = v8;
    v9 = *(a2 + 452);
    *(a4 + 12) = v9;
    v10 = *(a2 + 460);
    *(a4 + 16) = v10;
    v11 = *(a2 + 468);
    *(a4 + 20) = v11;
    v12 = *(a2 + 476);
    *(a4 + 24) = v12;
    v13 = *(a2 + 484);
    *(a4 + 28) = v13;
    *(a4 + 32) = 0;
    v14 = *(a2 + 308);
    *(a4 + 36) = v14;
    v15 = *(a2 + 316);
    *(a4 + 40) = v15;
    v16 = *(a2 + 324);
    *(a4 + 44) = v16;
    v17 = *(a2 + 332);
    *(a4 + 48) = v17;
    v18 = *(a2 + 340);
    *(a4 + 52) = v18;
    v19 = *(a2 + 348);
    *(a4 + 56) = v19;
    v20 = *(a2 + 356);
    *(a4 + 60) = v20;
    *a3 = 0;
    v21 = *(a2 + 500);
    *(a3 + 4) = v21;
    v22 = *(a2 + 508);
    *(a3 + 8) = v22;
    v23 = *(a2 + 516);
    *(a3 + 12) = v23;
    v24 = *(a2 + 524);
    *(a3 + 16) = v24;
    v25 = *(a2 + 532);
    *(a3 + 20) = v25;
    v26 = *(a2 + 540);
    *(a3 + 24) = v26;
    v27 = *(a2 + 548);
    *(a3 + 28) = v27;
    *(a3 + 32) = 0;
    v28 = *(a2 + 372);
    *(a3 + 36) = v28;
    v29 = *(a2 + 380);
    *(a3 + 40) = v29;
    v30 = *(a2 + 388);
    *(a3 + 44) = v30;
    v31 = *(a2 + 396);
    *(a3 + 48) = v31;
    v32 = *(a2 + 404);
    *(a3 + 52) = v32;
    v33 = *(a2 + 412);
    *(a3 + 56) = v33;
    v34 = *(a2 + 420);
    *(a3 + 60) = v34;
  }

  return result;
}

uint64_t GetDistortionPolynomials(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  v6 = 0;
  v7 = vcvtd_n_f64_s32(a6, 0x10uLL);
  if (!a5)
  {
    v7 = 1.0;
  }

  v8 = (a2 + 32);
  v9 = (a1 + 32);
  do
  {
    *(a3 + 4 * v6) = *v8 + (*v9 * v7);
    *(a4 + 4 * v6++) = *(v8 - 8) + (*(v9 - 8) * v7);
    ++v8;
    ++v9;
  }

  while (v6 != 8);
  return 0;
}

float ComputeLensPSF(int a1, int a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  v16 = 1.0;
  v11 = a3 * a1;
  v12 = a3 * a2;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v17.origin.x = a4;
  v17.origin.y = a5;
  v17.size.width = a6;
  v17.size.height = a7;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v17);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF5300], DictionaryRepresentation);
  FigMotionComputeLensPositionScalingFactor(Mutable, a6, a7, v11, v12, &v16);
  CFRelease(DictionaryRepresentation);
  CFRelease(Mutable);
  return v16;
}

CGFloat ComputeOpticalCenter(int a1, int a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, float a8, float a9, unsigned int a10, double a11, unsigned int a12, BOOL a13)
{
  v30 = *MEMORY[0x277CBF348];
  *&v23 = a10;
  v24 = a10 / 1000000.0;
  LODWORD(v23) = a12;
  v25 = v23 / 1000000.0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v32.origin.x = a4;
  v32.origin.y = a5;
  v32.size.width = a6;
  v32.size.height = a7;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v32);
  v31.x = v24;
  v31.y = v25;
  v28 = CGPointCreateDictionaryRepresentation(v31);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF5300], DictionaryRepresentation);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF5000], v28);
  FigMotionComputePrincipalPoint(Mutable, a9, a8, a11, a6, a7, a3 * a1, a3 * a2, a13, &v30);
  CFRelease(v28);
  CFRelease(DictionaryRepresentation);
  CFRelease(Mutable);
  return v30.x;
}

double H16ISPMetrics::AddSample(H16ISPMetrics *this, uint64_t a2, unint64_t a3)
{
  v3 = *this;
  result = 0.0;
  if (a2 - 1 < a3 && v3 != 0)
  {
    v6 = *(this + 4);
    *(v3 + 8 * v6) = a3 - a2;
    v8 = *(this + 2);
    v7 = *(this + 3);
    *(this + 4) = (v6 + 1) % v8;
    if (v7 < v8)
    {
      *(this + 3) = v7 + 1;
    }

    return ((a3 - a2) * *(this + 8) / *(this + 9)) / 1000000.0;
  }

  return result;
}

H16ISPMetrics *H16ISPMetrics::StartTimer(H16ISPMetrics *this)
{
  if (*this)
  {
    v1 = this;
    if (!*(this + 3))
    {
      this = mach_absolute_time();
      *(v1 + 3) = this;
    }
  }

  return this;
}

double H16ISPMetrics::StopTimer(H16ISPMetrics *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return 0.0;
  }

  v3 = mach_absolute_time();
  result = H16ISPMetrics::AddSample(this, v1, v3);
  *(this + 3) = 0;
  return result;
}

void H16ISPMetrics::GetMetricsSummary(_DWORD *a1, _DWORD *a2)
{
  if (a2)
  {
    bzero(a2, 0x38uLL);
    v5 = a1[2];
    v4 = a1[3];
    *a2 = v4;
    a2[1] = v5;
    a2[2] = a1[4];
    if (v4)
    {
      operator new[]();
    }
  }
}

void H16ISPMetrics::PrintMetricsSummary(H16ISPMetrics *this)
{
  v11 = *MEMORY[0x277D85DE8];
  H16ISPMetrics::GetMetricsSummary(this, v3);
  v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v2 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v10) = v3[0];
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_DEFAULT, " Number of samples: %d\n", buf, 8u);
    v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  if (v1 == v2)
  {
    v1 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v10) = v3[1];
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_DEFAULT, " Maximum samples:   %d\n", buf, 8u);
    v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  if (v1 == v2)
  {
    v1 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = v4;
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_DEFAULT, " Minimum time (ms): %.3f\n", buf, 0xCu);
    v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  if (v1 == v2)
  {
    v1 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = v5;
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_DEFAULT, " Maximum time (ms): %.3f\n", buf, 0xCu);
    v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  if (v1 == v2)
  {
    v1 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = v6;
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_DEFAULT, " Average time (ms): %.3f\n", buf, 0xCu);
    v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  if (v1 == v2)
  {
    v1 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = v7;
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_DEFAULT, " Median time (ms): %.3f\n", buf, 0xCu);
    v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  if (v1 == v2)
  {
    v1 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = v8;
    _os_log_impl(&dword_2247DB000, v1, OS_LOG_TYPE_DEFAULT, " Standard deviation (ms): %.3f\n", buf, 0xCu);
  }
}

H16ISPMetrics *H16ISPMetrics::ClearSamples(H16ISPMetrics *this)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

void H16ISPMetrics::H16ISPMetrics(H16ISPMetrics *this, int a2)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = a2;
  *(this + 3) = 0;
  operator new[]();
}

{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = a2;
  *(this + 3) = 0;
  operator new[]();
}

void H16ISPMetrics::~H16ISPMetrics(H16ISPMetrics *this)
{
  v1 = *this;
  if (v1)
  {
    MEMORY[0x22AA55B40](v1, 0x1000C8000313F17);
  }
}

{
  v1 = *this;
  if (v1)
  {
    MEMORY[0x22AA55B40](v1, 0x1000C8000313F17);
  }
}

uint64_t H16ISP::H16ISPGraphInfoNode::onMessageProcessing(H16ISP::H16ISPGraphInfoNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  pthread_mutex_lock((a2 + 8));
  v3 = *(a2 + 111);
  if (!*(a2 + 25))
  {
    if (!v3)
    {
      puts("H16ISPGraphInfoNode - No buffers in message (that is strange)");
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (!v3)
  {
LABEL_5:
    printf("H16ISPGraphInfoNode - Single-channel frame message (channel %d)\n");
    goto LABEL_6;
  }

  printf("H16ISPGraphInfoNode - Synced-pair frame message (channels %d and %d). Timestamp delta: %6.3f mSec\n");
LABEL_6:
  pthread_mutex_unlock((a2 + 8));
  return 0;
}

H16ISP::H16ISPGraphInfoNode *H16ISP::H16ISPGraphInfoNode::H16ISPGraphInfoNode(H16ISP::H16ISPGraphInfoNode *this)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 1);
  *v2 = &unk_283813ED0;
  mach_timebase_info((v2 + 80));
  return this;
}

void H16ISP::H16ISPGraphInfoNode::~H16ISPGraphInfoNode(H16ISP::H16ISPGraphInfoNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t CppUtils::MachTimeToMicroseconds(uint64_t this, unint64_t *a2, unint64_t *a3)
{
  v4 = this;
  v5 = dword_27D6F274C;
  if (!dword_27D6F274C)
  {
    this = mach_timebase_info(&CppUtils::MachTimeToMicroseconds(unsigned long long,unsigned long long *)::sTimebaseInfo);
    v5 = dword_27D6F274C;
  }

  *a2 = CppUtils::MachTimeToMicroseconds(unsigned long long,unsigned long long *)::sTimebaseInfo * v4 / v5 / 0x3E8;
  return this;
}

uint64_t H16ISP::H16ISPPearlCalibrationNodeBase::H16ISPPearlCalibrationNodeBase(uint64_t a1, uint64_t a2, char a3, int a4, char a5)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(a1, 7);
  v10 = 0;
  *v11 = &unk_283813F48;
  *(v11 + 80) = a2;
  *(v11 + 88) = -1;
  *(v11 + 92) = 0;
  *(v11 + 94) = a5;
  *(v11 + 95) = a3;
  v12 = (*(a2 + 4304) + 16);
  v13 = 0xFFFF;
  *(v11 + 96) = a4;
  *(v11 + 100) = 2;
  v14 = 0xFFFF;
  do
  {
    v16 = *v12;
    v12 += 26;
    v15 = v16;
    if (v16 == 1718776695 || v15 == 1718775412)
    {
      v14 = v10;
      *(a1 + 90) = v10;
    }

    else if (v15 == 1718186595)
    {
      v13 = v10;
      *(a1 + 88) = v10;
    }

    ++v10;
  }

  while (v10 != 6);
  if (v14 == 0xFFFF || v13 == 0xFFFF)
  {
    *(a1 + 100) = 0;
    v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v18 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPPearlCalibrationNodeBase::H16ISPPearlCalibrationNodeBase();
    }
  }

  return a1;
}

uint64_t H16ISP::H16ISPPearlCalibrationNodeBase::shouldProcessByPearlMetadata(H16ISP::H16ISPPearlCalibrationNodeBase *this, const H16ISP::H16ISPFrameMetadata *a2, H16ISP::H16ISPFilterGraphMessage *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 44);
  if (!v3 || !v3[1])
  {
    return 1;
  }

  if (v3[14] - 1 >= 2)
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
    }

    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    LOWORD(v17[0]) = 0;
    v7 = "Pearl Calibration (MI): Projector GMC hasn't completed yet\n";
    goto LABEL_15;
  }

  v4 = v3[37];
  if (!v3[37])
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
    }

    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    LOWORD(v17[0]) = 0;
    v7 = "Pearl Calibration (MI): FW says pearl system status is unknown\n";
    goto LABEL_15;
  }

  if (v4 == 1)
  {
    v11 = v3[6];
    if (v11 > 0x1B)
    {
LABEL_33:
      v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v16 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v16;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPPearlCalibrationNodeBase::shouldProcessByPearlMetadata(a2 + 352, v16);
      }

      return 0;
    }

    v12 = 1 << v11;
    if ((v12 & 0x1000011) == 0)
    {
      if ((v12 & 0x8000048) != 0)
      {
        v10 = 1;
        *(this + 93) = 1;
        return v10;
      }

      goto LABEL_33;
    }

    *(this + 93) = 0;
    return 1;
  }

  if (v4 != 2)
  {
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v13;
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v14 = *(*(a2 + 44) + 74);
    v17[0] = 67109120;
    v17[1] = v14;
    v7 = "Pearl Calibration (MI): Unknown Pearl System Status %d\n";
    v8 = v13;
    v9 = 8;
    goto LABEL_16;
  }

  *(this + 25) = 1;
  v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v6 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
  }

  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    return 0;
  }

  LOWORD(v17[0]) = 0;
  v7 = "Pearl Calibration (MI): FW says pearl system is valid!\n";
LABEL_15:
  v8 = v6;
  v9 = 2;
LABEL_16:
  _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_DEFAULT, v7, v17, v9);
  return 0;
}

uint64_t H16ISP::H16ISPPearlCalibrationNode::H16ISPPearlCalibrationNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = H16ISP::H16ISPPearlCalibrationNodeBase::H16ISPPearlCalibrationNodeBase(a1, a2, a6, a7, 0);
  *result = &unk_283813FB8;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = a3;
  *(result + 128) = a4;
  *(result + 136) = a5;
  *(result + 144) = a8;
  *(result + 152) = a9;
  *(result + 160) = 0;
  *(result + 168) = a10;
  *(result + 176) = 0;
  *(result + 184) = 0;
  return result;
}

{
  result = H16ISP::H16ISPPearlCalibrationNodeBase::H16ISPPearlCalibrationNodeBase(a1, a2, a6, a7, 0);
  *result = &unk_283813FB8;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = a3;
  *(result + 128) = a4;
  *(result + 136) = a5;
  *(result + 144) = a8;
  *(result + 152) = a9;
  *(result + 160) = 0;
  *(result + 168) = a10;
  *(result + 176) = 0;
  *(result + 184) = 0;
  return result;
}

uint64_t H16ISP::H16ISPPearlCalibrationNode::onActivate(H16ISP::H16ISPPearlCalibrationNode *this)
{
  if (!*(this + 13))
  {
    v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    *(this + 13) = dispatch_queue_create("com.apple.H16ispcalibrationnode.algo", v2);
    *(this + 14) = dispatch_group_create();
  }

  *(this + 160) = 0;
  return 0;
}

uint64_t H16ISP::H16ISPPearlCalibrationNode::onDeactivate(H16ISP::H16ISPPearlCalibrationNode *this, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v3 = v2;
  v22 = *MEMORY[0x277D85DE8];
  if (*(v2 + 104))
  {
    RgbIrCalibration::abort(*(v2 + 152));
    *(v3 + 160) = 1;
    v4 = dispatch_time(0, 2000000000);
    v5 = dispatch_group_wait(*(v3 + 112), v4);
    dispatch_release(*(v3 + 112));
    if (v5)
    {
      *(v3 + 104) = 0;
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v6 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPPearlCalibrationNode::onDeactivate();
      }

      return 0;
    }

    dispatch_release(*(v3 + 104));
    *(v3 + 104) = 0;
  }

  if (H16ISP::getPCECalib(*(v3 + 80), *(v3 + 88)))
  {
    v7 = *(v3 + 120);
    if (v7)
    {
      v7(v16, v15, *(v3 + 168));
      memcpy(__dst, v18, sizeof(__dst));
      PearlIsf::PearlIsf(v14);
      if (!PearlIsf::updatePCECalib(v14, v16, v18) && memcmp(v18, __dst, 0x3400uLL))
      {
        v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v10 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v10;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v19[0] = 0;
          _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI) finalization: updating PCECalib\n", v19, 2u);
        }

        v11 = *(v3 + 80);
        v12 = *(v3 + 88);
        v19[2] = 24581;
        v20 = v12;
        memcpy(v21, v18, sizeof(v21));
        H16ISP::H16ISPDevice::ISP_SendCommand(v11, v19, 0x340Cu, 0, 0xFFFFFFFF);
        v13 = *(v3 + 136);
        if (v13)
        {
          v13(v18, *(v3 + 168));
        }
      }

      PearlIsf::~PearlIsf(v14);
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

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPPearlCalibrationNode::onDeactivate();
    }
  }

  return 0;
}

void sub_2248F41C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PearlIsf::~PearlIsf(va);
  _Unwind_Resume(a1);
}

uint64_t H16ISP::getPCECalib(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2;
  v24 = *MEMORY[0x277D85DE8];
  v16 = 24577;
  v17 = v10;
  bzero(v18, 0x344CuLL);
  v11 = H16ISP::H16ISPDevice::ISP_SendCommand(v9, v15, 0x3458u, 0, 0xFFFFFFFF);
  v12 = 0;
  if (!v11)
  {
    if (v6)
    {
      *v6 = v19;
    }

    if (v4)
    {
      v13 = v22;
      *v4 = v21;
      *(v4 + 16) = v13;
      *(v4 + 32) = v23;
    }

    memcpy(v8, v20, 0x3400uLL);
    v12 = v18[0];
  }

  return v12 & 1;
}

void H16ISP::H16ISPPearlCalibrationNode::~H16ISPPearlCalibrationNode(H16ISP::H16ISPPearlCalibrationNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

void H16ISP::H16ISPPearlCalibrationNode::updateMetadata(H16ISP::H16ISPPearlCalibrationNode *this, __CFDictionary *a2)
{
  if (*(this + 184) == 1)
  {
    valuePtr[3] = v2;
    valuePtr[4] = v3;
    setValueCFDict<int>(a2, @"MutualInformation-Result", *(this + 47));
    setValueCFDict<int>(a2, @"MutualInformation-SelectedMode", *(this + 48));
    setValueCFDict<int>(a2, @"MutualInformation-Stage", *(this + 52));
    setValueCFDict<float>(a2, @"MutualInformation-RotationX", *(this + 49));
    setValueCFDict<float>(a2, @"MutualInformation-RotationY", *(this + 50));
    setValueCFDict<float>(a2, @"MutualInformation-RotationZ", *(this + 51));
    if (!*(this + 52))
    {
      valuePtr[0] = *(this + 27);
      v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, valuePtr);
      CFDictionarySetValue(a2, @"MutualInformation-Confidence", v6);
      CFRelease(v6);
    }
  }
}

uint64_t H16ISP::H16ISPPearlCalibrationNode::isSessionOK(H16ISP::H16ISPPearlCalibrationNode *this, __CVBuffer *a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  v4 = *(this + 93);
  if ((v4 & 1) == 0)
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPPearlCalibrationNode::isSessionOK();
    }
  }

  return v4;
}

const __CFNumber *H16ISP::H16ISPPearlCalibrationNode::isFrameOK(H16ISP::H16ISPPearlCalibrationNode *this, __CVBuffer *a2, const __CFDictionary *a3, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 0;
  }

  result = CFDictionaryGetValue(theDict, *MEMORY[0x277CF4930]);
  valuePtr = -1;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
    if (valuePtr)
    {
      result = CFDictionaryGetValue(theDict, *MEMORY[0x277CF4BC8]);
      if (result)
      {
        return (CFArrayGetCount(result) != 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPPearlCalibrationNode::algorithmPreconditions(H16ISP::H16ISPPearlCalibrationNode *this, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, const __CFDictionary *a5, const __CFDictionary *a6)
{
  isSessionOK = H16ISP::H16ISPPearlCalibrationNode::isSessionOK(this, a2, a3, a4);
  if (isSessionOK)
  {
    return H16ISP::H16ISPPearlCalibrationNode::isFrameOK(isSessionOK, v8, v9, a5) ^ 1;
  }

  else
  {
    return 2;
  }
}

uint64_t H16ISP::H16ISPPearlCalibrationNode::onMessageProcessing(H16ISP::H16ISPPearlCalibrationNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v2 = *(this + 25);
  if (v2 == 4 || v2 == 2)
  {
    *(this + 46) = 1;
    pthread_mutex_lock((a2 + 8));
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *(this + 45);
    v13 = *(this + 44);
    v14 = a2 + 112;
    v15 = a2 + 104;
    do
    {
      v16 = a2 + 344 * v6 + 80;
      v17 = *(v16 + 4);
      if (v17 == v12)
      {
        v18 = *(v16 + 5);
        v19 = v14;
        if (v18)
        {
          while (*v19)
          {
            v19 += 4;
            if (!--v18)
            {
              goto LABEL_13;
            }
          }

          v7 = *(v19 - 1);
        }
      }

LABEL_13:
      if (v17 == v13)
      {
        v20 = *(v16 + 5);
        if (v20)
        {
          v21 = v15;
          do
          {
            v22 = *(v21 + 2);
            if (v22 <= 1)
            {
              if (v22)
              {
                if (v22 == 1)
                {
                  v8 = *v21;
                }
              }

              else
              {
                v10 = *v21;
              }
            }

            else
            {
              switch(v22)
              {
                case 2:
                  v11 = *v21;
                  break;
                case 15:
                  if (!v9)
                  {
                    v9 = *v21;
                    *(this + 92) = 0;
                  }

                  break;
                case 17:
                  v9 = *v21;
                  *(this + 92) = 1;
                  break;
              }
            }

            v21 += 16;
            --v20;
          }

          while (v20);
        }
      }

      ++v6;
      v14 += 344;
      v15 += 344;
    }

    while (v6 != 3);
    pthread_mutex_unlock((a2 + 8));
    if (v8)
    {
      v23 = *MEMORY[0x277CF3F70];
      Attachment = CVBufferGetAttachment(v8, *MEMORY[0x277CF3F70], 0);
      if (Attachment)
      {
        v25 = 1;
      }

      else
      {
        v25 = v10 == 0;
      }

      if (!v25)
      {
        Attachment = CVBufferGetAttachment(v10, v23, 0);
      }

      if (Attachment)
      {
        if (*(this + 25) == 4)
        {
          (*(*this + 80))(this, Attachment);
          return 0;
        }

        if (v9)
        {
          if (!v11 || (H16ISP::H16ISPFrameMetadata::H16ISPFrameMetadata(&v41, v11, 1uLL), shouldProcessByPearlMetadata = H16ISP::H16ISPPearlCalibrationNodeBase::shouldProcessByPearlMetadata(this, &v41, v26), H16ISP::H16ISPFrameMetadata::~H16ISPFrameMetadata(&v41), shouldProcessByPearlMetadata))
          {
            if (v7)
            {
              v28 = CVBufferGetAttachment(v7, v23, 0);
              if (v28)
              {
                v29 = v28;
                v30 = (*(*this + 88))(this, v7, v8, v9, v28, Attachment);
                if (v30 != 1)
                {
                  if (v30 != 2)
                  {
                    if (H16ISP::getPCECalib(*(this + 10), *(this + 44)))
                    {
                      cf = 0;
                      v40 = 0;
                      DeepCopy = H16ISP::dictionaryCreateDeepCopy(Attachment, v31);
                      if (DeepCopy)
                      {
                        v34 = DeepCopy;
                        v35 = H16ISP::dictionaryCreateDeepCopy(v29, v33);
                        if (v35)
                        {
                          v36 = v35;
                          CVPixelBufferCreateFromCVImageBufferRef();
                          CFRelease(v34);
                          CFRelease(v36);
                        }

                        else
                        {
                          CFRelease(v34);
                        }
                      }

                      return 0;
                    }

                    v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
                    {
                      v37 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v37;
                    }

                    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                    {
                      H16ISP::H16ISPPearlCalibrationNode::onMessageProcessing();
                    }
                  }

                  *(this + 25) = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

void sub_2248F4A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN6H16ISP26H16ISPPearlCalibrationNode19onMessageProcessingEPNS_24H16ISPFilterGraphMessageE_block_invoke(uint64_t a1)
{
  keys[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if ((CVPixelBufferGetPixelFormatType(*(*(*(a1 + 32) + 8) + 24)) | 0x10) == 0x34323076)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 24);
    *(v5 + 24) = 0;
    Width = CVPixelBufferGetWidth(v6);
    Height = CVPixelBufferGetHeight(v6);
    v9 = Width >> 2;
    if (Width <= 0xA03)
    {
      v9 = 640;
    }

    if (v9 >= Width)
    {
      v9 = Width;
    }

    v10 = (2 * llroundf(vcvts_n_f32_u64(v9, 1uLL)));
    v11 = (2 * llroundf(vcvts_n_f32_u64(Height * v10 / Width, 1uLL)));
    keys[0] = *MEMORY[0x277CC4DE8];
    v12 = *MEMORY[0x277CBECE8];
    v13 = MEMORY[0x277CBF138];
    v14 = MEMORY[0x277CBF150];
    values[0] = CFDictionaryCreate(*MEMORY[0x277CBECE8], 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v3 = 1;
    v15 = CFDictionaryCreate(v12, keys, values, 1, v13, v14);
    LODWORD(v10) = CVPixelBufferCreate(v12, v10, v11, 0x34323076u, v15, (*(*(a1 + 32) + 8) + 24));
    CFRelease(values[0]);
    CFRelease(v15);
    v4 = 1;
    if (!v10)
    {
      v3 = *(*(*(a1 + 32) + 8) + 24) == 0;
      pixelTransferSessionOut[0] = 0;
      if (VTPixelTransferSessionCreate(v12, pixelTransferSessionOut))
      {
        v16 = 0;
        pixelTransferSessionOut[0] = 0;
      }

      else
      {
        v4 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut[0], v6, *(*(*(a1 + 32) + 8) + 24)) != 0;
        v16 = pixelTransferSessionOut[0];
      }

      VTPixelTransferSessionInvalidate(v16);
      CFRelease(pixelTransferSessionOut[0]);
    }

    CVBufferRelease(v6);
  }

  if (*(v2 + 95) == 1)
  {
    v58 = v3;
    v59 = v2;
    v17 = *(*(*(a1 + 32) + 8) + 24);
    v19 = *(a1 + 48);
    v18 = *(a1 + 56);
    v20 = *(a1 + 64);
    v57 = *(a1 + 72);
    v60 = 0;
    setlocale(0, "");
    time(&v60);
    v21 = localtime(&v60);
    strftime(pixelTransferSessionOut, 0x14uLL, "%m%d%g_%H%M%S", v21);
    snprintf(values, 0x400uLL, "/var/mobile/Media/DCIM/%s-RGBIR-", pixelTransferSessionOut);
    H16ISP::dumpMetadata(v19, values, "Color", v22);
    H16ISP::dumpMetadata(v20, values, "IR", v23);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v17);
    v61[0] = HIBYTE(PixelFormatType);
    v61[1] = BYTE2(PixelFormatType);
    v61[2] = BYTE1(PixelFormatType);
    v61[3] = PixelFormatType;
    v61[4] = 0;
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v17, 0);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(v17, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(v17, 0);
    snprintf(keys, 0x400uLL, "%s%s.%lux%lu.%lu.%s.bin", values, "Color", WidthOfPlane, HeightOfPlane, BytesPerRowOfPlane, v61);
    v28 = fopen(keys, "wb");
    if (v28)
    {
      v30 = v28;
      CVPixelBufferLockBaseAddress(v17, 0);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v17, 0);
      if (HeightOfPlane)
      {
        v32 = BaseAddressOfPlane;
        v33 = 0;
        v34 = 1;
        do
        {
          fwrite(&v32[v33 * BytesPerRowOfPlane], WidthOfPlane, 1uLL, v30);
          v33 = v34;
          v35 = HeightOfPlane > v34++;
        }

        while (v35);
      }

      v36 = CVPixelBufferGetBytesPerRowOfPlane(v17, 1uLL);
      v37 = CVPixelBufferGetHeightOfPlane(v17, 1uLL);
      v38 = CVPixelBufferGetBaseAddressOfPlane(v17, 1uLL);
      if (v37)
      {
        v39 = v38;
        v40 = 0;
        v41 = 1;
        do
        {
          fwrite(&v39[v40 * v36], WidthOfPlane, 1uLL, v30);
          v40 = v41;
          v35 = v37 > v41++;
        }

        while (v35);
      }

      CVPixelBufferUnlockBaseAddress(v17, 0);
      fclose(v30);
    }

    H16ISP::dumpSinglePlaneBuffer(v18, values, "IR", v29);
    H16ISP::dumpSinglePlaneBuffer(v57, values, "Depth", v42);
    v3 = v58;
    v2 = v59;
  }

  keys[0] = 0;
  if (v4 || v3)
  {
    v43 = !v4;
  }

  else
  {
    v44 = *MEMORY[0x277CBECE8];
    v45 = CVPixelBufferGetWidthOfPlane(*(*(*(a1 + 32) + 8) + 24), 0);
    v46 = CVPixelBufferGetHeightOfPlane(*(*(*(a1 + 32) + 8) + 24), 0);
    if (CVPixelBufferCreate(v44, v45, v46, 0x4C303038u, *(a1 + 48), keys))
    {
      v43 = 0;
    }

    else
    {
      CVPixelBufferLockBaseAddress(*(*(*(a1 + 32) + 8) + 24), 1uLL);
      v47 = CVPixelBufferGetBaseAddressOfPlane(*(*(*(a1 + 32) + 8) + 24), 0);
      CVPixelBufferLockBaseAddress(keys[0], 0);
      BaseAddress = CVPixelBufferGetBaseAddress(keys[0]);
      if (v47)
      {
        v49 = BaseAddress == 0;
      }

      else
      {
        v49 = 1;
      }

      v43 = !v49;
      if (!v49)
      {
        v50 = BaseAddress;
        v51 = CVPixelBufferGetHeight(keys[0]);
        v52 = CVPixelBufferGetWidth(keys[0]);
        v53 = CVPixelBufferGetBytesPerRowOfPlane(*(*(*(a1 + 32) + 8) + 24), 0);
        BytesPerRow = CVPixelBufferGetBytesPerRow(keys[0]);
        if (v51)
        {
          v55 = BytesPerRow;
          do
          {
            memcpy(v50, v47, v52);
            v47 += v53;
            v50 += v55;
            --v51;
          }

          while (v51);
        }
      }

      CVPixelBufferUnlockBaseAddress(keys[0], 0);
      CVPixelBufferUnlockBaseAddress(*(*(*(a1 + 32) + 8) + 24), 1uLL);
    }
  }

  v56 = *(*(*(a1 + 32) + 8) + 24);
  if (v56)
  {
    CVPixelBufferRelease(v56);
  }

  if (v43)
  {
    H16ISP::H16ISPPearlCalibrationNode::run(v2, *(a1 + 56), *(a1 + 64), keys[0], *(a1 + 48), *(a1 + 72));
  }

  CFRelease(*(a1 + 72));
  CFRelease(*(a1 + 56));
  if (keys[0])
  {
    CFRelease(keys[0]);
  }

  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 64));
}

float H16ISP::H16ISPPearlCalibrationNode::run(H16ISP::H16ISPPearlCalibrationNode *this, __CVBuffer *a2, __CFDictionary *a3, __CVBuffer *a4, const __CFDictionary *a5, __CVBuffer *a6)
{
  v6 = a6;
  v8 = a4;
  v10 = a2;
  v49 = *MEMORY[0x277D85DE8];
  v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v13 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v12 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v12;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI): Ready for algorithm\n", buf, 2u);
  }

  if (*(this + 160) == 1)
  {
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v13)
    {
      v14 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPPearlCalibrationNode::run();
    }

    return result;
  }

  if (a5)
  {
    Value = CFDictionaryGetValue(a5, *MEMORY[0x277CF4BC8]);
  }

  else
  {
    Value = 0;
  }

  valuePtr = -269488145;
  v17 = CFDictionaryGetValue(a3, @"StereoGMC-Result");
  if (v17)
  {
    CFNumberGetValue(v17, kCFNumberIntType, &valuePtr);
  }

  v40 = 0;
  v41 = 0;
  mach_timebase_info(&info);
  v34 = mach_absolute_time();
  kdebug_trace();
  v18 = MEMORY[0x277CBED28];
  if (!*(this + 93))
  {
    v18 = MEMORY[0x277CBED10];
  }

  v19 = RgbIrCalibration::Calibrate(*(this + 19), v10, a3, v8, a5, v6, (*(this + 92) & 1) == 0, *v18, this + 28, Value, *(this + 6788), this + 13536, &v41, &v35, &v40, v38);
  kdebug_trace();
  v20 = (mach_absolute_time() - v34) * info.numer / info.denom / 0xF4240;
  reportMutualInformationResults();
  v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v13)
  {
    v21 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v21;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v46 = v19;
    v47 = 1024;
    v48 = v20;
    _os_log_impl(&dword_2247DB000, v21, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI): status 0x%08X (%d msec)\n", buf, 0xEu);
  }

  if (v19 != 4102)
  {
    if (v19)
    {
      v23 = (*(this + 88))++ + 1;
      if ((v23 & 0x10000) != 0)
      {
        *(this + 25) = 2;
        return result;
      }

      *(this + 25) = 4;
      goto LABEL_39;
    }

    PearlIsf::PearlIsf(v31);
    Isf::setStepDetectionMode(v31, *(this + 24) != 0);
    v22 = *(this + 15);
    if (v22)
    {
      v22(buf, v32, *(this + 21));
    }

    else
    {
      bzero(buf, 0xE38uLL);
    }

    kdebug_trace();
    if (v40 == 1)
    {
      v24 = PearlIsf::RunFromMiFullGrid(v31, buf, &v30, v35, v36, v37, v38[0]);
    }

    else
    {
      v24 = PearlIsf::RunFromLmv(v31, buf, &v30, v35, v36, v37);
    }

    v25 = v24;
    kdebug_trace();
    v26 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v13)
    {
      v26 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v26;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v43 = 67109120;
      v44 = v25;
      _os_log_impl(&dword_2247DB000, v26, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (ISF): status 0x%08X\n", v43, 8u);
    }

    reportIsfResults(v25, v30.i64, v40 == 1, v41, this + 224, v32);
    v27 = *(this + 16);
    if (v27)
    {
      v27(buf, v32, *(this + 21));
    }

    *(this + 25) = 4;
    PearlIsf::~PearlIsf(v31);
    if (*(this + 25) == 4)
    {
LABEL_39:
      *(this + 184) = 1;
      v28 = v41;
      *(this + 52) = v40;
      *(this + 47) = v19;
      *(this + 48) = v28;
      v29 = v38[0];
      *(this + 196) = v38[1];
      result = v39;
      *(this + 51) = v39;
      *(this + 27) = v29;
    }
  }

  return result;
}

void sub_2248F5574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  PearlIsf::~PearlIsf(va);
  _Unwind_Resume(a1);
}

uint64_t H16ISP::H16ISPPearlCalibrationNode_Remote::H16ISPPearlCalibrationNode_Remote(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, char a6, char a7)
{
  v10 = H16ISP::H16ISPPearlCalibrationNodeBase::H16ISPPearlCalibrationNodeBase(a1, a2, a4, a5, a7);
  *v10 = &unk_283814028;
  *(v10 + 104) = a3;
  *(v10 + 112) = a6;
  *(v10 + 113) = 1;
  mach_timebase_info((v10 + 128));
  *(a1 + 120) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  return a1;
}

uint64_t H16ISP::H16ISPPearlCalibrationNode_Remote::onDeactivate(H16ISP::H16ISPPearlCalibrationNode_Remote *this, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v13 = *MEMORY[0x277D85DE8];
  if (*(v2 + 104))
  {
    v3 = v2;
    if (H16ISP::getPCECalib(*(v2 + 80), *(v2 + 88)))
    {
      if (!H16ISP::H16ISPServicesRemote::UpdateRgbIrPceCalib(*(v3 + 104), v9))
      {
        v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v4 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v10[0] = 0;
          _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI) finalization: Updating PCECalib in FW\n", v10, 2u);
        }

        v5 = *(v3 + 80);
        v6 = *(v3 + 88);
        v10[2] = 24581;
        v11 = v6;
        memcpy(v12, v9, sizeof(v12));
        H16ISP::H16ISPDevice::ISP_SendCommand(v5, v10, 0x340Cu, 0, 0xFFFFFFFF);
      }
    }

    else
    {
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPPearlCalibrationNode::onDeactivate();
      }
    }
  }

  return 0;
}

void H16ISP::H16ISPPearlCalibrationNode_Remote::~H16ISPPearlCalibrationNode_Remote(H16ISP::H16ISPPearlCalibrationNode_Remote *this)
{
  *this = &unk_283814028;
  v2 = *(this + 22);
  if (v2)
  {
    CFRelease(v2);
    *(this + 22) = 0;
  }

  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);
}

{
  H16ISP::H16ISPPearlCalibrationNode_Remote::~H16ISPPearlCalibrationNode_Remote(this);

  JUMPOUT(0x22AA55B60);
}

void H16ISP::H16ISPPearlCalibrationNode_Remote::updateMetadata(H16ISP::H16ISPPearlCalibrationNode_Remote *this, __CFDictionary *context)
{
  v2 = *(this + 22);
  if (v2)
  {
    CFDictionaryApplyFunction(v2, H16ISP::metadataCopier, context);
  }
}

uint64_t H16ISP::H16ISPPearlCalibrationNode_Remote::algorithmPreconditions(H16ISP::H16ISPPearlCalibrationNode_Remote *this, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, const __CFDictionary *a5, const __CFDictionary *a6)
{
  if (H16ISPRgbIrRunner::validateSession(a2, a6, a5, *(this + 93)))
  {
    return !H16ISPRgbIrRunner::validateFrame(a2, a6, a5, *(this + 94));
  }

  else
  {
    return 2;
  }
}

uint64_t H16ISP::H16ISPPearlCalibrationNode_Remote::onMessageProcessing(H16ISP::H16ISPPearlCalibrationNode_Remote *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v83 = *MEMORY[0x277D85DE8];
  if (!*(this + 13))
  {
    goto LABEL_95;
  }

  v4 = *(this + 25);
  if (v4 == 3)
  {
    if (*(this + 94) == 1)
    {
      v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v5 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2247DB000, v5, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI): Checking if algorithm completed in daemon\n", buf, 2u);
      }
    }

    theDict = 0;
    if (H16ISP::H16ISPServicesRemote::GetRgbIrReport(*(this + 13), &theDict))
    {
      if (*(this + 94) == 1)
      {
        v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v6 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPPearlCalibrationNode_Remote::onMessageProcessing();
        }
      }

      *(this + 25) = 0;
      goto LABEL_15;
    }

    if (!theDict)
    {
      goto LABEL_15;
    }

    Value = CFDictionaryGetValue(theDict, @"DebugInfo");
    *(this + 23) = Value;
    if (Value)
    {
      CFDictionaryRemoveValue(theDict, @"DebugInfo");
    }

    *(this + 22) = theDict;
    if (*(this + 94) == 1)
    {
      v30 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v30 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v30;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2247DB000, v30, OS_LOG_TYPE_DEFAULT, "Pearl Calibration (MI): algorithm has completed successfully in daemon\n", buf, 2u);
      }
    }

    *(this + 25) = 4;
    if (*(this + 120) != 1)
    {
      goto LABEL_15;
    }

    v31 = *(this + 36);
    v32 = *(this + 37) + 1;
    *(this + 37) = v32;
    if (v31 == 2)
    {
      if (*(this + 94) == 1)
      {
        v49 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v49 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v49;
          v32 = *(this + 37);
        }

        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = *(this + 41);
          *buf = 67109376;
          v74 = v32;
          v75 = 1024;
          v76 = v50;
          _os_log_impl(&dword_2247DB000, v49, OS_LOG_TYPE_DEFAULT, "Pearl Calibration Low Cost Detector (%d/%d)\n", buf, 0xEu);
          v32 = *(this + 37);
        }
      }

      if (v32 < *(this + 41))
      {
        goto LABEL_118;
      }

      *(this + 18) = 0;
    }

    else if (v31 == 1)
    {
      v33 = CFDictionaryGetValue(theDict, @"execute");
      v34 = CFDictionaryGetValue(theDict, @"deltaRotationX");
      v35 = CFDictionaryGetValue(theDict, @"deltaRotationY");
      v36 = CFDictionaryGetValue(theDict, @"deltaRotationZ");
      LargestRotation = H16ISP::getLargestRotation(v34, v35, v36, v37);
      v39 = CFGetTypeID(v33);
      if (v39 == CFNumberGetTypeID())
      {
        *buf = 0;
        if (!CFNumberGetValue(v33, kCFNumberIntType, buf) || *buf <= 0)
        {
LABEL_133:
          if (*(this + 37) < *(this + 38))
          {
            if (*(this + 94))
            {
              v61 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
              {
                v61 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v61;
              }

              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                v62 = *(this + 37);
                v63 = *(this + 38);
                *buf = 67109376;
                v74 = v62;
                v75 = 1024;
                v76 = v63;
                _os_log_impl(&dword_2247DB000, v61, OS_LOG_TYPE_DEFAULT, "Pearl Calibration Low Cost Detector (%d/%d): No low std found. Will try again\n", buf, 0xEu);
              }
            }

LABEL_118:
            v51 = mach_absolute_time();
LABEL_152:
            *(this + 17) = v51;
            *(this + 25) = 5;
            goto LABEL_15;
          }

          if (!*(this + 94))
          {
            goto LABEL_15;
          }

          v64 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
          {
            v64 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v64;
          }

          if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_15;
          }

          v65 = *(this + 37);
          v66 = *(this + 38);
          *buf = 67109376;
          v74 = v65;
          v75 = 1024;
          v76 = v66;
          v58 = "Pearl Calibration Low Cost Detector (%d/%d): No low std found. Won't try again\n";
          v59 = v64;
          v60 = 14;
          goto LABEL_145;
        }
      }

      else
      {
        v53 = CFGetTypeID(v33);
        if (v53 != CFBooleanGetTypeID() || !CFBooleanGetValue(v33))
        {
          goto LABEL_133;
        }
      }

      if (LargestRotation >= *(this + 40))
      {
        if (*(this + 94))
        {
          v67 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
          {
            v67 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v67;
          }

          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v68 = *(this + 37);
            v69 = *(this + 38);
            v70 = *(this + 40);
            v71 = *(this + 41);
            *buf = 67110144;
            v74 = v68;
            v75 = 1024;
            v76 = v69;
            v77 = 2048;
            v78 = LargestRotation;
            v79 = 1024;
            v80 = v70;
            v81 = 1024;
            v82 = v71;
            _os_log_impl(&dword_2247DB000, v67, OS_LOG_TYPE_DEFAULT, "Pearl Calibration Low Cost Detector (%d/%d): Found low std. Max rotation (%4.2lf) over threshold (%d). Will run %d times\n", buf, 0x24u);
          }
        }

        *(this + 18) = 2;
        v51 = mach_absolute_time();
        goto LABEL_152;
      }

      if (!*(this + 94))
      {
        goto LABEL_15;
      }

      v54 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v54 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v54;
      }

      if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v55 = *(this + 37);
      v56 = *(this + 38);
      v57 = *(this + 40);
      *buf = 67109888;
      v74 = v55;
      v75 = 1024;
      v76 = v56;
      v77 = 2048;
      v78 = LargestRotation;
      v79 = 1024;
      v80 = v57;
      v58 = "Pearl Calibration Low Cost Detector (%d/%d): Found low std. Max rotation (%4.2lf) under threshold (%d), Won't try again\n";
      v59 = v54;
      v60 = 30;
LABEL_145:
      _os_log_impl(&dword_2247DB000, v59, OS_LOG_TYPE_DEFAULT, v58, buf, v60);
    }

LABEL_15:
    v4 = *(this + 25);
  }

  if (v4 == 2 || v4 == 4)
  {
    goto LABEL_21;
  }

  if (v4 == 5 && *(this + 120) == 1)
  {
    v27 = *(this + 36);
    if (v27 == 1)
    {
      if (*(this + 39) > (mach_absolute_time() - *(this + 17)) * *(this + 32) / *(this + 33) / 0xF4240)
      {
        return 0;
      }

      v27 = *(this + 36);
    }

    if (v27 != 2 || *(this + 42) <= (mach_absolute_time() - *(this + 17)) * *(this + 32) / *(this + 33) / 0xF4240)
    {
LABEL_21:
      *(this + 46) = 1;
      pthread_mutex_lock((a2 + 8));
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = *(this + 45);
      v15 = *(this + 44);
      v16 = a2 + 112;
      v17 = a2 + 104;
      do
      {
        v18 = a2 + 344 * v8 + 80;
        v19 = *(v18 + 4);
        if (v19 == v14)
        {
          v20 = *(v18 + 5);
          v21 = v16;
          if (v20)
          {
            while (*v21)
            {
              v21 += 4;
              if (!--v20)
              {
                goto LABEL_28;
              }
            }

            v9 = *(v21 - 1);
          }
        }

LABEL_28:
        if (v19 == v15)
        {
          v22 = *(v18 + 5);
          if (v22)
          {
            v23 = v17;
            do
            {
              v24 = *(v23 + 2);
              if (v24 <= 1)
              {
                if (v24)
                {
                  if (v24 == 1)
                  {
                    v10 = *v23;
                  }
                }

                else
                {
                  v12 = *v23;
                }
              }

              else
              {
                switch(v24)
                {
                  case 2:
                    v13 = *v23;
                    break;
                  case 15:
                    if (!v11)
                    {
                      v11 = *v23;
                      *(this + 92) = 0;
                    }

                    break;
                  case 17:
                    v11 = *v23;
                    *(this + 92) = 1;
                    break;
                }
              }

              v23 += 16;
              --v22;
            }

            while (v22);
          }
        }

        ++v8;
        v16 += 344;
        v17 += 344;
      }

      while (v8 != 3);
      pthread_mutex_unlock((a2 + 8));
      v25 = MEMORY[0x277CF3F70];
      if (v10)
      {
        Attachment = CVBufferGetAttachment(v10, *MEMORY[0x277CF3F70], 0);
        if (Attachment)
        {
LABEL_80:
          if (!Attachment && v12)
          {
            Attachment = CVBufferGetAttachment(v12, *v25, 0);
          }

          if (*(this + 25) == 4)
          {
            if (Attachment)
            {
              (*(*this + 80))(this, Attachment);
            }

            return 0;
          }

          if (!v11)
          {
            if (*(this + 94) == 1)
            {
              v46 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
              {
                v46 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v46;
              }

              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                H16ISP::H16ISPPearlCalibrationNode_Remote::onMessageProcessing();
              }
            }

            return 0;
          }

          if (v13)
          {
            H16ISP::H16ISPFrameMetadata::H16ISPFrameMetadata(buf, v13, 1uLL);
            shouldProcessByPearlMetadata = H16ISP::H16ISPPearlCalibrationNodeBase::shouldProcessByPearlMetadata(this, buf, v40);
            H16ISP::H16ISPFrameMetadata::~H16ISPFrameMetadata(buf);
            if (!shouldProcessByPearlMetadata)
            {
              return 0;
            }
          }

          if (!v9)
          {
            if (*(this + 94) == 1)
            {
              v47 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
              {
                v47 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v47;
              }

              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                H16ISP::H16ISPPearlCalibrationNode_Remote::onMessageProcessing();
              }
            }

            return 0;
          }

          v42 = CVBufferGetAttachment(v9, *v25, 0);
          if (!Attachment)
          {
            if (*(this + 94) == 1)
            {
              v48 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
              {
                v48 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v48;
              }

              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                H16ISP::H16ISPPearlCalibrationNode_Remote::onMessageProcessing();
              }
            }

            return 0;
          }

          v43 = v42;
          if (!v42)
          {
            if (*(this + 94) == 1)
            {
              v52 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
              {
                v52 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v52;
              }

              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                H16ISP::H16ISPPearlCalibrationNode_Remote::onMessageProcessing();
              }
            }

            return 0;
          }

          v44 = (*(*this + 88))(this, v9, v10, v11, v42, Attachment);
          if (v44 == 1)
          {
            return 0;
          }

          if (v44 != 2)
          {
            *(this + 25) = 3;
            if (!(*(*this + 96))(this, v9, v10, v11, v13, v43, Attachment))
            {
              CFDictionarySetValue(Attachment, @"MutualInformation-TheFrame", *MEMORY[0x277CBED28]);
              return 0;
            }
          }

LABEL_95:
          *(this + 25) = 0;
          return 0;
        }
      }

      else
      {
        if (*(this + 113) == 1)
        {
          if (*(this + 94) == 1)
          {
            v28 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
            {
              v28 = os_log_create("com.apple.isp", "general");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v28;
            }

            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              H16ISP::H16ISPPearlCalibrationNode_Remote::onMessageProcessing();
            }
          }

          return 0;
        }

        Attachment = 0;
      }

      if (v11)
      {
        Attachment = CVBufferGetAttachment(v11, *v25, 0);
      }

      goto LABEL_80;
    }
  }

  return 0;
}

double H16ISP::getLargestRotation(H16ISP *this, const __CFNumber *a2, const __CFNumber *a3, const __CFNumber *a4)
{
  v9 = 0.0;
  H16ISP::updateLargest(this, &v9, a3);
  H16ISP::updateLargest(a2, &v9, v6);
  H16ISP::updateLargest(a3, &v9, v7);
  return v9;
}

uint64_t H16ISP::H16ISPPearlCalibrationNode_Remote::callAlgorithm(H16ISP::H16ISPPearlCalibrationNode_Remote *this, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, __CVBuffer *a5, const __CFDictionary *a6, const __CFDictionary *a7)
{
  v7 = MEMORY[0x28223BE20](this, a2);
  v27 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v7;
  v31 = *MEMORY[0x277D85DE8];
  v18 = H16ISP::crcInputs(v15, v13, v11, v11);
  valuePtr = 0;
  H16ISP::getPCECalib(*(v17 + 80), *(v17 + 88));
  v19 = *MEMORY[0x277CBECE8];
  v20 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 13312);
  v21 = CFDataCreate(v19, v29, 40);
  v22 = CFNumberCreate(v19, kCFNumberSInt16Type, &valuePtr);
  Mutable = CFDictionaryCreateMutable(v19, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"PCECalib", v20);
  CFDictionarySetValue(Mutable, @"DepthConfig", v21);
  CFDictionarySetValue(Mutable, @"DXOffset", v22);
  CFRelease(v22);
  CFRelease(v21);
  CFRelease(v20);
  v24 = H16ISP::H16ISPServicesRemote::RunRgbIr(*(v17 + 104), v16, v14, v12, v10, v27, Mutable, *(v17 + 92), 1, v18, *(v17 + 94), v26, 1, 0, *(v17 + 112), *(v17 + 95), *(v17 + 96));
  CFRelease(Mutable);
  return v24;
}

uint64_t H16ISP::crcInputs(CVPixelBufferRef pixelBuffer, CVPixelBufferRef a2, CVPixelBufferRef a3, __CVBuffer *a4)
{
  v4 = a3;
  if (a3)
  {
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    CVPixelBufferGetBaseAddress(v4);
    CVPixelBufferUnlockBaseAddress(v4, 1uLL);
    LOWORD(v4) = -1;
  }

  if (pixelBuffer)
  {
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
    LOWORD(v4) = ~v4;
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  }

  if (a2)
  {
    CVPixelBufferLockBaseAddress(a2, 1uLL);
    CVPixelBufferGetBaseAddress(a2);
    LOWORD(v4) = ~v4;
    CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  }

  return v4;
}

H16ISP::H16ISPPearlCalibrationNode_RGBP *H16ISP::H16ISPPearlCalibrationNode_RGBP::H16ISPPearlCalibrationNode_RGBP(H16ISP::H16ISPPearlCalibrationNode_RGBP *this, H16ISP::H16ISPDevice *a2, H16ISP::H16ISPServicesRemote *a3, char a4, const __CFDictionary *a5, double a6, char a7)
{
  v10 = H16ISP::H16ISPPearlCalibrationNode_Remote::H16ISPPearlCalibrationNode_Remote(this, a2, a3, a4, 0, 1, a7);
  *v10 = &unk_2838140A0;
  *(v10 + 192) = 0;
  *(v10 + 200) = a6;
  *(v10 + 113) = 0;
  if (a5)
  {
    *(this + 24) = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], a5);
  }

  *(this + 120) = H16ISP::H16ISPGetCFPreferenceNumber(@"RgbpLcd", @"com.apple.coremedia", 1) != 0;
  *(this + 38) = H16ISP::H16ISPGetCFPreferenceNumber(@"RgbpLcd_LookForSuccessMaxAttempts", @"com.apple.coremedia", 3);
  *(this + 39) = H16ISP::H16ISPGetCFPreferenceNumber(@"RgbpLcd_LookForSuccessFrequency", @"com.apple.coremedia", 0x7D0);
  *(this + 40) = H16ISP::H16ISPGetCFPreferenceNumber(@"RgbpLcd_Threshold", @"com.apple.coremedia", 0xC);
  *(this + 41) = H16ISP::H16ISPGetCFPreferenceNumber(@"RgbpLcd_MultiRunCount", @"com.apple.coremedia", 0x1E);
  *(this + 42) = H16ISP::H16ISPGetCFPreferenceNumber(@"RgbpLcd_MultiRunFrequency", @"com.apple.coremedia", 0x3E8);
  H16ISP::gBlockCinematic = H16ISP::H16ISPGetCFPreferenceNumber(@"RgbpBlockCinematic", @"com.apple.coremedia", 0) != 0;
  H16ISP::gBlockThirdParty = H16ISP::H16ISPGetCFPreferenceNumber(@"RgbpBlockThirdParty", @"com.apple.coremedia", 0) != 0;
  *(this + 18) = *(this + 120);
  *(this + 17) = mach_absolute_time();
  return this;
}

void H16ISP::H16ISPPearlCalibrationNode_RGBP::~H16ISPPearlCalibrationNode_RGBP(H16ISP::H16ISPPearlCalibrationNode_RGBP *this)
{
  *this = &unk_2838140A0;
  v2 = *(this + 24);
  if (v2)
  {
    CFRelease(v2);
    *(this + 24) = 0;
  }

  H16ISP::H16ISPPearlCalibrationNode_Remote::~H16ISPPearlCalibrationNode_Remote(this);
}

{
  H16ISP::H16ISPPearlCalibrationNode_RGBP::~H16ISPPearlCalibrationNode_RGBP(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISP::H16ISPPearlCalibrationNode_RGBP::callAlgorithm(H16ISP::H16ISPPearlCalibrationNode_RGBP *this, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, __CVBuffer *a5, const __CFDictionary *a6, const __CFDictionary *a7)
{
  v7 = MEMORY[0x28223BE20](this, a2);
  v31 = v8;
  v32 = v9;
  v29 = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v7;
  v40 = *MEMORY[0x277D85DE8];
  v30 = H16ISP::crcInputs(v15, v13, v11, v11);
  H16ISP::getPCECalib(*(v17 + 80), *(v17 + 88));
  v18 = *MEMORY[0x277CBECE8];
  v19 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 13312);
  Mutable = CFDictionaryCreateMutable(v18, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"PCECalib", v19);
  CFDictionarySetValue(Mutable, @"ColorGdcCoeffs", *(v17 + 192));
  v21 = CFNumberCreate(v18, kCFNumberDoubleType, (v17 + 200));
  CFDictionarySetValue(Mutable, @"ColorPixelSizeMm", v21);
  CFRelease(v21);
  bzero(v35, 0x68uLL);
  v36 = 1565;
  v37 = *(v17 + 88);
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(*(v17 + 80), v35, 0x68u, 0, 0xFFFFFFFF))
  {
    v22 = CFNumberCreate(v18, kCFNumberIntType, &v38);
    CFDictionarySetValue(Mutable, @"PearlVersion", v22);
    CFRelease(v22);
  }

  if ((*(v17 + 92) & 1) == 0)
  {
    H16ISP::H16ISPFrameMetadata::H16ISPFrameMetadata(v33, v29, 1uLL);
    if (v34 && v34[1])
    {
      v23 = CFNumberCreate(v18, kCFNumberDoubleType, v34 + 178);
      v24 = CFNumberCreate(v18, kCFNumberDoubleType, v34 + 174);
      CFDictionarySetValue(Mutable, @"Multiplier", v23);
      CFDictionarySetValue(Mutable, @"Offset", v24);
      CFRelease(v23);
      CFRelease(v24);
    }

    H16ISP::H16ISPFrameMetadata::~H16ISPFrameMetadata(v33);
  }

  CFRelease(v19);
  if (*(v17 + 120) == 1)
  {
    v25 = 2 * *(v17 + 164);
  }

  else
  {
    v25 = 1;
  }

  v26 = H16ISP::H16ISPServicesRemote::RunRgbIr(*(v17 + 104), v16, v14, v12, v31, v32, Mutable, *(v17 + 92), 2, v30, *(v17 + 94), v28, v25, SHIWORD(v25), *(v17 + 112), *(v17 + 95), 0);
  CFRelease(Mutable);
  return v26;
}

void sub_2248F6D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  H16ISP::H16ISPFrameMetadata::~H16ISPFrameMetadata(va);
  _Unwind_Resume(a1);
}

uint64_t H16ISP::H16ISPPearlCalibrationNode_RGBP::algorithmPreconditions(H16ISP::H16ISPPearlCalibrationNode_RGBP *this, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, const __CFDictionary *a5, const __CFDictionary *a6)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!H16ISPRgbpRunner::validateSession(a2, a3, a4, a5, a6, *(this + 93)))
  {
    return 2;
  }

  if ((H16ISP::gBlockCinematic & 1) != 0 || H16ISP::gBlockThirdParty == 1)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
    if (a4)
    {
      Height = CVPixelBufferGetHeight(a4);
      v14 = Height < 0x280;
      if (H16ISP::gBlockCinematic == 1 && Height <= 0x27F)
      {
        if (*(this + 94) != 1)
        {
          return 2;
        }

        v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v15 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
        }

        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          return 2;
        }

        v26 = 67110400;
        v27 = HIBYTE(PixelFormatType);
        v28 = 1024;
        v29 = BYTE2(PixelFormatType);
        v30 = 1024;
        v31 = BYTE1(PixelFormatType);
        v32 = 1024;
        v33 = PixelFormatType;
        v34 = 2048;
        Width = CVPixelBufferGetWidth(a4);
        v36 = 2048;
        v37 = CVPixelBufferGetHeight(a4);
        v16 = "Pearl Calibration (MI): Blocking cinematic (color format '%c%c%c%c', depth resolution %zux%zu)\n";
        goto LABEL_34;
      }
    }

    else
    {
      v14 = 0;
    }

    v17 = H16ISP::gBlockThirdParty != 1 || ((PixelFormatType - 875704422) & 0xFFFFFFEF) == 0;
    if (!v17 && !v14)
    {
      if (*(this + 94) != 1)
      {
        return 2;
      }

      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v15 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
      }

      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        return 2;
      }

      v18 = HIBYTE(PixelFormatType);
      v19 = BYTE2(PixelFormatType);
      v20 = PixelFormatType;
      v21 = BYTE1(PixelFormatType);
      if (a4)
      {
        v22 = CVPixelBufferGetWidth(a4);
        v23 = CVPixelBufferGetHeight(a4);
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      v26 = 67110400;
      v27 = v18;
      v28 = 1024;
      v29 = v19;
      v30 = 1024;
      v31 = v21;
      v32 = 1024;
      v33 = v20;
      v34 = 2048;
      Width = v22;
      v36 = 2048;
      v37 = v23;
      v16 = "Pearl Calibration (MI): Blocking third party API (color format '%c%c%c%c', depth resolution %zux%zu)\n";
LABEL_34:
      _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_DEFAULT, v16, &v26, 0x2Eu);
      return 2;
    }
  }

  if (H16ISPRgbpRunner::validateFrame(a2, a3, a4, a5, a6, *(this + 93)))
  {
    return 0;
  }

  if (*(this + 94) == 1)
  {
    v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v25 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v25;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPPearlCalibrationNode_RGBP::algorithmPreconditions();
    }
  }

  return 1;
}

void H16ISP::dumpMetadata(H16ISP *this, const __CFDictionary *a2, const char *a3, const char *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x400uLL, "%s%s-metadata.plist", a2, a3);
  v5 = *MEMORY[0x277CBECE8];
  SystemEncoding = CFStringGetSystemEncoding();
  v7 = CFStringCreateWithCString(v5, __str, SystemEncoding);
  v8 = CFURLCreateWithFileSystemPath(v5, v7, kCFURLPOSIXPathStyle, 0);
  v9 = CFWriteStreamCreateWithFile(v5, v8);
  CFWriteStreamOpen(v9);
  CFPropertyListWrite(this, v9, kCFPropertyListXMLFormat_v1_0, 0, 0);
  CFWriteStreamClose(v9);
  CFRelease(v9);
  CFRelease(v8);
  CFRelease(v7);
}

FILE *H16ISP::dumpSinglePlaneBuffer(H16ISP *this, __CVBuffer *a2, const char *a3, const char *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v14[0] = HIBYTE(PixelFormatType);
  v14[1] = BYTE2(PixelFormatType);
  v14[2] = BYTE1(PixelFormatType);
  v14[3] = PixelFormatType;
  v14[4] = 0;
  BytesPerRow = CVPixelBufferGetBytesPerRow(this);
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  snprintf(__str, 0x400uLL, "%s%s.%lux%lu.%lu.%s.bin", a2, a3, Width, Height, BytesPerRow, v14);
  result = fopen(__str, "wb");
  if (result)
  {
    v12 = result;
    CVPixelBufferLockBaseAddress(this, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(this);
    fwrite(BaseAddress, Height * BytesPerRow, 1uLL, v12);
    fclose(v12);
    return CVPixelBufferUnlockBaseAddress(this, 0);
  }

  return result;
}

uint64_t H16ISP::updateLargest(uint64_t this, const __CFNumber *a2, double *a3)
{
  if (this)
  {
    v4 = this;
    v5 = CFGetTypeID(this);
    this = CFNumberGetTypeID();
    if (v5 == this)
    {
      valuePtr = 0.0;
      this = CFNumberGetValue(v4, kCFNumberDoubleType, &valuePtr);
      if (this)
      {
        v6 = fabs(valuePtr);
        if (v6 > *a2)
        {
          *a2 = v6;
        }
      }
    }
  }

  return this;
}

uint64_t H16ISP::H16ISPFrameReceiver::InitializePDEStreaming(uint64_t this)
{
  *(this + 22) = 0;
  *(this + 16) = 0;
  return this;
}

void H16ISP::H16ISPFrameReceiver::~H16ISPFrameReceiver(H16ISP::H16ISPFrameReceiver *this)
{
  if (*this)
  {
    H16ISP::H16ISPFrameReceiver::stopReceive(this);
  }

  if (*(this + 48))
  {
    H16ISP::H16ISPFrameReceiver::removeIODispatcherFromRunLoop(this);
  }

  v2 = *(this + 109);
  if (v2)
  {
    v3 = *(this + 1);
    RunLoopSource = H16ISP::H16ISPCFLocalMessagePort::GetRunLoopSource(v2);
    CFRunLoopRemoveSource(v3, RunLoopSource, *MEMORY[0x277CBF058]);
    v5 = *(this + 109);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(this + 109) = 0;
  }

  for (i = *(this + 95); i; i = *(this + 95))
  {
    v7 = *(this + 94);
    v8 = *(*(*(this + 91) + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF));
    *(this + 95) = i - 1;
    *(this + 94) = v7 + 1;
    std::deque<__CVBuffer *>::__maybe_remove_front_spare[abi:ne200100](this + 720, 1);
    if (v8)
    {
      H16ISP::H16ISPFrameReceiverBufferPool::~H16ISPFrameReceiverBufferPool(v8);
      MEMORY[0x22AA55B60]();
    }
  }

  for (j = *(this + 101); j; j = *(this + 101))
  {
    v10 = *(this + 100);
    v11 = *(*(*(this + 97) + ((v10 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v10 & 0x1FF));
    *(this + 101) = j - 1;
    *(this + 100) = v10 + 1;
    std::deque<__CVBuffer *>::__maybe_remove_front_spare[abi:ne200100](this + 768, 1);
    if (v11)
    {
      MEMORY[0x22AA55B60](v11, 0x1020C405F07FB98);
    }
  }

  v12 = *(this + 108);
  if (v12)
  {
    H16ISP::H16ISPFrameReceiverDataBufferPool::~H16ISPFrameReceiverDataBufferPool(v12);
    MEMORY[0x22AA55B60]();
  }

  pthread_mutex_destroy((this + 96));
  pthread_mutex_destroy((this + 160));
  pthread_mutex_destroy((this + 224));
  pthread_mutex_destroy((this + 296));
  v13 = *(this + 50);
  v14 = *(*(v13 + 9) + 72);
  if (v14)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN6H16ISP19H16ISPFrameReceiverD2Ev_block_invoke;
    block[3] = &__block_descriptor_tmp_24;
    block[4] = this;
    dispatch_sync(v14, block);
    v13 = *(this + 50);
  }

  H16ISP::H16ISPDevice::ISP_FlushInactiveDARTMappings(v13);
  v15 = *(this + 49);
  if (v15)
  {
    dispatch_release(v15);
  }

  if (*(this + 933) == 1)
  {
    H16ISP::MOVReader::~MOVReader(*(this + 117));
    *(this + 933) = 0;
    H16ISP::H16ISPDevice::ISP_EnableMOVReplay(*(this + 50), *(this + 109), 0);
  }

  std::deque<__CVBuffer *>::~deque[abi:ne200100](this + 102);
  std::deque<__CVBuffer *>::~deque[abi:ne200100](this + 96);
  std::deque<__CVBuffer *>::~deque[abi:ne200100](this + 90);
}

uint64_t H16ISP::H16ISPFrameReceiver::stopReceive(H16ISP::H16ISPFrameReceiver *this)
{
  v78 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 96));
  if (!*this)
  {
    pthread_mutex_unlock((this + 96));
    return 3758097122;
  }

  kdebug_trace();
  pthread_mutex_lock((this + 160));
  if ((*(this + 434) & 1) == 0)
  {
    H16ISP::H16ISPFrameReceiver::PrepareStopReceive(this);
  }

  if (*(this + 435) != 1)
  {
    v3 = 0;
    goto LABEL_22;
  }

  v2 = H16ISP::H16ISPDevice::StopCamera(*(this + 50), 1 << *(this + 109));
  v3 = v2 != 0;
  if (!v2)
  {
    goto LABEL_10;
  }

  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPFrameReceiver::stopReceive();
LABEL_10:
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  if (v4 == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 109);
    *buf = 136315650;
    v73 = "stopReceive";
    v74 = 1024;
    v75 = 2212;
    v76 = 1024;
    v77 = v5;
    _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "%s - [%d] [CIL] Call ISP_CILRequestPerChannel (%u/false)\n", buf, 0x18u);
  }

  v6 = H16ISP::H16ISPDevice::ISP_CILRequestPerChannel(*(this + 50), *(this + 109), 0);
  if (v6)
  {
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiver::stopReceive();
    }

    goto LABEL_27;
  }

LABEL_22:
  v6 = H16ISP::H16ISPDevice::ReturnAllUnusedBuffers(*(this + 50), *(this + 109));
  if (!v6)
  {
    goto LABEL_28;
  }

  v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v8 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v8;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPFrameReceiver::stopReceive();
  }

LABEL_27:
  v3 = 1;
LABEL_28:
  v9 = *(this + 97);
  v10 = (v9 + 8 * (*(this + 100) >> 9));
  v11 = *(this + 98);
  if (v11 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*v10 + 8 * (*(this + 100) & 0x1FFLL));
  }

  while (1)
  {
    if (v11 == v9)
    {
      v14 = 0;
    }

    else
    {
      v13 = *(this + 101) + *(this + 100);
      v14 = *(v9 + ((v13 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v13 & 0x1FF);
    }

    if (v12 == v14)
    {
      break;
    }

    if (*(*v12 + 8) == 1)
    {
      v6 = H16ISP::H16ISPFrameReceiverSharedBufferPool::InitiateShutdown(**v12);
      if (v6)
      {
        v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v15 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v73 = "stopReceive";
          v74 = 1024;
          v75 = v6;
          _os_log_error_impl(&dword_2247DB000, v15, OS_LOG_TYPE_ERROR, "%s - InitiateShutdown error: 0x%08X\n", buf, 0x12u);
        }

        v3 = 1;
      }
    }

    if ((++v12 - *v10) == 4096)
    {
      v16 = v10[1];
      ++v10;
      v12 = v16;
    }

    v9 = *(this + 97);
    v11 = *(this + 98);
  }

  *(this + 435) = 0;
  pthread_mutex_unlock((this + 160));
  if (*(this + 532) == 1 && v6 == 0)
  {
    v6 = H16ISP::H16ISPDevice::StopFaceDetect(*(this + 50), *(this + 109));
    if (v6)
    {
      v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v18 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPFrameReceiver::stopReceive();
      }

      goto LABEL_61;
    }
  }

  else if (v6)
  {
    goto LABEL_62;
  }

  v6 = H16ISP::H16ISPDevice::DisableALS(*(this + 50), *(this + 109));
  if (v6)
  {
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v19;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiver::stopReceive();
    }

LABEL_61:
    v3 = 1;
    goto LABEL_62;
  }

  if (*(this + 488) == 1)
  {
    *(this + 488) = 0;
    v6 = H16ISP::H16ISPDevice::EnableTNR(*(this + 50), *(this + 109), this + 488);
    if (v6)
    {
      v68 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v68 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v68;
      }

      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPFrameReceiver::stopReceive();
      }

      goto LABEL_61;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_62:
  if (*(this + 592) == 1)
  {
    H16ISP::H16ISPFrameReceiver::stopProjectorWatchdogTimer(this);
  }

  v71 = (this + 856);
  if (!v3)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    while (1)
    {
      pthread_mutex_lock((this + 160));
      v35 = *(this + 97);
      v36 = (v35 + 8 * (*(this + 100) >> 9));
      v37 = *(this + 98);
      if (v37 == v35)
      {
        v38 = 0;
      }

      else
      {
        v38 = (*v36 + 8 * (*(this + 100) & 0x1FFLL));
      }

      v39 = 0;
      v34 |= *(this + 107) == 0;
      while (1)
      {
        if (v37 == v35)
        {
          v41 = 0;
        }

        else
        {
          v40 = *(this + 101) + *(this + 100);
          v41 = *(v35 + ((v40 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v40 & 0x1FF);
        }

        if (v38 == v41)
        {
          break;
        }

        if (*(*v38 + 8) == 1)
        {
          v39 += H16ISP::H16ISPFrameReceiverSharedBufferPool::GetNumAllocatedBuffers(**v38);
        }

        if ((++v38 - *v36) == 4096)
        {
          v42 = v36[1];
          ++v36;
          v38 = v42;
        }

        v35 = *(this + 97);
        v37 = *(this + 98);
      }

      v43 = v39 == 0;
      v44 = *(this + 108);
      if (!v44 || !H16ISP::H16ISPFrameReceiverDataBufferPool::NumBuffersSent(v44))
      {
        v32 = 1;
      }

      pthread_mutex_unlock((this + 160));
      v33 |= v43;
      if (v34 & v33 & v32)
      {
        break;
      }

      usleep(0x3E8u);
      if (++v31 == 2001)
      {
        if ((v34 & 1) == 0)
        {
          pthread_mutex_lock((this + 160));
          v45 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
          {
            v45 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v45;
          }

          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPFrameReceiver::stopReceive();
          }

          v46 = *(this + 103);
          if (*(this + 104) != v46)
          {
            v47 = *(this + 106);
            v48 = (v46 + 8 * (v47 >> 9));
            v49 = (*v48 + 8 * (v47 & 0x1FF));
            v50 = *(v46 + (((*v71 + v47) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*v71 + v47) & 0x1FF);
            while (v49 != v50)
            {
              v51 = *v49;
              if (*v49)
              {
                v52 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
                {
                  v52 = os_log_create("com.apple.isp", "general");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v52;
                }

                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  v54 = *(v51 + 8);
                  *buf = 136315394;
                  v73 = "stopReceive";
                  v74 = 1024;
                  v75 = v54;
                  _os_log_error_impl(&dword_2247DB000, v52, OS_LOG_TYPE_ERROR, "%s - Buffer with IOSurface ID 0x%08X was not returned\n", buf, 0x12u);
                }
              }

              if ((++v49 - *v48) == 4096)
              {
                v53 = v48[1];
                ++v48;
                v49 = v53;
              }
            }
          }

          pthread_mutex_unlock((this + 160));
        }

        if ((v33 & 1) == 0)
        {
          v69 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
          {
            v69 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v69;
          }

          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPFrameReceiver::stopReceive();
          }
        }

        if ((v32 & 1) == 0)
        {
          v70 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
          {
            v70 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v70;
          }

          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPFrameReceiver::stopReceive();
          }
        }

        break;
      }
    }
  }

  v20 = *(this + 49);
  if (v20)
  {
    dispatch_sync(v20, &__block_literal_global_6);
  }

  *(this + 434) = 0;
  *this = 0;
  pthread_mutex_lock((this + 160));
  v21 = *(this + 103);
  v22 = *(this + 104);
  if (v22 != v21)
  {
    v23 = *(this + 106);
    v24 = &v21[v23 >> 9];
    v25 = (*v24 + 8 * (v23 & 0x1FF));
    v26 = *(v21 + (((*(this + 107) + v23) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 107) + v23) & 0x1FF);
    if (v25 != v26)
    {
      do
      {
        v27 = *v25;
        if (*v25)
        {
          CVPixelBufferRelease(*v27);
          MEMORY[0x22AA55B60](v27, 0x1020C4093CA8EA1);
        }

        if (++v25 - *v24 == 4096)
        {
          v28 = v24[1];
          ++v24;
          v25 = v28;
        }
      }

      while (v25 != v26);
      v21 = *(this + 103);
      v22 = *(this + 104);
    }
  }

  *v71 = 0;
  v29 = v22 - v21;
  if (v29 >= 3)
  {
    do
    {
      operator delete(*v21);
      v21 = (*(this + 103) + 8);
      *(this + 103) = v21;
      v29 = (*(this + 104) - v21) >> 3;
    }

    while (v29 > 2);
  }

  if (v29 == 1)
  {
    v30 = 256;
    goto LABEL_115;
  }

  if (v29 == 2)
  {
    v30 = 512;
LABEL_115:
    *(this + 106) = v30;
  }

  v55 = *(this + 57);
  if (v55)
  {
    CVPixelBufferRelease(v55);
    *(this + 57) = 0;
  }

  pthread_mutex_unlock((this + 160));
  v56 = *(this + 97);
  v57 = (v56 + 8 * (*(this + 100) >> 9));
  v58 = *(this + 98);
  if (v58 == v56)
  {
    v59 = 0;
  }

  else
  {
    v59 = (*v57 + 8 * (*(this + 100) & 0x1FFLL));
  }

  while (1)
  {
    if (v58 == v56)
    {
      v62 = 0;
    }

    else
    {
      v61 = *(this + 101) + *(this + 100);
      v62 = *(v56 + ((v61 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v61 & 0x1FF);
    }

    if (v59 == v62)
    {
      break;
    }

    if (*(*v59 + 8) == 1)
    {
      H16ISP::H16ISPFrameReceiverSharedBufferPool::ReleaseAllBuffers(**v59);
    }

    if ((++v59 - *v57) == 4096)
    {
      v60 = v57[1];
      ++v57;
      v59 = v60;
    }

    v56 = *(this + 97);
    v58 = *(this + 98);
  }

  v63 = *(this + 108);
  if (v63)
  {
    H16ISP::H16ISPFrameReceiverDataBufferPool::ReleaseBuffers(v63);
  }

  v64 = *(this + 112);
  if (v64)
  {
    H16ISP::H16ISPFrameReceiverBufferPool::~H16ISPFrameReceiverBufferPool(v64);
    MEMORY[0x22AA55B60]();
    *(this + 112) = 0;
  }

  if (*(this + 433) == 1)
  {
    if (H16ISP::H16ISPDevice::ISP_UnregisterEPipeDoneCallback(*(this + 50), *(this + 109)))
    {
      v65 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v65 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v65;
      }

      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPFrameReceiver::stopReceive();
      }
    }

    v6 = H16ISP::H16ISPDevice::SetExclusiveExclaveStreamingMode(*(this + 50), *(this + 109), 0);
    if (v6)
    {
      v66 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v66 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v66;
      }

      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPFrameReceiver::stopReceive();
      }
    }
  }

  pthread_mutex_unlock((this + 96));
  kdebug_trace();
  return v6;
}

void H16ISP::H16ISPFrameReceiver::removeIODispatcherFromRunLoop(H16ISP::H16ISPFrameReceiver *this)
{
  v2 = *(this + 48);
  v3 = MEMORY[0x277CBF058];
  if (v2)
  {
    CFRunLoopRemoveSource(*(this + 1), v2, *MEMORY[0x277CBF058]);
    CFRelease(*(this + 48));
    *(this + 48) = 0;
  }

  v4 = *(this + 53);
  if (v4)
  {
    CFRunLoopRemoveSource(*(this + 1), v4, *v3);
    CFRelease(*(this + 53));
    *(this + 53) = 0;
  }

  v5 = *(this + 46);
  if (v5)
  {
    CFMachPortInvalidate(v5);
    CFRelease(*(this + 46));
    *(this + 46) = 0;
  }

  v6 = *(this + 52);
  if (v6)
  {
    CFMachPortInvalidate(v6);
    CFRelease(*(this + 52));
    *(this + 52) = 0;
  }

  v7 = *(this + 94);
  v8 = MEMORY[0x277D85F48];
  if (v7)
  {
    mach_port_mod_refs(*MEMORY[0x277D85F48], v7, 1u, -1);
    *(this + 94) = 0;
  }

  if (*(this + 102))
  {
    mach_port_mod_refs(*v8, 0, 1u, -1);
    *(this + 102) = 0;
  }
}

uint64_t ___ZN6H16ISP19H16ISPFrameReceiverD2Ev_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 552) == 1)
  {
    notify_set_state(*(v1 + 556), 0);
    notify_post(*(v1 + 544));
    result = notify_cancel(*(v1 + 556));
    *(v1 + 552) = 0;
  }

  if (*(v1 + 576) == 1)
  {
    result = notify_cancel(*(v1 + 580));
    *(v1 + 576) = 0;
  }

  if (*(v1 + 616) == 1)
  {
    result = notify_cancel(*(v1 + 620));
    *(v1 + 616) = 0;
  }

  if (*(v1 + 632) == 1)
  {
    result = notify_cancel(*(v1 + 636));
    *(v1 + 632) = 0;
  }

  if (*(v1 + 648) == 1)
  {
    result = notify_cancel(*(v1 + 652));
    *(v1 + 648) = 0;
  }

  if (*(v1 + 664) == 1)
  {
    result = notify_cancel(*(v1 + 668));
    *(v1 + 664) = 0;
  }

  if (*(v1 + 680) == 1)
  {
    result = notify_cancel(*(v1 + 684));
    *(v1 + 680) = 0;
  }

  if (*(v1 + 696) == 1)
  {
    result = notify_cancel(*(v1 + 700));
    *(v1 + 696) = 0;
  }

  if (*(v1 + 712) == 1)
  {
    result = notify_cancel(*(v1 + 716));
    *(v1 + 712) = 0;
  }

  return result;
}

uint64_t H16ISP::H16ISPFrameReceiver::setupFrameReceiver(H16ISP::H16ISPFrameReceiver *this)
{
  *(this + 1) = CFRunLoopGetCurrent();

  return H16ISP::H16ISPFrameReceiver::addIODispatcherToRunLoop(this);
}

uint64_t H16ISP::H16ISPFrameReceiver::DisablePDEStreaming(H16ISP::H16ISPFrameReceiver *this)
{
  H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(this, 12);
  H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(this, 13);
  H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(this, 14);
  H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(this, 15);
  H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(this, 21);
  H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(this, 17);
  H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(this, 25);
  return 0;
}

uint64_t H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(uint64_t a1, int a2)
{
  pthread_mutex_lock((a1 + 96));
  v4 = *(a1 + 728);
  v5 = *(a1 + 752);
  v6 = (v4 + 8 * (v5 >> 9));
  v7 = *(a1 + 736);
  if (v7 == v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = (*v6 + 8 * (*(a1 + 752) & 0x1FFLL));
  }

LABEL_4:
  v9 = v8;
  while (1)
  {
    if (v7 == v4)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v4 + (((*(a1 + 760) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 760) + v5) & 0x1FF);
    }

    if (v9 == v10)
    {
      v13 = 3758097136;
      goto LABEL_23;
    }

    v11 = *v9;
    if (*(*v9 + 16) == a2)
    {
      break;
    }

    v9 += 8;
    v8 += 8;
    if ((*v6 + 4096) == v8)
    {
      v12 = *(v6 + 1);
      v6 += 8;
      v8 = v12;
      goto LABEL_4;
    }
  }

  if ((*a1 - 1) > 1)
  {
    goto LABEL_22;
  }

  pthread_mutex_lock((a1 + 160));
  *(v11 + 144) = 1;
  pthread_mutex_unlock((a1 + 160));
  v13 = H16ISP::H16ISPDevice::ReturnAllBuffersInPool(*(a1 + 400), *(a1 + 436), *(v11 + 20));
  if (!v13)
  {
    v14 = 2001;
    while (1)
    {
      pthread_mutex_lock((a1 + 160));
      v15 = *(v11 + 120);
      pthread_mutex_unlock((a1 + 160));
      if (!v15)
      {
        break;
      }

      usleep(0x3E8u);
      if (!--v14)
      {
        v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v16 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v16;
        }

        v13 = 3758097084;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver();
        }

        goto LABEL_23;
      }
    }

LABEL_22:
    std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::erase((a1 + 720), v6, v8);
    H16ISP::H16ISPFrameReceiverBufferPool::~H16ISPFrameReceiverBufferPool(v11);
    MEMORY[0x22AA55B60]();
    v13 = 0;
  }

LABEL_23:
  pthread_mutex_unlock((a1 + 96));
  return v13;
}

void *std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::erase(int64x2_t *a1, char *a2, char *a3)
{
  v4 = a1->i64[1];
  v5 = (v4 + 8 * (a1[2].i64[0] >> 9));
  if (a1[1].i64[0] == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = (*v5 + 8 * (a1[2].i64[0] & 0x1FF));
  }

  v30 = (v4 + 8 * (a1[2].i64[0] >> 9));
  v31 = v6;
  if (a3 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (&a3[-*a2] >> 3) + ((a2 - v5) << 6) - (&v6[-*v5] >> 3);
  }

  v8 = std::__deque_iterator<__CVBuffer *,__CVBuffer **,__CVBuffer *&,__CVBuffer ***,long,512l>::operator+[abi:ne200100](&v30, v7);
  v10 = v8;
  v11 = v9;
  v12 = a1[2].i64[1];
  if (v7 <= (v12 - 1) >> 1)
  {
    v17 = (v9 - *v8) >> 3;
    if (v17 < 0)
    {
      v26 = 510 - v17;
      v19 = &v8[-(v26 >> 9)];
      v20 = &(*v19)[8 * (~v26 & 0x1FF)];
    }

    else
    {
      v18 = v17 + 1;
      v19 = &v8[v18 >> 9];
      v20 = &(*v19)[8 * (v18 & 0x1FF)];
    }

    std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,0>(v30, v31, v8, v9, v19, v20, v32);
    a1[2] = vaddq_s64(a1[2], xmmword_2249BC120);
    std::deque<__CVBuffer *>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
  }

  else
  {
    v13 = (v9 - *v8) >> 3;
    if (v13 < 0)
    {
      v21 = 510 - v13;
      v15 = &v8[-(v21 >> 9)];
      v16 = &(*v15)[8 * (~v21 & 0x1FF)];
    }

    else
    {
      v14 = v13 + 1;
      v15 = &v8[v14 >> 9];
      v16 = &(*v15)[8 * (v14 & 0x1FF)];
    }

    v22 = a1[2].i64[0] + v12;
    v23 = a1->i64[1];
    v24 = (v23 + 8 * (v22 >> 9));
    if (a1[1].i64[0] == v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = &(*v24)[8 * (v22 & 0x1FF)];
    }

    v32[0].n128_u64[0] = v10;
    v32[0].n128_u64[1] = v11;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>>>(v15, v16, v24, v25, v32);
    --a1[2].i64[1];
    std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
  }

  v27 = a1->i64[1];
  if (a1[1].i64[0] == v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(v27 + 8 * (a1[2].i64[0] >> 9)) + 8 * (a1[2].i64[0] & 0x1FF);
  }

  v32[0].n128_u64[0] = v27 + 8 * (a1[2].i64[0] >> 9);
  v32[0].n128_u64[1] = v28;
  return std::__deque_iterator<__CVBuffer *,__CVBuffer **,__CVBuffer *&,__CVBuffer ***,long,512l>::operator+[abi:ne200100](v32, v7);
}

uint64_t H16ISP::H16ISPFrameReceiver::sendInitialDataBuffersToFirmware(H16ISP::H16ISPFrameReceiver *this, H16ISP::H16ISPFrameReceiverDataBufferPool *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  Pool = H16ISP::H16ISPFrameReceiverDataBufferPool::GetPool(a2);
  v15[0] = H16ISP::H16ISPFrameReceiverDataBufferPool::IOSurfaceAllocSize(a2);
  v15[1] = v15[0];
  v5 = *(this + 50);
  LODWORD(this) = *(this + 109);
  v6 = H16ISP::H16ISPFrameReceiverDataBufferPool::GetPool(a2);
  v7 = H16ISP::H16ISPDevice::SetBufferPoolConfiguration(v5, this, 39, *(v6 + 112), 0, 1u, v15);
  v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (v7)
  {
    v9 = v7;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiver::sendInitialDataBuffersToFirmware();
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = Pool[28];
      v11 = Pool[25];
      v13 = Pool[4];
      v12 = Pool[5];
      *buf = 136316162;
      v17 = "sendInitialDataBuffersToFirmware";
      v18 = 1024;
      v19 = v10;
      v20 = 1024;
      v21 = v12;
      v22 = 1024;
      v23 = v11;
      v24 = 1024;
      v25 = v13;
      _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_DEFAULT, "%s - Sending %d initial buffers to firmware (poolID=%d, poolSize=%d, poolType=%d)\n", buf, 0x24u);
    }

    return H16ISP::H16ISPFrameReceiverDataBufferPool::SendInitialFirmwareBuffers(a2);
  }

  return v9;
}

uint64_t H16ISP::H16ISPFrameReceiver::addDataBufferPoolToFrameReceiver(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  pthread_mutex_lock((a1 + 96));
  if (a4 == 33)
  {
    if (!*(a1 + 864))
    {
      operator new();
    }

    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiver::addDataBufferPoolToFrameReceiver();
    }
  }

  else
  {
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiver::addDataBufferPoolToFrameReceiver();
    }
  }

  pthread_mutex_unlock((a1 + 96));
  return 3758097095;
}

uint64_t H16ISP::H16ISPFrameReceiver::removeDataBufferPoolFromFrameReceiver(uint64_t a1, int a2)
{
  pthread_mutex_lock((a1 + 96));
  if (a2 == 33)
  {
    v4 = *(a1 + 864);
    if (v4)
    {
      v5 = (a1 + 864);
      if ((*a1 - 1) > 1)
      {
        *v5 = 0;
      }

      else
      {
        v6 = *(H16ISP::H16ISPFrameReceiverDataBufferPool::GetPool(*(a1 + 864)) + 20);
        pthread_mutex_lock((a1 + 160));
        H16ISP::H16ISPFrameReceiverDataBufferPool::SetDestructionInProgress(*(a1 + 864));
        pthread_mutex_unlock((a1 + 160));
        if (H16ISP::H16ISPDevice::ReturnAllBuffersInPool(*(a1 + 400), *(a1 + 436), v6))
        {
          v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
          {
            v7 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;
          }

          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPFrameReceiver::removeDataBufferPoolFromFrameReceiver();
          }
        }

        else
        {
          v10 = 2000;
          while (H16ISP::H16ISPFrameReceiverDataBufferPool::NumBuffersSent(*v5))
          {
            usleep(0x3E8u);
            if (!--v10)
            {
              v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
              {
                v11 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v11;
              }

              if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
              {
                H16ISP::H16ISPFrameReceiver::removeDataBufferPoolFromFrameReceiver((a1 + 864), v6, v11);
              }

              break;
            }
          }
        }

        pthread_mutex_lock((a1 + 160));
        *v5 = 0;
        pthread_mutex_unlock((a1 + 160));
      }

      H16ISP::H16ISPFrameReceiverDataBufferPool::~H16ISPFrameReceiverDataBufferPool(v4);
      MEMORY[0x22AA55B60]();
    }

    v9 = 0;
  }

  else
  {
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v8;
    }

    v9 = 3758097095;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiver::removeDataBufferPoolFromFrameReceiver();
    }
  }

  pthread_mutex_unlock((a1 + 96));
  return v9;
}

uint64_t H16ISP::H16ISPFrameReceiver::registerFrameReceiveCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  return 0;
}

uint64_t H16ISP::H16ISPFrameReceiver::registerMessageCallback(H16ISP::H16ISPFrameReceiver *this, void (*a2)(unsigned int, unsigned int, unsigned int, void *, void *, void *), void *a3)
{
  *(this + 6) = a2;
  *(this + 7) = a3;
  return 0;
}

uint64_t H16ISP::H16ISPFrameReceiver::registerEPipeReceiveCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  return 0;
}

uint64_t H16ISP::H16ISPFrameReceiver::registerFramePostProcessingCallback(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[49])
  {
    return 3758097122;
  }

  a1[10] = a2;
  a1[11] = a3;
  v5 = dispatch_queue_create("com.apple.h16ispframereceiver.postprocess.queue", 0);
  result = 0;
  a1[49] = v5;
  return result;
}

uint64_t H16ISP::H16ISPFrameReceiver::setDiagnosticsMode(H16ISP::H16ISPFrameReceiver *this, unsigned int a2)
{
  if (a2 > 2)
  {
    return 3758097090;
  }

  result = 0;
  *(this + 221) = a2;
  return result;
}

uint64_t H16ISP::H16ISPFrameReceiver::StartFaceDetect(H16ISP::H16ISPDevice **this)
{
  if (*(this + 532) == 1)
  {
    return H16ISP::H16ISPDevice::StartFaceDetect(this[50], *(this + 109));
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::H16ISPFrameReceiver::getFirmwarePrimeCount(uint64_t a1, int a2)
{
  pthread_mutex_lock((a1 + 96));
  v4 = *(a1 + 728);
  v5 = *(a1 + 752);
  v6 = (v4 + 8 * (v5 >> 9));
  v7 = *(a1 + 736);
  if (v7 == v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = *v6 + 8 * (*(a1 + 752) & 0x1FFLL);
  }

LABEL_4:
  v9 = v8 - 4096;
  while (1)
  {
    if (v7 == v4)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v4 + (((*(a1 + 760) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 760) + v5) & 0x1FF);
    }

    if (v8 == v10)
    {
      v12 = 0xFFFFFFFFLL;
      goto LABEL_14;
    }

    if (*(*v8 + 16) == a2)
    {
      break;
    }

    v8 += 8;
    v9 += 8;
    if (*v6 == v9)
    {
      v11 = v6[1];
      ++v6;
      v8 = v11;
      goto LABEL_4;
    }
  }

  v12 = *(*v8 + 112);
LABEL_14:
  pthread_mutex_unlock((a1 + 96));
  return v12;
}

uint64_t H16ISP::H16ISPFrameReceiver::SendFWInitialBuffers(H16ISP::H16ISPFrameReceiver *a1, int a2)
{
  v2 = *(a1 + 91);
  v3 = *(a1 + 94);
  v4 = (v2 + 8 * (v3 >> 9));
  v5 = *(a1 + 92);
  if (v5 == v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = &(*v4)[*(a1 + 94) & 0x1FFLL];
  }

LABEL_4:
  v7 = v6 - 512;
  while (1)
  {
    if (v5 == v2)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v2 + (((*(a1 + 95) + v3) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 95) + v3) & 0x1FF);
    }

    if (v6 == v8)
    {
      return 3758097084;
    }

    if (*(*v6 + 4) == a2)
    {
      return H16ISP::H16ISPFrameReceiver::sendInitialBuffersToFirmware(a1, *v6);
    }

    ++v6;
    if (*v4 == ++v7)
    {
      v9 = v4[1];
      ++v4;
      v6 = v9;
      goto LABEL_4;
    }
  }
}

void H16ISP::H16ISPFrameReceiver::EPipeDone(H16ISP::H16ISPFrameReceiver *this, void *a2, uint64_t a3, unint64_t *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a4 == 4)
  {
    pthread_mutex_lock((this + 160));
    v6 = *(a3 + 16);
    v13 = v6;
    v7 = *(a3 + 24);
    v14 = v7 != 0;
    if (H16ISP::H16ISPDevice::enabledExclaveDebug(*(this + 50)))
    {
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = "EPipeDone";
        v17 = 1024;
        v18 = v6;
        v19 = 1024;
        v20 = v7 != 0;
        _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_DEFAULT, "%s - [Exclaves] H16ISPFrameReceiver - Exclave buffer ready notification received, requestID 0x%08X, epipe status: %d\n", buf, 0x18u);
      }
    }

    v9 = *(this + 8);
    if (v9)
    {
      v9(*(this + 9), *(this + 109), &v13);
    }

    else
    {
      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v12 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v12;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPFrameReceiver::EPipeDone();
      }
    }

    pthread_mutex_unlock((this + 160));
  }

  else
  {
    v10 = a4;
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "EPipeDone";
      v17 = 1024;
      v18 = v10;
      _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, "%s - [Exclaves] H16ISPFrameReceiver - Invalid number of epipe done arguments, numArgs=%d, bail \n\n", buf, 0x12u);
    }
  }
}

void H16ISP::H16ISPFrameReceiver::startProjectorWatchdogTimer(H16ISP::H16ISPFrameReceiver *this)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = dispatch_queue_create("com.apple.projwdt.queue", v2);
  *(this + 126) = v3;
  if (v3)
  {
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
    *(this + 127) = v4;
    if (v4)
    {
      dispatch_source_set_timer(v4, 0, 0xEE6B2800uLL, 0xF4240uLL);
      v5 = *(this + 127);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = ___ZN6H16ISP19H16ISPFrameReceiver27startProjectorWatchdogTimerEv_block_invoke;
      handler[3] = &__block_descriptor_tmp_64;
      handler[4] = this;
      dispatch_source_set_event_handler(v5, handler);
      dispatch_resume(*(this + 127));
    }
  }
}

uint64_t H16ISP::H16ISPFrameReceiver::StopChannels(H16ISP::H16ISPFrameReceiver *this, H16ISP::H16ISPDevice *a2, H16ISP::H16ISPFrameReceiver **a3)
{
  v3 = a3;
  v4 = a2;
  v34 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D86220];
  v25 = a3;
  if (!a3)
  {
    v12 = H16ISP::H16ISPDevice::StopCamera(this, 0);
    if (!v12)
    {
      return v12;
    }

    goto LABEL_7;
  }

  v7 = 0;
  v8 = a2;
  v9 = a3;
  do
  {
    H16ISP::H16ISPFrameReceiver::PrepareStopReceive(*v8);
    v10 = *v8++;
    v7 |= 1 << *(v10 + 109);
    --v9;
  }

  while (v9);
  v11 = H16ISP::H16ISPDevice::StopCamera(this, v7);
  if (v11)
  {
    v12 = v11;
    v3 = v25;
LABEL_7:
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v6)
    {
      v13 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiver::StopChannels();
      if (!v3)
      {
        return v12;
      }
    }

    else if (!v3)
    {
      return v12;
    }
  }

  v14 = 0;
  v15 = v25;
  do
  {
    while (1)
    {
      v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v6)
      {
        v16 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v16;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(*(v4 + v14) + 436);
        *buf = 136315906;
        v27 = "StopChannels";
        v28 = 1024;
        v29 = 2124;
        v30 = 1024;
        v31 = v14;
        v32 = 1024;
        v33 = v17;
        _os_log_impl(&dword_2247DB000, v16, OS_LOG_TYPE_DEFAULT, "%s - [%d] [CIL] Call ISP_CILRequestPerChannel %d (%u/false)\n", buf, 0x1Eu);
      }

      v18 = H16ISP::H16ISPDevice::ISP_CILRequestPerChannel(this, *(*(v4 + v14) + 436), 0);
      if (!v18)
      {
        break;
      }

      v12 = v18;
      v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v6)
      {
        v19 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v19;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *(*(v4 + v14) + 436);
        *buf = 136315906;
        v27 = "StopChannels";
        v28 = 1024;
        v29 = v12;
        v30 = 1024;
        v31 = v14;
        v32 = 1024;
        v33 = v20;
        _os_log_error_impl(&dword_2247DB000, v19, OS_LOG_TYPE_ERROR, "%s - Calling ISP_CILRequestPerChannel error: 0x%08X (%d/%u/false)\n", buf, 0x1Eu);
      }

      if (++v14 == v25)
      {
        return v12;
      }
    }

    ++v14;
  }

  while (v14 != v25);
  if (!v25)
  {
    return 0;
  }

  while (1)
  {
    v21 = *v4;
    *(v21 + 435) = 0;
    v22 = H16ISP::H16ISPDevice::ReturnAllUnusedBuffers(this, *(v21 + 436));
    if (v22)
    {
      break;
    }

    v4 = (v4 + 8);
    if (!--v15)
    {
      return 0;
    }
  }

  v12 = v22;
  v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v6)
  {
    v23 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v23;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPFrameReceiver::StopChannels();
  }

  return v12;
}

uint64_t H16ISP::H16ISPFrameReceiver::PrepareStopReceive(H16ISP::H16ISPFrameReceiver *this)
{
  H16ISP::H16ISPFrameReceiver::stopNoDataTimer(this);
  H16ISP::H16ISPFrameReceiver::stopTailspinTimer(this);
  pthread_mutex_lock((this + 160));
  *(this + 434) = 1;
  pthread_mutex_unlock((this + 160));
  return 0;
}

void H16ISP::H16ISPFrameReceiver::stopProjectorWatchdogTimer(H16ISP::H16ISPFrameReceiver *this)
{
  v2 = *(this + 127);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 127));
    *(this + 127) = 0;
  }

  v3 = *(this + 126);
  if (v3)
  {
    dispatch_sync(v3, &__block_literal_global_67);
    dispatch_release(*(this + 126));
    *(this + 126) = 0;
  }

  bzero(v6, 0x10uLL);
  v4 = *(this + 109);
  v7 = 1569;
  v8 = v4;
  v9 = 0;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 50), v6, 0x10u, 0, 0xFFFFFFFF))
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiver::stopProjectorWatchdogTimer();
    }
  }
}

void *H16ISP::H16ISPFrameReceiver::InsertTestPattern(H16ISP::H16ISPFrameReceiver *this, char *a2, unint64_t a3, unint64_t a4, size_t __n, int a6, int a7)
{
  v62 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v10 = __n >> 2;
    v11 = (a4 * 0xAAAAAAAAAAAAAAABLL) >> 64;
    v12 = a4 / 0x18;
    if (a6)
    {
      v13 = -1;
    }

    else
    {
      v13 = 0;
    }

    v14 = vdupq_n_s16(v13);
    v15 = vbslq_s8(v14, xmmword_2249D1C30, xmmword_2249D1C20);
    v16 = vbslq_s8(v14, xmmword_2249D1C50, xmmword_2249D1C40);
    v17 = vbslq_s8(v14, xmmword_2249D1C70, xmmword_2249D1C60);
    v18 = vbslq_s8(v14, xmmword_2249D1C90, xmmword_2249D1C80);
    if (a7)
    {
      v19 = -1;
    }

    else
    {
      v19 = 0;
    }

    v20 = vdupq_n_s16(v19);
    v61[1] = vrev16q_s8(vbslq_s8(v20, v16, v18));
    v61[0] = vrev16q_s8(vbslq_s8(v20, v15, v17));
    v60 = vrev16q_s8(vbslq_s8(v20, vbslq_s8(v14, xmmword_2249D1CD0, xmmword_2249D1CC0), vbslq_s8(v14, xmmword_2249D1D10, xmmword_2249D1D00)));
    v59 = vrev16q_s8(vbslq_s8(v20, vbslq_s8(v14, xmmword_2249D1CB0, xmmword_2249D1CA0), vbslq_s8(v14, xmmword_2249D1CF0, xmmword_2249D1CE0)));
    v21 = a3 >> 1;
    if (a3 >= 2)
    {
      v22 = 0;
      v23 = 1;
      v24 = a2;
      do
      {
        *v24 = bswap32(*(v59.u32 + (((v22 / v21) << 32) >> 30)));
        v24 += 4;
        v25 = v21 > v23++;
        v22 += 8;
      }

      while (v25);
    }

    v26 = 4 * v10;
    v27 = v12 - 1;
    if (v12 == 1)
    {
      v31 = &a2[4 * v10];
    }

    else
    {
      v28 = v12 - 1;
      do
      {
        v29 = &a2[v26];
        result = memcpy(&a2[v26], a2, __n);
        a2 = v29;
        --v28;
      }

      while (v28);
      v31 = &v29[4 * v10];
    }

    if (a3 >= 2)
    {
      v32 = 0;
      v33 = 1;
      v34 = v31;
      do
      {
        *v34 = bswap32(*(v61 + (((v32 / v21) << 32) >> 30)));
        v34 += 4;
        v25 = v21 > v33++;
        v32 += 8;
      }

      while (v25);
    }

    if (v27)
    {
      v35 = v27;
      do
      {
        v36 = &v31[v26];
        result = memcpy(&v31[v26], v31, __n);
        v31 = v36;
        --v35;
      }

      while (v35);
      v37 = &v36[4 * v10];
    }

    else
    {
      v37 = &v31[4 * v10];
    }

    if (a3 >= 2)
    {
      v38 = 0;
      v39 = 1;
      v40 = v37;
      do
      {
        v41 = v38 / v21;
        if (a7)
        {
          v42 = (255 * v41 / 31);
        }

        else
        {
          v42 = v41 * 219.0 / 31.0 + 16.0;
        }

        *v40 = bswap32(16777472 * (v42 + 0.5) + 8388736);
        v40 += 4;
        v25 = v21 > v39++;
        v38 += 32;
      }

      while (v25);
    }

    v43 = v11 >> 5;
    if (v27)
    {
      do
      {
        v44 = &v37[v26];
        result = memcpy(&v37[v26], v37, __n);
        v37 = v44;
        --v27;
      }

      while (v27);
      v45 = v10;
      v46 = &v44[4 * v10];
    }

    else
    {
      v45 = v10;
      v46 = &v37[4 * v10];
    }

    v47 = 0;
    v58[0] = v59.i32[0];
    v58[1] = v60.i32[1];
    v48 = v60.i32[3];
    v58[2] = v59.i32[3];
    v58[3] = v60.i32[2];
    v49 = v43 - 1;
    do
    {
      if (a3 >= 2)
      {
        v50 = 0;
        v51 = v58[v47];
        do
        {
          v52 = 0;
          v53 = 4;
          v54 = v51;
          v55 = v48;
          do
          {
            v52 = (v50 / (v21 - 1) * v54 + v55 * (1.0 - v50 / (v21 - 1)) + 0.5) + (v52 << 8);
            v55 >>= 8;
            v54 >>= 8;
            --v53;
          }

          while (v53);
          *&v46[4 * v50] = v52;
          v50 = (v50 + 1);
        }

        while (v21 > v50);
      }

      if (v49)
      {
        v56 = v49;
        do
        {
          v57 = &v46[v26];
          result = memcpy(&v46[v26], v46, __n);
          v46 = v57;
          --v56;
        }

        while (v56);
        v46 = &v57[v26];
      }

      else
      {
        v46 += 4 * v45;
      }

      ++v47;
    }

    while (v47 != 4);
  }

  return result;
}

unint64_t H16ISP::H16ISPFrameReceiver::InsertTestPattern_YCbCr_420_Y_UV(H16ISP::H16ISPFrameReceiver *this, _DWORD *__src, char *a3, size_t __n, unint64_t a5, unint64_t a6, unint64_t a7, int a8, double a9, BOOL a10)
{
  result = 0;
  v101 = *MEMORY[0x277D85DE8];
  if (__src)
  {
    v11 = a3;
    if (a3)
    {
      v13 = __src;
      v14 = (a5 * 0xAAAAAAAAAAAAAAABLL) >> 64;
      v16 = a6 >> 2;
      if (a10)
      {
        v17 = a8 == 0;
        if (a8)
        {
          v18 = &unk_2249D1E64;
        }

        else
        {
          v18 = &unk_2249D1EE4;
        }

        if (a8)
        {
          v19 = &unk_2249D1E84;
        }

        else
        {
          v19 = &unk_2249D1F04;
        }

        if (a8)
        {
          v20 = &unk_2249D1E24;
        }

        else
        {
          v20 = &unk_2249D1EA4;
        }

        v21 = &unk_2249D1EC4;
        v22 = &unk_2249D1E44;
      }

      else
      {
        v17 = a8 == 0;
        if (a8)
        {
          v18 = &unk_2249D1D64;
        }

        else
        {
          v18 = &unk_2249D1DE4;
        }

        if (a8)
        {
          v19 = &unk_2249D1D84;
        }

        else
        {
          v19 = &unk_2249D1E04;
        }

        if (a8)
        {
          v20 = &unk_2249D1D24;
        }

        else
        {
          v20 = &unk_2249D1DA4;
        }

        v21 = &unk_2249D1DC4;
        v22 = &unk_2249D1D44;
      }

      if (v17)
      {
        v23 = v21;
      }

      else
      {
        v23 = v22;
      }

      v24 = (a5 / 0x18 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v25 = a7 >> 2;
      if (__n)
      {
        v26 = 0;
        v27 = 0;
        v28 = v13;
        do
        {
          v29 = v18[v26 / __n];
          v30 = bswap32(v19[v26 / __n]);
          *v28 = v29;
          v28[v16] = v29;
          ++v28;
          *&a3[v27] = v30;
          v27 += 4;
          v26 += 32;
        }

        while (v27 < __n);
      }

      v89 = v19;
      v90 = v18;
      v31 = 8 * v16;
      v32 = 4 * v25;
      v33 = 3 * v16;
      v34 = v24 - 2;
      v91 = 2 * v16;
      v92 = a7 >> 2;
      v96 = v24 - 2;
      v98 = 8 * v16;
      if (v24 == 2)
      {
        v38 = &v13[2 * v16];
        v39 = &v11[4 * v25];
      }

      else
      {
        v84 = v23;
        v85 = v14;
        v94 = v20;
        v35 = 0;
        do
        {
          v36 = v13 + v31;
          v37 = &v11[v32];
          memcpy(v13 + v31, v13, __n);
          memcpy(&v13[3 * v16], &v13[v16], __n);
          memcpy(&v11[v32], v11, __n);
          v34 = v96;
          v31 = 8 * v16;
          v35 += 2;
          v11 += v32;
          v13 = v36;
        }

        while (v35 < v96);
        v38 = &v36[8 * v16];
        v25 = v92;
        v39 = &v37[4 * v92];
        v33 = 3 * v16;
        v20 = v94;
        v23 = v84;
        v14 = v85;
      }

      v40 = v14 >> 5;
      if (__n)
      {
        v41 = 0;
        v42 = 0;
        v43 = v38;
        do
        {
          v44 = v20[v41 / __n];
          v45 = bswap32(v23[v41 / __n]);
          *v43 = v44;
          *&v43[4 * v16] = v44;
          v43 += 4;
          *&v39[v42] = v45;
          v42 += 4;
          v41 += 32;
        }

        while (v42 < __n);
      }

      v95 = 4 * v16;
      v46 = v40 + 1;
      if (v34)
      {
        v86 = v40 + 1;
        v47 = 0;
        v48 = 4 * v33;
        do
        {
          v49 = &v38[v31];
          v50 = &v39[v32];
          memcpy(&v38[v31], v38, __n);
          memcpy(&v38[v48], &v38[v95], __n);
          memcpy(&v39[v32], v39, __n);
          v34 = v96;
          v31 = 8 * v16;
          v47 += 2;
          v39 += v32;
          v38 = v49;
        }

        while (v47 < v96);
        v51 = &v49[8 * v16];
        v25 = v92;
        v52 = &v50[4 * v92];
        v33 = 3 * v16;
        v46 = v86;
      }

      else
      {
        v51 = &v38[8 * v16];
        v52 = &v39[4 * v25];
      }

      v53 = v46 & 0xFFFFFFFFFFFFFFELL;
      if (__n)
      {
        v54 = 0;
        v55 = 0;
        a9 = 0.5;
        v56 = v51;
        do
        {
          v57 = v54 / __n;
          if (a10)
          {
            v58 = (255 * v57 / 0x1F);
          }

          else
          {
            v58 = v57 * 219.0 / 31.0 + 16.0;
          }

          v59 = 16843009 * (v58 + 0.5);
          *v56 = v59;
          v56[v16] = v59;
          ++v56;
          *&v52[v55] = -2139062144;
          v55 += 4;
          v54 += 128;
        }

        while (v55 < __n);
      }

      v88 = 3 * ((a5 / 0x18 + 1) & 0x1FFFFFFFFFFFFFFELL) + 4 * v53;
      if (v34)
      {
        v87 = v53;
        v60 = 0;
        v61 = 4 * v33;
        do
        {
          v62 = &v51[v31];
          v63 = &v52[v32];
          memcpy(&v51[v31], v51, __n);
          memcpy(&v51[v61], &v51[v95], __n);
          memcpy(&v52[v32], v52, __n);
          v31 = 8 * v16;
          v60 += 2;
          v52 += v32;
          v51 = v62;
        }

        while (v60 < v96);
        v64 = &v62[8 * v16];
        v65 = &v63[4 * v92];
        v33 = 3 * v16;
        v53 = v87;
      }

      else
      {
        v64 = &v51[8 * v16];
        v65 = &v52[4 * v25];
      }

      v66 = 0;
      v99[0] = *v90;
      v67 = v90[6];
      v99[1] = v90[5];
      v99[2] = v90[3];
      v99[3] = v67;
      v100[0] = *v89;
      v68 = v89[6];
      v100[1] = v89[5];
      v100[2] = v89[3];
      v69 = v53 - 2;
      LOBYTE(a9) = *(v90 + 28);
      v70 = *&a9;
      v71 = v89[7];
      v72 = 4 * v33;
      v73 = BYTE1(v89[7]);
      v100[3] = v68;
      v74 = v71;
      v93 = v16;
      do
      {
        if (__n)
        {
          v75 = 0;
          LOBYTE(a9) = v99[v66];
          a9 = *&a9;
          v76 = HIBYTE(v100[v66]);
          v77 = v100[v66];
          v78 = v65;
          do
          {
            v79 = v75 / (__n - 1);
            v80 = (v79 * a9 + v70 * (1.0 - v79) + 0.5);
            v64[v75] = v80;
            v64[4 * v16 + v75] = v80;
            if ((v75 & 1) == 0)
            {
              *v78 = bswap32((v79 * v77 + v74 * (1.0 - v79) + 0.5) | ((v79 * v76 + v73 * (1.0 - v79) + 0.5) << 8)) >> 16;
              v78 += 2;
            }

            ++v75;
          }

          while (__n != v75);
        }

        if (v69)
        {
          v97 = v66;
          for (i = 0; i < v69; i += 2)
          {
            v82 = &v64[v31];
            v83 = &v65[v32];
            memcpy(&v64[v31], v64, __n);
            memcpy(&v64[v72], &v64[v95], __n);
            memcpy(&v65[v32], v65, __n);
            v31 = v98;
            v65 += v32;
            v64 = v82;
          }

          v64 = &v82[v98];
          v65 = &v83[v32];
          v16 = v93;
          v66 = v97;
        }

        else
        {
          v64 += 4 * v91;
          v65 += 4 * v92;
        }

        ++v66;
      }

      while (v66 != 4);
      return v88;
    }
  }

  return result;
}

void ___ZN6H16ISP19H16ISPFrameReceiver9FrameDoneEPviPyi_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 434) & 1) == 0)
  {
    v3 = *(v2 + 80);
    if (v3)
    {
      v3(*(v2 + 88), v2, **(a1 + 40), *(a1 + 40) + 16, *(a1 + 40) + 12);
      v2 = *(a1 + 32);
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      v4(*(v2 + 40), **(a1 + 40), *(*(a1 + 40) + 8), *(*(a1 + 40) + 12), *(a1 + 40) + 16);
    }
  }

  v5 = *(a1 + 40);
  if (*(v5 + 12))
  {
    v6 = 0;
    v7 = 16;
    do
    {
      CVBufferRelease(*(v5 + v7));
      ++v6;
      v5 = *(a1 + 40);
      v7 += 16;
    }

    while (v6 < *(v5 + 12));
  }

  JUMPOUT(0x22AA55B60);
}

void H16ISP::H16ISPFrameReceiver::tailspinTimeout(H16ISP::H16ISPFrameReceiver *this, __CFRunLoopTimer *a2, void *a3)
{
  MEMORY[0x28223BE20](this, a2);
  v5[1665] = *MEMORY[0x277D85DE8];
  LODWORD(v5[0]) = 213;
  if (H16ISP::H16ISPServicesRemote::SetPropertyAsync(v3, v5))
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiver::tailspinTimeout();
    }
  }
}

void H16ISP::H16ISPFrameReceiver::NoDataTimeout(H16ISP::H16ISPFrameReceiver *this, __CFRunLoopTimer *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 109);
    v7 = 136315394;
    v8 = "NoDataTimeout";
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "%s - (chan: %d)\n", &v7, 0x12u);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v6(6, 0, 0, 0, 0, *(a2 + 7));
  }
}

void ___ZN6H16ISP19H16ISPFrameReceiver27startProjectorWatchdogTimerEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  bzero(v4, 0x10uLL);
  v2 = *(v1 + 436);
  v5 = 1569;
  v6 = v2;
  v7 = 5;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(v1 + 400), v4, 0x10u, 0, 0xFFFFFFFF))
  {
    v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___ZN6H16ISP19H16ISPFrameReceiver27startProjectorWatchdogTimerEv_block_invoke_cold_1();
    }
  }
}

uint64_t H16ISP::H16ISPFrameReceiver::EnableFrameDoneTimer(H16ISP::H16ISPFrameReceiver *this, int a2)
{
  if (a2)
  {
    H16ISP::H16ISPFrameReceiver::startNoDataTimer(this);
    H16ISP::H16ISPFrameReceiver::startTailspinTimer(this);
  }

  else
  {
    H16ISP::H16ISPFrameReceiver::stopNoDataTimer(this);
    H16ISP::H16ISPFrameReceiver::stopTailspinTimer(this);
  }

  return 0;
}

uint64_t H16ISP::H16ISPFrameReceiver::AllocateAndSendStillImageBuffersFromSharedPool(uint64_t a1, int a2, uint64_t a3)
{
  v6 = 3758097136;
  pthread_mutex_lock((a1 + 96));
  if ((*a1 - 1) > 1)
  {
    v6 = 3758097131;
  }

  else
  {
    v7 = *(a1 + 776);
    v8 = (v7 + 8 * (*(a1 + 800) >> 9));
    v9 = *(a1 + 784);
    if (v9 == v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = (*v8 + 8 * (*(a1 + 800) & 0x1FFLL));
    }

    while (1)
    {
      if (v9 == v7)
      {
        v12 = 0;
      }

      else
      {
        v11 = *(a1 + 808) + *(a1 + 800);
        v12 = *(v7 + ((v11 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v11 & 0x1FF);
      }

      if (v10 == v12)
      {
        break;
      }

      v13 = **v10;
      if (*(H16ISP::H16ISPFrameReceiverSharedBufferPool::GetPool(v13) + 16) == a2)
      {
        if (v13)
        {
          v6 = H16ISP::H16ISPFrameReceiverSharedBufferPool::SendStillImageBuffers(v13, a3);
        }

        break;
      }

      if ((++v10 - *v8) == 4096)
      {
        v14 = v8[1];
        ++v8;
        v10 = v14;
      }

      v7 = *(a1 + 776);
      v9 = *(a1 + 784);
    }
  }

  pthread_mutex_unlock((a1 + 96));
  return v6;
}

uint64_t H16ISP::H16ISPFrameReceiver::AllocateAndSendStillImageBuffers(uint64_t a1, int a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  memset(v21, 0, sizeof(v21));
  pthread_mutex_lock((a1 + 96));
  if (!a3)
  {
    goto LABEL_35;
  }

  Buffer = 3758097131;
  if ((*a1 - 1) <= 1)
  {
    v7 = *(a1 + 728);
    v8 = *(a1 + 752);
    v9 = (v7 + 8 * (v8 >> 9));
    v10 = *(a1 + 736);
    v11 = v10 == v7 ? 0 : *v9 + 8 * (*(a1 + 752) & 0x1FFLL);
LABEL_6:
    v12 = v11 - 4096;
    while (1)
    {
      if (v10 == v7)
      {
        v13 = 0;
      }

      else
      {
        v13 = *(v7 + (((*(a1 + 760) + v8) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 760) + v8) & 0x1FF);
      }

      if (v11 == v13)
      {
        Buffer = 3758097136;
        goto LABEL_36;
      }

      v14 = *v11;
      if (*(*v11 + 16) == a2)
      {
        break;
      }

      v11 += 8;
      v12 += 8;
      if (*v9 == v12)
      {
        v15 = v9[1];
        ++v9;
        v11 = v15;
        goto LABEL_6;
      }
    }

    pixelBuffer[0] = 0;
    pixelBuffer[1] = 0;
    Buffer = H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(v14, pixelBuffer, 0);
    if (!Buffer && pixelBuffer[0])
    {
      DWORD1(v21[0]) = CVPixelBufferGetBytesPerRow(pixelBuffer[0]);
      LODWORD(v21[0]) = CVPixelBufferGetDataSize(pixelBuffer[0]);
      operator new();
    }

    v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v16 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiver::AllocateAndSendStillImageBuffers();
    }

    if (!Buffer)
    {
      if (!*(v14 + 28))
      {
        Buffer = H16ISP::H16ISPDevice::SetBufferPoolConfiguration(*(a1 + 400), *(a1 + 436), 32, a3, 0, 1u, v21);
        if (Buffer)
        {
          v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v18 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPFrameReceiver::AllocateAndSendStillImageBuffers();
          }

          goto LABEL_36;
        }
      }

      Buffer = H16ISP::H16ISPDevice::ISP_SendBuffers(*(a1 + 400), v22, a3, *(a1 + 376));
      if (Buffer)
      {
        v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v17 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPFrameReceiver::AllocateAndSendStillImageBuffers();
        }

        goto LABEL_36;
      }

      pthread_mutex_lock((a1 + 160));
      *(v14 + 30) += a3;
      H16ISP::H16ISPFrameReceiverBufferPool::AddPendingStillImageBuffers(v14, a3);
      pthread_mutex_unlock((a1 + 160));
LABEL_35:
      Buffer = 0;
    }
  }

LABEL_36:
  pthread_mutex_unlock((a1 + 96));
  return Buffer;
}

uint64_t H16ISP::H16ISPFrameReceiver::AllocateAndSendOneShotBuffers(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v56 = *MEMORY[0x277D85DE8];
  v54 = 0u;
  v55 = 0u;
  Buffer = 3758097086;
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
  v26 = 0u;
  v27 = 0u;
  v6 = *v2 - 1;
  *v24 = 0u;
  v25 = 0u;
  if (v6 > 1)
  {
    Buffer = 3758097122;
  }

  else if (v4 <= 0x40)
  {
    v10 = *(v2 + 728);
    v11 = *(v2 + 752);
    v12 = (v10 + 8 * (v11 >> 9));
    v13 = *(v2 + 736);
    if (v13 == v10)
    {
      v14 = 0;
    }

    else
    {
      v14 = *v12 + 8 * (*(v2 + 752) & 0x1FFLL);
    }

LABEL_13:
    v15 = v14 - 4096;
    while (1)
    {
      v16 = v13 == v10 ? 0 : *(v10 + (((*(v2 + 760) + v11) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v2 + 760) + v11) & 0x1FF);
      if (v14 == v16)
      {
        break;
      }

      v17 = *v14;
      if (*(*v14 + 16) == v3)
      {
        v19 = *(v17 + 30);
        if (v4 - v19 >= 1)
        {
          v20 = v24;
          v21 = (v4 - v19);
          while (1)
          {
            Buffer = H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(v17, v20, (*(v17 + 29) >> 10) & 1);
            if (Buffer)
            {
              break;
            }

            ++v20;
            if (!--v21)
            {
              operator new();
            }
          }

          break;
        }

        v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v22 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v22;
        }

        Buffer = 0;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 136315138;
          *&v23[4] = "AllocateAndSendOneShotBuffers";
          _os_log_impl(&dword_2247DB000, v22, OS_LOG_TYPE_DEFAULT, "%s - Warning: Not queuing any more single shot buffers to firmware\n", v23, 0xCu);
          return 0;
        }

        return Buffer;
      }

      v14 += 8;
      v15 += 8;
      if (*v12 == v15)
      {
        v18 = v12[1];
        ++v12;
        v14 = v18;
        goto LABEL_13;
      }
    }
  }

  else
  {
    Buffer = 3758097090;
  }

  for (i = 0; i != 64; ++i)
  {
    v8 = v24[i];
    if (v8)
    {
      CVPixelBufferRelease(v8);
    }
  }

  return Buffer;
}

uint64_t H16ISP::H16ISPFrameReceiver::AllocateOneShotBuffer(uint64_t a1, int a2, void *a3)
{
  result = 3758097086;
  *a3 = 0;
  if ((*a1 - 1) > 1)
  {
    return 3758097122;
  }

  v16[3] = v3;
  v16[4] = v4;
  v16[0] = 0;
  v8 = *(a1 + 728);
  v9 = *(a1 + 752);
  v10 = (v8 + 8 * (v9 >> 9));
  v11 = *(a1 + 736);
  if (v11 == v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = &(*v10)[*(a1 + 752) & 0x1FFLL];
  }

LABEL_6:
  v13 = v12 - 512;
  while (1)
  {
    v14 = v11 == v8 ? 0 : *(v8 + (((*(a1 + 760) + v9) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 760) + v9) & 0x1FF);
    if (v12 == v14)
    {
      return result;
    }

    if (*(*v12 + 4) == a2)
    {
      result = H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(*v12, v16, 0);
      if (!result)
      {
        *a3 = v16[0];
      }

      return result;
    }

    ++v12;
    if (*v10 == ++v13)
    {
      v15 = v10[1];
      ++v10;
      v12 = v15;
      goto LABEL_6;
    }
  }
}

uint64_t H16ISP::H16ISPFrameReceiver::SendOneShotBuffer(uint64_t a1, int a2)
{
  v2 = 3758097086;
  if ((*a1 - 1) > 1)
  {
    return 3758097122;
  }

  v3 = *(a1 + 728);
  v4 = *(a1 + 752);
  v5 = (v3 + 8 * (v4 >> 9));
  v6 = *(a1 + 736);
  if (v6 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v5 + 8 * (*(a1 + 752) & 0x1FFLL);
  }

LABEL_6:
  v8 = v7 - 4096;
  while (1)
  {
    v9 = v6 == v3 ? 0 : *(v3 + (((*(a1 + 760) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 760) + v4) & 0x1FF);
    if (v7 == v9)
    {
      return v2;
    }

    if (*(*v7 + 16) == a2)
    {
      operator new();
    }

    v7 += 8;
    v8 += 8;
    if (*v5 == v8)
    {
      v10 = v5[1];
      ++v5;
      v7 = v10;
      goto LABEL_6;
    }
  }
}

uint64_t H16ISP::H16ISPFrameReceiver::AddPreallocatedBuffer(void *a1, int a2, __CVBuffer *a3)
{
  v3 = a1[91];
  v4 = a1[94];
  v5 = (v3 + 8 * (v4 >> 9));
  v6 = a1[92];
  if (v6 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = &(*v5)[a1[94] & 0x1FFLL];
  }

LABEL_4:
  v8 = v7 - 512;
  while (1)
  {
    if (v6 == v3)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v3 + (((a1[95] + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[95] + v4) & 0x1FF);
    }

    if (v7 == v9)
    {
      return 3758097086;
    }

    if (*&(*v7)->__opaque[8] == a2)
    {
      break;
    }

    ++v7;
    if (*v5 == ++v8)
    {
      v10 = v5[1];
      ++v5;
      v7 = v10;
      goto LABEL_4;
    }
  }

  H16ISP::H16ISPFrameReceiverBufferPool::addPreallocatedBuffer(*v7, a3);
  return 0;
}

H16ISP::H16ISPFrameReceiverSharedBufferPool **H16ISP::H16ISPFrameReceiver::getSharedBufferPool(void *a1, int a2)
{
  v4 = a1[97];
  v5 = (v4 + 8 * (a1[100] >> 9));
  v6 = a1[98];
  if (v6 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*v5 + 8 * (a1[100] & 0x1FFLL));
  }

  while (1)
  {
    if (v6 == v4)
    {
      v9 = 0;
    }

    else
    {
      v8 = a1[101] + a1[100];
      v9 = *(v4 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF);
    }

    if (v7 == v9)
    {
      break;
    }

    v10 = *v7;
    if (*(H16ISP::H16ISPFrameReceiverSharedBufferPool::GetPool(**v7) + 16) == a2)
    {
      return v10;
    }

    if ((++v7 - *v5) == 4096)
    {
      v11 = v5[1];
      ++v5;
      v7 = v11;
    }

    v4 = a1[97];
    v6 = a1[98];
  }

  return 0;
}

uint64_t H16ISP::H16ISPFrameReceiver::ResumeReceive(H16ISP::H16ISPFrameReceiver *this)
{
  pthread_mutex_lock((this + 160));
  v2 = *(this + 57);
  if (v2)
  {
    CVPixelBufferRelease(v2);
    *(this + 57) = 0;
  }

  *(this + 55) = -1;
  *(this + 224) = 1;
  *(this + 450) = 0;
  pthread_mutex_unlock((this + 160));
  if (*(this + 131))
  {
    H16ISP::H16ISPFrameReceiver::startNoDataTimer(this);
    H16ISP::H16ISPFrameReceiver::startTailspinTimer(this);
  }

  pthread_mutex_lock((this + 96));
  *this = 1;

  return pthread_mutex_unlock((this + 96));
}

uint64_t H16ISP::H16ISPFrameReceiver::ModifyPoolBufferCount(uint64_t a1, int a2, int a3)
{
  pthread_mutex_lock((a1 + 96));
  v6 = *(a1 + 728);
  v7 = *(a1 + 752);
  v8 = (v6 + 8 * (v7 >> 9));
  v9 = *(a1 + 736);
  if (v9 == v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = &(*v8)[*(a1 + 752) & 0x1FFLL];
  }

LABEL_4:
  v11 = v10 - 512;
  while (1)
  {
    if (v9 == v6)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(v6 + (((*(a1 + 760) + v7) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 760) + v7) & 0x1FF);
    }

    if (v10 == v12)
    {
      v14 = 3758097086;
      goto LABEL_14;
    }

    if (*&(*v10)->__opaque[8] == a2)
    {
      break;
    }

    ++v10;
    if (*v8 == ++v11)
    {
      v13 = v8[1];
      ++v8;
      v10 = v13;
      goto LABEL_4;
    }
  }

  v14 = H16ISP::H16ISPFrameReceiverBufferPool::ModifyBufferCount(*v10, a3);
LABEL_14:
  pthread_mutex_unlock((a1 + 96));
  return v14;
}

uint64_t H16ISP::H16ISPFrameReceiver::ModifySharedPoolBufferCount(uint64_t a1, int a2, int a3)
{
  pthread_mutex_lock((a1 + 96));
  v6 = *(a1 + 776);
  v7 = (v6 + 8 * (*(a1 + 800) >> 9));
  v8 = *(a1 + 784);
  if (v8 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = (*v7 + 8 * (*(a1 + 800) & 0x1FFLL));
  }

  while (1)
  {
    if (v8 == v6)
    {
      v11 = 0;
    }

    else
    {
      v10 = *(a1 + 808) + *(a1 + 800);
      v11 = *(v6 + ((v10 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v10 & 0x1FF);
    }

    if (v9 == v11)
    {
      v14 = 3758097086;
      goto LABEL_14;
    }

    v12 = *v9;
    if (*(H16ISP::H16ISPFrameReceiverSharedBufferPool::GetPool(**v9) + 16) == a2)
    {
      break;
    }

    if ((++v9 - *v7) == 4096)
    {
      v13 = v7[1];
      ++v7;
      v9 = v13;
    }

    v6 = *(a1 + 776);
    v8 = *(a1 + 784);
  }

  Pool = H16ISP::H16ISPFrameReceiverSharedBufferPool::GetPool(*v12);
  v14 = H16ISP::H16ISPFrameReceiverBufferPool::ModifyBufferCount(Pool, a3);
LABEL_14:
  pthread_mutex_unlock((a1 + 96));
  return v14;
}

uint64_t H16ISP::H16ISPFrameReceiver::getOutputSize(void *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _BYTE *a7)
{
  v7 = a1[91];
  v8 = a1[94];
  v9 = (v7 + 8 * (v8 >> 9));
  v10 = a1[92];
  if (v10 == v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v9 + 8 * (a1[94] & 0x1FFLL);
  }

LABEL_4:
  v12 = v11 - 4096;
  while (1)
  {
    if (v10 == v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v7 + (((a1[95] + v8) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[95] + v8) & 0x1FF);
    }

    if (v11 == v13)
    {
      return 3758097097;
    }

    v14 = *v11;
    if (!*(*v11 + 16))
    {
      break;
    }

    v11 += 8;
    v12 += 8;
    if (*v9 == v12)
    {
      v15 = v9[1];
      ++v9;
      v11 = v15;
      goto LABEL_4;
    }
  }

  result = 0;
  *a2 = *(v14 + 24);
  *a3 = *(v14 + 28);
  *a4 = *(v14 + 32);
  v17 = *(v14 + 40);
  *a5 = *(v14 + 36);
  *a6 = v17;
  *a7 = *(v14 + 88);
  return result;
}

uint64_t H16ISP::H16ISPFrameReceiver::setNewOutputSize(H16ISP::H16ISPFrameReceiver *this)
{
  pthread_mutex_lock((this + 96));
  pthread_mutex_unlock((this + 96));
  return 3758097097;
}

uint64_t H16ISP::DestroyH16ISPFrameReceiver(H16ISP *this, H16ISP::H16ISPFrameReceiver *a2)
{
  v3 = *(this + 1);
  CFRetain(v3);
  H16ISP::H16ISPFrameReceiver::~H16ISPFrameReceiver(this);
  MEMORY[0x22AA55B60]();
  CFRunLoopStop(v3);
  CFRelease(v3);
  return 0;
}

uint64_t std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

__n128 std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,0>@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<H16ISP::H16ISPFrameReceiverBufferPool **,std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,0>(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4096;
    }

    v12 = *v17 + 4096;
    v11 = a2;
  }

  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<H16ISP::H16ISPFrameReceiverBufferPool **,std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,0>(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<H16ISP::H16ISPFrameReceiverBufferPool **,std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,0>@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = &a4[-v10];
      if ((v11 - a1) >> 3 >= v12 >> 3)
      {
        v13 = v12 >> 3;
      }

      else
      {
        v13 = (v11 - a1) >> 3;
      }

      v11 -= 8 * v13;
      a4 -= 8 * v13;
      if (v13)
      {
        result = memmove(a4, v11, 8 * v13);
      }

      if (v11 == a1)
      {
        break;
      }

      v15 = *--v6;
      v10 = v15;
      a4 = (v15 + 4096);
    }

    if ((*v6 + 4096) == a4)
    {
      v16 = v6[1];
      ++v6;
      a4 = v16;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

uint64_t std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::__erase_to_end(uint64_t result, char *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 >> 9));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 8 * (v5 & 0x1FF);
  }

  if (v9 != a3)
  {
    v10 = ((v9 - *v8) >> 3) + ((v8 - a2) << 6);
    v11 = a3 - *a2;
    v12 = v10 - (v11 >> 3);
    if (v12 >= 1)
    {
      v13 = (v6 + 8 * (v4 >> 9));
      if (v7 == v6)
      {
        v14 = 0;
      }

      else
      {
        v14 = *v13 + 8 * (*(result + 32) & 0x1FFLL);
      }

      v16[0] = v13;
      v16[1] = v14;
      if (a3 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = (v11 >> 3) + ((a2 - v13) << 6) - ((v14 - *v13) >> 3);
      }

      std::__deque_iterator<__CVBuffer *,__CVBuffer **,__CVBuffer *&,__CVBuffer ***,long,512l>::operator+[abi:ne200100](v16, v15);
      v3[5] -= v12;
      do
      {
        result = std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::__maybe_remove_back_spare[abi:ne200100](v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

void H16ISP::H16ISPFirmwareWorkProcessor::H16ISPFirmwareWorkProcessor(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = a2;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0x4000000000000000;
  v4 = a3[1];
  *(a1 + 296) = *a3;
  *(a1 + 304) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_init((a1 + 16), 0);
  pthread_mutex_init((a1 + 144), 0);
  *(a1 + 208) = 0;
  pthread_mutexattr_init(&v6);
  pthread_mutexattr_settype(&v6, 2);
  pthread_mutex_init((a1 + 80), &v6);
  pthread_mutexattr_destroy(&v6);
  v5 = 0;
  H16ISP::H16ISPDevice::GetISPCounterFrequency(*(a1 + 240), &v5, (a1 + 256));
  mach_timebase_info((a1 + 264));
  operator new();
}

void sub_2248FBCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x22AA55B60](v11, 0x1020C40918A61C1);
  v13 = *(v10 + 304);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(a1);
}

void H16ISP::H16ISPFirmwareWorkProcessor::~H16ISPFirmwareWorkProcessor(H16ISP::H16ISPFirmwareWorkProcessor *this)
{
  if (*this)
  {
    H16ISP::H16ISPFirmwareWorkProcessor::stopReceive(this);
  }

  if (*(this + 29))
  {
    H16ISP::H16ISPFirmwareWorkProcessor::removeIODispatcherFromRunLoop(this);
  }

  v2 = *(this + 34);
  if (v2)
  {
    v3 = *(this + 1);
    RunLoopSource = H16ISP::H16ISPCFLocalMessagePort::GetRunLoopSource(v2);
    CFRunLoopRemoveSource(v3, RunLoopSource, *MEMORY[0x277CBF058]);
    v5 = *(this + 34);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(this + 34) = 0;
  }

  v6 = *(this + 36);
  if (v6)
  {
    H16ISPFirmwareWork::~H16ISPFirmwareWork(v6);
    MEMORY[0x22AA55B60]();
  }

  pthread_mutex_destroy((this + 16));
  pthread_mutex_destroy((this + 80));
  pthread_mutex_destroy((this + 144));
  v7 = *(this + 38);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

uint64_t H16ISP::H16ISPFirmwareWorkProcessor::stopReceive(H16ISP::H16ISPFirmwareWorkProcessor *this)
{
  pthread_mutex_lock((this + 16));
  if (*this)
  {
    H16ISP::H16ISPFirmwareWorkProcessor::stopNoDataTimer(this);
    pthread_mutex_lock((this + 80));
    *(this + 248) = 1;
    pthread_mutex_unlock((this + 80));
    v2 = H16ISP::H16ISPDevice::ISP_UnregisterFirmwareWorkProcessor(*(this + 30), *(this + 56));
    *(this + 248) = 0;
    *this = 0;
  }

  else
  {
    v2 = 3758097122;
  }

  pthread_mutex_unlock((this + 16));
  return v2;
}

void H16ISP::H16ISPFirmwareWorkProcessor::removeIODispatcherFromRunLoop(H16ISP::H16ISPFirmwareWorkProcessor *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    CFRunLoopRemoveSource(*(this + 1), v2, *MEMORY[0x277CBF058]);
    CFRelease(*(this + 29));
    *(this + 29) = 0;
  }

  v3 = *(this + 27);
  if (v3)
  {
    CFMachPortInvalidate(v3);
    CFRelease(*(this + 27));
    *(this + 27) = 0;
  }

  v4 = *(this + 56);
  if (v4)
  {
    mach_port_mod_refs(*MEMORY[0x277D85F48], v4, 1u, -1);
    *(this + 56) = 0;
  }
}

uint64_t H16ISP::H16ISPFirmwareWorkProcessor::setupWorkProcessor(H16ISP::H16ISPFirmwareWorkProcessor *this)
{
  *(this + 1) = CFRunLoopGetCurrent();

  return H16ISP::H16ISPFirmwareWorkProcessor::addIODispatcherToRunLoop(this);
}

uint64_t H16ISP::H16ISPFirmwareWorkProcessor::addIODispatcherToRunLoop(H16ISP::H16ISPFirmwareWorkProcessor *this)
{
  v2 = IOCreateReceivePort(0x39u, this + 56);
  if (!v2)
  {
    v2 = 3758097085;
    shouldFreeInfo = 0;
    context.version = 1;
    context.info = this;
    memset(&context.retain, 0, 24);
    v4 = *MEMORY[0x277CBECE8];
    v5 = CFMachPortCreateWithPort(*MEMORY[0x277CBECE8], *(this + 56), MEMORY[0x277CD27F0], &context, &shouldFreeInfo);
    *(this + 27) = v5;
    if (v5)
    {
      RunLoopSource = CFMachPortCreateRunLoopSource(v4, v5, 0);
      *(this + 29) = RunLoopSource;
      if (RunLoopSource)
      {
        CFRunLoopAddSource(*(this + 1), RunLoopSource, *MEMORY[0x277CBF058]);
        return 0;
      }
    }
  }

  return v2;
}

uint64_t H16ISP::H16ISPFirmwareWorkProcessor::startReceive(H16ISP::H16ISPFirmwareWorkProcessor *this)
{
  pthread_mutex_lock((this + 16));
  if (*this == 1)
  {
    pthread_mutex_unlock((this + 16));
    return 3758097122;
  }

  else
  {
    *(this + 248) = 0;
    *this = 1;
    inputStruct[0] = H16ISP::H16ISPFirmwareWorkProcessor::WorkReady;
    inputStruct[1] = this;
    v5 = *(this + 56);
    v2 = H16ISP::H16ISPDevice::ISP_RegisterFirmwareWorkProcessor(*(this + 30), inputStruct);
    pthread_mutex_unlock((this + 16));
  }

  return v2;
}

uint64_t H16ISP::H16ISPFirmwareWorkProcessor::stopNoDataTimer(H16ISP::H16ISPFirmwareWorkProcessor *this)
{
  pthread_mutex_lock((this + 144));
  v2 = *(this + 26);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(this + 26));
    *(this + 26) = 0;
  }

  return pthread_mutex_unlock((this + 144));
}

uint64_t H16ISP::H16ISPFirmwareWorkProcessor::tickleNoDataTimer(H16ISP::H16ISPFirmwareWorkProcessor *this)
{
  pthread_mutex_lock((this + 144));
  v2 = *(this + 26);
  if (v2)
  {
    Current = CFAbsoluteTimeGetCurrent();
    CFRunLoopTimerSetNextFireDate(v2, Current + *(this + 35));
  }

  return pthread_mutex_unlock((this + 144));
}

uint64_t H16ISP::H16ISPFirmwareWorkProcessor::FlushSurfaceCache(H16ISP::H16ISPFirmwareWorkProcessor *this)
{
  pthread_mutex_lock((this + 16));
  H16ISP::H16ISPDevice::ISP_ReleaseFirmwareWorkProcessorBuffers(*(this + 30), *(this + 56));
  pthread_mutex_unlock((this + 16));
  return 0;
}

uint64_t H16ISP::H16ISPFirmwareWorkProcessor::startNoDataTimer(H16ISP::H16ISPFirmwareWorkProcessor *this)
{
  v2 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableISPBringup", @"com.apple.coremedia", 0);
  pthread_mutex_lock((this + 144));
  v3 = *(this + 26);
  if (v3)
  {
    CFRunLoopTimerInvalidate(v3);
    CFRelease(*(this + 26));
    *(this + 26) = 0;
  }

  context.version = 0;
  context.info = this;
  memset(&context.retain, 0, 24);
  v4 = CFAbsoluteTimeGetCurrent() + *(this + 35);
  v5 = 200.0;
  if (!v2)
  {
    v5 = 0.0;
  }

  v6 = CFRunLoopTimerCreate(0, v5 + v4, 0.0, 0, 0, H16ISP::H16ISPFirmwareWorkProcessor::NoDataTimeout, &context);
  *(this + 26) = v6;
  if (v6)
  {
    CFRunLoopAddTimer(*(this + 1), v6, *MEMORY[0x277CBF058]);
  }

  return pthread_mutex_unlock((this + 144));
}

uint64_t H16ISP::H16ISPFirmwareWorkProcessor::SetFrameDoneTimeoutDuration(H16ISP::H16ISPFirmwareWorkProcessor *this, double a2)
{
  if (a2 < 2.0)
  {
    a2 = 2.0;
  }

  *(this + 35) = a2;
  H16ISP::H16ISPFirmwareWorkProcessor::tickleNoDataTimer(this);
  return 0;
}

uint64_t H16ISP::H16ISPFirmwareWorkProcessor::ClearSharedBuffers(H16ISP::H16ISPFirmwareWorkSharedBuffers **this)
{
  v2 = 0;
  do
  {
    v3 = v2;
    H16ISP::H16ISPFirmwareWorkSharedBuffers::FreeSharedBuffer(this[37], v2++);
  }

  while (v3 < 0x18);
  return 0;
}

uint64_t H16ISP::H16ISPFirmwareWorkSharedBuffers::FreeSharedBuffer(H16ISP::H16ISPFirmwareWorkSharedBuffers *this, unsigned int a2)
{
  v4 = a2;
  v5 = this + 64 * a2;
  pthread_mutex_lock((v5 + 400));
  v6 = *(this + a2);
  if (v6)
  {
    MEMORY[0x22AA55B40](v6, 0x1000C8077774924);
    *(this + v4) = 0;
  }

  return pthread_mutex_unlock((v5 + 400));
}

H16ISP::H16ISPFirmwareWorkSharedBuffers *H16ISP::H16ISPFirmwareWorkSharedBuffers::H16ISPFirmwareWorkSharedBuffers(H16ISP::H16ISPFirmwareWorkSharedBuffers *this)
{
  v2 = 0;
  v3 = (this + 400);
  do
  {
    pthread_mutex_init(v3, 0);
    v4 = (this + v2);
    *v4 = 0;
    v4[25] = 0;
    ++v3;
    v2 += 8;
  }

  while (v2 != 200);
  return this;
}

{
  v2 = 400;
  v3 = this;
  do
  {
    pthread_mutex_init((this + v2), 0);
    *v3 = 0;
    *(v3 + 25) = 0;
    v2 += 64;
    v3 = (v3 + 8);
  }

  while (v2 != 2000);
  return this;
}

void H16ISP::H16ISPFirmwareWorkSharedBuffers::~H16ISPFirmwareWorkSharedBuffers(H16ISP::H16ISPFirmwareWorkSharedBuffers *this)
{
  v2 = 0;
  v3 = (this + 400);
  do
  {
    H16ISP::H16ISPFirmwareWorkSharedBuffers::FreeSharedBuffer(this, v2);
    pthread_mutex_destroy(v3);
    ++v2;
    ++v3;
  }

  while (v2 != 25);
}

uint64_t H16ISP::H16ISPFirmwareWorkSharedBuffers::SharedBufferGet(H16ISP::H16ISPFirmwareWorkSharedBuffers *this, unsigned int a2, uint64_t a3, unsigned __int8 **a4)
{
  v4 = 3758097090;
  if (a3 && a4)
  {
    v9 = a2;
    pthread_mutex_lock((this + 64 * a2 + 400));
    v10 = *(this + a2);
    v11 = this + 8 * v9;
    if (!v10)
    {
      goto LABEL_6;
    }

    if (*(v11 + 25) != a3)
    {
      MEMORY[0x22AA55B40]();
      *(this + v9) = 0;
LABEL_6:
      *(v11 + 25) = a3;
      operator new[]();
    }

    v4 = 0;
    *a4 = v10;
  }

  return v4;
}

void H16ISP::CreateH16ISPFirmwareWorkProcessor()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 0uLL;
  v0 = 0;
  H16ISP::H16ISPThreadReadySyncer::H16ISPThreadReadySyncer(&v2);
  _ZNSt3__115allocate_sharedB8ne200100IN6H16ISP31H16ISPFirmwareWorkSharedBuffersENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_2248FC7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, ...)
{
  va_start(va, a10);
  H16ISP::H16ISPThreadReadySyncer::~H16ISPThreadReadySyncer(va);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a9);
  }

  _Unwind_Resume(a1);
}

void H16ISP::H16ISPFirmwareWorkProcessorThreadStart(uint64_t a1)
{
  pthread_setname_np("H16ISPFirmwareWorkProcessorThread");
  H16ISP::H16ISPThreadReadySyncer::lock(*(a1 + 16));
  operator new();
}

void sub_2248FC8D0(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x22AA55B60](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t H16ISP::DestroyH16ISPFirmwareWorkProcessor(H16ISP *this, H16ISP::H16ISPFirmwareWorkProcessor *a2)
{
  v3 = *(this + 1);
  CFRetain(v3);
  H16ISP::H16ISPFirmwareWorkProcessor::~H16ISPFirmwareWorkProcessor(this);
  MEMORY[0x22AA55B60]();
  CFRunLoopStop(v3);
  CFRelease(v3);
  return 0;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *_ZNSt3__120__shared_ptr_emplaceIN6H16ISP31H16ISPFirmwareWorkSharedBuffersENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2838141B8;
  v2 = a1 + 28;
  for (i = 53; i != 253; i += 8)
  {
    pthread_mutex_init(&a1[i], 0);
    *(v2 - 25) = 0;
    *v2++ = 0;
  }

  return a1;
}

void std::__shared_ptr_emplace<H16ISP::H16ISPFirmwareWorkSharedBuffers>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2838141B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AA55B60);
}

uint64_t AppendMotionMetadata(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  result = 3758097090;
  if (a1 && a2)
  {
    if (pMetadataFileWriterQueue)
    {
      v5 = metadataFileWriterThreadRunLoopRef == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      return 3758097112;
    }

    else
    {
      pthread_mutex_lock(&metadataFileWriterQueueMutex);
      v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040DE3E3027uLL);
      if (v7)
      {
        *v7 = 0u;
        v7[1] = 0u;
        *v7 = *a1;
        *(v7 + 3) = a3;
        operator new();
      }

      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        AppendMotionMetadata(v8);
      }

      pthread_mutex_unlock(&metadataFileWriterQueueMutex);
      return 3758097085;
    }
  }

  return result;
}

void *std::deque<MotionMetadataContext *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<MotionMetadataContext *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

_DWORD *CreateMotionMetadataDebugLogger(const char *a1, int a2, H16ISP::H16ISPDevice *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = malloc_type_calloc(0x10uLL, 1uLL, 0x10200403A5D3213uLL);
  if (v6)
  {
    if (!nThreadCreateRefCnt)
    {
      operator new();
    }

    ++nThreadCreateRefCnt;
    v7 = fopen(a1, "w");
    *v6 = v7;
    if (v7)
    {
      v6[2] = a2;
      fwrite("---------------------------------------------------------------------------\n", 0x4CuLL, 1uLL, v7);
      fwrite("OIS/Motion Debug Log\n", 0x15uLL, 1uLL, *v6);
      fprintf(*v6, "File Version: %s\n", "H16-1.0.0");
      v10 = 0;
      setlocale(0, "");
      time(&v10);
      v8 = localtime(&v10);
      machTicks0 = mach_absolute_time();
      gettimeofday(&v11, 0);
      wallTimeMs0 = 1000 * v11.__sig + *v11.__opaque / 1000;
      mach_timebase_info(&sTimebase);
      *&ticksToNsRatio = (sTimebase / *algn_27D6F282C);
      strftime(v16, 0x28uLL, "%m/%d/%g - %H:%M:%S", v8);
      fprintf(*v6, "Created: %s\n\n", v16);
      if (a3)
      {
        bzero(&v11, 0xACuLL);
        WORD2(v11.__sig) = 6;
        if (!H16ISP::H16ISPDevice::ISP_SendCommand(a3, &v11, 0xACu, 0, 0xFFFFFFFF))
        {
          fwrite("Firmware Info:\n", 0xFuLL, 1uLL, *v6);
          fprintf(*v6, "    Platform Name: %s\n", v11.__opaque);
          fprintf(*v6, "    Link Date: %s\n", &v11.__opaque[32]);
          fprintf(*v6, "    Release Version: %s\n", v12);
          fprintf(*v6, "    Toolchain Name: %s\n", v13);
          fprintf(*v6, "    Toolchain Version: %s\n", v14);
          fprintf(*v6, "    Metadata Version: %d.%d.%d\n", (v15 >> 21) & 0x3FF, (v15 >> 11) & 0x3FF, (v15 >> 1) & 0x3FF);
          if ((a2 & 0x100) != 0)
          {
            fwrite("Timebase Conversion Info:\n", 0x1AuLL, 1uLL, *v6);
            fprintf(*v6, "    mach_timebase_info = %u / %u \n", sTimebase, *algn_27D6F282C);
            fprintf(*v6, "Conversion Formula: elapsed time (nanoseconds) = (elapsed time (mach ticks)) * %d/%d \n", sTimebase, *algn_27D6F282C);
            fprintf(*v6, "Conversion Formula: elapsed time (seconds) = (elapsed time (mach ticks))/ %f \n", 1000000000.0 / *&ticksToNsRatio);
            fprintf(*v6, "Mach Absolute Time: 0x%llX (%llu)\n", machTicks0, machTicks0);
            fprintf(*v6, "Wall Clock Time: %llu (ms)\n", wallTimeMs0);
          }

          fputc(10, *v6);
        }
      }

      fwrite("---------------------------------------------------------------------------\n", 0x4CuLL, 1uLL, *v6);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "Could not open OIS meta-data file for writing: %s\n", a1);
      free(v6);
      return 0;
    }
  }

  return v6;
}

uint64_t DestroyMotionMetadataDebugLogger(FILE **a1)
{
  if (a1)
  {
    if (!--nThreadCreateRefCnt)
    {
      CFRetain(metadataFileWriterThreadRunLoopRef);
      CFRunLoopStop(metadataFileWriterThreadRunLoopRef);
      CFRelease(metadataFileWriterThreadRunLoopRef);
      metadataFileWriterThreadRunLoopRef = 0;
      if (pMetadataFileWriterQueue)
      {
        v2 = std::deque<__CVBuffer *>::~deque[abi:ne200100](pMetadataFileWriterQueue);
        MEMORY[0x22AA55B60](v2, 0x1080C40BE8D5F09);
        pMetadataFileWriterQueue = 0;
      }

      v4 = 0;
      pthread_join(metadataFileWriterThread, &v4);
      pthread_mutex_destroy(&metadataFileWriterQueueMutex);
    }

    if (*a1)
    {
      fflush(*a1);
      fclose(*a1);
    }

    free(a1);
    return 0;
  }

  else
  {
    fwrite("DestroyMotionMetadataDebugLogger: Invalid context \n", 0x33uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 3758097090;
  }
}

uint64_t MetadataFileWriterThread(void *a1)
{
  pthread_setname_np("MetadataFileWriterThread");
  bzero(&v4, 0x50uLL);
  v4.perform = MetadataFileWriterThreadMessageHandler;
  v4.info = 0;
  metadataFileWriterThreadRunLoopSource = CFRunLoopSourceCreate(0, 0, &v4);
  if (metadataFileWriterThreadRunLoopSource)
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, metadataFileWriterThreadRunLoopSource, *MEMORY[0x277CBF058]);
    metadataFileWriterThreadRunLoopRef = CFRunLoopGetCurrent();
    CFRunLoopRun();
  }

  else
  {
    v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v2 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      MetadataFileWriterThread(v2);
    }
  }

  return 0;
}

uint64_t MetadataFileWriterThreadMessageHandler(void *a1)
{
  pthread_mutex_lock(&metadataFileWriterQueueMutex);
  for (i = pMetadataFileWriterQueue; pMetadataFileWriterQueue; i = pMetadataFileWriterQueue)
  {
    v2 = i[5];
    if (!v2)
    {
      break;
    }

    v3 = *(*(i[1] + ((i[4] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (i[4] & 0x1FFLL));
    ++i[4];
    i[5] = v2 - 1;
    std::deque<__CVBuffer *>::__maybe_remove_front_spare[abi:ne200100](i, 1);
    pthread_mutex_unlock(&metadataFileWriterQueueMutex);
    if (v3)
    {
      v4 = *v3;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      fwrite("---------------------------------------------------------------------------\n", 0x4CuLL, 1uLL, *v3);
      if (v6)
      {
        fprintf(v4, "frame: %d\n", *(v6[68] + 12));
        fprintf(v4, "timeStamp: 0x%016llX\n", *(v3 + 24));
        if ((v5 & 0x100) != 0)
        {
          v7 = v6[68];
          if (v7)
          {
            fprintf(v4, "metadata->timeStamp: 0x%016llX\n", *(v7 + 4));
            fprintf(v4, "metadata->timeStamp (dec): %llu\n", *(v6[68] + 4));
            v8 = *(v3 + 24);
            if (v8)
            {
              v9 = machTicks0 == 0;
            }

            else
            {
              v9 = 1;
            }

            if (v9)
            {
              v10 = 0;
            }

            else
            {
              v10 = wallTimeMs0 + ((*&ticksToNsRatio * (v8 - machTicks0)) / 1000000.0);
            }

            fprintf(v4, "Timestamp Wall Time: %llu (ms)\n", v10);
          }
        }

        gettimeofday(&v89, 0);
        fprintf(v4, "epochTime: %ld:%03d\n", v89.tv_sec, v89.tv_usec / 1000);
        if ((v5 & 8) != 0 && *v6)
        {
          fprintf(v4, "sensorTemperature: %d\n", *(*v6 + 336));
        }

        if ((v5 & 0x2000) != 0)
        {
          if (*v6)
          {
            v11 = v6[2];
            if (v11)
            {
              fprintf(v4, "LuxLevel: %d\n", *(v11 + 36));
              fprintf(v4, "QuadraBinningFactor: %d\n", *(*v6 + 804));
              fprintf(v4, "CurrentFrameRate: %f\n", vcvtd_n_f64_u32(*(*v6 + 48), 8uLL));
              fprintf(v4, "ExposureTime: %d (us)\n", *v6[2]);
            }
          }
        }

        if ((v5 & 0x10) != 0 && *v6)
        {
          fprintf(v4, "motionDataStatus: %d\n", *(*v6 + 420));
          fprintf(v4, "sphereStatus: %d\n", *(*v6 + 424));
          fprintf(v4, "sphereMode: %d\n", *(*v6 + 428));
          fprintf(v4, "apsMode: %d\n", *(*v6 + 592));
          fprintf(v4, "apsModeInUse: %d\n", *(*v6 + 636));
          fprintf(v4, "channel: %d\n", *(*v6 + 458));
        }

        if ((v5 & 0x20) != 0)
        {
          v12 = v6[3];
          if (v12)
          {
            fprintf(v4, "afCurrentPosition: %d\n", *(v12 + 26));
          }
        }

        v87 = v3;
        v13 = v6[21];
        if (v13)
        {
          v14 = (v5 & 2) == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          fwrite("Motion meta-data section not found in frame meta-data.\n", 0x37uLL, 1uLL, v4);
        }

        else
        {
          fprintf(v4, "motionMetaVersion = %d\n", *v13);
          fprintf(v4, "motionSampleCount = %d\n", *(v6[21] + 2));
          v15 = v6[21];
          if (*(v15 + 2))
          {
            v16 = 0;
            v17 = 104;
            do
            {
              v18 = (v15 + v17);
              fprintf(v4, "motionSample: Tisp=0x%016llX  Tmot=0x%016llX  type=%-5d  convergence=%-5d  Wq=%-10.7f  Xq=%-10.7f  Yq=%-10.7f  Zq=%-10.7f  Wp=%-10.7f  Xp=%-10.7f  Yp=%-10.7f  Zp=%-10.7f  Xg=%-10.7f  Yg=%-10.7f  Zg=%-10.7f AccelX=%-10.7f AccelY=%-10.7f AccelZ=%-10.7f\n              gyroBiasEst=%.3f RotationRateY=%.3f RotationRateP=%.3f RotationRateR=%.3f\n", *(v18 - 12), *(v18 - 11), *(v18 - 40), *(v18 - 37), vcvtd_n_f64_s32(*(v18 - 18), 0x1EuLL), vcvtd_n_f64_s32(*(v18 - 17), 0x1EuLL), vcvtd_n_f64_s32(*(v18 - 16), 0x1EuLL), vcvtd_n_f64_s32(*(v18 - 15), 0x1EuLL), vcvtd_n_f64_s32(*(v18 - 11), 0x1EuLL), vcvtd_n_f64_s32(*(v18 - 10), 0x1EuLL), vcvtd_n_f64_s32(*(v18 - 9), 0x1EuLL), vcvtd_n_f64_s32(*(v18 - 8), 0x1EuLL), vcvtd_n_f64_s32(*(v18 - 14), 0x10uLL), vcvtd_n_f64_s32(*(v18 - 13), 0x10uLL), vcvtd_n_f64_s32(*(v18 - 12), 0x10uLL), vcvtd_n_f64_s32(*(v18 - 7), 0x10uLL), vcvtd_n_f64_s32(*(v18 - 6), 0x10uLL), vcvtd_n_f64_s32(*(v18 - 5), 0x10uLL), vcvtd_n_f64_s32(*(v18 - 3), 0x10uLL), vcvtd_n_f64_s32(*(v18 - 2), 0x10uLL), vcvtd_n_f64_s32(*(v18 - 1), 0x10uLL), vcvtd_n_f64_s32(*v18, 0x10uLL));
              ++v16;
              v15 = v6[21];
              v17 += 100;
            }

            while (v16 < *(v15 + 2));
          }
        }

        v19 = v6[13];
        v88 = v5;
        if (v19)
        {
          fprintf(v4, "oisMetaVersion: %d\n", *v19);
          fprintf(v4, "oisSampleCount: %d\n", *(v6[13] + 2));
          fprintf(v4, "motionSampleCount: %d\n", *(v6[13] + 4));
          fprintf(v4, "rvsyncTimeStamp: %llu\n", *(v6[13] + 61008));
          fprintf(v4, "primaryReadoutDoneTimeStamp: %llu\n", *(v6[13] + 61016));
          fprintf(v4, "fvsyncTimeStamp: %llu\n", *(v6[13] + 61024));
          fprintf(v4, "nextExposureTimeStamp: %llu\n", *(v6[13] + 61032));
          v20 = *v6;
          if (*v6)
          {
            if (!*(v20 + 468) || (fprintf(v4, "torchOn: ts=0x%016llX\n", *(v20 + 468)), (v20 = *v6) != 0))
            {
              v21 = *(v20 + 476);
              if (v21)
              {
                fprintf(v4, "torchOff: ts=0x%016llX\n", v21);
              }
            }
          }

          if ((v5 & 2) != 0)
          {
            v22 = v6[50];
            if (v22)
            {
              fprintf(v4, "accel_std: %f\n", *(v22 + 4));
              fprintf(v4, "max_accel: %f\n", *(v6[50] + 8));
              fprintf(v4, "min_accel: %f\n", *(v6[50] + 12));
              fprintf(v4, "gyro_std: %f\n", *(v6[50] + 16));
              fprintf(v4, "max_gyro: %f\n", *(v6[50] + 20));
              fprintf(v4, "min_gyro: %f\n", *(v6[50] + 24));
            }
          }

          if (v5)
          {
            v23 = v6[52];
            if (v23)
            {
              fprintf(v4, "xy_std: %f\n", *(v23 + 4));
              fprintf(v4, "max_xy: %f\n", *(v6[52] + 16));
              fprintf(v4, "min_xy: %f\n", *(v6[52] + 20));
            }
          }

          if ((v5 & 0x80) != 0)
          {
            v24 = v6[51];
            if (v24)
            {
              fprintf(v4, "ze_std: %f\n", *(v24 + 4));
              fprintf(v4, "max_ze: %f\n", *(v6[51] + 8));
              fprintf(v4, "min_ze: %f\n", *(v6[51] + 12));
              fprintf(v4, "ze_ss_error: %f\n", *(v6[51] + 16));
              fprintf(v4, "ze_avg: %f\n", *(v6[51] + 24));
              fprintf(v4, "w_avg: %f\n", *(v6[51] + 28));
              fprintf(v4, "e_avg: %f\n", *(v6[51] + 32));
            }
          }

          if (v5)
          {
            v25 = v6[13];
            if (*(v25 + 2))
            {
              v26 = 0;
              v27 = 98;
              do
              {
                v28 = (v25 + v27);
                fprintf(v4, "oisSample: ts=0x%016llX  Xt=%-10.5f  Yt=%-10.5f  H1=%-5d  H2=%-5d  B1=%-5d  B2=%-5d  Xe=%-10.5f  Ye=%-10.5f  temp=%-5d\n           H1_bz_corr=%-10.5f  H2_bz_corr=%-10.5f  H1_to_um_X=%-10.5f  H1_to_um_Y=%-10.5f  H2_to_um_X=%-10.5f  H2_to_um_Y=%-10.5f  B1_to_um_X=%-10.5f\n           B1_to_um_Y=%-10.5f  B2_to_um_X=%-10.5f  B2_to_um_Y=%-10.5f  power=0x%04X  oisS1Temp=%-10.5f  oisS2Temp=%-10.5f \n           xBias=%-10.5f  yBias=%-10.5f\n", *(v25 + v27 - 90), vcvtd_n_f64_s32(*(v28 - 41), 8uLL), vcvtd_n_f64_s32(*(v28 - 39), 8uLL), *(v28 - 37), *(v28 - 36), *(v28 - 35), *(v28 - 34), vcvtd_n_f64_s32(*(v28 - 33), 8uLL), vcvtd_n_f64_s32(*(v28 - 31), 8uLL), *(v28 - 29), vcvtd_n_f64_s32(*(v28 - 27), 8uLL), vcvtd_n_f64_s32(*(v28 - 25), 8uLL), vcvtd_n_f64_s32(*(v28 - 23), 8uLL), vcvtd_n_f64_s32(*(v28 - 21), 8uLL), vcvtd_n_f64_s32(*(v28 - 19), 8uLL), vcvtd_n_f64_s32(*(v28 - 17), 8uLL), vcvtd_n_f64_s32(*(v28 - 15), 8uLL), vcvtd_n_f64_s32(*(v28 - 13), 8uLL), vcvtd_n_f64_s32(*(v28 - 11), 8uLL), vcvtd_n_f64_s32(*(v28 - 9), 8uLL), *(v28 - 7), vcvtd_n_f64_s32(*(v28 - 1), 8uLL), vcvtd_n_f64_s32(*v28, 8uLL), vcvtd_n_f64_s32(*(v28 - 5), 8uLL), vcvtd_n_f64_s32(*(v28 - 3), 8uLL));
                ++v26;
                v25 = v6[13];
                v27 += 92;
              }

              while (v26 < *(v25 + 2));
            }
          }

          LOBYTE(v5) = v88;
          if ((v88 & 2) != 0)
          {
            v29 = v6[13];
            if (*(v29 + 4))
            {
              v30 = 0;
              v31 = 47024;
              do
              {
                v32 = (v29 + v31);
                fprintf(v4, "motionSample: Tisp=0x%016llX  Tmot=0x%016llX  type=%-5d  convergence=%-5d  Wq=%-10.7f  Xq=%-10.7f  Yq=%-10.7f  Zq=%-10.7f  Wp=%-10.7f  Xp=%-10.7f  Yp=%-10.7f  Zp=%-10.7f  Xg=%-10.7f  Yg=%-10.7f  Zg=%-10.7f AccelX=%-10.7f AccelY=%-10.7f AccelZ=%-10.7f\n              gyroBiasEst=%.3f RotationRateY=%.3f RotationRateP=%.3f RotationRateR=%.3f\n", *(v32 - 12), *(v32 - 11), *(v32 - 40), *(v32 - 37), vcvtd_n_f64_s32(*(v32 - 18), 0x1EuLL), vcvtd_n_f64_s32(*(v32 - 17), 0x1EuLL), vcvtd_n_f64_s32(*(v32 - 16), 0x1EuLL), vcvtd_n_f64_s32(*(v32 - 15), 0x1EuLL), vcvtd_n_f64_s32(*(v32 - 11), 0x1EuLL), vcvtd_n_f64_s32(*(v32 - 10), 0x1EuLL), vcvtd_n_f64_s32(*(v32 - 9), 0x1EuLL), vcvtd_n_f64_s32(*(v32 - 8), 0x1EuLL), vcvtd_n_f64_s32(*(v32 - 14), 0x10uLL), vcvtd_n_f64_s32(*(v32 - 13), 0x10uLL), vcvtd_n_f64_s32(*(v32 - 12), 0x10uLL), vcvtd_n_f64_s32(*(v32 - 7), 0x10uLL), vcvtd_n_f64_s32(*(v32 - 6), 0x10uLL), vcvtd_n_f64_s32(*(v32 - 5), 0x10uLL), vcvtd_n_f64_s32(*(v32 - 3), 0x10uLL), vcvtd_n_f64_s32(*(v32 - 2), 0x10uLL), vcvtd_n_f64_s32(*(v32 - 1), 0x10uLL), vcvtd_n_f64_s32(*v32, 0x10uLL));
                ++v30;
                v29 = v6[13];
                v31 += 100;
              }

              while (v30 < *(v29 + 4));
            }
          }
        }

        else
        {
          fwrite("OIS meta-data section not found in frame meta-data.\n", 0x34uLL, 1uLL, v4);
        }

        v33 = v6[64];
        if (v33)
        {
          fprintf(v4, "vaMetaVersion: %d\n", *v33);
          fprintf(v4, "vaSampleCount: %d\n", *(v33 + 1));
          fprintf(v4, "efl: %f\n", v33[4591]);
          if ((v5 & 4) != 0 && *(v33 + 1))
          {
            v34 = 0;
            v35 = (v33 + 5);
            do
            {
              fprintf(v4, "vaSample: ts=0x%016llX  mode=%u Dt=%10.5f De=%10.5f adc=%d dac=%d ntc=%3.2f R=%3.3f coilTemp=%3.2f\n", *(v35 - 2), *(v35 - 8), *(v35 - 1), *v35, v35[2], v35[3], *(v35 + 2), *(v35 + 3), *(v35 + 4));
              ++v34;
              v35 += 18;
            }

            while (v34 < *(v33 + 1));
          }
        }

        else
        {
          fwrite("VA meta-data section not found in frame meta-data.\n", 0x33uLL, 1uLL, v4);
        }

        if ((v88 & 0x80) != 0)
        {
          v36 = v6[25];
          if (v36)
          {
            fprintf(v4, "apsMetaVersion: %d\n", *v36);
            fprintf(v4, "apsSampleCount: %d\n", *(v6[25] + 2));
            fprintf(v4, "startupCalStatus: %d\n", *(v6[25] + 77524));
            v37 = v6[25];
            if (*(v37 + 2))
            {
              v38 = 0;
              v39 = 152;
              do
              {
                v40 = v37 + v39;
                v50 = *(v37 + v39 - 13);
                v51 = *(v37 + v39);
                v48 = *(v37 + v39 - 14);
                fprintf(v4, "apsSample: ts=0x%016llX  Zt=%-10.4f  Ze=%-10.4f  aps_w=%-5d  aps_e=%-5d  apsTemperature=%-10.4f lensTemperature=%-10.4f dieTemperature=%-10.4f\n           aps_sp_pos_corr=%-10.4f  aps_sp_cur_corr=%-10.4f  Zcmd=%-10.4f  Zcmd_clamped=%-10.4f  Bz=%-5d  do=%-10.4f  di=%-10.7f  Ze_lin=%-10.4f  Ze_gcol=%-10.4f g=%-10.4f\n           aps_sp=%-10.4f aps_tc=%-10.4f  aps_tc_final=%-10.4f  aps_offset_est=%-10.4f  aps_self_afInt_corr=%-10.4f  aps_cross_afInt_corr=%-10.4f  Zt_clamped=%-10.4f  estZ_APS_Corr=%-10.4f aps_startup_offset_est=%-10.4f\n           oisz_s1=%-5d  oisz_s2=%-5d  oisz_delta=%-5d  oisz_pos_corr=%-10.4f  oisz_temp_corr=%-10.4f  oisz_zest=%-10.4f\n           oisz_gcol = %.2f  degradedAF = %d  eflTrackingMode = %d  power=0x%04X\n           dbg_key_0=%u dbg_val_0=%d dbg_key_1=%u dbg_val_1=%d dbg_key_2=%u dbg_val_2=%d dbg_key_3=%u dbg_val_3=%d\n", *(v37 + v39 - 148), vcvtd_n_f64_s32(*(v40 - 140), 8uLL), vcvtd_n_f64_s32(*(v40 - 136), 8uLL), *(v40 - 132), *(v40 - 130), vcvtd_n_f64_s32(*(v40 - 128), 8uLL), vcvtd_n_f64_s32(*(v40 - 126), 8uLL), vcvtd_n_f64_s32(*(v40 - 124), 8uLL), vcvtd_n_f64_s32(*(v40 - 120), 8uLL), vcvtd_n_f64_s32(*(v40 - 116), 8uLL), vcvtd_n_f64_s32(*(v40 - 112), 8uLL), vcvtd_n_f64_s32(*(v40 - 108), 8uLL), *(v40 - 104), vcvtd_n_f64_s32(*(v40 - 100), 8uLL), vcvtd_n_f64_s32(*(v40 - 96), 0x10uLL), vcvtd_n_f64_s32(*(v40 - 92), 8uLL), vcvtd_n_f64_s32(*(v40 - 88), 8uLL), vcvtd_n_f64_s32(*(v40 - 84), 8uLL), vcvtd_n_f64_s32(*(v40 - 80), 8uLL), vcvtd_n_f64_s32(*(v40 - 76), 8uLL), vcvtd_n_f64_s32(*(v40 - 72), 8uLL), vcvtd_n_f64_s32(*(v40 - 68), 8uLL), vcvtd_n_f64_s32(*(v40 - 64), 8uLL), vcvtd_n_f64_s32(*(v40 - 60), 8uLL), vcvtd_n_f64_s32(*(v40 - 56), 8uLL), vcvtd_n_f64_s32(*(v40 - 52), 8uLL), vcvtd_n_f64_s32(*(v40 - 48), 8uLL), *(v40 - 44), *(v40 - 42), *(v40 - 40), vcvtd_n_f64_s32(*(v40 - 36), 8uLL), vcvtd_n_f64_s32(*(v40 - 32), 8uLL), vcvtd_n_f64_s32(*(v40 - 28), 8uLL), vcvtd_n_f64_s32(*(v40 - 24), 8uLL), *(v40 - 20), *(v40 - 19), *(v40 - 18), *(v40 - 16), *(v40 - 12), *(v40 - 15), *(v40 - 8), v48, *(v40 - 4), v50, v51);
                ++v38;
                v37 = v6[25];
                v39 += 152;
              }

              while (v38 < *(v37 + 2));
            }
          }

          else
          {
            fwrite("APS meta-data section not found in frame meta-data.\n", 0x34uLL, 1uLL, v4);
          }
        }

        if ((v88 & 0x200) != 0 && v6[3])
        {
          fwrite("autofocus: afScores=", 0x14uLL, 1uLL, v4);
          for (j = 28; j != 156; j += 8)
          {
            fprintf(v4, " %llu ", *(v6[3] + j));
          }

          fputc(10, v4);
          fprintf(v4, "autofocus: AFStatsUpdated=%u focusingMethod=%u afFocusMoving=%u \n", *(v6[3] + 2722), *(v6[3] + 2736), *(v6[3] + 424));
        }

        v42 = v6[55];
        if (v42)
        {
          v9 = *v42 == 0;
          v43 = "on";
          if (v9)
          {
            v43 = "off";
          }

          fprintf(v4, "IsSIFROn: %s\n", v43);
        }

        else
        {
          fwrite("SIFR meta-data section not found in frame meta-data.\n", 0x35uLL, 1uLL, v4);
        }

        v3 = v87;
        if ((v88 & 0x800) != 0 && (v44 = v6[59]) != 0)
        {
          v84 = *(v44 + 284);
          v81 = (*(v44 + 272) * 0.0039062);
          v86 = *(v44 + 296);
          v85 = *(v44 + 292);
          v83 = *(v44 + 288);
          v82 = *(v44 + 276);
          v80 = *(v44 + 268);
          v79 = *(v44 + 267);
          v78 = *(v44 + 266);
          v75 = *(v44 + 264);
          v74 = *(v44 + 252);
          v73 = *(v44 + 251);
          v72 = *(v44 + 250);
          v69 = *(v44 + 248);
          v68 = *(v44 + 236);
          v3 = v87;
          v66 = *(v44 + 234);
          v67 = *(v44 + 235);
          v77 = *(v44 + 260);
          v76 = *(v44 + 256);
          v71 = *(v44 + 244);
          v70 = *(v44 + 240);
          v64 = *(v44 + 224);
          v65 = *(v44 + 228);
          v62 = *(v44 + 223);
          v63 = *(v44 + 232);
          v60 = *(v44 + 221);
          v61 = *(v44 + 222);
          v58 = *(v44 + 216);
          v59 = *(v44 + 220);
          v56 = *(v44 + 208);
          v57 = *(v44 + 212);
          v54 = *(v44 + 200);
          v55 = *(v44 + 204);
          v52 = *(v44 + 152);
          v53 = *(v44 + 168);
          v49 = *(v44 + 136);
          fprintf(v4, "AFASample: ts=0x%016llX  pdaf=%-5d  defocus=%-10.2f  cbafSNR=%-10.2f  depth=%-10.2f  zTgtLogical=%-10.2f  zTgtUm=%-10.2f  PFLErr=%-10.2f  PFLErrTmp= %-10.2f  PFLCorr=%-10.2f  converged=%-5d  lowError=%-5d  SplitPDEnable=%-5d depthConfidence=%-5d widowDetected=%-5d dataValid=%-5d zTargetUm=%-10.2f blobCorrection=%-10.2f fdrCorrection=%-10.2f Depth_LFAF=%.2f  zTgtLogical_LFAF=%.2f  zTgtUm_LFAF=%.2f  pdafFocusPos=%d  pdafFocusPosTarget=%.2f  zTgtDAC=%d  defocusScaling = %2f  defocusOffset = %.2f\n           tofFrameRate = %f  focusROIType=%d apeBeforeTrainingStatus=%d apeDuringTrainingStatus=%d apeTrainingOngoing=%d offsetDeltaEst=%.2f tempcoDeltaEst=%.2f\n            instantLFAFEnabled=%d PFLErrorUm_LFAF=%.2f leaderDefocusDAC=%d leaderPositionDAC=%d leaderROIType=%d leaderPDAFEnabled=%d leaderSPDEnabled=%d leaderAPEConverged=%d\n           apeFC_xsum=%.2f apeFC_ysum=%.2f apeFC_xxsum=%.2f  apeFC_xysum=%.2f  apeFC_yysum=%.2f   apeFC_zsum=%.2f  apeFC_xzsum=%.2f apeFC_yzsum=%.2f apeFC_nsamplesQuad1=%d  apeFC_nsamplesQuad2=%d  apeFC_nsamplesQuad3=%d  apeFC_nsamplesQuad4=%d  apeFC_nsamples=%d\n           masterPreviewCh=%d  recommendedCh=%d  recommendedChSec=%d  depthInfoUsed=%d  wideFocusTargetPosDac=%d  wideFocusDist=%.2f  wideDepth=%.2f  wideDepthValid=%d  wideFocusMethod=%d  wideFocusValid=%d  teleFocusTargetPosDac=%d  teleFocusDist=%.2f  teleDepth=%.2f  teleDepthValid=%d  teleFocusMethod=%d  teleFocusValid=%d  swideFocusTargetPosDac=%d  swideFocusDist=%.2f  swideDepth=%.2f  swideDepthValid=%d  swideFocusMethod=%d  swideFocusValid=%d  minFocusDistance=%.2f\n           dropEventTimeStamp=%llu  dropEventImpactType=%d  dropEventPeakAccelMag=%.5f  dropStatus=%u  dropEventDebugCounter=%d\n", *(v44 + 4), *(v44 + 44), *(v44 + 36), *(v44 + 40), *(v44 + 24), *(v44 + 16), *(v44 + 20), *(v44 + 68), *(v44 + 72), *(v44 + 76), *(v44 + 89), *(v44 + 88), *(v44 + 45), *(v44 + 13), *(v44 + 12), *(v44 + 1), *(v44 + 32), *(v44 + 80), *(v44 + 84), *(v44 + 104), *(v44 + 108), *(v44 + 112), *(v44 + 46), *(v44 + 48), *(v44 + 52), *(v44 + 56), *(v44 + 60), *(v44 + 28), *(v44 + 64), *(v44 + 92), *(v44 + 96), *(v44 + 100), *(v44 + 128), *(v44 + 132), *(v44 + 102), *(v44 + 116), *(v44 + 120), *(v44 + 122), *(v44 + 124), *(v44 + 125), *(v44 + 126), *(v44 + 127), *&v49, *(&v49 + 1), *&v52, *(&v52 + 1), *&v53, *(&v53 + 1), *(v44 + 184), *(v44 + 192), v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
        }

        else
        {
          fwrite("AFAssist Debug meta-data section not found in frame meta-data.\n", 0x3FuLL, 1uLL, v4);
        }

        if ((v88 & 0x1000) != 0 && v6[62])
        {
          fwrite("hist_ch0: ", 0xAuLL, 1uLL, v4);
          for (k = 0; k != 1024; k += 4)
          {
            fprintf(v4, " %llu", *(v6[62] + k));
          }

          fputc(10, v4);
          fwrite("hist_ch1: ", 0xAuLL, 1uLL, v4);
          do
          {
            fprintf(v4, " %llu", *(v6[62] + k));
            k += 4;
          }

          while (k != 2048);
          fputc(10, v4);
          fwrite("hist_ch2: ", 0xAuLL, 1uLL, v4);
          do
          {
            fprintf(v4, " %llu", *(v6[62] + k));
            k += 4;
          }

          while (k != 3072);
          fputc(10, v4);
        }
      }

      else
      {
        fwrite("frame: Dropped\n", 0xFuLL, 1uLL, v4);
      }

      fflush(v4);
      v46 = *(v3 + 16);
      if (v46)
      {
        H16ISP::H16ISPFrameMetadata::~H16ISPFrameMetadata(v46);
        MEMORY[0x22AA55B60]();
      }

      free(v3);
    }

    pthread_mutex_lock(&metadataFileWriterQueueMutex);
  }

  return pthread_mutex_unlock(&metadataFileWriterQueueMutex);
}

void *std::deque<MotionMetadataContext *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::allocator<__CVBuffer **>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<__CVBuffer **>::emplace_back<__CVBuffer **&>(a1, &v10);
}

void sub_2248FE87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ZF::RPC::Process_x1(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ZF::RPC::Process_x1();
  }

  if (!a2)
  {
    ZF::RPC::Process_x1();
  }

  bzero((a2 + 469832), 0x4424uLL);
  *(a2 + 469828) = *(a2 + 296);
  v4 = *(a2 + 4);
  if (v4 != 4)
  {
    if (v4 == 5)
    {
      ZF::RPC::Process_x1();
    }

    ZF::RPC::Process_x1();
  }

  if (*(a2 + 704))
  {
    v5 = *(a2 + 32);
    if (*(a2 + 34) * v5 >= 0x81)
    {
      ZF::RPC::Process_x1();
    }

    v6 = *(a2 + 264);
    bzero((a2 + 427332), 0x3800uLL);
    v7 = *(a2 + 250) - *(a2 + 246);
    if (v7)
    {
      v8 = 0;
      v9 = *(a2 + 268);
      v10 = *(a2 + 270);
      v11 = *(a2 + 260);
      v12 = *(a2 + 248) - *(a2 + 244);
      v13 = a1 + v6 + *(a2 + 246) * v11 + 2 * *(a2 + 244);
      v14 = a2 + 427332 + 112 * -v5;
      v15 = *(a2 + 724);
      do
      {
        if (v8)
        {
          v16 = 0;
        }

        else
        {
          v16 = v5;
        }

        v14 += 112 * v16;
        if (!v8)
        {
          v8 = v10;
        }

        if (v12 >= 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = v14 - 112;
          v20 = v12 + 1;
          do
          {
            if (v18)
            {
              v21 = 0;
            }

            else
            {
              v18 = v9;
              v21 = 112;
            }

            v19 += v21;
            v22 = *(v13 + v17);
            if (v22 != 0x3FFF)
            {
              v23 = v22 + v15;
              v24 = 32 - __clz(v23 ^ (v23 >> 31));
              if (v23 == v23 >> 31)
              {
                v24 = 0;
              }

              v25 = v24 ^ (v23 >> 31);
              if (v25 >= 6)
              {
                v26 = 6;
              }

              else
              {
                v26 = v25;
              }

              v27 = v26 + 7;
              if (v25 >= -7)
              {
                v28 = v27;
              }

              else
              {
                v28 = 0;
              }

              v29 = v22;
              v30 = v19 + 8 * v28;
              *v30 = *v30 + v29;
              ++*(v30 + 4);
            }

            --v18;
            --v20;
            v17 += 2;
          }

          while (v20 > 1);
        }

        v13 += v11;
        --v8;
        --v7;
      }

      while (v7);
    }
  }
}

unsigned int *ZF::RPC::anonymous namespace::ShiftMapPostProcess(unsigned int *result)
{
  v63 = *MEMORY[0x277D85DE8];
  v1 = *(result + 76);
  v2 = *(result + 77);
  v3 = *(result + 183);
  v4 = *(result + 184);
  v5 = fabsf(v1 * v2);
  v6 = v3 * v5;
  v7 = v4 * v5;
  if ((v4 * v5) < (v3 * v5))
  {
  }

  v8 = result;
  v48 = *(result + 17);
  if (*(result + 17))
  {
    v9 = 0;
    result = &v58;
    v50 = *(v8 + 32);
    v11 = v7 == 0.0 && v6 == 0.0;
    v49 = v11;
    v12 = v7 - v6;
    while (!v50)
    {
LABEL_67:
      if (++v9 == v48)
      {
        return result;
      }
    }

    v13 = 0;
    v14 = *(v8 + 300);
    v15 = *(v8 + 716);
    while (1)
    {
      v16 = 0;
      do
      {
        v56 = 0;
        v51 = v16;
        if (v16 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 1;
          v21 = -255.0;
          do
          {
            v22 = 0;
            v52 = v20;
            v23 = 1;
            do
            {
              v24 = v23;
              v23 = 0;
              if (v21 < (v2 * (v1 * (*(&v56 + 1) - v14))) && v56 >= v15)
              {
                v21 = v2 * (v1 * (*(&v56 + 1) - v14));
                v19 = v56;
                v18 = v56 >= v15;
              }

              v22 = 1;
            }

            while ((v24 & 1) != 0);
            v20 = 0;
            v17 = 1;
          }

          while ((v52 & 1) != 0);
        }

        else
        {
          if (v16 == 2)
          {
            v25 = -1;
          }

          else
          {
            v25 = 0;
          }

          v21 = v2 * (v1 * (*(&v56 + 1) - v14));
          v19 = v56;
          v18 = v56 >= v15;
        }

        *(&v60 + v51) = v21;
        *(&v57 + v51) = v19;
        *(&v53 + v51) = v18;
        v16 = v51 + 1;
      }

      while (v51 != 2);
      v26 = v62;
      v27 = v59;
      v28 = v55;
      if (v49)
      {
        result = &v58;
        if (*(v8 + 730))
        {
          v29 = 0;
          v30 = 2;
          v31 = &v60;
          v32 = &v57;
          v33 = &v53;
          v34 = 1;
          do
          {
            v35 = v34;
            if (*v33 == 1 && v26 < *v31)
            {
              v27 = *v32;
              v26 = *v31;
              v30 = v29;
              LOBYTE(v28) = *v33;
            }

            v34 = 0;
            v29 = 1;
            v33 = &v54;
            v32 = &v58;
            v31 = &v61;
          }

          while ((v35 & 1) != 0);
        }

        else
        {
          v30 = 2;
        }

        goto LABEL_54;
      }

      v30 = 2;
      if (v12 <= 0.0 || !v54)
      {
        goto LABEL_44;
      }

      v36 = v61;
      if (v55)
      {
        v37 = v61 - v62;
        if ((v61 - v62) <= v6)
        {
          v30 = 2;
LABEL_44:
          v36 = v62;
          goto LABEL_45;
        }

        v38 = 0.0;
        if (v37 <= v7)
        {
          v38 = (v7 - v37) / v12;
        }

        v36 = (v61 * (1.0 - v38)) + (v38 * v62);
        v27 = (((1.0 - v38) * v58) + (v38 * v59));
        v28 = 1;
        v30 = 3;
      }

      else
      {
        v27 = v58;
        v30 = v54;
        v28 = v54;
      }

LABEL_45:
      if (v12 > 0.0 && v53)
      {
        v26 = v60;
        if (!v28)
        {
          v27 = v57;
          v30 = v53;
          LOBYTE(v28) = v53;
          goto LABEL_54;
        }

        v39 = v60 - v36;
        if ((v60 - v36) > v6)
        {
          v40 = 0.0;
          if (v39 <= v7)
          {
            v40 = (v7 - v39) / v12;
          }

          v26 = (v60 * (1.0 - v40)) + (v40 * v36);
          v27 = (((1.0 - v40) * v57) + (v40 * v27));
          LOBYTE(v28) = 1;
          v30 = 3;
          goto LABEL_54;
        }
      }

      v26 = v36;
LABEL_54:
      v41 = v8 + 480072 + 52 * (v9 * v50 + v13);
      if (v28)
      {
        v42 = 0xFFFF;
      }

      else
      {
        v42 = 0;
      }

      if (v28)
      {
        v43 = 0;
      }

      else
      {
        v43 = 8;
      }

      *v41 = v27;
      *(v41 + 4) = v42;
      *(v41 + 8) = v26;
      *(v41 + 12) = 0;
      *(v41 + 20) = (v43 | (32 * v28)) + (v30 << 6);
      v44 = v53;
      if (v53)
      {
        v45 = 0xFFFF;
      }

      else
      {
        v45 = 0;
      }

      v46 = v60;
      if (v53)
      {
        v47 = 0;
      }

      else
      {
        v47 = 8;
      }

      *(v41 + 24) = v57;
      *(v41 + 28) = v45;
      *(v41 + 32) = v46;
      *(v41 + 36) = 0;
      *(v41 + 44) = v47 | (32 * v44);
      if (++v13 == v50)
      {
        goto LABEL_67;
      }
    }
  }

  return result;
}

uint64_t ZF::RPC::anonymous namespace::WeightMapProcess(uint64_t result)
{
  if (*(result + 744))
  {
    v1 = *(result + 745);
    v2 = *(result + 746) == v1 ? 1 : *(result + 746) - v1;
    v3 = *(result + 34);
    if (*(result + 34))
    {
      v4 = 0;
      v5 = *(result + 284);
      v6 = result + 480072;
      v7 = *(result + 292);
      v8 = *(result + 274);
      v35 = *(result + 280);
      v9 = *(result + 32);
      v10 = (((v2 + ((v2 & 0x8000) >> 15)) >> 1) + 0x10000) / v2;
      do
      {
        v11 = v5 >> 8;
        v12 = v7 + v5;
        v13 = (v7 + v5 + 255) >> 8;
        v14 = (v5 >> 8) & ~(v5 >> 31);
        if (v11 > v8)
        {
          v14 = v8;
        }

        v15 = v13 & ~((v12 + 255) >> 31);
        if (v13 > v8)
        {
          v15 = v8;
        }

        v16 = v15 - v14;
        if (v15 < v14)
        {
          v16 = 0;
        }

        if (v9)
        {
          v17 = 0;
          v18 = *(result + 288);
          v19 = *(result + 272);
          v20 = *(result + 276);
          v21 = v35;
          do
          {
            v22 = 0;
            v23 = v21 >> 8;
            v24 = v18 + v21;
            v25 = (v18 + v21 + 255) >> 8;
            v26 = (v21 >> 8) & ~(v21 >> 31);
            if (v23 > v19)
            {
              v26 = v19;
            }

            v27 = v25 & ~((v24 + 255) >> 31);
            if (v25 > v19)
            {
              v27 = v19;
            }

            LODWORD(v28) = v27 - v26;
            if (v27 >= v26)
            {
              v28 = v28;
            }

            else
            {
              v28 = 0;
            }

            if (v15 > v14)
            {
              v22 = 0;
              v29 = result + 747 + v14 * v20 + v26;
              v30 = v16;
              do
              {
                if (v27 > v26)
                {
                  v31 = 0;
                  do
                  {
                    v32 = *(v29 + v31);
                    if (v32 <= v1)
                    {
                      v32 = v1;
                    }

                    v22 += v32;
                    ++v31;
                  }

                  while (v31 < v28);
                }

                v29 += v20;
                v33 = __OFSUB__(v30--, 1);
              }

              while (!((v30 < 0) ^ v33 | (v30 == 0)));
            }

            if (v28 * v16)
            {
              v22 /= v28 * v16;
            }

            v34 = (((v22 - v1) * v10) >> 8) & ~(((v22 - v1) * v10) >> 31);
            if (v34 >= 255)
            {
              LOBYTE(v34) = -1;
            }

            *(v6 + 48) = v34;
            v6 += 52;
            ++v17;
            v21 = v24;
          }

          while (v17 != v9);
        }

        ++v4;
        v5 = v12;
      }

      while (v4 != v3);
    }
  }

  return result;
}

void ZF::RPC::Process_x2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    ZF::RPC::Process_x2();
  }

  if (!a2)
  {
    ZF::RPC::Process_x2();
  }

  if (!a3)
  {
    ZF::RPC::Process_x2();
  }

  bzero((a3 + 469832), 0x4424uLL);
  *(a3 + 469828) = *(a3 + 296);
  v6 = *(a3 + 4);
  if (v6 != 5)
  {
    if (v6 == 4)
    {
      ZF::RPC::Process_x2();
    }

    ZF::RPC::Process_x2();
  }

  if (*(a3 + 704) && *(a3 + 708))
  {
    v7 = *(a3 + 32);
    if (*(a3 + 34) * v7 >= 0x81)
    {
      ZF::RPC::Process_x2();
    }

    bzero((a3 + 427332), 0x3800uLL);
    v9 = *(a3 + 246);
    v10 = *(a3 + 250) - v9;
    if (v10)
    {
      v11 = 0;
      v12 = *(a3 + 268);
      v13 = *(a3 + 270);
      v14 = *(a3 + 244);
      v15 = *(a3 + 248) - v14;
      v16 = *(a3 + 724);
      LOWORD(v8) = *(a3 + 726);
      v17 = v8;
      v18 = *(a3 + 740);
      v19 = a3 + 427332 + 112 * -v7;
      v20 = 2 * *(a3 + 260) * (*(a3 + 254) + v9) + 2 * (*(a3 + 252) + v14);
      v21 = a2 + v20;
      v22 = 2 * *(a3 + 260);
      v23 = a1 + v20;
      do
      {
        if (v11)
        {
          v24 = 0;
        }

        else
        {
          v24 = v7;
        }

        v19 += 112 * v24;
        if (!v11)
        {
          v11 = v13;
        }

        if (v15 >= 1)
        {
          v25 = 0;
          v26 = 0;
          v27 = v19 - 112;
          v28 = v15 + 1;
          do
          {
            if (v26)
            {
              v29 = 0;
            }

            else
            {
              v26 = v12;
              v29 = 112;
            }

            v27 += v29;
            _H4 = *(v21 + v25);
            __asm { FCVT            S4, H4 }

            if (v18 >= _S4)
            {
              _H4 = *(v23 + v25);
              __asm { FCVT            S4, H4 }

              v38 = (((v16 + _S4) * v17) + 0.0);
              v39 = 32 - __clz(v38 ^ (v38 >> 31));
              if (v38 >> 31 == v38)
              {
                v40 = 0;
              }

              else
              {
                v40 = v39;
              }

              v41 = v40 ^ (v38 >> 31);
              if (v41 >= 6)
              {
                v42 = 6;
              }

              else
              {
                v42 = v41;
              }

              v43 = v42 + 7;
              if (v41 >= -7)
              {
                v44 = v43;
              }

              else
              {
                v44 = 0;
              }

              v45 = v27 + 8 * v44;
              *v45 = *v45 + _S4;
              ++*(v45 + 4);
            }

            --v26;
            --v28;
            v25 += 2;
          }

          while (v28 > 1);
        }

        --v11;
        v21 += v22;
        v23 += v22;
        --v10;
      }

      while (v10);
    }
  }
}

uint64_t ZF::RPC::anonymous namespace::ShiftMapTileLevelProcess(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7, float *a8, unsigned int *a9)
{
  v43 = *MEMORY[0x277D85DE8];
  v9 = *(result + 724);
  v10 = vcvts_n_f32_u32(*(result + 726), 0xFuLL);
  v11 = *(result + 708);
  if (v11)
  {
    v10 = -1.0;
  }

  v12 = 0.0;
  if (v11)
  {
    v9 = 0.0;
  }

  v13 = (100 - *(result + 720)) / 200.0;
  memset(v42, 0, sizeof(v42));
  if (a5 <= a7)
  {
    v14 = a7 + a3;
    v15 = a5 + a3;
    v16 = a4 + a2;
    v17 = a6 + a2;
    if (a6 + a2 <= a4 + a2)
    {
      v17 = a4 + a2;
    }

    if (v14 <= v15)
    {
      v14 = a5 + a3;
    }

    do
    {
      if ((v15 & 0x80000000) == 0 && v15 < *(result + 34) && a4 <= a6)
      {
        v19 = v16;
        do
        {
          if ((v19 & 0x80000000) == 0)
          {
            v20 = *(result + 32);
            if (v19 < v20)
            {
              v21 = (result + 427336 + 112 * (v19 + v15 * v20));
              v22 = 14;
              v23 = v42 + 1;
              do
              {
                *(v23 - 1) = *(v21 - 1) + *(v23 - 1);
                v24 = *v21;
                v21 += 2;
                *v23 += LODWORD(v24);
                v23 += 2;
                --v22;
              }

              while (v22);
            }
          }

          v25 = v19++ == v17;
        }

        while (!v25);
      }

      v25 = v15++ == v14;
    }

    while (!v25);
    v12 = DWORD1(v42[0]);
  }

  v26 = 1.0 - v13;
  v40[0] = v12;
  v27 = 1;
  v28 = 12;
  do
  {
    v12 = v12 + *(v42 + v28);
    v40[v27++] = v12;
    v28 += 8;
  }

  while (v27 != 14);
  if (v41 != 0.0)
  {
    for (i = 0; i != 14; ++i)
    {
      v40[i] = v40[i] / v41;
    }
  }

  v30 = 0;
  v31 = 0;
  v32 = 13;
  do
  {
    v33 = v40[v30];
    if (v33 <= v13 && v40[v30 + 1] > v13)
    {
      v31 = v30 + 1;
    }

    if (v33 < v26 && v40[v30 + 1] >= v26)
    {
      v32 = v30 + 1;
    }

    ++v30;
  }

  while (v30 != 13);
  if (v31 > v32)
  {
    v34 = 0;
LABEL_45:
    v39 = 0.0;
    goto LABEL_46;
  }

  v34 = 0;
  v35 = v32 - v31 + 1;
  v36 = ((v42 + 8 * v31) | 4);
  v37 = 0.0;
  do
  {
    v37 = v37 + *(v36 - 1);
    v38 = *v36;
    v36 += 2;
    v34 += LODWORD(v38);
    --v35;
  }

  while (v35);
  if (!v34)
  {
    goto LABEL_45;
  }

  v39 = -((v9 + (v37 / v34)) * v10);
LABEL_46:
  *a8 = v39;
  *a9 = v34;
  return result;
}

void H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(H16ISP::H16ISPFilterGraphNode *this)
{
  *this = &unk_283814208;
  H16ISP::H16ISPFilterGraphNode::Deactivate(this);
  std::deque<__CVBuffer *>::~deque[abi:ne200100](this + 3);
}

{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISP::H16ISPFilterGraphNode::Deactivate(H16ISP::H16ISPFilterGraphNode *this)
{
  kdebug_trace();
  if (*(this + 16) == 1)
  {
    *(this + 16) = 0;
    v2 = *(this + 1);
    if (v2)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZN6H16ISP21H16ISPFilterGraphNode10DeactivateEv_block_invoke;
      block[3] = &__block_descriptor_tmp_2_1;
      block[4] = this;
      dispatch_sync(v2, block);
      v3 = *(this + 1);
      if (v3)
      {
        dispatch_release(v3);
        *(this + 1) = 0;
      }
    }
  }

  kdebug_trace();
  return 0;
}

__n128 H16ISP::H16ISPFilterGraphNode::RemoveFrame(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 20);
  if (v3)
  {
    v4 = (a2 + 24);
    v5 = *(a2 + 20);
    while (v4->n128_u32[2] != a3)
    {
      ++v4;
      if (!--v5)
      {
        return result;
      }
    }

    v6 = v3 - 1;
    *(a2 + 20) = v6;
    if (v5 != 1)
    {
      result = *(a2 + 24 + 16 * v6);
      *v4 = result;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPFilterGraphNode::AddFrame(int a1, uint64_t a2, int a3, int a4, CVPixelBufferRef texture)
{
  v5 = *(a2 + 20);
  if (v5)
  {
    result = 3758097084;
    if (v5 != 16)
    {
      v7 = (a2 + 32);
      v8 = *(a2 + 20);
      while (1)
      {
        v9 = *v7;
        v7 += 4;
        if (v9 == a3)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_6;
        }
      }
    }
  }

  else
  {
LABEL_6:
    v10 = a2 + 16 * v5;
    *(v10 + 24) = texture;
    *(v10 + 32) = a3;
    *(v10 + 36) = a4;
    *(a2 + 20) = v5 + 1;
    CVPixelBufferRetain(texture);
    return 0;
  }

  return result;
}

uint64_t H16ISP::H16ISPParallelDispatchNode::onMessageProcessing(H16ISP::H16ISPParallelDispatchNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  pthread_mutex_lock((a2 + 8));
  v4 = a2 + 1112;
  v5 = *(a2 + 140);
  if (v5 == (a2 + 1112))
  {
LABEL_4:
    v7 = this + 80;
    if (*(this + 11) != (this + 80))
    {
      operator new();
    }

    v8 = 3758097130;
    pthread_mutex_unlock((a2 + 8));
    for (i = *(this + 11); i != v7; i = *(i + 8))
    {
      (*(**(i + 16) + 32))(*(i + 16), a2);
    }
  }

  else
  {
    while (1)
    {
      v6 = v5[1];
      if (v5[2] == this)
      {
        break;
      }

      v5 = v5[1];
      if (v6 == v4)
      {
        goto LABEL_4;
      }
    }

    v10 = *v5;
    *(v10 + 8) = v6;
    *v6 = v10;
    --*(a2 + 141);
    operator delete(v5);
    v11 = *(a2 + 140);
    if (v11 == v4)
    {
LABEL_13:
      v8 = 0;
    }

    else
    {
      v8 = 3758097130;
      while (*(v11 + 16) != this)
      {
        v11 = *(v11 + 8);
        if (v11 == v4)
        {
          goto LABEL_13;
        }
      }
    }

    pthread_mutex_unlock((a2 + 8));
  }

  return v8;
}

double H16ISP::H16ISPParallelDispatchNode::H16ISPParallelDispatchNode(H16ISP::H16ISPParallelDispatchNode *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 16) = 0;
  *this = &unk_283814268;
  *(this + 1) = 0;
  *(this + 9) = 0xA00000000;
  *(this + 10) = this + 80;
  *(this + 11) = this + 80;
  *(this + 12) = 0;
  return result;
}

{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 16) = 0;
  *this = &unk_283814268;
  *(this + 1) = 0;
  *(this + 9) = 0xA00000000;
  *(this + 10) = this + 80;
  *(this + 11) = this + 80;
  *(this + 12) = 0;
  return result;
}

void H16ISP::H16ISPParallelDispatchNode::~H16ISPParallelDispatchNode(H16ISP::H16ISPParallelDispatchNode *this)
{
  *this = &unk_283814268;
  std::__list_imp<H16ISP::H16ISPFilterGraphNode *>::clear(this + 10);

  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);
}

{
  *this = &unk_283814268;
  std::__list_imp<H16ISP::H16ISPFilterGraphNode *>::clear(this + 10);

  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);
}

{
  *this = &unk_283814268;
  std::__list_imp<H16ISP::H16ISPFilterGraphNode *>::clear(this + 10);
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISP::H16ISPExclaveGraphNode::H16ISPExclaveGraphNode(uint64_t a1, int a2, H16ISP::H16ISPDevice *this, int a4, int a5)
{
  v19 = *MEMORY[0x277D85DE8];
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 76) = a2;
  *(a1 + 16) = 0;
  *a1 = &unk_2838142C8;
  *(a1 + 8) = 0;
  *(a1 + 80) = this;
  *(a1 + 88) = a4;
  *(a1 + 92) = a5;
  if (H16ISP::H16ISPDevice::enabledExclaveDebug(this))
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = "H16ISPExclaveGraphNode";
      v13 = 1024;
      v14 = a4;
      v15 = 1024;
      v16 = a2;
      v17 = 1024;
      v18 = a5;
      _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEFAULT, "%s - creating graph node channel=%u type=%d ektype=%d\n", &v11, 0x1Eu);
    }
  }

  return a1;
}

void H16ISP::H16ISPExclaveGraphNode::GetModuleParams(H16ISP::H16ISPDevice **this@<X0>, H16ISPModuleParams *a2@<X8>)
{
  v2 = (this + 11);
  if (H16ISP::H16ISPDevice::ISP_GetModuleParams(this[10], *(this + 22), a2))
  {
    v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPExclaveGraphNode::GetModuleParams(v2, v3);
    }
  }
}

void H16ISP::H16ISPExclaveGraphNode::~H16ISPExclaveGraphNode(H16ISP::H16ISPExclaveGraphNode *this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

void GMC_RansacFitFundMatrix(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  Matrix<double>::Matrix(v20, 3, *(a1 + 20));
  v20[0] = &unk_283812E40;
  Matrix<double>::Matrix(v19, 3, *(a2 + 20));
  v18 = 0;
  v19[0] = &unk_283812E40;
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  Algo::Normalize2DPts(a1, v20, v17);
  Algo::Normalize2DPts(a2, v19, v15);
  Matrix<unsigned int>::Matrix(&v14, 1, *(a1 + 20));
  v14 = &unk_283814350;
  v13 = 0;
  if ((a4 & 1) == 0)
  {
    v9 = *(a5 + 20) * *(a5 + 16);
    if (v9 >= 1)
    {
      v10 = *(a5 + 8);
      v11 = v10 + v9;
      if (v11 <= v10 + 1)
      {
        v11 = v10 + 1;
      }

      memset(v10, 1, v11 - v10);
    }
  }

  Matrix<BOOL>::Matrix(v12, a5, 0, -1);
}

void sub_224900510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  Matrix<double>::~Matrix(&a49);
  Matrix<unsigned int>::~Matrix(&a53);
  Matrix<unsigned int>::~Matrix(&a62);
  Matrix<unsigned int>::~Matrix(&a71);
  Matrix<double>::~Matrix(v71 - 168);
  Matrix<double>::~Matrix(v71 - 136);
  _Unwind_Resume(a1);
}

uint64_t CopyFirstNCols<MatrixNxPts<3u,double>>(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *(result + 20);
    do
    {
      if (a3)
      {
        for (i = 0; i != a3; *(*(a4 + 8) + 8 * (v5 * v9) + 8 * i++) = *(*(result + 8) + 8 * v8 + 8 * v6 * v5))
        {
          v8 = *(*(a2 + 8) + 4 * i);
          if (v8 >= v6)
          {
            MatrixNxPts<3u,double>::CloneColumn();
          }

          if (v5 < *(a4 + 16))
          {
            v9 = *(a4 + 20);
            if (i < v9)
            {
              continue;
            }
          }

          GMC_Homography();
        }
      }

      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t CopyFirstNCols<MatrixNxPts<1u,BOOL>>(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *(result + 20);
    do
    {
      if (a3)
      {
        for (i = 0; i != a3; *(*(a4 + 8) + (v5 * v9) + i++) = *(*(result + 8) + v8 + v6 * v5))
        {
          v8 = *(*(a2 + 8) + 4 * i);
          if (v8 >= v6)
          {
            MatrixNxPts<3u,double>::CloneColumn();
          }

          if (v5 < *(a4 + 16))
          {
            v9 = *(a4 + 20);
            if (i < v9)
            {
              continue;
            }
          }

          GMC_Homography();
        }
      }

      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t CopyFirstNCols<MatrixNxPts<1u,unsigned int>>(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      if (a3)
      {
        for (j = 0; j != a3; *(*(a4 + 8) + 4 * i * v9 + 4 * j++) = *(*(result + 8) + 4 * v7 + 4 * v8 * i))
        {
          if (i >= *(result + 16) || (v7 = *(*(a2 + 8) + 4 * j), v8 = *(result + 20), v7 >= v8))
          {
            MatrixNxPts<3u,double>::CloneColumn();
          }

          if (*(a4 + 16) > i)
          {
            v9 = *(a4 + 20);
            if (j < v9)
            {
              continue;
            }
          }

          GMC_Homography();
        }

        v4 = *(result + 16);
      }
    }
  }

  return result;
}

uint64_t MatrixNxPts<3u,double>::CopyCols(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 20);
  v4 = *(a3 + 20);
  if (v3 >= v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if (v4)
      {
        v8 = *(a2 + 20);
        if (v6 < v7)
        {
          v9 = 0;
          v10 = 8 * v5;
          while (1)
          {
            v11 = *(*(a3 + 8) + v9);
            if (v11 >= v8)
            {
              break;
            }

            if (v6 >= *(result + 16))
            {
              GMC_Homography();
            }

            v9 += 4;
            *(*(result + 8) + v10) = *(*(a2 + 8) + 8 * v11 + 8 * v8 * v6);
            v10 += 8;
            if (4 * v4 == v9)
            {
              goto LABEL_9;
            }
          }
        }

        MatrixNxPts<3u,double>::CloneColumn();
      }

LABEL_9:
      ++v6;
      v5 += v3;
    }

    while (v6 != 3);
  }

  return result;
}

void MatrixNxPts<1u,unsigned int>::~MatrixNxPts(uint64_t a1)
{
  Matrix<unsigned int>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

void Matrix<BOOL>::Matrix(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_283812CF0;
  v4 = *(a2 + 20);
  v5 = *(a2 + 16) - a3;
  if (a4 != -1)
  {
    v5 = a4;
  }

  v6 = *(a2 + 8) + (v4 * a3);
  v7 = &unk_283812CF0;
  v8 = v6;
  v9 = v5;
  v10 = v4;
  v11 = 0;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  operator new[]();
}

void MatrixNxPts<1u,BOOL>::~MatrixNxPts(uint64_t a1)
{
  Matrix<BOOL>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

uint64_t Matrix<BOOL>::Matrix(uint64_t result, int a2, int a3)
{
  *result = &unk_283812CF0;
  if (a3 * a2)
  {
    operator new[]();
  }

  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = 0;
  return result;
}

uint64_t GMC_Controller(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v14 = 0;
  v15 = &v89 + 1;
  v16 = *(a5 + 72) / *(a5 + 80);
  *(a7 + 96) = v16;
  v93 = 0;
  v92 = 0u;
  v91 = 0u;
  v89 = 0u;
  v90 = 0u;
  v17 = vdupq_n_s64(2uLL);
  v18 = vdupq_n_s64(3uLL);
  do
  {
    v19 = v15;
    v20 = 4;
    v21 = xmmword_2249B9820;
    do
    {
      if (vmovn_s64(vcgtq_u64(v18, v21)).u8[0])
      {
        if (v14 + v20 == 4)
        {
          v22 = 1.0;
        }

        else
        {
          v22 = 0.0;
        }

        *(v19 - 1) = v22;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), *&v21)).i32[1])
      {
        if (v14 + v20 == 5)
        {
          v23 = 1.0;
        }

        else
        {
          v23 = 0.0;
        }

        *v19 = v23;
      }

      v21 = vaddq_s64(v21, v17);
      v19 += 2;
      v20 -= 2;
    }

    while (v20);
    ++v14;
    v15 += 3;
  }

  while (v14 != 3);
  v24 = 0;
  *(a7 + 64) = v93;
  v25 = v92;
  *(a7 + 32) = v91;
  *(a7 + 48) = v25;
  v26 = v90;
  *a7 = v89;
  *(a7 + 16) = v26;
  *&v26 = *(a5 + 16);
  *(a8 + 88) = v16;
  *(a8 + 96) = v26;
  *(a8 + 256) = 0;
  *(a8 + 264) = 0;
  *(a8 + 248) = 0;
  do
  {
    *(a8 + v24 + 104) = *(a7 + v24);
    v24 += 8;
  }

  while (v24 != 72);
  v27 = GMC_Verbose;
  if (GMC_Verbose)
  {
    printf("Num of points: %d\n", *(a1 + 20));
    v27 = GMC_Verbose;
  }

  v28 = *(a1 + 20);
  *(a8 + 40) = v28;
  v29 = *(a5 + 544);
  v30 = 0.0;
  if (v28 >= v29)
  {
    v30 = 1.0;
  }

  *(a8 + 400) = v30;
  if (v27)
  {
    printf("outStats->tests.isEnoughInPoints = %lf\n", v30);
    v28 = *(a1 + 20);
    v29 = *(a5 + 544);
  }

  if (v28 < v29 && a6 == 0)
  {
    return 4294967294;
  }

  v32 = *(a5 + 520);
  v33 = *(a5 + 532) + v32;
  if (v33 > v28)
  {
    if (GMC_Verbose == 1)
    {
      printf("Required points: %d+%d, available points: %d. Only these will be used.\n", v32, *(a5 + 532), v28);
      v33 = *(a1 + 20);
    }

    else
    {
      v33 = v28;
    }
  }

  Matrix<double>::Matrix(&v85, 2, v33);
  v85 = &unk_283813CF8;
  Matrix<double>::Matrix(&v81, 2, v33);
  v35 = *(a1 + 20);
  v81 = &unk_283813CF8;
  v36 = v35 / v33;
  if (v36 <= 1.0)
  {
    Matrix<double>::Resize(&v85, *(a1 + 16), v35);
    memcpy(v86, *(a1 + 8), 8 * v87 * v88);
    Matrix<double>::Resize(&v81, *(a2 + 16), *(a2 + 20));
    memcpy(v82, *(a2 + 8), 8 * v83 * v84);
  }

  else if (v33)
  {
    v37 = *(a1 + 16);
    if (v37)
    {
      v38 = 0;
      v39 = *(a2 + 16);
      v40 = *(a2 + 20);
      v51 = v37 >= 2;
      v41 = v87;
      v42 = v88;
      v44 = !v51 || v87 == 1;
      v45 = v83;
      v46 = v84;
      v48 = v39 == 1 || v83 == 1;
      while (1)
      {
        v49 = (v36 * v38);
        v50 = v35 <= v49 || v41 == 0;
        v51 = v50 || v38 >= v42;
        if (v51)
        {
          break;
        }

        *(v86 + v38) = *(*(a1 + 8) + 8 * v49);
        if (v44)
        {
          break;
        }

        *(v86 + v42 + v38) = *(*(a1 + 8) + 8 * v49 + 8 * v35);
        if (!v39)
        {
          break;
        }

        v52 = v40 <= v49 || v45 == 0;
        if (v52 || v38 >= v46)
        {
          break;
        }

        *(v82 + v38) = *(*(a2 + 8) + 8 * v49);
        if (v48)
        {
          break;
        }

        *(v82 + v46 + v38++) = *(*(a2 + 8) + 8 * v49 + 8 * v40);
        if (v33 == v38)
        {
          goto LABEL_67;
        }
      }
    }

    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

LABEL_67:
  Matrix<double>::Matrix(v78, 3, v88);
  v78[0] = &unk_283812E40;
  Matrix<double>::Matrix(v75, 3, v88);
  v75[0] = &unk_283812E40;
  if (GMC_Undistort(&v85, &v81, a5, v78, v75))
  {
    v64 = 166;
    goto LABEL_95;
  }

  v54 = v80;
  if (v80)
  {
    if (v79 >= 3)
    {
      v55 = 0;
      v56 = v76;
      v57 = v77;
      v58 = 16 * v77;
      while (1)
      {
        *(v78[1] + 8 * (2 * v54) + 8 * v55) = 0x3FF0000000000000;
        if (v56 < 3 || v55 >= v57)
        {
          break;
        }

        *(v75[1] + v58 + 8 * v55++) = 0x3FF0000000000000;
        if (v54 == v55)
        {
          goto LABEL_74;
        }
      }
    }

    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

LABEL_74:
  if ((*(a5 + 529) & 1) != 0 && GMC_Homography(v78, v75, a5))
  {
    v64 = 182;
LABEL_95:
    __assert_rtn("GMC_Controller", "GMC_Controller.cpp", v64, "status == 0");
  }

  v74 = 0.0;
  v59 = GMC_SpatialCoverageTest(v78, a5, &v74);
  v60 = v74;
  *a8 = v74;
  if (GMC_Verbose == 1)
  {
    printf("GMC_SpatialCoverageTest, coverage: %lf\n", v60);
  }

  *(a8 + 384) = v59;
  if ((v59 | a6) == 1)
  {
    if (!(*(a4 + 20) * *(a4 + 16)))
    {
      __assert_rtn("operator()", "Matrix.hpp", 131, "index < m_rows * m_cols");
    }

    v61 = **(a4 + 8);
    *&v73 = -1.0;
    Matrix<BOOL>::Matrix(v72, 1, v80);
    v72[0] = &unk_283814388;
    v71 = 0;
    if (v61 >= 0.0)
    {
      Matrix<double>::Matrix(v70, a4, 0, -1);
    }

    v62 = *&v73;
    *(a8 + 16) = *&v73;
    if (GMC_Verbose == 1)
    {
      printf("GMC_FaceCoverageTest, coverage: %lf, num points: %d\n", v62, v71);
    }

    *(a8 + 392) = 1u;
    if ((a6 | 1) == 1)
    {
      Matrix<double>::Matrix(v69, 3, *(a5 + 532));
      v69[0] = &unk_283812E40;
      Matrix<double>::Matrix(v68, 3, *(a5 + 532));
      v68[0] = &unk_283812E40;
      Matrix<double>::Matrix(v67, 3, v80 - *(a5 + 532));
      v67[0] = &unk_283812E40;
      Matrix<double>::Matrix(v66, 3, v77 - *(a5 + 532));
      v66[0] = &unk_283812E40;
      Matrix<BOOL>::Matrix(v65, 1, v80 - *(a5 + 532));
      v65[0] = &unk_283814388;
      if (!GMC_ExtractTestSamples(v78, v75, *(a5 + 532), v61 >= 0.0, v72, v67, v66, v69, v68, v65))
      {
        calcProjectionDists(v69, v68, a5);
      }

      __assert_rtn("GMC_Controller", "GMC_Controller.cpp", 250, "status == 0");
    }

    v34 = 4294967284;
    Matrix<BOOL>::~Matrix(v72);
  }

  else
  {
    v34 = 0xFFFFFFFFLL;
  }

  Matrix<double>::~Matrix(v75);
  Matrix<double>::~Matrix(v78);
  Matrix<double>::~Matrix(&v81);
  Matrix<double>::~Matrix(&v85);
  return v34;
}

void sub_224902638(_Unwind_Exception *a1)
{
  Matrix<double>::~Matrix(&STACK[0x220]);
  Matrix<unsigned int>::~Matrix(&STACK[0x240]);
  Matrix<double>::~Matrix(&STACK[0x260]);
  Matrix<double>::~Matrix(&STACK[0x280]);
  Matrix<double>::~Matrix(&STACK[0x2A0]);
  Matrix<unsigned int>::~Matrix(&STACK[0x320]);
  Matrix<double>::~Matrix(&STACK[0x340]);
  Matrix<BOOL>::~Matrix(&STACK[0x388]);
  Matrix<double>::~Matrix(&STACK[0x3A8]);
  Matrix<double>::~Matrix(&STACK[0x3C8]);
  Matrix<double>::~Matrix(&STACK[0x3E8]);
  Matrix<double>::~Matrix(&STACK[0x408]);
  Matrix<BOOL>::~Matrix(&STACK[0x450]);
  Matrix<double>::~Matrix(&STACK[0x480]);
  Matrix<double>::~Matrix(&STACK[0x4A0]);
  Matrix<double>::~Matrix(v1 - 256);
  Matrix<double>::~Matrix(v1 - 224);
  _Unwind_Resume(a1);
}

void calcProjectionDists(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *(a3 + 72);
  v192 = *(a3 + 56);
  v193 = v5;
  v194 = *(a3 + 88);
  v195 = *(a3 + 13);
  v6 = a3[1];
  v188 = *a3;
  v189 = v6;
  v190 = a3[2];
  v191 = *(a3 + 6);
  v7 = a3[27];
  v183 = a3[26];
  v184 = v7;
  v8 = *(a3 + 56);
  v9 = a3[24];
  v182 = a3[25];
  v181 = v9;
  v186 = *(a3 + 456);
  v10 = *(a3 + 59);
  v185 = v8;
  v187 = v10;
  v11 = a3[21];
  v176 = a3[20];
  v177 = v11;
  v12 = a3[18];
  v175 = a3[19];
  v174 = v12;
  v13 = *(a3 + 44);
  v179 = *(a3 + 360);
  v14 = *(a3 + 47);
  v178 = v13;
  v180 = v14;
  toNonHomg<3u>(a1, v170);
  toNonHomg<3u>(a2, v166);
  v15 = 0;
  v16 = 0;
  v162 = v192;
  v17 = *(&v193 + 1);
  v161 = v193;
  v164 = 0uLL;
  *&v163 = v193;
  *(&v163 + 1) = *(&v192 + 1);
  v165 = *(&v193 + 1);
  memset(v143, 0, sizeof(v143));
  do
  {
    v18 = v15;
    v19 = 3;
    do
    {
      *&v143[v18] = *(v161.f64 + v18) / v17;
      v18 += 8;
      --v19;
    }

    while (v19);
    ++v16;
    v15 += 24;
  }

  while (v16 != 3);
  v20 = 0;
  v21 = 0;
  v164 = *&v143[48];
  v165 = *&v143[64];
  v162 = *&v143[16];
  v163 = *&v143[32];
  v161 = *v143;
  v157 = v188;
  v22 = *(&v189 + 1);
  v156 = v189;
  v159 = 0uLL;
  *&v158 = v189;
  *(&v158 + 1) = *(&v188 + 1);
  v160 = *(&v189 + 1);
  memset(v143, 0, sizeof(v143));
  do
  {
    v23 = v20;
    v24 = 3;
    do
    {
      *&v143[v23] = *(v156.f64 + v23) / v22;
      v23 += 8;
      --v24;
    }

    while (v24);
    ++v21;
    v20 += 24;
  }

  while (v21 != 3);
  v25 = 0;
  v158 = *&v143[32];
  v159 = *&v143[48];
  v160 = *&v143[64];
  v156 = *v143;
  v157 = *&v143[16];
  v154[2] = v183;
  v154[3] = v184;
  v155 = v185;
  v154[0] = v181;
  v154[1] = v182;
  v152 = 0uLL;
  v153 = 0.0;
  do
  {
    *(&v152 + v25) = *(&v179 + v25) - *(&v190 + v25);
    v25 += 8;
  }

  while (v25 != 24);
  if ((*(a3 + 529) & 1) == 0)
  {
    v26 = 0;
    memset(v143, 0, 24);
    do
    {
      *&v143[v26] = *(&v190 + v26) - *(&v194 + v26);
      v26 += 8;
    }

    while (v26 != 24);
    v152 = *v143;
    v153 = *&v143[16];
  }

  toHomg(v170, v148);
  toHomg(v166, v147);
  GMC_WorldFromPoints(v148, v147, &v161, &v156, v154, &v152, 1, v149);
  Matrix<double>::~Matrix(v147);
  Matrix<double>::~Matrix(v148);
  v27 = 0;
  memset(&v143[40], 0, 32);
  v144 = 0;
  memset(&v143[8], 0, 32);
  *v143 = 0x3FF0000000000000;
  *&v143[40] = 0x3FF0000000000000;
  v146 = 0.0;
  v145 = 0x3FF0000000000000;
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v28 = &v137 + 1;
  v29 = vdupq_n_s64(2uLL);
  v137 = 0u;
  v138 = 0u;
  v30 = vdupq_n_s64(3uLL);
  do
  {
    v31 = v28;
    v32 = 4;
    v33 = xmmword_2249B9820;
    do
    {
      if (vmovn_s64(vcgtq_u64(v30, v33)).u8[0])
      {
        if (v27 + v32 == 4)
        {
          v34 = 1.0;
        }

        else
        {
          v34 = 0.0;
        }

        *(v31 - 1) = v34;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(3uLL), *&v33)).i32[1])
      {
        if (v27 + v32 == 5)
        {
          v35 = 1.0;
        }

        else
        {
          v35 = 0.0;
        }

        *v31 = v35;
      }

      v33 = vaddq_s64(v33, v29);
      v31 += 2;
      v32 -= 2;
    }

    while (v32);
    ++v27;
    v28 += 3;
  }

  while (v27 != 3);
  v36 = 0;
  *&v135 = 0;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v37 = &v161;
  do
  {
    v38 = 0;
    v39 = &v137;
    do
    {
      v40 = 0;
      v41 = 0.0;
      v42 = v39;
      do
      {
        v43 = *v42;
        v42 += 3;
        v41 = v41 + v37->f64[v40++] * v43;
      }

      while (v40 != 3);
      *(&v131 + 3 * v36 + v38++) = v41;
      v39 = (v39 + 8);
    }

    while (v38 != 3);
    ++v36;
    v37 = (v37 + 24);
  }

  while (v36 != 3);
  v44 = 0;
  memset(v142, 0, sizeof(v142));
  v45 = &v131;
  do
  {
    v46 = 0;
    v47 = v143;
    do
    {
      v48 = 0;
      v49 = 0.0;
      v50 = v47;
      do
      {
        v51 = *v50;
        v50 += 4;
        v49 = v49 + *(v45 + v48) * v51;
        v48 += 8;
      }

      while (v48 != 24);
      *(&v142[2 * v44] + v46++) = v49;
      ++v47;
    }

    while (v46 != 4);
    ++v44;
    v45 = (v45 + 24);
  }

  while (v44 != 3);
  v52 = 0;
  *&v143[24] = -*&v152;
  *&v143[56] = -*(&v152 + 1);
  v146 = -v153;
  v130 = 0;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v53 = &v126;
  v54 = v154;
  do
  {
    v55 = 0;
    v56 = v53;
    do
    {
      *v56 = *(v54 + v55);
      v56 = (v56 + 24);
      v55 += 8;
    }

    while (v55 != 24);
    ++v52;
    v53 = (v53 + 8);
    v54 = (v54 + 24);
  }

  while (v52 != 3);
  v57 = 0;
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v58 = &v156;
  do
  {
    v59 = 0;
    v60 = &v126;
    do
    {
      v61 = 0;
      v62 = 0.0;
      v63 = v60;
      do
      {
        v64 = *v63;
        v63 += 3;
        v62 = v62 + v58->f64[v61++] * v64;
      }

      while (v61 != 3);
      *(&v137 + 3 * v57 + v59++) = v62;
      v60 = (v60 + 8);
    }

    while (v59 != 3);
    ++v57;
    v58 = (v58 + 24);
  }

  while (v57 != 3);
  v65 = 0;
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v66 = &v137;
  do
  {
    v67 = 0;
    v68 = v143;
    do
    {
      v69 = 0;
      v70 = 0.0;
      v71 = v68;
      do
      {
        v72 = *v71;
        v71 += 4;
        v70 = v70 + *(v66 + v69) * v72;
        v69 += 8;
      }

      while (v69 != 24);
      *(&v131 + 4 * v65 + v67++) = v70;
      ++v68;
    }

    while (v67 != 4);
    ++v65;
    v66 = (v66 + 24);
  }

  while (v65 != 3);
  Matrix<double>::Matrix(&v126, 4, v151);
  *&v126 = &unk_2838143C0;
  LODWORD(v138) = 1;
  DWORD1(v138) = v151;
  v123 = 1;
  v124 = v151;
  v125 = 0;
  *&v137 = &unk_283812C58;
  *(&v137 + 1) = 0;
  BYTE8(v138) = 0;
  v121 = &unk_283812C88;
  __src = v150;
  Matrix<double>::~Matrix(&v137);
  LODWORD(v138) = 1;
  DWORD1(v138) = DWORD1(v127);
  v118 = 1;
  v119 = DWORD1(v127);
  v120 = 0;
  *&v137 = &unk_283812C58;
  *(&v137 + 1) = 0;
  BYTE8(v138) = 0;
  v116 = &unk_283812C88;
  __dst = *(&v126 + 1);
  Matrix<double>::~Matrix(&v137);
  Matrix<double>::Resize(&v116, 1, v124);
  memcpy(__dst, __src, 8 * v118 * v119);
  Matrix<double>::~Matrix(&v116);
  Matrix<double>::~Matrix(&v121);
  LODWORD(v138) = 1;
  DWORD1(v138) = v151;
  v123 = 1;
  v124 = v151;
  v125 = 0;
  *&v137 = &unk_283812C58;
  *(&v137 + 1) = 0;
  BYTE8(v138) = 0;
  v121 = &unk_283812C88;
  __src = &v150[8 * v151];
  Matrix<double>::~Matrix(&v137);
  LODWORD(v138) = 1;
  DWORD1(v138) = DWORD1(v127);
  v118 = 1;
  v119 = DWORD1(v127);
  v120 = 0;
  *&v137 = &unk_283812C58;
  *(&v137 + 1) = 0;
  BYTE8(v138) = 0;
  v116 = &unk_283812C88;
  __dst = (*(&v126 + 1) + 8 * DWORD1(v127));
  Matrix<double>::~Matrix(&v137);
  Matrix<double>::Resize(&v116, v123, v124);
  memcpy(__dst, __src, 8 * v118 * v119);
  Matrix<double>::~Matrix(&v116);
  Matrix<double>::~Matrix(&v121);
  LODWORD(v138) = 1;
  DWORD1(v138) = v151;
  v123 = 1;
  v124 = v151;
  v125 = 0;
  *&v137 = &unk_283812C58;
  *(&v137 + 1) = 0;
  BYTE8(v138) = 0;
  v121 = &unk_283812C88;
  __src = &v150[16 * v151];
  Matrix<double>::~Matrix(&v137);
  LODWORD(v138) = 1;
  DWORD1(v138) = DWORD1(v127);
  v118 = 1;
  v119 = DWORD1(v127);
  v120 = 0;
  *&v137 = &unk_283812C58;
  *(&v137 + 1) = 0;
  BYTE8(v138) = 0;
  v116 = &unk_283812C88;
  __dst = (*(&v126 + 1) + 8 * (2 * DWORD1(v127)));
  Matrix<double>::~Matrix(&v137);
  Matrix<double>::Resize(&v116, v123, v124);
  memcpy(__dst, __src, 8 * v118 * v119);
  Matrix<double>::~Matrix(&v116);
  Matrix<double>::~Matrix(&v121);
  v73 = DWORD1(v127);
  if (DWORD1(v127))
  {
    if (v127 < 4)
    {
      __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
    }

    v74 = 8 * (3 * DWORD1(v127));
    do
    {
      *(*(&v126 + 1) + v74) = 0x3FF0000000000000;
      v74 += 8;
      --v73;
    }

    while (v73);
  }

  MatrixMxN<3u,4u,double>::operator*<4u>(v142, &v126, &v137);
  toNonHomg<3u>(&v137, &v121);
  MatrixMxN<3u,4u,double>::operator*<4u>(&v131, &v126, &v116);
  toNonHomg<3u>(&v116, v112);
  Matrix<double>::Matrix(v109, 1, v124);
  v109[0] = &unk_283812C88;
  Matrix<double>::Matrix(v106, 1, v124);
  v106[0] = &unk_283812C88;
  v75 = v111;
  if (v111)
  {
    if (v123)
    {
      v76 = 0;
      v77 = v124;
      v78 = v172;
      v79 = v173;
      v80 = v114;
      v81 = v115;
      v82 = v168;
      v83 = v169;
      v84 = v107;
      v87 = v123 == 1 || v172 == 1 || v110 == 0;
      v88 = 8 * v115;
      v89 = 8 * v169;
      while (v77 != v76)
      {
        v90 = !v78 || v76 >= v79;
        v91 = v90;
        if (v91 || v87)
        {
          break;
        }

        v92 = (__src + 8 * v76);
        v93 = (v171 + 8 * v76);
        *(v109[1] + 8 * v76) = (*v92 - *v93) * v17 * ((*v92 - *v93) * v17) + v17 * (v92[v77] - v93[v79]) * (v17 * (v92[v77] - v93[v79]));
        if (!v80 || v76 >= v81 || !v82 || v76 >= v83 || v80 == 1 || v82 == 1 || !v84 || v76 >= v108)
        {
          break;
        }

        v94 = (*(v113 + 8 * v76) - *(v167 + 8 * v76)) * v22;
        v95 = v22 * (*(v113 + v88 + 8 * v76) - *(v167 + v89 + 8 * v76));
        *(v106[1] + 8 * v76++) = v94 * v94 + v95 * v95;
        if (v75 == v76)
        {
          goto LABEL_90;
        }
      }
    }

    __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
  }

LABEL_90:
  Matrix<double>::ConcatCols(v109, v106, v97);
  Matrix<double>::Sqrt(v97, v98);
  v96 = v99;
  v105 = v101;
  v99 = 0;
  v101 = 0;
  v102[0] = &unk_283812C88;
  v102[1] = v96;
  v103 = 1;
  v104 = v100;
  Matrix<double>::~Matrix(v98);
  Matrix<double>::~Matrix(v97);
  MatrixNxPts<1u,double>::Sort<1u,void>(v102);
}

void sub_224903564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  Matrix<double>::~Matrix(&a17);
  Matrix<double>::~Matrix(&a21);
  Matrix<double>::~Matrix(&a25);
  Matrix<double>::~Matrix(&a29);
  Matrix<double>::~Matrix(&a33);
  Matrix<double>::~Matrix(&a37);
  Matrix<double>::~Matrix(&a63);
  Matrix<double>::~Matrix(&a41);
  Matrix<double>::~Matrix(&STACK[0x300]);
  Matrix<double>::~Matrix(&STACK[0x430]);
  Matrix<double>::~Matrix(&STACK[0x450]);
  _Unwind_Resume(a1);
}

_DWORD *diluteInliers(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = result;
  v6 = a2 / a3;
  if (v6 <= 1.0)
  {
    if (result[5] == *(a4 + 20))
    {
      Matrix<float>::Resize(a4, result[4], result[5]);
      v9 = *(a4 + 8);
      v10 = *(v5 + 1);
      v11 = 4 * *(a4 + 16) * *(a4 + 20);

      return memcpy(v9, v10, v11);
    }

    else if (a3)
    {
      for (i = 0; i != a3; ++i)
      {
        if (i >= (result[5] * result[4]))
        {
          GMC_ExtractTestSamples();
        }

        if (i >= (*(a4 + 20) * *(a4 + 16)))
        {
          GMC_ExtractTestSamples();
        }

        *(*(a4 + 8) + 4 * i) = *(*(result + 1) + 4 * i);
      }
    }
  }

  else if (a3)
  {
    for (j = 0; j != a3; *(*(a4 + 8) + 4 * j++) = *(*(result + 1) + 4 * v8))
    {
      v8 = (v6 * j);
      if (result[5] * result[4] <= v8)
      {
        GMC_ExtractTestSamples();
      }

      if (j >= (*(a4 + 20) * *(a4 + 16)))
      {
        GMC_ExtractTestSamples();
      }
    }
  }

  return result;
}

uint64_t GMCAlgorithm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a4 + 560) == 1)
  {
    v6 = 0;
    v12 = 0uLL;
    v13 = 0;
    do
    {
      *(&v12 + v6) = *(a4 + v6 + 360) - *(a4 + v6 + 32);
      v6 += 8;
    }

    while (v6 != 24);
    *(a6 + 72) = v12;
    *(a6 + 88) = v13;
    if ((*(a4 + 529) & 1) == 0)
    {
      v7 = 0;
      v12 = 0uLL;
      v13 = 0;
      do
      {
        *(&v12 + v7) = *(a4 + v7 + 32) - *(a4 + v7 + 88);
        v7 += 8;
      }

      while (v7 != 24);
      *(a6 + 72) = v12;
      *(a6 + 88) = v13;
    }

    LODWORD(v12) = 0;
    GMC_BundleAdjustment(a1);
  }

  *(a6 + 96) = *(a4 + 72) / *(a4 + 80);
  if (a5 != a6)
  {
    *a6 = *a5;
    v8 = *(a5 + 16);
    v9 = *(a5 + 32);
    v10 = *(a5 + 48);
    *(a6 + 64) = *(a5 + 64);
    *(a6 + 32) = v9;
    *(a6 + 48) = v10;
    *(a6 + 16) = v8;
  }

  return 0xFFFFFFFFLL;
}

uint64_t toNonHomg<3u>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  result = Matrix<double>::Matrix(a2, 2, v4);
  *a2 = &unk_283813CF8;
  if (v4)
  {
    v6 = 0;
    v7 = *(a1 + 16);
    v8 = 119;
    do
    {
      v9 = 0;
      v10 = *(a1 + 20);
      v11 = *(a2 + 16);
      v12 = *(a2 + 20);
      if (v7)
      {
        v13 = v6 >= v10;
      }

      else
      {
        v13 = 1;
      }

      v14 = v13;
      v15 = 1;
      do
      {
        if ((v14 & 1) != 0 || v7 < 3)
        {
          v8 = 125;
LABEL_18:
          __assert_rtn("operator()", "Matrix.hpp", v8, "row < m_rows && col < m_cols");
        }

        if (v9 >= v11 || v6 >= v12)
        {
          goto LABEL_18;
        }

        v16 = v15;
        v15 = 0;
        v17 = *(a1 + 8) + 8 * v6;
        v18 = *(v17 + 8 * v9 * v10);
        v19 = *(v17 + 8 * (2 * v10));
        result = *(a2 + 8) + 8 * v6;
        *(result + 8 * v9 * v12) = v18 / v19;
        v9 = 1;
      }

      while ((v16 & 1) != 0);
      ++v6;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t toHomg@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  result = Matrix<double>::Matrix(a2, 3, v4);
  *a2 = &unk_283812E40;
  if (v4)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = *(a1 + 20);
      v9 = *(a2 + 16);
      v10 = *(a2 + 20);
      v12 = v6 == 1 || v9 == 1;
      v13 = 119;
      while (v8 != v7)
      {
        if (!v9 || v7 >= v10)
        {
          goto LABEL_22;
        }

        *(*(a2 + 8) + 8 * v7) = *(*(a1 + 8) + 8 * v7);
        if (v12)
        {
          if (v6 == 1)
          {
            v14 = 125;
          }

          else
          {
            v14 = 119;
          }

          __assert_rtn("operator()", "Matrix.hpp", v14, "row < m_rows && col < m_cols");
        }

        *(*(a2 + 8) + 8 * v10 + 8 * v7) = *(*(a1 + 8) + 8 * v8 + 8 * v7);
        if (v9 <= 2)
        {
          __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
        }

        result = *(a2 + 8) + 8 * (2 * v10);
        *(result + 8 * v7++) = 0x3FF0000000000000;
        if (v4 == v7)
        {
          return result;
        }
      }
    }

    v13 = 125;
LABEL_22:
    __assert_rtn("operator()", "Matrix.hpp", v13, "row < m_rows && col < m_cols");
  }

  return result;
}

uint64_t MatrixMxN<3u,4u,double>::operator*<4u>@<X0>(const double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MatrixMxN<3u,4u,double>::operator*(a1, a2, &v7);
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

uint64_t Matrix<double>::ConcatCols@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  if (v5 != *(a2 + 16))
  {
    Matrix<double>::ConcatCols();
  }

  result = Matrix<double>::Matrix(a3, v5, *(a2 + 20) + *(a1 + 20));
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = *(a2 + 8);
    v10 = *(a1 + 8);
    v11 = *(result + 8);
    v12 = *(a1 + 20);
    v13 = *(a2 + 20);
    do
    {
      for (i = v12; i; --i)
      {
        v15 = *v10++;
        *v11++ = v15;
      }

      for (j = v13; j; --j)
      {
        v17 = *v9++;
        *v11++ = v17;
      }

      ++v8;
    }

    while (v8 != v7);
  }

  return result;
}