uint64_t PeakTrackingFocusNow(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  valuePtr = 6;
  if (a1 && (v7 = CFGetTypeID(a1), v7 == CFDictionaryGetTypeID()))
  {
    Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF5710]);
    v9 = Value;
    if (Value)
    {
      if (CFEqual(Value, *MEMORY[0x277CF5720]))
      {
        LODWORD(v9) = 1;
      }

      else
      {
        LODWORD(v9) = 2 * (CFEqual(v9, *MEMORY[0x277CF5718]) != 0);
      }
    }

    v10 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5708]);
    if (v10)
    {
      CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v11 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v11 |= 0x80000000;
  }

  bzero(v15, 0x14uLL);
  v16 = -31736;
  v17 = v17 & 0x7FFF0000 | v11;
  v18 = v9;
  v19 = valuePtr;
  v12 = H16ISP::H16ISPDevice::ISP_SendCommand(*(a4 + 24), v15, 0x14u, 0, 0xFFFFFFFF);
  v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v13 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v22 = v9;
    v23 = 1024;
    v24 = v12;
    _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating peak-tracking auto-focus operation, directionHint=%d, res=0x%08X\n\n", buf, 0xEu);
  }

  if (v12)
  {
    return 4294954516;
  }

  result = 0;
  *(a2 + 552) = 1;
  return result;
}

uint64_t LockLTMNow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v5 |= 0x80000000;
  }

  v6 = H16ISP::H16ISPDevice::LTMUpdateSuspend(*(a4 + 24), v5);
  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = v6;
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: LTM Update Suspend, result=0x%08X\n\n", v9, 8u);
  }

  if (v6)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t UnlockLTMNow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v5 |= 0x80000000;
  }

  v6 = H16ISP::H16ISPDevice::LTMUpdateResume(*(a4 + 24), v5);
  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = v6;
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: LTM Update Resume, result=0x%08X\n\n", v9, 8u);
  }

  if (v6)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetMaxPerFrameExposureDelta(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  if (HIWORD(valuePtr))
  {
    return 4294954516;
  }

  v8 = H16ISP::H16ISPDevice::SetAEPanoMaxExpAdjustment(*(a4 + 24), *(a2 + 156), valuePtr);
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v13 = valuePtr;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetMaxPerFrameExposureDelta: 0x%08X, result=0x%08X\n\n", buf, 0xEu);
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

uint64_t CopyMaxPerFrameExposureDelta(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::GetAEPanoMaxExpAdjustment(*(a5 + 24), *(a3 + 156), &valuePtr))
  {
    v6 = 0;
    v7 = 4294954513;
  }

  else
  {
    v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v7 = 0;
  }

  *a2 = v6;
  return v7;
}

uint64_t CopyFocusLastScanHistory(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v33 = 0;
  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v34[0] = 0;
    v10 = CFArrayCreateMutable(v8, 0, MEMORY[0x277CBF128]);
    if (!v10)
    {
      v13 = 4294954510;
      goto LABEL_12;
    }

    v11 = v10;
    v32 = 0;
    if (H16ISP::H16ISPDevice::GetFocusMode(*(v3 + 24), *(v5 + 156), &v32) || (v32 ? (v12 = MEMORY[0x277CF3D78]) : (v12 = MEMORY[0x277CF3D80]), CFDictionarySetValue(Mutable, *MEMORY[0x277CF3DA8], *v12), bzero(v26, 0x8250uLL), v27 = -31730, v28 = *(v5 + 156), H16ISP::H16ISPDevice::ISP_SendCommand(*(v3 + 24), v26, 0x8250u, 0, 0xFFFFFFFF)))
    {
      v13 = 4294954516;
LABEL_9:
      CFRelease(v11);
LABEL_12:
      CFRelease(Mutable);
      Mutable = 0;
      goto LABEL_13;
    }

    HIDWORD(v33) = v29;
    v15 = CFNumberCreate(0, kCFNumberIntType, &v33 + 4);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CF3DB0], v15);
    CFRelease(v15);
    if (!HIDWORD(v33))
    {
      v13 = 4294954513;
      goto LABEL_9;
    }

    v16 = CFArrayCreateMutable(v8, 0, MEMORY[0x277CBF128]);
    if (!v16)
    {
      v13 = 4294954510;
      goto LABEL_9;
    }

    v17 = v16;
    if (HIDWORD(v33))
    {
      v18 = 0;
      do
      {
        v34[0] = v30[v18];
        v19 = CFNumberCreate(0, kCFNumberIntType, v34);
        CFArrayAppendValue(v17, v19);
        CFRelease(v19);
        ++v18;
      }

      while (v18 < HIDWORD(v33));
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x277CF3DB8], v17);
    CFRelease(v17);
    v20 = 0;
    v21 = v31;
    do
    {
      if (LOBYTE(v31[513 * v20 + 512]) != 1)
      {
        break;
      }

      LODWORD(v33) = ++v20;
      if (HIDWORD(v33))
      {
        v22 = 0;
        v23 = v21;
        do
        {
          v24 = CFNumberCreate(0, kCFNumberLongLongType, v23);
          CFArrayAppendValue(v11, v24);
          CFRelease(v24);
          ++v22;
          v23 += 8;
        }

        while (v22 < HIDWORD(v33));
      }

      v21 += 2052;
    }

    while (v20 != 16);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CF3DC0], v11);
    CFRelease(v11);
    v25 = CFNumberCreate(0, kCFNumberIntType, &v33);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CF3DC8], v25);
    CFRelease(v25);
    v13 = 0;
  }

  else
  {
    v13 = 4294954510;
  }

LABEL_13:
  *v7 = Mutable;
  return v13;
}

uint64_t CopySphereMode(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  H16ISP::H16ISPDevice::GetOISMode(*(a5 + 24), *(a3 + 156), &v9);
  if (v9 - 1 > 0xC)
  {
    v6 = MEMORY[0x277CF6010];
  }

  else
  {
    v6 = qword_278531300[v9 - 1];
  }

  v7 = *v6;
  CFRetain(*v6);
  *a2 = v7;
  return 0;
}

uint64_t SetMotionDataFromISPEnabled(const void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFBooleanGetTypeID()))
  {
    if (*(a2 + 160))
    {
      v5 = 4294954612;
    }

    else
    {
      v9 = CFEqual(a1, *MEMORY[0x277CBED28]);
      v5 = 0;
      *(a2 + 4146) = v9 != 0;
    }
  }

  else
  {
    v5 = 4294954516;
  }

  v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v6 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 4146))
    {
      v7 = "True";
    }

    else
    {
      v7 = "False";
    }

    v10 = 136315394;
    v11 = v7;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetMotionDataFromISPEnabled: %s (err=%d)\n\n", &v10, 0x12u);
  }

  return v5;
}

uint64_t SetVideoStabilizationISPDebugDataEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1 && (v7 = CFGetTypeID(a1), v7 == CFBooleanGetTypeID()))
  {
    if (*(a2 + 160))
    {
      v8 = 0;
      v9 = 4294954612;
    }

    else
    {
      v13 = CFEqual(a1, *MEMORY[0x277CBED28]);
      v8 = v13 != 0;
      v9 = 4294954516;
      if (!H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), 16, v8))
      {
        if (H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), 18, v13 != 0))
        {
          v9 = 4294954516;
        }

        else
        {
          v9 = 0;
        }
      }
    }
  }

  else
  {
    v8 = 0;
    v9 = 4294954516;
  }

  v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v10 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = "False";
    if (v8)
    {
      v11 = "True";
    }

    v14 = 136315394;
    v15 = v11;
    v16 = 1024;
    v17 = v9;
    _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetVideoStabilizationISPDebugDataEnabled: %s (err=%d)\n\n", &v14, 0x12u);
  }

  return v9;
}

uint64_t SetMaxFrameCoalescingDuration(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  memset(&v12, 0, sizeof(v12));
  CMTimeMakeFromDictionary(&v12, a1);
  time = v12;
  v8 = (CMTimeGetSeconds(&time) * 1000000.0);
  v9 = H16ISP::H16ISPDevice::SetTargetToHostFrameDeliveryCadenceInMicroSeconds(*(a4 + 24), v8);
  v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v10 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LODWORD(time.value) = 67109376;
    HIDWORD(time.value) = v8;
    LOWORD(time.timescale) = 1024;
    *(&time.timescale + 2) = v9;
    _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetMaxFrameCoalescingDuration (in MicroSeconds): %d result=0x%08X\n\n", &time, 0xEu);
  }

  if (v9)
  {
    return 4294954516;
  }

  result = 0;
  *(a2 + 700) = v8;
  return result;
}

uint64_t CopyMaxFrameCoalescingDuration(uint64_t a1, CFDictionaryRef *a2, uint64_t a3)
{
  CMTimeMake(&time, *(a3 + 700), 1000000);
  *a2 = CMTimeCopyAsDictionary(&time, *MEMORY[0x277CBECE8]);
  return 0;
}

uint64_t SetContinuousAutoFocusNow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v4 |= 0x80000000;
  }

  v5 = H16ISP::H16ISPDevice::EnableContinuousFocus(*(a4 + 24), v4, 1, *(a2 + 216));
  v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v6 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109120;
    v8[1] = v5;
    _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetContinuousAutoFocusNow result=0x%08X\n\n", v8, 8u);
  }

  if (v5)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetLockAFNow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v5 |= 0x80000000;
  }

  v6 = H16ISP::H16ISPDevice::EnableContinuousFocus(*(a4 + 24), v5, 0, 0);
  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = v6;
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetLockAFNow result=0x%08X\n\n", v9, 8u);
  }

  if (v6)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetManualWhiteBalanceGain(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v22 = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF4760]);
  v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF4758]);
  v10 = CFDictionaryGetValue(a1, *MEMORY[0x277CF4750]);
  v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D98]);
  v12 = !Value || v9 == 0;
  if (v12 || v10 == 0)
  {
    return 4294954516;
  }

  v15 = v11;
  valuePtr = 0;
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  v20 = 0;
  CFNumberGetValue(v9, kCFNumberIntType, &v20);
  v19 = 0;
  CFNumberGetValue(v10, kCFNumberIntType, &v19);
  if (v15)
  {
    CFNumberGetValue(v15, kCFNumberSInt32Type, &v22);
    v16 = v22;
  }

  else
  {
    v16 = 0;
  }

  v17 = H16ISP::H16ISPDevice::SetAWBManualGain(*(a4 + 24), *(a2 + 156), valuePtr, v20, v19, v16);
  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v18 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 67110144;
    v24 = valuePtr;
    v25 = 1024;
    v26 = v20;
    v27 = 1024;
    v28 = v19;
    v29 = 1024;
    v30 = v22;
    v31 = 1024;
    v32 = v17;
    _os_log_impl(&dword_2247DB000, v18, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetAWBManualGain, red=0x%08X, green=0x%08X, blue=0x%08X, tag=0x%08X, result=0x%08X\n\n", buf, 0x20u);
  }

  if (v17)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetDebugHallDataFromISPEnabled(const void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFBooleanGetTypeID()))
  {
    if (*(a2 + 160))
    {
      v5 = 4294954612;
    }

    else
    {
      v9 = CFEqual(a1, *MEMORY[0x277CBED28]);
      v5 = 0;
      *(a2 + 4148) = v9 != 0;
    }
  }

  else
  {
    v5 = 4294954516;
  }

  v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v6 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 4148))
    {
      v7 = "True";
    }

    else
    {
      v7 = "False";
    }

    v10 = 136315394;
    v11 = v7;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetDebugHallDataFromISPEnabled: %s (err=%d)\n\n", &v10, 0x12u);
  }

  return v5;
}

uint64_t SetDebugMotionDataFromISPEnabled(const void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFBooleanGetTypeID()))
  {
    if (*(a2 + 160))
    {
      v5 = 4294954612;
    }

    else
    {
      v9 = CFEqual(a1, *MEMORY[0x277CBED28]);
      v5 = 0;
      *(a2 + 4147) = v9 != 0;
    }
  }

  else
  {
    v5 = 4294954516;
  }

  v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v6 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 4147))
    {
      v7 = "True";
    }

    else
    {
      v7 = "False";
    }

    v10 = 136315394;
    v11 = v7;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetDebugMotionDataFromISPEnabled: %s (err=%d)\n\n", &v10, 0x12u);
  }

  return v5;
}

uint64_t SetFaceDetectionConfiguration(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 160) && *(a2 + 105) != 1)
  {
    return 4294954513;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF4498]);
  v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF4490]);
  v10 = CFDictionaryGetValue(a1, *MEMORY[0x277CF44A8]);
  v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CF44A0]);
  *(a2 + 4168) = 0;
  v12 = MEMORY[0x277CBED28];
  if (Value && CFEqual(Value, *MEMORY[0x277CBED28]))
  {
    *(a2 + 4168) |= 4u;
  }

  if (v9 && CFEqual(v9, *v12))
  {
    *(a2 + 4168) |= 2u;
  }

  if (v10 && CFEqual(v10, *v12))
  {
    *(a2 + 4168) |= 1u;
  }

  if (v11 && (v13 = CFGetTypeID(v11), v13 == CFNumberGetTypeID()))
  {
    LODWORD(v25) = 0;
    CFNumberGetValue(v11, kCFNumberSInt32Type, &v25);
    v14 = v25;
    if ((v25 & 0x80000000) != 0)
    {
      v14 = 0;
    }

    else
    {
      v15 = 4236;
      if (!*(a2 + 160))
      {
        v15 = 4228;
      }

      v16 = *(a2 + v15);
      if (v25 >= v16)
      {
        v14 = v16;
      }
    }
  }

  else
  {
    v14 = *(a2 + 160) ? *(a2 + 4236) : *(a2 + 4228);
  }

  *(a2 + 4232) = v14;
  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v18 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = *(a2 + 4168);
    v20 = *(a2 + 4232);
    LODWORD(v25) = 67109376;
    HIDWORD(v25) = v19;
    v26 = 1024;
    v27 = v20;
    _os_log_impl(&dword_2247DB000, v18, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetFaceDetectionConfiguration, fdFeatureFlags=%d, maxFaces=%d\n\n", &v25, 0xEu);
  }

  if (!*(a2 + 160) || *(a2 + 105) != 1)
  {
    return 0;
  }

  v21 = H16ISP::H16ISPDevice::ReconfigureFaceDetect(*(a4 + 24), *(a2 + 156), *(a2 + 4168), *(a2 + 4232));
  v22 = *(a2 + 4720);
  if (v22)
  {
    v25 = 0;
    H16ISP::H16ISPFilterGraphManager::GetNode(v22, 4, &v25);
    if (v25)
    {
      if (*(a2 + 4144))
      {
        v23 = 1;
      }

      else
      {
        v23 = *(a2 + 4147);
      }

      if (*(a2 + 4145) & 1) != 0 || (*(a2 + 4146))
      {
        v24 = 1;
      }

      else
      {
        v24 = *(a2 + 4148);
      }

      SetOptionsForMetadataNode(v25, a4, a2, v23 & 1, v24 & 1);
    }
  }

  if (v21)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetZoomFactor(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  valuePtr = 1.0;
  if (gCaptureDeviceCFPrefs[44 * *(a2 + 156) + 192])
  {
    return 0;
  }

  if (!cf)
  {
    return 4294954516;
  }

  v8 = CFGetTypeID(cf);
  if (v8 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(cf, kCFNumberFloatType, &valuePtr);
  v9 = valuePtr;
  *(a2 + 4156) = valuePtr;
  *(a2 + 4160) = v9;
  *(a2 + 4164) = v9;
  v10 = *(a2 + 4360);
  if (v10 && CFArrayGetCount(v10))
  {
    v11 = 0;
    v12 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(a2 + 4360), v12);
      FigCaptureStreamGetFigBaseObject();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(DerivedStorage + 156), 1919251319))
      {
        if (*(a2 + 160))
        {
          v11 = H16ISP::H16ISPDevice::SetZoomFactor(*(a4 + 24), *(DerivedStorage + 156), vcvts_n_s32_f32(valuePtr, 0xAuLL));
        }

        valuePtr = valuePtr * 0.5;
        if (valuePtr < 1.0)
        {
          valuePtr = 1.0;
        }
      }

      ++v12;
    }

    while (v12 < CFArrayGetCount(*(a2 + 4360)));
  }

  else
  {
    v11 = 0;
  }

  if (*(a2 + 160))
  {
    v14 = *(a2 + 156);
    if (*(a2 + 4360) && !*(a2 + 4380))
    {
      v14 |= 0x80000000;
    }

    v11 = H16ISP::H16ISPDevice::SetZoomFactor(*(a4 + 24), v14, vcvts_n_s32_f32(valuePtr, 0xAuLL));
  }

  v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v15 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v18 = valuePtr;
    v19 = 1024;
    v20 = v11;
    _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetZoomFactor: %10.5f, result=0x%08X\n\n", buf, 0x12u);
  }

  if (v11)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t CopyZoomFactor(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *v12 = 0;
  if (H16ISP::H16ISPDevice::GetCurrentZoomFactor(*(a5 + 24), *(a3 + 156), &v12[1], v12))
  {
    v6 = 0;
    v7 = 4294954513;
  }

  else
  {
    v8 = v12[1];
    if (v12[1] <= v12[0])
    {
      v8 = v12[0];
    }

    v9 = vcvtd_n_f64_u32(v8, 0xAuLL);
    valuePtr = v9;
    v6 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    v7 = 0;
  }

  *a2 = v6;
  return v7;
}

uint64_t CopyWhiteBalanceGain(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  bzero(v14, 0x18uLL);
  v15 = -31988;
  v16 = *(a3 + 156);
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v14, 0x18u, 0, 0xFFFFFFFF))
  {
    *a2 = 0;
    return 4294954513;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      valuePtr = v17;
      v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF67E0], v10);
      CFRelease(v10);
      valuePtr = v18;
      v11 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF67D8], v11);
      CFRelease(v11);
      valuePtr = v19;
      v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF67D0], v12);
      CFRelease(v12);
    }

    result = 0;
    *a2 = Mutable;
  }

  return result;
}

uint64_t SetVideoStabilizationISPOutputVectorsEnabled(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = cf;
  v16 = *MEMORY[0x277D85DE8];
  if (!cf)
  {
    goto LABEL_6;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFBooleanGetTypeID())
  {
    LODWORD(v4) = 0;
LABEL_6:
    v8 = 4294954516;
    goto LABEL_7;
  }

  if (*(a2 + 160))
  {
    LODWORD(v4) = 0;
    v8 = 4294954612;
  }

  else
  {
    LODWORD(v4) = CFEqual(v4, *MEMORY[0x277CBED28]) != 0;
    if (H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), 20, v4))
    {
      v8 = 4294954516;
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_7:
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = "False";
    if (v4)
    {
      v10 = "True";
    }

    v12 = 136315394;
    v13 = v10;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetVideoStabilizationISPOutputVectorsEnabled: %s (err=%d)\n\n", &v12, 0x12u);
  }

  return v8;
}

uint64_t SetAutoFocusHintNow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 100))
  {
    return 4294954608;
  }

  v12 = v4;
  v13 = v5;
  v8 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v8 |= 0x80000000;
  }

  bzero(v9, 0xCuLL);
  v10 = -31725;
  v11 = v11 & 0x7FFF0000 | v8;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a4 + 24), v9, 0xCu, 0, 0xFFFFFFFF))
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t CopyFocalLength(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 24);
  v7 = *(a3 + 156);
  if (*(*(v6 + 538) + 104 * v7 + 8))
  {
    OpticalEffectiveFocalLength = H16ISP::H16ISPDevice::ISP_GetOpticalEffectiveFocalLength(v6, v7);
    valuePtr = OpticalEffectiveFocalLength;
    if (OpticalEffectiveFocalLength <= 0.0)
    {
      v9 = 0;
      result = 4294954513;
    }

    else
    {
      v9 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
      result = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
    return 4294954513;
  }

  return result;
}

uint64_t CopyPixelSize(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 24);
  v8 = *(a3 + 156);
  if (*(*(v7 + 538) + 104 * v8 + 8))
  {
    OpticalPixelSize = H16ISP::H16ISPDevice::ISP_GetOpticalPixelSize(v7, v8);
    valuePtr = OpticalPixelSize;
    if (OpticalPixelSize <= 0.0)
    {
      v10 = 0;
      result = 4294954513;
    }

    else
    {
      v10 = CFNumberCreate(a1, kCFNumberDoubleType, &valuePtr);
      result = 0;
    }

    *a2 = v10;
  }

  else
  {
    *a2 = 0;
    return 4294954513;
  }

  return result;
}

uint64_t CopyLensFNumber(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 24);
  v8 = *(a3 + 156);
  if (*(*(v7 + 538) + 104 * v8 + 8))
  {
    OpticalfNumber = H16ISP::H16ISPDevice::ISP_GetOpticalfNumber(v7, v8);
    valuePtr = OpticalfNumber;
    if (OpticalfNumber <= 0.0)
    {
      v10 = 0;
      result = 4294954513;
    }

    else
    {
      v10 = CFNumberCreate(a1, kCFNumberDoubleType, &valuePtr);
      result = 0;
    }

    *a2 = v10;
  }

  else
  {
    *a2 = 0;
    return 4294954513;
  }

  return result;
}

uint64_t CopyMultipleOutputSupportEnabled(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CBED28];
  if (!*(a3 + 698))
  {
    v4 = MEMORY[0x277CBED10];
  }

  v5 = *v4;
  CFRetain(*v4);
  *a2 = v5;
  return 0;
}

uint64_t CopyVideoOutputsEnabled(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a5 + 24), *(a3 + 156), 1785950322);
  if (*(a3 + 698) == 1)
  {
    v9 = isSensorType;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v11 = Mutable;
    if (Mutable)
    {
      v12 = MEMORY[0x277CBED28];
      v13 = *MEMORY[0x277CBED28];
      v14 = MEMORY[0x277CBED10];
      v15 = *MEMORY[0x277CBED10];
      if (*(a3 + 704))
      {
        v16 = *MEMORY[0x277CBED28];
      }

      else
      {
        v16 = *MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(Mutable, *MEMORY[0x277CF6640], v16);
      if (*(a3 + 904))
      {
        v17 = v13;
      }

      else
      {
        v17 = v15;
      }

      CFDictionarySetValue(v11, *MEMORY[0x277CF6658], v17);
      if (*(a3 + 1104))
      {
        v18 = v13;
      }

      else
      {
        v18 = v15;
      }

      CFDictionarySetValue(v11, *MEMORY[0x277CF6628], v18);
      if (*(a3 + 1304))
      {
        v19 = v13;
      }

      else
      {
        v19 = v15;
      }

      CFDictionarySetValue(v11, *MEMORY[0x277CF6660], v19);
      if (*(a3 + 1504))
      {
        v20 = v13;
      }

      else
      {
        v20 = v15;
      }

      CFDictionarySetValue(v11, *MEMORY[0x277CF6668], v20);
      if (ConfigSupportsContextSwitchCaptures(a3, a5, 0, 0))
      {
        if (*(a3 + 1704))
        {
          v21 = v12;
        }

        else
        {
          v21 = v14;
        }

        CFDictionarySetValue(v11, *MEMORY[0x277CF6670], *v21);
      }

      if (*(a3 + 1904))
      {
        v22 = v12;
      }

      else
      {
        v22 = v14;
      }

      CFDictionarySetValue(v11, *MEMORY[0x277CF6620], *v22);
      if ((*(a3 + 4256) | v9))
      {
        if (*(a3 + 2104))
        {
          v23 = v12;
        }

        else
        {
          v23 = v14;
        }

        CFDictionarySetValue(v11, *MEMORY[0x277CF6650], *v23);
      }

      if (*(a3 + 2304))
      {
        v24 = v13;
      }

      else
      {
        v24 = v15;
      }

      CFDictionarySetValue(v11, *MEMORY[0x277CF6648], v24);
      if (*(a3 + 2504))
      {
        v25 = v13;
      }

      else
      {
        v25 = v15;
      }

      CFDictionarySetValue(v11, *MEMORY[0x277CF6678], v25);
      if (*(a3 + 2704))
      {
        v26 = v13;
      }

      else
      {
        v26 = v15;
      }

      CFDictionarySetValue(v11, @"VisPipe", v26);
      if (v9)
      {
        if (*(a3 + 4080))
        {
          v27 = v12;
        }

        else
        {
          v27 = v14;
        }

        CFDictionarySetValue(v11, *MEMORY[0x277CF6638], *v27);
      }

      result = 0;
    }

    else
    {
      result = 4294954510;
    }
  }

  else
  {
    v11 = 0;
    result = 4294954509;
  }

  *a2 = v11;
  return result;
}

uint64_t CopyGeometricDistortionCorrectedRects(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3 + 156;
  if (!H16ISP::H16ISPDevice::isSensorType(*(a5 + 24), *(a3 + 156), 1919251319) && !H16ISP::H16ISPDevice::isSensorType(*(a5 + 24), *v8, 1718776695))
  {
    v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v21 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      CopyGeometricDistortionCorrectedRects();
    }

    return 4294954516;
  }

  v9 = *(a3 + 48);
  v10 = *(a3 + 192);
  if (v9 < v10)
  {
    v10 = 0;
  }

  v11 = v9 - v10;
  if (H16ISP::H16ISPDevice::GetCameraConfig(*(a5 + 24), *(a3 + 156), *(*(a3 + 184) + 120 * (v9 - v10) + 16), v34, v43))
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      CopyGeometricDistortionCorrectedRects();
    }

    return 4294954516;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  memmove(__dst, (*(a3 + 184) + 120 * v11), 0x78uLL);
  v32 = vuzp1q_s32(vcvtq_u64_f64(*(a3 + 736)), vcvtq_u64_f64(*(a3 + 752)));
  v31 = *(v8 + 568);
  bzero(&v33, 0x10uLL);
  GDCBesOutputValidRect = H16ISP::H16ISPDevice::ISP_GetGDCBesOutputValidRect(*(a5 + 24), *(a3 + 156), __dst, v34, &v33, *(a3 + 780));
  if (GDCBesOutputValidRect)
  {
    v17 = GDCBesOutputValidRect;
    v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v18 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return 4294954516;
    }

    v19 = *v8;
    *buf = 136315906;
    v36 = "CopyGeometricDistortionCorrectedRects";
    v37 = 1024;
    v38 = v19;
    v39 = 1024;
    v40 = v11;
    v41 = 1024;
    v42 = v17;
    v20 = "%s - Querying sCIspCmdChBESOutputValidRect for PrimaryScalarOutput for ch %d preset %d error 0x%08X\n";
    goto LABEL_27;
  }

  v45.origin.x = v33;
  v45.origin.y = SDWORD1(v33);
  LODWORD(v16) = HIDWORD(v33);
  LODWORD(v15) = DWORD2(v33);
  v45.size.width = v15;
  v45.size.height = v16;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v45);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF6640], DictionaryRepresentation);
  CFRelease(DictionaryRepresentation);
  memmove(__dst, (*(a3 + 184) + 120 * v11), 0x78uLL);
  v32 = vuzp1q_s32(vcvtq_u64_f64(*(v8 + 1180)), vcvtq_u64_f64(*(v8 + 1196)));
  v31 = *(v8 + 1168);
  bzero(&v33, 0x10uLL);
  v23 = H16ISP::H16ISPDevice::ISP_GetGDCBesOutputValidRect(*(a5 + 24), *(a3 + 156), __dst, v34, &v33, *(a3 + 1380));
  if (!v23)
  {
    v46.origin.x = v33;
    v46.origin.y = SDWORD1(v33);
    LODWORD(v25) = HIDWORD(v33);
    LODWORD(v24) = DWORD2(v33);
    v46.size.width = v24;
    v46.size.height = v25;
    v28 = CGRectCreateDictionaryRepresentation(v46);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CF6660], v28);
    CFRelease(v28);
    result = 0;
    *a2 = Mutable;
    return result;
  }

  v26 = v23;
  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v18 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v29 = *v8;
    *buf = 136315906;
    v36 = "CopyGeometricDistortionCorrectedRects";
    v37 = 1024;
    v38 = v29;
    v39 = 1024;
    v40 = v11;
    v41 = 1024;
    v42 = v26;
    v20 = "%s - Querying sCIspCmdChBESOutputValidRect for StillImageOutput for ch %d preset %d error 0x%08X\n";
LABEL_27:
    _os_log_error_impl(&dword_2247DB000, v18, OS_LOG_TYPE_ERROR, v20, buf, 0x1Eu);
  }

  return 4294954516;
}

uint64_t CopyDecouplePrimaryScalerFromStreaming(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 4198))
  {
    v4 = MEMORY[0x277CBED28];
  }

  else
  {
    v4 = MEMORY[0x277CBED10];
  }

  v5 = *v4;
  CFRetain(*v4);
  *a2 = v5;
  return 0;
}

uint64_t CopyVibeMitigationInfo(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 4294954516;
  if (a3 && a5)
  {
    if (*(a3 + 156) <= 5u)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v10 = Mutable;
      if (Mutable)
      {
        if (*(*(*(a5 + 24) + 4304) + 104 * *(a3 + 156) + 36))
        {
          v11 = MEMORY[0x277CBED28];
        }

        else
        {
          v11 = MEMORY[0x277CBED10];
        }

        CFDictionaryAddValue(Mutable, *MEMORY[0x277CF64A0], *v11);
        result = 0;
      }

      else
      {
        result = 4294954510;
      }

      *a2 = v10;
    }

    else
    {
      return 4294954516;
    }
  }

  return result;
}

uint64_t SetVibeMitigationEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 160) && CFEqual(a1, *MEMORY[0x277CBED28]))
  {
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      SetVibeMitigationEnabled();
    }

    return 4294954612;
  }

  else
  {
    v10 = CFBooleanGetValue(a1) != 0;
    *(a2 + 4266) = v10;
    result = H16ISP::H16ISPDevice::EnableVibeMitigation(*(a4 + 24), *(a2 + 156), v10);
    if (result)
    {
      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v11 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        SetVibeMitigationEnabled();
      }

      return 4294954514;
    }
  }

  return result;
}

uint64_t SetSynchronizedStreamsSlaveConfiguration(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || (v7 = CFGetTypeID(a1), v7 != CFDictionaryGetTypeID()))
  {
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      SetSynchronizedStreamsSlaveConfiguration();
    }

    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF62B0]);
  v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF62A0]);
  if (!Value)
  {
    v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v16 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      SetSynchronizedStreamsSlaveConfiguration();
    }

    return 4294954516;
  }

  v10 = v9;
  v11 = *MEMORY[0x277CBED28];
  *(a2 + 4371) = CFEqual(Value, *MEMORY[0x277CBED28]) != 0;
  if (!v10)
  {
    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v17 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      SetSynchronizedStreamsSlaveConfiguration();
    }

    return 4294954516;
  }

  *(a2 + 4373) = CFEqual(v10, v11) != 0;
  v12 = CFDictionaryGetValue(a1, *MEMORY[0x277CF62A8]);
  if (v12)
  {
    valuePtr = 0;
    CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
    v13 = valuePtr;
  }

  else
  {
    v13 = 0;
  }

  *(a2 + 4376) = v13;
  if (!*(a2 + 4360))
  {
    return 0;
  }

  SuspendResumeStream(a4, a2);
  if (ApplySlaveConfiguration(a4, a2))
  {
    return 4294954514;
  }

  else
  {
    return 0;
  }
}

uint64_t CopySupportedColorSpaces(uint64_t a1, __CFArray **a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9[0] = xmmword_2249BBE50;
  *(v9 + 12) = *(&xmmword_2249BBE50 + 12);
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v4 = v9;
    v5 = 7;
    do
    {
      v6 = CFNumberCreate(0, kCFNumberIntType, v4);
      if (!v6)
      {
        break;
      }

      v7 = v6;
      CFArrayAppendValue(Mutable, v6);
      CFRelease(v7);
      v4 = (v4 + 4);
      --v5;
    }

    while (v5);
    if (CFArrayGetCount(Mutable) == 7)
    {
      result = 0;
    }

    else
    {
      result = 4294954510;
    }
  }

  else
  {
    result = 4294954510;
  }

  *a2 = Mutable;
  return result;
}

uint64_t CopyColorSpace(uint64_t a1, CFNumberRef *a2, uint64_t a3)
{
  v3 = *(a3 + 4388);
  switch(v3)
  {
    case 3:
      v3 = 6;
      goto LABEL_13;
    case 2:
LABEL_13:
      valuePtr = v3;
      goto LABEL_14;
    case 1:
      v4 = *(a3 + 4392);
      if (v4 == 3)
      {
        v3 = 5;
      }

      else if (v4 == 1)
      {
        if (*(a3 + 4400) == 1)
        {
          v3 = 4;
        }

        else
        {
          v3 = 3;
        }
      }

      else
      {
        v3 = 1;
      }

      goto LABEL_13;
  }

  valuePtr = 0;
LABEL_14:
  *a2 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  return 0;
}

uint64_t CopyAutoFocusPositionSensor(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = MEMORY[0x277CBED28];
  if (!*(a3 + 676) && !*(a3 + 680))
  {
    v3 = MEMORY[0x277CBED10];
  }

  *a2 = *v3;
  return 0;
}

uint64_t SetPDEStreaming(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  v8 = valuePtr;
  *(a2 + 4408) = valuePtr;
  H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), 44, v8 != 0);
  return 0;
}

uint64_t CopyAPSMode(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  if (!H16ISP::H16ISPDevice::GetAPSMode(*(a5 + 24), *(a3 + 156), &v13))
  {
    if (v13 <= 3)
    {
      if (v13 <= 1)
      {
        if (!v13)
        {
          valuePtr = 0;
          goto LABEL_14;
        }

        if (v13 != 1)
        {
LABEL_17:
          v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v11 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            CopyAPSMode();
          }

          goto LABEL_6;
        }
      }
    }

    else if (v13 > 8)
    {
      goto LABEL_17;
    }

    valuePtr = v13;
LABEL_14:
    v8 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
    v9 = 0;
    goto LABEL_15;
  }

  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    CopyAPSMode();
  }

LABEL_6:
  v8 = 0;
  v9 = 4294954514;
LABEL_15:
  *a2 = v8;
  return v9;
}

uint64_t SetAFCalibrationData(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a2 + 160))
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SetAFCalibrationData();
    }

    return 4294954612;
  }

  if (!cf)
  {
    return 4294954516;
  }

  v9 = CFGetTypeID(cf);
  if (v9 != CFDataGetTypeID())
  {
    return 4294954516;
  }

  if (CFDataGetLength(cf) != 64)
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      SetAFCalibrationData();
    }

    return 4294954516;
  }

  bzero(v15, 0x40uLL);
  BytePtr = CFDataGetBytePtr(cf);
  v15[0] = *BytePtr;
  if (v15[0])
  {
    if (v15[0] != 1)
    {
      goto LABEL_21;
    }

    v16 = *(BytePtr + 4);
    LODWORD(v11) = *(BytePtr + 5);
    v21 = *(BytePtr + 11);
    DWORD1(v11) = *(BytePtr + 12);
    *(&v11 + 1) = *(BytePtr + 52);
    v17 = v11;
    v18 = *(BytePtr + 15);
  }

  else
  {
    v16 = *(BytePtr + 4);
    LODWORD(v17) = *(BytePtr + 5);
    v21 = *(BytePtr + 11);
  }

  v13 = *(BytePtr + 24);
  v20 = *(BytePtr + 20);
  v19 = v13;
LABEL_21:
  result = H16ISP::H16ISPDevice::SetAFIdentificationCalibration(*(a4 + 24), *(a2 + 156), v15);
  if (result)
  {
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      SetAFCalibrationData();
    }

    return 4294954514;
  }

  return result;
}

uint64_t CopyAFCalibrationData(const __CFAllocator *a1, CFDataRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = *(*(a5 + 24) + 4304);
  if (GetNumberOfActiveChannels(*(a5 + 120)))
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      CopyAFCalibrationData();
    }

LABEL_28:
    v22 = 0;
    v23 = 4294954514;
    goto LABEL_29;
  }

  bzero(bytes, 0x40uLL);
  v11 = *(a3 + 156);
  v12 = *(v9 + 104 * v11 + 60);
  v13 = *(a5 + 112);
  if (v13)
  {
    v14 = 0;
    v15 = (v9 + 60);
    do
    {
      if (*(v15 - 13) && (v12 || v14 == *(a3 + 156)) && v12 == *v15)
      {
        H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(a5 + 24), v14, 1u, 0);
        v13 = *(a5 + 112);
      }

      ++v14;
      v15 += 26;
    }

    while (v14 < v13);
    v11 = *(a3 + 156);
  }

  H16ISP::H16ISPDevice::RunAFIdentificationCalibration(*(a5 + 24), v11, &v33);
  v17 = v16;
  v18 = *(a5 + 112);
  if (v18)
  {
    v19 = 0;
    v20 = (v9 + 60);
    do
    {
      if (*(v20 - 13) && (v12 || v19 == *(a3 + 156)) && v12 == *v20)
      {
        H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(a5 + 24), v19, 0, 0);
        v18 = *(a5 + 112);
      }

      ++v19;
      v20 += 26;
    }

    while (v19 < v18);
  }

  if (v17)
  {
    v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v21 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      CopyAFCalibrationData();
    }

    goto LABEL_28;
  }

  *bytes = v33;
  if (v33)
  {
    if (v33 != 1)
    {
      goto LABEL_35;
    }

    v27 = v34;
    v28 = v35;
    v31 = v39;
    v32 = v36;
  }

  else
  {
    v27 = v34;
    v28 = v35;
    v31 = v39;
  }

  v29 = v37;
  v30 = v38;
LABEL_35:
  v22 = CFDataCreate(a1, bytes, 64);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v25 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      CopyAFCalibrationData();
    }

    v22 = 0;
    v23 = 4294954510;
  }

LABEL_29:
  *a2 = v22;
  return v23;
}

uint64_t SetSphereCalibrationData(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a2 + 160))
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SetSphereCalibrationData();
    }

    return 4294954612;
  }

  if (!cf)
  {
    return 4294954516;
  }

  v9 = CFGetTypeID(cf);
  if (v9 != CFDataGetTypeID())
  {
    return 4294954516;
  }

  if (CFDataGetLength(cf) != 68)
  {
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      SetSphereCalibrationData();
    }

    return 4294954516;
  }

  BytePtr = CFDataGetBytePtr(cf);
  bzero(v14, 0x44uLL);
  v14[0] = *BytePtr;
  v15 = *(BytePtr + 4);
  v16 = *(BytePtr + 20);
  v17 = *(BytePtr + 36);
  v20 = *(BytePtr + 16);
  v11 = *(BytePtr + 44);
  v19 = *(BytePtr + 30);
  v18 = v11;
  result = H16ISP::H16ISPDevice::SetOISIdentificationCalibration(*(a4 + 24), *(a2 + 156), v14);
  if (result)
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      SetSphereCalibrationData();
    }

    return 4294954514;
  }

  return result;
}

uint64_t CopySphereCalibrationData(const __CFAllocator *a1, CFDataRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = *(*(a5 + 24) + 4304);
  if (GetNumberOfActiveChannels(*(a5 + 120)))
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      CopySphereCalibrationData();
    }

LABEL_28:
    v22 = 0;
    v23 = 4294954514;
    goto LABEL_29;
  }

  bzero(v26, 0x44uLL);
  v11 = *(a3 + 156);
  v12 = *(v9 + 104 * v11 + 60);
  v13 = *(a5 + 112);
  if (v13)
  {
    v14 = 0;
    v15 = (v9 + 60);
    do
    {
      if (*(v15 - 13) && (v12 || v14 == *(a3 + 156)) && v12 == *v15)
      {
        H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(a5 + 24), v14, 1u, 0);
        v13 = *(a5 + 112);
      }

      ++v14;
      v15 += 26;
    }

    while (v14 < v13);
    v11 = *(a3 + 156);
  }

  H16ISP::H16ISPDevice::RunOISIdentificationCalibration(*(a5 + 24), v11, &v33);
  v17 = v16;
  v18 = *(a5 + 112);
  if (v18)
  {
    v19 = 0;
    v20 = (v9 + 60);
    do
    {
      if (*(v20 - 13) && (v12 || v19 == *(a3 + 156)) && v12 == *v20)
      {
        H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(a5 + 24), v19, 0, 0);
        v18 = *(a5 + 112);
      }

      ++v19;
      v20 += 26;
    }

    while (v19 < v18);
  }

  if (v17)
  {
    v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v21 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      CopySphereCalibrationData();
    }

    goto LABEL_28;
  }

  *v26 = v33;
  v27 = v34;
  v28 = v35;
  v29 = v36;
  v32 = v39;
  v30 = v37;
  v31 = v38;
  v22 = CFDataCreate(a1, v26, 68);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v25 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      CopySphereCalibrationData();
    }

    v22 = 0;
    v23 = 4294954510;
  }

LABEL_29:
  *a2 = v22;
  return v23;
}

uint64_t SetSphereEndStopCalibrationData(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a2 + 160))
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SetSphereEndStopCalibrationData();
    }

    return 4294954612;
  }

  if (!cf)
  {
    return 4294954516;
  }

  v9 = CFGetTypeID(cf);
  if (v9 != CFDataGetTypeID())
  {
    return 4294954516;
  }

  if (CFDataGetLength(cf) != 60)
  {
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      SetSphereEndStopCalibrationData();
    }

    return 4294954516;
  }

  BytePtr = CFDataGetBytePtr(cf);
  bzero(v15, 0x3CuLL);
  v15[0] = *BytePtr;
  v11 = *(BytePtr + 20);
  v16 = *(BytePtr + 4);
  v17 = v11;
  v20 = *(BytePtr + 14);
  v12 = *(BytePtr + 26);
  v18 = *(BytePtr + 36);
  v19 = v12;
  result = H16ISP::H16ISPDevice::SetOISEndStopCalibration(*(a4 + 24), *(a2 + 156), v15);
  if (result)
  {
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      SetSphereEndStopCalibrationData();
    }

    return 4294954514;
  }

  return result;
}

uint64_t CopySphereEndStopCalibrationData(const __CFAllocator *a1, CFDataRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = *(*(a5 + 24) + 4304);
  if (GetNumberOfActiveChannels(*(a5 + 120)))
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      CopySphereEndStopCalibrationData();
    }

LABEL_28:
    v22 = 0;
    v23 = 4294954514;
    goto LABEL_29;
  }

  bzero(v26, 0x3CuLL);
  v11 = *(a3 + 156);
  v12 = *(v9 + 104 * v11 + 60);
  v13 = *(a5 + 112);
  if (v13)
  {
    v14 = 0;
    v15 = (v9 + 60);
    do
    {
      if (*(v15 - 13) && (v12 || v14 == *(a3 + 156)) && v12 == *v15)
      {
        H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(a5 + 24), v14, 1u, 0);
        v13 = *(a5 + 112);
      }

      ++v14;
      v15 += 26;
    }

    while (v14 < v13);
    v11 = *(a3 + 156);
  }

  H16ISP::H16ISPDevice::RunOISEndStopCalibration(*(a5 + 24), v11, &v32);
  v17 = v16;
  v18 = *(a5 + 112);
  if (v18)
  {
    v19 = 0;
    v20 = (v9 + 60);
    do
    {
      if (*(v20 - 13) && (v12 || v19 == *(a3 + 156)) && v12 == *v20)
      {
        H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(a5 + 24), v19, 0, 0);
        v18 = *(a5 + 112);
      }

      ++v19;
      v20 += 26;
    }

    while (v19 < v18);
  }

  if (v17)
  {
    v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v21 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      CopySphereEndStopCalibrationData();
    }

    goto LABEL_28;
  }

  *v26 = v32;
  v27 = v33;
  v28 = v34;
  v31 = v37;
  v29 = v35;
  v30 = v36;
  v22 = CFDataCreate(a1, v26, 60);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v25 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      CopySphereEndStopCalibrationData();
    }

    v22 = 0;
    v23 = 4294954510;
  }

LABEL_29:
  *a2 = v22;
  return v23;
}

uint64_t SetAPSSphereInterCalibrationData(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a2 + 160))
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SetAPSSphereInterCalibrationData();
    }

    return 4294954612;
  }

  if (!cf)
  {
    return 4294954516;
  }

  v9 = CFGetTypeID(cf);
  if (v9 != CFDataGetTypeID())
  {
    return 4294954516;
  }

  if (CFDataGetLength(cf) != 84)
  {
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      SetAPSSphereInterCalibrationData();
    }

    return 4294954516;
  }

  BytePtr = CFDataGetBytePtr(cf);
  bzero(v14, 0x54uLL);
  v14[0] = *BytePtr;
  v15 = *(BytePtr + 4);
  v16 = *(BytePtr + 20);
  v17 = *(BytePtr + 36);
  v18 = *(BytePtr + 52);
  v21 = *(BytePtr + 20);
  v11 = *(BytePtr + 60);
  v20 = *(BytePtr + 38);
  v19 = v11;
  result = H16ISP::H16ISPDevice::SetAPSOISInteractionCalibration(*(a4 + 24), *(a2 + 156), v14);
  if (result)
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      SetAPSSphereInterCalibrationData();
    }

    return 4294954514;
  }

  return result;
}

uint64_t CopyAPSSphereInterCalibrationData(const __CFAllocator *a1, CFDataRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = *(*(a5 + 24) + 4304);
  if (GetNumberOfActiveChannels(*(a5 + 120)))
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      CopyAPSSphereInterCalibrationData();
    }

LABEL_28:
    v22 = 0;
    v23 = 4294954514;
    goto LABEL_29;
  }

  bzero(v26, 0x54uLL);
  v11 = *(a3 + 156);
  v12 = *(v9 + 104 * v11 + 60);
  v13 = *(a5 + 112);
  if (v13)
  {
    v14 = 0;
    v15 = (v9 + 60);
    do
    {
      if (*(v15 - 13) && (v12 || v14 == *(a3 + 156)) && v12 == *v15)
      {
        H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(a5 + 24), v14, 1u, 0);
        v13 = *(a5 + 112);
      }

      ++v14;
      v15 += 26;
    }

    while (v14 < v13);
    v11 = *(a3 + 156);
  }

  H16ISP::H16ISPDevice::RunAPSOISInteractionCalibration(*(a5 + 24), v11, &v34);
  v17 = v16;
  v18 = *(a5 + 112);
  if (v18)
  {
    v19 = 0;
    v20 = (v9 + 60);
    do
    {
      if (*(v20 - 13) && (v12 || v19 == *(a3 + 156)) && v12 == *v20)
      {
        H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(a5 + 24), v19, 0, 0);
        v18 = *(a5 + 112);
      }

      ++v19;
      v20 += 26;
    }

    while (v19 < v18);
  }

  if (v17)
  {
    v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v21 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      CopyAPSSphereInterCalibrationData();
    }

    goto LABEL_28;
  }

  *v26 = v34;
  v27 = v35;
  v28 = v36;
  v29 = v37;
  v30 = v38;
  v33 = v41;
  v31 = v39;
  v32 = v40;
  v22 = CFDataCreate(a1, v26, 84);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v25 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      CopyAPSSphereInterCalibrationData();
    }

    v22 = 0;
    v23 = 4294954510;
  }

LABEL_29:
  *a2 = v22;
  return v23;
}

uint64_t CopyKeypointDetectionEnabled(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 4596))
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    v3 = MEMORY[0x277CBED10];
  }

  *a2 = *v3;
  return 0;
}

uint64_t SetKeypointDetectionConfiguration(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  *v18 = 0;
  valuePtr = 0;
  *v16 = 0;
  *v17 = 0;
  if (H16ISP::H16ISPDevice::GetKeypointConfiguration(*(a4 + 24), *(a2 + 156), &v17[1], v17, &v16[1], v16))
  {
    return 4294954514;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF4610]);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr + 2);
  }

  else
  {
    HIWORD(valuePtr) = 0;
  }

  v10 = CFDictionaryGetValue(a1, *MEMORY[0x277CF4608]);
  if (v10)
  {
    CFNumberGetValue(v10, kCFNumberSInt16Type, &valuePtr);
  }

  else
  {
    LOWORD(valuePtr) = 0;
  }

  v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CF4600]);
  if (v11)
  {
    CFNumberGetValue(v11, kCFNumberSInt16Type, &v18[1]);
  }

  else
  {
    v18[1] = 64;
  }

  v12 = CFDictionaryGetValue(a1, *MEMORY[0x277CF45F8]);
  if (v12)
  {
    CFNumberGetValue(v12, kCFNumberSInt16Type, v18);
  }

  else
  {
    v18[0] = 64;
  }

  if (!*(a2 + 160))
  {
    if (H16ISP::H16ISPDevice::SetKeypointConfiguration(*(a4 + 24), *(a2 + 156), SHIWORD(valuePtr), valuePtr, v18[1], v18[0]))
    {
      v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v14 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        SetKeypointDetectionConfiguration();
      }

      return 4294954514;
    }

    if (H16ISP::H16ISPDevice::EnableKeypointDetection(*(a4 + 24), *(a2 + 156), 1))
    {
      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v15 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        SetKeypointDetectionConfiguration();
      }

      return 4294954514;
    }

    H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), 27, 1);
    return 0;
  }

  if (SHIWORD(valuePtr) == v17[1] && valuePtr == v17[0] && v18[0] == v16[0] && v18[1] == v16[1])
  {
    return 0;
  }

  v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v13 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    SetKeypointDetectionConfiguration();
  }

  return 4294954612;
}

uint64_t CopyKeypointDetectionConfiguration(const __CFAllocator *a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    *v19 = 0;
    *v20 = 0;
    if (H16ISP::H16ISPDevice::GetKeypointConfiguration(*(a5 + 24), *(a3 + 156), &v20[1], v20, &v19[1], v19))
    {
      result = 4294954514;
    }

    else
    {
      valuePtr = v20[1];
      v11 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF4610], v11);
      CFRelease(v11);
      v17 = v20[0];
      v12 = CFNumberCreate(a1, kCFNumberSInt32Type, &v17);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF4608], v12);
      CFRelease(v12);
      v16 = v19[1];
      v13 = CFNumberCreate(a1, kCFNumberSInt32Type, &v16);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF4600], v13);
      CFRelease(v13);
      v15 = v19[0];
      v14 = CFNumberCreate(a1, kCFNumberSInt32Type, &v15);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF45F8], v14);
      CFRelease(v14);
      result = 0;
    }
  }

  else
  {
    result = 4294954510;
  }

  *a2 = Mutable;
  return result;
}

uint64_t CopyLTMLookUpTableMetadataEnabled(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 4312))
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    v3 = MEMORY[0x277CBED10];
  }

  *a2 = *v3;
  return 0;
}

uint64_t CopyLumaHistogramEnabled(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 4328))
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    v3 = MEMORY[0x277CBED10];
  }

  *a2 = *v3;
  return 0;
}

uint64_t CopyAutoExposureTables(const __CFAllocator *a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr[1] = *MEMORY[0x277D85DE8];
  valuePtr[0] = 0x400000000;
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    bzero(v20, 0xD4uLL);
    v21 = 577;
    v22 = *(a3 + 156);
    v23 = 4;
    if (!H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v20, 0xD4u, 0, 0xFFFFFFFF))
    {
      v10 = v24;
      v11 = 8 * v24;
      v12 = malloc_type_malloc(v11, 0x100004000313F17uLL);
      if (v12)
      {
        if (v10)
        {
          v13 = &v25;
          v14 = v12 + 4;
          do
          {
            v15 = *(v13 - 1);
            v16 = *v13;
            v13 = (v13 + 12);
            *(v14 - 1) = v15 / 0x3E8;
            *v14 = v16;
            v14 += 2;
            --v10;
          }

          while (v10);
        }

        v17 = CFDataCreateWithBytesNoCopy(a1, v12, v11, *MEMORY[0x277CBECF0]);
        v18 = CFNumberCreate(a1, kCFNumberIntType, valuePtr);
        CFDictionarySetValue(Mutable, v18, v17);
        CFRelease(v18);
        CFRelease(v17);
      }
    }

    result = 0;
  }

  else
  {
    result = 4294954510;
  }

  *a2 = Mutable;
  return result;
}

uint64_t TimeMachineSuspendNow(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    goto LABEL_5;
  }

  v7 = CFGetTypeID(a1);
  if (v7 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF6328]);
    if (Value)
    {
      v9 = CFBooleanGetValue(Value) != 0;
      goto LABEL_6;
    }

LABEL_5:
    v9 = 0;
LABEL_6:
    result = H16ISP::H16ISPDevice::SuspendTimeMachine(*(a4 + 24), *(a2 + 156), 1, v9);
    if (result)
    {
      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v11 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        TimeMachineSuspendNow();
      }

      return 4294954514;
    }

    return result;
  }

  v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v12 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    TimeMachineSuspendNow();
  }

  return 4294954516;
}

uint64_t TimeMachineResumeNow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = H16ISP::H16ISPDevice::SuspendTimeMachine(*(a4 + 24), *(a2 + 156), 0, 0);
  if (result)
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      TimeMachineSuspendNow();
    }

    return 4294954514;
  }

  return result;
}

uint64_t CopyTimeMachinePTSRange(const __CFAllocator *a1, CFDictionaryRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = 0;
  v22 = 0;
  if (H16ISP::H16ISPDevice::GetTimeMachinePTSRange(*(a5 + 24), *(a3 + 156), &v22, &v21))
  {
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      CopyTimeMachinePTSRange();
    }

LABEL_11:
    v10 = 0;
    v11 = 4294954514;
    goto LABEL_12;
  }

  if (H16ISP::H16ISPDevice::ISP_GetCameraTime(*(a5 + 24), &outputStruct))
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      CopyTimeMachinePTSRange();
    }

    goto LABEL_11;
  }

  v13 = FigHostTimeToNanoseconds();
  CMTimeMake(&v20, v13, 1000000000);
  v14 = FigHostTimeToNanoseconds();
  CMTimeMake(&v19, v14, 1000000000);
  v15.start = v20;
  lhs.start = v19;
  rhs = v20;
  CMTimeSubtract(&duration, &lhs.start, &rhs);
  CMTimeRangeMake(&lhs, &v15.start, &duration);
  v15 = lhs;
  v10 = CMTimeRangeCopyAsDictionary(&v15, a1);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 4294954510;
  }

LABEL_12:
  *a2 = v10;
  return v11;
}

uint64_t SetFirmwareFocusTriggerEnabled(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 160))
  {
    return 4294954612;
  }

  v6 = CFEqual(a1, *MEMORY[0x277CBED28]);
  result = 0;
  *(a2 + 4604) = v6 != 0;
  return result;
}

uint64_t CopyFirmwareFocusTriggerEnabled(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 4604))
  {
    v4 = MEMORY[0x277CBED28];
  }

  else
  {
    v4 = MEMORY[0x277CBED10];
  }

  v5 = *v4;
  CFRetain(*v4);
  *a2 = v5;
  return 0;
}

uint64_t CopyContentAwareEnhancement(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 4225))
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    v3 = MEMORY[0x277CBED10];
  }

  *a2 = *v3;
  return 0;
}

uint64_t CopyContentAwareAWBEnabled(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 4226))
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    v3 = MEMORY[0x277CBED10];
  }

  *a2 = *v3;
  return 0;
}

uint64_t CopyNRSharpeningConfiguration(const __CFAllocator *a1, CFMutableDictionaryRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v11 = 4294954510;
    goto LABEL_25;
  }

  v41 = 0;
  if (H16ISP::H16ISPDevice::GetRNFStrength(*(a5 + 24), *(a3 + 156), 0, &v41))
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      CopyNRSharpeningConfiguration();
    }

LABEL_23:
    v11 = 4294954514;
LABEL_24:
    CFRelease(Mutable);
    Mutable = 0;
    goto LABEL_25;
  }

  valuePtr = v41;
  v12 = *MEMORY[0x277CBECE8];
  v13 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF53A0], v13);
  CFRelease(v13);
  v40 = 0;
  if (H16ISP::H16ISPDevice::GetSharpness(*(a5 + 24), *(a3 + 156), 0, &v40))
  {
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      CopyNRSharpeningConfiguration();
    }

    goto LABEL_23;
  }

  valuePtr = v40;
  v15 = CFNumberCreate(v12, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF53A8], v15);
  CFRelease(v15);
  v39 = 0;
  if (H16ISP::H16ISPDevice::GetLCEStrength(*(a5 + 24), *(a3 + 156), 0, &v39))
  {
    v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v16 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      CopyNRSharpeningConfiguration();
    }

    goto LABEL_23;
  }

  valuePtr = v39;
  v17 = CFNumberCreate(v12, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF5390], v17);
  CFRelease(v17);
  v38 = 0;
  v37 = 0;
  if (H16ISP::H16ISPDevice::GetMBNRConfiguration(*(a5 + 24), *(a3 + 156), 0, 5u, &v38, &v37, v36, v35))
  {
    v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v18 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      CopyNRSharpeningConfiguration();
    }

    goto LABEL_23;
  }

  v20 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v20)
  {
LABEL_44:
    v11 = 4294954510;
    goto LABEL_24;
  }

  v21 = v20;
  v22 = *MEMORY[0x277CBED28];
  v23 = *MEMORY[0x277CBED10];
  if (v38 == 2)
  {
    v24 = *MEMORY[0x277CBED10];
  }

  else
  {
    v24 = *MEMORY[0x277CBED28];
  }

  CFDictionarySetValue(v20, *MEMORY[0x277CF5378], v24);
  if (v38 == 1)
  {
    v25 = v22;
  }

  else
  {
    v25 = v23;
  }

  CFDictionarySetValue(v21, *MEMORY[0x277CF5388], v25);
  if (v37)
  {
    v26 = v22;
  }

  else
  {
    v26 = v23;
  }

  CFDictionarySetValue(v21, *MEMORY[0x277CF5368], v26);
  v27 = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  if (!v27)
  {
    goto LABEL_43;
  }

  v28 = v27;
  for (i = 0; i != 5; ++i)
  {
    valuePtr = v36[i];
    v30 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
    CFArrayAppendValue(v28, v30);
    CFRelease(v30);
  }

  CFDictionarySetValue(v21, *MEMORY[0x277CF5380], v28);
  CFRelease(v28);
  v31 = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  if (!v31)
  {
LABEL_43:
    CFRelease(v21);
    goto LABEL_44;
  }

  v32 = v31;
  for (j = 0; j != 5; ++j)
  {
    valuePtr = v35[j];
    v34 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
    CFArrayAppendValue(v32, v34);
    CFRelease(v34);
  }

  CFDictionarySetValue(v21, *MEMORY[0x277CF5370], v32);
  CFRelease(v32);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF5398], v21);
  CFRelease(v21);
  v11 = 0;
LABEL_25:
  *a2 = Mutable;
  return v11;
}

uint64_t CopyStructuredLightStandbyTemperature(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 160))
  {
    v6 = 0;
    v7 = 4294954612;
  }

  else
  {
    *v16 = 0;
    v15 = 0;
    v14 = 0;
    *v13 = 0;
    v12 = 0;
    if (H16ISP::H16ISPDevice::GetProjectorTemp(*(a5 + 24), *(a3 + 156), &v16[1], v16, &v15, &v14, &v13[1], v13, &v12))
    {
      v6 = 0;
      v7 = 4294954513;
    }

    else
    {
      v9 = v15 * 0.01;
      valuePtr = v9;
      v6 = CFNumberCreate(a1, kCFNumberFloatType, &valuePtr);
      v7 = 0;
    }
  }

  *a2 = v6;
  return v7;
}

uint64_t CopyStreamingYCbCrMatrix(uint64_t a1, CFStringRef *a2, uint64_t a3)
{
  v4 = *(a3 + 172);
  if (v4 == 1)
  {
    v5 = MEMORY[0x277CC4D20];
  }

  else
  {
    if (v4 != 2)
    {
      Copy = 0;
      goto LABEL_7;
    }

    v5 = MEMORY[0x277CC4D28];
  }

  Copy = CFStringCreateCopy(0, *v5);
LABEL_7:
  *a2 = Copy;
  return 0;
}

uint64_t CopyFPCCoefficients(uint64_t a1, __CFData **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  bzero(v16, 0x78uLL);
  v18 = *(a3 + 156);
  v17 = 1309;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v16, 0x78u, 0, 0xFFFFFFFF))
  {
    v8 = 1;
  }

  else
  {
    v8 = v20 == 0;
  }

  if (!v8)
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 100);
    v9 = Mutable;
    if (!Mutable)
    {
      result = 4294954510;
      goto LABEL_17;
    }

    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    if (v19 == 2)
    {
      v13 = 0;
      *MutableBytePtr = 2;
      v14 = MutableBytePtr + 84;
      v15 = &v35;
      do
      {
        *(v14 - 20) = *(v15 - 20);
        if (v13 <= 3)
        {
          *v14 = *v15;
        }

        ++v13;
        ++v14;
        v15 = (v15 + 4);
      }

      while (v13 != 20);
      goto LABEL_16;
    }

    if (v19 == 1)
    {
      *MutableBytePtr = 1;
      *(MutableBytePtr + 1) = v21;
      *(MutableBytePtr + 2) = v22;
      *(MutableBytePtr + 3) = v23;
      *(MutableBytePtr + 4) = v24;
      *(MutableBytePtr + 5) = v25;
      *(MutableBytePtr + 6) = v26;
      *(MutableBytePtr + 7) = v27;
      *(MutableBytePtr + 8) = v28;
      *(MutableBytePtr + 9) = v29;
      *(MutableBytePtr + 10) = v30;
      *(MutableBytePtr + 11) = v31;
      *(MutableBytePtr + 12) = v32;
      *(MutableBytePtr + 13) = v33;
      *(MutableBytePtr + 14) = v34;
LABEL_16:
      CFDataSetLength(v9, 100);
      result = 0;
      goto LABEL_17;
    }

    CFRelease(v9);
  }

  v9 = 0;
  result = 4294954513;
LABEL_17:
  *a2 = v9;
  return result;
}

uint64_t SetVisionDataSuspended(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  v5 = CFEqual(a1, *MEMORY[0x277CBED28]);
  *(a2 + 4617) = v5 != 0;
  result = *(a2 + 4720);
  if (result)
  {
    v7 = 0;
    H16ISP::H16ISPFilterGraphManager::GetNode(result, 9, &v7);
    if (v7)
    {
      if (v5)
      {
        H16ISP::H16ISPGraphVIOCameraControlNode::Suspend(v7);
      }

      else
      {
        H16ISP::H16ISPGraphVIOCameraControlNode::Resume(v7);
      }
    }

    return 0;
  }

  return result;
}

uint64_t SetLTMCurve(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  bzero(v11, 0x10uLL);
  v12 = 2628;
  v13 = *(a2 + 156);
  v8 = valuePtr;
  if ((valuePtr - 1) >= 3)
  {
    v8 = 0;
  }

  v14 = v8;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(*(a4 + 24), v11, 0x10u, 0, 0xFFFFFFFF);
  if (result)
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      SetLTMCurve();
    }

    return 4294954514;
  }

  return result;
}

uint64_t CopyLSCStrength(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  H16ISP::H16ISPDevice::GetLSCStrength(*(a5 + 24), *(a3 + 156), &valuePtr);
  if (v6)
  {
    v7 = 0;
    v8 = 4294954514;
  }

  else
  {
    v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberFloatType, &valuePtr);
    v8 = 0;
  }

  *a2 = v7;
  return v8;
}

float SetTimeLapseCaptureConfiguration(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 1.0;
  if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 != CFDictionaryGetTypeID())
    {
      return result;
    }

    Value = CFDictionaryGetValue(cf, *MEMORY[0x277CF6300]);
    if (!Value)
    {
      return result;
    }

    CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
    if (H16ISP::H16ISPDevice::SetTimeLapseSamplingRate(*(a4 + 24), *(a2 + 156), vcvts_n_u32_f32(valuePtr, 0x18uLL)))
    {
      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        SetTimeLapseCaptureConfiguration();
      }

      return result;
    }

    v13 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6308]);
    if (v13)
    {
      v11 = CFEqual(v13, *MEMORY[0x277CBED28]) != 0;
    }

    else
    {
      v11 = 0;
    }

    if (H16ISP::H16ISPDevice::EnableTimeLapseSmoothing(*(a4 + 24), *(a2 + 156), v11))
    {
      v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v14 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        SetTimeLapseCaptureConfiguration();
      }

      return result;
    }
  }

  else
  {
    v11 = 0;
  }

  if (H16ISP::H16ISPDevice::EnableTimeLapseConfiguration(*(a4 + 24), *(a2 + 156), cf != 0))
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      SetTimeLapseCaptureConfiguration();
    }
  }

  else
  {
    *(a2 + 4744) = cf != 0;
    *(a2 + 4745) = v11;
    result = valuePtr;
    *(a2 + 4748) = valuePtr;
  }

  return result;
}

uint64_t CopyTimeLapseCaptureConfiguration(const __CFAllocator *a1, __CFDictionary **a2, uint64_t a3)
{
  v4 = a3 + 4096;
  if (*(a3 + 4744) == 1)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v8 = CFNumberCreate(a1, kCFNumberFloatType, (a3 + 4748));
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF6300], v8);
      CFRelease(v8);
      if (*(v4 + 649))
      {
        v9 = MEMORY[0x277CBED28];
      }

      else
      {
        v9 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(Mutable, *MEMORY[0x277CF6308], *v9);
      result = 0;
    }

    else
    {
      result = 4294954510;
    }
  }

  else
  {
    result = 0;
    Mutable = 0;
  }

  *a2 = Mutable;
  return result;
}

uint64_t CopyBackWideCalibratedExtrinsics(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v11 = *MEMORY[0x277D85DE8];
  DistortionData = H16ISP::H16ISPDevice::GetDistortionData(*(v4 + 24), *(v5 + 156), 1, v10);
  v7 = 0;
  if (DistortionData)
  {
    result = 4294954513;
  }

  else
  {
    do
    {
      v9[v7] = vcvt_hight_f32_f64(vcvt_f32_f64(*&v10[32 * v7 + 2232]), *&v10[32 * v7 + 2248]);
      v7 = (v7 + 1);
    }

    while (v7 != 3);
    v7 = CFDataCreate(*MEMORY[0x277CBECE8], v9, 48);
    if (v7)
    {
      result = 0;
    }

    else
    {
      result = 4294954510;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t CopyBackWideCalibratedGDCCoefficients(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *&v26[4116] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    if (H16ISP::H16ISPDevice::GetDistortionData(*(v3 + 24), *(v5 + 156), 1, v24))
    {
      v10 = 4294954513;
LABEL_12:
      CFRelease(Mutable);
      Mutable = 0;
      goto LABEL_13;
    }

    if (v25 == 49926)
    {
      v11 = &v23;
      v12 = v26;
      v13 = &v21;
      v14 = 8;
      do
      {
        v11[-2] = vcvt_hight_f32_f64(vcvt_f32_f64(v12[-4]), v12[-3]);
        *v11++ = vcvt_hight_f32_f64(vcvt_f32_f64(v12[-12]), v12[-11]);
        v13[-2] = vcvt_hight_f32_f64(vcvt_f32_f64(*v12), v12[1]);
        *v13++ = vcvt_hight_f32_f64(vcvt_f32_f64(v12[-8]), v12[-7]);
        v12 += 2;
        v14 -= 4;
      }

      while (v14);
    }

    v15 = CFDataCreate(v8, bytes, 64);
    if (!v15 || (v16 = v15, CFDictionaryAddValue(Mutable, *MEMORY[0x277CF4538], v15), CFRelease(v16), (v17 = CFDataCreate(v8, v20, 64)) == 0))
    {
      v10 = 4294954510;
      goto LABEL_12;
    }

    v18 = v17;
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CF4540], v17);
    CFRelease(v18);
    v10 = 0;
  }

  else
  {
    v10 = 4294954510;
  }

LABEL_13:
  *v7 = Mutable;
  return v10;
}

uint64_t CopyBackWideCalibratedOpticalCenter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v9 = *MEMORY[0x277D85DE8];
  if (H16ISP::H16ISPDevice::GetDistortionData(*(v4 + 24), *(v5 + 156), 1, v8))
  {
    DictionaryRepresentation = 0;
    result = 4294954513;
  }

  else
  {
    v10.x = v8[548];
    v10.y = v8[549];
    DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v10);
    if (DictionaryRepresentation)
    {
      result = 0;
    }

    else
    {
      result = 4294954510;
    }
  }

  *v3 = DictionaryRepresentation;
  return result;
}

uint64_t CopyAmbientViewingLevel(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  H16ISP::H16ISPDevice::GetAmbientViewingLevel(*(a5 + 24), *(a3 + 156), &valuePtr);
  if (v6)
  {
    v7 = 0;
    v8 = 4294954514;
  }

  else
  {
    v7 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    v8 = 0;
  }

  *a2 = v7;
  return v8;
}

uint64_t CopyTOFAutoFocusEstimatorResults(const __CFAllocator *a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  bzero(v73, 0x34uLL);
  v74 = 1962;
  v75 = *(a3 + 156);
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v73, 0x34u, 0, 0xFFFFFFFF))
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      CopyTOFAutoFocusEstimatorResults();
    }

LABEL_11:
    v11 = 0;
LABEL_12:
    result = 4294954514;
    goto LABEL_13;
  }

  bzero(v63, 0x64uLL);
  v64 = 1963;
  v65 = *(a3 + 156);
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v63, 0x64u, 0, 0xFFFFFFFF))
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      CopyTOFAutoFocusEstimatorResults();
    }

    goto LABEL_11;
  }

  if (v80 != 1 || v72[6] != 1)
  {
    v11 = 0;
    result = 4294954513;
    goto LABEL_13;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v11 = Mutable;
    v14 = CFNumberCreate(a1, kCFNumberSInt32Type, &v76);
    CFDictionarySetValue(v11, *MEMORY[0x277CF63C0], v14);
    CFRelease(v14);
    v15 = CFNumberCreate(a1, kCFNumberSInt32Type, &v76 + 4);
    CFDictionarySetValue(v11, *MEMORY[0x277CF63A0], v15);
    CFRelease(v15);
    v16 = CFNumberCreate(a1, kCFNumberSInt32Type, v77);
    CFDictionarySetValue(v11, *MEMORY[0x277CF63D0], v16);
    CFRelease(v16);
    valuePtr = v77[1] / 1000;
    v17 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v11, *MEMORY[0x277CF63E0], v17);
    CFRelease(v17);
    v18 = CFNumberCreate(a1, kCFNumberSInt32Type, v78);
    CFDictionarySetValue(v11, *MEMORY[0x277CF63A8], v18);
    CFRelease(v18);
    v61 = v78[1] / 10;
    v19 = CFNumberCreate(a1, kCFNumberSInt32Type, &v61);
    CFDictionarySetValue(v11, *MEMORY[0x277CF63B8], v19);
    CFRelease(v19);
    v60 = v78[2] / 10;
    v20 = CFNumberCreate(a1, kCFNumberSInt32Type, &v60);
    CFDictionarySetValue(v11, *MEMORY[0x277CF63B0], v20);
    CFRelease(v20);
    v21 = CFNumberCreate(a1, kCFNumberSInt32Type, v79);
    CFDictionarySetValue(v11, *MEMORY[0x277CF63C8], v21);
    CFRelease(v21);
    v59 = v79[1];
    v22 = CFNumberCreate(a1, kCFNumberSInt32Type, &v59);
    CFDictionarySetValue(v11, *MEMORY[0x277CF63D8], v22);
    CFRelease(v22);
    v23 = CFNumberCreate(a1, kCFNumberSInt32Type, &v66);
    CFDictionarySetValue(v11, *MEMORY[0x277CF6448], v23);
    CFRelease(v23);
    v24 = CFNumberCreate(a1, kCFNumberSInt32Type, &v67);
    CFDictionarySetValue(v11, *MEMORY[0x277CF6408], v24);
    CFRelease(v24);
    v25 = CFNumberCreate(a1, kCFNumberSInt32Type, &v67 + 4);
    CFDictionarySetValue(v11, *MEMORY[0x277CF63F0], v25);
    CFRelease(v25);
    v26 = CFNumberCreate(a1, kCFNumberSInt32Type, v68);
    CFDictionarySetValue(v11, *MEMORY[0x277CF6440], v26);
    CFRelease(v26);
    valuePtr = v68[1] / 1000;
    v27 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v11, *MEMORY[0x277CF6458], v27);
    CFRelease(v27);
    v28 = CFNumberCreate(a1, kCFNumberSInt32Type, v69);
    CFDictionarySetValue(v11, *MEMORY[0x277CF6400], v28);
    CFRelease(v28);
    v61 = v69[1] / 10;
    v29 = CFNumberCreate(a1, kCFNumberSInt32Type, &v61);
    CFDictionarySetValue(v11, *MEMORY[0x277CF6420], v29);
    CFRelease(v29);
    v60 = v69[2] / 10;
    v30 = CFNumberCreate(a1, kCFNumberSInt32Type, &v60);
    CFDictionarySetValue(v11, *MEMORY[0x277CF6418], v30);
    CFRelease(v30);
    v31 = CFNumberCreate(a1, kCFNumberSInt32Type, &v70);
    CFDictionarySetValue(v11, *MEMORY[0x277CF6438], v31);
    CFRelease(v31);
    v32 = CFNumberCreate(a1, kCFNumberSInt32Type, &v71[4]);
    CFDictionarySetValue(v11, *MEMORY[0x277CF63E8], v32);
    CFRelease(v32);
    HIDWORD(v58) = v72[5];
    v33 = CFNumberCreate(a1, kCFNumberSInt32Type, &v58 + 4);
    CFDictionarySetValue(v11, *MEMORY[0x277CF63F8], v33);
    CFRelease(v33);
    v59 = *&v71[8];
    v34 = CFNumberCreate(a1, kCFNumberSInt32Type, &v59);
    CFDictionarySetValue(v11, *MEMORY[0x277CF6450], v34);
    CFRelease(v34);
    v35 = CFNumberCreate(a1, kCFNumberSInt32Type, v71);
    CFDictionarySetValue(v11, *MEMORY[0x277CF6428], v35);
    CFRelease(v35);
    v36 = CFNumberCreate(a1, kCFNumberSInt32Type, v72);
    CFDictionarySetValue(v11, *MEMORY[0x277CF6370], v36);
    CFRelease(v36);
    v37 = *(a5 + 24);
    if (*(*(v37 + 538) + 652) >= 18)
    {
      bzero(v51, 0x24uLL);
      v52 = 1972;
      v53 = *(a3 + 156);
      if (H16ISP::H16ISPDevice::ISP_SendCommand(v37, v51, 0x24u, 0, 0xFFFFFFFF))
      {
        v38 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v38 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v38;
        }

        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          CopyTOFAutoFocusEstimatorResults();
        }

        goto LABEL_12;
      }

      v50 = v57;
      v40 = CFNumberCreate(a1, kCFNumberSInt32Type, &v50);
      CFDictionarySetValue(v11, *MEMORY[0x277CF6378], v40);
      CFRelease(v40);
      v41 = CFNumberCreate(a1, kCFNumberFloatType, v55);
      CFDictionarySetValue(v11, *MEMORY[0x277CF6388], v41);
      CFRelease(v41);
      v42 = CFNumberCreate(a1, kCFNumberFloatType, &v54);
      CFDictionarySetValue(v11, *MEMORY[0x277CF6380], v42);
      CFRelease(v42);
      v43 = CFNumberCreate(a1, kCFNumberSInt32Type, &v58);
      CFDictionarySetValue(v11, *MEMORY[0x277CF6390], v43);
      CFRelease(v43);
      v49 = v56;
      v44 = CFNumberCreate(a1, kCFNumberSInt32Type, &v49);
      CFDictionarySetValue(v11, *MEMORY[0x277CF6398], v44);
      CFRelease(v44);
      v48 = v55[1] * 0.0039062;
      v45 = CFNumberCreate(a1, kCFNumberFloatType, &v48);
      CFDictionarySetValue(v11, *MEMORY[0x277CF6410], v45);
      CFRelease(v45);
      v47 = v55[2] * 0.0039062;
      v46 = CFNumberCreate(a1, kCFNumberFloatType, &v47);
      CFDictionarySetValue(v11, *MEMORY[0x277CF6430], v46);
      CFRelease(v46);
    }

    result = 0;
    goto LABEL_13;
  }

  v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v39 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v39;
  }

  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    CopyTOFAutoFocusEstimatorResults();
  }

  v11 = 0;
  result = 4294954510;
LABEL_13:
  *a2 = v11;
  return result;
}

uint64_t CopyAutoFocusDriverShortStats(const __CFAllocator *a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  bzero(v18, 0x1CuLL);
  v19 = 1964;
  v20 = *(a3 + 156);
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v18, 0x1Cu, 0, 0xFFFFFFFF))
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      CopyAutoFocusDriverShortStats();
    }

    v10 = 0;
    result = 4294954514;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v10 = Mutable;
      v13 = CFNumberCreate(a1, kCFNumberSInt32Type, &v21);
      CFDictionarySetValue(v10, *MEMORY[0x277CF4100], v13);
      CFRelease(v13);
      v14 = CFNumberCreate(a1, kCFNumberFloatType, &v21 + 4);
      CFDictionarySetValue(v10, *MEMORY[0x277CF40F8], v14);
      CFRelease(v14);
      v15 = CFNumberCreate(a1, kCFNumberFloatType, &v22);
      CFDictionarySetValue(v10, *MEMORY[0x277CF40F0], v15);
      CFRelease(v15);
      v16 = CFNumberCreate(a1, kCFNumberSInt32Type, &v22 + 4);
      CFDictionarySetValue(v10, *MEMORY[0x277CF4108], v16);
      CFRelease(v16);
      result = 0;
    }

    else
    {
      v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v17 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        CopyAutoFocusDriverShortStats();
      }

      v10 = 0;
      result = 4294954510;
    }
  }

  *a2 = v10;
  return result;
}

uint64_t SetLocalHistogramsEnabled(const __CFBoolean *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v7 = CFGetTypeID(a1), v7 == CFBooleanGetTypeID()))
  {
    Value = CFBooleanGetValue(a1);
    v9 = Value != 0;
    if (!*(a2 + 160))
    {
      v12 = Value;
      if (H16ISP::H16ISPDevice::EnableLocalHistogram(*(a4 + 24), *(a2 + 156), Value != 0))
      {
        v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v13 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          SetLocalHistogramsEnabled();
        }
      }

      else
      {
        result = H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), *(a2 + 4292), v12 != 0);
        if (!result)
        {
          *(a2 + 4296) = v9;
          return result;
        }

        v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v14 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          SetLocalHistogramsEnabled();
        }
      }

      return 4294954514;
    }

    if (*(a2 + 4296) == v9)
    {
      return 0;
    }

    else
    {
      return 4294954612;
    }
  }

  else
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      SetLocalHistogramsEnabled();
    }

    return 4294954516;
  }
}

uint64_t CopyLocalHistogramsEnabled(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 4296))
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    v3 = MEMORY[0x277CBED10];
  }

  *a2 = *v3;
  return 0;
}

uint64_t SetReplaySIFDMA(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = -536870212;
  if (cf)
  {
    v8 = CFGetTypeID(cf);
    v9 = 4294954516;
    if (v8 == CFBooleanGetTypeID())
    {
      v10 = CFEqual(cf, *MEMORY[0x277CBED28]) != 0;
      v5 = H16ISP::H16ISPDevice::EnableReplaySifDMA(*(a4 + 24), *(a2 + 156), v10);
      if (v5)
      {
        v9 = 4294954516;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 4294954516;
  }

  v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v11 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = CFEqual(cf, *MEMORY[0x277CBED28]);
    v13 = "True";
    if (!v12)
    {
      v13 = "False";
    }

    v15 = 136315394;
    v16 = v13;
    v17 = 1024;
    v18 = v5;
    _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: kFigCaptureStreamProperty_ReplaySIFDMAMode: %s, result=0x%08x\n\n", &v15, 0x12u);
  }

  return v9;
}

uint64_t SetTorchColor(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, @"WarmLEDPercentile");
  if (!Value)
  {
    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  v9 = valuePtr;
  if (valuePtr >= 0x65)
  {
    v9 = 100;
    valuePtr = 100;
  }

  v10 = H16ISP::H16ISPDevice::SetTorchColorMode(*(a4 + 24), *(a2 + 156), 2, v9);
  v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v11 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v15 = valuePtr;
    v16 = 1024;
    v17 = v10;
    _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetTorchColor, warmLEDPercentile=%d, result=0x%08X\n\n", buf, 0xEu);
  }

  if (v10)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetOISPosition(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, @"XPosition");
  v9 = CFDictionaryGetValue(a1, @"YPosition");
  result = 4294954516;
  if (Value && v9)
  {
    valuePtr = 0.0;
    CFNumberGetValue(Value, kCFNumberFloat32Type, &valuePtr);
    v13 = 0.0;
    CFNumberGetValue(v9, kCFNumberFloat32Type, &v13);
    v11 = H16ISP::H16ISPDevice::SetOISPosition(*(a4 + 24), *(a2 + 156), vcvtd_n_s64_f64(valuePtr, 8uLL), vcvtd_n_s64_f64(v13, 8uLL));
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 134218496;
      v16 = valuePtr;
      v17 = 2048;
      v18 = v13;
      v19 = 1024;
      v20 = v11;
      _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetOISPosition, XPosition=%5.5f um, YPosition=%5.5f um, result=0x%08X\n\n", buf, 0x1Cu);
    }

    if (v11)
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CopyOISPosition(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *v19 = 0;
  *v18 = 0;
  if (H16ISP::H16ISPDevice::GetOISPosition(*(a5 + 24), *(a3 + 156), &v19[1], v19, &v18[1], v18))
  {
    v6 = 0;
    result = 4294954513;
  }

  else
  {
    result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v6 = result;
    if (result)
    {
      v8 = vcvtd_n_f64_s32(v19[1], 8uLL);
      valuePtr = v8;
      v9 = CFNumberCreate(0, kCFNumberFloat32Type, &valuePtr);
      CFDictionarySetValue(v6, @"XPosition", v9);
      CFRelease(v9);
      v10 = vcvtd_n_f64_s32(v19[0], 8uLL);
      v16 = v10;
      v11 = CFNumberCreate(0, kCFNumberFloat32Type, &v16);
      CFDictionarySetValue(v6, @"YPosition", v11);
      CFRelease(v11);
      v15 = v18[1];
      v12 = CFNumberCreate(0, kCFNumberIntType, &v15);
      CFDictionarySetValue(v6, @"HallSensor1", v12);
      CFRelease(v12);
      v14 = v18[0];
      v13 = CFNumberCreate(0, kCFNumberIntType, &v14);
      CFDictionarySetValue(v6, @"HallSensor2", v13);
      CFRelease(v13);
      result = 0;
    }
  }

  *a2 = v6;
  return result;
}

uint64_t SetOISActuator(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, @"XPosition");
  v9 = CFDictionaryGetValue(a1, @"YPosition");
  result = 4294954516;
  if (Value && v9)
  {
    valuePtr = 0;
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    *v13 = 0;
    CFNumberGetValue(v9, kCFNumberIntType, v13);
    v11 = H16ISP::H16ISPDevice::SetOISActuator(*(a4 + 24), *(a2 + 156), valuePtr, v13[0]);
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      v16 = valuePtr;
      v17 = 1024;
      v18 = *v13;
      v19 = 1024;
      v20 = v11;
      _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetOISActuator, b1=%8.8d, b2=%8.8d, result=0x%08X\n\n", buf, 0x14u);
    }

    if (v11)
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CopyOISTemperature(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  if (H16ISP::H16ISPDevice::GetOISTemperature(*(a5 + 24), *(a3 + 156), &v10))
  {
    v6 = 0;
    v7 = 4294954513;
  }

  else
  {
    valuePtr = v10;
    v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v7 = 0;
  }

  *a2 = v6;
  return v7;
}

uint64_t SetAFTestScriptLoad(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDataGetTypeID())
  {
    return 4294954516;
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  DataFile = H16ISP::H16ISPDevice::ISP_LoadDataFile(*(a4 + 24), *(a2 + 156), BytePtr, Length, 0x10u);
  v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v11 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67109120;
    v13[1] = DataFile;
    _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetAFTestScriptLoad, result=0x%08X\n\n", v13, 8u);
  }

  if (DataFile)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetSensorSidebandEnabled(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = cf;
  v16 = *MEMORY[0x277D85DE8];
  if (!cf)
  {
    goto LABEL_6;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFBooleanGetTypeID())
  {
    LODWORD(v4) = 0;
LABEL_6:
    v8 = 4294954516;
    goto LABEL_7;
  }

  if (*(a2 + 160))
  {
    LODWORD(v4) = 0;
    v8 = 4294954612;
  }

  else
  {
    LODWORD(v4) = CFEqual(v4, *MEMORY[0x277CBED28]) != 0;
    if (H16ISP::H16ISPDevice::EnableSensorSideband(*(a4 + 24), *(a2 + 156), v4))
    {
      v8 = 4294954516;
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_7:
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = "False";
    if (v4)
    {
      v10 = "True";
    }

    v12 = 136315394;
    v13 = v10;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: EnableSensorSideband: %s (err=%d)\n\n", &v12, 0x12u);
  }

  return v8;
}

uint64_t SetReloadNVM(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 160))
  {
    return 4294954612;
  }

  v4 = 4294954514;
  if (!H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(a4 + 24), *(a2 + 156), 1u, 0))
  {
    v7 = H16ISP::H16ISPDevice::ReloadNVMBytes(*(a4 + 24), *(a2 + 156));
    H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(a4 + 24), *(a2 + 156), 0, 0);
    if (v7)
    {
      return 4294954514;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t SetChromaNoiseReductionLevel(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  if (valuePtr > 0xFF)
  {
    return 4294954516;
  }

  v8 = H16ISP::H16ISPDevice::SetCNRLevel(*(a4 + 24), *(a2 + 156), valuePtr);
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v13 = valuePtr;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetCNRLevel: 0x%08X, result=0x%08X\n\n", buf, 0xEu);
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

uint64_t CopyChromaNoiseReductionLevel(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  if (H16ISP::H16ISPDevice::GetCNRLevel(*(a5 + 24), *(a3 + 156), &v10))
  {
    v6 = 0;
    v7 = 4294954513;
  }

  else
  {
    valuePtr = v10;
    v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v7 = 0;
  }

  *a2 = v6;
  return v7;
}

uint64_t SetISPProcessingConfig(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  if (valuePtr > 3)
  {
    return 4294954516;
  }

  v8 = H16ISP::H16ISPDevice::SetISPProcessingConfig(*(a4 + 24), *(a2 + 156), valuePtr);
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v13 = valuePtr;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetISPProcessingConfig: 0x%08X, result=0x%08X\n\n", buf, 0xEu);
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

uint64_t SetNoiseReductionLevel(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  if (valuePtr > 0xFF)
  {
    return 4294954516;
  }

  v8 = H16ISP::H16ISPDevice::SetNoiseReductionLevel(*(a4 + 24), *(a2 + 156), valuePtr);
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v13 = valuePtr;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetNoiseReductionLevel: 0x%08X, result=0x%08X\n\n", buf, 0xEu);
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

uint64_t CopyNoiseReductionLevel(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  if (H16ISP::H16ISPDevice::GetNoiseReductionLevel(*(a5 + 24), *(a3 + 156), &v10))
  {
    v6 = 0;
    v7 = 4294954513;
  }

  else
  {
    valuePtr = v10;
    v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v7 = 0;
  }

  *a2 = v6;
  return v7;
}

uint64_t SetInfraredLightSourceConfiguration(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ProjectorTypeFromDictionary = GetProjectorTypeFromDictionary(a1, (a2 + 4260));
  if (!ProjectorTypeFromDictionary)
  {
    v7 = *(a2 + 4260);
    *(a2 + 4258) = v7 != 0;
    if (*(a2 + 4520))
    {
      if (v7)
      {
        if ((H16ISP::H16ISPDevice::IsProjectorAllowed(*(a4 + 24), *(a2 + 156)) & 1) == 0)
        {
          NotifyProjectorValidationError(a2, a4);
          return ProjectorTypeFromDictionary;
        }

        H16ISP::ProjectorManager::setProjectorType(*(a2 + 4520), *(a2 + 4260));
        v8 = 1;
      }

      else
      {
        v8 = 0;
      }

      EnableIRProjector(v8, a2, a4);
    }
  }

  return ProjectorTypeFromDictionary;
}

uint64_t SetIRProjectorParams(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, @"EnableIRProjector");
  if (!Value)
  {
    return 4294954516;
  }

  v9 = CFEqual(Value, *MEMORY[0x277CBED28]);
  v10 = CFDictionaryGetValue(a1, @"ProjectorType");
  if (!v10)
  {
    return 4294954516;
  }

  v11 = v10;
  v12 = CFGetTypeID(v10);
  if (v12 != CFStringGetTypeID())
  {
    return 4294954516;
  }

  if (CFEqual(v11, @"Flood"))
  {
    v13 = 1;
LABEL_27:
    *(a2 + 4260) = v13;
    goto LABEL_28;
  }

  if (CFEqual(v11, @"Dense"))
  {
    v13 = 4;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"Sparse"))
  {
    v13 = 5;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"DenseInterleave"))
  {
    v13 = 6;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"SparseInterleave"))
  {
    v13 = 7;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"DenseLowPower"))
  {
    v13 = 11;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"SparseLowPower"))
  {
    v13 = 12;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"DenseInterleaveLowPower"))
  {
    v13 = 13;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"SparseInterleaveLowPower"))
  {
    v13 = 14;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"RunScript") || CFEqual(v11, @"UserStudy"))
  {
    v13 = 8;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"UserStudyLowPower"))
  {
    v13 = 15;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"ComplianceA"))
  {
    v13 = 9;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"ComplianceB"))
  {
    v13 = 10;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"ComplianceC"))
  {
    v13 = 16;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"ComplianceD"))
  {
    v13 = 17;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"ComplianceE"))
  {
    v13 = 45;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"DenseProbeA"))
  {
    v13 = 18;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"DenseProbeB"))
  {
    v13 = 19;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"DenseProbeAB"))
  {
    v13 = 20;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"SparseProbeA"))
  {
    v13 = 21;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"SparseProbeB"))
  {
    v13 = 22;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"SparseProbeAB"))
  {
    v13 = 23;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"DenseLowPowerProbeA"))
  {
    v13 = 24;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"DenseLowPowerProbeB"))
  {
    v13 = 25;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"DenseLowPowerProbeAB"))
  {
    v13 = 26;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"SparseLowPowerProbeA"))
  {
    v13 = 27;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"SparseLowPowerProbeB"))
  {
    v13 = 28;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"SparseLowPowerProbeAB"))
  {
    v13 = 29;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"UserStudyProbingPattern"))
  {
    v13 = 30;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"FactoryBurninP3A"))
  {
    v13 = 31;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"FactoryBurninP3D"))
  {
    v13 = 32;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"DenseInterleaveProbeA"))
  {
    v13 = 33;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"DenseInterleaveProbeB"))
  {
    v13 = 34;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"DenseInterleaveProbeAB"))
  {
    v13 = 35;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"SparseInterleaveProbeA"))
  {
    v13 = 36;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"SparseInterleaveProbeB"))
  {
    v13 = 37;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"SparseInterleaveProbeAB"))
  {
    v13 = 38;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"DenseInterleaveLowPowerProbeA"))
  {
    v13 = 39;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"DenseInterleaveLowPowerProbeB"))
  {
    v13 = 40;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"DenseInterleaveLowPowerProbeAB"))
  {
    v13 = 41;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"SparseInterleaveLowPowerProbeA"))
  {
    v13 = 42;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"SparseInterleaveLowPowerProbeB"))
  {
    v13 = 43;
    goto LABEL_27;
  }

  if (CFEqual(v11, @"SparseInterleaveLowPowerProbeAB"))
  {
    v13 = 44;
    goto LABEL_27;
  }

  *(a2 + 4260) = 0;
LABEL_28:
  *(a2 + 4258) = v9 != 0;
  if (*(a2 + 4520))
  {
    if (v9)
    {
      if ((H16ISP::H16ISPDevice::IsProjectorAllowed(*(a4 + 24), *(a2 + 156)) & 1) == 0)
      {
        NotifyProjectorValidationError(a2, a4);
        return 0;
      }

      H16ISP::ProjectorManager::setProjectorType(*(a2 + 4520), *(a2 + 4260));
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    EnableIRProjector(v15, a2, a4);
  }

  return 0;
}

uint64_t SetGenericProjectorType(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (H16ISP::H16ISPDevice::IsProjectorAllowed(*(a4 + 24), *(a2 + 156)))
  {
    *(a2 + 4258) = 1;
    *(a2 + 4260) = 47;
    v8 = *(a2 + 4520);
    if (v8)
    {
      H16ISP::ProjectorManager::setProjectorType(v8, a1);
    }

    else
    {
      H16ISP::ProjectorManager::setUserDefinedProjectorType(a1, v7);
    }

    EnableIRProjector(1, a2, a4);
  }

  else
  {
    NotifyProjectorValidationError(a2, a4);
  }

  return 0;
}

uint64_t CopyProjectorValid(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  IsProjectorAllowed = H16ISP::H16ISPDevice::IsProjectorAllowed(*(a5 + 24), *(a3 + 156));
  v7 = MEMORY[0x277CBED28];
  if (!IsProjectorAllowed)
  {
    v7 = MEMORY[0x277CBED10];
  }

  v8 = *v7;
  CFRetain(*v7);
  *a2 = v8;
  return 0;
}

uint64_t CopyValidateCompliance(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a3 + 160))
  {
    v9 = 4294954514;
LABEL_11:
    v11 = MEMORY[0x277CBED10];
    goto LABEL_12;
  }

  bzero(v14, 0x14uLL);
  v15 = 328;
  v16 = *(a3 + 156);
  v8 = H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v14, 0x14u, 0, 0xFFFFFFFF);
  if (v8)
  {
    v9 = 4294954513;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v17 == 0;
  }

  if (v10)
  {
    goto LABEL_11;
  }

  v11 = MEMORY[0x277CBED28];
LABEL_12:
  v12 = *v11;
  CFRetain(*v11);
  *a2 = v12;
  return v9;
}

uint64_t CopyValidateComplianceWithDetails(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a3 + 160))
  {
    return 4294954514;
  }

  bzero(v11, 0x14uLL);
  v12 = 328;
  v13 = *(a3 + 156);
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v11, 0x14u, 0, 0xFFFFFFFF))
  {
    return 4294954513;
  }

  valuePtr = v14;
  v10 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  result = 0;
  *a2 = v10;
  return result;
}

uint64_t CopyProjectorFaultStatus(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  bzero(v11, 0x4CuLL);
  v13 = *(a3 + 156);
  v12 = 1570;
  v14 = 0x100000000;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v11, 0x4Cu, 0, 0xFFFFFFFF))
  {
    v9 = 4294954513;
  }

  else
  {
    v9 = 0;
    valuePtr = v16 | (v15 << 32);
  }

  *a2 = CFNumberCreate(a1, kCFNumberSInt64Type, &valuePtr);
  return v9;
}

uint64_t CopyProjectorRosalineFaultStatus(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  bzero(v11, 0x4CuLL);
  v13 = *(a3 + 156);
  v12 = 1570;
  v14 = 0x200000002;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v11, 0x4Cu, 0, 0xFFFFFFFF))
  {
    v9 = 4294954513;
  }

  else
  {
    v9 = 0;
    valuePtr = v15;
  }

  *a2 = CFNumberCreate(a1, kCFNumberLongLongType, &valuePtr);
  return v9;
}

uint64_t SetDynamicVoltageEnable(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  v8 = CFEqual(a1, *MEMORY[0x277CBED28]) != 0;
  result = H16ISP::H16ISPDevice::SetDynamicVoltageEnable(*(a4 + 24), *(a2 + 156), v8);
  if (result)
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      SetDynamicVoltageEnable();
    }

    return 4294954514;
  }

  return result;
}

uint64_t CopyProjectorQuarkFaultStatus(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  bzero(v18, 0x4CuLL);
  v20 = *(a3 + 156);
  v19 = 1570;
  v21 = 0x600000007;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v18, 0x4Cu, 0, 0xFFFFFFFF))
  {
    return 4294954513;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v17 = v22;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  CFDictionarySetValue(Mutable, @"ChipState", v10);
  CFRelease(v10);
  v17 = v23;
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  CFDictionarySetValue(Mutable, @"Armed", v11);
  CFRelease(v11);
  v17 = v24;
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  CFDictionarySetValue(Mutable, @"FaultState", v12);
  CFRelease(v12);
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, v25);
  CFDictionarySetValue(Mutable, @"FaultDT0", v13);
  CFRelease(v13);
  v17 = v25[1] & 0xFFFFFF;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  CFDictionarySetValue(Mutable, @"FaultDT1", v14);
  CFRelease(v14);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, v26);
  CFDictionarySetValue(Mutable, @"FaultDT01ST", v15);
  CFRelease(v15);
  v17 = v26[1] & 0xFFFFFF;
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &v17);
  CFDictionarySetValue(Mutable, @"FaultDT11ST", v16);
  CFRelease(v16);
  result = 0;
  *a2 = Mutable;
  return result;
}

uint64_t CopyProjectorWillFaultStatus(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  bzero(v11, 0x4CuLL);
  v13 = *(a3 + 156);
  v12 = 1570;
  v14 = 0x700000005;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v11, 0x4Cu, 0, 0xFFFFFFFF))
  {
    v9 = 4294954513;
  }

  else
  {
    v9 = 0;
    valuePtr = v15;
  }

  *a2 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  return v9;
}

uint64_t CopyBaneResistance(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  bzero(v11, 0x4CuLL);
  v13 = *(a3 + 156);
  v12 = 1570;
  v14 = 0xA00000002;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v11, 0x4Cu, 0, 0xFFFFFFFF))
  {
    return 4294954516;
  }

  v10 = CFNumberCreate(a1, kCFNumberIntType, &v15);
  result = 0;
  *a2 = v10;
  return result;
}

uint64_t CopyBaneState(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  bzero(v11, 0x4CuLL);
  v13 = *(a3 + 156);
  v12 = 1570;
  v14 = 0xB00000002;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v11, 0x4Cu, 0, 0xFFFFFFFF))
  {
    return 4294954516;
  }

  v10 = CFNumberCreate(a1, kCFNumberIntType, &v15);
  result = 0;
  *a2 = v10;
  return result;
}

uint64_t CopyProjectorMamaBearStatus(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  bzero(v11, 0x4CuLL);
  v13 = *(a3 + 156);
  v12 = 1570;
  v14 = 1;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v11, 0x4Cu, 0, 0xFFFFFFFF))
  {
    v9 = 4294954513;
  }

  else
  {
    v9 = 0;
    valuePtr = v15;
  }

  *a2 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  return v9;
}

uint64_t CopyProjectorRigelPulseCount(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  bzero(v11, 0x4CuLL);
  v13 = *(a3 + 156);
  v12 = 1570;
  v14 = 0x800000000;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v11, 0x4Cu, 0, 0xFFFFFFFF))
  {
    v9 = 4294954513;
  }

  else
  {
    v9 = 0;
    valuePtr = v15;
  }

  *a2 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  return v9;
}

uint64_t CopyProjectorRigelSerialNumber(const __CFAllocator *a1, CFStringRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  bzero(v11, 0x68uLL);
  v12 = 1565;
  v13 = *(a3 + 156);
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v11, 0x68u, 0, 0xFFFFFFFF))
  {
    v9 = 0;
    result = 4294954513;
  }

  else
  {
    v9 = CFStringCreateWithCString(a1, v14, 0x8000100u);
    result = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t CopyGuadaloupLastResistance(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  bzero(v11, 0x4CuLL);
  v13 = *(a3 + 156);
  v12 = 1570;
  v14 = 0xD00000006;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v11, 0x4Cu, 0, 0xFFFFFFFF))
  {
    return 4294954513;
  }

  valuePtr = v15;
  v10 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  result = 0;
  *a2 = v10;
  return result;
}

uint64_t CopyGuadaloupRecordRegisters(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  bzero(v11, 0x4CuLL);
  v13 = *(a3 + 156);
  v12 = 1570;
  v14 = 0xE00000006;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v11, 0x4Cu, 0, 0xFFFFFFFF))
  {
    return 4294954513;
  }

  valuePtr = v15;
  v10 = CFNumberCreate(a1, kCFNumberSInt64Type, &valuePtr);
  result = 0;
  *a2 = v10;
  return result;
}

uint64_t SetRigelFaultInterruptMask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(a2 + 156);
  bzero(v13, 0x20uLL);
  v15 = v7;
  v14 = 14094;
  v17 = 4;
  v16 = xmmword_2249BBCD0;
  v8 = H16ISP::H16ISPDevice::ISP_SendCommand(v6, v13, 0x20u, 0, 0xFFFFFFFF);
  v9 = 4294954516;
  if (!v8)
  {
    v10 = *(a4 + 24);
    v11 = *(a2 + 156);
    bzero(v13, 0x20uLL);
    v15 = v11;
    v14 = 14094;
    v17 = 1;
    v16 = xmmword_2249BBCE0;
    if (H16ISP::H16ISPDevice::ISP_SendCommand(v10, v13, 0x20u, 0, 0xFFFFFFFF))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t ForceOpenCircuitFault(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  v5 = *(a2 + 156);
  bzero(v7, 0x20uLL);
  v9 = v5;
  v8 = 14094;
  v11 = 1;
  v10 = xmmword_2249BBCF0;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(v4, v7, 0x20u, 0, 0xFFFFFFFF))
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetYogiFaultCSpecialFunctions(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  *v8 = 0;
  if (DebugSpecialFunctionGetHandle(*(a4 + 24), v8, a3))
  {
    return 4294954516;
  }

  v6 = *v8;
  v5 = 4294954516;
  if (!DebugSpecialFunction(*(a4 + 24), *v8, 4, 10500))
  {
    if (DebugSpecialFunction(*(a4 + 24), v6, 3, 200000))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t SetRosalineCalCurrent(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v11 = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  v8 = 4294954516;
  if (!DebugSpecialFunctionGetHandle(*(a4 + 24), v11, v7))
  {
    if (DebugSpecialFunction(*(a4 + 24), *v11, 3, valuePtr))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t CopyProjectorSpecCalibrationValue(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = -1;
  if (*(a3 + 4256) == 1)
  {
    v9 = -1;
    if (H16ISP::ProjectorManager::getFloodProjectorCalibrationValue(*(a5 + 24), *(a3 + 156), &valuePtr, &v9, a5))
    {
      v7 = 4294954513;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 4294954514;
  }

  *a2 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  return v7;
}

uint64_t SetRosalineCalPulseWidth(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v11 = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  v8 = 4294954516;
  if (!DebugSpecialFunctionGetHandle(*(a4 + 24), v11, v7))
  {
    if (DebugSpecialFunction(*(a4 + 24), *v11, 4, valuePtr))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t CopyProjectorSpecCalibrationPw(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = -1;
  if (*(a3 + 4256) == 1)
  {
    v9 = -1;
    if (H16ISP::ProjectorManager::getFloodProjectorCalibrationValue(*(a5 + 24), *(a3 + 156), &v9, &valuePtr, a5))
    {
      v7 = 4294954513;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 4294954514;
  }

  *a2 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  return v7;
}

uint64_t CopyProjectorVersion(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  valuePtr = 0;
  if (*(a3 + 4256) == 1)
  {
    v10 = 0;
    if (H16ISP::ProjectorManager::getProjectorVersion(*(a5 + 24), *(a3 + 156), &valuePtr, &v10, &v10, a6))
    {
      v8 = 4294954513;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 4294954514;
  }

  *a2 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  return v8;
}

uint64_t CopyProjectorHWVersion(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  valuePtr = 0;
  if (*(a3 + 4256) == 1)
  {
    v10 = 0;
    if (H16ISP::ProjectorManager::getProjectorVersion(*(a5 + 24), *(a3 + 156), &v10, &v10, &valuePtr, a6))
    {
      v8 = 4294954513;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 4294954514;
  }

  *a2 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  return v8;
}

uint64_t CopyProjectorTokenVersion(const __CFAllocator *a1, CFNumberRef *a2)
{
  valuePtr = MobileProjectorToken::VERSION;
  *a2 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  return 0;
}

uint64_t SetPDEPreset(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID() || *(a2 + 160))
  {
    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  result = 0;
  *(a2 + 4412) = valuePtr;
  return result;
}

uint64_t SetPCEOutputFormat(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 160))
  {
    return 4294954612;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  if (valuePtr > 1)
  {
    return 4294954516;
  }

  result = 0;
  *(a2 + 4416) = valuePtr;
  return result;
}

uint64_t SetFusionMode(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  v5 = *(a2 + 4420);
  v6 = valuePtr;
  if (v5 == valuePtr)
  {
    return 0;
  }

  v8 = *(a2 + 160);
  if (!v8)
  {
    if (valuePtr <= 2)
    {
      result = 0;
      *(a2 + 4420) = valuePtr;
      return result;
    }

    return 4294954516;
  }

  if (v5 == 1 && valuePtr == 2 && (*(a2 + 4428) & 1) == 0 || (result = 4294954612, valuePtr == 1) && v5 == 2 && (*(a2 + 4428) & 1) == 0)
  {
    *(a2 + 4420) = valuePtr;
    H16ISP::H16ISPFrameReceiver::setFuseMode(v8, v6);
    result = *(a2 + 4720);
    if (result)
    {
      v9 = 0;
      H16ISP::H16ISPFilterGraphManager::GetNode(result, 5, &v9);
      if (v9)
      {
        H16ISP::H16ISPFusionNode::SetFusionMode(v9, valuePtr, *(a2 + 4428));
      }

      return 0;
    }
  }

  return result;
}

uint64_t SetHwGdrMode(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 160))
  {
    return 4294954612;
  }

  Value = CFBooleanGetValue(a1);
  result = 0;
  *(a2 + 4428) = Value != 0;
  return result;
}

uint64_t SetCinVidMode(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 160))
  {
    return 4294954612;
  }

  Value = CFBooleanGetValue(a1);
  result = 0;
  *(a2 + 4448) = Value != 0;
  return result;
}

uint64_t CopySupportedDepthPerspectivePortTypes(const __CFAllocator *a1, __CFArray **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (H16ISP::H16ISPDevice::isSensorType(*(a5 + 24), *(a3 + 156), 1718186595))
  {
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
    if (H16ISP::H16ISPDevice::hasSensorType(*(a5 + 24), 1718775412))
    {
      CFArrayAppendValue(Mutable, *MEMORY[0x277CF3D08]);
    }

    if (H16ISP::H16ISPDevice::hasSensorType(*(a5 + 24), 1718776695))
    {
      CFArrayAppendValue(Mutable, *MEMORY[0x277CF3D20]);
    }
  }

  else
  {
    Mutable = 0;
  }

  *a2 = Mutable;
  return 0;
}

uint64_t CopySupportedOutputConfigurations(const __CFAllocator *a1, __CFArray **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  v10 = *(a5 + 24);
  v11 = *(*(v10 + 4304) + 104 * *(a3 + 156) + 16);
  switch(v11)
  {
    case 1919251564:
      goto LABEL_12;
    case 1919246706:
      if (!H16ISP::H16ISPDevice::hasSensorType(v10, 1919251319))
      {
        break;
      }

LABEL_12:
      v12 = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
      *v32 = 825306677;
      v23 = CFNumberCreate(a1, kCFNumberIntType, v32);
      CFArrayAppendValue(v12, v23);
      CFRelease(v23);
      valuePtr = 1751411059;
      v24 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
      CFArrayAppendValue(v12, v24);
      CFRelease(v24);
      if (H16ISP::DepthRearConfigurations::Count(v25))
      {
        v26 = 0;
        do
        {
          v27 = H16ISP::DepthRearConfigurations::supports(v26);
          if (v27)
          {
            WidthOfPreset = H16ISP::DepthRearConfigurations::getWidthOfPreset(v26);
            HeightOfPreset = H16ISP::DepthRearConfigurations::getHeightOfPreset(v26);
            addSupportedConfiguration(a1, Mutable, WidthOfPreset, HeightOfPreset, 0, v12, 0, 1, 1, v26 == 4);
          }

          v26 = (v26 + 1);
        }

        while (v26 < H16ISP::DepthRearConfigurations::Count(v27));
      }

      goto LABEL_17;
    case 1718186595:
      v12 = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
      valuePtr = 825437747;
      v13 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
      CFArrayAppendValue(v12, v13);
      CFRelease(v13);
      *v32 = 1751410032;
      v14 = CFNumberCreate(a1, kCFNumberIntType, v32);
      CFArrayAppendValue(v12, v14);
      CFRelease(v14);
      *v32 = 1751411059;
      v15 = CFNumberCreate(a1, kCFNumberIntType, v32);
      CFArrayAppendValue(v12, v15);
      CFRelease(v15);
      bzero(v32, 0x68uLL);
      v33 = 1565;
      v34 = *(a3 + 156);
      v16 = H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v32, 0x68u, 0, 0xFFFFFFFF);
      if (!v16)
      {
        v17 = v35;
        if (H16ISP::DepthFrontConfigurations::Count(v16))
        {
          v18 = 0;
          do
          {
            v19 = H16ISP::DepthFrontConfigurations::supports(v18, v17);
            if (v19)
            {
              v20 = H16ISP::DepthFrontConfigurations::getWidthOfPreset(v18);
              v21 = H16ISP::DepthFrontConfigurations::getHeightOfPreset(v18);
              RegistrationOfPreset = H16ISP::DepthFrontConfigurations::getRegistrationOfPreset(v18);
              addSupportedConfiguration(a1, Mutable, v20, v21, RegistrationOfPreset, v12, 1, 0, 0, (v18 < 8) & (0xD0u >> v18));
            }

            v18 = (v18 + 1);
          }

          while (v18 < H16ISP::DepthFrontConfigurations::Count(v19));
        }
      }

LABEL_17:
      CFRelease(v12);
      result = 0;
      *a2 = Mutable;
      return result;
  }

  CFRelease(Mutable);
  return 4294954514;
}

uint64_t CopyValidateCalibration(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v5 = v4;
  v13 = *MEMORY[0x277D85DE8];
  v10 = 24577;
  v11 = *(v6 + 156);
  bzero(v12, 0x344CuLL);
  result = H16ISP::H16ISPDevice::ISP_SendCommand(*(v3 + 24), v9, 0x3458u, 0, 0xFFFFFFFF);
  if (result)
  {
    return 4294954516;
  }

  if (v12[0])
  {
    v8 = MEMORY[0x277CBED28];
  }

  else
  {
    v8 = MEMORY[0x277CBED10];
  }

  *v5 = *v8;
  return result;
}

uint64_t SetEnableFIDMetadata(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 160))
  {
    return 4294954612;
  }

  v9 = CFEqual(a1, *MEMORY[0x277CBED28]);
  if (H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), 35, v9 != 0))
  {
    return 4294954516;
  }

  v8 = 4294954516;
  if (!H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), 36, v9 != 0))
  {
    if (H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), 40, v9 != 0))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t SetEnableFIDDebugMetadata(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 160))
  {
    return 4294954612;
  }

  v10 = CFEqual(a1, *MEMORY[0x277CBED28]);
  v8 = 4294954516;
  if (!H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), 38, v10 != 0))
  {
    if (H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), 39, v10 != 0))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t SetEnableFID(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  v8 = CFEqual(a1, *MEMORY[0x277CBED28]);
  v9 = *(a4 + 24);
  v10 = *(a2 + 156);
  if (v8)
  {
    v11 = H16ISP::H16ISPDevice::FIDStart(v9, v10, 0, 0);
  }

  else
  {
    v11 = H16ISP::H16ISPDevice::FIDStop(v9, v10);
  }

  if (v11)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetAEMode(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  v8 = 4294954516;
  if (v7 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
    if (H16ISP::H16ISPDevice::SetAEMode(*(a4 + 24), *(a2 + 156), valuePtr))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t SetAETarget(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  v8 = 4294954516;
  if (v7 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
    if (H16ISP::H16ISPDevice::SetAETarget(*(a4 + 24), *(a2 + 156), valuePtr))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t CopyAETarget(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::GetAETarget(*(a5 + 24), *(a3 + 156), &valuePtr))
  {
    v6 = 0;
    v7 = 4294954513;
  }

  else
  {
    v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v7 = 0;
  }

  *a2 = v6;
  return v7;
}

uint64_t SetFIDState(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  switch(valuePtr)
  {
    case 2:
      goto LABEL_6;
    case 1:
      goto LABEL_8;
    case 0:
LABEL_6:
      v7 = H16ISP::H16ISPDevice::WritePropertyValue(*(a4 + 24), 0, 5890, 0, 0xFFFFFFFF);
      if (v7 || valuePtr == 2)
      {
LABEL_9:
        if (v7)
        {
          return 4294954516;
        }

        return 0;
      }

LABEL_8:
      v7 = H16ISP::H16ISPDevice::WritePropertyValue(*(a4 + 24), 0, 5888, 1, 0xFFFFFFFF);
      goto LABEL_9;
  }

  return 0;
}

uint64_t EnableIRFramesToPDE(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  v8 = CFEqual(a1, *MEMORY[0x277CBED28]) != 0;
  if (H16ISP::H16ISPDevice::WritePropertyValue(*(a4 + 24), *(a2 + 156), 8197, v8, 0xFFFFFFFF))
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return 4294954514;
    }

    goto LABEL_14;
  }

  result = H16ISP::H16ISPDevice::WritePropertyValue(*(a4 + 24), *(a2 + 156), 16397, v8, 0xFFFFFFFF);
  if (!result)
  {
    return result;
  }

  v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v11 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
LABEL_14:
    EnableIRFramesToPDE();
  }

  return 4294954514;
}

uint64_t SetGMCDebug(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  v8 = 4294954516;
  if (v7 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
    if (H16ISP::H16ISPDevice::WritePropertyValue(*(a4 + 24), *(a2 + 156), 16399, valuePtr, 0xFFFFFFFF))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t SetColorGMCDebug(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  v8 = 4294954516;
  if (v7 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
    if (H16ISP::H16ISPDevice::WritePropertyValue(*(a4 + 24), *(a2 + 156), 16406, valuePtr, 0xFFFFFFFF))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t SetSIFROverrideMode(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  if (valuePtr > 3)
  {
    return 4294954516;
  }

  result = H16ISP::H16ISPDevice::WritePropertyValue(*(a4 + 24), *(a2 + 156), 288, valuePtr, 0xFFFFFFFF);
  if (result)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      SetSIFROverrideMode();
    }

    return 4294954514;
  }

  return result;
}

uint64_t SetSplitPDOverrideMode(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  if (valuePtr > 3)
  {
    return 4294954516;
  }

  result = H16ISP::H16ISPDevice::WritePropertyValue(*(a4 + 24), *(a2 + 156), 280, valuePtr, 0xFFFFFFFF);
  if (result)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      SetSplitPDOverrideMode();
    }

    return 4294954514;
  }

  return result;
}

uint64_t SetAPSActuator(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
  result = H16ISP::H16ISPDevice::SetAPSActuator(*(a4 + 24), *(a2 + 156), valuePtr);
  if (result)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      SetAPSActuator();
    }

    return 4294954514;
  }

  return result;
}

uint64_t SetMasterSlaveAPSFocus(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 160))
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SetMasterSlaveAPSFocus();
    }

    return 4294954612;
  }

  else if (cf && (v9 = CFGetTypeID(cf), v9 == CFBooleanGetTypeID()))
  {
    v10 = CFEqual(cf, *MEMORY[0x277CBED28]);
    v11 = *(a2 + 156);
    if (*(a2 + 4360) && !*(a2 + 4380))
    {
      v11 |= 0x80000000;
    }

    result = H16ISP::H16ISPDevice::SetMasterSlaveAPSFocus(*(a4 + 24), v11, v10 != 0);
    if (result)
    {
      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v12 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        SetMasterSlaveAPSFocus();
      }

      return 4294954514;
    }
  }

  else
  {
    return 4294954516;
  }

  return result;
}

uint64_t SetMasterSlaveContrastFocus(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 160))
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SetMasterSlaveAPSFocus();
    }

    return 4294954612;
  }

  else if (cf && (v9 = CFGetTypeID(cf), v9 == CFBooleanGetTypeID()))
  {
    v10 = CFEqual(cf, *MEMORY[0x277CBED28]);
    v11 = *(a2 + 156);
    if (*(a2 + 4360) && !*(a2 + 4380))
    {
      v11 |= 0x80000000;
    }

    result = H16ISP::H16ISPDevice::SetMasterSlaveContrastFocus(*(a4 + 24), v11, v10 != 0);
    if (result)
    {
      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v12 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        SetMasterSlaveContrastFocus();
      }

      return 4294954514;
    }
  }

  else
  {
    return 4294954516;
  }

  return result;
}

uint64_t SetForceSingleChannelCommands(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  v5 = CFEqual(a1, *MEMORY[0x277CBED28]);
  result = 0;
  *(a2 + 4380) = v5 != 0;
  return result;
}

uint64_t SetTorchManualParameters(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v27 = *MEMORY[0x277D85DE8];
  LODWORD(v25) = 101;
  v8 = CFGetTypeID(v2);
  if (v8 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  v22[0] = 0;
  Value = CFDictionaryGetValue(v7, @"WarmLED0Level");
  v10 = CFDictionaryGetValue(v7, @"WarmLED1Level");
  v11 = CFDictionaryGetValue(v7, @"CoolLED0Level");
  v12 = CFDictionaryGetValue(v7, @"CoolLED1Level");
  v13 = v12;
  if (v10)
  {
    CFNumberGetValue(v10, kCFNumberIntType, v22);
    v14 = LOBYTE(v22[0]);
    if (!v13)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v14 = 0;
  if (v12)
  {
LABEL_4:
    CFNumberGetValue(v13, kCFNumberIntType, v22);
    v14 = v14 & 0xFFFF00FF | (LOBYTE(v22[0]) << 8);
  }

LABEL_5:
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, v22);
    v14 = v14 & 0xFF00FFFF | (LOBYTE(v22[0]) << 16);
  }

  if (v11)
  {
    CFNumberGetValue(v11, kCFNumberIntType, v22);
    v14 |= v22[0] << 24;
  }

  if (v14)
  {
    if (!*(v6 + 160))
    {
      H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(v4 + 24), *(v6 + 156), 1u, 1u);
    }

    v15 = *(v4 + 232);
    if (v15)
    {
      v26 = 1;
      H16ISP::H16ISPServicesRemote::SetProperty(v15, &v25);
    }

    v16 = H16ISP::H16ISPDevice::SetIndividualTorchLEDLevels(*(v4 + 24), *(v6 + 156), v14);
    if (v16)
    {
      v17 = *(v4 + 232);
      v18 = 4294954516;
      if (!v17)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v18 = 0;
    goto LABEL_27;
  }

  v19 = H16ISP::H16ISPDevice::SetIndividualTorchLEDLevels(*(v4 + 24), *(v6 + 156), 0);
  v16 = v19;
  if (*(v6 + 160))
  {
    if (v19)
    {
LABEL_22:
      v18 = 4294954516;
      goto LABEL_27;
    }
  }

  else
  {
    H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(v4 + 24), *(v6 + 156), 0, 0);
    if (v16)
    {
      goto LABEL_22;
    }
  }

  v18 = 0;
  v17 = *(v4 + 232);
  if (v17)
  {
LABEL_26:
    v26 = 0;
    H16ISP::H16ISPServicesRemote::SetProperty(v17, &v25);
  }

LABEL_27:
  v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v20 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v20;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v22[0] = 67109376;
    v22[1] = v14;
    v23 = 1024;
    v24 = v16;
    _os_log_impl(&dword_2247DB000, v20, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting individual LED levels to %x. result=0x%08X\n\n", v22, 0xEu);
  }

  return v18;
}

uint64_t SetLPDPFilterEnable(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  v8 = CFEqual(a1, *MEMORY[0x277CBED28]) != 0;
  result = H16ISP::H16ISPDevice::SetCameraControl(*(a4 + 24), *(a2 + 156), 0, v8);
  if (result)
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      SetLPDPFilterEnable();
    }

    return 4294954514;
  }

  return result;
}

uint64_t SetHighSpeedOutputLevel(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
  result = H16ISP::H16ISPDevice::SetHighSpeedOutputLevel(*(a4 + 24), *(a2 + 156), valuePtr);
  if (result)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      SetHighSpeedOutputLevel();
    }

    return 4294954514;
  }

  return result;
}

uint64_t CopySupportedLinkFrequencies(uint64_t a1, __CFArray **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v9 = Mutable;
  v16 = 0;
  if (H16ISP::H16ISPDevice::GetNumberOfMipiFrequencies(*(a5 + 24), *(a3 + 156), &v16))
  {
    return 4294954514;
  }

  if (v16)
  {
    for (i = 0; i < v16; ++i)
    {
      valuePtr = 0;
      v14 = 0;
      if (H16ISP::H16ISPDevice::GetMIPIFrequency(*(a5 + 24), *(a3 + 156), i, &v14))
      {
        break;
      }

      valuePtr = v14;
      v11 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
      CFArrayAppendValue(v9, v11);
      CFRelease(v11);
    }
  }

  Count = CFArrayGetCount(v9);
  if (v16 != Count)
  {
    return 4294954514;
  }

  result = 0;
  *a2 = v9;
  return result;
}

uint64_t SetLinkFrequencyIndex(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  result = H16ISP::H16ISPDevice::SetMIPIFrequencyIndex(*(a4 + 24), *(a2 + 156), valuePtr);
  if (result)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      SetLinkFrequencyIndex();
    }

    return 4294954514;
  }

  return result;
}

uint64_t CopyLinkFrequencyIndex(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::GetCurrentMIPIFrequencyIndex(*(a5 + 24), *(a3 + 156), &valuePtr))
  {
    return 4294954514;
  }

  v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  result = 0;
  *a2 = v7;
  return result;
}

uint64_t SetTestPattern(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFStringGetTypeID())
  {
    return 4294954516;
  }

  v8 = CFEqual(a1, @"TestPatternNone") == 0;
  result = H16ISP::H16ISPDevice::TestPatternConfig(*(a4 + 24), *(a2 + 156), v8, a1);
  if (result)
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      SetTestPattern();
    }

    return 4294954514;
  }

  return result;
}

uint64_t CopySupportedTestPatterns(uint64_t a1, __CFArray **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v9 = Mutable;
  result = H16ISP::H16ISPDevice::GetSupportedTestPatterns(*(a5 + 24), *(a3 + 156), Mutable);
  if (!result)
  {
    *a2 = v9;
  }

  return result;
}

uint64_t SetAPSDistance(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0.0;
  CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
  v8 = vcvts_n_s32_f32(valuePtr, 8uLL);
  result = H16ISP::H16ISPDevice::SetAPSDistance(*(a4 + 24), *(a2 + 156), v8);
  if (result)
  {
    v10 = result;
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a2 + 156);
      *buf = 67109632;
      v15 = v12;
      v16 = 1024;
      v17 = v8;
      v18 = 1024;
      v19 = v10;
      _os_log_error_impl(&dword_2247DB000, v11, OS_LOG_TYPE_ERROR, "SetAPSDistance failed: channel=%u distance [in cm (Q24.8)]=%d ret=0x%08x\n\n", buf, 0x14u);
    }

    return 4294954514;
  }

  return result;
}

uint64_t SetAPSPosition(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0.0;
  CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
  result = H16ISP::H16ISPDevice::SetAPSPosition(*(a4 + 24), *(a2 + 156), vcvtd_n_s64_f64(valuePtr, 8uLL));
  if (result)
  {
    v9 = result;
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a2 + 156);
      *buf = 67109632;
      v14 = v11;
      v15 = 2048;
      v16 = valuePtr;
      v17 = 1024;
      v18 = v9;
      _os_log_error_impl(&dword_2247DB000, v10, OS_LOG_TYPE_ERROR, "SetAPSPosition failed: channel=%u, zposition [in um]=%f, ret=0x%08x\n\n", buf, 0x18u);
    }

    return 4294954514;
  }

  return result;
}

uint64_t CopyAPSPosition(const __CFAllocator *a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *v30 = 0;
  valuePtr = 0;
  *v28 = 0;
  *v29 = 0;
  *v27 = 0;
  v26 = 0;
  *v24 = 0;
  v25 = 0;
  if (H16ISP::H16ISPDevice::GetAPSPosition(*(a5 + 24), *(a3 + 156), &valuePtr + 1, &valuePtr, &v24[1], v24, &v30[1], v30, &v29[1], v29, &v28[1], v28, &v27[1], v27, &v26, &v25))
  {
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      CopyAPSPosition();
    }

    return 4294954514;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v10 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr + 4);
    CFDictionaryAddValue(Mutable, @"APS_zPosition_Private", v10);
    CFRelease(v10);
    v11 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"APS_zPosLin_Private", v11);
    CFRelease(v11);
    v12 = CFNumberCreate(a1, kCFNumberSInt16Type, &v24[1]);
    CFDictionaryAddValue(Mutable, @"APS_e_Private", v12);
    CFRelease(v12);
    v13 = CFNumberCreate(a1, kCFNumberSInt16Type, v24);
    CFDictionaryAddValue(Mutable, @"APS_w_Private", v13);
    CFRelease(v13);
    v14 = CFNumberCreate(a1, kCFNumberIntType, &v30[1]);
    CFDictionaryAddValue(Mutable, @"APS_afRes_Private", v14);
    CFRelease(v14);
    v15 = CFNumberCreate(a1, kCFNumberIntType, v30);
    CFDictionaryAddValue(Mutable, @"APS_coilTemp_Private", v15);
    CFRelease(v15);
    v16 = CFNumberCreate(a1, kCFNumberIntType, &v29[1]);
    CFDictionaryAddValue(Mutable, @"APS_zOffset_Private", v16);
    CFRelease(v16);
    v17 = CFNumberCreate(a1, kCFNumberIntType, v29);
    CFDictionaryAddValue(Mutable, @"APS_sensorTemp_Private", v17);
    CFRelease(v17);
    v18 = CFNumberCreate(a1, kCFNumberIntType, &v28[1]);
    CFDictionaryAddValue(Mutable, @"APS_oisX_Private", v18);
    CFRelease(v18);
    v19 = CFNumberCreate(a1, kCFNumberIntType, v28);
    CFDictionaryAddValue(Mutable, @"APS_oisY_Private", v19);
    CFRelease(v19);
    v20 = CFNumberCreate(a1, kCFNumberIntType, &v27[1]);
    CFDictionaryAddValue(Mutable, @"APS_zPosGCOL_Private", v20);
    CFRelease(v20);
    v21 = CFNumberCreate(a1, kCFNumberIntType, v27);
    CFDictionaryAddValue(Mutable, @"APS_zTarget_Private", v21);
    CFRelease(v21);
    v22 = CFNumberCreate(a1, kCFNumberIntType, &v26);
    CFDictionaryAddValue(Mutable, @"APS_oisZEst_Private", v22);
    CFRelease(v22);
    v23 = CFNumberCreate(a1, kCFNumberIntType, &v25);
    CFDictionaryAddValue(Mutable, @"APS_oisZGCOL_Private", v23);
    CFRelease(v23);
    result = 0;
    *a2 = Mutable;
  }

  return result;
}

uint64_t SetAPSSearchRange(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, @"MacroLimit");
  CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr + 4);
  v9 = CFDictionaryGetValue(a1, @"InfLimit");
  CFNumberGetValue(v9, kCFNumberFloatType, &valuePtr);
  result = H16ISP::H16ISPDevice::SetAPSSearchRange(*(a4 + 24), *(a2 + 156), vcvtd_n_s64_f64(*(&valuePtr + 1), 8uLL), vcvtd_n_s64_f64(*&valuePtr, 8uLL));
  if (result)
  {
    v11 = result;
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a2 + 156);
      *buf = 67109888;
      v16 = v13;
      v17 = 2048;
      v18 = *(&valuePtr + 1);
      v19 = 2048;
      v20 = *&valuePtr;
      v21 = 1024;
      v22 = v11;
      _os_log_error_impl(&dword_2247DB000, v12, OS_LOG_TYPE_ERROR, "SetAPSSearchRange failed: channel=%u, macroLimit [in um]=%f, infLimit [in um]=%f, ret=0x%08x\n\n", buf, 0x22u);
    }

    return 4294954514;
  }

  return result;
}

uint64_t SetDynamicVoltageLevel(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  if (CFDictionaryContainsKey(a1, @"PVDD1"))
  {
    valuePtr = 0.0;
    Value = CFDictionaryGetValue(a1, @"PVDD1");
    CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
    if (H16ISP::H16ISPDevice::SetDynamicVoltageLevel(*(a4 + 24), *(a2 + 156), 0, valuePtr))
    {
      return 4294954514;
    }

    v9 = 0;
  }

  else
  {
    v9 = 4294954516;
  }

  if (CFDictionaryContainsKey(a1, @"PVDD2"))
  {
    v12 = 0.0;
    v11 = CFDictionaryGetValue(a1, @"PVDD2");
    CFNumberGetValue(v11, kCFNumberFloatType, &v12);
    if (H16ISP::H16ISPDevice::SetDynamicVoltageLevel(*(a4 + 24), *(a2 + 156), 1, v12))
    {
      return 4294954514;
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t SetLPDPEqualization(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  v18 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v14 = 0;
  value = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  if (!CFDictionaryGetValueIfPresent(a1, @"LPDPEqualizationMode", &value))
  {
    return 4294954516;
  }

  CFNumberGetValue(value, kCFNumberIntType, &valuePtr);
  if (!CFDictionaryGetValueIfPresent(a1, @"LPDPEqualizationCTLEc", &value))
  {
    return 4294954516;
  }

  CFNumberGetValue(value, kCFNumberIntType, &v18);
  if (!CFDictionaryGetValueIfPresent(a1, @"LPDPEqualizationCTLEr", &value))
  {
    return 4294954516;
  }

  CFNumberGetValue(value, kCFNumberIntType, &v17 + 4);
  if (!CFDictionaryGetValueIfPresent(a1, @"LPDPEqualizationDFEh1", &value))
  {
    return 4294954516;
  }

  CFNumberGetValue(value, kCFNumberIntType, &v17);
  if (!CFDictionaryGetValueIfPresent(a1, @"LPDPEqualizationDFEh2", &value))
  {
    return 4294954516;
  }

  CFNumberGetValue(value, kCFNumberIntType, &v16 + 4);
  if (!CFDictionaryGetValueIfPresent(a1, @"LPDPEqualizationDFEh3", &value))
  {
    return 4294954516;
  }

  CFNumberGetValue(value, kCFNumberIntType, &v16);
  if (!CFDictionaryGetValueIfPresent(a1, @"LPDPEqualizationDFEh4", &value))
  {
    return 4294954516;
  }

  CFNumberGetValue(value, kCFNumberIntType, &v15 + 4);
  if (!CFDictionaryGetValueIfPresent(a1, @"LPDPEqualizationDFEh5", &value))
  {
    return 4294954516;
  }

  CFNumberGetValue(value, kCFNumberIntType, &v15);
  if (!CFDictionaryGetValueIfPresent(a1, @"LPDPEqualizationVMMode", &value))
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      SetLPDPEqualization();
    }

    printf("No Vmode found");
    return 4294954516;
  }

  CFNumberGetValue(value, kCFNumberIntType, &v14);
  result = H16ISP::H16ISPDevice::SetLPDPEqualization(*(a4 + 24), *(a2 + 156), valuePtr, v18, SHIDWORD(v17), v17, SHIDWORD(v16), v16, HIDWORD(v15), v15, v14);
  if (result)
  {
    v9 = result;
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a2 + 156);
      *buf = 136317954;
      v21 = "SetLPDPEqualization";
      v22 = 1024;
      v23 = v12;
      v24 = 1024;
      v25 = valuePtr;
      v26 = 1024;
      v27 = v18;
      v28 = 1024;
      v29 = HIDWORD(v17);
      v30 = 1024;
      v31 = v17;
      v32 = 1024;
      v33 = HIDWORD(v16);
      v34 = 1024;
      v35 = v16;
      v36 = 1024;
      v37 = HIDWORD(v15);
      v38 = 1024;
      v39 = v15;
      v40 = 1024;
      v41 = v14;
      v42 = 1024;
      v43 = v9;
      _os_log_error_impl(&dword_2247DB000, v10, OS_LOG_TYPE_ERROR, "%s - SetLPDPEqualization failed: channel=%u, mode=%d, CTLE_c=%d, CTLE_r=%d, DFE_h1=%d, DFE_h2=%d, DFE_h3=%d, DFE_h4=%d, DFE_h5=%d, VMmode=%d, ret=0x%08x\n", buf, 0x4Eu);
    }

    return 4294954514;
  }

  return result;
}

uint64_t CopyLPDPRC(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  bzero(v15, 0x10uLL);
  v16 = 368;
  v17 = *(a3 + 156);
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v15, 0x10u, 0, 0xFFFFFFFF))
  {
    v10 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v11 = CFNumberCreate(v10, kCFNumberSInt8Type, &v18);
      if (v11)
      {
        v12 = v11;
        CFDictionarySetValue(Mutable, @"LPDPRCParamR", v11);
        CFRelease(v12);
        v13 = CFNumberCreate(v10, kCFNumberSInt8Type, &v18 + 1);
        if (v13)
        {
          v14 = v13;
          CFDictionarySetValue(Mutable, @"LPDPRCParamC", v13);
          CFRelease(v14);
          result = 4294954516;
          goto LABEL_9;
        }
      }

      Mutable = 0;
    }

    result = 4294954510;
    goto LABEL_9;
  }

  Mutable = 0;
  result = 4294954513;
LABEL_9:
  *a2 = Mutable;
  return result;
}

uint64_t CopySensorNVM(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a3 + 160))
  {
    operator new[]();
  }

  *a2 = 0;
  return 4294954612;
}

uint64_t SetPCECalibration(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v17 = *MEMORY[0x277D85DE8];
  if (!v2)
  {
    return 4294954516;
  }

  v4 = v3;
  v5 = v2;
  v6 = CFGetTypeID(v2);
  if (v6 != CFDataGetTypeID())
  {
    return 4294954516;
  }

  BytePtr = CFDataGetBytePtr(v5);
  if (!BytePtr)
  {
    return 4294954516;
  }

  v8 = BytePtr;
  v9 = *(v4 + 24);
  SensorChannel = H16ISP::H16ISPDevice::getSensorChannel(v9, 1718186595, 1852793709);
  if (SensorChannel == -1)
  {
    return 4294954514;
  }

  v11 = SensorChannel;
  bzero(v13, 0x340CuLL);
  v14 = 24581;
  v15 = v11;
  memcpy(v16, v8, sizeof(v16));
  return H16ISP::H16ISPDevice::ISP_SendCommand(v9, v13, 0x340Cu, 0, 0xFFFFFFFF);
}

uint64_t CopyPCECalibration(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v10 = *MEMORY[0x277D85DE8];
  if (!getPCECalib(*(v6 + 24), bytes))
  {
    return 4294954516;
  }

  v7 = CFDataCreate(v5, bytes, 13312);
  result = 0;
  *v4 = v7;
  return result;
}

uint64_t CopyPCEShiftParams(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v11 = *MEMORY[0x277D85DE8];
  if (!getPCECalib(*(v6 + 24), v10))
  {
    return 4294954516;
  }

  v7 = CFDataCreate(v5, bytes, 28);
  result = 0;
  *v4 = v7;
  return result;
}

uint64_t CopyPCEDepthConfig(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v11 = *MEMORY[0x277D85DE8];
  if (!getPCECalib(*(v6 + 24), v10))
  {
    return 4294954516;
  }

  v7 = CFDataCreate(v5, v9, 40);
  result = 0;
  *v4 = v7;
  return result;
}

uint64_t SetRawImageProcessStillFlowEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  bzero(v10, 0x10uLL);
  v11 = 338;
  v12 = *(a2 + 156);
  v13 = CFEqual(a1, *MEMORY[0x277CBED28]);
  result = H16ISP::H16ISPDevice::ISP_SendCommand(*(a4 + 24), v10, 0x10u, 0, 0xFFFFFFFF);
  if (result)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      SetRawImageProcessStillFlowEnabled();
    }

    return 4294954514;
  }

  return result;
}

uint64_t SetProximityMonitoringEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  if (CFBooleanGetValue(a1))
  {
    v8 = 0;
  }

  else
  {
    v8 = 196608;
  }

  v9 = *(a4 + 24);
  v10 = *(a2 + 156);

  return H16ISP::H16ISPDevice::WritePropertyValue(v9, v10, 1442, v8, 0xFFFFFFFF);
}

uint64_t SetPCERFCLockEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  v8 = CFBooleanGetValue(a1) != 0;
  v9 = *(a4 + 24);
  v10 = *(a2 + 156);

  return H16ISP::H16ISPDevice::WritePropertyValue(v9, v10, 16396, v8, 0xFFFFFFFF);
}

uint64_t SetPCERegsUpdateTweak(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  return H16ISP::H16ISPDevice::WritePropertyValue(*(a4 + 24), *(a2 + 156), 16398, valuePtr, 0xFFFFFFFF);
}

uint64_t SetUseAuxRawPool(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 160))
  {
    return 4294954612;
  }

  v9 = CFEqual(a1, *MEMORY[0x277CBED28]) != 0;
  *(a2 + 4606) = v9;
  v10 = *(a4 + 24);
  v11 = *(a2 + 156);

  return H16ISP::H16ISPDevice::EnableRawPDPCorrection(v10, v11, v9);
}

uint64_t CopyUseAuxRawPool(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 4606))
  {
    v4 = MEMORY[0x277CBED28];
  }

  else
  {
    v4 = MEMORY[0x277CBED10];
  }

  v5 = *v4;
  CFRetain(*v4);
  *a2 = v5;
  return 0;
}

uint64_t CopyMamaBearCapacitance(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  bzero(v11, 0x4CuLL);
  v13 = *(a3 + 156);
  v12 = 1570;
  v14 = 1;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v11, 0x4Cu, 0, 0xFFFFFFFF))
  {
    return 4294954516;
  }

  v10 = CFNumberCreate(a1, kCFNumberIntType, &v15);
  result = 0;
  *a2 = v10;
  return result;
}

uint64_t CopyMamaBearState(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  bzero(v11, 0x4CuLL);
  v13 = *(a3 + 156);
  v12 = 1570;
  v14 = 1;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v11, 0x4Cu, 0, 0xFFFFFFFF))
  {
    return 4294954516;
  }

  v10 = CFNumberCreate(a1, kCFNumberIntType, &v15);
  result = 0;
  *a2 = v10;
  return result;
}

uint64_t SetReplayEnabled(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 160))
  {
    return 4294954612;
  }

  v6 = a2 + 4096;
  v7 = CFEqual(a1, *MEMORY[0x277CBED28]);
  result = 0;
  *(v6 + 511) = v7 != 0;
  *(v6 + 512) = 0;
  return result;
}

uint64_t CopyReplayEnabled(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 4607))
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    v3 = MEMORY[0x277CBED10];
  }

  *a2 = *v3;
  return 0;
}

uint64_t SetReplayFrame(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 4607) != 1)
  {
    return 4294954514;
  }

  v8 = *(a4 + 24);
  if (*(v8 + 4304))
  {
    v9 = *(a2 + 48);
    v10 = *(a2 + 192);
    if (v9 < v10)
    {
      v10 = 0;
    }

    if (H16ISP::H16ISPDevice::GetCameraConfig(v8, *(a2 + 156), *(*(a2 + 184) + 120 * (v9 - v10) + 16), v16, v18))
    {
      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v11 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        SetReplayFrame();
      }

      return 3758097122;
    }

    if (CFDictionaryGetValue(a1, @"ReplayMetadataFilePath") && CFDictionaryGetValue(a1, @"ReplayRawFilePath"))
    {
      Value = CFDictionaryGetValue(a1, @"ReplaySIFRRawFilePath");
      if (v17 && Value)
      {
        CFEqual(Value, *MEMORY[0x277CBEEE8]);
      }

      CFDictionaryGetValue(a1, @"ReplayRepeatCount");
      operator new[]();
    }

    return 4294954516;
  }

  v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v13 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
  }

  v12 = 3758097090;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    SetReplayFrame();
  }

  return v12;
}

uint64_t SetProjectorErrorProtectionEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  v8 = CFEqual(a1, *MEMORY[0x277CBED28]);
  v9 = 4294954514;
  if (!H16ISP::H16ISPDevice::ReadPropertyValue(*(a4 + 24), *(a2 + 156), 1442, &v11, 0xFFFFFFFF))
  {
    v11 = v11 & 0xFFFFFBFF | ((v8 != 0) << 10);
    if (H16ISP::H16ISPDevice::WritePropertyValue(*(a4 + 24), *(a2 + 156), 1442, v11, 0xFFFFFFFF))
    {
      return 4294954514;
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t CopyProjectorErrorProtectionEnabled(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *MEMORY[0x277CBED10];
  v8 = 0;
  result = H16ISP::H16ISPDevice::ReadPropertyValue(*(a5 + 24), *(a3 + 156), 1442, &v8, 0xFFFFFFFF);
  if (result)
  {
    result = 4294954514;
  }

  else if ((v8 & 0x400) != 0)
  {
    v6 = *MEMORY[0x277CBED28];
  }

  *a2 = v6;
  return result;
}

uint64_t SetManualControl(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v96 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 4607) != 1)
  {
    return 4294954514;
  }

  Value = CFDictionaryGetValue(a1, @"ManualControlEnable");
  if (!Value)
  {
    return 4294954516;
  }

  v9 = *MEMORY[0x277CBED28];
  v10 = 2 * (CFEqual(Value, *MEMORY[0x277CBED28]) != 0);
  if (CFDictionaryContainsKey(a1, @"ManualAWBGains"))
  {
    v11 = CFDictionaryGetValue(a1, @"ManualAWBGains");
    if (v11)
    {
      v12 = v11;
      v13 = CFGetTypeID(v11);
      if (v13 == CFDictionaryGetTypeID())
      {
        v14 = CFDictionaryGetValue(v12, *MEMORY[0x277CF67E0]);
        CFNumberGetValue(v14, kCFNumberSInt16Type, &valuePtr);
        v15 = CFDictionaryGetValue(v12, *MEMORY[0x277CF67D8]);
        CFNumberGetValue(v15, kCFNumberSInt16Type, &valuePtr + 2);
        v16 = CFDictionaryGetValue(v12, *MEMORY[0x277CF67D0]);
        CFNumberGetValue(v16, kCFNumberSInt16Type, &v89);
        if (H16ISP::H16ISPDevice::ConfigureManualControl(*(a4 + 24), *(a2 + 156), 0, &valuePtr, 6u))
        {
          return 4294954514;
        }
      }
    }

    if (H16ISP::H16ISPDevice::EnableManualControl(*(a4 + 24), *(a2 + 156), 0, v10))
    {
      return 4294954514;
    }
  }

  if (CFDictionaryContainsKey(a1, @"FlashAuxManualAWBGains"))
  {
    v17 = CFDictionaryGetValue(a1, @"FlashAuxManualAWBGains");
    if (v17)
    {
      v18 = v17;
      v19 = CFGetTypeID(v17);
      if (v19 == CFDictionaryGetTypeID())
      {
        v20 = CFDictionaryGetValue(v18, *MEMORY[0x277CF67E0]);
        CFNumberGetValue(v20, kCFNumberSInt16Type, &valuePtr);
        v21 = CFDictionaryGetValue(v18, *MEMORY[0x277CF67D8]);
        CFNumberGetValue(v21, kCFNumberSInt16Type, &valuePtr + 2);
        v22 = CFDictionaryGetValue(v18, *MEMORY[0x277CF67D0]);
        CFNumberGetValue(v22, kCFNumberSInt16Type, &v89);
        if (H16ISP::H16ISPDevice::ConfigureManualControl(*(a4 + 24), *(a2 + 156), 7u, &valuePtr, 6u))
        {
          return 4294954514;
        }
      }
    }

    if (H16ISP::H16ISPDevice::EnableManualControl(*(a4 + 24), *(a2 + 156), 7, v10))
    {
      return 4294954514;
    }
  }

  if (CFDictionaryContainsKey(a1, @"ManualCCM"))
  {
    v23 = CFDictionaryGetValue(a1, @"ManualCCM");
    if (v23)
    {
      v24 = v23;
      v25 = CFGetTypeID(v23);
      if (v25 == CFArrayGetTypeID())
      {
        if (CFArrayGetCount(v24) != 9)
        {
          return 4294954516;
        }

        if (CFArrayGetCount(v24) >= 1)
        {
          v26 = 0;
          p_valuePtr = &valuePtr;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v24, v26);
            CFNumberGetValue(ValueAtIndex, kCFNumberSInt16Type, p_valuePtr);
            ++v26;
            p_valuePtr = (p_valuePtr + 2);
          }

          while (v26 < CFArrayGetCount(v24));
        }

        if (H16ISP::H16ISPDevice::ConfigureManualControl(*(a4 + 24), *(a2 + 156), 1u, &valuePtr, 0x12u))
        {
          return 4294954514;
        }
      }
    }

    if (H16ISP::H16ISPDevice::EnableManualControl(*(a4 + 24), *(a2 + 156), 1, v10))
    {
      return 4294954514;
    }
  }

  if (CFDictionaryContainsKey(a1, @"ManualGTC"))
  {
    v29 = CFDictionaryGetValue(a1, @"ManualGTC");
    if (v29)
    {
      v30 = v29;
      v31 = CFGetTypeID(v29);
      if (v31 == CFDataGetTypeID())
      {
        BytePtr = CFDataGetBytePtr(v30);
        if (*BytePtr != 257)
        {
          return 4294954516;
        }

        if (H16ISP::H16ISPDevice::ConfigureManualControl(*(a4 + 24), *(a2 + 156), 2u, BytePtr + 2, 0x202u))
        {
          return 4294954514;
        }
      }
    }

    if (H16ISP::H16ISPDevice::EnableManualControl(*(a4 + 24), *(a2 + 156), 2, v10))
    {
      return 4294954514;
    }
  }

  if (CFDictionaryContainsKey(a1, @"ManualLTM"))
  {
    v33 = CFDictionaryGetValue(a1, @"ManualLTM");
    if (v33)
    {
      v34 = v33;
      v35 = CFGetTypeID(v33);
      if (v35 == CFDictionaryGetTypeID())
      {
        v36 = CFDictionaryGetValue(v34, @"ManualLTMLUTS");
        v37 = CFDataGetLength(v36) + 4;
        v38 = malloc_type_malloc(v37, 0x10000407B5B4437uLL);
        if (!v38)
        {
          return 4294954510;
        }

        v39 = v38;
        v97.length = CFDataGetLength(v36);
        v97.location = 0;
        CFDataGetBytes(v36, v97, v39 + 4);
        v40 = CFDictionaryGetValue(v34, @"ManualLTMEnableSpatialCCM");
        *v39 = CFEqual(v40, v9) != 0;
        v41 = CFDictionaryGetValue(v34, @"ManualLTMBytesPerRow");
        CFNumberGetValue(v41, kCFNumberSInt16Type, v39 + 2);
        v42 = H16ISP::H16ISPDevice::ConfigureManualControl(*(a4 + 24), *(a2 + 156), 3u, v39, v37);
        free(v39);
        if (v42)
        {
          return 4294954514;
        }
      }
    }

    if (H16ISP::H16ISPDevice::EnableManualControl(*(a4 + 24), *(a2 + 156), 3, v10))
    {
      return 4294954514;
    }
  }

  if (CFDictionaryContainsKey(a1, @"ManualLTC"))
  {
    v43 = CFDictionaryGetValue(a1, @"ManualLTC");
    if (v43 && (v44 = v43, v45 = CFGetTypeID(v43), v45 == CFDictionaryGetTypeID()))
    {
      v87 = 0;
      v46 = CFDictionaryGetValue(v44, @"ManualLTCLUTS");
      Length = CFDataGetLength(v46);
      v48 = CFDictionaryGetValue(v44, @"ManualLTCBytesPerRow");
      CFNumberGetValue(v48, kCFNumberSInt16Type, &v87);
      if (CFDictionaryContainsKey(v44, @"ManualLTCLUTsCountX") && CFDictionaryContainsKey(v44, @"ManualLTCLUTsCountY"))
      {
        v49 = Length + 6;
        v50 = malloc_type_malloc((Length + 6), 0x1000040274DC3F3uLL);
        if (!v50)
        {
          return 4294954510;
        }

        v51 = v50;
        v98.length = CFDataGetLength(v46);
        v98.location = 0;
        CFDataGetBytes(v46, v98, v51 + 6);
        *(v51 + 2) = v87;
        v52 = CFDictionaryGetValue(v44, @"ManualLTCLUTsCountX");
        CFNumberGetValue(v52, kCFNumberSInt16Type, v51);
        v53 = CFDictionaryGetValue(v44, @"ManualLTCLUTsCountY");
        CFNumberGetValue(v53, kCFNumberSInt16Type, v51 + 2);
        v54 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v54 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v54;
        }

        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = *(v51 + 2);
          v56 = *v51;
          v57 = *(v51 + 1);
          valuePtr = 136315906;
          v89 = "SetManualControl";
          v90 = 1024;
          v91 = v55;
          v92 = 1024;
          v93 = v56;
          v94 = 1024;
          v95 = v57;
          _os_log_impl(&dword_2247DB000, v54, OS_LOG_TYPE_INFO, "%s - LTM LTC stride=%hu countX=%hu countY=%hu\n", &valuePtr, 0x1Eu);
        }

        v58 = 11;
      }

      else
      {
        v49 = Length + 2;
        v83 = malloc_type_malloc((Length + 2), 0x1000040BDFB0063uLL);
        if (!v83)
        {
          return 4294954510;
        }

        v51 = v83;
        v100.length = CFDataGetLength(v46);
        v100.location = 0;
        CFDataGetBytes(v46, v100, v51 + 2);
        *v51 = v87;
        v84 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v84 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v84;
        }

        if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
        {
          v85 = *v51;
          valuePtr = 136315394;
          v89 = "SetManualControl";
          v90 = 1024;
          v91 = v85;
          _os_log_impl(&dword_2247DB000, v84, OS_LOG_TYPE_INFO, "%s - LTM LTC stride=%hu\n", &valuePtr, 0x12u);
        }

        v58 = 9;
      }

      v86 = H16ISP::H16ISPDevice::ConfigureManualControl(*(a4 + 24), *(a2 + 156), v58, v51, v49);
      free(v51);
      if (v86)
      {
        return 4294954514;
      }
    }

    else
    {
      v58 = 9;
    }

    if (H16ISP::H16ISPDevice::EnableManualControl(*(a4 + 24), *(a2 + 156), v58, v10))
    {
      return 4294954514;
    }
  }

  if (!CFDictionaryContainsKey(a1, @"ManualSCCM"))
  {
    goto LABEL_56;
  }

  v59 = CFDictionaryGetValue(a1, @"ManualSCCM");
  if (!v59)
  {
    goto LABEL_56;
  }

  v60 = v59;
  v61 = CFGetTypeID(v59);
  if (v61 != CFDictionaryGetTypeID())
  {
    goto LABEL_56;
  }

  v62 = CFDictionaryGetValue(v60, @"ManualSCCMEnable");
  if (CFEqual(v62, v9))
  {
    v63 = CFDictionaryGetValue(v60, @"ManualSCCMLUTS");
    v64 = CFDataGetLength(v63) + 4;
    v65 = malloc_type_malloc(v64, 0x10000407B5B4437uLL);
    if (v65)
    {
      v66 = v65;
      v99.length = CFDataGetLength(v63);
      v99.location = 0;
      CFDataGetBytes(v63, v99, v66 + 4);
      *v66 = CFEqual(v62, v9) != 0;
      v67 = CFDictionaryGetValue(v60, @"ManualSCCMBytesPerRow");
      CFNumberGetValue(v67, kCFNumberSInt16Type, v66 + 2);
      v68 = H16ISP::H16ISPDevice::ConfigureManualControl(*(a4 + 24), *(a2 + 156), 0xAu, v66, v64);
      free(v66);
      if (v68)
      {
        return 4294954514;
      }

      goto LABEL_55;
    }

    return 4294954510;
  }

LABEL_55:
  if (H16ISP::H16ISPDevice::EnableManualControl(*(a4 + 24), *(a2 + 156), 10, v10))
  {
    return 4294954514;
  }

LABEL_56:
  if (!CFDictionaryContainsKey(a1, @"ManualLTMGTC"))
  {
    goto LABEL_62;
  }

  v69 = CFDictionaryGetValue(a1, @"ManualLTMGTC");
  if (v69)
  {
    v70 = v69;
    v71 = CFGetTypeID(v69);
    if (v71 == CFDataGetTypeID())
    {
      v72 = CFDataGetBytePtr(v70);
      if (*v72 == 257)
      {
        if (H16ISP::H16ISPDevice::ConfigureManualControl(*(a4 + 24), *(a2 + 156), 4u, v72 + 2, 0x202u))
        {
          return 4294954514;
        }

        goto LABEL_61;
      }

      return 4294954516;
    }
  }

LABEL_61:
  if (!H16ISP::H16ISPDevice::EnableManualControl(*(a4 + 24), *(a2 + 156), 4, v10))
  {
LABEL_62:
    if (!CFDictionaryContainsKey(a1, @"ManualLTMIIR") || ((v73 = CFDictionaryGetValue(a1, @"ManualLTMIIR")) == 0 || (v74 = v73, v75 = CFGetTypeID(v73), v75 != CFNumberGetTypeID()) || (CFNumberGetValue(v74, kCFNumberSInt16Type, &valuePtr), !H16ISP::H16ISPDevice::ConfigureManualControl(*(a4 + 24), *(a2 + 156), 5u, &valuePtr, 2u))) && !H16ISP::H16ISPDevice::EnableManualControl(*(a4 + 24), *(a2 + 156), 5, v10))
    {
      if (!CFDictionaryContainsKey(a1, @"LTMAEStableWaitTime") || ((v76 = CFDictionaryGetValue(a1, @"LTMAEStableWaitTime")) == 0 || (v77 = v76, v78 = CFGetTypeID(v76), v78 != CFNumberGetTypeID()) || (CFNumberGetValue(v77, kCFNumberSInt32Type, &valuePtr), !H16ISP::H16ISPDevice::ConfigureManualControl(*(a4 + 24), *(a2 + 156), 6u, &valuePtr, 4u))) && !H16ISP::H16ISPDevice::EnableManualControl(*(a4 + 24), *(a2 + 156), 6, v10))
      {
        if (!CFDictionaryContainsKey(a1, @"SIFREnabled"))
        {
          return 0;
        }

        v79 = CFDictionaryGetValue(a1, @"SIFREnabled");
        if (!v79 || (v80 = v79, v81 = CFGetTypeID(v79), v81 != CFBooleanGetTypeID()) || (LOBYTE(valuePtr) = CFEqual(v80, v9) != 0, !H16ISP::H16ISPDevice::ConfigureManualControl(*(a4 + 24), *(a2 + 156), 8u, &valuePtr, 1u)))
        {
          if (!H16ISP::H16ISPDevice::EnableManualControl(*(a4 + 24), *(a2 + 156), 8, v10))
          {
            return 0;
          }
        }
      }
    }
  }

  return 4294954514;
}

uint64_t SetPackedRawAttachmentsEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 160))
  {
    return 4294954612;
  }

  *(a2 + 569) = CFEqual(a1, *MEMORY[0x277CBED28]) != 0;
  if (ConfigSensorFormat(a4, a2))
  {
    return 4294954514;
  }

  else
  {
    return 0;
  }
}

uint64_t CopyPackedRawAttachmentsEnabled(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = MEMORY[0x277CBED28];
  if (!*(a3 + 569))
  {
    v3 = MEMORY[0x277CBED10];
  }

  *a2 = *v3;
  return 0;
}

uint64_t SetForceVideoRawBitDepth(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 160))
  {
    return 4294954612;
  }

  valuePtr = -1;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  *(a2 + 572) = valuePtr;
  if (ConfigSensorFormat(a4, a2))
  {
    return 4294954514;
  }

  else
  {
    return 0;
  }
}

uint64_t SetImageCaptureWaitForAEEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  v8 = 4294954516;
  if (v7 == CFBooleanGetTypeID())
  {
    v9 = CFEqual(a1, *MEMORY[0x277CBED28]) != 0;
    if (H16ISP::H16ISPDevice::WritePropertyValue(*(a4 + 24), *(a2 + 156), 1343, v9, 0xFFFFFFFF))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t SetVisionDataKeypointDetectionThreshold(const void *a1, uint64_t a2)
{
  v8 = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  v5 = *(a2 + 4720);
  if (!v5)
  {
    return 4294954516;
  }

  valuePtr = 0.0;
  H16ISP::H16ISPFilterGraphManager::GetNode(v5, 9, &v8);
  if (!v8)
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
  H16ISP::H16ISPGraphVIOCameraControlNode::UpdateKeypointDetectionThreshold(v8, valuePtr);
  return 0;
}

uint64_t SetTriggerVisionDataBurst(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = *(a2 + 4720);
  if (!v2)
  {
    return 4294954516;
  }

  H16ISP::H16ISPFilterGraphManager::GetNode(v2, 9, &v4);
  if (!v4)
  {
    return 4294954516;
  }

  H16ISP::H16ISPGraphVIOCameraControlNode::TriggerBurstMode(v4);
  return 0;
}

uint64_t SetMultiplePearlCalibration(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  v5 = CFEqual(a1, *MEMORY[0x277CBED28]);
  result = 0;
  *(a2 + 4529) = v5 != 0;
  return result;
}

uint64_t CopyPearlCalibrationDebugInfo(const __CFAllocator *a1, CFDictionaryRef *a2, uint64_t a3)
{
  v4 = *(a3 + 4720);
  if (v4)
  {
    v11 = 0;
    H16ISP::H16ISPFilterGraphManager::GetNode(v4, 7, &v11);
    if (v11)
    {
      if (*(a3 + 4552) == 1)
      {
        DebugInfo = H16ISP::H16ISPPearlCalibrationNode_Remote::getDebugInfo(v11);
        goto LABEL_8;
      }

      v8 = *(a3 + 4536);
      if (v8)
      {
        if (*(a3 + 4528) != 1)
        {
          return 0;
        }

        DebugInfo = RgbIrCalibration::GetDebugInfo(v8);
LABEL_8:
        if (DebugInfo)
        {
          Copy = CFDictionaryCreateCopy(a1, DebugInfo);
          result = 0;
          *a2 = Copy;
          return result;
        }

        return 0;
      }
    }
  }

  return 4294954516;
}

uint64_t SetProjectorOverheatLimit(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  if (!CFNumberGetValue(a1, kCFNumberIntType, &valuePtr))
  {
    return 4294954516;
  }

  H16ISP::H16ISPDevice::SetProjectorOverheatLimit(*(a4 + 24), *(a2 + 156), valuePtr);
  return 0;
}

uint64_t CopyProjectorOverheatLimit(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::GetProjectorOverheatLimit(*(a5 + 24), *(a3 + 156), &valuePtr))
  {
    return 4294954516;
  }

  v8 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  result = 0;
  *a2 = v8;
  return result;
}

uint64_t SetToFCapturingPresetIndex(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1785950322);
  result = 4294954516;
  if (a1 && isSensorType)
  {
    v9 = CFGetTypeID(a1);
    if (v9 != CFNumberGetTypeID())
    {
      return 4294954516;
    }

    valuePtr = 0;
    CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
    v11 = H16ISP::JasperConfigManager::configureFrameMode(valuePtr);
    result = 0;
    if (*(a2 + 160) && v11)
    {
      if (!H16ISP::JasperConfigManager::applyFrameMode(*(a4 + 24), *(a2 + 156), *(a2 + 4576), *(a4 + 232), v10))
      {
        EnableIRProjector(1, a2, a4);
        return 0;
      }

      EnableIRProjector(0, a2, a4);
      FigStreamRef = GetFigStreamRef(a2, a4);
      H16ISPPostNotification(@"BadJasperCalibrationNotification", FigStreamRef, 0);
      return 4294954516;
    }
  }

  return result;
}

uint64_t CopyToFCapturingPresetIndex(H16ISP::JasperConfigManager *a1, CFNumberRef *a2)
{
  valuePtr = H16ISP::JasperConfigManager::getFrameMode(a1);
  *a2 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  return 0;
}

uint64_t SetJasperPreset(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1785950322);
  result = 4294954516;
  if (!a1 || !isSensorType)
  {
    return result;
  }

  v9 = CFGetTypeID(a1);
  if (v9 != CFStringGetTypeID())
  {
    return 4294954516;
  }

  if (!CFEqual(a1, @"JasperPreset_Normal"))
  {
    if (CFEqual(a1, @"JasperPreset_Hybrid"))
    {
      v10 = 44;
      goto LABEL_12;
    }

    if (CFEqual(a1, @"JasperPreset_AutoFocusMacroNormal"))
    {
      v10 = 104;
      goto LABEL_12;
    }

    if (CFEqual(a1, @"JasperPreset_MacroShortNormalHybrid"))
    {
      v10 = 108;
      goto LABEL_12;
    }

    return 4294954516;
  }

  v10 = 4;
LABEL_12:
  v11 = H16ISP::JasperConfigManager::configureFrameMode(v10);
  if (*(a2 + 160))
  {
    if (v11)
    {
      if (H16ISP::JasperConfigManager::applyFrameMode(*(a4 + 24), *(a2 + 156), *(a2 + 4576), *(a4 + 232), v12))
      {
        EnableIRProjector(0, a2, a4);
        FigStreamRef = GetFigStreamRef(a2, a4);
        H16ISPPostNotification(@"BadJasperCalibrationNotification", FigStreamRef, 0);
        return 4294954516;
      }

      EnableIRProjector(1, a2, a4);
    }

    v15 = 0;
    v14 = *(a2 + 4720);
    if (v14)
    {
      H16ISP::H16ISPFilterGraphManager::GetNode(v14, 11, &v15);
      if (v15)
      {
        H16ISP::H16ISPJasperDepthNode::setJasperMode(v15);
      }
    }
  }

  return 0;
}

uint64_t CopyJasperPreset(H16ISP::JasperConfigManager *a1, CFStringRef *a2)
{
  v4 = 4294954516;
  FrameMode = H16ISP::JasperConfigManager::getFrameMode(a1);
  if (FrameMode > 103)
  {
    if (FrameMode == 104)
    {
      v6 = @"JasperPreset_AutoFocusMacroNormal";
      goto LABEL_10;
    }

    if (FrameMode == 108)
    {
      v6 = @"JasperPreset_MacroShortNormalHybrid";
      goto LABEL_10;
    }
  }

  else
  {
    if (FrameMode == 4)
    {
      v6 = @"JasperPreset_Normal";
      goto LABEL_10;
    }

    if (FrameMode == 44)
    {
      v6 = @"JasperPreset_Hybrid";
LABEL_10:
      v4 = 0;
      *a2 = CFStringCreateCopy(a1, v6);
    }
  }

  return v4;
}

uint64_t SetJasperProcessingMode(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1785950322);
  result = 4294954516;
  if (a1 && isSensorType)
  {
    v8 = CFGetTypeID(a1);
    if (v8 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a1, kCFNumberIntType, (a2 + 4560));
      v10 = 0;
      v9 = *(a2 + 4720);
      if (v9)
      {
        H16ISP::H16ISPFilterGraphManager::GetNode(v9, 11, &v10);
        if (v10)
        {
          H16ISP::H16ISPJasperDepthNode::setProcessingMode(v10, *(a2 + 4560));
        }
      }

      return 0;
    }

    else
    {
      return 4294954516;
    }
  }

  return result;
}

uint64_t CopyJasperProcessingMode(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!H16ISP::H16ISPDevice::isSensorType(*(a5 + 24), *(a3 + 156), 1785950322))
  {
    return 4294954516;
  }

  v8 = CFNumberCreate(a1, kCFNumberIntType, (a3 + 4560));
  result = 0;
  *a2 = v8;
  return result;
}

uint64_t SetJasperRgbMode(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1785950322);
  result = 4294954516;
  if (a1 && isSensorType)
  {
    v8 = CFGetTypeID(a1);
    if (v8 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a1, kCFNumberIntType, (a2 + 4564));
      return 0;
    }

    else
    {
      return 4294954516;
    }
  }

  return result;
}

uint64_t SetJasperBuiltInSequence(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = *MEMORY[0x277D85DE8];
  if (!H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1785950322))
  {
    return 4294954514;
  }

  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFArrayGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 160))
  {
    return 4294954516;
  }

  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return 4294954516;
  }

  valuePtr = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  v11 = CFGetTypeID(ValueAtIndex);
  if (v11 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
  if (H16ISP::H16ISPDevice::GetChannelSensorID(*(a4 + 24), *(a2 + 156)) == 1424)
  {
    if (Count <= 5)
    {
      *&v50 = -1;
      *(&v50 + 1) = -1;
      LOWORD(v45) = 13062;
      LODWORD(v46) = *(a2 + 156);
      HIDWORD(v46) = valuePtr;
      *v35 = 0;
      v12 = Count - 1;
      if (Count != 1)
      {
        v13 = 0;
        while (1)
        {
          v14 = v13 + 1;
          v15 = CFArrayGetValueAtIndex(a1, v13 + 1);
          v16 = CFGetTypeID(v15);
          if (v16 != CFNumberGetTypeID())
          {
            return 4294954516;
          }

          *v35 = 0;
          CFNumberGetValue(v15, kCFNumberIntType, v35);
          *(&v50 + v13++) = *v35;
          if (v12 == v14)
          {
            v17 = v50;
            goto LABEL_25;
          }
        }
      }

      *&v17 = -1;
      *(&v17 + 1) = -1;
LABEL_25:
      v47 = v17;
      if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a4 + 24), buf, 0x20u, 0, 0xFFFFFFFF))
      {
        v30 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v30 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v30;
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          SetJasperBuiltInSequence();
        }

        return 4294954516;
      }

      goto LABEL_40;
    }

    return 4294954516;
  }

  ChannelSensorID = H16ISP::H16ISPDevice::GetChannelSensorID(*(a4 + 24), *(a2 + 156));
  result = 4294954516;
  if (Count <= 5 && ChannelSensorID == 1425)
  {
    H16ISP::setPeridotCalib(*(a4 + 24), *(a4 + 232), *(a2 + 156));
    *&v50 = -1;
    *(&v50 + 1) = -1;
    v36 = 14083;
    v19 = *(a2 + 156);
    v20 = valuePtr;
    v37 = v19;
    v38 = valuePtr;
    v34 = 0;
    v21 = Count - 1;
    if (Count != 1)
    {
      v22 = 0;
      while (1)
      {
        v23 = v22 + 1;
        v24 = CFArrayGetValueAtIndex(a1, v22 + 1);
        v25 = CFGetTypeID(v24);
        if (v25 != CFNumberGetTypeID())
        {
          return 4294954516;
        }

        v34 = 0;
        CFNumberGetValue(v24, kCFNumberIntType, &v34);
        *(&v50 + v22++) = v34;
        if (v21 == v23)
        {
          v27 = v50;
          v26 = DWORD1(v50);
          v29 = DWORD2(v50);
          v28 = HIDWORD(v50);
          goto LABEL_31;
        }
      }
    }

    v28 = -1;
    v29 = -1;
    v26 = -1;
    v27 = -1;
LABEL_31:
    v39 = v27;
    v40 = v26;
    v41 = v29;
    v42 = v28;
    v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    v32 = MEMORY[0x277D86220];
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v31 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v31;
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110400;
      v45 = v19;
      LOWORD(v46) = 1024;
      *(&v46 + 2) = v20;
      HIWORD(v46) = 1024;
      LODWORD(v47) = v27;
      WORD2(v47) = 1024;
      *(&v47 + 6) = v26;
      WORD5(v47) = 1024;
      HIDWORD(v47) = v29;
      v48 = 1024;
      v49 = v28;
      _os_log_impl(&dword_2247DB000, v31, OS_LOG_TYPE_DEFAULT, "SetPeridotBuiltInSequence: ch=%d, config=%d, args=[%d,%d,%d,%d]\n", buf, 0x26u);
    }

    if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a4 + 24), v35, 0x20u, 0, 0xFFFFFFFF))
    {
      v33 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v32)
      {
        v33 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v33;
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        SetJasperBuiltInSequence();
      }

      return 4294954516;
    }

LABEL_40:
    H16ISP::JasperConfigManager::configureFrameMode(0xFFFFFFFFLL);
    return 0;
  }

  return result;
}

uint64_t SetJasperBurstSize(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1785950322);
  result = 4294954516;
  if (a1 && isSensorType)
  {
    v7 = CFGetTypeID(a1);
    if (v7 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
      H16ISP::JasperConfigManager::setJasperBurstSize(valuePtr);
      return 0;
    }

    else
    {
      return 4294954516;
    }
  }

  return result;
}

uint64_t CopyJasperBurstSize(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a5 + 24), *(a3 + 156), 1785950322);
  if (!isSensorType)
  {
    return 4294954516;
  }

  valuePtr = H16ISP::JasperConfigManager::getJasperBurstSize(isSensorType);
  v8 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  result = 0;
  *a2 = v8;
  return result;
}

uint64_t SetFrameModeDictionaryLocation(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1785950322))
  {
    return 4294954516;
  }

  if (!a1)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFStringGetTypeID())
  {
    return 4294954516;
  }

  v7 = a1;
LABEL_7:
  H16ISP::JasperConfigManager::setFrameModeDictionaryLocation(v7, v5);
  return 0;
}

uint64_t CopyJasperCalibData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!H16ISP::H16ISPDevice::isSensorType(*(a5 + 24), *(a3 + 156), 1785950322))
  {
    return 4294954516;
  }

  v8 = JasperCalibration::copyCalibData(*(a5 + 24), *(a3 + 156));
  result = 0;
  *a2 = v8;
  return result;
}

uint64_t SetJasperCalibration(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFDataGetTypeID())
  {
    return 4294954516;
  }

  v7 = PDPeridotCalibCreateWithBinaryRepresentation();
  v9 = 4294954516;
  if (v7)
  {
    v10 = v7;
    if (H16ISP::savePeridotCalib(*(a4 + 24), *(a4 + 232), *(a2 + 156), v7, v8))
    {
      v9 = 0;
    }

    else
    {
      v9 = 4294954516;
    }

    CFRelease(v10);
  }

  return v9;
}

uint64_t CopyJasperCalibration(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  PeridotCalib = H16ISP::createPeridotCalib(*(a5 + 24), *(a5 + 232), *(a3 + 156));
  if (!PeridotCalib)
  {
    return 4294954516;
  }

  v7 = PeridotCalib;
  *a2 = CFRetain(PeridotCalib);
  CFRelease(v7);
  return 0;
}

uint64_t SetJasperGmoDebugMode(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1785950322);
  result = 4294954516;
  if (!a1 || !isSensorType)
  {
    return result;
  }

  v8 = CFGetTypeID(a1);
  if (v8 == CFBooleanGetTypeID())
  {
    v9 = CFBooleanGetValue(a1) == 0;
  }

  else
  {
    v10 = CFGetTypeID(a1);
    if (v10 != CFNumberGetTypeID())
    {
      return 4294954516;
    }

    valuePtr = 0;
    CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
    v9 = valuePtr == 0;
  }

  v11 = !v9;
  *(a2 + 4580) = v11;
  v12 = CFGetTypeID(a1);
  if (v12 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  *(a2 + 4580) = CFBooleanGetValue(a1) != 0;
  v14 = 0;
  v13 = *(a2 + 4720);
  if (v13)
  {
    H16ISP::H16ISPFilterGraphManager::GetNode(v13, 11, &v14);
    if (v14)
    {
      H16ISP::H16ISPJasperDepthNode::setGmoDebugMode(v14, *(a2 + 4580));
    }
  }

  return 0;
}

uint64_t SetJasperGmoFlow(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1785950322);
  result = 4294954516;
  if (a1 && isSensorType)
  {
    v8 = CFGetTypeID(a1);
    if (v8 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a1, kCFNumberIntType, (a2 + 4576));
      v10 = 0;
      v9 = *(a2 + 4720);
      if (v9)
      {
        H16ISP::H16ISPFilterGraphManager::GetNode(v9, 11, &v10);
        if (v10)
        {
          H16ISP::H16ISPJasperDepthNode::setGmoDebugMode(v10, *(a2 + 4576) != 0);
        }
      }

      return 0;
    }

    else
    {
      return 4294954516;
    }
  }

  return result;
}

uint64_t SetJasperLockAfFrequency(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1785950322);
  result = 4294954516;
  if (!a1 || !isSensorType)
  {
    return result;
  }

  v9 = CFGetTypeID(a1);
  if (v9 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = -1;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  result = 4294954516;
  if (valuePtr > 3)
  {
    if (valuePtr != 32 && valuePtr != 4)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (valuePtr != -1)
  {
    if (valuePtr)
    {
      return result;
    }

LABEL_11:
    v10 = 1;
    goto LABEL_13;
  }

  v10 = 0;
LABEL_13:
  v11 = H16ISP::H16ISPDevice::WritePropertyValue(*(a4 + 24), *(a2 + 156), 1500, v10, 0xFFFFFFFF);
  v12 = v11;
  if (v10 && !v11)
  {
    v12 = H16ISP::H16ISPDevice::WritePropertyValue(*(a4 + 24), *(a2 + 156), 1501, valuePtr, 0xFFFFFFFF);
  }

  v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v13 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v16 = "SetJasperLockAfFrequency";
    v17 = 1024;
    v18 = v10;
    v19 = 1024;
    v20 = valuePtr;
    v21 = 1024;
    v22 = v12;
    _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_DEFAULT, "%s - Lock ToF Af Frequency: (Lock:%d frequency:%d): 0x%08x\n", buf, 0x1Eu);
  }

  if (v12)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t CopyTimeOfFlightConfiguration(const __CFAllocator *a1, H16ISP::JasperConfigManager **a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FrameMode = H16ISP::JasperConfigManager::getFrameMode(Mutable);
  switch(FrameMode)
  {
    case 108:
      v8 = 6;
      break;
    case 104:
      v8 = 5;
      break;
    case 4:
      v8 = 1;
      break;
    default:
      return 4294954516;
  }

  valuePtr = v8;
  if (!*(a3 + 4560))
  {
    valuePtr = 0;
  }

  v9 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF68F8], v9);
  CFRelease(v9);
  result = 0;
  *a2 = Mutable;
  return result;
}

uint64_t CopySupportedTimeOfFlightProjectorModes(const __CFAllocator *a1, __CFArray **a2)
{
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v7 = ___ZL39CopySupportedTimeOfFlightProjectorModesPK13__CFAllocatorPvP19H16ISPCaptureStreamP18H16ISPCaptureGroupP19H16ISPCaptureDevice_block_invoke;
  v8 = &__block_descriptor_tmp_1159;
  v9 = a1;
  ___ZL39CopySupportedTimeOfFlightProjectorModesPK13__CFAllocatorPvP19H16ISPCaptureStreamP18H16ISPCaptureGroupP19H16ISPCaptureDevice_block_invoke(v6, Mutable, 0);
  v7(v6, Mutable, 1);
  v7(v6, Mutable, 5);
  v7(v6, Mutable, 6);
  *a2 = Mutable;
  return 0;
}

uint64_t SetJasperWideExtrinsics(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v23[1659] = *MEMORY[0x277D85DE8];
  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(v3 + 24), *(v5 + 156), 1785950322);
  result = 4294954516;
  if (v7 && isSensorType)
  {
    v10 = CFGetTypeID(v7);
    if (v10 == CFArrayGetTypeID() && !*(v6 + 160) && CFArrayGetCount(v7) >= 3)
    {
      LODWORD(v17) = 13;
      ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberFloat64Type, &v18);
      v12 = CFArrayGetValueAtIndex(v7, 1);
      CFNumberGetValue(v12, kCFNumberFloat64Type, &v19);
      v13 = CFArrayGetValueAtIndex(v7, 2);
      CFNumberGetValue(v13, kCFNumberFloat64Type, &v20);
      if (CFArrayGetCount(v7) > 5)
      {
        v14 = CFArrayGetValueAtIndex(v7, 3);
        CFNumberGetValue(v14, kCFNumberFloat64Type, &v21);
        v15 = CFArrayGetValueAtIndex(v7, 4);
        CFNumberGetValue(v15, kCFNumberFloat64Type, &v22);
        v16 = CFArrayGetValueAtIndex(v7, 5);
        CFNumberGetValue(v16, kCFNumberFloat64Type, v23);
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23[0] = 0;
      }

      if (H16ISP::H16ISPServicesRemote::SetProperty(*(v4 + 232), &v17))
      {
        return 4294954516;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 4294954516;
    }
  }

  return result;
}

uint64_t SetRgbjConfiguration(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1785950322);
  result = 4294954516;
  if (a1 && isSensorType)
  {
    v9 = CFGetTypeID(a1);
    if (v9 == CFDictionaryGetTypeID() && !*(a2 + 160))
    {
      valuePtr = -1;
      Value = CFDictionaryGetValue(a1, @"RgbjConfigurationFeatureVectorSize");
      if (Value)
      {
        v11 = Value;
        v12 = CFGetTypeID(Value);
        if (v12 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v11, kCFNumberIntType, &valuePtr);
          H16ISP::H16ISPTimeOfFlightColorSynchronizer::setFeatureVectorSize(*(a4 + 272), valuePtr);
        }
      }

      v13 = CFDictionaryGetValue(a1, @"RgbjConfigurationDilutionRate");
      if (v13)
      {
        v14 = v13;
        v15 = CFGetTypeID(v13);
        if (v15 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v14, kCFNumberIntType, &valuePtr);
          H16ISP::H16ISPTimeOfFlightColorSynchronizer::setDilutionRate(*(a4 + 272), valuePtr);
        }
      }

      v16 = CFDictionaryGetValue(a1, @"RgbjConfigurationLowFrameInterval");
      if (v16)
      {
        v17 = v16;
        v18 = CFGetTypeID(v16);
        if (v18 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v17, kCFNumberIntType, &valuePtr);
          H16ISP::H16ISPTimeOfFlightColorSynchronizer::setLowFrameInterval(*(a4 + 272), valuePtr);
        }
      }

      v19 = CFDictionaryGetValue(a1, @"RgbjConfigurationHighFrameInterval");
      if (v19)
      {
        v20 = v19;
        v21 = CFGetTypeID(v19);
        if (v21 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v20, kCFNumberIntType, &valuePtr);
          H16ISP::H16ISPTimeOfFlightColorSynchronizer::setHighFrameInterval(*(a4 + 272), valuePtr);
        }
      }

      v22 = CFDictionaryGetValue(a1, @"RgbjConfigurationLowFrameIntervalThresholdX");
      if (v22)
      {
        v23 = v22;
        v24 = CFGetTypeID(v22);
        if (v24 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v23, kCFNumberIntType, &valuePtr);
          H16ISP::H16ISPTimeOfFlightColorSynchronizer::setLowFrameIntervalThresholdX(*(a4 + 272), valuePtr);
        }
      }

      v25 = CFDictionaryGetValue(a1, @"RgbjConfigurationLowFrameIntervalThresholdY");
      if (v25)
      {
        v26 = v25;
        v27 = CFGetTypeID(v25);
        if (v27 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v26, kCFNumberIntType, &valuePtr);
          H16ISP::H16ISPTimeOfFlightColorSynchronizer::setLowFrameIntervalThresholdY(*(a4 + 272), valuePtr);
        }
      }

      v28 = CFDictionaryGetValue(a1, @"RgbjConfigurationLowFrameIntervalThresholdZ");
      if (v28)
      {
        v29 = v28;
        v30 = CFGetTypeID(v28);
        if (v30 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v29, kCFNumberIntType, &valuePtr);
          H16ISP::H16ISPTimeOfFlightColorSynchronizer::setLowFrameIntervalThresholdZ(*(a4 + 272), valuePtr);
        }
      }

      v31 = CFDictionaryGetValue(a1, @"RgbjConfigurationMinFrameNumAtLowInterval");
      if (v31)
      {
        v32 = v31;
        v33 = CFGetTypeID(v31);
        if (v33 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v32, kCFNumberIntType, &valuePtr);
          H16ISP::H16ISPTimeOfFlightColorSynchronizer::setMinFrameNumAtLowInterval(*(a4 + 272), valuePtr);
        }
      }

      return 0;
    }

    else
    {
      return 4294954516;
    }
  }

  return result;
}

uint64_t CopyRgbjReport(const __CFAllocator *a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v18) = 11;
  if (H16ISP::H16ISPServicesRemote::GetProperty(*(a5 + 232), &v18))
  {
    return 4294954516;
  }

  v9 = *(a5 + 272);
  if (!v9)
  {
    return 4294954516;
  }

  valuePtr = 0;
  H16ISP::H16ISPTimeOfFlightColorSynchronizer::getColorControllerStats(v9, &valuePtr);
  v16 = *&v19[8];
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"RgbjReportControllerReached", v11);
  CFRelease(v11);
  v12 = CFNumberCreate(a1, kCFNumberIntType, &v16);
  CFDictionaryAddValue(Mutable, @"RgbjReportControllerPassed", v12);
  CFRelease(v12);
  v13 = CFNumberCreate(a1, kCFNumberIntType, v19);
  CFDictionaryAddValue(Mutable, @"RgbjReportIsfSuccess", v13);
  CFRelease(v13);
  v14 = CFNumberCreate(a1, kCFNumberIntType, &v19[4]);
  CFDictionaryAddValue(Mutable, @"RgbjReportIsfFailure", v14);
  CFRelease(v14);
  v15 = CFNumberCreate(a1, kCFNumberIntType, &v20);
  CFDictionaryAddValue(Mutable, @"RgbjReportFailedToSave", v15);
  CFRelease(v15);
  result = 0;
  *a2 = Mutable;
  return result;
}

uint64_t RgbjForceSaveCalib(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v4[1665] = *MEMORY[0x277D85DE8];
  LODWORD(v4[0]) = 12;
  if (H16ISP::H16ISPServicesRemote::SetProperty(*(v2 + 232), v4))
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetManualColorCalGain(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, @"RedGreenGain");
  v9 = CFDictionaryGetValue(a1, @"BlueGreenGain");
  result = 4294954516;
  if (Value && v9)
  {
    valuePtr = 0;
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    v16 = 0;
    CFNumberGetValue(v9, kCFNumberSInt32Type, &v16);
    bzero(v11, 0x14uLL);
    v12 = 788;
    v13 = *(a2 + 156);
    v14 = valuePtr;
    v15 = v16;
    if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a4 + 24), v11, 0x14u, 0, 0xFFFFFFFF))
    {
      return 4294954514;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CopyObjectsDetectionSupportedConfigurationKeys(const __CFAllocator *a1, __CFArray **a2)
{
  if (!a2)
  {
    return 4294954516;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v4 = Mutable;
  CFArrayAppendValue(Mutable, *MEMORY[0x277CF5458]);
  CFArrayAppendValue(v4, *MEMORY[0x277CF5438]);
  CFArrayAppendValue(v4, *MEMORY[0x277CF5448]);
  CFArrayAppendValue(v4, *MEMORY[0x277CF5450]);
  CFArrayAppendValue(v4, *MEMORY[0x277CF5428]);
  CFArrayAppendValue(v4, *MEMORY[0x277CF5430]);
  CFArrayAppendValue(v4, *MEMORY[0x277CF5418]);
  CFArrayAppendValue(v4, *MEMORY[0x277CF5420]);
  CFArrayAppendValue(v4, *MEMORY[0x277CF5460]);
  CFArrayAppendValue(v4, *MEMORY[0x277CF5408]);
  CFArrayAppendValue(v4, *MEMORY[0x277CF5470]);
  result = 0;
  *a2 = v4;
  return result;
}