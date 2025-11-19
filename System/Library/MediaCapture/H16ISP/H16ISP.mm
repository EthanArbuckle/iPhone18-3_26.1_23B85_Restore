const __CFString *H16ISP::H16ISPGetCFPreferenceNumber(const __CFString *this, const __CFString *a2, const __CFString *a3)
{
  v4 = CFPreferencesCopyValue(this, a2, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      IntValue = CFStringGetIntValue(v5);
      if (!IntValue)
      {
        SystemEncoding = CFStringGetSystemEncoding();
        CStringPtr = CFStringGetCStringPtr(v5, SystemEncoding);
        if (!CStringPtr || (IntValue = strtol(CStringPtr, 0, 0), !IntValue))
        {
          IntValue = 1;
          if (CFStringCompare(v5, @"true", 1uLL))
          {
            IntValue = 1;
            if (CFStringCompare(v5, @"yes", 1uLL))
            {
              if (CFStringCompare(v5, @"false", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"no", 1uLL) == kCFCompareEqualTo || (IntValue = a3, CFStringCompare(v5, @"0", 1uLL) == kCFCompareEqualTo))
              {
                IntValue = 0;
              }
            }
          }
        }
      }
    }

    else
    {
      v10 = CFGetTypeID(v5);
      if (v10 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v5, kCFNumberIntType, &valuePtr))
        {
          IntValue = valuePtr;
        }

        else
        {
          IntValue = a3;
        }
      }

      else
      {
        v11 = CFGetTypeID(v5);
        IntValue = a3;
        if (v11 == CFBooleanGetTypeID())
        {
          IntValue = CFEqual(v5, *MEMORY[0x277CBED28]);
        }
      }
    }

    CFRelease(v5);
    return IntValue;
  }

  return a3;
}

void H16ISP::H16ISPGetCFPreferenceArray(const __CFString *this, const __CFString *a2, const __CFString *a3, unsigned int *a4)
{
  v4 = a4;
  v7 = CFPreferencesCopyValue(this, a2, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (a3)
  {
    v8 = v7;
    if (v7)
    {
      valuePtr = 0;
      v9 = CFGetTypeID(v7);
      if (v9 == CFArrayGetTypeID())
      {
        if (CFArrayGetCount(v8) >= 1 && (v10 = CFArrayGetValueAtIndex(v8, 0), v11 = CFGetTypeID(v10), v11 == CFStringGetTypeID()))
        {
          if (CFArrayGetCount(v8) < 1)
          {
            v15 = 0;
          }

          else
          {
            v12 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v8, v12);
              IntValue = CFStringGetIntValue(ValueAtIndex);
              v15 = IntValue;
              if (IntValue < v4)
              {
                *(&a3->isa + IntValue) = 1;
              }

              ++v12;
            }

            while (CFArrayGetCount(v8) > v12);
          }

          valuePtr = v15;
        }

        else if (CFArrayGetCount(v8) >= 1)
        {
          v22 = CFArrayGetValueAtIndex(v8, 0);
          v23 = CFGetTypeID(v22);
          if (v23 == CFNumberGetTypeID() && CFArrayGetCount(v8) >= 1)
          {
            v24 = 0;
            do
            {
              v25 = CFArrayGetValueAtIndex(v8, v24);
              CFNumberGetValue(v25, kCFNumberSInt32Type, &valuePtr);
              if (valuePtr < v4)
              {
                *(&a3->isa + valuePtr) = 1;
              }

              ++v24;
            }

            while (CFArrayGetCount(v8) > v24);
          }
        }
      }

      else if (CFStringCompare(this, @"EnableMetadataSections", 1uLL) == kCFCompareEqualTo)
      {
        v16 = CFStringGetIntValue(v8);
        if (v16 || (SystemEncoding = CFStringGetSystemEncoding(), (CStringPtr = CFStringGetCStringPtr(v8, SystemEncoding)) != 0) && (v16 = strtol(CStringPtr, 0, 0)) != 0)
        {
          v17 = 0;
          v18 = xmmword_2249BC3D0;
          v19 = vdupq_n_s32(v16);
          v20.i64[0] = 0x100000001;
          v20.i64[1] = 0x100000001;
          v21.i64[0] = 0x400000004;
          v21.i64[1] = 0x400000004;
          do
          {
            *(&a3->isa + v17) = vandq_s8(vshlq_u32(v19, vnegq_s32(v18)), v20);
            v18 = vaddq_s32(v18, v21);
            v17 += 16;
          }

          while (v17 != 128);
        }
      }

      CFRelease(v8);
    }
  }
}

uint64_t H16ISP::CreateH16ISPDeviceController(H16ISP *this, H16ISP::H16ISPDeviceController **a2, int (*a3)(H16ISP::H16ISPDeviceController *, void *, H16ISP::H16ISPDevice *), void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 0;
  H16ISP::H16ISPThreadReadySyncer::H16ISPThreadReadySyncer(&v11);
  v10[0] = 0;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = &v11;
  v8 = 48;
  pthread_attr_init(&v12);
  pthread_attr_setschedparam(&v12, &v8);
  pthread_attr_setdetachstate(&v12, 1);
  pthread_create(&v9, &v12, H16ISP::H16ISPServicesThreadStart, v10);
  pthread_attr_destroy(&v12);
  H16ISP::H16ISPThreadReadySyncer::wait(&v11);
  *this = v10[0];
  H16ISP::H16ISPThreadReadySyncer::~H16ISPThreadReadySyncer(&v11);
  return 0;
}

H16ISP::H16ISPThreadReadySyncer *H16ISP::H16ISPThreadReadySyncer::H16ISPThreadReadySyncer(H16ISP::H16ISPThreadReadySyncer *this)
{
  pthread_mutex_init(this, 0);
  pthread_cond_init((this + 64), 0);
  pthread_mutex_lock(this);
  return this;
}

uint64_t H16ISPCaptureDeviceCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  cf = 0;
  mach_timebase_info(&info);
  v67 = mach_absolute_time();
  v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v3 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    buf = 136315138;
    *buf_4 = "H16ISPCaptureDeviceCreate";
    _os_log_impl(&dword_2247DB000, v3, OS_LOG_TYPE_INFO, "%s - Creating capture device\n\n", &buf, 0xCu);
  }

  FigCaptureDeviceGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    DerivedStorage = 0;
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 152) = 0;
    *(DerivedStorage + 24) = 0;
    *(DerivedStorage + 248) = 0;
    *(DerivedStorage + 256) = 1;
    *(DerivedStorage + 260) = -1;
    *(DerivedStorage + 192) = 0;
    *(DerivedStorage + 208) = 0u;
    *(DerivedStorage + 160) = 0u;
    *(DerivedStorage + 176) = xmmword_2249BBD00;
    *(DerivedStorage + 128) = 0;
    dword_2810032CC = H16ISP::H16ISPGetCFPreferenceNumber(@"H16ISPVerboseFlags", @"com.apple.coremedia", 0);
    dword_2810032C4 = H16ISP::H16ISPGetCFPreferenceNumber(@"H16ISPVerboseLogging", @"com.apple.coremedia", 0);
    dword_281003304 = H16ISP::H16ISPGetCFPreferenceNumber(@"CamSave2File", @"com.apple.coremedia", 0);
    dword_281003308 = H16ISP::H16ISPGetCFPreferenceNumber(@"DumpPCEDepth", @"com.apple.coremedia", 0);
    dword_28100330C = H16ISP::H16ISPGetCFPreferenceNumber(@"DumpPCEFusion", @"com.apple.coremedia", 0);
    dword_2810032D4 = H16ISP::H16ISPGetCFPreferenceNumber(@"H16ISPFirmwareLogging", @"com.apple.coremedia", 0);
    dword_2810032D8 = H16ISP::H16ISPGetCFPreferenceNumber(@"H16ISPFirmwareLoggingInfoLoggerOut", @"com.apple.coremedia", 0);
    dword_2810032DC = H16ISP::H16ISPGetCFPreferenceNumber(@"H16ISPFirmwareLoggingPollInterval", @"com.apple.coremedia", 0xA);
    dword_2810032E0 = H16ISP::H16ISPGetCFPreferenceNumber(@"H16ISPFirmwareLoggingThreadPriority", @"com.apple.coremedia", 0);
    dword_281003314 = H16ISP::H16ISPGetCFPreferenceNumber(@"CamFWPoolPrimeCount", @"com.apple.coremedia", 0);
    gCaptureDeviceCFPrefs[0] = H16ISP::H16ISPGetCFPreferenceNumber(@"H16ISPUseAuxRawPool", @"com.apple.coremedia", 0);
    dword_281003360 = H16ISP::H16ISPGetCFPreferenceNumber(@"DumpRGBIRInput", @"com.apple.coremedia", 0);
    dword_28100313C = H16ISP::H16ISPGetCFPreferenceNumber(@"TorchLevelOverride", @"com.apple.coremedia", 0);
    LODWORD(xmmword_281003140) = H16ISP::H16ISPGetCFPreferenceNumber(@"visSphereControl", @"com.apple.coremedia", 0xFFFFFFFFLL);
    DWORD1(xmmword_281003140) = H16ISP::H16ISPGetCFPreferenceNumber(@"visBaseCountControl", @"com.apple.coremedia", 0xFFFFFFFFLL);
    DWORD2(xmmword_281003140) = H16ISP::H16ISPGetCFPreferenceNumber(@"visLogDerivedStepControl", @"com.apple.coremedia", 0xFFFFFFFFLL);
    HIDWORD(xmmword_281003140) = H16ISP::H16ISPGetCFPreferenceNumber(@"visOverScanPercentageControl", @"com.apple.coremedia", 0xFFFFFFFFLL);
    DWORD2(xmmword_281003140) = H16ISP::H16ISPGetCFPreferenceNumber(@"visLogDerivedStepControl", @"com.apple.coremedia", 0xFFFFFFFFLL);
    dword_2810032BC = H16ISP::H16ISPGetCFPreferenceNumber(@"visMaxZoomEnhancement", @"com.apple.coremedia", 0xFFFFFFFFLL);
    dword_281003150 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableLTMLuts", @"com.apple.coremedia", 0);
    dword_281003154 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableRawGyroData", @"com.apple.coremedia", 0);
    dword_281003158 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableFocusPixelMetadata", @"com.apple.coremedia", 0);
    dword_28100315C = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableAPSDebugMetadata", @"com.apple.coremedia", 0);
    dword_281003160 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableTNRMetadata", @"com.apple.coremedia", 0);
    dword_281003164 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableLocalHist", @"com.apple.coremedia", 0);
    dword_2810032B8 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableMetadataSectionsHigh", @"com.apple.coremedia", 0);
    dword_2810032C0 = H16ISP::H16ISPGetCFPreferenceNumber(@"H16ISPBCapAFTimeout", @"com.apple.coremedia", 0x1F4);
    dword_2810032C8 = H16ISP::H16ISPGetCFPreferenceNumber(@"H16ISPRawMetaInDict", @"com.apple.coremedia", 0);
    dword_2810032D0 = H16ISP::H16ISPGetCFPreferenceNumber(@"H16ISPFullStats", @"com.apple.coremedia", 0);
    qword_2810032E8 = H16ISP::H16ISPGetCFPreferenceNumber(@"CaptureDeviceEventLogging", @"com.apple.coremedia", 0);
    qword_2810032F0 = H16ISP::H16ISPGetCFPreferenceNumber(@"CaptureDeviceEventMaximumLogLength", @"com.apple.coremedia", 0x7D0);
    byte_2810032F8 = H16ISP::H16ISPGetCFPreferenceNumber(@"CaptureDeviceEventSafeWrite", @"com.apple.coremedia", 0) != 0;
    byte_2810032F9 = H16ISP::H16ISPGetCFPreferenceNumber(@"SavePreBracketingFrame", @"com.apple.coremedia", 0xFFFFFFFFLL) > 0;
    LODWORD(qword_2810032FC) = H16ISP::H16ISPGetCFPreferenceNumber(@"AFPeakTracking", @"com.apple.coremedia", 0xFFFFFFFFLL);
    HIDWORD(qword_2810032FC) = H16ISP::H16ISPGetCFPreferenceNumber(@"HighFrameRateAF", @"com.apple.coremedia", 0xFFFFFFFFLL);
    dword_281003310 = H16ISP::H16ISPGetCFPreferenceNumber(@"DisableFrameDoneTimeoutRecovery", @"com.apple.coremedia", 0xFFFFFFFFLL);
    dword_281003318 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableCFOV", @"com.apple.coremedia", 0xFFFFFFFFLL);
    dword_28100331C = H16ISP::H16ISPGetCFPreferenceNumber(@"DisplayStrobeOverride", @"com.apple.coremedia", 0);
    dword_281003320 = H16ISP::H16ISPGetCFPreferenceNumber(@"BypassFrameDelivery", @"com.apple.coremedia", 0);
    word_281003324 = H16ISP::H16ISPGetCFPreferenceNumber(@"DisableFocusWithDACSetting", @"com.apple.coremedia", 0xFFFF);
    dword_281003328 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableCamPackedRaw", @"com.apple.coremedia", 0xFFFFFFFFLL);
    dword_28100332C = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableSidebandMetadata", @"com.apple.coremedia", 0);
    dword_281003340 = H16ISP::H16ISPGetCFPreferenceNumber(@"AttachSushiRaw", @"com.apple.coremedia", 0xFFFFFFFFLL);
    dword_281003334 = H16ISP::H16ISPGetCFPreferenceNumber(@"LTMVersion", @"com.apple.coremedia", 0xFFFFFFFFLL);
    dword_281003330 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableSDOF", @"com.apple.coremedia", 0);
    dword_281003338 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableLTMStaticCLUT", @"com.apple.coremedia", 0xFFFFFFFFLL);
    dword_28100333C = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableWorkProcessor", @"com.apple.coremedia", 0);
    dword_281003344 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableDYWithSDOF", @"com.apple.coremedia", 0);
    dword_281003348 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableConcurrentFocus", @"com.apple.coremedia", 0xFFFFFFFFLL);
    dword_28100334C = H16ISP::H16ISPGetCFPreferenceNumber(@"FocusBehaviorSDOF", @"com.apple.coremedia", 0xFFFFFFFFLL);
    dword_281003350 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableLTMPadding", @"com.apple.coremedia", 0xFFFFFFFFLL);
    dword_281003354 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableMasterSlaveAFMetadata", @"com.apple.coremedia", 0);
    dword_281003358 = H16ISP::H16ISPGetCFPreferenceNumber(@"ForceRomeoPower", @"com.apple.coremedia", 0);
    dword_28100335C = H16ISP::H16ISPGetCFPreferenceNumber(@"CamRequireAllSensors", @"com.apple.coremedia", 1);
    dword_281003364 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableFilterGraph", @"com.apple.coremedia", 0);
    dword_281003368 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableFaceTrackingNode", @"com.apple.coremedia", 0);
    dword_28100336C = H16ISP::H16ISPGetCFPreferenceNumber(@"DefaultFusionMode", @"com.apple.coremedia", 3);
    byte_281003370 = H16ISP::H16ISPGetCFPreferenceNumber(@"BypassPearlCalibration", @"com.apple.coremedia", 0) > 0;
    dword_281003374 = H16ISP::H16ISPGetCFPreferenceNumber(@"ANFDDevProp", @"com.apple.coremedia", 0);
    dword_281003378 = H16ISP::H16ISPGetCFPreferenceNumber(@"ANFDTestProp", @"com.apple.coremedia", 0);
    byte_28100337C = H16ISP::H16ISPGetCFPreferenceNumber(@"DumpGmcIrBuffer", @"com.apple.coremedia", 0) != 0;
    dword_281003380 = H16ISP::H16ISPGetCFPreferenceNumber(@"AELuxLevel", @"com.apple.coremedia", 0xFFFFFFFFLL);
    dword_281003384 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableRawBufferCompanding", @"com.apple.coremedia", 0xFFFFFFFFLL);
    dword_281003388 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableISPBringup", @"com.apple.coremedia", 0);
    byte_28100338C = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableSPDMetadata", @"com.apple.coremedia", 0) != 0;
    byte_28100338D = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableDepthToPositionMetadata", @"com.apple.coremedia", 0) != 0;
    dword_281003390 = H16ISP::H16ISPGetCFPreferenceNumber(@"RGBJDilutionRate", @"com.apple.coremedia", 0);
    dword_281003394 = H16ISP::H16ISPGetCFPreferenceNumber(@"RGBJDilutionLowRate", @"com.apple.coremedia", 0);
    dword_281003398 = H16ISP::H16ISPGetCFPreferenceNumber(@"RGBJDilutionHighRate", @"com.apple.coremedia", 0);
    LODWORD(qword_28100339C) = H16ISP::H16ISPGetCFPreferenceNumber(@"RGBJInitialMode", @"com.apple.coremedia", 3);
    HIDWORD(qword_28100339C) = H16ISP::H16ISPGetCFPreferenceNumber(@"JasperISFStepDetectionMode", @"com.apple.coremedia", 1);
    dword_2810033A4 = H16ISP::H16ISPGetCFPreferenceNumber(@"GMODropBeforeWakeup", @"com.apple.coremedia", 1);
    dword_2810033A8 = H16ISP::H16ISPGetCFPreferenceNumber(@"GMOFlowMask", @"com.apple.coremedia", 0xFFFF);
    dword_2810033AC = H16ISP::H16ISPGetCFPreferenceNumber(@"DumpStillsJasperFrames", @"com.apple.coremedia", 0);
    dword_2810033B0 = H16ISP::H16ISPGetCFPreferenceNumber(@"ForceJasperFPS", @"com.apple.coremedia", 0xFFFFFFFFLL);
    dword_2810033B4 = H16ISP::H16ISPGetCFPreferenceNumber(@"PearlISFStepDetectionMode", @"com.apple.coremedia", 0);
    dword_2810033B8 = H16ISP::H16ISPGetCFPreferenceNumber(@"UseRgbp", @"com.apple.coremedia", 1);
    dword_2810033BC = H16ISP::H16ISPGetCFPreferenceNumber(@"AutoFocusAssistanceMode", @"com.apple.coremedia", 0);
    byte_2810033C0 = H16ISP::H16ISPGetCFPreferenceNumber(@"AutoFocusAssistanceDump", @"com.apple.coremedia", 0) != 0;
    byte_2810033C1 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableSetfileUnitInfo", @"com.apple.coremedia", 0) != 0;
    byte_2810033C3 = H16ISP::H16ISPGetCFPreferenceNumber(@"RgbIrVerbose", @"com.apple.coremedia", 0) != 0;
    byte_2810033C2 = H16ISP::H16ISPGetCFPreferenceNumber(@"RemoteRgbIr", @"com.apple.coremedia", 1) != 0;
    byte_2810033C4 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableFakeIMUData", @"com.apple.coremedia", 0) != 0;
    byte_2810033C5 = H16ISP::H16ISPGetCFPreferenceNumber(@"SlafCmApi", @"com.apple.coremedia", 1) != 0;
    byte_2810033C6 = H16ISP::H16ISPGetCFPreferenceNumber(@"SlafFwApi", @"com.apple.coremedia", 1) != 0;
    byte_2810033C7 = H16ISP::H16ISPGetCFPreferenceNumber(@"BypassMotionManagerInit", @"com.apple.coremedia", 0) > 0;
    byte_2810033C8 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableSlowSyncFlash", @"com.apple.coremedia", 1) != 0;
    byte_2810033C9 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableTimewarpMode", @"com.apple.coremedia", 0) != 0;
    H16ISP::H16ISPGetCFPreferenceArray(@"EnableMetadataSections", @"com.apple.coremedia", &xmmword_281003168, 0x54);
    v5 = 0;
    v6 = &dword_281003478;
    do
    {
      v7 = CFStringCreateWithFormat(0, 0, @"Cam%dCAFHintAction", v5);
      *(v6 - 30) = H16ISP::H16ISPGetCFPreferenceNumber(v7, @"com.apple.coremedia", 0);
      CFRelease(v7);
      v8 = CFStringCreateWithFormat(0, 0, @"Cam%dFullLSC", v5);
      *(v6 - 43) = H16ISP::H16ISPGetCFPreferenceNumber(v8, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v8);
      v9 = CFStringCreateWithFormat(0, 0, @"Cam%dSNF", v5);
      *(v6 - 42) = H16ISP::H16ISPGetCFPreferenceNumber(v9, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v9);
      v10 = CFStringCreateWithFormat(0, 0, @"Cam%dBinningCompensation", v5);
      *(v6 - 41) = H16ISP::H16ISPGetCFPreferenceNumber(v10, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v10);
      v11 = CFStringCreateWithFormat(0, 0, @"Cam%dHRLTM", v5);
      *(v6 - 40) = H16ISP::H16ISPGetCFPreferenceNumber(v11, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v11);
      v12 = CFStringCreateWithFormat(0, 0, @"Cam%dHR", v5);
      *(v6 - 22) = H16ISP::H16ISPGetCFPreferenceNumber(v12, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v12);
      v13 = CFStringCreateWithFormat(0, 0, @"Cam%dContextSwitching", v5);
      *(v6 - 39) = H16ISP::H16ISPGetCFPreferenceNumber(v13, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v13);
      v14 = CFStringCreateWithFormat(0, 0, @"Cam%dAWBScheme", v5);
      *(v6 - 38) = H16ISP::H16ISPGetCFPreferenceNumber(v14, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v14);
      v15 = CFStringCreateWithFormat(0, 0, @"Cam%dALS", v5);
      *(v6 - 37) = H16ISP::H16ISPGetCFPreferenceNumber(v15, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v15);
      v16 = CFStringCreateWithFormat(0, 0, @"Cam%dSIFPixelFormat", v5);
      *(v6 - 29) = H16ISP::H16ISPGetCFPreferenceNumber(v16, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v16);
      v17 = CFStringCreateWithFormat(0, 0, @"Cam%dSIFCompressed", v5);
      *(v6 - 28) = H16ISP::H16ISPGetCFPreferenceNumber(v17, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v17);
      v18 = CFStringCreateWithFormat(0, 0, @"Cam%dSingleFormatOverride", v5);
      *(v6 - 36) = H16ISP::H16ISPGetCFPreferenceNumber(v18, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v18);
      v19 = CFStringCreateWithFormat(0, 0, @"Cam%dVIS", v5);
      *(v6 - 35) = H16ISP::H16ISPGetCFPreferenceNumber(v19, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v19);
      v20 = CFStringCreateWithFormat(0, 0, @"Cam%dDebugMetadata", v5);
      *(v6 - 34) = H16ISP::H16ISPGetCFPreferenceNumber(v20, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v20);
      v21 = CFStringCreateWithFormat(0, 0, @"Cam%dsHDRRatio", v5);
      *(v6 - 33) = H16ISP::H16ISPGetCFPreferenceNumber(v21, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v21);
      v22 = CFStringCreateWithFormat(0, 0, @"Cam%dFocusPixels", v5);
      *(v6 - 32) = H16ISP::H16ISPGetCFPreferenceNumber(v22, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v22);
      v23 = CFStringCreateWithFormat(0, 0, @"Cam%dContinuousFocus", v5);
      *(v6 - 31) = H16ISP::H16ISPGetCFPreferenceNumber(v23, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v23);
      v24 = CFStringCreateWithFormat(0, 0, @"Cam%dShort2LongSpeed", v5);
      *(v6 - 26) = H16ISP::H16ISPGetCFPreferenceNumber(v24, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v24);
      v25 = CFStringCreateWithFormat(0, 0, @"Cam%dLong2ShortSpeed", v5);
      *(v6 - 27) = H16ISP::H16ISPGetCFPreferenceNumber(v25, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v25);
      v26 = CFStringCreateWithFormat(0, 0, @"Cam%dEnableDPM", v5);
      *(v6 - 25) = H16ISP::H16ISPGetCFPreferenceNumber(v26, @"com.apple.coremedia", 1);
      CFRelease(v26);
      v27 = CFStringCreateWithFormat(0, 0, @"Cam%dEnableDPMAssistedAE", v5);
      *(v6 - 24) = H16ISP::H16ISPGetCFPreferenceNumber(v27, @"com.apple.coremedia", 1);
      CFRelease(v27);
      v28 = CFStringCreateWithFormat(0, 0, @"Cam%dEnableAPS", v5);
      *(v6 - 23) = H16ISP::H16ISPGetCFPreferenceNumber(v28, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v28);
      v29 = CFStringCreateWithFormat(0, 0, @"Cam%dEnableSensorCrop", v5);
      *(v6 - 21) = H16ISP::H16ISPGetCFPreferenceNumber(v29, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v29);
      v30 = CFStringCreateWithFormat(0, 0, @"Cam%dCalCropOffsetX", v5);
      *(v6 - 20) = H16ISP::H16ISPGetCFPreferenceNumber(v30, @"com.apple.coremedia", 0);
      CFRelease(v30);
      v31 = CFStringCreateWithFormat(0, 0, @"Cam%dCalCropOffsetY", v5);
      *(v6 - 19) = H16ISP::H16ISPGetCFPreferenceNumber(v31, @"com.apple.coremedia", 0);
      CFRelease(v31);
      v32 = CFStringCreateWithFormat(0, 0, @"Cam%dOisMetaFileMode", v5);
      *(v6 - 18) = H16ISP::H16ISPGetCFPreferenceNumber(v32, @"com.apple.coremedia", 0);
      CFRelease(v32);
      v33 = CFStringCreateWithFormat(0, 0, @"Cam%dFrameSkipRatio", v5);
      *(v6 - 17) = H16ISP::H16ISPGetCFPreferenceNumber(v33, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v33);
      v34 = CFStringCreateWithFormat(0, 0, @"Cam%dDisableZoom", v5);
      *(v6 - 64) = H16ISP::H16ISPGetCFPreferenceNumber(v34, @"com.apple.coremedia", 0) != 0;
      CFRelease(v34);
      v35 = CFStringCreateWithFormat(0, 0, @"Cam%dEnableAEStageDetect", v5);
      *(v6 - 15) = H16ISP::H16ISPGetCFPreferenceNumber(v35, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v35);
      v36 = CFStringCreateWithFormat(0, 0, @"Cam%dOisActivePreviewLimit", v5);
      *(v6 - 14) = H16ISP::H16ISPGetCFPreferenceNumber(v36, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v36);
      v37 = CFStringCreateWithFormat(0, 0, @"Cam%dOisInnerLoopClose", v5);
      *(v6 - 13) = H16ISP::H16ISPGetCFPreferenceNumber(v37, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v37);
      v38 = CFStringCreateWithFormat(0, 0, @"Cam%dApsModeSwitchEnable", v5);
      *(v6 - 12) = H16ISP::H16ISPGetCFPreferenceNumber(v38, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v38);
      v39 = CFStringCreateWithFormat(0, 0, @"Cam%dApsOffsetCalcEnable", v5);
      *(v6 - 11) = H16ISP::H16ISPGetCFPreferenceNumber(v39, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v39);
      v40 = CFStringCreateWithFormat(0, 0, @"Cam%dApsDacClampEnable", v5);
      *(v6 - 10) = H16ISP::H16ISPGetCFPreferenceNumber(v40, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v40);
      v41 = CFStringCreateWithFormat(0, 0, @"Cam%dApsOffsetManual", v5);
      *(v6 - 9) = H16ISP::H16ISPGetCFPreferenceNumber(v41, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v41);
      v42 = CFStringCreateWithFormat(0, 0, @"Cam%dApsInnerLoopClose", v5);
      *(v6 - 8) = H16ISP::H16ISPGetCFPreferenceNumber(v42, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v42);
      v43 = CFStringCreateWithFormat(0, 0, @"Cam%dApsOffsetCorrectionScheme", v5);
      *(v6 - 7) = H16ISP::H16ISPGetCFPreferenceNumber(v43, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v43);
      v44 = CFStringCreateWithFormat(0, 0, @"Cam%dSpikeDetection", v5);
      *(v6 - 6) = H16ISP::H16ISPGetCFPreferenceNumber(v44, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v44);
      v45 = CFStringCreateWithFormat(0, 0, @"Cam%dAiCamMode", v5);
      *(v6 - 5) = H16ISP::H16ISPGetCFPreferenceNumber(v45, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v45);
      v46 = CFStringCreateWithFormat(0, 0, @"Cam%dLockAWBWithoutLSC", v5);
      *(v6 - 4) = H16ISP::H16ISPGetCFPreferenceNumber(v46, @"com.apple.coremedia", 0);
      CFRelease(v46);
      v47 = CFStringCreateWithFormat(0, 0, @"Cam%dLockAWBWithoutALS", v5);
      *(v6 - 3) = H16ISP::H16ISPGetCFPreferenceNumber(v47, @"com.apple.coremedia", 0);
      CFRelease(v47);
      v48 = CFStringCreateWithFormat(0, 0, @"Cam%dSIFRControlMode", v5);
      *(v6 - 2) = H16ISP::H16ISPGetCFPreferenceNumber(v48, @"com.apple.coremedia", 0xFFFFFFFFLL);
      CFRelease(v48);
      v49 = CFStringCreateWithFormat(0, 0, @"Cam%dOISRecenterOffset", v5);
      *(v6 - 1) = H16ISP::H16ISPGetCFPreferenceNumber(v49, @"com.apple.coremedia", 0);
      CFRelease(v49);
      v50 = CFStringCreateWithFormat(0, 0, @"Cam%dRawPoolRetainedCount", v5);
      *v6 = H16ISP::H16ISPGetCFPreferenceNumber(v50, @"com.apple.coremedia", 0);
      CFRelease(v50);
      ++v5;
      v6 += 44;
    }

    while (v5 != 6);
    v51 = dword_2810032CC;
    *(DerivedStorage + 104) = dword_2810032CC;
    *(DerivedStorage + 280) = dword_2810033BC != 0;
    *(DerivedStorage + 281) = 0;
    *(DerivedStorage + 282) = byte_2810033C0;
    if (v51)
    {
      v52 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v52 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v52;
      }

      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = *(DerivedStorage + 104);
        buf = 67109120;
        *buf_4 = v53;
        _os_log_impl(&dword_2247DB000, v52, OS_LOG_TYPE_DEFAULT, "H16ISPVerboseFlags: 0x%08X\n\n", &buf, 8u);
      }
    }

    pthread_mutexattr_init(&v72);
    pthread_mutexattr_settype(&v72, 2);
    pthread_mutex_init((DerivedStorage + 32), &v72);
    pthread_mutexattr_destroy(&v72);
    H16ISPDeviceController = H16ISP::CreateH16ISPDeviceController((DerivedStorage + 16), MyH16ISPDeviceControllerNotification, cf, v54);
    v4 = H16ISPDeviceController;
    v56 = *(DerivedStorage + 16);
    if (v56)
    {
      if (!H16ISPDeviceController)
      {
        if (*v56)
        {
          if (CFArrayGetCount(*v56))
          {
            v57 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(**(DerivedStorage + 16), v57);
              *(DerivedStorage + 24) = ValueAtIndex;
              if (!H16ISP::H16ISPDevice::H16ISPDeviceOpen(ValueAtIndex, 0, 0))
              {
                break;
              }

              *(DerivedStorage + 24) = 0;
              ++v57;
            }

            while (v57 < CFArrayGetCount(**(DerivedStorage + 16)));
          }

          if (*(DerivedStorage + 24))
          {
            __source[0] = 0;
            operator new();
          }

          v61 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v61 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v61;
          }

          v4 = 3758097088;
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            H16ISPCaptureDeviceCreate_cold_31();
          }
        }

        else
        {
          v60 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v60 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v60;
          }

          v4 = 3758097088;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            H16ISPCaptureDeviceCreate_cold_32();
          }
        }
      }
    }

    else
    {
      v59 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v59 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v59;
      }

      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureDeviceCreate_cold_33();
      }

      v4 = 3758097088;
    }
  }

  if (cf)
  {
    H16ISPCaptureDeviceInvalidate();
    CFRelease(cf);
    DerivedStorage = 0;
  }

  v62 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v62 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v62;
  }

  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
  {
    buf = 67109376;
    *buf_4 = v4;
    *&buf_4[4] = 2048;
    *&buf_4[6] = a3;
    _os_log_impl(&dword_2247DB000, v62, OS_LOG_TYPE_INFO, "H16ISPCaptureDeviceCreate complete. err=0x%08X, newCaptureDeviceOut=%p\n\n", &buf, 0x12u);
  }

  LogCaptureDeviceEvent(0, DerivedStorage, 0, 0, 0, 0, 1);
  kdebug_trace();
  return v4;
}

uint64_t H16ISP::H16ISPDevice::CacheDeviceConfigs(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  *&v29[8092] = *MEMORY[0x277D85DE8];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  v3 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "CacheDeviceConfigs";
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - caching device configurations\n", buf, 0xCu);
  }

  if (*(v2 + 4668))
  {
    bzero(buf, 0x1CuLL);
    *&buf[4] = 3;
    LSCPolynomialCoeff = H16ISP::H16ISPDevice::ISP_SendCommand(v2, buf, 0x1Cu, 0, 0xFFFFFFFF);
    if (LSCPolynomialCoeff)
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::CacheDeviceConfigs();
      }

LABEL_61:
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::CacheDeviceConfigs();
      }

      H16ISP::H16ISPDevice::InitDeviceConfigsCache(v2);
      return LSCPolynomialCoeff;
    }

    *(v2 + 8) = *buf;
    *(v2 + 20) = *&buf[12];
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v20 = 136315650;
      v21 = "CacheDeviceConfigs";
      v22 = 1024;
      v23 = *&buf[12];
      v24 = 1024;
      v25 = *&buf[8];
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s - maxChannels=%d, timeStampFrequency=%d\n", v20, 0x18u);
    }

    if (!*(v2 + 48))
    {
      operator new[]();
    }

    if (!*(v2 + 40))
    {
      operator new[]();
    }

    LODWORD(v5) = *(v2 + 4668);
    if (v5)
    {
      v6 = 0;
      do
      {
        bzero(buf, 0x190uLL);
        *&buf[4] = 269;
        *&buf[8] = v6;
        LSCPolynomialCoeff = H16ISP::H16ISPDevice::ISP_SendCommand(v2, buf, 0x190u, 0, 0xFFFFFFFF);
        if (LSCPolynomialCoeff)
        {
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPDevice::CacheDeviceConfigs();
          }

          v3 = MEMORY[0x277D86220];
          goto LABEL_61;
        }

        *(*(v2 + 40) + 432 * v6) = v28;
        v7 = MEMORY[0x277D86220];
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
        {
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 136315650;
          v21 = "CacheDeviceConfigs";
          v22 = 1024;
          v23 = v28;
          v24 = 1024;
          v25 = v6;
          _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_DEFAULT, "%s - %d configurations detected for channel %d\n", v20, 0x18u);
        }

        memmove((*(v2 + 40) + 432 * v6 + 32), buf, 0x190uLL);
        v8 = *(v2 + 40) + 432 * v6;
        if (!*v8)
        {
LABEL_40:
          LSCPolynomialCoeff = 0;
          goto LABEL_48;
        }

        if (!*(v8 + 8) && !*(v8 + 24))
        {
          operator new[]();
        }

        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        while (1)
        {
          bzero(buf, 0x120uLL);
          *&buf[4] = 262;
          *&buf[8] = v6;
          *&buf[12] = v12;
          LSCPolynomialCoeff = H16ISP::H16ISPDevice::ISP_SendCommand(v2, buf, 0x120u, 0, 0xFFFFFFFF);
          if (LSCPolynomialCoeff)
          {
            break;
          }

          if ((v27 & 0x80) != 0)
          {
            v27 = (v27 & 0xFFFFFF00) + 256;
          }

          memmove((*(*(v2 + 40) + 432 * v6 + 8) + v11), &buf[16], 0xD4uLL);
          memmove((*(*(v2 + 40) + 432 * v6 + 16) + v10), v29, 0x3CuLL);
          LSCPolynomialCoeff = H16ISP::H16ISPDevice::ISP_GetLSCPolynomialCoeff(v2, v6, v12, (*(*(v2 + 40) + 432 * v6 + 24) + v9));
          if (LSCPolynomialCoeff)
          {
            v16 = MEMORY[0x277D86220];
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
            {
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
            }

            if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_48;
            }

            *v20 = 136315650;
            v21 = "CacheDeviceConfigs";
            v22 = 1024;
            v23 = v6;
            v24 = 1024;
            v25 = LSCPolynomialCoeff;
            v14 = v16;
            v15 = "%s - Error getting LSC polynomial - chan: %d, res: 0x%08X\n";
LABEL_53:
            _os_log_error_impl(&dword_2247DB000, v14, OS_LOG_TYPE_ERROR, v15, v20, 0x18u);
            goto LABEL_48;
          }

          ++v12;
          v11 += 212;
          v10 += 60;
          v9 += 72;
          if (v12 >= *(*(v2 + 40) + 432 * v6))
          {
            goto LABEL_40;
          }
        }

        v13 = MEMORY[0x277D86220];
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
        {
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *v20 = 136315650;
          v21 = "CacheDeviceConfigs";
          v22 = 1024;
          v23 = v6;
          v24 = 1024;
          v25 = LSCPolynomialCoeff;
          v14 = v13;
          v15 = "%s - Error getting camera config - chan: %d, res: 0x%08X\n";
          goto LABEL_53;
        }

LABEL_48:
        v17 = *(v2 + 48);
        if (v17)
        {
          H16ISP::H16ISPDevice::ISP_GetModuleParams(v2, v6, (v17 + 156 * v6));
        }

        ++v6;
        v5 = *(v2 + 4668);
      }

      while (v6 < v5);
      v3 = MEMORY[0x277D86220];
      if (!LSCPolynomialCoeff)
      {
        goto LABEL_67;
      }

      goto LABEL_61;
    }

LABEL_67:
    *v2 = v5;
    *(v2 + 4) = 1;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = *(v2 + 4668);
      *v20 = 136315394;
      v21 = "CacheDeviceConfigs";
      v22 = 1024;
      v23 = v19;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s - Success: cached configs - numChannels: %d\n", v20, 0x12u);
    }

    return 0;
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    LSCPolynomialCoeff = 3758097112;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::CacheDeviceConfigs();
    }
  }

  return LSCPolynomialCoeff;
}

uint64_t H16ISP::H16ISPDevice::ISP_IsPowered(H16ISP::H16ISPDevice *this)
{
  output = 0;
  outputCnt = 1;
  result = *(this + 1086);
  if (result)
  {
    return !IOConnectCallScalarMethod(result, 5u, 0, 0, &output, &outputCnt) && output == 1;
  }

  return result;
}

uint64_t H16ISP::H16ISPDeviceServiceInterestCallback(uint64_t this, void *a2, unsigned int a3, unsigned int a4, void *a5)
{
  v5 = *(this + 56);
  if (v5)
  {
    return v5();
  }

  return this;
}

uint64_t H16ISP::H16ISPDevice::ISP_PowerOnCamera(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v100 = *MEMORY[0x277D85DE8];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v94 = 136315138;
    v95 = "ISP_PowerOnCamera";
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s - powering on camera\n", &v94, 0xCu);
  }

  kdebug_trace();
  if (*(v2 + 4344))
  {
    if ((H16ISP::H16ISPDevice::ISP_IsPowered(v2) & 1) == 0 && *(v2 + 4) == 1)
    {
      H16ISP::H16ISPDevice::InitDeviceConfigsCache(v2);
    }

    v68 = IOConnectCallScalarMethod(*(v2 + 4344), 0xBu, 0, 0, 0, 0);
    if (!v68)
    {
      if (*(v2 + 4668))
      {
        goto LABEL_17;
      }

      if (H16ISP::H16ISPDevice::ISP_GetNumChannels(v2, (v2 + 4668)))
      {
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
        {
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPDevice::ISP_PowerOnCamera();
        }
      }

      if (*(v2 + 4668))
      {
LABEL_17:
        v4 = 0;
        v68 = 0;
        do
        {
          bzero(&v98, 0x9CuLL);
          H16ISP::H16ISPDevice::ISP_GetModuleParams(v2, v4, &v98);
          bzero(&v94, 0x211CuLL);
          H16ISP::H16ISPDevice::ISP_GetNVMParams(v2, v4, 0, &v94);
          bzero(v93, 0x211CuLL);
          H16ISP::H16ISPDevice::ISP_GetNVMParams(v2, v4, 1u, v93);
          bzero(v92, 0x211CuLL);
          H16ISP::H16ISPDevice::ISP_GetNVMParams(v2, v4, 2u, v92);
          bzero(v91, 0x211CuLL);
          H16ISP::H16ISPDevice::ISP_GetNVMParams(v2, v4, 3u, v91);
          if (v99[3] == 1 && (v99[11] & 1) == 0)
          {
            operator new();
          }

          v5 = &GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          ++v4;
        }

        while (v4 < *(v2 + 4668));
      }

      else
      {
        v68 = 0;
        v5 = &GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      }

      if ((*(v2 + 4) & 1) == 0)
      {
        H16ISP::H16ISPDevice::CacheDeviceConfigs(v2, v3);
      }

      if (*(*(v2 + 4304) + 632) == 1 && !*(v2 + 104))
      {
        if (*(v2 + 4416) != 1)
        {
          operator new();
        }

        if (v5[17] == MEMORY[0x277D86220])
        {
          v5[17] = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v94 = 136315138;
          v95 = "ISP_PowerOnCamera";
          _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - bypassMotionManagerInitialization!\n", &v94, 0xCu);
        }
      }

      if ((byte_281003132 & 1) == 0 && *(*(v2 + 4304) + 632) == 1 && !*(v2 + 112))
      {
        if (*(v2 + 4416) != 1)
        {
          operator new();
        }

        if (v5[17] == MEMORY[0x277D86220])
        {
          v5[17] = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v94 = 136315138;
          v95 = "ISP_PowerOnCamera";
          _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - bypassDeviceImpactManagerInitialization!\n", &v94, 0xCu);
        }
      }

      v6 = *(v2 + 112);
      if (v6)
      {
        H16ISP::H16ISPDeviceImpactManager::SendDeviceImpacts(v6);
      }
    }
  }

  else
  {
    v68 = -536870212;
  }

  if (*(v2 + 4668))
  {
    v7 = 0;
    v8 = (v2 + 4528);
    v9 = 16;
    do
    {
      v10 = *(*(v2 + 4304) + v9);
      if (v10 <= 1785950321)
      {
        if (v10 == 1718186595)
        {
          v12 = 0;
          v11 = "com.apple.isp.frontirsensorpower";
          goto LABEL_68;
        }

        if (v10 == 1718775412 || v10 == 1718776695)
        {
          v11 = "com.apple.isp.frontcamerapower";
          v12 = "com.apple.isp.frontcamerasensorconfig";
          goto LABEL_68;
        }
      }

      else if (v10 > 1919251318)
      {
        if (v10 == 1919251319)
        {
          v11 = "com.apple.isp.backsuperwidecamerapower";
          v12 = "com.apple.isp.backsuperwidesensorconfig";
LABEL_68:
          *(v8 - 13) = v11;
          *(v8 - 1) = v12;
          if ((*(v8 - 96) & 1) == 0)
          {
            v14 = *(*(v2 + 72) + 72);
            if (v14)
            {
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 0x40000000;
              block[2] = ___ZN6H16ISP12H16ISPDevice17ISP_PowerOnCameraEv_block_invoke;
              block[3] = &__block_descriptor_tmp_234;
              block[4] = v2;
              v83 = v7;
              dispatch_sync(v14, block);
              v12 = *(v8 - 1);
            }
          }

          if (v12)
          {
            if ((*v8 & 1) == 0)
            {
              v15 = *(*(v2 + 72) + 72);
              if (v15)
              {
                v80[0] = MEMORY[0x277D85DD0];
                v80[1] = 0x40000000;
                v80[2] = ___ZN6H16ISP12H16ISPDevice17ISP_PowerOnCameraEv_block_invoke_2;
                v80[3] = &__block_descriptor_tmp_235;
                v80[4] = v2;
                v81 = v7;
                dispatch_sync(v15, v80);
              }
            }
          }

          goto LABEL_75;
        }

        if (v10 == 1919251564)
        {
          v11 = "com.apple.isp.backtelecamerapower";
          v12 = "com.apple.isp.backtelecamerasensorconfig";
          goto LABEL_68;
        }
      }

      else
      {
        if (v10 == 1785950322)
        {
          v12 = 0;
          v11 = "com.apple.isp.backtofsensorpower";
          goto LABEL_68;
        }

        if (v10 == 1919246706)
        {
          v11 = "com.apple.isp.backcamerapower";
          v12 = "com.apple.isp.backcamerasensorconfig";
          goto LABEL_68;
        }
      }

      *(v8 - 13) = 0;
      *(v8 - 1) = 0;
LABEL_75:
      ++v7;
      v8 += 16;
      v9 += 104;
    }

    while (v7 < *(v2 + 4668));
  }

  if ((*(v2 + 4624) & 1) == 0)
  {
    *(v2 + 4616) = "com.apple.isp.cameratorch";
    v16 = *(*(v2 + 72) + 72);
    if (v16)
    {
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 0x40000000;
      v79[2] = ___ZN6H16ISP12H16ISPDevice17ISP_PowerOnCameraEv_block_invoke_3;
      v79[3] = &__block_descriptor_tmp_237;
      v79[4] = v2;
      dispatch_sync(v16, v79);
    }
  }

  if ((*(v2 + 4640) & 1) == 0)
  {
    *(v2 + 4632) = "com.apple.isp.cameratorchcoolcurrent";
    v17 = *(*(v2 + 72) + 72);
    if (v17)
    {
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 0x40000000;
      v78[2] = ___ZN6H16ISP12H16ISPDevice17ISP_PowerOnCameraEv_block_invoke_4;
      v78[3] = &__block_descriptor_tmp_239;
      v78[4] = v2;
      dispatch_sync(v17, v78);
    }
  }

  if ((*(v2 + 4656) & 1) == 0)
  {
    *(v2 + 4648) = "com.apple.isp.cameratorchwarmcurrent";
    v18 = *(*(v2 + 72) + 72);
    if (v18)
    {
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 0x40000000;
      v77[2] = ___ZN6H16ISP12H16ISPDevice17ISP_PowerOnCameraEv_block_invoke_5;
      v77[3] = &__block_descriptor_tmp_241;
      v77[4] = v2;
      dispatch_sync(v18, v77);
    }
  }

  IsPowered = H16ISP::H16ISPDevice::ISP_IsPowered(v2);
  v20 = v68;
  if (IsPowered && *(v2 + 4) == 1 && !v68)
  {
    if (*(v2 + 4668))
    {
      v21 = 0;
      v22 = 0;
      do
      {
        sprintf(v93, "/usr/local/share/firmware/isp/cam%dclocks.txt", v21);
        v23 = fopen(v93, "r");
        if (v23)
        {
          v24 = MEMORY[0x277D86220];
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
          {
            v25 = os_log_create("com.apple.isp", "device");
            v24 = MEMORY[0x277D86220];
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = v25;
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v88[0]) = 67109120;
            DWORD1(v88[0]) = v21;
            v26 = MEMORY[0x277D86220];
            v27 = "Found camera clock override information file for camera channel %d\n";
LABEL_95:
            _os_log_impl(&dword_2247DB000, v26, OS_LOG_TYPE_DEFAULT, v27, v88, 8u);
          }

          while (fgets(&v94, 256, v23))
          {
            v28 = strtok(&v94, "=");
            if (v28)
            {
              v29 = v28;
              if (!strncmp(v28, "clockdiv", 8uLL))
              {
                v36 = strtok(0, " \n");
                if (v36)
                {
                  v37 = strtoul(v36, 0, 0);
                  v38 = MEMORY[0x277D86220];
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
                  {
                    v39 = os_log_create("com.apple.isp", "device");
                    v38 = MEMORY[0x277D86220];
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = v39;
                  }

                  v40 = v38;
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(v88[0]) = 67109120;
                    DWORD1(v88[0]) = v37;
                    v26 = v40;
                    v27 = "Set clock divider reg to 0x%08X\n";
                    goto LABEL_95;
                  }
                }

                else
                {
                  v53 = MEMORY[0x277D86220];
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
                  {
                    v54 = os_log_create("com.apple.isp", "device");
                    v53 = MEMORY[0x277D86220];
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = v54;
                  }

                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    H16ISP::H16ISPDevice::ISP_PowerOnCamera(&v84, v85);
                  }
                }
              }

              else if (!strncmp(v29, "property", 8uLL))
              {
                v41 = strtok(0, " :");
                if (v41)
                {
                  v42 = strtoul(v41, 0, 0);
                  v43 = strtok(0, " \n");
                  if (v43)
                  {
                    v44 = strtoul(v43, 0, 0);
                    v45 = MEMORY[0x277D86220];
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
                    {
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
                      v45 = MEMORY[0x277D86220];
                    }

                    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                    {
                      LODWORD(v88[0]) = 67109376;
                      DWORD1(v88[0]) = v42;
                      WORD4(v88[0]) = 1024;
                      *(v88 + 10) = v44;
                      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Setting FW property 0x%08x to 0x%08X\n", v88, 0xEu);
                    }

                    v46 = H16ISP::H16ISPDevice::WritePropertyValue(v2, v21, v42, v44, 0xFFFFFFFF);
                    if (v46)
                    {
                      v47 = MEMORY[0x277D86220];
                      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
                      {
                        v48 = os_log_create("com.apple.isp", "device");
                        v47 = MEMORY[0x277D86220];
                        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = v48;
                      }

                      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                      {
                        H16ISP::H16ISPDevice::ISP_PowerOnCamera(&__dst, v46, &v87);
                      }
                    }
                  }

                  else
                  {
                    v61 = MEMORY[0x277D86220];
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
                    {
                      v62 = os_log_create("com.apple.isp", "device");
                      v61 = MEMORY[0x277D86220];
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = v62;
                    }

                    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                    {
                      H16ISP::H16ISPDevice::ISP_PowerOnCamera(&v73, v74);
                    }
                  }
                }

                else
                {
                  v57 = MEMORY[0x277D86220];
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
                  {
                    v58 = os_log_create("com.apple.isp", "device");
                    v57 = MEMORY[0x277D86220];
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = v58;
                  }

                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    H16ISP::H16ISPDevice::ISP_PowerOnCamera(&v75, v76);
                  }
                }
              }

              else if (!strncmp(v29, "FWOBJECTSPECIALFUNC", 0x13uLL))
              {
                v49 = 0;
                memset(v88, 0, sizeof(v88));
                do
                {
                  v50 = v49;
                  *(v88 + v49) = v29;
                  v29 = strtok(0, ":");
                  v49 = v50 + 1;
                  if (v29)
                  {
                    v51 = v50 >= 5;
                  }

                  else
                  {
                    v51 = 1;
                  }
                }

                while (!v51);
                v52 = H16ISP::H16ISPDevice::SendFirmwareObjectSpecialFunc(v2, v49, v88);
                if (v52)
                {
                  printf("Sending special debug function to firmware object returned error : 0x%08x\n", v52);
                }
              }

              else
              {
                v30 = strtoul(v29, 0, 0);
                v31 = strtok(0, " \n");
                if (v31)
                {
                  if (v22 > 0x3F)
                  {
                    v59 = MEMORY[0x277D86220];
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
                    {
                      v60 = os_log_create("com.apple.isp", "device");
                      v59 = MEMORY[0x277D86220];
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = v60;
                    }

                    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                    {
                      H16ISP::H16ISPDevice::ISP_PowerOnCamera(&v69, v70);
                    }
                  }

                  else
                  {
                    v32 = strtoul(v31, 0, 0);
                    v33 = MEMORY[0x277D86220];
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
                    {
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
                      v33 = MEMORY[0x277D86220];
                    }

                    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                    {
                      LODWORD(v88[0]) = 67109376;
                      DWORD1(v88[0]) = v30;
                      WORD4(v88[0]) = 1024;
                      *(v88 + 10) = v32;
                      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Set sensor reg 0x%08x to val 0x%08X\n", v88, 0xEu);
                    }

                    v92[v22] = v30;
                    v91[v22++] = v32;
                  }
                }

                else
                {
                  v55 = MEMORY[0x277D86220];
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
                  {
                    v56 = os_log_create("com.apple.isp", "device");
                    v55 = MEMORY[0x277D86220];
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = v56;
                  }

                  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                  {
                    H16ISP::H16ISPDevice::ISP_PowerOnCamera(&v71, v72);
                  }
                }
              }
            }

            else
            {
              v34 = MEMORY[0x277D86220];
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
              {
                v35 = os_log_create("com.apple.isp", "device");
                v34 = MEMORY[0x277D86220];
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = v35;
              }

              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                H16ISP::H16ISPDevice::ISP_PowerOnCamera(&v98, v99);
              }
            }
          }

          fclose(v23);
          if (v22)
          {
            v63 = H16ISP::H16ISPDevice::SetSensorCustomSettings(v2, v21, v22, v92, v91);
            if (v63)
            {
              v64 = MEMORY[0x277D86220];
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
              {
                v65 = os_log_create("com.apple.isp", "device");
                v64 = MEMORY[0x277D86220];
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = v65;
              }

              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                H16ISP::H16ISPDevice::ISP_PowerOnCamera(v89, v63, v90);
              }
            }

            else
            {
              v66 = MEMORY[0x277D86220];
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
              {
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
              }

              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(v88[0]) = 67109376;
                DWORD1(v88[0]) = v21;
                WORD4(v88[0]) = 1024;
                *(v88 + 10) = v22;
                _os_log_impl(&dword_2247DB000, v66, OS_LOG_TYPE_DEFAULT, "Successfully sent camera %d sensor register over-ride values for %d registers\n", v88, 0xEu);
              }
            }
          }
        }

        ++v21;
      }

      while (v21 < *(v2 + 4668));
    }

    v20 = v68;
  }

  if (!v20)
  {
    H16ISP::H16ISPDevice::ValidateProjectorToken(v2);
  }

  kdebug_trace();
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v94 = 136315394;
    v95 = "ISP_PowerOnCamera";
    v96 = 1024;
    v97 = v68;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s - status: 0x%08X\n", &v94, 0x12u);
  }

  return v68;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetNumChannels(H16ISP::H16ISPDevice *this, unsigned int *a2)
{
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v2, 0x24u, 0, 0, &output, &outputCnt);
  if (!result)
  {
    *a2 = output;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetModuleParams(H16ISP::H16ISPDevice *this, unsigned int a2, H16ISPModuleParams *outputStruct)
{
  input[1] = *MEMORY[0x277D85DE8];
  v5 = 156;
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  return IOConnectCallMethod(v3, 0xEu, input, 1u, 0, 0, 0, 0, outputStruct, &v5);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetNVMParams(uint64_t a1, unsigned int a2, unsigned int a3, void *outputStruct)
{
  input[2] = *MEMORY[0x277D85DE8];
  result = 3758097084;
  if (!outputStruct)
  {
    return 3758097090;
  }

  v6 = *(a1 + 4344);
  if (v6)
  {
    v7 = 8476;
    input[0] = a2;
    input[1] = a3;
    return IOConnectCallMethod(v6, 0x5Fu, input, 2u, 0, 0, 0, 0, outputStruct, &v7);
  }

  return result;
}

void ___ZN6H16ISP20H16ISPServicesRemote16sendMessageAsyncEPv28H16ISPServicesRemoteProperty_block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = MEMORY[0x22AA57270](a2);
  if (v5 == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a2, "H16ISPServicesRemoteReturnKey");
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v12[0] = 67109376;
      v12[1] = v11;
      v13 = 1024;
      v14 = int64;
      _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_DEFAULT, "H16ISPServicesRemote: SetProperty (async) %d (reply=0x%08X)\n", v12, 0xEu);
    }
  }

  else if (v5 == MEMORY[0x277D86480])
  {
    v6 = MEMORY[0x22AA57160](a2);
    if (v6)
    {
      v7 = v6;
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "services");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        ___ZN6H16ISP20H16ISPServicesRemote16sendMessageAsyncEPv28H16ISPServicesRemoteProperty_block_invoke_cold_1();
      }

      free(v7);
    }

    if (a2 != MEMORY[0x277D863F8])
    {
      xpc_connection_cancel(*v4);
    }
  }
}

__n128 H16ISP::H16ISPSetfileSelector::H16ISPSetfileSelector(H16ISP::H16ISPSetfileSelector *this, int a2, int a3, unsigned int a4, int a5, unsigned int a6, unsigned __int8 *a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned __int16 a11, unsigned __int16 a12, unsigned __int8 a13)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
  if (a2 <= 2306)
  {
    if (a2 > 1586)
    {
      if (a2 <= 2050)
      {
        switch(a2)
        {
          case 1587:
            if ((a5 - 69) > 1)
            {
              if ((a5 - 71) > 1)
              {
                *this = &H16ISP::IMX633_setfile_3623_01XX;
                *(this + 2) = 65748;
                v13 = "/usr/local/share/firmware/isp/3623_01XX.dat";
              }

              else
              {
                *this = &H16ISP::IMX633_setfile_3624_01XX;
                *(this + 2) = 65748;
                v13 = "/usr/local/share/firmware/isp/3624_01XX.dat";
              }
            }

            else
            {
              *this = &H16ISP::IMX633_setfile_3624_02XX;
              *(this + 2) = 65748;
              v13 = "/usr/local/share/firmware/isp/3624_02XX.dat";
            }

            break;
          case 1811:
            *this = &H16ISP::IMX713_setfile_4723_01XX;
            *(this + 2) = 37400;
            v13 = "/usr/local/share/firmware/isp/4723_01XX.dat";
            break;
          case 1812:
            *this = &H16ISP::IMX714_setfile_2022_01XX;
            *(this + 2) = 41368;
            v13 = "/usr/local/share/firmware/isp/2022_01XX.dat";
            break;
          default:
            return result;
        }

        goto LABEL_83;
      }

      if (a2 != 2051)
      {
        if (a2 == 2068)
        {
          *this = &H16ISP::IMX814_setfile_2123_01XX;
          *(this + 2) = 127884;
          v13 = "/usr/local/share/firmware/isp/2123_01XX.dat";
          goto LABEL_83;
        }

        if (a2 != 2131)
        {
          return result;
        }
      }

      *this = &H16ISP::IMX803_setfile_7623_01XX;
      *(this + 2) = 149496;
      v13 = "/usr/local/share/firmware/isp/7623_01XX.dat";
    }

    else
    {
      if (a2 > 1393)
      {
        switch(a2)
        {
          case 1394:
            *this = &H16ISP::IMX572_setfile_1020_03XX;
            *(this + 2) = 24392;
            v13 = "/usr/local/share/firmware/isp/1020_03XX.dat";
            break;
          case 1395:
            *this = &H16ISP::IMX573_setfile_0019_02XX;
            *(this + 2) = 14260;
            v13 = "/usr/local/share/firmware/isp/0019_02XX.dat";
            break;
          case 1556:
            if ((a5 & 0xFFFFFFFE) == 0x1E)
            {
              *this = &H16ISP::IMX614_setfile_2924_01XX;
              *(this + 2) = 60780;
              v13 = "/usr/local/share/firmware/isp/2924_01XX.dat";
            }

            else
            {
              *this = &H16ISP::IMX614_setfile_2921_02XX;
              *(this + 2) = 60780;
              v13 = "/usr/local/share/firmware/isp/2921_02XX.dat";
            }

            break;
          default:
            return result;
        }

        goto LABEL_83;
      }

      switch(a2)
      {
        case 1029:
          if ((a5 & 0xFFFFFFFE) == 0x1E)
          {
            *this = &H16ISP::IMX405_setfile_9724_01XX;
            *(this + 2) = 38436;
            v13 = "/usr/local/share/firmware/isp/9724_01XX.dat";
          }

          else
          {
            *this = &H16ISP::IMX405_setfile_9723_01XX;
            *(this + 2) = 37576;
            v13 = "/usr/local/share/firmware/isp/9723_01XX.dat";
          }

          break;
        case 1300:
          *this = &H16ISP::IMX514_setfile_2820_01XX;
          *(this + 2) = 41368;
          v13 = "/usr/local/share/firmware/isp/2820_01XX.dat";
          break;
        case 1368:
          if (a5 != 9)
          {
            if (a5 == 112)
            {
              *this = &H16ISP::IMX558_setfile_1925_03XX;
              *(this + 2) = 52136;
              v13 = "/usr/local/share/firmware/isp/1925_03XX.dat";
              break;
            }

            if (a5 != 16)
            {
              *this = &H16ISP::IMX558_setfile_1921_01XX;
              *(this + 2) = 44352;
              v13 = "/usr/local/share/firmware/isp/1921_01XX.dat";
              break;
            }
          }

          *this = &H16ISP::IMX558_setfile_1922_02XX;
          *(this + 2) = 44352;
          v13 = "/usr/local/share/firmware/isp/1922_02XX.dat";
          break;
        default:
          return result;
      }
    }

LABEL_83:
    v14 = *(v13 + 1);
    *(this + 12) = *v13;
    *(this + 28) = v14;
    result = *(v13 + 28);
    *(this + 40) = result;
    return result;
  }

  if (a2 <= 2417)
  {
    if (a2 > 2323)
    {
      switch(a2)
      {
        case 2324:
          *this = &H16ISP::IMX914_setfile_2325_01XX;
          *(this + 2) = 98124;
          v13 = "/usr/local/share/firmware/isp/2325_01XX.dat";
          break;
        case 2339:
          *this = &H16ISP::IMX923_setfile_8824_01XX;
          *(this + 2) = 36168;
          v13 = "/usr/local/share/firmware/isp/8824_01XX.dat";
          break;
        case 2392:
          *this = &H16ISP::IMX958_setfile_2224_01XX;
          *(this + 2) = 28660;
          v13 = "/usr/local/share/firmware/isp/2224_01XX.dat";
          break;
        default:
          return result;
      }
    }

    else
    {
      switch(a2)
      {
        case 2307:
          if ((a5 - 97) > 1)
          {
            *this = &H16ISP::IMX903_setfile_7424_01XX;
            *(this + 2) = 152192;
            v13 = "/usr/local/share/firmware/isp/7424_01XX.dat";
          }

          else
          {
            *this = &H16ISP::IMX903_setfile_7425_01XX;
            *(this + 2) = 152308;
            v13 = "/usr/local/share/firmware/isp/7425_01XX.dat";
          }

          break;
        case 2308:
          if (a5 == 99 || a5 == 79)
          {
            *this = &H16ISP::IMX904_setfile_7525_01XX;
            *(this + 2) = 152308;
            v13 = "/usr/local/share/firmware/isp/7525_01XX.dat";
          }

          else
          {
            *this = &H16ISP::IMX904_setfile_7524_01XX;
            *(this + 2) = 149496;
            v13 = "/usr/local/share/firmware/isp/7524_01XX.dat";
          }

          break;
        case 2323:
          if (a5 != 67 || a13)
          {
            if ((a5 - 69) > 1)
            {
              *this = &H16ISP::IMX913_setfile_4523_02XX;
              *(this + 2) = 138436;
              v13 = "/usr/local/share/firmware/isp/4523_02XX.dat";
            }

            else
            {
              *this = &H16ISP::IMX913_setfile_4524_01XX;
              *(this + 2) = 138436;
              v13 = "/usr/local/share/firmware/isp/4524_01XX.dat";
            }
          }

          else
          {
            *this = &H16ISP::IMX913_setfile_4523_01XX;
            *(this + 2) = 37420;
            v13 = "/usr/local/share/firmware/isp/4523_01XX.dat";
          }

          break;
        default:
          return result;
      }
    }

    goto LABEL_83;
  }

  if (a2 <= 3413)
  {
    switch(a2)
    {
      case 2418:
        if ((a5 - 97) > 1)
        {
          if (a5 == 99)
          {
            *this = &H16ISP::IMX972_setfile_3525_02XX;
            *(this + 2) = 186112;
            v13 = "/usr/local/share/firmware/isp/3525_02XX.dat";
          }

          else
          {
            *this = &H16ISP::IMX972_setfile_3524_01XX;
            *(this + 2) = 172804;
            v13 = "/usr/local/share/firmware/isp/3524_01XX.dat";
          }
        }

        else
        {
          *this = &H16ISP::IMX972_setfile_3525_01XX;
          *(this + 2) = 186112;
          v13 = "/usr/local/share/firmware/isp/3525_01XX.dat";
        }

        break;
      case 2419:
        *this = &H16ISP::IMX973_setfile_4425_01XX;
        *(this + 2) = 724052;
        v13 = "/usr/local/share/firmware/isp/4425_01XX.dat";
        break;
      case 2434:
        *this = &H16ISP::IMX982_setfile_7324_01XX;
        *(this + 2) = 149364;
        v13 = "/usr/local/share/firmware/isp/7324_01XX.dat";
        break;
      default:
        return result;
    }

    goto LABEL_83;
  }

  if (a2 == 3414)
  {
    if (a3 == 2)
    {
      *this = &H16ISP::VD56G0_setfile_6222_01XX;
      *(this + 2) = 7040;
      v13 = "/usr/local/share/firmware/isp/6222_01XX.dat";
    }

    else
    {
      *this = &H16ISP::VD56G0_setfile_6221_01XX;
      *(this + 2) = 7040;
      v13 = "/usr/local/share/firmware/isp/6221_01XX.dat";
    }

    goto LABEL_83;
  }

  if (a2 == 20584 || a2 == 20588)
  {
    *this = &H16ISP::VD56G8_setfile_0225_01XX;
    *(this + 2) = 12800;
    v13 = "/usr/local/share/firmware/isp/0225_01XX.dat";
    goto LABEL_83;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_SendCommand(H16ISP::H16ISPDevice *this, unsigned __int8 *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  input[4] = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v10 = *(this + 1086);
  if (v10)
  {
    input[0] = a2;
    input[1] = a3;
    input[2] = a4;
    input[3] = a5;
    v11 = IOConnectCallScalarMethod(v10, 0xAu, input, 4u, 0, 0);
  }

  else
  {
    v11 = 3758097084;
  }

  kdebug_trace();
  return v11;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetLSCPolynomialCoeff(uint64_t a1, unsigned int a2, unsigned int a3, void *outputStruct)
{
  input[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4344);
  if (!v4)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  v6 = 72;
  return IOConnectCallMethod(v4, 0x66u, input, 2u, 0, 0, 0, 0, outputStruct, &v6);
}

pthread_mutex_t *H16ISP::H16ISPMotionManager::H16ISPMotionManager(pthread_mutex_t *this, H16ISP::H16ISPDevice *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  *&this->__opaque[48] = 0;
  v3 = &this->__opaque[48];
  *this->__opaque = 0;
  *&this->__opaque[8] = 0;
  this->__sig = a2;
  *&this->__opaque[16] = 0;
  *&this->__opaque[24] = 0;
  *&this->__opaque[32] = 0;
  this->__opaque[40] = 0;
  pthread_mutex_init(this + 1, 0);
  pthread_attr_init(&v5);
  pthread_attr_setdetachstate(&v5, 1);
  pthread_create(v3, &v5, H16ISP::H16ISPMotionManagerInitializationThread, this);
  pthread_attr_destroy(&v5);
  return this;
}

uint64_t H16ISP::H16ISPDeviceImpactManager::SendDeviceImpacts(H16ISP::H16ISPDeviceImpactManager *this)
{
  if (*this)
  {
    v1 = *(this + 1);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___ZNK6H16ISP25H16ISPDeviceImpactManager17SendDeviceImpactsEv_block_invoke;
    v12[3] = &__block_descriptor_40_e43_v20__0__sCIspCmdDeviceImpactEvent_BfiQ_8C16l;
    v12[4] = this;
    return H16ISP::QueryDeviceImpactsInternal(v1, 1, v12);
  }

  else
  {
    v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v3;
    }

    v2 = 3758097088;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDeviceImpactManager::SendDeviceImpacts(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return v2;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetExclaveEnablementStatus(H16ISP::H16ISPDevice *this, BOOL *a2)
{
  output = 0;
  outputCnt = 1;
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4 = IOConnectCallScalarMethod(v2, 0x5Bu, 0, 0, &output, &outputCnt);
  if (v4)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ISP_GetExclaveEnablementStatus();
    }
  }

  else
  {
    *a2 = output != 0;
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::SetOscarToISPClockSync(H16ISP::H16ISPDevice *this, uint64_t a2, uint64_t a3)
{
  bzero(v7, 0x18uLL);
  v8 = 12;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPMotionManagerInitializationThread(pthread_mutex_t *this, H16ISP::H16ISPMotionManager *a2)
{
  pthread_setname_np("H16ISPMotionManagerInitializationThread");
  v3 = objc_alloc_init(MEMORY[0x277CC1CD8]);
  if (v3)
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      rep = std::chrono::steady_clock::now().__d_.__rep_;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = ___ZN6H16ISPL39H16ISPMotionManagerInitializationThreadEPNS_19H16ISPMotionManagerE_block_invoke;
      v8[3] = &__block_descriptor_40_e11_v24__0Q8Q16l;
      v8[4] = this;
      [v4 setSidebandTimeSyncHandler:v8];
      v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ - rep;
      if (v6.__d_.__rep_ >= 501000000)
      {
        printf("H16ISPMotionManager: setSidebandTimeSyncHandler delayed, execution time %llu ms\n", v6.__d_.__rep_ / 0xF4240);
      }
    }

    else
    {
      puts("H16ISPMotionManager::EnableMotionDataFeedToISPCPU - CMMotionManager doesn't support setSidebandTimeSyncHandler");
    }

    pthread_mutex_lock(this + 1);
    *this->__opaque = v4;
    pthread_mutex_unlock(this + 1);
  }

  return 0;
}

uint64_t ___ZN6H16ISP12H16ISPDevice17ISP_PowerOnCameraEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32) + 4424;
  v3 = v2 + 16 * *(a1 + 40);
  result = notify_register_check(*v3, (v3 + 12));
  *(v2 + 16 * *(a1 + 40) + 8) = result == 0;
  return result;
}

uint64_t ___ZN6H16ISP12H16ISPDevice17ISP_PowerOnCameraEv_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32) + 4520;
  v3 = v2 + 16 * *(a1 + 40);
  result = notify_register_check(*v3, (v3 + 12));
  *(v2 + 16 * *(a1 + 40) + 8) = result == 0;
  return result;
}

uint64_t ___ZN6H16ISP12H16ISPDevice17ISP_PowerOnCameraEv_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_register_check(*(v1 + 4616), (v1 + 4628));
  *(v1 + 4624) = result == 0;
  return result;
}

uint64_t ___ZN6H16ISP12H16ISPDevice17ISP_PowerOnCameraEv_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_register_check(*(v1 + 4632), (v1 + 4644));
  *(v1 + 4640) = result == 0;
  return result;
}

uint64_t ___ZN6H16ISP12H16ISPDevice17ISP_PowerOnCameraEv_block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_register_check(*(v1 + 4648), (v1 + 4660));
  *(v1 + 4656) = result == 0;
  return result;
}

uint64_t H16ISP::H16ISPDevice::ValidateProjectorToken(H16ISP::H16ISPDevice *this)
{
  v36 = *MEMORY[0x277D85DE8];
  *outputStructCnt = 24;
  v2 = *(this + 1086);
  if (v2)
  {
    v3 = IOConnectCallStructMethod(v2, 0xFu, 0, 0, outputStruct, outputStructCnt);
    if (!v3)
    {
      v4 = v33;
      v5 = v34;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (v6)
      {
        v7 = "n't";
        if (v34)
        {
          v8 = "";
        }

        else
        {
          v8 = "n't";
        }

        if (v33)
        {
          v7 = "";
        }

        *outputStructCnt = 136315394;
        *&outputStructCnt[4] = v8;
        *&outputStructCnt[12] = 2080;
        *&outputStructCnt[14] = v7;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "This is%s an internal build, and FDR was%s validated\n", outputStructCnt, 0x16u);
      }

      v9 = 0;
      v10 = 0;
      v3 = 0;
      v28 = 0;
      v29 = v4 | v5;
      v11 = 282;
      isVaderProjectorCompliant = H16ISP::isVaderProjectorCompliant(v6);
      while (1)
      {
        v13 = *(this + 538) + v9;
        if (*(v13 + 8))
        {
          v14 = *(v13 + 16);
          if (v14 == 1785950322 || v14 == 1718186595)
          {
            break;
          }
        }

LABEL_45:
        ++v10;
        v9 += 104;
        v11 += 432;
        if (v10 == 6)
        {
          return v3;
        }
      }

      v16 = *(this + 4) == 1 && v10 < *this && *(*(this + 5) + v11) != 0;
      if (v14 == 1718186595 && v16)
      {
        v16 = isVaderProjectorCompliant;
      }

      if (!v16)
      {
        v18 = *(this + 15);
        if (!v18 || (v14 == 1718186595 ? (v19 = 5) : (v19 = 6), (*outputStructCnt = v19, H16ISP::H16ISPServicesRemote::GetProperty(v18, outputStructCnt)) || outputStructCnt[8] != 1 || (v20 = time(0), v21 = mach_continuous_time(), *&outputStructCnt[16] <= v20)))
        {
          v17 = 0;
          goto LABEL_36;
        }

        v22 = difftime(*&outputStructCnt[16], v20);
        mach_timebase_info(&info);
        LODWORD(v24) = info.numer;
        LODWORD(v23) = info.denom;
        v28 = v21 + (v22 * 1000000000.0 * v23 / v24);
      }

      v17 = 1;
LABEL_36:
      if (((v14 == 1718186595) & v17) != 0)
      {
        v17 = v29;
      }

      if (v17)
      {
        *(this + 1166) |= 1 << v10;
        bzero(&info, 0xCuLL);
        LOWORD(info.denom) = 1568;
        v31 = v10;
        v3 = H16ISP::H16ISPDevice::ISP_SendCommand(this, &info, 0xCu, 0, 0xFFFFFFFF);
        if (v14 == 1718186595)
        {
          v25 = *(this + 1086);
          if (v25)
          {
            *outputStructCnt = 1;
            *&outputStructCnt[8] = v28;
            *&outputStructCnt[16] = isVaderProjectorCompliant;
            IOConnectCallScalarMethod(v25, 0x33u, outputStructCnt, 3u, 0, 0);
          }
        }
      }

      else if (v14 == 1718186595)
      {
        v26 = *(this + 1086);
        if (v26)
        {
          *outputStructCnt = 0;
          *&outputStructCnt[8] = 0;
          *&outputStructCnt[16] = isVaderProjectorCompliant;
          IOConnectCallScalarMethod(v26, 0x33u, outputStructCnt, 3u, 0, 0);
        }
      }

      goto LABEL_45;
    }
  }

  else
  {
    v3 = 3758097084;
  }

  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPDevice::ValidateProjectorToken();
  }

  return v3;
}

BOOL H16ISP::isVaderProjectorCompliant(H16ISP *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "JYKY");
  v1 = IOServiceNameMatching("product");
  v2 = *MEMORY[0x277CD2898];
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v1);
  v4 = MatchingService;
  if (!MatchingService)
  {
    v19 = 1;
    goto LABEL_33;
  }

  v5 = *MEMORY[0x277CBECE8];
  v6 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"rosaline-serial-num", *MEMORY[0x277CBECE8], 3u);
  v7 = v6;
  if (v6)
  {
    BytePtr = CFDataGetBytePtr(v6);
    Length = CFDataGetLength(v7);
    std::string::basic_string[abi:ne200100]<0>(&v25, "");
    if (Length)
    {
      v10 = -11;
      do
      {
        v12 = *BytePtr++;
        v11 = v12;
        if (!v12)
        {
          break;
        }

        if (v10 <= 3)
        {
          std::string::push_back(&v25, v11);
        }

        ++v10;
        --Length;
      }

      while (Length);
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    v14 = v27;
    if ((v27 & 0x80u) != 0)
    {
      v14 = __p[1];
    }

    if (size != v14 || ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v15 = &v25) : (v15 = v25.__r_.__value_.__r.__words[0]), (v27 & 0x80u) == 0 ? (v16 = __p) : (v16 = __p[0]), memcmp(v15, v16, size)))
    {
      v17 = 0;
      v18 = 0;
      v19 = 1;
      goto LABEL_23;
    }

    v21 = IOServiceNameMatching("AppleProxHIDEventDriver");
    v22 = IOServiceGetMatchingService(v2, v21);
    v17 = v22;
    if (v22)
    {
      v23 = IORegistryEntrySearchCFProperty(v22, "IOService", @"floodComplianceRevision", v5, 3u);
      v18 = v23;
      if (v23)
      {
        valuePtr = 0;
        if (CFNumberGetValue(v23, kCFNumberSInt32Type, &valuePtr))
        {
          v19 = (valuePtr & 0xC0) != 0;
        }

        else
        {
          NSLog(&cfstr_ErrorConvertin.isa);
          v19 = 0;
        }

LABEL_23:
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        goto LABEL_27;
      }

      NSLog(&cfstr_CouldnTReadVad.isa);
    }

    else
    {
      NSLog(&cfstr_UnableToFindPr.isa);
      v17 = 0;
    }

    v19 = 0;
    v18 = 0;
    goto LABEL_23;
  }

  v18 = 0;
  v17 = 0;
  v19 = 1;
LABEL_27:
  IOObjectRelease(v4);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v17)
  {
    IOObjectRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

LABEL_33:
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  return v19;
}

void sub_2247E63E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

void H16ISP::H16ISPServicesThreadStart(uint64_t a1)
{
  pthread_setname_np("H16ISPServicesThread");
  H16ISP::H16ISPThreadReadySyncer::lock(*(a1 + 24));
  operator new();
}

H16ISP::H16ISPDeviceController *H16ISP::H16ISPDeviceController::H16ISPDeviceController(H16ISP::H16ISPDeviceController *this, int (*a2)(H16ISPDeviceController *, void *, H16ISP::H16ISPDevice *), void *a3)
{
  *(this + 14) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  pthread_mutex_init((this + 80), 0);
  pthread_cond_init(this + 3, 0);
  *(this + 192) = 0;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 8) = pthread_self();
  Current = CFRunLoopGetCurrent();
  *(this + 6) = CFRetain(Current);
  *(this + 9) = 0;
  return this;
}

uint64_t H16ISP::H16ISPDeviceController::SetupDeviceController(H16ISP::H16ISPDeviceController *this)
{
  v2 = 3758097086;
  callBacks.version = 0;
  callBacks.retain = 0;
  callBacks.copyDescription = 0;
  callBacks.equal = 0;
  callBacks.release = H16ISP::cfArrayReleaseH16ISPUnitObject;
  v3 = CFArrayCreateMutable(0, 0, &callBacks);
  *this = v3;
  if (!v3)
  {
    return 3758097085;
  }

  v4 = IOMasterPort(*MEMORY[0x277D85F18], this + 2);
  if (v4)
  {
    return v4;
  }

  v6 = IOServiceMatching("AppleH16CamIn");
  v7 = IONotificationPortCreate(*(this + 2));
  *(this + 2) = v7;
  if (v7)
  {
    RunLoopSource = IONotificationPortGetRunLoopSource(v7);
    *(this + 3) = RunLoopSource;
    if (RunLoopSource)
    {
      CFRunLoopAddSource(*(this + 6), RunLoopSource, *MEMORY[0x277CBF058]);
      v4 = IOServiceAddMatchingNotification(*(this + 2), "IOServiceFirstPublish", v6, H16ISP::deviceArrivedCallback, this, this + 14);
      if (v4)
      {
        return v4;
      }

      *(this + 9) = dispatch_queue_create("com.apple.h16ispdevicecontroller.notifications.queue", 0);
      H16ISP::deviceArrivedCallback(this, *(this + 14));
      pthread_mutex_lock((this + 80));
      if (*(this + 192))
      {
        v9 = 0;
      }

      else
      {
        clock_gettime(_CLOCK_REALTIME, &__tp);
        __tp.tv_sec += 2;
        v9 = pthread_cond_timedwait(this + 3, (this + 80), &__tp);
        if (v9 && (*(this + 192) & 1) == 0)
        {
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          v9 = 3758097110;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPDeviceController::SetupDeviceController(this + 192);
          }
        }
      }

      pthread_mutex_unlock((this + 80));
      return v9;
    }

    else
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDeviceController::SetupDeviceController();
      }

      IONotificationPortDestroy(*(this + 2));
      *(this + 2) = 0;
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDeviceController::SetupDeviceController();
    }
  }

  return v2;
}

uint64_t H16ISP::deviceArrivedCallback(H16ISP *this, io_iterator_t iterator)
{
  properties = 0;
  v4 = *MEMORY[0x277CBECE8];
  while (1)
  {
    result = IOIteratorNext(iterator);
    if (!result)
    {
      break;
    }

    if (!IORegistryEntryCreateCFProperties(result, &properties, v4, 0))
    {
      if (!CFArrayGetCount(*this))
      {
        operator new();
      }

      CFRelease(properties);
      pthread_mutex_lock((this + 80));
      *(this + 192) = 1;
      pthread_cond_broadcast(this + 3);
      pthread_mutex_unlock((this + 80));
    }
  }

  return result;
}

void H16ISP::H16ISPDevice::H16ISPDevice(H16ISP::H16ISPDevice *this, H16ISP::H16ISPDeviceController *a2, int a3)
{
  *(this + 4) = 0;
  *this = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 9) = a2;
  *(this + 36) = 0;
  *(this + 4244) = 0u;
  *(this + 4260) = 0u;
  *(this + 4288) = 0;
  *(this + 1073) = 0;
  *(this + 541) = 0;
  *(this + 4340) = 0;
  *(this + 4416) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 1179) = 0;
  *(this + 4668) = 0u;
  *(this + 4684) = 0u;
  *(this + 4700) = 0u;
  *(this + 1084) = a3;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v4 = &byte_2810030F5;
  byte_281003120 = H16ISP::H16ISPGetCFPreferenceNumber(@"LsInterpMode", @"com.apple.coremedia", 1);
  dword_281003124 = H16ISP::H16ISPGetCFPreferenceNumber(@"LsBypassVerify", @"com.apple.coremedia", 0);
  byte_281003128 = H16ISP::H16ISPGetCFPreferenceNumber(@"LsEnableGreenAvg", @"com.apple.coremedia", 0) != 0;
  byte_281003129 = H16ISP::H16ISPGetCFPreferenceNumber(@"RadialGainEnable", @"com.apple.coremedia", 1) != 0;
  byte_28100312A = H16ISP::H16ISPGetCFPreferenceNumber(@"IgnoreUnitInfoPlist", @"com.apple.coremedia", 0) != 0;
  dword_28100312C = H16ISP::H16ISPGetCFPreferenceNumber(@"UnitInfoNVMChannelMask", @"com.apple.coremedia", 0xFFFFFFFFLL);
  byte_281003132 = H16ISP::H16ISPGetCFPreferenceNumber(@"DisableDropDetection", @"com.apple.coremedia", 0) != 0;
  byte_281003130 = H16ISP::H16ISPGetCFPreferenceNumber(@"EnableExclaveDebug", @"com.apple.coremedia", 0) != 0;
  v5 = 0;
  byte_281003131 = H16ISP::H16ISPGetCFPreferenceNumber(@"RequireExclaveAD", @"com.apple.coremedia", 1) != 0;
  do
  {
    v6 = CFStringCreateWithFormat(0, 0, @"LsAdjustEnableCam%d", v5);
    *(v4 - 5) = H16ISP::H16ISPGetCFPreferenceNumber(v6, @"com.apple.coremedia", 0xFFFFFFFFLL);
    CFRelease(v6);
    v7 = CFStringCreateWithFormat(0, 0, @"LsAdjustInvertCam%d", v5);
    *(v4 - 1) = H16ISP::H16ISPGetCFPreferenceNumber(v7, @"com.apple.coremedia", 0) != 0;
    CFRelease(v7);
    v8 = CFStringCreateWithFormat(0, 0, @"LsIdealPctCam%d", v5);
    *v4 = H16ISP::H16ISPGetCFPreferenceNumber(v8, @"com.apple.coremedia", 0xFFFFFFFFLL);
    v4 += 8;
    CFRelease(v8);
    ++v5;
  }

  while (v5 != 6);
  *(this + 11) = 0;
  H16ISP::InitSupportedMetadataPropertiesDict(this + 11, v9);
}

void H16ISP::InitSupportedMetadataPropertiesDict(CFDictionaryRef *this, __CFDictionary **a2)
{
  if (*this)
  {
    CFDictionaryGetCount(*this);
  }

  malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  operator new();
}

void *std::vector<void const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<void const*>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<__CFString const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<__CFString const*>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::allocator<__CFString const*>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<void const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
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
      std::allocator<void const*>::allocate_at_least[abi:ne200100](a1, v10);
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

void std::vector<__CFString const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
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
      std::allocator<__CFString const*>::allocate_at_least[abi:ne200100](a1, v10);
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

void H16ISP::FastDictionaryRelease(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *v2;
      v4 = (*(v2 + 8) - *v2) >> 3;
      if (v4 < 1)
      {
        goto LABEL_6;
      }

      do
      {
        v5 = *v3++;
        CFRelease(v5);
        --v4;
      }

      while (v4);
      v2 = *a1;
      if (*a1)
      {
LABEL_6:
        v6 = *v2;
        if (*v2)
        {
          *(v2 + 8) = v6;
          operator delete(v6);
        }

        MEMORY[0x22AA55B60](v2, 0x80C40D6874129);
      }

      *a1 = 0;
    }

    v7 = a1[1];
    if (v7)
    {
      v8 = *v7;
      if (*v7)
      {
        *(v7 + 8) = v8;
        operator delete(v8);
      }

      MEMORY[0x22AA55B60](v7, 0x80C40D6874129);
    }

    free(a1);
  }
}

H16ISP::SystemStatus *H16ISP::SystemStatus::SystemStatus(H16ISP::SystemStatus *this, const __CFString *a2)
{
  if (objc_opt_class())
  {
    if (!H16ISP::stMediaStatusDomainPublisher)
    {
      H16ISP::stMediaStatusDomainPublisher = objc_alloc_init(MEMORY[0x277D6B9E0]);
    }

    *this = a2;
  }

  return this;
}

uint64_t H16ISP::H16ISPDevice::EnableDeviceMessages(uint64_t this)
{
  if (!*(this + 4340))
  {
    return IOServiceAddInterestNotification(*(*(this + 72) + 16), *(this + 4336), "IOGeneralInterest", H16ISP::H16ISPDeviceServiceInterestCallback, this, (this + 4340));
  }

  return this;
}

uint64_t H16ISP::H16ISPDevice::InitDeviceConfigsCache(H16ISP::H16ISPDevice *this)
{
  v14 = *MEMORY[0x277D85DE8];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  v2 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "InitDeviceConfigsCache";
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Initializing device configuration cache\n", &v12, 0xCu);
  }

  if (*(this + 4))
  {
    *(this + 4) = 0;
    *this = 0;
    v3 = (this + 40);
    if (*(this + 5))
    {
      if (!*(this + 1167))
      {
        goto LABEL_17;
      }

      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *v3;
        v7 = *(*v3 + v4 + 8);
        if (v7)
        {
          MEMORY[0x22AA55B40](v7, 0x1000C80FB5347CALL);
          v6 = *v3;
          *(*v3 + v4 + 8) = 0;
        }

        v8 = *(v6 + v4 + 16);
        if (v8)
        {
          MEMORY[0x22AA55B40](v8, 0x1000C803CB23258);
          v6 = *v3;
          *(*v3 + v4 + 16) = 0;
        }

        v9 = *(v6 + v4 + 24);
        if (v9)
        {
          MEMORY[0x22AA55B40](v9, 0x1000C80FF89C88ELL);
          v6 = *v3;
          *(*v3 + v4 + 24) = 0;
        }

        *(v6 + v4) = 0;
        bzero((v6 + v4 + 32), 0x190uLL);
        ++v5;
        v4 += 432;
      }

      while (v5 < *(this + 1167));
      if (*v3)
      {
LABEL_17:
        MEMORY[0x22AA55B40]();
      }

      v10 = *(this + 6);
      if (v10)
      {
        MEMORY[0x22AA55B40](v10, 0x1000C804C8AD114);
      }

      *v3 = 0;
      *(this + 6) = 0;
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v2)
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "InitDeviceConfigsCache";
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s - cache is already invalid - exiting\n", &v12, 0xCu);
    }
  }

  return 0;
}

uint64_t H16ISP::H16ISPThreadReadySyncer::signalAndUnlock(H16ISP::H16ISPThreadReadySyncer *this)
{
  pthread_cond_signal((this + 64));

  return pthread_mutex_unlock(this);
}

void std::allocator<void const*>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t H16ISP::H16ISPDevice::H16ISPDeviceOpen(H16ISP::H16ISPDevice *this, int (*a2)(H16ISP::H16ISPDevice *, unsigned int, void *, void *), void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(this + 68);
  if (*(this + 1086))
  {
    pthread_mutex_unlock(this + 68);
    return 3758097093;
  }

  else
  {
    v7 = IOServiceOpen(*(this + 1084), *MEMORY[0x277D85F48], 0x2Au, this + 1086);
    v8 = *(this + 1086);
    if (v8)
    {
      ProcNameAndAuditToken = v7;
    }

    else
    {
      ProcNameAndAuditToken = 3758097084;
    }

    if (!ProcNameAndAuditToken)
    {
      v11[0] = 0;
      ProcNameAndAuditToken = IOConnectCallScalarMethod(v8, 3u, v11, 1u, 0, 0);
      if (!ProcNameAndAuditToken)
      {
        *(this + 7) = a2;
        *(this + 8) = a3;
        H16ISP::H16ISPDevice::ISP_GetVersion(this, this + 1078);
        H16ISP::H16ISPDevice::ISP_GetRevision(this, this + 20);
        ExclavePlatformStatus = H16ISP::H16ISPDevice::ISP_GetExclavePlatformStatus(this, this + 4288);
        if (ExclavePlatformStatus)
        {
          ProcNameAndAuditToken = ExclavePlatformStatus;
          *(this + 4288) = 0;
        }

        else
        {
          ProcNameAndAuditToken = H16ISP::H16ISPDevice::GetProcNameAndAuditToken(this);
        }
      }
    }

    pthread_mutex_unlock(this + 68);
  }

  return ProcNameAndAuditToken;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetVersion(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 4344);
  if (!v2)
  {
    return 3758097084;
  }

  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v2, 0x22u, 0, 0, &output, &outputCnt);
  if (!result)
  {
    *a2 = output;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetRevision(H16ISP::H16ISPDevice *this, unsigned int *a2)
{
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v2, 0x23u, 0, 0, &output, &outputCnt);
  if (!result)
  {
    *a2 = output;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetExclavePlatformStatus(H16ISP::H16ISPDevice *this, BOOL *a2)
{
  output = 0;
  outputCnt = 1;
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4 = IOConnectCallScalarMethod(v2, 0x5Cu, 0, 0, &output, &outputCnt);
  if (v4)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ISP_GetExclavePlatformStatus();
    }
  }

  else
  {
    *a2 = output != 0;
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::GetProcNameAndAuditToken(H16ISP::H16ISPDevice *this)
{
  task_info_outCnt = 8;
  v2 = getpid();
  if (proc_pidpath(v2, this + 148, 0x1000u) <= 0)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v3 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::GetProcNameAndAuditToken();
    }
  }

  else if (task_info(*MEMORY[0x277D85F48], 0xFu, this + 1061, &task_info_outCnt))
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v3 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::GetProcNameAndAuditToken();
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      H16ISP::H16ISPDevice::GetProcNameAndAuditToken(this + 148, this + 1061, this);
    }

    return 0;
  }

  return v3;
}

H16ISP::H16ISPServicesRemote *H16ISP::H16ISPServicesRemote::H16ISPServicesRemote(H16ISP::H16ISPServicesRemote *this)
{
  *this = 0;
  *(this + 4) = "com.apple.appleh16camerad";
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "services");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "Creating remote service object\n", v4, 2u);
  }

  *(this + 1) = dispatch_queue_create(*(this + 4), 0);
  return this;
}

uint64_t H16ISP::H16ISPDevice::ISP_ColdBootHint(H16ISP::H16ISPDevice *this, BOOL *a2)
{
  result = 3758097084;
  output = 0;
  outputCnt = 1;
  if (!a2)
  {
    return 3758097090;
  }

  v4 = *(this + 1086);
  if (v4)
  {
    result = IOConnectCallScalarMethod(v4, 0x69u, 0, 0, &output, &outputCnt);
    if (!result)
    {
      *a2 = output == 1;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPServicesRemote::Connect(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v15[1665] = *MEMORY[0x277D85DE8];
  if (*v2)
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v6;
    }

    v7 = 3758097084;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPServicesRemote::Connect();
    }
  }

  else
  {
    v7 = v5;
    v8 = v4;
    v9 = v3;
    v10 = v2;
    *(v2 + 16) = v3;
    *(v2 + 24) = v4;
    mach_service = xpc_connection_create_mach_service(*(v2 + 32), *(v2 + 8), 0);
    *v10 = mach_service;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = ___ZN6H16ISP20H16ISPServicesRemote7ConnectEPFv25H16ISPServicesRemoteEventPvES2_b_block_invoke;
    handler[3] = &__block_descriptor_tmp_22;
    handler[4] = v10;
    handler[5] = v9;
    handler[6] = v8;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_activate(*v10);
    if (v7)
    {
      bzero(v15, 0x3408uLL);
      LODWORD(v15[0]) = 1;
      v7 = H16ISP::H16ISPServicesRemote::SetProperty(v10, v15);
      if (v7)
      {
        v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
        {
          v12 = os_log_create("com.apple.isp", "services");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v12;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPServicesRemote::Connect();
        }

        H16ISP::H16ISPServicesRemote::Disconnect(v10);
      }
    }
  }

  return v7;
}

uint64_t H16ISP::H16ISPServicesRemote::RegisterDeviceID(H16ISP::H16ISPServicesRemote *this, const char *a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v4 = v3;
  v5 = v2;
  v10 = *MEMORY[0x277D85DE8];
  bzero(&v8, 0x3408uLL);
  LODWORD(v8) = 21;
  object = xpc_string_create(v4);
  if (!object)
  {
    return 3758097084;
  }

  v6 = H16ISP::H16ISPServicesRemote::SetPropertyAsync(v5, &v8);
  xpc_release(object);
  return v6;
}

uint64_t H16ISP::H16ISPServicesRemote::SetPropertyAsync(uint64_t a1, xpc_object_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "services");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "H16ISPServicesRemote: SetProperty (async) %d (sent)\n", v7, 8u);
  }

  return H16ISP::H16ISPServicesRemote::SetPropertyInternal(a1, a2, 0);
}

uint64_t H16ISP::H16ISPServicesRemote::SetPropertyInternal(uint64_t a1, xpc_object_t *a2, int a3)
{
  v3 = 3758097085;
  if (!*a1)
  {
    return 3758097111;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
    v8 = v7;
    xpc_dictionary_set_uint64(v7, "H16ISPServicesRemoteTypeKey", 1uLL);
    xpc_dictionary_set_data(v8, "H16ISPServicesRemoteDataKey", a2, 0x3408uLL);
    v9 = *a2;
    if (*a2 <= 8)
    {
      if (v9 == 7)
      {
        v10 = "H16ISPServicesRemoteJasperCalibObjectKey";
        goto LABEL_16;
      }

      if (v9 != 8)
      {
        goto LABEL_18;
      }

      xpc_dictionary_set_value(v8, "H16ISPServicesRemoteRGBJBufferKey", a2[1]);
      xpc_dictionary_set_value(v8, "H16ISPServicesRemoteRGBJOriginalCloudBanksKey", a2[3]);
      xpc_dictionary_set_value(v8, "H16ISPServicesRemoteRGBJJasperCalibrationKey", a2[5]);
      xpc_dictionary_set_value(v8, "H16ISPServicesRemoteRGBJColorCalibrationKey", a2[4]);
      v10 = "H16ISPServicesRemoteRGBJMetadataKey";
    }

    else
    {
      if ((v9 - 9) >= 2)
      {
        if (v9 != 21)
        {
          if (v9 == 18)
          {
            xpc_dictionary_set_value(v8, "H16ISPServicesRemoteRGBIRBufferColorKey", a2[1]);
            xpc_dictionary_set_value(v8, "H16ISPServicesRemoteRGBIRBufferIRKey", a2[2]);
            xpc_dictionary_set_value(v8, "H16ISPServicesRemoteRGBIRBufferDepthKey", a2[3]);
            xpc_dictionary_set_value(v8, "H16ISPServicesRemoteRGBIRMetadataColorKey", a2[4]);
            xpc_dictionary_set_value(v8, "H16ISPServicesRemoteRGBIRMetadataIRKey", a2[5]);
            v10 = "H16ISPServicesRemoteRGBIRPCEConfigKey";
            v11 = 6;
LABEL_17:
            xpc_dictionary_set_value(v8, v10, a2[v11]);
          }

LABEL_18:
          if (a3)
          {
            v3 = H16ISP::H16ISPServicesRemote::sendMessageSync(a1, v8);
          }

          else
          {
            v12 = *a2;
            v13 = *a1;
            v14 = *(a1 + 8);
            v16[0] = MEMORY[0x277D85DD0];
            v16[1] = 0x40000000;
            v16[2] = ___ZN6H16ISP20H16ISPServicesRemote16sendMessageAsyncEPv28H16ISPServicesRemoteProperty_block_invoke;
            v16[3] = &__block_descriptor_tmp_6;
            v16[4] = a1;
            v17 = v12;
            xpc_connection_send_message_with_reply(v13, v8, v14, v16);
            v3 = 0;
          }

          xpc_release(v8);
          return v3;
        }

        v10 = "H16ISPServicesRemoteDeviceID";
LABEL_16:
        v11 = 1;
        goto LABEL_17;
      }

      xpc_dictionary_set_value(v8, "H16ISPServicesRemoteCFTypeNameKey", a2[1]);
      v10 = "H16ISPServicesRemoteCFTypeDataKey";
    }

    v11 = 2;
    goto LABEL_17;
  }

  return v3;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetDriverLoggingFlags(H16ISP::H16ISPDevice *this, unsigned int *a2)
{
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  output = 0;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v2, 0x20u, 0, 0, &output, &outputCnt);
  if (!result)
  {
    *a2 = output;
  }

  return result;
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::H16ISPTimeOfFlightColorSynchronizer(H16ISP::H16ISPTimeOfFlightColorSynchronizer *this, H16ISP::H16ISPDevice *a2, H16ISP::H16ISPServicesRemote *a3)
{
  *this = a2;
  *(this + 8) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  operator new();
}

void sub_2247EE494(_Unwind_Exception *a1)
{
  MEMORY[0x22AA55B60](v1, 0x10E0C409A2AF269);

  _Unwind_Resume(a1);
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::TimeOfFlightColorSynchronizerInternal(H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal *this, H16ISP::H16ISPDevice *a2, H16ISP::H16ISPServicesRemote *a3)
{
  *(this + 28) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  operator new();
}

void sub_2247EE6FC(_Unwind_Exception *a1)
{
  MEMORY[0x22AA55B60](v2, 0x1020C405CE9ABE8);
  H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::{unnamed type#3}::~TimeOfFlightColorSynchronizerInternal(v1 + 39);

  _Unwind_Resume(a1);
}

H16ISP::TimeOfFlightColorInfieldCalibrationManager *H16ISP::TimeOfFlightColorInfieldCalibrationManager::TimeOfFlightColorInfieldCalibrationManager(H16ISP::TimeOfFlightColorInfieldCalibrationManager *this, H16ISP::H16ISPDevice *a2, H16ISP::H16ISPServicesRemote *a3)
{
  *this = a3;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  mach_timebase_info(this + 6);
  *(this + 18) = 0;
  *(this + 17) = H16ISP::H16ISPGetCFPreferenceNumber(@"tofColorInfieldCalibrationFeatureVectorSize", @"com.apple.coremedia", 0xA);
  *(this + 7) = mach_absolute_time();
  *(this + 108) = H16ISP::H16ISPGetCFPreferenceNumber(@"tofColorInfieldCalibrationManagerVerbose", @"com.apple.coremedia", 0) != 0;
  *(this + 100) = 0x200000010;
  *(this + 84) = xmmword_2249D2A10;
  *(this + 80) = 1;
  *(this + 16) = 400;
  v4 = objc_alloc_init(MEMORY[0x277CECFD8]);
  v5 = *(this + 1);
  *(this + 1) = v4;

  return this;
}

mach_timebase_info *H16ISP::NearEventComplianceHandler::NearEventComplianceHandler(mach_timebase_info *this, H16ISP::H16ISPDevice *a2)
{
  mach_timebase_info(this + 3);
  this[5] = a2;
  LOWORD(this[6].numer) = -1;
  BYTE2(this[6].numer) = 1;
  *this = H16ISP::H16ISPGetCFPreferenceNumber(@"JasperComplianceNoDepthPerc", @"com.apple.coremedia", 0x60) / 100.0;
  *&this[1] = H16ISP::H16ISPGetCFPreferenceNumber(@"JasperComplianceNoDepthMaxValue", @"com.apple.coremedia", 0x32) / 100.0;
  this[2].numer = H16ISP::H16ISPGetCFPreferenceNumber(@"JasperComplianceTimeout", @"com.apple.coremedia", 0x168);
  return this;
}

uint64_t ___ZN6H16ISPL39H16ISPMotionManagerInitializationThreadEPNS_19H16ISPMotionManagerE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mach_timebase_info(&info);
  v6 = *(a1 + 32);
  *(v6 + 32) = a3;
  *(v6 + 40) = a2;
  *(v6 + 48) = 1;
  if (*(v6 + 24) || (result = H16ISP::H16ISPDevice::GetISPCounterFrequency(*v6, (v6 + 24), (v6 + 16)), v6 = *(a1 + 32), *(v6 + 24)))
  {
    result = H16ISP::H16ISPDevice::ISP_GetCameraTime(*v6, outputStruct);
    if (!result)
    {
      return H16ISP::H16ISPDevice::SetOscarToISPClockSync(**(a1 + 32), a3, (outputStruct[1] + -1.0 / *(*(a1 + 32) + 16) * (outputStruct[0] - a2)));
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetISPCounterFrequency(H16ISP::H16ISPDevice *this, unsigned int *a2, double *a3)
{
  if (*(this + 4))
  {
    mach_timebase_info(&info);
    v6 = 0;
    v7 = *(this + 4);
    *a2 = v7;
    LODWORD(v8) = info.numer;
    *a3 = 1.0 / v7 * 1000000000.0 * ((info.denom | 0x41CDCD6500000000uLL) / v8);
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v6 = 3758097112;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::GetISPCounterFrequency();
    }
  }

  return v6;
}

uint64_t H16ISP::H16ISPDevice::GetNumCameraConfigs(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  if (*(this + 1167) > a2 && (*(this + 4) & 1) != 0)
  {
    return *(*(this + 5) + 432 * a2);
  }

  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (result)
  {
    H16ISP::H16ISPDevice::GetNumCameraConfigs();
    return 0;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetCameraTime(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 16;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0xDu, 0, 0, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t refreshProjectorAllowed(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v16 = *MEMORY[0x277D85DE8];
  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(v2 + 24), *(v3 + 156), 1718186595);
  LOBYTE(PCECalib) = *(v4 + 4257);
  if (isSensorType && (*(v4 + 4257) & 1) == 0)
  {
    PCECalib = getPCECalib(*(v5 + 24), v15);
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "not ";
      if (PCECalib)
      {
        v9 = "";
      }

      v11 = 136315394;
      v12 = "H16ISPCaptureDeviceCreate";
      v13 = 2080;
      v14 = v9;
      _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_DEFAULT, "%s: IR channel: calibration is %savailable\n", &v11, 0x16u);
    }

    *(v4 + 4257) = PCECalib;
  }

  return PCECalib & 1;
}

BOOL H16ISP::H16ISPDevice::isSensorType(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 <= 5 && (v3 = *(a1 + 4304) + 104 * a2, v5 = *(v3 + 8), v4 = v3 + 8, v5))
  {
    v6 = *(v4 + 8);
  }

  else
  {
    v6 = -1;
  }

  return v6 == a3;
}

uint64_t H16ISP::H16ISPDevice::GetRelativeZoomFactor(H16ISP::H16ISPDevice *this, __int16 a2, unsigned __int16 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2068;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

BOOL DeghostingStatsSupportedBySensor(uint64_t a1, uint64_t a2)
{
  if (H16ISP::H16ISPDevice::isSensorType(*(a1 + 24), *(a2 + 156), 1919246706))
  {
    return 1;
  }

  v5 = *(a1 + 24);
  return *(v5 + 4312) >= 18 && (*(a2 + 4256) & 1) == 0 && !H16ISP::H16ISPDevice::isSensorType(v5, *(a2 + 156), 1785950322);
}

double MetadataOutputFeatureInitConfiguration(uint64_t a1)
{
  v1 = 0;
  *(a1 + 248) = kMetadataOutputConfigurationKeys;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 344) = &unk_281003A20;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  v2 = (a1 + 456);
  do
  {
    *(v2 - 2) = &kMetadataOutputConfigurationKeys[3 * dword_2249BBDD0[v1]];
    *(v2 - 8) = 0;
    *v2 = 0;
    v2 += 12;
    ++v1;
  }

  while (v1 != 4);
  *(a1 + 824) = &qword_281003A98;
  *(a1 + 832) = 0;
  *(a1 + 840) = 0;
  *(a1 + 920) = &unk_281003AB0;
  *(a1 + 928) = 0;
  result = 0.0;
  *(a1 + 936) = 0u;
  *(a1 + 1032) = &qword_281003AC8;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 952) = 0;
  *(a1 + 1144) = &unk_281003AE0;
  *(a1 + 1152) = 0;
  *(a1 + 1160) = 0;
  *(a1 + 1056) = 0;
  *(a1 + 1068) = 0;
  *(a1 + 1058) = 0;
  return result;
}

uint64_t ExclaveInitFlickerTimer(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 2925) == 1 && *(*(*(a1 + 24) + 4304) + 668))
  {
    v4 = *(a1 + 296);
    if (v4)
    {
      v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
      *(a2 + 58184) = v5;
      if (v5)
      {
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 0x40000000;
        v11[2] = ___ZL23ExclaveInitFlickerTimerP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke;
        v11[3] = &__block_descriptor_tmp_1811;
        v11[4] = a1;
        v11[5] = a2;
        dispatch_source_set_event_handler(v5, v11);
        v6 = *(a2 + 58184);
        if (v6)
        {
          dispatch_source_set_timer(v6, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
          v6 = *(a2 + 58184);
        }

        dispatch_activate(v6);
        return 0;
      }

      else
      {
        v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v10 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v10;
        }

        v7 = 3758097085;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          ExclaveInitFlickerTimer();
        }
      }
    }

    else
    {
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ExclaveInitFlickerTimer();
      }

      *(a2 + 58184) = 0;
      return 3758097084;
    }
  }

  else
  {
    v7 = 0;
    *(a2 + 58184) = 0;
  }

  return v7;
}

uint64_t InitSupportedFormatsForCaptureStream(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *(a1 + 192) = 0;
  v4 = (a1 + 192);
  *(a1 + 184) = 0;
  v5 = *(a1 + 136);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 136) = 0;
  }

  *(a1 + 184) = H16ISP::getOutputPresets(*(a1 + 180), v4, *(*(a2 + 24) + 4312), *(*(a2 + 24) + 80), **(*(a2 + 24) + 4304));
  if (*(a1 + 192))
  {
    if (*(a1 + 698) == 1)
    {
      operator new[]();
    }

    v6 = gCaptureDeviceCFPrefs[44 * *(a1 + 156) + 172];
    if (v6 != -1)
    {
      if (H16ISP::GetOutputPresetForOutputSize(*(a1 + 180), v6, *(*(a2 + 24) + 4312), *(*(a2 + 24) + 80), **(*(a2 + 24) + 4304)))
      {
        operator new[]();
      }
    }

    operator new[]();
  }

  return 0;
}

void *H16ISP::getOutputPresets(int a1, int *a2, uint64_t a3, int a4, int a5)
{
  if (a1 > 2307)
  {
    if (a1 <= 2417)
    {
      if (a1 > 2323)
      {
        if (a1 <= 2387)
        {
          if (a1 == 2324)
          {
            result = &h16ispOutputPreset_IMX914;
            v6 = 53;
            goto LABEL_92;
          }

          if (a1 == 2339)
          {
            result = &h16ispOutputPreset_IMX923;
            v6 = 5;
            goto LABEL_92;
          }

          goto LABEL_91;
        }

        if (a1 != 2388)
        {
          if (a1 == 2392)
          {
            result = &h16ispOutputPreset_IMX958;
            v6 = 9;
            goto LABEL_92;
          }

          goto LABEL_91;
        }

        result = &h16ispOutputPreset_IMX954;
        goto LABEL_90;
      }

      if (a1 == 2308)
      {
        result = &h16ispOutputPreset_IMX904;
        goto LABEL_90;
      }

      if (a1 != 2309)
      {
        if (a1 == 2323)
        {
          result = &h16ispOutputPreset_IMX913;
          v6 = 25;
          goto LABEL_92;
        }

        goto LABEL_91;
      }

      result = &h16ispOutputPreset_IMX905;
    }

    else
    {
      if (a1 <= 20583)
      {
        if (a1 > 2433)
        {
          if (a1 == 2434)
          {
            result = &h16ispOutputPreset_IMX982;
            v6 = 37;
            goto LABEL_92;
          }

          if (a1 != 3414)
          {
            goto LABEL_91;
          }

          if ((a5 - 51) <= 0x34 && ((1 << (a5 - 51)) & 0x1E00000000000FLL) != 0)
          {
            result = &h16ispOutputPreset_VD56G0_J7xx;
          }

          else
          {
            result = &h16ispOutputPreset_VD56G0;
          }

          goto LABEL_74;
        }

        if (a1 != 2418)
        {
          if (a1 == 2419)
          {
            result = &h16ispOutputPreset_IMX973;
            v6 = 47;
            goto LABEL_92;
          }

          goto LABEL_91;
        }

        result = &h16ispOutputPreset_IMX972;
LABEL_90:
        v6 = 44;
        goto LABEL_92;
      }

      if (a1 > 21300)
      {
        if (a1 != 21301)
        {
          if (a1 == 48879)
          {
            result = &h16ispOutputPreset_FakeSensor;
            v6 = 1;
            goto LABEL_92;
          }

          goto LABEL_91;
        }

        result = &h16ispOutputPreset_VD65G3;
      }

      else
      {
        if (a1 == 20584)
        {
          result = &h16ispOutputPreset_VD56G8;
          goto LABEL_74;
        }

        if (a1 != 20588)
        {
          goto LABEL_91;
        }

        result = &h16ispOutputPreset_VD56GC;
      }
    }

LABEL_81:
    v6 = 2;
    goto LABEL_92;
  }

  if (a1 <= 1555)
  {
    if (a1 <= 1393)
    {
      switch(a1)
      {
        case 1029:
          v7 = (a4 & 0xFFFFFFEF) == 363;
          if ((a4 & 0xFFFFFFEF) == 0x16B)
          {
            v6 = 12;
          }

          else
          {
            v6 = 27;
          }

          v8 = &h16ispOutputPreset_IMX405;
          v9 = &h16ispOutputPreset_IMX405_NO_FES;
          break;
        case 1300:
          result = &h16ispOutputPreset_IMX514;
          v6 = 23;
          goto LABEL_92;
        case 1368:
          v7 = a5 == 69;
          if (a5 == 69)
          {
            v6 = 1;
          }

          else
          {
            v6 = 8;
          }

          v8 = &h16ispOutputPreset_IMX558;
          v9 = &h16ispOutputPreset_IMX558_DCS;
          break;
        default:
          goto LABEL_91;
      }

      goto LABEL_86;
    }

    if (a1 <= 1423)
    {
      if (a1 == 1394)
      {
        result = &h16ispOutputPreset_IMX572;
        v6 = 6;
        goto LABEL_92;
      }

      if (a1 == 1395)
      {
        result = &h16ispOutputPreset_IMX573;
        v6 = 4;
        goto LABEL_92;
      }

      goto LABEL_91;
    }

    if (a1 != 1424)
    {
      if (a1 != 1425)
      {
        goto LABEL_91;
      }

      result = &h16ispOutputPreset_IMX591;
      goto LABEL_81;
    }

    result = &h16ispOutputPreset_IMX590_SoftgateDefault;
LABEL_74:
    v6 = 3;
    goto LABEL_92;
  }

  if (a1 <= 2050)
  {
    if (a1 > 1810)
    {
      if (a1 == 1811)
      {
        result = &h16ispOutputPreset_IMX713;
        v6 = 34;
        goto LABEL_92;
      }

      if (a1 == 1812)
      {
        result = &h16ispOutputPreset_IMX714;
        v6 = 21;
        goto LABEL_92;
      }
    }

    else
    {
      if (a1 == 1556)
      {
        result = &h16ispOutputPreset_IMX614;
        v6 = 16;
        goto LABEL_92;
      }

      if (a1 == 1587)
      {
        result = &h16ispOutputPreset_IMX633;
        v6 = 36;
        goto LABEL_92;
      }
    }

LABEL_91:
    v6 = 0;
    result = 0;
    goto LABEL_92;
  }

  if (a1 > 2130)
  {
    if (a1 == 2131)
    {
      result = &h16ispOutputPreset_IMX853;
      v6 = 65;
      goto LABEL_92;
    }

    if (a1 == 2307)
    {
      result = &h16ispOutputPreset_IMX903;
      v6 = 63;
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  if (a1 == 2051)
  {
    result = &h16ispOutputPreset_IMX803;
    v6 = 66;
    goto LABEL_92;
  }

  if (a1 != 2068)
  {
    goto LABEL_91;
  }

  v7 = (a4 & 0xFFFFFFEF) == 363;
  if ((a4 & 0xFFFFFFEF) == 0x16B)
  {
    v6 = 4;
  }

  else
  {
    v6 = 16;
  }

  v8 = &h16ispOutputPreset_IMX814;
  v9 = &h16ispOutputPreset_IMX814_NO_FES;
LABEL_86:
  if (v7)
  {
    result = v9;
  }

  else
  {
    result = v8;
  }

LABEL_92:
  *a2 = v6;
  return result;
}

void H16ISPResetVideoOutputConfigurationsForNewSelectedFormat(uint64_t a1, uint64_t a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = a1 + 724;
  v5 = *(a1 + 48);
  v6 = *(a1 + 192);
  if (v5 < v6)
  {
    v6 = 0;
  }

  H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(a1 + 156), *(*(a1 + 184) + 120 * (v5 - v6) + 16), &v73, v79);
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 720) = 875704438;
  v7 = *(a1 + 184) + 120 * *(a1 + 48);
  *v4 = *(v7 + 4);
  v8 = *(v7 + 20);
  v9.i64[0] = v8;
  v9.i64[1] = HIDWORD(v8);
  v10 = vcvtq_f64_u64(v9);
  v11 = *(v7 + 28);
  v9.i64[0] = v11;
  v9.i64[1] = HIDWORD(v11);
  *(a1 + 736) = v10;
  *(a1 + 752) = vcvtq_f64_u64(v9);
  *(a1 + 768) = 3;
  if (*(*(*(a2 + 24) + 4304) + 104 * *(a1 + 156) + 16) == 1785950322)
  {
    *(a1 + 768) = 8;
  }

  *(a1 + 824) = 0;
  *(a1 + 788) = 0;
  *(a1 + 772) = 0u;
  *(a1 + 792) = 0;
  *(a1 + 800) = 0;
  *(a1 + 836) = 0;
  *(a1 + 828) = 0;
  *(a1 + 844) = 255;
  v12 = *(a1 + 848);
  if (v12)
  {
    CVPixelBufferPoolRelease(v12);
  }

  *(a1 + 848) = 0;
  for (i = 856; i != 888; i += 8)
  {
    v14 = *(a1 + i);
    if (v14)
    {
      CVPixelBufferRelease(v14);
      *(a1 + i) = 0;
    }
  }

  *(a1 + 888) = 0;
  *(a1 + 892) = 0;
  *(a1 + 896) = 0;
  *(a1 + 904) = 0;
  *(a1 + 912) = 0;
  *(a1 + 920) = 875704438;
  v15 = *(a1 + 184) + 120 * *(a1 + 48);
  *(v4 + 200) = *(v15 + 4);
  v16 = *(v15 + 20);
  v17.i64[0] = v16;
  v17.i64[1] = HIDWORD(v16);
  *(v4 + 212) = vcvtq_f64_u64(v17);
  v18 = *(v15 + 28);
  v17.i64[0] = v18;
  v17.i64[1] = HIDWORD(v18);
  *(v4 + 228) = vcvtq_f64_u64(v17);
  *(a1 + 968) = 3;
  *(a1 + 1024) = 0;
  *(a1 + 988) = 0;
  *(a1 + 972) = 0u;
  *(a1 + 1000) = 0;
  *(a1 + 992) = 0;
  *(a1 + 1036) = 0;
  *(a1 + 1028) = 0;
  *(a1 + 1044) = 255;
  v19 = *(a1 + 1048);
  if (v19)
  {
    CVPixelBufferPoolRelease(v19);
  }

  *(a1 + 1048) = 0;
  for (j = 1056; j != 1088; j += 8)
  {
    v21 = *(a1 + j);
    if (v21)
    {
      CVPixelBufferRelease(v21);
      *(a1 + j) = 0;
    }
  }

  *(a1 + 1088) = 0;
  *(a1 + 1092) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 875704438;
  v22 = *(a1 + 184) + 120 * *(a1 + 48);
  v23 = (a1 + 1136);
  if (*(v22 + 36))
  {
    v24 = *(v22 + 40);
    *(v4 + 400) = v24;
    *v23 = 0;
    *(a1 + 1144) = 0;
    v25.i64[0] = v24;
    v25.i64[1] = HIDWORD(v24);
    *(a1 + 1152) = vcvtq_f64_u64(v25);
  }

  else
  {
    v26 = v78;
    v27 = HIDWORD(v78);
    *(a1 + 1124) = v78;
    *(a1 + 1128) = v27;
    *v23 = 0;
    *(a1 + 1144) = 0;
    *(a1 + 1152) = v26;
    *(a1 + 1160) = v27;
    if (v75)
    {
      *(a1 + 1124) = v26 / 2;
      *(a1 + 1152) = v26 * 0.5;
    }
  }

  *(a1 + 1168) = 3;
  *(a1 + 1224) = 0;
  *(a1 + 1188) = 0;
  *(a1 + 1172) = 0u;
  *(a1 + 1192) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1236) = 0;
  *(a1 + 1228) = 0;
  *(a1 + 1244) = 255;
  v28 = *(a1 + 1248);
  if (v28)
  {
    CVPixelBufferPoolRelease(v28);
  }

  *(a1 + 1248) = 0;
  for (k = 1256; k != 1288; k += 8)
  {
    v30 = *(a1 + k);
    if (v30)
    {
      CVPixelBufferRelease(v30);
      *(a1 + k) = 0;
    }
  }

  *(a1 + 1288) = 0;
  *(a1 + 1292) = 0;
  *(a1 + 1296) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = 0;
  *(a1 + 1320) = 875704438;
  v31 = *(a1 + 184) + 120 * *(a1 + 48);
  v32 = (a1 + 1336);
  v33 = (v4 + 628);
  if (*(v31 + 64))
  {
    v34 = *(v31 + 68);
    *(v4 + 600) = v34;
    *v32 = 0;
    *(a1 + 1344) = 0;
    v35.i64[0] = v34;
    v35.i64[1] = HIDWORD(v34);
    *v33 = vcvtq_f64_u64(v35);
  }

  else
  {
    v36 = v78;
    v37 = HIDWORD(v78);
    *(a1 + 1324) = v78;
    *(a1 + 1328) = v37;
    *v32 = 0;
    *(a1 + 1344) = 0;
    *(a1 + 1352) = v36;
    *(a1 + 1360) = v37;
    if (v75)
    {
      *(v4 + 600) = v36 / 2;
      v33->f64[0] = v36 * 0.5;
    }
  }

  *(a1 + 1368) = 3;
  *(a1 + 1424) = 0;
  *(a1 + 1388) = 0;
  *(a1 + 1372) = 0u;
  *(a1 + 1392) = 0;
  *(a1 + 1400) = 0;
  *(a1 + 1436) = 0;
  *(a1 + 1428) = 0;
  *(a1 + 1444) = 255;
  v38 = *(a1 + 1448);
  if (v38)
  {
    CVPixelBufferPoolRelease(v38);
  }

  *(a1 + 1448) = 0;
  for (m = 1456; m != 1488; m += 8)
  {
    v40 = *(a1 + m);
    if (v40)
    {
      CVPixelBufferRelease(v40);
      *(a1 + m) = 0;
    }
  }

  *(a1 + 1488) = 0;
  *(a1 + 1492) = 1;
  *(a1 + 1496) = 0;
  *(a1 + 1504) = 0;
  *(a1 + 1512) = 0;
  *(a1 + 1520) = 875704438;
  v41 = *(a1 + 184) + 120 * *(a1 + 48);
  v42 = (a1 + 1536);
  if (*(v41 + 64))
  {
    v43 = *(v41 + 68);
    *(v4 + 800) = v43;
    *v42 = 0;
    *(a1 + 1544) = 0;
    v44.i64[0] = v43;
    v44.i64[1] = HIDWORD(v43);
    *(a1 + 1552) = vcvtq_f64_u64(v44);
  }

  else
  {
    v45 = v78;
    v46 = HIDWORD(v78);
    *(a1 + 1524) = v78;
    *(a1 + 1528) = v46;
    *v42 = 0;
    *(a1 + 1544) = 0;
    *(a1 + 1552) = v45;
    *(a1 + 1560) = v46;
    if (v75)
    {
      *(a1 + 1524) = v45 / 2;
      *(a1 + 1552) = v45 * 0.5;
    }
  }

  *(a1 + 1568) = 3;
  *(a1 + 1624) = 0;
  *(a1 + 1588) = 0;
  *(a1 + 1572) = 0u;
  *(a1 + 1592) = 0;
  *(a1 + 1600) = 0;
  *(a1 + 1636) = 0;
  *(a1 + 1628) = 0;
  *(a1 + 1644) = 255;
  v47 = *(a1 + 1648);
  if (v47)
  {
    CVPixelBufferPoolRelease(v47);
  }

  *(a1 + 1648) = 0;
  *(a1 + 1688) = 0;
  *(a1 + 1692) = 0;
  *(a1 + 1696) = 0;
  v71 = 0;
  v72 = 0;
  if (ConfigSupportsContextSwitchCaptures(a1, a2, &v72, &v71))
  {
    *(a1 + 1712) = 0;
    *(a1 + 1720) = 1650943796;
    v50 = v71;
    v49 = v72;
    *(a1 + 1724) = v72;
    *(a1 + 1728) = v50;
    *(a1 + 1736) = 0u;
    *(a1 + 1752) = v49;
    *(a1 + 1760) = v50;
    *(a1 + 1768) = 3;
    *(a1 + 1824) = 0;
    *(a1 + 1788) = 0;
    *(a1 + 1772) = 0u;
    *(a1 + 1792) = 0;
    *(a1 + 1800) = 0;
    *(a1 + 1836) = 0;
    *(a1 + 1828) = 0;
    *(a1 + 1844) = 255;
    *(a1 + 1848) = 0;
    *(a1 + 1888) = 0;
    *(a1 + 1892) = 0;
    *(a1 + 1896) = 0;
  }

  *(a1 + 1704) = 0;
  *(a1 + 1904) = 0;
  *(a1 + 1928) = 0;
  *(a1 + 1912) = 0u;
  *(a1 + 1936) = 0u;
  *(a1 + 1952) = 0u;
  *(a1 + 1968) = 3;
  *(a1 + 2024) = 0;
  *(a1 + 1988) = 0;
  *(a1 + 1972) = 0u;
  *(a1 + 1992) = 0;
  *(a1 + 2000) = 0;
  *(a1 + 2036) = 0;
  *(a1 + 2028) = 0;
  *(a1 + 2044) = 255;
  *(a1 + 2048) = 0;
  *(a1 + 2088) = 0;
  *(a1 + 2092) = 0;
  *(a1 + 2096) = 0;
  *(a1 + 2104) = 0;
  *(a1 + 2128) = 0;
  *(a1 + 2112) = 0u;
  *(a1 + 2136) = 0u;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 3;
  *(a1 + 2176) = 257;
  *(a1 + 2224) = 0;
  *(a1 + 2178) = 0;
  *(a1 + 2185) = 0;
  *(a1 + 2192) = 0;
  *(a1 + 2200) = 0;
  *(a1 + 2228) = 0;
  *(a1 + 2236) = 0;
  *(a1 + 2244) = 255;
  *(a1 + 2248) = 0;
  *(a1 + 2288) = 0;
  *(a1 + 2292) = 0;
  *(a1 + 2296) = 0;
  *(a1 + 2304) = 0;
  *(a1 + 2312) = 0;
  *(a1 + 2320) = 1650946098;
  v51 = *(a1 + 184) + 120 * *(a1 + 48);
  if (*(v51 + 36) == 1)
  {
    v52 = *(v51 + 40);
    v53 = (v51 + 44);
  }

  else
  {
    v52 = v78;
    v53 = &v78 + 1;
  }

  v54 = *v53;
  *(a1 + 2324) = v52;
  *(a1 + 2328) = v54;
  v55 = 0uLL;
  *(a1 + 2336) = 0u;
  *(a1 + 2352) = 0u;
  *(a1 + 2368) = 3;
  *(a1 + 2424) = 0;
  *(a1 + 2372) = 0u;
  *(a1 + 2388) = 0;
  *(a1 + 2392) = 0;
  *(a1 + 2400) = 0;
  *(a1 + 2428) = 0;
  *(a1 + 2436) = 0;
  *(a1 + 2444) = 255;
  *(a1 + 2488) = 0;
  *(a1 + 2492) = 0;
  *(a1 + 2496) = 0;
  v56 = *(a1 + 2448);
  if (v56)
  {
    CVPixelBufferPoolRelease(v56);
    v55 = 0uLL;
  }

  v57 = v78;
  v58.i64[0] = v76;
  v58.i64[1] = v77;
  *(v4 + 1812) = vcvtq_f64_s64(v58);
  *(a1 + 2448) = 0;
  *(a1 + 2504) = 0;
  *(a1 + 2512) = 0;
  *(a1 + 2520) = 1278226742;
  v59 = v73;
  *(a1 + 2524) = v73;
  v60 = v74;
  *(a1 + 2528) = v74;
  v58.i64[0] = v57;
  v58.i64[1] = HIDWORD(v57);
  *(v4 + 1828) = vcvtq_f64_u64(v58);
  *(a1 + 2568) = 3;
  *(a1 + 2624) = 0;
  *(a1 + 2588) = 0;
  *(a1 + 2572) = v55;
  *(a1 + 2592) = 0;
  *(a1 + 2600) = 0;
  *(a1 + 2636) = 0;
  *(a1 + 2628) = 0;
  *(a1 + 2644) = 255;
  *(a1 + 2648) = 0;
  *(a1 + 2688) = 0;
  *(a1 + 2692) = 0;
  *(a1 + 2696) = 0;
  *(a1 + 2704) = 0;
  *(a1 + 2712) = 0;
  *(a1 + 2720) = 1278226742;
  *(a1 + 2724) = v59;
  *(a1 + 2728) = v60;
  *(a1 + 2736) = v55;
  *(a1 + 2752) = v59;
  *(a1 + 2760) = v60;
  *(a1 + 2768) = 3;
  *(a1 + 2824) = 0;
  *(a1 + 2788) = 0;
  *(a1 + 2772) = v55;
  *(a1 + 2800) = 0;
  *(a1 + 2792) = 0;
  *(a1 + 2836) = 0;
  *(a1 + 2828) = 0;
  *(a1 + 2844) = 1;
  v61 = *(a1 + 2848);
  if (v61)
  {
    CVPixelBufferPoolRelease(v61);
  }

  *(a1 + 2848) = 0;
  *(a1 + 2888) = 0;
  *(a1 + 2892) = 0;
  *(a1 + 2896) = 0;
  *(a1 + 4080) = 0;
  *(a1 + 4088) = 0;
  *(a1 + 4096) = 1785950320;
  *(v4 + 3388) = 0;
  *(a1 + 4108) = 8;
  v62 = *(a1 + 4136);
  if (v62)
  {
    CFRelease(v62);
  }

  *(a1 + 4136) = 0;
  v69 = 0;
  v70 = 0;
  v63 = *(a1 + 180);
  if (v63 == 1425)
  {
    H16ISP::JasperConfigManager::maxPeridotCloudSize(v73, v74, &v70, &v69, v48);
    v65 = v69;
    v64 = v70;
  }

  else
  {
    v64 = 0;
    v65 = 0;
    if (v63 == 1424)
    {
      v64 = 144;
      v70 = 144;
      v65 = H16ISP::JasperConfigManager::maxJasperCloudSizeBytes(0);
      v69 = v65;
    }
  }

  *(a1 + 4100) = v65;
  *(a1 + 4104) = v64;
  *(a1 + 2904) = 0;
  *(a1 + 2920) = 0;
  *(a1 + 3020) = 0;
  *(a1 + 2940) = 0;
  *(a1 + 3021) = 256;
  *(a1 + 2953) = 0;
  *(a1 + 2945) = 0;
  *(a1 + 3016) = 0;
  *(a1 + 3024) = 0;
  *(a1 + 2956) = 0u;
  *(a1 + 2972) = 0u;
  *(a1 + 2984) = 0u;
  *(a1 + 3028) = -1;
  *(a1 + 2928) = 1;
  *(a1 + 2932) = 1065353216;
  *(a1 + 3008) = 0;
  v66 = *(a1 + 3000);
  if (v66)
  {
    CFRelease(v66);
  }

  *(a1 + 3000) = 0;
  *(a1 + 3072) = 0;
  MetadataOutputFeatureResetConfiguration(a1 + 3080);
  MetadataOutputFeatureResetConfiguration(a1 + 3176);
  v67 = a1 + 3272;
  v68 = 4;
  do
  {
    MetadataOutputFeatureResetConfiguration(v67);
    v67 += 96;
    --v68;
  }

  while (v68);
  MetadataOutputFeatureResetConfiguration(a1 + 3656);
  MetadataOutputFeatureResetConfiguration(a1 + 3752);
  *(a1 + 3856) = 0;
  *(a1 + 3848) = 0;
  MetadataOutputFeatureResetConfiguration(a1 + 3864);
  *(a1 + 3960) = 0;
  *(a1 + 3972) = 0;
  *(v4 + 3238) = 0;
  MetadataOutputFeatureResetConfiguration(a1 + 3976);
}

BOOL ConfigSupportsContextSwitchCaptures(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 48);
  v9 = *(a1 + 192);
  if (v8 < v9)
  {
    v9 = 0;
  }

  if (H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(a1 + 156), *(*(a1 + 184) + 120 * (v8 - v9) + 16), v16, v20))
  {
    v10 = 0;
    v11 = 0;
LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  v10 = v16[0];
  v11 = v16[1];
  v13 = *(a2 + 24);
  v14 = *(a1 + 156);
  if (!*(*(v13 + 4304) + 104 * v14 + 32))
  {
    goto LABEL_5;
  }

  if (v18)
  {
    result = 1;
  }

  else
  {
    if (v17 == 0xFFFF || H16ISP::H16ISPDevice::GetCameraConfig(v13, v14, v17, v15, v19))
    {
      goto LABEL_5;
    }

    result = v15[0] > v16[0];
    if (v15[0] > v16[0])
    {
      v10 = v15[0];
      v11 = v15[1];
    }
  }

LABEL_6:
  if (a3)
  {
    *a3 = v10;
  }

  if (a4)
  {
    *a4 = v11;
  }

  return result;
}

void MetadataOutputFeatureResetConfiguration(uint64_t a1)
{
  *(a1 + 81) = 0;
  MetadataOutputBufferPoolRelease(a1);
  if ((*(a1 + 80) & 1) == 0)
  {
    *(a1 + 44) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 88) = 0;
  }
}

CFTypeID MetadataOutputBufferPoolRelease(CFTypeID *a1)
{
  v2 = *a1;
  if (v2 == CVPixelBufferPoolGetTypeID())
  {
    v4 = a1 + 1;
    v3 = a1[1];
    if (v3)
    {
      CVPixelBufferPoolRelease(v3);
LABEL_7:
      *v4 = 0;
      goto LABEL_8;
    }
  }

  v5 = *a1;
  if (v5 == CVDataBufferPoolGetTypeID())
  {
    v4 = a1 + 1;
    v6 = a1[1];
    if (v6)
    {
      CFRelease(v6);
      goto LABEL_7;
    }
  }

LABEL_8:
  result = CFNullGetTypeID();
  *a1 = result;
  return result;
}

void DCNUInit(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (H16ISP::H16ISPDevice::isSensorType(*(a1 + 24), *(a2 + 156), 1919246706))
  {
    bzero((a2 + 4984), 0xCFC0uLL);
    if (stat("/var/mobile/Library/ISP/CalData/DCNUPixbuf_0", &v7) || stat("/var/mobile/Library/ISP/CalData/DCNUMetadata_0", &v7))
    {
      v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v3 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v9 = "DCNUInitInternal";
        _os_log_impl(&dword_2247DB000, v3, OS_LOG_TYPE_INFO, "%s - DCNU files not present... skipping DCNU operations\n", buf, 0xCu);
      }

      *(a2 + 58168) = 0;
      *(a2 + 4976) = 0;
    }

    else
    {
      *(a2 + 58168) = 1;
      v4 = dispatch_queue_create("com.apple.isp.dcnu", 0);
      *(a2 + 4976) = v4;
      if (v4)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___ZL8DCNUInitP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke;
        block[3] = &__block_descriptor_tmp_1813;
        block[4] = a2;
        dispatch_async(v4, block);
      }

      else
      {
        v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v5 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v5;
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          DCNUInit();
        }
      }
    }
  }
}

uint64_t getPCECalib(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2;
  v24 = *MEMORY[0x277D85DE8];
  SensorChannel = H16ISP::H16ISPDevice::getSensorChannel(v2, 1718186595, 1852793709);
  if (SensorChannel == -1)
  {
    v12 = 0;
  }

  else
  {
    v16 = 24577;
    v17 = SensorChannel;
    bzero(v18, 0x344CuLL);
    v11 = H16ISP::H16ISPDevice::ISP_SendCommand(v9, v15, 0x3458u, 0, 0xFFFFFFFF);
    v12 = 0;
    if (!v11)
    {
      if (v6)
      {
        *(v6 + 12) = *&v20[12];
        *v6 = *v20;
      }

      if (v4)
      {
        v13 = v22;
        *v4 = v21;
        *(v4 + 16) = v13;
        *(v4 + 32) = v23;
      }

      memcpy(v8, v19, 0x3400uLL);
      v12 = v18[0];
    }
  }

  return v12 & 1;
}

unint64_t H16ISP::H16ISPDevice::getSensorChannel(uint64_t a1, int a2, int a3)
{
  v4 = 0;
  result = 0;
  v6 = *(a1 + 4668);
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(a1 + 4668);
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 6;
  }

  while (1)
  {
    if (result <= 5 && (v9 = *(a1 + 4304) + v4, *(v9 + 8)))
    {
      v10 = *(v9 + 16);
      if (v10 == a2)
      {
        return result;
      }
    }

    else
    {
      if (a2 == -1)
      {
        return result;
      }

      v10 = -1;
    }

    if (v10 == a3)
    {
      break;
    }

    ++result;
    v4 += 104;
    if (v8 == result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t H16ISP::JasperConfigManager::maxPeridotCloudSize(H16ISP::JasperConfigManager *this, unint64_t a2, _DWORD *a3, unsigned int *a4, unsigned int *a5)
{
  v6 = this;
  v7 = a2;
  *a3 = [MEMORY[0x277D3A148] generatedPointCloudsLengthForRawSensorDimensions:{a3, a4, a5, this, a2}];
  result = [MEMORY[0x277D3A148] requiredStorageBytesForGeneratedPointCloudsForRawSensorDimensions:{v6, v7}];
  *a4 = result;
  return result;
}

void LogCaptureDeviceEvent(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, __CFString *a6, int a7)
{
  if (a2)
  {
    if ((qword_2810032E8 & (1 << a1)) == 0)
    {
      return;
    }

    pthread_mutex_lock((a2 + 32));
    v14 = *(a2 + 160);
    if (!v14 || *(a2 + 168) >= 1 && CFArrayGetCount(v14) > *(a2 + 168))
    {
      pthread_mutex_unlock((a2 + 32));
      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v15 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LogCaptureDeviceEvent();
      }

      return;
    }

    pthread_mutex_unlock((a2 + 32));
    v17 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      return;
    }

    v19 = Mutable;
    *&idx[1] = mach_absolute_time();
    v20 = CFNumberCreate(v17, kCFNumberLongLongType, &idx[1]);
    CFDictionaryAddValue(v19, @"Timestamp", v20);
    CFRelease(v20);
    if (a1 <= 0x17)
    {
      CFDictionaryAddValue(v19, @"EventType", kCMEventLogger_EventTypeString[a1]);
    }

    pthread_mutex_lock((a2 + 32));
    if (a3)
    {
      v21 = *(a2 + 120);
      if (v21)
      {
        idx[0] = 0;
        if (CFArrayGetCount(v21) >= 1)
        {
          while (1)
          {
            CFArrayGetValueAtIndex(*(a2 + 120), idx[0]);
            if (CMBaseObjectGetDerivedStorage() == a3)
            {
              break;
            }

            v22 = ++idx[0];
            if (CFArrayGetCount(*(a2 + 120)) <= v22)
            {
              goto LABEL_24;
            }
          }

          v23 = CFNumberCreate(v17, kCFNumberIntType, idx);
          CFDictionaryAddValue(v19, @"StreamIndex", v23);
          CFRelease(v23);
        }
      }
    }

LABEL_24:
    allocator = v17;
    pthread_mutex_unlock((a2 + 32));
    if (a4)
    {
      v24 = *(a4 + 8);
      if (v24)
      {
        if (*(a4 + 16))
        {
          if (v24 <= 2)
          {
            CFDictionaryAddValue(v19, @"SyncGroup", kCMEventLogger_SynchronizationGroupString[v24]);
          }

          v25 = CFStringCreateMutable(0, 0);
          if (v25)
          {
            v26 = v25;
            if (CFArrayGetCount(*(a4 + 16)) >= 1)
            {
              v27 = 0;
              do
              {
                CFArrayGetValueAtIndex(*(a4 + 16), v27);
                FigCaptureStreamGetFigBaseObject();
                DerivedStorage = CMBaseObjectGetDerivedStorage();
                if (DerivedStorage)
                {
                  v29 = ", ";
                  if (!v27)
                  {
                    v29 = "";
                  }

                  CFStringAppendFormat(v26, 0, @"%s%d", v29, *(DerivedStorage + 156));
                }

                ++v27;
              }

              while (CFArrayGetCount(*(a4 + 16)) > v27);
            }

            CFDictionaryAddValue(v19, @"SupportedGroupChannelIndex", v26);
            CFRelease(v26);
          }
        }
      }
    }

    if (a1 > 0x17)
    {
      goto LABEL_48;
    }

    if (((1 << a1) & 0x1CE00) != 0)
    {
      if (a3)
      {
        v30 = CFNumberCreate(allocator, kCFNumberIntType, (a3 + 156));
        CFDictionaryAddValue(v19, @"CameraChannel", v30);
        CFRelease(v30);
      }

      goto LABEL_57;
    }

    if (((1 << a1) & 0xF80000) != 0)
    {
      if (a5)
      {
        CFDictionaryAddValue(v19, @"PropertyKey", a5);
      }

LABEL_55:
      if (a6)
      {
LABEL_56:
        H16ISPParsePropertyValue(v19, a6);
      }

LABEL_57:
      v33 = MEMORY[0x277CBED28];
      if (!a7)
      {
        v33 = MEMORY[0x277CBED10];
      }

      CFDictionaryAddValue(v19, @"EventCompleted", *v33);
      pthread_mutex_lock((a2 + 32));
      v34 = *(a2 + 160);
      if (v34)
      {
        CFArrayAppendValue(v34, v19);
        FlushCaptureDeviceEvent(a2);
      }

      pthread_mutex_unlock((a2 + 32));
      CFRelease(v19);
      return;
    }

    if (((1 << a1) & 0x63000) != 0)
    {
      if (a3)
      {
        v31 = CFNumberCreate(allocator, kCFNumberIntType, (a3 + 156));
        CFDictionaryAddValue(v19, @"CameraChannel", v31);
        CFRelease(v31);
      }
    }

    else
    {
LABEL_48:
      if (a1 - 3 >= 5)
      {
        goto LABEL_57;
      }
    }

    if (a5)
    {
      CFDictionaryAddValue(v19, @"PropertyKey", a5);
      if (CFEqual(a5, *MEMORY[0x277CF5DD8]))
      {
        goto LABEL_57;
      }

      if (CFEqual(a5, *MEMORY[0x277CF5DC8]))
      {
        goto LABEL_57;
      }

      v32 = CFEqual(a5, *MEMORY[0x277CF57B0]);
      if (!a6 || v32)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v16 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LogCaptureDeviceEvent();
  }
}

uint64_t H16ISP::H16ISPDevice::RegisterDeviceMessageNotificationProc(uint64_t this, int (*a2)(H16ISP::H16ISPDevice *, unsigned int, void *, void *), void *a3)
{
  *(this + 56) = a2;
  *(this + 64) = a3;
  return this;
}

uint64_t H16ISPCaptureDeviceCopyProperty(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LogCaptureDeviceEvent(3u, DerivedStorage, 0, 0, a2, 0, 0);
  pthread_mutex_lock((DerivedStorage + 32));
  if (!*DerivedStorage)
  {
    if (!*(DerivedStorage + 24))
    {
      pthread_mutex_unlock((DerivedStorage + 32));
      v8 = 4294954616;
      goto LABEL_21;
    }

    if (deviceProperties[0])
    {
      v9 = deviceProperties;
      if (CFEqual(deviceProperties[0], a2))
      {
LABEL_10:
        if (v9[3])
        {
          if (IsPropertySupportedForDevice(v9, DerivedStorage))
          {
            v8 = (v9[3])(a3, a4, 0, 0, DerivedStorage);
            if (v8)
            {
              v12 = CFCopyDescription(v9[1]);
              v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v13 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
              }

              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                v15 = 136315906;
                v16 = "H16ISPCaptureDeviceCopyProperty";
                v17 = 2080;
                CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
                v19 = 2080;
                v20 = CFStringGetCStringPtr(v12, 0x8000100u);
                v21 = 1024;
                v22 = v8;
                _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_DEFAULT, "%s - Error getting %s %s: %d\n", &v15, 0x26u);
              }

              CFRelease(v12);
            }
          }

          else
          {
            v8 = 4294954509;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v10 = 1;
        while (1)
        {
          v11 = &deviceProperties[5 * v10];
          if (!*v11)
          {
            break;
          }

          ++v10;
          if (CFEqual(*v11, a2))
          {
            v9 = v11;
            goto LABEL_10;
          }
        }
      }
    }

    v8 = 4294954512;
LABEL_19:
    pthread_mutex_unlock((DerivedStorage + 32));
    LogCaptureDeviceEvent(3u, DerivedStorage, 0, 0, a2, 0, 1);
    goto LABEL_21;
  }

  pthread_mutex_unlock((DerivedStorage + 32));
  v8 = 4294954511;
  FigSignalError(4294954511, "invalidated");
LABEL_21:
  kdebug_trace();
  return v8;
}

uint64_t IsPropertySupportedForDevice(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((v3 & 0x200) != 0 && *(*(*(a2 + 24) + 4304) + 639) != 1)
  {
    return 0;
  }

  if ((v3 & 0x2000) == 0)
  {
    return 1;
  }

  if (CFArrayGetCount(*(a2 + 120)) < 1)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    CFArrayGetValueAtIndex(*(a2 + 120), v5);
    FigCaptureStreamGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a2 + 24), *(DerivedStorage + 156), 1785950322);
    if (isSensorType)
    {
      break;
    }

    ++v5;
  }

  while (v5 < CFArrayGetCount(*(a2 + 120)));
  return isSensorType;
}

uint64_t CopyDeviceSupportedPropertiesDictionary(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Mutable = *(a5 + 96);
  if (!Mutable)
  {
    v17 = a2;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = deviceProperties[0] == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = *MEMORY[0x277CBED10];
      v9 = 1;
      v10 = MEMORY[0x277CF6AE0];
      v11 = MEMORY[0x277CF6AE8];
      v12 = deviceProperties;
      do
      {
        if (v12[2])
        {
          if (v12[3])
          {
            v13 = v10;
          }

          else
          {
            v13 = v11;
          }
        }

        else
        {
          v13 = MEMORY[0x277CF6AD8];
        }

        v14 = *v13;
        if (IsPropertySupportedForDevice(v12, a5))
        {
          addPropertyDictionaryToPropertiesDictionary(Mutable, *v12, v12[1], v14, v8);
        }

        v12 = &deviceProperties[5 * v9++];
      }

      while (*v12);
    }

    *(a5 + 96) = Mutable;
    a2 = v17;
  }

  *a2 = Mutable;
  v15 = *(a5 + 96);
  if (v15)
  {
    CFRetain(v15);
  }

  return 0;
}

void addPropertyDictionaryToPropertiesDictionary(__CFDictionary *a1, const __CFString *a2, __CFString *a3, __CFString *a4, const __CFBoolean *a5)
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return;
  }

  values = 0;
  v16[0] = 0;
  v16[1] = 0;
  v14[0] = 0;
  v14[1] = 0;
  keys = 0;
  if (!a3)
  {
    v10 = 0;
    p_values = &values;
    p_keys = &keys;
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  p_keys = v14;
  p_values = v16;
  keys = *MEMORY[0x277CF6AF8];
  values = a3;
  v10 = 1;
  if (a4)
  {
LABEL_4:
    *p_keys = *MEMORY[0x277CF6AD0];
    *p_values = a4;
    ++v10;
  }

LABEL_5:
  if (a5)
  {
    v14[v10 - 1] = *MEMORY[0x277CF6AF0];
    v16[v10++ - 1] = a5;
  }

  v11 = CFDictionaryCreate(*MEMORY[0x277CBECE8], &keys, &values, v10, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v11)
  {
    v12 = v11;
    CFDictionaryAddValue(a1, a2, v11);
    CFRelease(v12);
  }
}

uint64_t H16ISP::H16ISPDevice::GetCameraConfig(uint64_t a1, unsigned int a2, unsigned int a3, void *a4, void *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 4))
  {
    NumCameraConfigs = H16ISP::H16ISPDevice::GetNumCameraConfigs(a1, a2);
    if (NumCameraConfigs <= a3)
    {
      v12 = NumCameraConfigs;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      v11 = 3758097090;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 4668);
        v15 = 136316162;
        v16 = "GetCameraConfig";
        v17 = 1024;
        v18 = a2;
        v19 = 1024;
        v20 = v14;
        v21 = 1024;
        v22 = a3;
        v23 = 1024;
        v24 = v12;
        _os_log_error_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s - chan: %d, numChannels: %d, index: %d, numConfigs: %d\n", &v15, 0x24u);
      }
    }

    else
    {
      memmove(a4, (*(*(a1 + 40) + 432 * a2 + 8) + 212 * a3), 0xD4uLL);
      memmove(a5, (*(a1 + 40) + 432 * a2 + 32), 0x190uLL);
      return 0;
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v11 = 3758097112;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::GetCameraConfig();
    }
  }

  return v11;
}

float H16ISP::H16ISPDevice::getANSTVersion(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(this + 4))
  {
    H16ISP::H16ISPDevice::GetCameraConfig(this, a2, 0, v4, v5);
    return (v5[317] / 10.0) + v5[318];
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v2 = -536870000.0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::getANSTVersion();
    }
  }

  return v2;
}

uint64_t CopyStreamArray(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 120);
  *a2 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  return 0;
}

uint64_t H16ISPCaptureStreamCopyProperty(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  v8 = CMBaseObjectGetDerivedStorage();
  LogCaptureDeviceEvent(0xCu, v8, DerivedStorage, 0, a2, 0, 0);
  pthread_mutex_lock((DerivedStorage + 264));
  if (*DerivedStorage)
  {
    pthread_mutex_unlock((DerivedStorage + 264));
    v9 = 4294954511;
    FigSignalError(4294954511, "invalidated");
  }

  else
  {
    valuePtr = 0;
    Value = CFDictionaryGetValue(*(v8 + 128), a2);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      if (valuePtr <= 0x175 && (v11 = &streamProperties[6 * valuePtr], v11[3]))
      {
        if (!IsPropertySupportedForStream(v11, DerivedStorage, v8))
        {
          pthread_mutex_unlock((DerivedStorage + 264));
          v9 = 4294954509;
          goto LABEL_18;
        }

        if (!*(DerivedStorage + 1) && (streamProperties[6 * valuePtr + 4] & 0x100000000) != 0)
        {
          pthread_mutex_unlock((DerivedStorage + 264));
          v9 = 4294954607;
          goto LABEL_18;
        }

        v9 = (streamProperties[6 * valuePtr + 3])(a3, a4, DerivedStorage, 0, v8);
        if (v9)
        {
          v12 = CFCopyDescription(streamProperties[6 * valuePtr + 1]);
          v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v13 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
            v15 = CFStringGetCStringPtr(v12, 0x8000100u);
            *buf = 136315906;
            v19 = "H16ISPCaptureStreamCopyProperty";
            v20 = 2080;
            v21 = CStringPtr;
            v22 = 2080;
            v23 = v15;
            v24 = 1024;
            v25 = v9;
            _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_DEFAULT, "%s - Error getting %s %s: %d\n", buf, 0x26u);
          }

          CFRelease(v12);
        }
      }

      else
      {
        v9 = 4294954512;
      }
    }

    else
    {
      v9 = 4294954509;
    }

    pthread_mutex_unlock((DerivedStorage + 264));
    LogCaptureDeviceEvent(0xCu, v8, DerivedStorage, 0, a2, 0, 1);
  }

LABEL_18:
  kdebug_trace();
  return v9;
}

BOOL IsPropertySupportedForStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 24);
  v7 = *(v6 + 4304);
  v8 = v7 + 8;
  v9 = *(a2 + 156);
  v10 = *(v7 + 8 + 104 * v9 + 8);
  if (*(v7 + 633))
  {
    v11 = 1;
  }

  else
  {
    v11 = *(v7 + 636);
  }

  H16ISP::H16ISPDevice::GetCameraConfig(v6, v9, 0, v17, v18);
  result = 0;
  if (v10 <= 1785950321)
  {
    if (v10 == 1718186595)
    {
      if ((*(a1 + 40) & 0x10) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v10 != 1718775412 && v10 != 1718776695)
      {
        return result;
      }

      if ((*(a1 + 40) & 8) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10 > 1919251318)
  {
    if (v10 == 1919251319)
    {
      if ((*(a1 + 40) & 4) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v10 != 1919251564)
      {
        return result;
      }

      if ((*(a1 + 40) & 2) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10 == 1785950322)
  {
    if ((*(a1 + 40) & 0x20) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v10 != 1919246706)
    {
      return result;
    }

    if ((*(a1 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *(a1 + 32);
  if ((v14 & 0x8000) != 0 && *(v7 + 652) < 17 || (v14 & 0x8000000) != 0 && *(v7 + 652) < 18 || (v14 & 1) != 0 && !*(a2 + 668) && !*(v8 + 104 * *(a2 + 156) + 16))
  {
    return 0;
  }

  if ((v14 & 0x100) == 0 || (result = 0, v18[61]) && v18[62] >= 2u)
  {
    if ((v14 & 2) != 0 && !*(a2 + 664) || (v14 & 4) != 0 && !*(a2 + 672) || (v14 & 8) != 0 && *(v7 + 638) != 1)
    {
      return 0;
    }

    if (v14 & 0x10) == 0 || (result = 0, *(v7 + 632) == 1) && ((byte_2810033C4 | v11))
    {
      if ((v14 & 0x20) == 0 || (result = 0, (*(a2 + 4256) & 1) == 0) && v10 != 1785950322)
      {
        if ((v14 & 0x40) != 0 && (*(a2 + 4256) & 1) == 0 && v10 != 1785950322 || (v14 & 0x2000) != 0 && v10 != 1785950322 || (v14 & 0x400) != 0 && v10 != 1919251564 && ((*(a2 + 4256) & 1) == 0 && v10 != 1919246706 || v10 == 1718186595 && *(a2 + 4257) != 1) || (v14 & 0x80) != 0 && !*(a2 + 676) || (v14 & 0x20000) != 0 && !*(a2 + 680) && !*(a2 + 676) || (v14 & 0x800) != 0 && !*(a2 + 684) || (v14 & 0x10000) != 0 && *(v8 + 104 * *(a2 + 156) + 52) != 1 || (v14 & 0x200) != 0 && (*(v7 + 639) != 1 || !*(v8 + 104 * *(a2 + 156) + 52)) || (v14 & 0x40000) != 0 && !*(a2 + 688) || (v14 & 0x80000) != 0 && *(a2 + 180) == 48879)
        {
          return 0;
        }

        if ((v14 & 0x100000) == 0)
        {
          if ((v14 & 0x200000) == 0)
          {
            return ((v14 & 0x400000) == 0 || (v19 & 2) != 0) && ((v14 & 0x800000) == 0 || (v19 & 1) != 0 || *(a2 + 4256) == 1) && ((v14 & 0x1000000) == 0 || v20 == 1) && ((v14 & 0x4000000) == 0 || *(a2 + 664) && *(v8 + 104 * *(a2 + 156) + 28)) && ((v14 & 0x2000000) == 0 || *(a2 + 2925) == 1);
          }

LABEL_76:
          if (v19)
          {
            return ((v14 & 0x400000) == 0 || (v19 & 2) != 0) && ((v14 & 0x800000) == 0 || (v19 & 1) != 0 || *(a2 + 4256) == 1) && ((v14 & 0x1000000) == 0 || v20 == 1) && ((v14 & 0x4000000) == 0 || *(a2 + 664) && *(v8 + 104 * *(a2 + 156) + 28)) && ((v14 & 0x2000000) == 0 || *(a2 + 2925) == 1);
          }

          return 0;
        }

        result = 0;
        if (byte_2810033C5 == 1 && v10 == 1718186595)
        {
          if (H16ISP::H16ISPDevice::getSensorChannel(*(a3 + 24), 1718775412, 1718776695) == -1 || CFArrayGetCount(*(a3 + 120)) < 1)
          {
            return 0;
          }

          v15 = 0;
          while (1)
          {
            CFArrayGetValueAtIndex(*(a3 + 120), v15);
            FigCaptureStreamGetFigBaseObject();
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            if (H16ISP::H16ISPDevice::isSensorType(*(a3 + 24), *(DerivedStorage + 156), 1718775412))
            {
              break;
            }

            if (H16ISP::H16ISPDevice::isSensorType(*(a3 + 24), *(DerivedStorage + 156), 1718776695))
            {
              goto LABEL_103;
            }

            if (++v15 >= CFArrayGetCount(*(a3 + 120)))
            {
              DerivedStorage = 0;
LABEL_103:
              if (!DerivedStorage)
              {
                return 0;
              }

              break;
            }
          }

          if (!*(DerivedStorage + 664))
          {
            return 0;
          }

          v14 = *(a1 + 32);
          if ((v14 & 0x200000) == 0)
          {
            return ((v14 & 0x400000) == 0 || (v19 & 2) != 0) && ((v14 & 0x800000) == 0 || (v19 & 1) != 0 || *(a2 + 4256) == 1) && ((v14 & 0x1000000) == 0 || v20 == 1) && ((v14 & 0x4000000) == 0 || *(a2 + 664) && *(v8 + 104 * *(a2 + 156) + 28)) && ((v14 & 0x2000000) == 0 || *(a2 + 2925) == 1);
          }

          goto LABEL_76;
        }
      }
    }
  }

  return result;
}

__CFString *H16ISP::ModuleDescriptionToPortType(int a1)
{
  PortTypeMap = H16ISP::GetPortTypeMap(0, a1);
  if (!PortTypeMap)
  {
    return @"Unknown";
  }

  v2 = *PortTypeMap;
  free(PortTypeMap);
  return v2;
}

uint64_t CopyPortType(uint64_t a1, __CFString **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = H16ISP::ModuleDescriptionToPortType(*(*(*(a5 + 24) + 4304) + 104 * *(a3 + 156) + 16));
  CFRetain(v6);
  *a2 = v6;
  return 0;
}

_OWORD *H16ISP::GetPortTypeMap(CFTypeRef cf1, int a2)
{
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    H16ISP::GetPortTypeMap();
  }

  v4 = &xmmword_281003808;
  v5 = 8;
  while (cf1)
  {
    if (CFEqual(cf1, *v4))
    {
      goto LABEL_10;
    }

LABEL_8:
    ++v4;
    if (!--v5)
    {
      return 0;
    }
  }

  if (*(v4 + 2) != a2)
  {
    goto LABEL_8;
  }

LABEL_10:
  result = malloc_type_calloc(0x10uLL, 1uLL, 0x1060040ADAFC7CAuLL);
  if (result)
  {
    *result = *v4;
    return result;
  }

  return 0;
}

uint64_t CopySupportedPropertiesDictionary(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Mutable = *(a3 + 144);
  if (!Mutable)
  {
    v17 = a2;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v8 = streamProperties[0] == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = *MEMORY[0x277CBED10];
      v10 = 1;
      v11 = MEMORY[0x277CF6AE8];
      v12 = streamProperties;
      do
      {
        if (v12[2])
        {
          v13 = MEMORY[0x277CF6AE0];
          if (!v12[3])
          {
            v13 = v11;
          }
        }

        else
        {
          v13 = MEMORY[0x277CF6AD8];
        }

        v14 = *v13;
        if (IsPropertySupportedForStream(v12, a3, a5))
        {
          addPropertyDictionaryToPropertiesDictionary(Mutable, *v12, v12[1], v14, v9);
        }

        v12 = &streamProperties[6 * v10++];
      }

      while (*v12);
    }

    *(a3 + 144) = Mutable;
    a2 = v17;
  }

  *a2 = Mutable;
  v15 = *(a3 + 144);
  if (v15)
  {
    CFRetain(v15);
  }

  return 0;
}

uint64_t CopyStreamGroupsArray(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 240);
  *a2 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  return 0;
}

uint64_t H16ISPCaptureGroupCopyProperty(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  pthread_mutex_lock((DerivedStorage + 40));
  if (*(DerivedStorage + 32) == 1)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureGroupCopyProperty();
    }

    v10 = 4294954511;
    goto LABEL_30;
  }

  LogCaptureDeviceEvent(0x14u, v8, 0, DerivedStorage, a2, 0, 0);
  LockStreamMutexes(*(DerivedStorage + 16));
  v11 = &groupProperties;
  v12 = 60;
  while (!CFEqual(*v11, a2))
  {
    v11 += 6;
    if (!--v12)
    {
      v10 = 4294954512;
LABEL_11:
      UnlockStreamMutexes(*(DerivedStorage + 16));
      LogCaptureDeviceEvent(0x14u, v8, 0, DerivedStorage, a2, 0, 1);
      goto LABEL_30;
    }
  }

  if (!IsPropertySupportedForGroup(v11, DerivedStorage, v8))
  {
    goto LABEL_29;
  }

  if ((*(v11 + 36) & 1) == 0)
  {
    goto LABEL_14;
  }

  v16 = *(DerivedStorage + 104);
  if (!v16)
  {
LABEL_29:
    UnlockStreamMutexes(*(DerivedStorage + 16));
    v10 = 4294954509;
    goto LABEL_30;
  }

  if (CFArrayGetCount(v16) < 1)
  {
LABEL_14:
    v13 = 0;
LABEL_15:
    v10 = (v11[3])(a3, a4, v13, DerivedStorage, v8);
    if (v10)
    {
      v14 = CFCopyDescription(v11[1]);
      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v15 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315906;
        v21 = "H16ISPCaptureGroupCopyProperty";
        v22 = 2080;
        CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
        v24 = 2080;
        v25 = CFStringGetCStringPtr(v14, 0x8000100u);
        v26 = 1024;
        v27 = v10;
        _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_DEFAULT, "%s - Error getting %s %s: %d\n", &v20, 0x26u);
      }

      CFRelease(v14);
    }

    goto LABEL_11;
  }

  v13 = 0;
  v17 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(*(DerivedStorage + 104), v17);
    FigCaptureStreamGetFigBaseObject();
    v18 = CMBaseObjectGetDerivedStorage();
    if (!*(v18 + 1))
    {
      break;
    }

    if (*(v18 + 4368))
    {
      v13 = v18;
    }

    if (++v17 >= CFArrayGetCount(*(DerivedStorage + 104)))
    {
      goto LABEL_15;
    }
  }

  UnlockStreamMutexes(*(DerivedStorage + 16));
  v10 = 4294954607;
LABEL_30:
  pthread_mutex_unlock((DerivedStorage + 40));
  kdebug_trace();
  return v10;
}

void LockStreamMutexes(const __CFArray *a1)
{
  if (StreamLockOrderValid(a1, 1))
  {

LABEL_13:
    __LockStreamMutexes(a1);
    return;
  }

  v2 = StreamArrayCopyAndSort(a1);
  if (!v2)
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LockStreamMutexes();
    }

    goto LABEL_13;
  }

  v3 = v2;
  __LockStreamMutexes(v2);

  CFRelease(v3);
}

BOOL StreamLockOrderValid(const __CFArray *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (CFArrayGetCount(a1) < 1)
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  while (1)
  {
    if (CFArrayGetValueAtIndex(a1, v5))
    {
      FigCaptureStreamGetFigBaseObject();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        break;
      }
    }

    v7 = v4;
LABEL_9:
    ++v5;
    v4 = v7;
    if (v5 >= CFArrayGetCount(a1))
    {
      return 1;
    }
  }

  v7 = *(DerivedStorage + 156);
  if (!v5 || v4 <= v7)
  {
    goto LABEL_9;
  }

  if (a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = *(DerivedStorage + 156);
  }

  if (a2)
  {
    v10 = *(DerivedStorage + 156);
  }

  else
  {
    v10 = v4;
  }

  v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v11 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
  }

  result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v12 = "release";
    v14 = "StreamLockOrderValid";
    v15 = 2080;
    v13 = 136315906;
    if (a2)
    {
      v12 = "acquire";
    }

    v16 = v12;
    v17 = 1024;
    v18 = v9;
    v19 = 1024;
    v20 = v10;
    _os_log_error_impl(&dword_2247DB000, v11, OS_LOG_TYPE_ERROR, "%s - Invalid stream lock %s order: stream #%u followed by stream #%u\n\n", &v13, 0x22u);
    return 0;
  }

  return result;
}

CFIndex __LockStreamMutexes(const __CFArray *a1)
{
  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    v3 = 0;
    do
    {
      if (CFArrayGetValueAtIndex(a1, v3))
      {
        FigCaptureStreamGetFigBaseObject();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        pthread_mutex_lock((DerivedStorage + 264));
      }

      ++v3;
      result = CFArrayGetCount(a1);
    }

    while (v3 < result);
  }

  return result;
}

BOOL IsPropertySupportedForGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (CFArrayGetCount(*(a2 + 16)) < 1)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    CFArrayGetValueAtIndex(*(a2 + 16), v6);
    FigCaptureStreamGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v8 = IsPropertySupportedForStream(a1, DerivedStorage, a3);
    if (v8)
    {
      break;
    }

    ++v6;
  }

  while (v6 < CFArrayGetCount(*(a2 + 16)));
  return v8;
}

void UnlockStreamMutexes(const __CFArray *a1)
{
  if (StreamLockOrderValid(a1, 0))
  {

LABEL_13:
    __UnlockStreamMutexes(a1);
    return;
  }

  v2 = StreamArrayCopyAndSort(a1);
  if (!v2)
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      UnlockStreamMutexes();
    }

    goto LABEL_13;
  }

  v3 = v2;
  __UnlockStreamMutexes(v2);

  CFRelease(v3);
}

uint64_t CopyGroupSupportedStreams(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  *a2 = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  return 0;
}

uint64_t __UnlockStreamMutexes(const __CFArray *a1)
{
  result = CFArrayGetCount(a1);
  v3 = (result - 1);
  if (result - 1 >= 0)
  {
    do
    {
      result = CFArrayGetValueAtIndex(a1, v3);
      if (result)
      {
        FigCaptureStreamGetFigBaseObject();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        result = pthread_mutex_unlock((DerivedStorage + 264));
      }
    }

    while (v3-- > 0);
  }

  return result;
}

uint64_t CopyGroupSupportedPropertiesDictionary(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 + 24);
  if (!v7)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = Mutable;
      v20 = a2;
      v10 = *MEMORY[0x277CBED10];
      v11 = &groupProperties;
      v12 = 60;
      v13 = MEMORY[0x277CF6AD8];
      v14 = MEMORY[0x277CF6AE0];
      v15 = MEMORY[0x277CF6AE8];
      do
      {
        if (v11[2])
        {
          if (v11[3])
          {
            v16 = v14;
          }

          else
          {
            v16 = v15;
          }
        }

        else
        {
          v16 = v13;
        }

        v17 = *v16;
        if (IsPropertySupportedForGroup(v11, a4, a5))
        {
          addPropertyDictionaryToPropertiesDictionary(v7, *v11, v11[1], v17, v10);
        }

        v11 += 6;
        --v12;
      }

      while (v12);
      *(a4 + 24) = v7;
      a2 = v20;
    }

    else
    {
      v7 = *(a4 + 24);
    }
  }

  *a2 = v7;
  v18 = *(a4 + 24);
  if (v18)
  {
    CFRetain(v18);
  }

  return 0;
}

uint64_t CopyGroupSynchronizationMaster(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (CFArrayGetCount(*(a4 + 16)) < 1)
  {
LABEL_6:
    *a2 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a4 + 16), v6);
      FigCaptureStreamGetFigBaseObject();
      if (*(CMBaseObjectGetDerivedStorage() + 4368))
      {
        break;
      }

      v6 = v7;
      if (CFArrayGetCount(*(a4 + 16)) <= v7++)
      {
        goto LABEL_6;
      }
    }

    *a2 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }
  }

  return 0;
}

uint64_t CopyCameraViewMatrix(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v50 = *MEMORY[0x277D85DE8];
  if (H16ISP::H16ISPDevice::isSensorType(*(v2 + 24), *(v4 + 156), 1718186595))
  {
    if (getPCECalib(*(v3 + 24), &v46))
    {
      v8 = 0;
      memset(&v45, 0, sizeof(v45));
      v9 = 8552;
      do
      {
        v10 = 0;
        v11 = &v45.columns[v8];
        v12 = *v11;
        v13 = v9;
        do
        {
          v14 = *(v46.columns[0].i64 + v13);
          v42 = v12;
          *(&v42 & 0xFFFFFFFFFFFFFFF3 | (4 * (v10 & 3))) = v14;
          v12 = v42;
          ++v10;
          v13 += 24;
        }

        while (v10 != 3);
        v11->i32[2] = v42.i32[2];
        v11->i64[0] = v12.i64[0];
        ++v8;
        v9 += 8;
      }

      while (v8 != 3);
      v15 = v48;
      v45.columns[3].f32[2] = v15;
      *v45.columns[3].f32 = vcvt_f32_f64(v47);
      *&v16 = dsiExtrinsicsToFig(&v45);
      v17 = 0;
      v44[0] = v16;
      v44[1] = v18;
      v44[2] = v19;
      v20 = bytes;
      do
      {
        v21 = 0;
        v22 = v44[v17];
        do
        {
          v41 = v22;
          *&v20[4 * v21] = *(&v41 & 0xFFFFFFFFFFFFFFF3 | (4 * (v21 & 3)));
          ++v21;
        }

        while (v21 != 4);
        ++v17;
        v20 += 16;
      }

      while (v17 != 3);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(v3 + 24), *(v5 + 156), 1785950322);
  v24 = *(v3 + 24);
  if (isSensorType)
  {
    PeridotCalib = H16ISP::createPeridotCalib(v24, *(v3 + 232), *(v5 + 156));
    if (PeridotCalib)
    {
      v26 = PeridotCalib;
      PDPeridotCalibGetOperationalWideToPeridotTransform();
      v46.columns[0] = v27;
      v46.columns[1] = v28;
      v46.columns[2] = v29;
      v46.columns[3] = v30;
      *v31.i64 = dsiExtrinsicsToFig(&v46);
      v32 = 0;
      v45.columns[0] = v31;
      v45.columns[1] = v33;
      v45.columns[2] = v34;
      v35 = bytes;
      do
      {
        v36 = 0;
        v37 = v45.columns[v32];
        do
        {
          v43 = v37;
          *&v35[4 * v36] = *(&v43 & 0xFFFFFFFFFFFFFFF3 | (4 * (v36 & 3)));
          ++v36;
        }

        while (v36 != 4);
        ++v32;
        v35 += 16;
      }

      while (v32 != 3);
      CFRelease(v26);
      goto LABEL_22;
    }

LABEL_21:
    v39 = 4294954513;
    goto LABEL_25;
  }

  H16ISP::H16ISPDevice::GetExtrinsicData(v24, -1, *(v5 + 156), bytes);
  if (v38)
  {
LABEL_20:
    PeridotCalib = 0;
    goto LABEL_21;
  }

LABEL_22:
  PeridotCalib = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 48);
  if (PeridotCalib)
  {
    v39 = 0;
  }

  else
  {
    v39 = 4294954510;
  }

LABEL_25:
  *v7 = PeridotCalib;
  return v39;
}

float64x2_t H16ISP::H16ISPDevice::GetExtrinsicData(H16ISP::H16ISPDevice *this, int a2, int a3, float (*a4)[3][4])
{
  bzero(v11, 0x70uLL);
  v12 = 28677;
  v13 = a2;
  v14 = a3;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x70u, 0, 0xFFFFFFFF))
  {
    for (i = 0; i != 3; ++i)
    {
      v10 = &v15[2 * i];
      result = v10[1];
      *&(*a4)[i][0] = vcvt_hight_f32_f64(vcvt_f32_f64(*v10), result);
    }
  }

  return result;
}

double dsiExtrinsicsToFig(const simd::float4x3 *a1)
{
  v1 = 0;
  v2 = a1->columns[2];
  v3 = a1->columns[3];
  v2.i32[3] = 0;
  v3.i32[3] = 1.0;
  v11 = v2;
  v12 = v3;
  do
  {
    *(&v13 + v1 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2249BB8C0, COERCE_FLOAT(v10[v1])), xmmword_2249BB8B0, *&v10[v1], 1), xmmword_2249BBD50, v10[v1], 2), xmmword_2249BBD60, v10[v1], 3);
    ++v1;
  }

  while (v1 != 4);
  v4 = 0;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v10[0] = xmmword_2249BB8C0;
  v10[1] = xmmword_2249BB8B0;
  v11 = xmmword_2249BBD50;
  v12 = xmmword_2249BBD60;
  do
  {
    *(&v13 + v4 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(v10[v4])), v6, *&v10[v4], 1), v7, v10[v4], 2), v8, v10[v4], 3);
    ++v4;
  }

  while (v4 != 4);
  *&result = vzip1q_s32(vzip1q_s32(v13, v15), vzip1q_s32(v14, v16)).u64[0];
  return result;
}

const void *H16ISP::createPeridotCalib(H16ISP *this, xpc_connection_t *a2, H16ISP::H16ISPServicesRemote *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v6 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "general");
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;

    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "createPeridotCalib";
    _os_log_impl(&dword_2247DB000, v5, OS_LOG_TYPE_DEFAULT, "%s - get calibration\n", buf, 0xCu);
  }

  if (a2)
  {
    cf = 0;
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v6)
    {
      v10 = os_log_create("com.apple.isp", "general");
      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v10;

      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "createPeridotCalib";
      _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEFAULT, "%s - reading from daemon\n", buf, 0xCu);
    }

    JasperCalibData = H16ISP::H16ISPServicesRemote::CreateJasperCalibData(a2, &cf);
    v13 = 0;
    if (!JasperCalibData && cf)
    {
      v13 = PDPeridotCalibCreateWithBinaryRepresentation();
      CFRelease(cf);
    }
  }

  else
  {
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v6)
    {
      v15 = os_log_create("com.apple.isp", "general");
      v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;

      v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "createPeridotCalib";
      _os_log_impl(&dword_2247DB000, v14, OS_LOG_TYPE_DEFAULT, "%s - reading locally\n", buf, 0xCu);
    }

    return JasperCalibration::get(this, 0);
  }

  return v13;
}

uint64_t H16ISP::H16ISPServicesRemote::CreateJasperCalibData(xpc_connection_t *this, const __CFData **a2)
{
  LODWORD(v6) = 7;
  Property = H16ISP::H16ISPServicesRemote::GetProperty(this, &v6);
  if (!Property)
  {
    *a2 = H16ISP::createTypeFromXpc(object, v3);
    if (object)
    {
      xpc_release(object);
    }
  }

  return Property;
}

uint64_t H16ISP::H16ISPServicesRemote::GetProperty(xpc_connection_t *a1, xpc_object_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
  v5 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "services");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v11 = 67109120;
    v12 = v6;
    _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "H16ISPServicesRemote: GetProperty (%d) (sent)\n", &v11, 8u);
  }

  PropertyInternal = H16ISP::H16ISPServicesRemote::GetPropertyInternal(a1, a2);
  v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == v5)
  {
    v8 = os_log_create("com.apple.isp", "services");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v8;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *a2;
    v11 = 67109376;
    v12 = v9;
    v13 = 1024;
    v14 = PropertyInternal;
    _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_DEFAULT, "H16ISPServicesRemote: GetProperty (%d) (reply=0x%08X)\n", &v11, 0xEu);
  }

  return PropertyInternal;
}

uint64_t H16ISP::H16ISPServicesRemote::GetPropertyInternal(xpc_connection_t *a1, xpc_object_t *a2)
{
  v2 = 3758097084;
  if (!*a1)
  {
    return 3758097111;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    return 3758097085;
  }

  v6 = v5;
  xpc_dictionary_set_uint64(v5, "H16ISPServicesRemoteTypeKey", 2uLL);
  xpc_dictionary_set_data(v6, "H16ISPServicesRemoteDataKey", a2, 0xE60uLL);
  if ((*a2 - 9) >= 2)
  {
    if (*a2 != 20)
    {
      goto LABEL_10;
    }

    v7 = "H16ISPServicesRemoteRGBIRFinalInputPCEConfigKey";
  }

  else
  {
    v7 = "H16ISPServicesRemoteCFTypeNameKey";
  }

  xpc_dictionary_set_value(v6, v7, a2[1]);
LABEL_10:
  v8 = H16ISP::H16ISPServicesRemote::sendMessageSync(a1, v6);
  length = 0;
  data = xpc_dictionary_get_data(v6, "H16ISPServicesRemoteDataKey", &length);
  if (length == 3680)
  {
    v2 = v8;
    memcpy(a2, data, 0xE60uLL);
    v10 = *a2;
    if (*a2 > 18)
    {
      if (v10 == 20)
      {
        if (!v8)
        {
          v11 = "H16ISPServicesRemoteRGBIRFinalOutputPCEConfigKey";
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      if (v10 == 19)
      {
        if (v8)
        {
LABEL_21:
          a2[1] = 0;
          goto LABEL_29;
        }

        v12 = "H16ISPServicesRemoteRGBIRReportKey";
LABEL_27:
        value = xpc_dictionary_get_value(v6, v12);
        a2[1] = value;
        goto LABEL_28;
      }
    }

    else
    {
      if ((v10 - 9) < 2)
      {
        if (!v8)
        {
          v11 = "H16ISPServicesRemoteCFTypeDataKey";
LABEL_25:
          value = xpc_dictionary_get_value(v6, v11);
          a2[2] = value;
LABEL_28:
          xpc_retain(value);
          goto LABEL_29;
        }

LABEL_23:
        a2[2] = 0;
        goto LABEL_29;
      }

      if (v10 == 7)
      {
        if (v8)
        {
          goto LABEL_21;
        }

        v12 = "H16ISPServicesRemoteJasperCalibObjectKey";
        goto LABEL_27;
      }
    }

LABEL_29:
    xpc_release(v6);
  }

  return v2;
}

int64_t H16ISP::H16ISPServicesRemote::sendMessageSync(xpc_connection_t *this, void *a2)
{
  v4 = xpc_connection_send_message_with_reply_sync(*this, a2);
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x22AA57270]();
    if (v6 == MEMORY[0x277D86468])
    {
      length = 3680;
      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
      {
        v12 = os_log_create("com.apple.isp", "services");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v12;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        H16ISP::H16ISPServicesRemote::sendMessageSync(v12);
      }

      int64 = xpc_dictionary_get_int64(v5, "H16ISPServicesRemoteReturnKey");
      data = xpc_dictionary_get_data(v5, "H16ISPServicesRemoteDataKey", &length);
      xpc_dictionary_set_data(a2, "H16ISPServicesRemoteDataKey", data, length);
      value = xpc_dictionary_get_value(v5, "H16ISPServicesRemoteJasperCalibObjectKey");
      xpc_dictionary_set_value(a2, "H16ISPServicesRemoteJasperCalibObjectKey", value);
      v15 = xpc_dictionary_get_value(v5, "H16ISPServicesRemoteRGBIRReportKey");
      xpc_dictionary_set_value(a2, "H16ISPServicesRemoteRGBIRReportKey", v15);
      v16 = xpc_dictionary_get_value(v5, "H16ISPServicesRemoteRGBIRFinalOutputPCEConfigKey");
      xpc_dictionary_set_value(a2, "H16ISPServicesRemoteRGBIRFinalOutputPCEConfigKey", v16);
      v17 = xpc_dictionary_get_value(v5, "H16ISPServicesRemoteCFTypeNameKey");
      xpc_dictionary_set_value(a2, "H16ISPServicesRemoteCFTypeNameKey", v17);
      v18 = xpc_dictionary_get_value(v5, "H16ISPServicesRemoteCFTypeDataKey");
      xpc_dictionary_set_value(a2, "H16ISPServicesRemoteCFTypeDataKey", v18);
    }

    else
    {
      int64 = 3758097084;
      if (v6 == MEMORY[0x277D86480])
      {
        v8 = MEMORY[0x22AA57160](v5);
        if (v8)
        {
          v9 = v8;
          v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
          {
            v10 = os_log_create("com.apple.isp", "services");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v10;
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPServicesRemote::sendMessageSync();
          }

          free(v9);
        }

        int64 = 3758097111;
        if (v5 != MEMORY[0x277D863F8])
        {
          xpc_connection_cancel(*this);
        }
      }
    }

    xpc_release(v5);
  }

  else
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "services");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_servicesLog = v11;
    }

    int64 = 3758097084;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPServicesRemote::sendMessageSync();
    }
  }

  return int64;
}

CFDataRef H16ISP::createTypeFromXpc(H16ISP *this, void *a2)
{
  v3 = MEMORY[0x22AA57270](this, a2);
  if (v3 == MEMORY[0x277D86468])
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    applier = MEMORY[0x277D85DD0];
    v16 = 0x40000000;
    v17 = ___ZN6H16ISPL23createDictionaryFromXpcEPv_block_invoke;
    v18 = &__block_descriptor_tmp_55;
    v19 = Mutable;
    xpc_dictionary_apply(this, &applier);
    return Mutable;
  }

  if (v3 == MEMORY[0x277D86440])
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    applier = MEMORY[0x277D85DD0];
    v16 = 0x40000000;
    v17 = ___ZN6H16ISPL18createArrayFromXpcEPv_block_invoke;
    v18 = &__block_descriptor_tmp_57;
    v19 = Mutable;
    xpc_array_apply(this, &applier);
    return Mutable;
  }

  if (v3 == MEMORY[0x277D86498])
  {
    applier = COERCE_DOUBLE(xpc_int64_get_value(this));
    v5 = *MEMORY[0x277CBECE8];
    v6 = kCFNumberSInt64Type;
    return CFNumberCreate(v5, v6, &applier);
  }

  if (v3 == MEMORY[0x277D86470])
  {
    applier = xpc_double_get_value(this);
    v5 = *MEMORY[0x277CBECE8];
    v6 = kCFNumberDoubleType;
    return CFNumberCreate(v5, v6, &applier);
  }

  if (v3 == MEMORY[0x277D864C0])
  {
    v8 = *MEMORY[0x277CBECE8];
    string_ptr = xpc_string_get_string_ptr(this);

    return CFStringCreateWithCString(v8, string_ptr, 0x8000100u);
  }

  else
  {
    if (v3 != MEMORY[0x277D86458])
    {
      if (v3 != MEMORY[0x277D86448])
      {
        return 0;
      }

      value = xpc_BOOL_get_value(this);
      v14 = MEMORY[0x277CBED28];
      if (!value)
      {
        v14 = MEMORY[0x277CBED10];
      }

      return *v14;
    }

    v10 = *MEMORY[0x277CBECE8];
    bytes_ptr = xpc_data_get_bytes_ptr(this);
    length = xpc_data_get_length(this);

    return CFDataCreate(v10, bytes_ptr, length);
  }
}

uint64_t SetClientIsActive(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  v7 = CFEqual(a1, *MEMORY[0x277CBED28]);
  v8 = H16ISP::H16ISPDevice::ISP_SetDriverProperty(*(a4 + 24), 0, v7 == 0);
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109376;
    v11[1] = v7 != 0;
    v12 = 1024;
    v13 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: set kFigCaptureDeviceProperty_ClientIsActive, isClientActive=%d, res=0x%08X\n\n", v11, 0xEu);
  }

  if (v8)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_SetDriverProperty(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallScalarMethod(v3, 0x4Fu, input, 2u, 0, 0);
}

uint64_t CopyGroupActiveStreams(uint64_t a1, CFArrayRef *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 104);
  if (v5)
  {
    Copy = CFArrayCreateCopy(0, v5);
  }

  else
  {
    Copy = 0;
  }

  *a2 = Copy;
  return 0;
}

uint64_t H16ISP::H16ISPDevice::ISP_ReserveChannel(uint64_t a1, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  return IOConnectCallScalarMethod(v3, 0x30u, input, 2u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ResetMetadataSections(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0x10uLL);
  v6 = 343;
  v7 = a2;
  v8 = 0;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t MyH16ISPDeviceMessageNotification(H16ISP::H16ISPDevice *a1, int a2, void *a3, void *a4)
{
  v60 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  if (a2 > 561212527)
  {
    if (a2 > 561214571)
    {
      if (a2 == 561214572)
      {
        goto LABEL_17;
      }

      if (a2 == 561275237 || a2 == 561276273)
      {
        v10 = H16ISP::H16ISPGetCFPreferenceString(@"tailspinDir", @"com.apple.coremedia", @"/private/var/mobile/tmp/com.apple.cameracaptured/", v8);
        CFStringGetCString(v10, buffer, 1024, 0x8000100u);
        CFRelease(v10);
        v11 = strlen(buffer);
        snprintf(&buffer[v11], 1024 - v11, "TailspinNotification");
        v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_daemonLog;
        if (a2 == 561275237)
        {
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_daemonLog == MEMORY[0x277D86220])
          {
            v12 = os_log_create("com.apple.isp", "daemon");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_daemonLog = v12;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            v53 = a3;
            v54 = 1024;
            v55 = HIDWORD(a3);
            _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_DEFAULT, "kH16ISPTailspinAEReqLate ch %u tailspinCode 0x%08x\n", buf, 0xEu);
          }

          snprintf(buf, 0x40uLL, "EXCLAVE_SOURCE_AE_REQ_LATE ch 0x%x tailspinCode 0x%x");
        }

        else
        {
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_daemonLog == MEMORY[0x277D86220])
          {
            v12 = os_log_create("com.apple.isp", "daemon");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_daemonLog = v12;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            v53 = a3;
            v54 = 1024;
            v55 = HIDWORD(a3);
            _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_DEFAULT, "kH16ISPTailspinExclaveEmptyQueue ch %u tailspinCode 0x%08x\n", buf, 0xEu);
          }

          snprintf(buf, 0x40uLL, "EXCLAVE_EMPTY_QUEUE_ENABLE ch 0x%x tailspinCode 0x%x");
        }

        v28 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_daemonLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_daemonLog == MEMORY[0x277D86220])
        {
          v28 = os_log_create("com.apple.isp", "daemon");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_daemonLog = v28;
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *v48 = 136315394;
          v49 = buffer;
          v50 = 2080;
          v51 = buf;
          _os_log_impl(&dword_2247DB000, v28, OS_LOG_TYPE_DEFAULT, "dumpTailspinInBackground dirAndPrefix %s reason %s\n", v48, 0x16u);
        }

        dumpTailspinInBackground(buffer, buf, &__block_literal_global_1839);
      }

      return 0;
    }

    if (a2 == 561212528)
    {
      pthread_mutex_lock((DerivedStorage + 32));
      if (!*v9)
      {
        v29 = *MEMORY[0x277CF69F0];
        v30 = a4;
        goto LABEL_66;
      }

      v27 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v27 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v27;
      }

      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_101;
      }

LABEL_53:
      MyH16ISPDeviceMessageNotification();
      goto LABEL_101;
    }

    v14 = 561213549;
  }

  else
  {
    if (a2 > 560363378)
    {
      if (a2 != 560363379 && a2 != 561145196 && a2 != 561145203)
      {
        return 0;
      }

LABEL_17:
      pthread_mutex_lock((DerivedStorage + 32));
      if (*v9)
      {
        v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v13 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
        }

        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_101;
        }

        goto LABEL_53;
      }

      if (!CFArrayGetCount(*(v9 + 120)))
      {
        goto LABEL_101;
      }

      v16 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v9 + 120), v16);
        FigCaptureStreamGetFigBaseObject();
        v18 = CMBaseObjectGetDerivedStorage();
        if (*(v18 + 156) == a3)
        {
          v19 = v18;
          if (!*v18)
          {
            break;
          }
        }

        if (++v16 >= CFArrayGetCount(*(v9 + 120)))
        {
          goto LABEL_101;
        }
      }

      if (!ValueAtIndex)
      {
        goto LABEL_101;
      }

      if (a2 != 561214572)
      {
        if (a2 == 561145203)
        {
          goto LABEL_101;
        }

        if (a2 == 561145196)
        {
          if ((*(v18 + 4605) & 1) == 0)
          {
            H16ISPPostNotification(*MEMORY[0x277CF6B60], ValueAtIndex, 0);
          }

          *(v19 + 4605) = 0;
          goto LABEL_101;
        }

        if (dword_281003310 != -1)
        {
LABEL_101:
          pthread_mutex_unlock((v9 + 32));
          return 0;
        }

        v29 = *MEMORY[0x277CF53D0];
        v30 = ValueAtIndex;
LABEL_66:
        H16ISPPostNotification(v29, v30, 0);
        goto LABEL_101;
      }

      if (!*(v18 + 1) && !*(v18 + 2) || *(v18 + 4) >= HIDWORD(a3))
      {
        goto LABEL_101;
      }

      v58 = 0u;
      v59 = 0u;
      *buffer = 0u;
      LockStreamMutexes(*(v9 + 120));
      v32 = *(v19 + 4360);
      if (v32)
      {
        v33 = 0;
        if (!CFArrayGetCount(v32))
        {
          v40 = STACK[0x800000068];
          STACK[0x800000068] = 0;
          *buffer = v40;
          v39 = 1;
LABEL_91:
          if (!GetNumberOfActiveChannels(*(v9 + 120)))
          {
            v41 = *(v9 + 216);
            if (v41)
            {
              MEMORY[0x22AA55B60](v41, 0x1000C40488540DALL);
              *(v9 + 216) = 0;
              H16ISP::H16ISPDevice::ISP_DestroyMultiCameraSession(*(v9 + 24));
            }
          }

          if ((v39 & 1) == 0)
          {
            v42 = *MEMORY[0x277CF6B68];
            v43 = buffer;
            do
            {
              v44 = *v43;
              FigCaptureStreamGetFigBaseObject();
              v45 = CMBaseObjectGetDerivedStorage();
              v46 = v45;
              if (*(v45 + 1) || *(v45 + 2))
              {
                H16ISP::H16ISPDevice::ISP_ReleaseChannel(*(v9 + 24), *(v45 + 156));
                *(v46 + 1) = 0;
                H16ISPPostNotification(v42, v44, 0);
              }

              v43 += 8;
              --v33;
            }

            while (v33);
          }

          UnlockStreamMutexes(*(v9 + 120));
          goto LABEL_101;
        }

        v34 = 0;
        v35 = &v56;
        do
        {
          v36 = v33;
          v35[1] = CFArrayGetValueAtIndex(*(v19 + 4360), v33);
          ++v35;
          FigCaptureStreamGetFigBaseObject();
          ++v33;
          if (*(CMBaseObjectGetDerivedStorage() + 4368))
          {
            v34 = v36;
          }
        }

        while (v33 < CFArrayGetCount(*(v19 + 4360)));
        v37 = *v35;
        *v35 = *&buffer[8 * v34];
        *&buffer[8 * v34] = v37;
      }

      else
      {
        *buffer = ValueAtIndex;
        v33 = 1;
      }

      v38 = 0;
      do
      {
        H16ISPCaptureStreamStopInternal(*&buffer[8 * v38++], v31);
      }

      while (v33 != v38);
      v39 = 0;
      goto LABEL_91;
    }

    if (a2 == 560296804)
    {
      goto LABEL_27;
    }

    v14 = 560363366;
  }

  if (a2 != v14)
  {
    return 0;
  }

LABEL_27:
  pthread_mutex_lock((DerivedStorage + 32));
  if (*v9)
  {
    v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v15 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
    }

    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_101;
    }

    goto LABEL_53;
  }

  LockStreamMutexes(*(v9 + 120));
  if (CFArrayGetCount(*(v9 + 120)))
  {
    v20 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(v9 + 120), v20);
      FigCaptureStreamGetFigBaseObject();
      *(CMBaseObjectGetDerivedStorage() + 1) = 0;
      ++v20;
    }

    while (v20 < CFArrayGetCount(*(v9 + 120)));
  }

  UnlockStreamMutexes(*(v9 + 120));
  pthread_mutex_unlock((v9 + 32));
  v21 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v23 = Mutable;
    *buffer = -12682;
    v24 = CFNumberCreate(v21, kCFNumberSInt32Type, buffer);
    CFDictionarySetValue(v23, *MEMORY[0x277CF69E8], v24);
    CFRelease(v24);
    if (a2 == 561213549)
    {
      *buf = 1;
      v25 = CFNumberCreate(v21, kCFNumberSInt32Type, buf);
      v26 = a3 ? @"Spmi1ErrorCount" : @"Spmi0ErrorCount";
      CFDictionarySetValue(v23, v26, v25);
      if (v25)
      {
        CFRelease(v25);
      }
    }

    H16ISPPostNotification(*MEMORY[0x277CF69F8], a4, v23);
    CFRelease(v23);
  }

  else
  {
    H16ISPPostNotification(*MEMORY[0x277CF69F8], a4, 0);
  }

  return 0;
}

uint64_t H16ISP::H16ISPDevice::EnableSBS(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 315;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPServicesRemote::ReadData(xpc_connection_t *this, const __CFString *a2, const __CFData **a3)
{
  LODWORD(v9[0]) = 10;
  XpcFromType = H16ISP::createXpcFromType(a2, a2);
  v9[1] = XpcFromType;
  Property = H16ISP::H16ISPServicesRemote::GetProperty(this, v9);
  if (!Property)
  {
    *a3 = H16ISP::createTypeFromXpc(object, v6);
    if (object)
    {
      xpc_release(object);
    }
  }

  xpc_release(XpcFromType);
  return Property;
}

xpc_object_t H16ISP::createXpcFromType(const __CFString *this, const void *a2)
{
  value[13] = *MEMORY[0x277D85DE8];
  v3 = CFGetTypeID(this);
  if (v3 == CFDictionaryGetTypeID())
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    CFDictionaryApplyFunction(this, H16ISP::dictionaryValueEnumerator, v4);
    return v4;
  }

  if (v3 == CFArrayGetTypeID())
  {
    v4 = xpc_array_create(0, 0);
    v14.length = CFArrayGetCount(this);
    v14.location = 0;
    CFArrayApplyFunction(this, v14, H16ISP::arrayValueEnumerator, v4);
    return v4;
  }

  if (v3 == CFNumberGetTypeID())
  {
    Type = CFNumberGetType(this);
    if (Type <= kCFNumberDoubleType && ((1 << Type) & 0x3060) != 0)
    {
      value[0] = 0;
      CFNumberGetValue(this, kCFNumberDoubleType, value);
      return xpc_double_create(*value);
    }

    else
    {
      value[0] = 0;
      CFNumberGetValue(this, kCFNumberSInt64Type, value);
      return xpc_int64_create(value[0]);
    }
  }

  if (v3 == CFStringGetTypeID())
  {
    CStringPtr = CFStringGetCStringPtr(this, 0x8000100u);
    if (!CStringPtr)
    {
      if (CFStringGetCString(this, value, 100, 0x8000100u))
      {
        CStringPtr = value;
      }

      else
      {
        CStringPtr = 0;
      }
    }

    return xpc_string_create(CStringPtr);
  }

  if (v3 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(this);
    Length = CFDataGetLength(this);

    return xpc_data_create(BytePtr, Length);
  }

  else
  {
    if (v3 != CFBooleanGetTypeID())
    {
      return 0;
    }

    v11 = CFBooleanGetValue(this) != 0;

    return xpc_BOOL_create(v11);
  }
}

uint64_t H16ISPCaptureStreamSetProperty(uint64_t a1, const __CFString *a2, __CFString *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  v6 = CMBaseObjectGetDerivedStorage();
  LogCaptureDeviceEvent(0xDu, v6, DerivedStorage, 0, a2, a3, 0);
  pthread_mutex_lock((DerivedStorage + 264));
  if (*DerivedStorage)
  {
    pthread_mutex_unlock((DerivedStorage + 264));
    v7 = 4294954511;
    FigSignalError(4294954511, "invalidated");
  }

  else
  {
    valuePtr = 0;
    Value = CFDictionaryGetValue(*(v6 + 128), a2);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      if (valuePtr <= 0x175 && (v9 = &streamProperties[6 * valuePtr], v9[2]))
      {
        if (!IsPropertySupportedForStream(v9, DerivedStorage, v6))
        {
          pthread_mutex_unlock((DerivedStorage + 264));
          v7 = 4294954509;
          goto LABEL_18;
        }

        if (!*(DerivedStorage + 1) && (streamProperties[6 * valuePtr + 4] & 0x200000000) != 0)
        {
          pthread_mutex_unlock((DerivedStorage + 264));
          v7 = 4294954607;
          goto LABEL_18;
        }

        v7 = (streamProperties[6 * valuePtr + 2])(a3, DerivedStorage, 0, v6);
        if (v7)
        {
          v10 = CFCopyDescription(streamProperties[6 * valuePtr + 1]);
          v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v11 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
            v13 = CFStringGetCStringPtr(v10, 0x8000100u);
            *buf = 136315906;
            v17 = "H16ISPCaptureStreamSetProperty";
            v18 = 2080;
            v19 = CStringPtr;
            v20 = 2080;
            v21 = v13;
            v22 = 1024;
            v23 = v7;
            _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, "%s - Error setting %s %s: %d\n", buf, 0x26u);
          }

          CFRelease(v10);
        }
      }

      else
      {
        v7 = 4294954512;
      }
    }

    else
    {
      v7 = 4294954509;
    }

    pthread_mutex_unlock((DerivedStorage + 264));
    LogCaptureDeviceEvent(0xDu, v6, DerivedStorage, 0, a2, a3, 1);
  }

LABEL_18:
  kdebug_trace();
  return v7;
}

uint64_t SetMultipleOutputSupportEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v7 = *(a2 + 698);
    v8 = CFGetTypeID(a1);
    if (v8 == CFBooleanGetTypeID())
    {
      v9 = CFEqual(a1, *MEMORY[0x277CBED28]);
      v10 = 0;
      v11 = v9 != 0;
      *(a2 + 698) = v11;
    }

    else
    {
      v11 = *(a2 + 698);
      v10 = 4294954516;
    }

    if (v11 != v7)
    {
      InitSupportedFormatsForCaptureStream(a2, a4);
    }
  }

  else
  {
    v10 = 4294954516;
  }

  v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v12 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = "False";
    if (*(a2 + 698))
    {
      v13 = "True";
    }

    v15 = 136315394;
    v16 = "SetMultipleOutputSupportEnabled";
    v17 = 2080;
    v18 = v13;
    _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_INFO, "%s - %s\n", &v15, 0x16u);
  }

  return v10;
}

__CFArray *H16ISP::getContextSwitchList(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  result = 0;
  if (a3 < a2 && Mutable)
  {
    v11 = 0;
    valuePtr = 0;
    v12 = (a1 + 120 * a3);
    do
    {
      if (v11 != a3)
      {
        v13 = (a1 + 120 * v11);
        if (*v12 != *v13)
        {
          v14 = v13[4];
          if (((a4 >> v14) & 1) != 0 || v12[4] == v14)
          {
            v15 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
            if (v15)
            {
              v16 = v15;
              CFArrayAppendValue(Mutable, v15);
              CFRelease(v16);
            }
          }
        }
      }

      v11 = valuePtr + 1;
      valuePtr = v11;
    }

    while (v11 < a2);
    if (CFArrayGetCount(Mutable))
    {
      return Mutable;
    }

    else
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return result;
}

uint64_t H16ISPCaptureGroupSetProperty(uint64_t a1, const __CFString *a2, __CFString *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = CMBaseObjectGetDerivedStorage();
  kdebug_trace();
  LogCaptureDeviceEvent(0x15u, v6, 0, DerivedStorage, a2, a3, 0);
  pthread_mutex_lock((DerivedStorage + 40));
  if (*(DerivedStorage + 32) == 1)
  {
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureGroupSetProperty();
    }

    v8 = 4294954511;
    goto LABEL_30;
  }

  LockStreamMutexes(*(DerivedStorage + 16));
  v9 = &groupProperties;
  v10 = 60;
  while (!CFEqual(*v9, a2))
  {
    v9 += 6;
    if (!--v10)
    {
      v8 = 4294954512;
LABEL_11:
      UnlockStreamMutexes(*(DerivedStorage + 16));
      goto LABEL_30;
    }
  }

  if (!IsPropertySupportedForGroup(v9, DerivedStorage, v6))
  {
    goto LABEL_29;
  }

  if ((*(v9 + 36) & 2) == 0)
  {
    goto LABEL_14;
  }

  v14 = *(DerivedStorage + 104);
  if (!v14)
  {
LABEL_29:
    UnlockStreamMutexes(*(DerivedStorage + 16));
    v8 = 4294954509;
    goto LABEL_30;
  }

  if (CFArrayGetCount(v14) < 1)
  {
LABEL_14:
    v11 = 0;
LABEL_15:
    v8 = (v9[2])(a3, v11, DerivedStorage, v6);
    if (v8)
    {
      v12 = CFCopyDescription(v9[1]);
      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v13 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315906;
        v19 = "H16ISPCaptureGroupSetProperty";
        v20 = 2080;
        CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
        v22 = 2080;
        v23 = CFStringGetCStringPtr(v12, 0x8000100u);
        v24 = 1024;
        v25 = v8;
        _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_DEFAULT, "%s - Error setting %s %s: %d\n", &v18, 0x26u);
      }

      CFRelease(v12);
    }

    goto LABEL_11;
  }

  v11 = 0;
  v15 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(*(DerivedStorage + 104), v15);
    FigCaptureStreamGetFigBaseObject();
    v16 = CMBaseObjectGetDerivedStorage();
    if (!*(v16 + 1))
    {
      break;
    }

    if (*(v16 + 4368))
    {
      v11 = v16;
    }

    if (++v15 >= CFArrayGetCount(*(DerivedStorage + 104)))
    {
      goto LABEL_15;
    }
  }

  UnlockStreamMutexes(*(DerivedStorage + 16));
  v8 = 4294954607;
LABEL_30:
  pthread_mutex_unlock((DerivedStorage + 40));
  LogCaptureDeviceEvent(0x15u, v6, 0, DerivedStorage, a2, a3, 1);
  kdebug_trace();
  return v8;
}

uint64_t SetGroupActiveStreams(CFTypeRef cf, int a2, uint64_t a3, uint64_t a4)
{
  if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 != CFArrayGetTypeID())
    {
      return 4294954516;
    }

    if (GetNumberOfActiveChannels(cf))
    {
      return 4294954514;
    }
  }

  v8 = *(a3 + 104);
  if (v8)
  {
    if (GetNumberOfActiveChannels(v8))
    {
      return 4294954514;
    }
  }

  if (*(a3 + 136) && *(a4 + 216))
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = os_log_create("com.apple.isp", "plugin");
    }

    if (OUTLINED_FUNCTION_4())
    {
      OUTLINED_FUNCTION_19();
      _os_log_error_impl(v9, v10, v11, v12, v13, 0xCu);
    }

    return 4294954514;
  }

  if (cf && CFArrayGetCount(cf))
  {
    v14 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(cf, v14);
      v16 = *(a3 + 16);
      v23.length = CFArrayGetCount(v16);
      v23.location = 0;
      if (!CFArrayContainsValue(v16, v23, ValueAtIndex))
      {
        return 4294954516;
      }

      FigCaptureStreamGetFigBaseObject();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(DerivedStorage + 156), 1785950322);
      v19 = isSensorType;
      if (isSensorType)
      {
        break;
      }

      if (++v14 >= CFArrayGetCount(cf))
      {
        result = 0;
        goto LABEL_21;
      }
    }

    result = 4294954516;
LABEL_21:
    if (v19)
    {
      return result;
    }
  }

  if (ResetGroupSynchronization(a4, a3, *(a3 + 16), 0))
  {
    return 4294954514;
  }

  v21 = *(a3 + 104);
  if (v21)
  {
    CFRelease(v21);
  }

  if (!cf || CFArrayGetCount(cf) <= 0)
  {
    *(a3 + 104) = 0;
    return 0;
  }

  Copy = CFArrayCreateCopy(0, cf);
  *(a3 + 104) = Copy;
  if (!Copy || !ResetGroupSynchronization(a4, a3, Copy, 1))
  {
    return 0;
  }

  return 4294954514;
}

uint64_t ResetGroupSynchronization(uint64_t a1, uint64_t a2, CFArrayRef theArray, int a4)
{
  v5 = *(*(a1 + 24) + 4304);
  if (CFArrayGetCount(theArray))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = -1;
    do
    {
      if (CFArrayGetValueAtIndex(theArray, v6))
      {
        FigCaptureStreamGetFigBaseObject();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (*(v5 + 8 + 104 * *(DerivedStorage + 156) + 8) == 1785950322)
        {
          v8 = 1;
        }

        else
        {
          if (v7 & 1 | (v9 != -1))
          {
            v11 = v9;
          }

          else
          {
            v11 = *(DerivedStorage + 156);
          }

          if (*(DerivedStorage + 4368))
          {
            v9 = *(DerivedStorage + 156);
          }

          else
          {
            v9 = v11;
          }

          if (*(DerivedStorage + 4368))
          {
            v7 = 1;
          }
        }
      }

      ++v6;
    }

    while (v6 < CFArrayGetCount(theArray));
  }

  else
  {
    v8 = 0;
    v9 = -1;
  }

  v12 = 0;
  v13 = 0;
  v45[0] = 0;
  v45[1] = 0;
  v44 = v45;
  v14 = a2;
  v42 = 0;
  v15 = 3758097084;
  while (v12 < CFArrayGetCount(theArray))
  {
    if (CFArrayGetValueAtIndex(theArray, v12))
    {
      FigCaptureStreamGetFigBaseObject();
      v16 = CMBaseObjectGetDerivedStorage();
      v17 = v16;
      v18 = v16 + 4096;
      if (*(v16 + 4369))
      {
        v13 = v16;
      }

      *(v16 + 4369) = 0;
      *(v16 + 4376) = -1;
      v19 = *(v16 + 4360);
      if (v19)
      {
        CFRelease(v19);
        *(v17 + 4360) = 0;
      }

      if (a4 && (*(v17 + 4360) = theArray, CFRetain(theArray), *(v17 + 4360)))
      {
        if (*(a2 + 8) == 2)
        {
          v20 = 2;
        }

        else
        {
          v20 = 1;
        }
      }

      else
      {
        v20 = 0;
      }

      v15 = H16ISP::H16ISPDevice::SetMasterSlaveSync(*(a1 + 24), *(v17 + 156), v20);
      if (v15)
      {
        v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v22 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          ResetGroupSynchronization();
        }

        goto LABEL_53;
      }

      if (v9 == *(v17 + 156))
      {
        v21 = v9;
        if (*(a2 + 8) == 1)
        {
          v15 = H16ISP::H16ISPDevice::SetMaster(*(a1 + 24), v9, v9);
          if (v15)
          {
            v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v24 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v24;
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              ResetGroupSynchronization();
            }

            goto LABEL_53;
          }

          v21 = *(v17 + 156);
        }

        v15 = H16ISP::H16ISPDevice::SetStatsMaster(*(a1 + 24), v21, 0);
        if (v15)
        {
          v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v23 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v23;
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            ResetGroupSynchronization();
          }

LABEL_53:
          v14 = a2;
          break;
        }

        *(v18 + 273) = 1;
        v42 = v17;
      }

      if (v8)
      {
        std::__tree<camera_module_description>::__emplace_unique_key_args<camera_module_description,camera_module_description const&>(&v44, (v5 + 8 + 104 * *(v17 + 156) + 8));
      }

      v15 = 0;
    }

    ++v12;
  }

  if (v13 != v42)
  {
    OnPreviewMasterChanged(a1, v13, v42, "ResetGroupSynchronization");
  }

  H16ISP::H16ISPTimeOfFlightColorSynchronizer::setWideForcedToStream(*(a1 + 272), 0);
  v25 = *(v14 + 104);
  if (v25)
  {
    v26 = v15 == 0;
  }

  else
  {
    v26 = 0;
  }

  v27 = !v26;
  if (((v27 | v8) & 1) == 0)
  {
    CFArrayGetValueAtIndex(v25, 0);
    FigCaptureStreamGetFigBaseObject();
    v28 = CMBaseObjectGetDerivedStorage();
    v29 = *(v28 + 156);
    if (*(v28 + 4360) && !*(v28 + 4380))
    {
      v29 |= 0x80000000;
    }

    v15 = H16ISP::H16ISPDevice::SetMinimumFrameSkippingRatio(*(a1 + 24), v29, *(v14 + 112));
    if (v15)
    {
      v30 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v30 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v30;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        ResetGroupSynchronization();
      }
    }
  }

  v31 = v45[0];
  if (v8)
  {
    if (!v45[0])
    {
      goto LABEL_79;
    }

    v32 = v45;
    v33 = v45[0];
    do
    {
      if (v33[7] >= 1919246706)
      {
        v32 = v33;
      }

      v33 = *&v33[2 * (v33[7] < 1919246706)];
    }

    while (v33);
    if (v32 == v45 || v32[7] > 1919246706)
    {
LABEL_79:
      v32 = v45;
    }

    if (v45[0])
    {
      v34 = v45;
      v35 = v45[0];
      do
      {
        if (v35[7] >= 1919251319)
        {
          v34 = v35;
        }

        v35 = *&v35[2 * (v35[7] < 1919251319)];
      }

      while (v35);
      if (v34 != v45 && v34[7] <= 1919251319 && v32 == v45)
      {
        v37 = *(a1 + 24);
        SensorChannel = H16ISP::H16ISPDevice::getSensorChannel(v37, 1919251319, 1852793709);
        H16ISP::H16ISPDevice::WritePropertyValue(v37, SensorChannel, 1344, 1, 0xFFFFFFFF);
        v31 = v45[0];
      }
    }
  }

  std::__tree<std::__value_type<CalibrationDataTypes,Input *>,std::__map_value_compare<CalibrationDataTypes,std::__value_type<CalibrationDataTypes,Input *>,std::less<CalibrationDataTypes>,true>,std::allocator<std::__value_type<CalibrationDataTypes,Input *>>>::destroy(&v44, v31);
  return v15;
}

uint64_t H16ISP::H16ISPDevice::SetMasterSlaveSync(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 312;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMaster(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 314;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetStatsMaster(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 30;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t *std::__tree<camera_module_description>::__emplace_unique_key_args<camera_module_description,camera_module_description const&>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t *std::__tree<std::__value_type<CalibrationDataTypes,Input *>,std::__map_value_compare<CalibrationDataTypes,std::__value_type<CalibrationDataTypes,Input *>,std::less<CalibrationDataTypes>,true>,std::allocator<std::__value_type<CalibrationDataTypes,Input *>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t OnPreviewMasterChanged(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a3)
    {
      v5 = result;
      result = *(result + 272);
      if (result)
      {
        result = H16ISP::H16ISPTimeOfFlightColorSynchronizer::isTeleDensificationEnabled(result);
        if (result)
        {
          if (*(a3 + 4584) > 0.0)
          {
            v8 = 0;
            v13[0] = *(a3 + 156);
            do
            {
              v13[v8 + 1] = vcvts_n_s32_f32(*(a3 + 4156 + 4 * v8), 0xAuLL);
              ++v8;
            }

            while (v8 != 3);
            *(a3 + 4584) = 0;
            return H16ISP::H16ISPDevice::SetMultiCamZoomFactor(*(v5 + 24), 1u, v13);
          }

          v9 = *(*(v5 + 24) + 4304) + 8;
          if (*(v9 + 104 * *(a3 + 156) + 8) == 1919251564 && *(v9 + 104 * *(a2 + 156) + 8) == 1919246706)
          {
            *(a2 + 4584) = H16ISP::H16ISPTimeOfFlightColorSynchronizer::getTeleDensificationZoomLimit(*(v5 + 272));
            v13[0] = *(a2 + 156);
            v11 = 4156;
            for (i = 1; i != 4; ++i)
            {
              v13[i] = vcvts_n_s32_f32(*(a2 + v11), 0xAuLL);
              v11 += 4;
            }

            result = LimitZoomFactorForTeleDensification(a2, v13, a4);
            if (result)
            {
              return H16ISP::H16ISPDevice::SetMultiCamZoomFactor(*(v5 + 24), 1u, v13);
            }
          }
        }
      }
    }
  }

  return result;
}

void setValueCFDict<float>(__CFDictionary *a1, const void *a2, float a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t SetMultiCamConfiguration(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (GetNumberOfActiveChannels(*(a4 + 120)))
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      SetMultiCamConfiguration();
    }

    return 4294954514;
  }

  if (a1)
  {
    v9 = CFGetTypeID(a1);
    if (v9 != CFDictionaryGetTypeID())
    {
      return 4294954514;
    }
  }

  v10 = *(a4 + 216);
  if (v10)
  {
    MEMORY[0x22AA55B60](v10, 0x1000C40488540DALL);
    *(a4 + 216) = 0;
    if (H16ISP::H16ISPDevice::ISP_DestroyMultiCameraSession(*(a4 + 24)))
    {
      return 4294954514;
    }
  }

  if (a1)
  {
    Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF3C48]);
    v12 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3C40]);
    CFDictionaryGetValue(a1, *MEMORY[0x277CF3C50]);
    CFDictionaryGetValue(a1, *MEMORY[0x277CF3C58]);
    if (Value | v12)
    {
      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v13 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v21 = "SetMultiCamConfiguration";
        _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_INFO, "%s - Creating MultiCameraSession\n", buf, 0xCu);
      }

      operator new();
    }

    return 4294954516;
  }

  else
  {
    LockStreamMutexes(*(a4 + 120));
    if (CFArrayGetCount(*(a4 + 120)))
    {
      v14 = 0;
      do
      {
        CFArrayGetValueAtIndex(*(a4 + 120), v14);
        FigCaptureStreamGetFigBaseObject();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        *(DerivedStorage + 4936) = 0;
        *(DerivedStorage + 4816) = 0;
        ++v14;
      }

      while (v14 < CFArrayGetCount(*(a4 + 120)));
    }

    UnlockStreamMutexes(*(a4 + 120));
    v16 = *(a4 + 240);
    if (v16 && CFArrayGetCount(v16))
    {
      v17 = 0;
      do
      {
        CFArrayGetValueAtIndex(*(a4 + 240), v17);
        FigCaptureSynchronizedStreamsGroupGetFigBaseObject();
        v18 = CMBaseObjectGetDerivedStorage();
        pthread_mutex_lock((v18 + 40));
        v19 = *(v18 + 136);
        if (v19)
        {
          H16ISP::H16ISPFrameReceiverSharedBufferPool::~H16ISPFrameReceiverSharedBufferPool(v19);
          MEMORY[0x22AA55B60]();
          *(v18 + 136) = 0;
        }

        H16ISPSensorSharedRawPoolConfigurationReset(v18, 1);
        pthread_mutex_unlock((v18 + 40));
        ++v17;
        v7 = 0;
      }

      while (v17 < CFArrayGetCount(*(a4 + 240)));
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

void std::__tree<std::__value_type<CalibrationDataTypes,Input *>,std::__map_value_compare<CalibrationDataTypes,std::__value_type<CalibrationDataTypes,Input *>,std::less<CalibrationDataTypes>,true>,std::allocator<std::__value_type<CalibrationDataTypes,Input *>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<CalibrationDataTypes,Input *>,std::__map_value_compare<CalibrationDataTypes,std::__value_type<CalibrationDataTypes,Input *>,std::less<CalibrationDataTypes>,true>,std::allocator<std::__value_type<CalibrationDataTypes,Input *>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<CalibrationDataTypes,Input *>,std::__map_value_compare<CalibrationDataTypes,std::__value_type<CalibrationDataTypes,Input *>,std::less<CalibrationDataTypes>,true>,std::allocator<std::__value_type<CalibrationDataTypes,Input *>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t CopyGroupMasterConfigurationSupportedKeys(const __CFAllocator *a1, __CFArray **a2)
{
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  v4 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, *MEMORY[0x277CF6810]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6800]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF67F8]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6808]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6818]);
  }

  *a2 = v4;
  return 0;
}

uint64_t CopySynchronizedStreamsSlaveConfiguration(const __CFAllocator *a1, __CFDictionary **a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 3758097085;
  }

  v7 = Mutable;
  v8 = *MEMORY[0x277CBED28];
  v9 = *MEMORY[0x277CBED10];
  if (*(a3 + 4371))
  {
    v10 = *MEMORY[0x277CBED28];
  }

  else
  {
    v10 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x277CF62B0], v10);
  if (*(a3 + 4373))
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  CFDictionarySetValue(v7, *MEMORY[0x277CF62A0], v11);
  v12 = *(a3 + 4376);
  if (v12 <= 0)
  {
    v12 = (*(a3 + 52) / 10.0);
  }

  valuePtr = v12;
  v13 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(v7, *MEMORY[0x277CF62A8], v13);
  CFRelease(v13);
  result = 0;
  *a2 = v7;
  return result;
}

uint64_t ObjectDetectionConfigurationIsObjectEnabled(const __CFDictionary *a1, const __CFString *a2)
{
  value = 0;
  result = CFDictionaryGetValueIfPresent(a1, a2, &value);
  if (result)
  {
    result = value;
    if (value)
    {
      v3 = CFGetTypeID(value);
      return v3 == CFBooleanGetTypeID() && CFBooleanGetValue(value) != 0;
    }
  }

  return result;
}

uint64_t H16ISPCaptureDeviceSetProperty(uint64_t a1, const __CFString *a2, __CFString *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LogCaptureDeviceEvent(4u, DerivedStorage, 0, 0, a2, a3, 0);
  pthread_mutex_lock((DerivedStorage + 32));
  if (!*DerivedStorage)
  {
    if (!*(DerivedStorage + 24))
    {
      pthread_mutex_unlock((DerivedStorage + 32));
      v6 = 4294954616;
      goto LABEL_21;
    }

    if (deviceProperties[0])
    {
      v7 = deviceProperties;
      if (CFEqual(deviceProperties[0], a2))
      {
LABEL_10:
        if (v7[2])
        {
          if (IsPropertySupportedForDevice(v7, DerivedStorage))
          {
            v6 = (v7[2])(a3, 0, 0, DerivedStorage);
            if (v6)
            {
              v10 = CFCopyDescription(v7[1]);
              v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v11 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
              }

              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                v13 = 136315906;
                v14 = "H16ISPCaptureDeviceSetProperty";
                v15 = 2080;
                CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
                v17 = 2080;
                v18 = CFStringGetCStringPtr(v10, 0x8000100u);
                v19 = 1024;
                v20 = v6;
                _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, "%s - Error setting %s %s: %d\n", &v13, 0x26u);
              }

              CFRelease(v10);
            }
          }

          else
          {
            v6 = 4294954509;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v8 = 1;
        while (1)
        {
          v9 = &deviceProperties[5 * v8];
          if (!*v9)
          {
            break;
          }

          ++v8;
          if (CFEqual(*v9, a2))
          {
            v7 = v9;
            goto LABEL_10;
          }
        }
      }
    }

    v6 = 4294954512;
LABEL_19:
    pthread_mutex_unlock((DerivedStorage + 32));
    LogCaptureDeviceEvent(4u, DerivedStorage, 0, 0, a2, a3, 1);
    goto LABEL_21;
  }

  pthread_mutex_unlock((DerivedStorage + 32));
  v6 = 4294954511;
  FigSignalError(4294954511, "invalidated");
LABEL_21:
  kdebug_trace();
  return v6;
}

uint64_t GetNumberOfActiveChannels(const __CFArray *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a1);
  if (Count >= 0xB)
  {
    v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = Count;
      _os_log_impl(&dword_2247DB000, v3, OS_LOG_TYPE_DEFAULT, "GetNumberOfActiveChannels: Received strange value from CFArrayGetCount: %ld\n", &v8, 0xCu);
    }
  }

  if (Count < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    if (CFArrayGetValueAtIndex(a1, v4))
    {
      FigCaptureStreamGetFigBaseObject();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!*DerivedStorage)
      {
        if (*(DerivedStorage + 160))
        {
          v5 = (v5 + 1);
        }

        else
        {
          v5 = v5;
        }
      }
    }

    ++v4;
  }

  while (Count != v4);
  return v5;
}

double H16ISPSensorSharedRawPoolConfigurationReset(uint64_t a1, char a2)
{
  v3 = 0;
  v4 = a1 + 144;
  do
  {
    v5 = *(v4 + v3);
    if (v5)
    {
      H16ISP::H16ISPFrameReceiverSharedBufferPool::~H16ISPFrameReceiverSharedBufferPool(v5);
      MEMORY[0x22AA55B60]();
      *(v4 + v3) = 0;
    }

    v3 += 56;
  }

  while (v3 != 168);
  if (a2)
  {
    *(v4 + 160) = 0;
    result = 0.0;
    *(v4 + 128) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  return result;
}

uint64_t CopyClock(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 8);
  *a2 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  return 0;
}

uint64_t H16ISPCaptureDeviceRequestStreams(uint64_t a1, __CFString *a2, CFDictionaryRef theDict)
{
  v223 = *MEMORY[0x277D85DE8];
  WORD2(v207) = 0;
  LODWORD(v207) = 0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CF6A10]);
    v7 = 2;
    if (Value)
    {
      valuePtr = 0;
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr == 3)
      {
        v8 = 4;
      }

      else
      {
        v8 = 2;
      }

      if (valuePtr)
      {
        v7 = v8;
      }

      else
      {
        v7 = 1;
      }
    }

    v9 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF6A18]);
    if (v9)
    {
      v10 = CFBooleanGetValue(v9) != 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v7 = 2;
  }

  v11 = 4294954516;
  if (a1 && a2)
  {
    v12 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    if (!Mutable)
    {
      return 4294954510;
    }

    v14 = Mutable;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    LogCaptureDeviceEvent(6u, DerivedStorage, 0, 0, 0, a2, 0);
    pthread_mutex_lock((DerivedStorage + 32));
    if (*DerivedStorage || (H16ISP::H16ISPDevice::ISP_IsPowered(*(DerivedStorage + 3)) & 1) == 0)
    {
      v140 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v140 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v140;
      }

      if (OUTLINED_FUNCTION_4())
      {
        v142 = *DerivedStorage;
        valuePtr = 136315394;
        OUTLINED_FUNCTION_30(v142);
        OUTLINED_FUNCTION_32(&dword_2247DB000, v140, v143, "%s - Capture device invalid=%u or ISP powered off\n", &valuePtr);
      }

LABEL_90:
      v11 = 4294954511;
LABEL_91:
      pthread_mutex_unlock((DerivedStorage + 32));
      CFRelease(v14);
      return v11;
    }

    v169 = __PAIR64__(v10, v7);
    alloc = v12;
    v171 = DerivedStorage;
    LockStreamMutexes(*(DerivedStorage + 15));
    theArray = v14;
    if (CFArrayGetCount(a2))
    {
      v16 = a2;
      v17 = 0;
      while (1)
      {
        v18 = v16;
        ValueAtIndex = CFArrayGetValueAtIndex(v16, v17);
        FigCaptureStreamGetFigBaseObject();
        v20 = CMBaseObjectGetDerivedStorage();
        v21 = v20;
        if (*v20)
        {
          break;
        }

        if (*(v20 + 2))
        {
          v145 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v145 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v145;
          }

          if (OUTLINED_FUNCTION_4())
          {
            v159 = *(v21 + 156);
            valuePtr = 136315394;
            OUTLINED_FUNCTION_30(v159);
            OUTLINED_FUNCTION_32(&dword_2247DB000, v145, v160, "%s - Capture stream reserved for internal use (channel=%d)\n", &valuePtr);
          }

          UnlockStreamMutexes(*(DerivedStorage + 15));
          v11 = 4294954516;
          goto LABEL_91;
        }

        if (*(v20 + 1))
        {
          *(&v207 + *(v20 + 156)) = 1;
        }

        else
        {
          v22 = (v20 + 856);
          v23 = 4;
          do
          {
            if (*v22)
            {
              v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v25 = os_log_create("com.apple.isp", "plugin");
                OUTLINED_FUNCTION_48(v25);
              }

              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                valuePtr = 136315138;
                v26 = OUTLINED_FUNCTION_27();
                _os_log_impl(v26, v27, v28, "%s - primaryScalerOutput.initialClientBuffers cleanup needed\n", v29, 0xCu);
              }

              CVPixelBufferRelease(*v22);
              *v22 = 0;
            }

            v30 = v22[25];
            if (v30)
            {
              CVPixelBufferRelease(v30);
              v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v32 = os_log_create("com.apple.isp", "plugin");
                OUTLINED_FUNCTION_48(v32);
              }

              if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
              {
                valuePtr = 136315138;
                v33 = OUTLINED_FUNCTION_27();
                _os_log_impl(v33, v34, v35, "%s - secondaryScalerOutput.initialClientBuffers cleanup needed\n", v36, 0xCu);
              }

              v22[25] = 0;
            }

            v37 = v22[50];
            if (v37)
            {
              CVPixelBufferRelease(v37);
              v38 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v39 = os_log_create("com.apple.isp", "plugin");
                OUTLINED_FUNCTION_48(v39);
              }

              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                valuePtr = 136315138;
                v40 = OUTLINED_FUNCTION_27();
                _os_log_impl(v40, v41, v42, "%s - intermediateTapOutput.initialClientBuffers cleanup needed\n", v43, 0xCu);
              }

              v22[50] = 0;
            }

            ++v22;
            --v23;
          }

          while (v23);
        }

        v14 = theArray;
        CFArrayAppendValue(theArray, ValueAtIndex);
        ++v17;
        v16 = v18;
        if (v17 >= CFArrayGetCount(v18))
        {
          goto LABEL_45;
        }
      }

      v144 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v144 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v144;
      }

      if (OUTLINED_FUNCTION_4())
      {
        v157 = *(v21 + 156);
        valuePtr = 136315394;
        OUTLINED_FUNCTION_30(v157);
        OUTLINED_FUNCTION_32(&dword_2247DB000, v144, v158, "%s - Invalid capture stream (channel=%d)\n", &valuePtr);
      }

      UnlockStreamMutexes(*(DerivedStorage + 15));
      goto LABEL_90;
    }

LABEL_45:
    if (CFArrayGetCount(v14))
    {
      v44 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(v14, v44);
        FigCaptureStreamGetFigBaseObject();
        v45 = CMBaseObjectGetDerivedStorage();
        *(v45 + 4) = v169;
        if (H16ISP::H16ISPDevice::ISP_ReserveChannel(*(DerivedStorage + 3), *(v45 + 156), v169))
        {
          break;
        }

        *(v45 + 1) = 1;
        *(v45 + 4605) = 0;
        v46 = *(v45 + 156);
        if ((*(&v207 + v46) & 1) == 0)
        {
          H16ISP::H16ISPDevice::ResetMetadataSections(*(DerivedStorage + 3), v46);
        }

        if (++v44 >= CFArrayGetCount(v14))
        {
          goto LABEL_51;
        }
      }

      if (CFArrayGetCount(v14))
      {
        v146 = 0;
        do
        {
          CFArrayGetValueAtIndex(v14, v146);
          FigCaptureStreamGetFigBaseObject();
          v147 = CMBaseObjectGetDerivedStorage();
          if (*(v147 + 1))
          {
            v148 = v147;
            H16ISP::H16ISPDevice::ISP_ReleaseChannel(*(DerivedStorage + 3), *(v147 + 156));
            *(v148 + 1) = 0;
          }

          ++v146;
        }

        while (v146 < CFArrayGetCount(v14));
      }

      v11 = 4294954615;
LABEL_120:
      UnlockStreamMutexes(*(DerivedStorage + 15));
      goto LABEL_91;
    }

LABEL_51:
    if (!CFArrayGetCount(v14))
    {
      v11 = 0;
      goto LABEL_120;
    }

    v48 = 0;
    v49 = BYTE4(v169) ^ 1;
    *&v47 = 136315650;
    v175 = v47;
    while (1)
    {
      CFArrayGetValueAtIndex(v14, v48);
      FigCaptureStreamGetFigBaseObject();
      v50 = CMBaseObjectGetDerivedStorage();
      v51 = v14;
      if ((*(&v207 + v50[39]) & 1) == 0)
      {
        break;
      }

LABEL_84:
      ++v48;
      v14 = v51;
      if (v48 >= CFArrayGetCount(v51))
      {
        v11 = 0;
LABEL_110:
        DerivedStorage = v171;
        goto LABEL_120;
      }
    }

    v52 = v50;
    v50[12] = 0;
    v50[1199] = 0;
    H16ISPResetVideoOutputConfigurationsForNewSelectedFormat(v50, v171);
    v53 = OUTLINED_FUNCTION_40();
    v56 = H16ISP::H16ISPDevice::EnableSBS(v53, v55, *(v54 + 104));
    if (v56)
    {
      v149 = v56;
      v150 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v151 = os_log_create("com.apple.isp", "plugin");
        OUTLINED_FUNCTION_48(v151);
      }

      v11 = 3758097122;
      DerivedStorage = v171;
      v14 = theArray;
      if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
      {
        valuePtr = 136315394;
        v210 = "H16ISPCaptureDeviceRequestStreams";
        v211 = 1024;
        v212 = v149;
        OUTLINED_FUNCTION_32(&dword_2247DB000, v150, v152, "%s - EnableSBS error: 0x%08X\n\n", &valuePtr);
      }

      goto LABEL_120;
    }

    v57 = OUTLINED_FUNCTION_40();
    CameraConfig = H16ISP::H16ISPDevice::GetCameraConfig(v57, v59, *(v58 + 16), &v180 + 4, &valuePtr);
    if (CameraConfig)
    {
      v153 = CameraConfig;
      v154 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v155 = os_log_create("com.apple.isp", "plugin");
        OUTLINED_FUNCTION_37(v155);
      }

      DerivedStorage = v171;
      v14 = theArray;
      if (OUTLINED_FUNCTION_41())
      {
        *__str = 136315394;
        v220 = "H16ISPCaptureDeviceRequestStreams";
        v221 = 1024;
        v222 = v153;
        OUTLINED_FUNCTION_32(&dword_2247DB000, v154, v156, "%s - GetCameraConfig error: 0x%08X\n\n", __str);
      }

      v11 = 4294954516;
      goto LABEL_120;
    }

    *(v52 + 60) = v182 * 0.0039062;
    if ((v169 & 0x100000000) == 0 && SetDefaultFormatIndexConfiguration(v171, v52))
    {
      v11 = 3758097122;
      v14 = theArray;
      goto LABEL_110;
    }

    *(v52 + 58192) = v49;
    v61 = *(v171 + 24);
    v62 = *(v61 + 4304);
    hasSensorType = H16ISP::H16ISPDevice::hasSensorType(v61, 1785950322);
    if (*(v52 + 664) && *(v171 + 232))
    {
      if (hasSensorType)
      {
        v64 = *(v52 + 156);
        if (*(v62 + 104 * v64 + 60) == 1)
        {
LABEL_65:
          v208 = 0;
          snprintf(__str, 0x80uLL, "%s%d.bin", "/var/mobile/Library/ISP/PFLEstimatorState", v64);
          v65 = CFStringCreateWithCString(alloc, __str, 0x8000100u);
          if (v65)
          {
            v66 = v65;
            v67 = H16ISP::H16ISPServicesRemote::ReadData(*(v171 + 232), v65, &v208);
            CFRelease(v66);
            if (v67 || (v76 = OUTLINED_FUNCTION_44(v68, v69, v70, v71, v72, v73, v74, v75, v161, v164, alloc, v169, v171, theArray, v175, *(&v175 + 1), v178, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208)) == 0)
            {
              v88 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v89 = os_log_create("com.apple.isp", "plugin");
                OUTLINED_FUNCTION_37(v89);
              }

              v90 = os_log_type_enabled(v88, OS_LOG_TYPE_INFO);
              if (v90)
              {
                OUTLINED_FUNCTION_43(v90, v91, v92, v93, v94, v95, v96, v97, v161, v164, alloc, v169, v171, theArray, v98);
                v100 = OUTLINED_FUNCTION_31(v99);
                _os_log_impl(v100, v101, OS_LOG_TYPE_INFO, "%s - Failed to read PFL state (or file does not exist) (channel=%d): 0x%08X\n\n", v102, 0x18u);
              }
            }

            else
            {
              Length = CFDataGetLength(v76);
              if (Length < 0x2019)
              {
                v103 = time(0);
                v111 = OUTLINED_FUNCTION_44(v103, v104, v105, v106, v107, v108, v109, v110, v161, v164, alloc, v169, v171, theArray, v175, *(&v175 + 1), v178, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);
                *(CFDataGetBytePtr(v111) + 1) = v103;
                PersistFile = H16ISP::H16ISPDevice::LoadPersistFile(*(v172 + 24), *(v52 + 156));
                v113 = PersistFile;
                v121 = OUTLINED_FUNCTION_44(PersistFile, v114, v115, v116, v117, v118, v119, v120, v162, v165, alloca, v170, v172, theArraya, v176, v177, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);
                CFRelease(v121);
                if (v113)
                {
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                  {
                    v122 = os_log_create("com.apple.isp", "plugin");
                    OUTLINED_FUNCTION_37(v122);
                  }

                  v123 = OUTLINED_FUNCTION_41();
                  if (v123)
                  {
                    OUTLINED_FUNCTION_43(v123, v124, v125, v126, v127, v128, v129, v130, v163, v166, alloc, v169, v171, theArray, v131);
                    v137 = OUTLINED_FUNCTION_31(v136);
                    _os_log_error_impl(v137, v138, OS_LOG_TYPE_ERROR, "%s - Failed to load PFL state (channel=%d): 0x%08X\n\n", v139, 0x18u);
                  }
                }
              }

              else
              {
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v78 = os_log_create("com.apple.isp", "plugin");
                  OUTLINED_FUNCTION_37(v78);
                }

                v79 = OUTLINED_FUNCTION_41();
                if (v79)
                {
                  v213 = v175;
                  v214 = "LoadPFLFile";
                  v215 = 2048;
                  v216 = Length;
                  v217 = 2048;
                  v218 = 8216;
                  OUTLINED_FUNCTION_36();
                  _os_log_error_impl(v132, v133, v134, "%s - File size (%zd) doesn't match expected firmware size(%zu)\n\n", v135, 0x20u);
                }

                v87 = OUTLINED_FUNCTION_44(v79, v80, v81, v82, v83, v84, v85, v86, v161, v164, alloc, v169, v171, theArray, v175, *(&v175 + 1), v178, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);
                CFRelease(v87);
              }
            }
          }

          goto LABEL_83;
        }
      }

      if (H16ISP::H16ISPDevice::hasSensorType(*(v171 + 24), 1718186595) && byte_2810033C6 == 1)
      {
        v64 = *(v52 + 156);
        goto LABEL_65;
      }
    }

LABEL_83:
    v51 = theArray;
    goto LABEL_84;
  }

  return v11;
}

uint64_t H16ISP::H16ISPDevice::SetMinimumFrameSkippingRatio(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 340;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t CopyGroupBaseZoomFactors(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v9 = *(*(a5 + 24) + 4304);
    if (CFArrayGetCount(*(a4 + 16)) >= 1)
    {
      v10 = 0;
      v11 = v9 + 8;
      v12 = 1;
      do
      {
        CFArrayGetValueAtIndex(*(a4 + 16), v10);
        FigCaptureStreamGetFigBaseObject();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v14 = H16ISP::ModuleDescriptionToPortType(*(v11 + 104 * *(DerivedStorage + 156) + 8));
        setValueCFDict<float>(Mutable, v14, *(DerivedStorage + 4384));
        v10 = v12;
      }

      while (CFArrayGetCount(*(a4 + 16)) > v12++);
    }

    result = 0;
  }

  else
  {
    result = 4294954516;
  }

  *a2 = Mutable;
  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_CreateMultiCameraSession(uint64_t a1, void *inputStruct)
{
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0x44u, inputStruct, 0x34uLL, 0, 0);
  }

  else
  {
    return 3758097084;
  }
}