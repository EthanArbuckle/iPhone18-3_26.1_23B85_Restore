uint64_t CopyFormatDescription(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  *a2 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  return 0;
}

uint64_t CopyMaximumAllowedFrameRate(uint64_t a1, CFNumberRef *a2, uint64_t a3)
{
  valuePtr = *(a3 + 60);
  *a2 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  return 0;
}

uint64_t CopyMinimumFrameRate(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  if (H16ISP::H16ISPDevice::GetMinimumFrameRate(*(a5 + 24), *(a3 + 156), &v11))
  {
    v6 = 0;
    v7 = 4294954513;
  }

  else
  {
    v8 = vcvtd_n_f64_u32(v11, 8uLL);
    valuePtr = v8;
    v6 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    v7 = 0;
  }

  *a2 = v6;
  return v7;
}

uint64_t SetExternalSyncFrameRateRational(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45[1] = *MEMORY[0x277D85DE8];
  bzero(&v37, 8uLL);
  if (!*(a2 + 160))
  {
    if (a1)
    {
      v9 = CFGetTypeID(a1);
      if (v9 != CFArrayGetTypeID() || CFArrayGetCount(a1) != 2)
      {
        return 4294954516;
      }

      v45[0] = 0;
      if (CFArrayGetCount(a1) >= 1)
      {
        v10 = 0;
        v11 = v45;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
          v13 = CFGetTypeID(ValueAtIndex);
          if (v13 != CFNumberGetTypeID())
          {
            break;
          }

          CFNumberGetValue(ValueAtIndex, kCFNumberIntType, v11);
          ++v10;
          v11 = (v11 + 4);
        }

        while (v10 < CFArrayGetCount(a1));
      }

      v14 = *(a2 + 48);
      v15 = *(a2 + 192);
      if (v14 < v15)
      {
        v15 = 0;
      }

      v16 = v14 - v15;
      if (H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), *(*(a2 + 184) + 120 * (v14 - v15) + 16), v34, v44))
      {
        return 4294954516;
      }

      v19 = *(a2 + 184);
      v20 = *(a2 + 48);
      v21 = *(a2 + 192);
      if (v20 < v21)
      {
        v21 = 0;
      }

      v22 = 120 * (v20 - v21);
      if (v19)
      {
        v23 = v19 + 120 * v16;
      }

      else
      {
        v23 = v22;
      }

      v24 = *(v23 + 108);
      if (v24 == 0.0)
      {
        v25 = v35;
      }

      else
      {
        v25 = v24 * 256.0;
      }

      v26 = *(a2 + 156);
      if (*(a2 + 4360) && !*(a2 + 4380))
      {
        v26 |= 0x80000000;
      }

      v37 = v45[0];
      if (v45[0])
      {
        v27 = v25 * 0.0039062;
        v28 = (LODWORD(v45[0]) / HIDWORD(v45[0]));
        v29 = *(a2 + 60) < v28 || (v36 * 0.0039062) > v28;
        if (v29 || v27 < v28)
        {
          return 4294954516;
        }
      }

      v31 = *(a4 + 24);
      v18 = v37;
      if (!H16ISP::H16ISPDevice::SetExternalSyncConfigFrameRate(v31, v26, v37))
      {
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
        {
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v32 = *(a2 + 68);
          v33 = *(a2 + 72);
          *buf = 136315650;
          v39 = "SetExternalSyncFrameRateRational";
          v40 = 1024;
          v41 = v32;
          v42 = 1024;
          v43 = v33;
          _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s - Set the external pulse from the MSG to %d/%d\n", buf, 0x18u);
        }

        goto LABEL_44;
      }
    }

    else
    {
      v17 = *(a4 + 24);
      v18 = v37;
      if (!H16ISP::H16ISPDevice::SetExternalSyncConfigFrameRate(v17, *(a2 + 156), v37))
      {
LABEL_44:
        result = 0;
        *(a2 + 68) = v18;
        return result;
      }
    }

    return 4294954514;
  }

  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    SetExternalSyncFrameRateRational();
  }

  return 4294954612;
}

uint64_t SetFrameRateRangeRational(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v7 = CFGetTypeID(a1);
    if (v7 != CFDictionaryGetTypeID())
    {
      return 4294954516;
    }

    Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF5B90]);
    v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5BB8]);
    if (!Value)
    {
      return 4294954516;
    }

    v10 = v9;
    v11 = CFGetTypeID(Value);
    if (v11 != CFArrayGetTypeID() || v10 == 0)
    {
      return 4294954516;
    }

    v13 = CFGetTypeID(v10);
    if (v13 != CFArrayGetTypeID() || CFArrayGetCount(Value) != 2 || CFArrayGetCount(v10) != 2)
    {
      return 4294954516;
    }

    v14 = 0;
    v75 = 0;
    v76[0] = 0;
    v15 = v76;
    v16 = &v75;
    v17 = 1;
    do
    {
      v18 = v17;
      ValueAtIndex = CFArrayGetValueAtIndex(Value, v14);
      v20 = CFArrayGetValueAtIndex(v10, v14);
      v21 = CFGetTypeID(ValueAtIndex);
      if (v21 != CFNumberGetTypeID())
      {
        break;
      }

      v22 = CFGetTypeID(v20);
      if (v22 != CFNumberGetTypeID())
      {
        break;
      }

      CFNumberGetValue(ValueAtIndex, kCFNumberIntType, v15);
      CFNumberGetValue(v20, kCFNumberIntType, v16);
      v17 = 0;
      v15 = v76 + 4;
      v16 = &v75 + 4;
      v14 = 1;
    }

    while ((v18 & 1) != 0);
    if (!HIDWORD(v76[0]) || !HIDWORD(v75))
    {
      return 4294954516;
    }

    v24 = v75;
    v23 = v76[0];
    v59 = v75;
    v60 = v76[0];
    v25 = *(a2 + 48);
    v26 = *(a2 + 192);
    if (v25 < v26)
    {
      v26 = 0;
    }

    v27 = v25 - v26;
    if (H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), *(*(a2 + 184) + 120 * (v25 - v26) + 16), v56, buf))
    {
      return 4294954516;
    }

    v28 = (v23 / HIDWORD(v23));
    v29 = (v24 / HIDWORD(v24));
    if (v28 < v29)
    {
      return 4294954516;
    }

    v30 = v58 * 0.0039062;
    v31 = *(a2 + 184);
    v32 = *(a2 + 48);
    v33 = *(a2 + 192);
    if (v32 < v33)
    {
      v33 = 0;
    }

    v34 = 120 * (v32 - v33);
    if (v31)
    {
      v35 = v31 + 120 * v27;
    }

    else
    {
      v35 = v34;
    }

    v36 = *(v35 + 108);
    v37 = v57;
    if (v36 != 0.0)
    {
      v37 = v36 * 256.0;
    }

    v38 = v37 * 0.0039062;
    v39 = *(a2 + 60);
    v40 = v39 < v28 || v39 < v29;
    v41 = v40 || v30 > v28;
    v42 = v41 || v30 > v29;
    v43 = v42 || v38 < v29;
    if (v43 || v38 < v28)
    {
      return 4294954516;
    }

    if (H16ISP::H16ISPDevice::SetRationalFrameRateRange(*(a4 + 24), *(a2 + 156), 0, &v60, &v59))
    {
      return 4294954514;
    }

    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v61 = 136316162;
      v62 = "SetFrameRateRangeRational";
      v63 = 1024;
      v64 = v60;
      v65 = 1024;
      v66 = HIDWORD(v60);
      v67 = 1024;
      v68 = v59;
      v69 = 1024;
      v70 = HIDWORD(v59);
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s -  Rational FrameRateRange is set - max = %d/%d, min = %d/%d\n", v61, 0x24u);
    }

    LODWORD(v46) = v59;
    v52 = v60;
    v51 = HIDWORD(v60);
    v50 = HIDWORD(v59);
    v53 = v59;
    v54 = v60;
  }

  else
  {
    v46 = *(a2 + 160);
    if (v46)
    {
      SetMinimumFrameRateNow(a2, a4);
      SetMaximumFrameRateNow(a2, a4);
      v47 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v47 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v47;
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = *(a2 + 56);
        v49 = *(a2 + 52);
        *buf = 134218240;
        v72 = v48;
        v73 = 2048;
        v74 = v49;
        _os_log_impl(&dword_2247DB000, v47, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Reverting back to kFigCaptureStreamProperty_(Minimum/Maximum)FrameRate: %f - %f\n\n", buf, 0x16u);
      }

      LODWORD(v50) = 0;
      LODWORD(v46) = 0;
    }

    else
    {
      LODWORD(v50) = 0;
    }

    LODWORD(v51) = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
  }

  result = 0;
  *(a2 + 76) = v54;
  *(a2 + 84) = v53;
  *(a2 + 52) = (v52 / v51);
  *(a2 + 56) = (v46 / v50);
  return result;
}

uint64_t CopyFrameRateRangeRational(const __CFAllocator *a1, CFMutableDictionaryRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    goto LABEL_14;
  }

  v20 = 0;
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::SetRationalFrameRateRange(*(a5 + 24), *(a3 + 156), 1, &valuePtr, &v20))
  {
    v10 = 4294954514;
LABEL_4:
    CFRelease(Mutable);
    Mutable = 0;
    goto LABEL_15;
  }

  v11 = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  if (!v11)
  {
    v10 = 4294954510;
    goto LABEL_4;
  }

  v12 = v11;
  v13 = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  if (!v13)
  {
    CFRelease(Mutable);
    CFRelease(v12);
    Mutable = 0;
LABEL_14:
    v10 = 4294954510;
    goto LABEL_15;
  }

  v14 = v13;
  v15 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
  CFArrayAppendValue(v12, v15);
  CFRelease(v15);
  v16 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr + 4);
  CFArrayAppendValue(v12, v16);
  CFRelease(v16);
  v17 = CFNumberCreate(a1, kCFNumberSInt32Type, &v20);
  CFArrayAppendValue(v14, v17);
  CFRelease(v17);
  v18 = CFNumberCreate(a1, kCFNumberSInt32Type, &v20 + 4);
  CFArrayAppendValue(v14, v18);
  CFRelease(v18);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF5B90], v12);
  CFRelease(v12);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF5BB8], v14);
  CFRelease(v14);
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v23 = "CopyFrameRateRangeRational";
    v24 = 1024;
    v25 = valuePtr;
    v26 = 1024;
    v27 = HIDWORD(valuePtr);
    v28 = 1024;
    v29 = v20;
    v30 = 1024;
    v31 = HIDWORD(v20);
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s -  Rational FrameRateRange is set - max = %d/%d, min = %d/%d\n", buf, 0x24u);
  }

  v10 = 0;
LABEL_15:
  *a2 = Mutable;
  return v10;
}

uint64_t StillImageCaptureNow(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v863 = *MEMORY[0x277D85DE8];
  v8 = v5 + 4096;
  v9 = *(v5 + 4224);
  bzero(&v862, 0x10uLL);
  bzero(__src, 0x79CuLL);
  LOWORD(__src[1]) = 2623;
  v809[3] = 0;
  *(&v809[1] + 3) = 0;
  bzero(v809, 0xE8uLL);
  v10 = *(*(v4 + 24) + 4304);
  v11 = *(v6 + 4360);
  if (v11)
  {
    CFRetain(*(v6 + 4360));
    v12 = (v6 + 264);
    pthread_mutex_unlock((v6 + 264));
    LockStreamMutexes(v11);
  }

  else
  {
    v12 = 0;
  }

  if (*(v6 + 100) || !*(v6 + 160))
  {
    v13 = 4294954608;
    goto LABEL_6;
  }

  LODWORD(v794) = *(v6 + 256);
  *v806 = v4;
  v786 = v10;
  if (!v7 || (v15 = CFGetTypeID(v7), v15 != CFDictionaryGetTypeID()))
  {
    v780 = 0;
    key = 0;
    v17 = 0;
    cf2 = 0;
    v774 = 0;
    v775 = 0;
    v772 = 0;
    theDict = 0;
    v785 = 0;
    v792 = 0;
    v793 = 0;
    v18 = 0;
    v776 = 0;
    LODWORD(valuePtr) = 0;
    v778 = 0;
    v779 = 0;
    memset(v788, 0, sizeof(v788));
    v789 = 0;
    v19 = 0;
    v20 = 0;
    LOBYTE(v796) = 0;
    v777 = 0;
    v764 = 0;
    v766 = 0;
    LODWORD(v798) = 0;
    LODWORD(v799) = 0;
    LODWORD(v801) = 0;
    v804[0] = 0;
    v21 = 0;
    theArray = 0;
    cf = 0;
    v790 = -12780;
    LOWORD(v791) = -1;
    v22 = 4;
    v23 = 1;
    goto LABEL_15;
  }

  cf = CFDictionaryGetValue(v7, *MEMORY[0x277CF5500]);
  Value = CFDictionaryGetValue(v7, *MEMORY[0x277CF5668]);
  v800 = CFDictionaryGetValue(v7, *MEMORY[0x277CF56C0]);
  v797 = CFDictionaryGetValue(v7, @"BioCapBracketedCaptureParams");
  v795 = CFDictionaryGetValue(v7, @"ProbePatternBracketedCaptureParams");
  v792 = CFDictionaryGetValue(v7, @"ProjectorBracketedCaptureParams");
  v793 = CFDictionaryGetValue(v7, *MEMORY[0x277CF6130]);
  if (v793)
  {
    theDict = CFDictionaryGetValue(v7, *MEMORY[0x277CF60F8]);
  }

  else
  {
    theDict = 0;
  }

  theArray = Value;
  if (cf && (v37 = CFGetTypeID(cf), v37 == CFArrayGetTypeID()))
  {
    memset(v788, 0, sizeof(v788));
    LODWORD(v798) = 0;
    LODWORD(v799) = 0;
    LODWORD(v801) = 1;
  }

  else if (Value && (v38 = CFGetTypeID(Value), v38 == CFArrayGetTypeID()))
  {
    memset(v788, 0, sizeof(v788));
    LODWORD(v798) = 0;
    LODWORD(v801) = 0;
    LODWORD(v799) = 1;
  }

  else if (v800 && (v39 = CFGetTypeID(v800), v39 == CFDictionaryGetTypeID()))
  {
    memset(v788, 0, sizeof(v788));
    LODWORD(v799) = 0;
    LODWORD(v801) = 0;
    LODWORD(v798) = 1;
  }

  else if (v797 && (v40 = CFGetTypeID(v797), v40 == CFDictionaryGetTypeID()))
  {
    *v788 = 0;
    *&v788[4] = 0x100000000;
    LODWORD(v798) = 0;
    LODWORD(v799) = 0;
    LODWORD(v801) = 0;
  }

  else if (v795 && (v41 = CFGetTypeID(v795), v41 == CFDictionaryGetTypeID()))
  {
    LODWORD(v798) = 0;
    LODWORD(v799) = 0;
    LODWORD(v801) = 0;
    *v788 = 0;
    *&v788[4] = 1;
  }

  else if (v792)
  {
    v42 = CFGetTypeID(v792);
    *&v788[8] = 0;
    LODWORD(v798) = 0;
    LODWORD(v799) = 0;
    LODWORD(v801) = 0;
    *v788 = v42 == CFArrayGetTypeID();
  }

  else
  {
    memset(v788, 0, sizeof(v788));
    LODWORD(v798) = 0;
    LODWORD(v799) = 0;
    LODWORD(v801) = 0;
  }

  v43 = CFDictionaryGetValue(v7, *MEMORY[0x277CF55D0]);
  v789 = CFDictionaryGetValue(v7, *MEMORY[0x277CF5538]);
  if (v43)
  {
    v44 = CFGetTypeID(v43);
    if (v44 == CFStringGetTypeID())
    {
      if (CFEqual(v43, *MEMORY[0x277CF5550]))
      {
        if (*(v6 + 4360))
        {
          v45 = 7;
        }

        else
        {
          v45 = 2;
        }

        goto LABEL_180;
      }

      if (CFEqual(v43, *MEMORY[0x277CF5540]))
      {
        if (*(v6 + 4360))
        {
          v45 = 5;
        }

        else
        {
          v45 = 0;
        }

        goto LABEL_180;
      }

      if (CFEqual(v43, *MEMORY[0x277CF5548]))
      {
        if (*(v6 + 4360))
        {
          v45 = 6;
        }

        else
        {
          v45 = 1;
        }

        goto LABEL_180;
      }

      if (CFEqual(v43, *MEMORY[0x277CF5558]))
      {
        if (*(v6 + 4360))
        {
          v45 = 16;
        }

        else
        {
          v45 = 15;
        }

        goto LABEL_180;
      }
    }
  }

  v45 = -1;
LABEL_180:
  LOWORD(v791) = v45;
  v103 = CFDictionaryGetValue(v7, *MEMORY[0x277CF5700]);
  v104 = MEMORY[0x277CBED28];
  if (v103)
  {
    LODWORD(v796) = CFEqual(v103, *MEMORY[0x277CBED28]) != 0;
  }

  else
  {
    LODWORD(v796) = 0;
  }

  v105 = CFDictionaryGetValue(v7, *MEMORY[0x277CF5738]);
  v106 = 4;
  v767 = v105;
  if (v105)
  {
    if (CFEqual(v105, *v104))
    {
      v106 = 1;
    }

    else
    {
      v106 = 4;
    }
  }

  cf2a = CFDictionaryGetValue(v7, *MEMORY[0x277CF6108]);
  if (cf2a)
  {
    if (!CFEqual(*MEMORY[0x277CF5FF8], cf2a))
    {
      goto LABEL_238;
    }

    v106 = 1;
  }

  v784 = v106;
  v107 = CFDictionaryGetValue(v7, *MEMORY[0x277CF60D0]);
  if (v107)
  {
    v108 = CFEqual(v107, *v104) != 0;
    H16ISP::H16ISPDevice::EnableHighlightRecovery(*(v4 + 24), *(v6 + 156), v108, 1);
  }

  v859[0] = 0;
  v109 = CFDictionaryGetValue(v7, *MEMORY[0x277CF6128]);
  if (v109 && (v110 = v109, v111 = CFGetTypeID(v109), v111 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v110, kCFNumberIntType, v859);
    v804[0] = v859[0] == 1;
  }

  else
  {
    v804[0] = 0;
  }

  bzero(v861, 0x2AuLL);
  bzero(v860, 0x2AuLL);
  v112 = CFDictionaryGetValue(v7, @"FocusDeltaParams");
  if (v112 && (v113 = v112, v114 = CFGetTypeID(v112), v114 == CFArrayGetTypeID()))
  {
    Count = CFArrayGetCount(v113);
    if (Count > 21 || !Count)
    {
      goto LABEL_238;
    }

    v769 = Count;
    if (Count >= 1)
    {
      v116 = 0;
      v117 = v861;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v113, v116);
        CFNumberGetValue(ValueAtIndex, kCFNumberIntType, v117);
        ++v116;
        v117 += 2;
      }

      while (v769 != v116);
    }
  }

  else
  {
    v769 = 0;
  }

  v119 = CFDictionaryGetValue(v7, @"FocusDeltaParamsSlave");
  v120 = v769;
  if (!v119)
  {
    goto LABEL_213;
  }

  v121 = v119;
  v122 = CFGetTypeID(v119);
  if (v122 != CFArrayGetTypeID())
  {
    goto LABEL_213;
  }

  v123 = CFArrayGetCount(v121);
  if (v123 != v769 || v123 > 21 || !v123)
  {
    goto LABEL_238;
  }

  if (v769 >= 1)
  {
    v124 = 0;
    v125 = v860;
    do
    {
      v126 = CFArrayGetValueAtIndex(v121, v124);
      CFNumberGetValue(v126, kCFNumberIntType, v125);
      ++v124;
      v125 += 2;
    }

    while (v769 != v124);
LABEL_213:
    if ((v798 | v799 | v801) == 1 && v769 >= 1)
    {
      bzero(&buf, 0x64uLL);
      buf.timescale = buf.timescale & 0x7FFF0000 | *(v6 + 156) | ((*(v6 + 4360) != 0) << 31);
      WORD2(buf.value) = 586;
      LOWORD(buf.flags) = v769;
      v127 = &v832;
      v128 = v860;
      v129 = v861;
      do
      {
        v130 = *v129++;
        *(v127 - 21) = v130;
        v131 = *v128++;
        *v127++ = v131;
        --v120;
      }

      while (v120);
      if (H16ISP::H16ISPDevice::ISP_SendCommand(*(*v806 + 24), &buf, 0x64u, 0, 0xFFFFFFFF))
      {
        goto LABEL_218;
      }
    }
  }

  v132 = CFDictionaryGetValue(v7, *MEMORY[0x277CF6090]);
  v133 = MEMORY[0x277CBED28];
  if (v132)
  {
    v9 = CFEqual(v132, *MEMORY[0x277CBED28]) != 0;
  }

  v134 = CFDictionaryGetValue(v7, *MEMORY[0x277CF6080]);
  if (v134)
  {
    v135 = v134;
    if (!H16ISP::H16ISPFrameReceiver::HasPool(*(v6 + 160), 20))
    {
      goto LABEL_238;
    }

    v136 = CFEqual(v135, *v133) != 0;
  }

  else
  {
    v136 = dword_281003340 == 1;
  }

  LODWORD(v780) = v136;
  v137 = CFDictionaryGetValue(v7, *MEMORY[0x277CF6078]);
  if (v137)
  {
    if (!H16ISP::H16ISPFrameReceiver::HasPool(*(v6 + 160), 22))
    {
      goto LABEL_238;
    }

    if (CFEqual(v137, *v133))
    {
      v138 = -1;
    }

    else
    {
      v138 = 0;
    }

    LODWORD(v778) = v138;
  }

  else
  {
    LODWORD(v778) = 0;
  }

  if (CFDictionaryGetValue(v7, *MEMORY[0x277CF6070]))
  {
    if (H16ISP::H16ISPFrameReceiver::HasPool(*(v6 + 160), 23))
    {
      if (CFEqual(v137, *v133))
      {
        v139 = -1;
      }

      else
      {
        v139 = 0;
      }

      v777 = v139;
      goto LABEL_240;
    }

LABEL_238:
    v13 = 4294954516;
    goto LABEL_6;
  }

  v777 = 0;
LABEL_240:
  v140 = CFDictionaryGetValue(v7, *MEMORY[0x277CF6110]);
  if (v140)
  {
    v23 = CFEqual(v140, *v133) == 0;
  }

  else
  {
    v23 = 1;
  }

  v141 = CFDictionaryGetValue(v7, *MEMORY[0x277CF60E0]);
  if (v141)
  {
    v142 = CFEqual(v141, *v133) != 0;
  }

  else
  {
    v142 = *(v8 + 500);
  }

  *(v8 + 501) = v142;
  v143 = CFDictionaryGetValue(v7, *MEMORY[0x277CF6098]);
  if (v143)
  {
    v144 = CFEqual(v143, *v133) != 0;
  }

  else
  {
    v144 = 0;
  }

  v145 = CFDictionaryGetValue(v7, *MEMORY[0x277CF60B0]);
  if (v145)
  {
    WORD2(v779) = CFEqual(v145, *v133) != 0;
  }

  else
  {
    WORD2(v779) = 0;
  }

  v146 = CFDictionaryGetValue(v7, *MEMORY[0x277CF60A8]);
  if (v146)
  {
    LOWORD(v779) = CFEqual(v146, *v133) != 0;
  }

  else
  {
    LOWORD(v779) = 0;
  }

  v147 = CFDictionaryGetValue(v7, *MEMORY[0x277CF60A0]);
  if (v147)
  {
    WORD2(v778) = CFEqual(v147, *v133) != 0;
  }

  else
  {
    WORD2(v778) = 0;
  }

  v148 = *(v6 + 4360);
  HIDWORD(v780) = v144;
  if (!v148)
  {
    goto LABEL_268;
  }

  if (!CFArrayGetCount(v148))
  {
    BYTE4(v775) = 0;
    v155 = 0;
    v858[0] = 0;
    goto LABEL_270;
  }

  v149 = 0;
  v150 = 0;
  v151 = 0;
  do
  {
    CFArrayGetValueAtIndex(*(v6 + 4360), v149);
    FigCaptureStreamGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 4256) == 1)
    {
      v151 = *(DerivedStorage + 4260);
      v150 = 1;
    }

    ++v149;
  }

  while (v149 < CFArrayGetCount(*(v6 + 4360)));
  v858[0] = v151;
  if ((v150 & 1) == 0)
  {
LABEL_268:
    BYTE4(v775) = 0;
    v155 = 0;
LABEL_270:
    v790 = -12780;
    goto LABEL_271;
  }

  v153 = CFDictionaryGetValue(v7, *MEMORY[0x277CF60D8]);
  if (v153)
  {
    ProjectorTypeFromDictionary = GetProjectorTypeFromDictionary(v153, v858);
    if (ProjectorTypeFromDictionary)
    {
LABEL_334:
      v13 = ProjectorTypeFromDictionary;
      goto LABEL_6;
    }

    v790 = 0;
    v151 = v858[0];
  }

  else
  {
    v790 = -12780;
  }

  ProjectorTypeFromDictionary = 4294954516;
  if (v151 > 4)
  {
    switch(v151)
    {
      case 5:
        BYTE4(v775) = 1;
        v155 = 1;
        goto LABEL_271;
      case 11:
        v155 = 4;
        break;
      case 12:
        v155 = 3;
        break;
      default:
        goto LABEL_334;
    }
  }

  else if (v151)
  {
    if (v151 == 1)
    {
      v155 = 4096;
    }

    else
    {
      if (v151 != 4)
      {
        goto LABEL_334;
      }

      v155 = 2;
    }
  }

  else
  {
    v155 = 0;
  }

  BYTE4(v775) = 1;
LABEL_271:
  v156 = CFDictionaryGetValue(v7, *MEMORY[0x277CF6120]);
  if (v156)
  {
    v157 = v156;
    if (*(v6 + 1388))
    {
      v158 = 1392;
    }

    else if (*(v6 + 1588))
    {
      v158 = 1592;
    }

    else
    {
      if (*(v6 + 2588) != 1)
      {
        v159 = 0;
        goto LABEL_280;
      }

      v158 = 2592;
    }

    v159 = *(v6 + v158);
LABEL_280:
    if (*(v6 + 1376) & 1) != 0 || (*(v6 + 1576))
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v6 + 2504) ^ 1;
    }

    v160 = CFDictionaryGetValue(v156, *MEMORY[0x277CF6310]);
    if (v160)
    {
      LODWORD(buf.value) = 0;
      CFNumberGetValue(v160, kCFNumberSInt32Type, &buf);
      v161 = buf.value;
      if (SLODWORD(buf.value) > v159)
      {
LABEL_333:
        ProjectorTypeFromDictionary = 4294954516;
        goto LABEL_334;
      }
    }

    else
    {
      v161 = 0;
    }

    v776 = v161;
    v162 = CFDictionaryGetValue(v157, *MEMORY[0x277CF6318]);
    if (v162)
    {
      v163 = v162;
      if (H16ISP::H16ISPDevice::ISP_GetCameraTime(*(*v806 + 24), __b))
      {
        ProjectorTypeFromDictionary = 4294954514;
        goto LABEL_334;
      }

      CMTimeMakeFromDictionary(&buf, v163);
      v848[0] = buf;
      CMTimeGetSeconds(v848);
      v164 = __b[0];
      v774 = (__b[1] - (v164 - FigNanosecondsToHostTime()) / *(v6 + 4216));
    }

    else
    {
      v774 = 0;
    }

    goto LABEL_293;
  }

  v18 = 0;
  v774 = 0;
  v776 = 0;
LABEL_293:
  v165 = CFDictionaryGetValue(v7, *MEMORY[0x277CF6118]);
  v22 = v784;
  LOWORD(v775) = v155;
  v785 = v165;
  if (v165)
  {
    LODWORD(buf.value) = 0;
    v166 = CFArrayGetCount(v165);
    v776 = v166;
    if (v166)
    {
      v167 = 0;
      LODWORD(valuePtr) = 0;
      keya = *MEMORY[0x277CF6320];
      v773 = *MEMORY[0x277CF6200];
      v765 = v166;
      while (1)
      {
        v168 = CFArrayGetValueAtIndex(v785, v167);
        v169 = CFDictionaryGetValue(v168, keya);
        if (v169)
        {
          CFNumberGetValue(v169, kCFNumberSInt8Type, &v862 + 2 * valuePtr);
        }

        v170 = CFDictionaryGetValue(v168, v773);
        if (v170 && (CFNumberGetValue(v170, kCFNumberSInt32Type, &buf), LODWORD(buf.value)))
        {
          if (!valuePtr)
          {
            v172 = 0;
LABEL_306:
            LODWORD(valuePtr) = valuePtr + 1;
            *(&v862 + 2 * v172 + 1) = 1;
            goto LABEL_307;
          }

          v171 = &v862 + 2 * (valuePtr - 1);
          v172 = valuePtr;
          if (*v171 != *(&v862 + 2 * valuePtr) || v171[1])
          {
            goto LABEL_306;
          }

          v171[1] = 2;
        }

        else
        {
          *(&v862 + 2 * valuePtr + 1) = 0;
          LODWORD(valuePtr) = valuePtr + 1;
        }

LABEL_307:
        GetPerFrameTuningParam(v168, &__src[16 * LOBYTE(__src[3]) + 4], v6);
        v173 = __src[3];
        __src[16 * LOBYTE(__src[3]) + 9] = 1;
        LOBYTE(__src[3]) = v173 + 1;
        if (v765 == ++v167)
        {
          goto LABEL_311;
        }
      }
    }

    LODWORD(valuePtr) = 0;
LABEL_311:
    v22 = v784;
    if (*(v6 + 1376) & 1) != 0 || (*(v6 + 1576))
    {
      v18 = 0;
    }

    else
    {
      v18 = *(v6 + 2504) ^ 1;
    }

    v772 = 1;
  }

  else
  {
    v772 = 0;
    LODWORD(valuePtr) = v776;
  }

  v17 = CFDictionaryGetValue(v7, *MEMORY[0x277CF60E8]);
  key = CFDictionaryGetValue(v7, *MEMORY[0x277CF60F0]);
  if (v17)
  {
    if (v791 == 6 || v791 == 1)
    {
      v174 = v796 ? 2 : 1;
    }

    else
    {
      v174 = 1;
    }

    if (CFArrayGetCount(v17) != v174)
    {
      goto LABEL_333;
    }
  }

  if (key)
  {
    if (v791 == 6 || v791 == 1)
    {
      v175 = v796 ? 2 : 1;
    }

    else
    {
      v175 = 1;
    }

    if (CFArrayGetCount(key) != v175)
    {
      goto LABEL_333;
    }
  }

  v766 = v767 != 0;
  v764 = cf2a != 0;
  cf2 = v769 > 0;
  v21 = v800;
  v20 = v797;
  v19 = v795;
LABEL_15:
  v795 = v19;
  v797 = v20;
  v800 = v21;
  v783 = v22;
  v24 = *(v6 + 4360);
  v768 = v18;
  if (v24)
  {
    if (CFArrayGetCount(v24))
    {
      v25 = 0;
      do
      {
        if (CFArrayGetValueAtIndex(*(v6 + 4360), v25))
        {
          FigCaptureStreamGetFigBaseObject();
          v26 = CMBaseObjectGetDerivedStorage();
          if (*(v26 + 160))
          {
            v27 = *(v26 + 4369);
            if ((v23 | v27))
            {
              if (v27)
              {
                v6 = v26;
              }

              v28 = v810++;
              v815[v28] = v26;
            }
          }
        }

        ++v25;
      }

      while (v25 < CFArrayGetCount(*(v6 + 4360)));
    }
  }

  else
  {
    v815[0] = v6;
    v810 = 1;
  }

  if (!v810)
  {
    v13 = 4294954611;
    goto LABEL_6;
  }

  v29 = v6 + 4096;
  v30 = *(v6 + 4176);
  v814 = 5;
  v813 = v30;
  v31 = *(v6 + 156);
  if (v810 != 1)
  {
    v31 = *(v6 + 156);
    if (*(v6 + 4360))
    {
      if (!*(v6 + 4380))
      {
        v31 |= 0x80000000;
      }
    }
  }

  if (H16ISP::H16ISPDevice::EnableSqrtToneCurve(*(*v806 + 24), v31, v804[0]))
  {
LABEL_33:
    v13 = v790;
    goto LABEL_6;
  }

  if (H16ISP::H16ISPDevice::EnableCNRForStillCapture(*(*v806 + 24), v31, v9))
  {
LABEL_218:
    v13 = 4294954611;
    goto LABEL_6;
  }

  v32 = v810;
  v762 = v31;
  if (!v7 || v794 != 1 || v793 || v810 != 1)
  {
    goto LABEL_96;
  }

  *v804 = v6 + 4096;
  v33 = CFDictionaryGetValue(v7, *MEMORY[0x277CF61F8]);
  v34 = CFDictionaryGetValue(v7, *MEMORY[0x277CF60E8]);
  v35 = CFDictionaryGetValue(v7, *MEMORY[0x277CF60C0]);
  if (v35)
  {
    v36 = CFEqual(v35, *MEMORY[0x277CBED28]) != 0;
  }

  else
  {
    v36 = 0;
  }

  if (*(v6 + 1304) & 1) != 0 || (*(v6 + 1504))
  {
    v46 = 0;
  }

  else
  {
    v46 = *(v6 + 2504) ^ 1;
  }

  if (v33)
  {
    v47 = v34 == 0;
  }

  else
  {
    v47 = 1;
  }

  v48 = v47;
  if (((v48 | v36) & 1) != 0 || (v46) && (*(v6 + 2504) & 1) == 0)
  {
    v32 = v810;
    v29 = v6 + 4096;
LABEL_96:
    if (v32)
    {
      *v804 = v29;
      v763 = v12;
      v52 = 0;
      while (1)
      {
        v53 = v815[v52];
        v54 = v17;
        if ((*(v53 + 4369) & 1) == 0)
        {
          if (*(v53 + 4360))
          {
            v54 = key;
          }

          else
          {
            v54 = v17;
          }
        }

        if (v54)
        {
          if (CFArrayGetCount(v54) == 2)
          {
            v55 = CFArrayGetValueAtIndex(v54, 0);
            v54 = CFArrayGetValueAtIndex(v54, 1);
            if (v55)
            {
              v56 = ApplyNoiseReductionConfiguration(*v806, v815[v52], 2, 2, 2, v55);
              if (v56)
              {
LABEL_136:
                v13 = v56;
                goto LABEL_908;
              }
            }
          }

          else if (CFArrayGetCount(v54) == 1)
          {
            v54 = CFArrayGetValueAtIndex(v54, 0);
          }

          else
          {
            v54 = 0;
          }
        }

        v56 = ApplyNoiseReductionConfiguration(*v806, v815[v52], 1, 1, 1, v54);
        if (v56)
        {
          goto LABEL_136;
        }

        ++v52;
        v51 = v810;
        if (v52 >= v810)
        {
          goto LABEL_112;
        }
      }
    }

    goto LABEL_121;
  }

  __src[2] = *(v815[0] + 156);
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v7);
  if (v34 && CFArrayGetCount(v34) >= 1)
  {
    v50 = CFArrayGetValueAtIndex(v34, 0);
    CFDictionarySetValue(MutableCopy, *MEMORY[0x277CF61C0], v50);
  }

  GetPerFrameTuningParam(MutableCopy, &__src[4], v6);
  CFRelease(MutableCopy);
  LOBYTE(__src[3]) = 1;
  __src[9] = 1;
  __src[484] = 0;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(*v806 + 24), __src, 0x79Cu, 0, 0xFFFFFFFF))
  {
    goto LABEL_93;
  }

  v790 = 0;
  v51 = v810;
LABEL_112:
  if (v51)
  {
    v763 = v12;
    v57 = 0;
    do
    {
      bzero(&buf, 0x14uLL);
      v58 = *(v815[v57] + 156);
      WORD2(buf.value) = 320;
      buf.timescale = v58;
      buf.flags = v780;
      LOBYTE(buf.epoch) = v778 != 0;
      BYTE1(buf.epoch) = v777 != 0;
      if (H16ISP::H16ISPDevice::ISP_SendCommand(*(*v806 + 24), &buf, 0x14u, 0, 0xFFFFFFFF))
      {
        goto LABEL_907;
      }

      HIDWORD(v780) |= dword_281003150 != 0;
      if (H16ISP::H16ISPDevice::SetMetadataRequired(*(*v806 + 24), *(v815[v57] + 156), 19, 1, BYTE4(v780) & 1) || H16ISP::H16ISPDevice::SetMetadataRequired(*(*v806 + 24), *(v815[v57] + 156), 37, 1, SWORD2(v779)) || H16ISP::H16ISPDevice::SetMetadataRequired(*(*v806 + 24), *(v815[v57] + 156), 15, 1, v779) || H16ISP::H16ISPDevice::SetMetadataRequired(*(*v806 + 24), *(v815[v57] + 156), 63, 1, SWORD2(v778)))
      {
        goto LABEL_907;
      }
    }

    while (++v57 < v810);
  }

  v29 = *v804;
LABEL_121:
  if (v801)
  {
    v59 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v59 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v59;
    }

    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 136315138;
      *(&buf.value + 4) = "StillImageCaptureNow";
      _os_log_impl(&dword_2247DB000, v59, OS_LOG_TYPE_DEFAULT, "%s - Initiating AE bracketed capture\n", &buf, 0xCu);
    }

    v60 = CFArrayGetCount(cf);
    if (v60 > 21)
    {
      goto LABEL_33;
    }

    v61 = v60;
    if (!v60)
    {
      goto LABEL_33;
    }

    v763 = v12;
    if (v60 >= 1)
    {
      v62 = 0;
      v63 = __b;
      do
      {
        v64 = CFArrayGetValueAtIndex(cf, v62);
        CFNumberGetValue(v64, kCFNumberDoubleType, v63);
        ++v62;
        ++v63;
      }

      while (v61 != v62);
    }

    v65 = valuePtr;
    if (*(v6 + 4360))
    {
      v66 = CFDictionaryGetValue(v7, *MEMORY[0x277CF5508]);
      v67 = v66;
      if (v66 && (v68 = CFGetTypeID(v66), v68 == CFArrayGetTypeID()))
      {
        if (CFArrayGetCount(v67) != v61)
        {
          goto LABEL_849;
        }

        v69 = 1;
      }

      else
      {
        v69 = 0;
      }

      v65 = valuePtr;
      if (v61 >= 1)
      {
        v197 = 0;
        v198 = v859;
        do
        {
          if (v69)
          {
            v199 = CFArrayGetValueAtIndex(v67, v197);
            CFNumberGetValue(v199, kCFNumberDoubleType, v198);
            v65 = valuePtr;
          }

          else
          {
            *v198 = __b[v197];
          }

          ++v197;
          ++v198;
        }

        while (v61 != v197);
      }
    }

    v200 = v65 + v61 + 1;
    if (v778 == -1)
    {
      v201 = v65 + v61;
    }

    else
    {
      v201 = 0;
    }

    if (v777 == -1)
    {
      v202 = v65 + v61;
    }

    else
    {
      v202 = 0;
    }

    if (v810)
    {
      v203 = 0;
      if (v780)
      {
        v204 = v65 + v61 + 1;
      }

      else
      {
        v204 = 0;
      }

      do
      {
        v205 = v815[v203];
        *(v205 + 576) = v796;
        if (AllocateAndSendOneShotBuffers(v205, v200, v204, v201, v202, 0))
        {
          goto LABEL_724;
        }
      }

      while (++v203 < v810);
    }

    v206 = v791;
    if (v791 == 0xFFFF)
    {
      if (*(v6 + 4360))
      {
        v206 = 6;
      }

      else
      {
        v206 = 1;
      }
    }

    v12 = v763;
    if (H16ISP::H16ISPDevice::SetAEBracketingMode(*(*v806 + 24), v762, v206, v783))
    {
      goto LABEL_33;
    }

    LOWORD(v207) = v789;
    if (!v789)
    {
      v280 = 0;
      LODWORD(v281) = 0;
      goto LABEL_663;
    }

    v208 = CFGetTypeID(v789);
    if (v208 != CFDictionaryGetTypeID())
    {
      v280 = 0;
      LODWORD(v281) = 0;
      LOWORD(v207) = 0;
      goto LABEL_663;
    }

    v209 = CFDictionaryGetValue(v789, *MEMORY[0x277CF57E0]);
    if (!v209)
    {
      goto LABEL_522;
    }

    v210 = v209;
    v211 = CFGetTypeID(v209);
    if (v211 == CFArrayGetTypeID())
    {
      if (CFArrayGetCount(v210))
      {
        v212 = 0;
        v213 = &v848[0].value + 3;
        while (1)
        {
          v214 = CFArrayGetValueAtIndex(v210, v212);
          if (!v214)
          {
            break;
          }

          v215 = v214;
          v216 = CFGetTypeID(v214);
          if (v216 != CFDictionaryGetTypeID())
          {
            break;
          }

          LODWORD(buf.value) = 0;
          v858[0] = 0;
          v857[0] = 0;
          v856[0] = 0;
          v808[1] = 0;
          if (H16ISPGetRectParamsFromDict(v215, &buf, v858, v857, v856, &v808[1], 1u))
          {
            break;
          }

          *(v213 - 3) = v212;
          *(v213 - 1) = buf.value;
          *v213 = v858[0];
          v213[1] = v857[0];
          v213[2] = v856[0];
          v207 = v212 + 1;
          v217 = CFArrayGetCount(v210);
          if (v212 <= 0xE)
          {
            v213 += 6;
            ++v212;
            if (v207 < v217)
            {
              continue;
            }
          }

          goto LABEL_654;
        }

        LOWORD(v207) = v212;
        goto LABEL_654;
      }

LABEL_522:
      LOWORD(v207) = 0;
LABEL_654:
      LODWORD(buf.value) = 0;
      v374 = CFDictionaryGetValue(v789, *MEMORY[0x277CF5788]);
      if (v374 && (v375 = v374, v376 = CFGetTypeID(v374), v376 == CFNumberGetTypeID()))
      {
        CFNumberGetValue(v375, kCFNumberIntType, &buf);
        v280 = buf.value;
      }

      else
      {
        v280 = 0;
      }

      v858[0] = 0;
      v377 = CFDictionaryGetValue(v789, *MEMORY[0x277CF5B78]);
      v281 = v377;
      if (v377)
      {
        v378 = CFGetTypeID(v377);
        if (v378 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v281, kCFNumberIntType, v858);
          LODWORD(v281) = v858[0];
        }

        else
        {
          LODWORD(v281) = 0;
        }
      }

      v12 = v763;
LABEL_663:
      v379 = v810;
      if (v810)
      {
        v380 = v815;
        v381 = v810;
        do
        {
          v382 = *v380++;
          *(v382 + 100) += v200;
          --v381;
        }

        while (v381);
      }

      if (*(v6 + 4360))
      {
        v383 = v379 > 1;
        bzero(&buf, 0x164uLL);
        if (cf2)
        {
          v384 = 591;
        }

        else
        {
          v384 = 583;
        }

        WORD2(buf.value) = v384;
        buf.timescale = *(v6 + 156) | (v383 << 31) | buf.timescale & 0x7FFF0000;
        LOWORD(buf.flags) = v61;
        v832 = v207;
        *&v838[32] = *&v848[4].epoch;
        *&v838[16] = *&v848[4].value;
        *&v838[96] = *&v848[7].timescale;
        *&v838[80] = *&v848[6].epoch;
        *&v838[64] = *&v848[6].value;
        *&v838[48] = *&v848[5].timescale;
        v837 = *&v848[2].epoch;
        *v838 = *&v848[3].timescale;
        v833 = *&v848[0].value;
        v834 = *&v848[0].epoch;
        v835 = *&v848[1].timescale;
        v836 = *&v848[2].value;
        LOWORD(v839) = v280;
        *&v838[112] = v281;
        WORD1(v839) = 256;
        if (v61 >= 1)
        {
          p_buf = &buf;
          v386 = v859;
          v387 = __b;
          do
          {
            HIWORD(p_buf->flags) = vcvtd_n_s64_f64(*v387, 8uLL);
            v388 = v775;
            if ((v775 & 0x100000000) == 0)
            {
              v388 = vcvtd_n_s64_f64(*v386, 8uLL);
            }

            LOWORD(p_buf[13].value) = v388;
            p_buf = (p_buf + 2);
            ++v386;
            ++v387;
            --v61;
          }

          while (v61);
        }

        if (valuePtr)
        {
          BYTE4(v839) = 1;
          *&v840[6] = valuePtr;
          *&v840[12] = v774;
          *&v840[4] = v768 & 1;
          if (v774)
          {
            v389 = 1;
          }

          else
          {
            v389 = 2;
          }

          *&v840[8] = v389;
        }

        v390 = LaunchStillImageCapture(*v806, v809, &buf, 0x164u);
      }

      else
      {
        bzero(&buf, 0x138uLL);
        if (cf2)
        {
          v391 = 588;
        }

        else
        {
          v391 = 546;
        }

        WORD2(buf.value) = v391;
        buf.timescale = buf.timescale & 0x7FFF0000 | *(v6 + 156);
        LOWORD(buf.flags) = v61;
        v832 = v207;
        *&v838[32] = *&v848[4].epoch;
        *&v838[16] = *&v848[4].value;
        *&v838[96] = *&v848[7].timescale;
        *&v838[80] = *&v848[6].epoch;
        *&v838[64] = *&v848[6].value;
        *&v838[48] = *&v848[5].timescale;
        v837 = *&v848[2].epoch;
        *v838 = *&v848[3].timescale;
        v833 = *&v848[0].value;
        v834 = *&v848[0].epoch;
        v835 = *&v848[1].timescale;
        v836 = *&v848[2].value;
        LOWORD(v839) = v280;
        *&v838[112] = v281;
        WORD1(v839) = 256;
        if (v61 >= 1)
        {
          v392 = &buf.flags + 1;
          v393 = __b;
          do
          {
            v394 = *v393++;
            *v392++ = vcvtd_n_s64_f64(v394, 8uLL);
            --v61;
          }

          while (v61);
        }

        if (valuePtr)
        {
          BYTE4(v839) = 1;
          *&v840[6] = valuePtr;
          *&v840[12] = v774;
          *&v840[4] = v768 & 1;
          if (v774)
          {
            v395 = 1;
          }

          else
          {
            v395 = 2;
          }

          *&v840[8] = v395;
        }

        v390 = LaunchStillImageCapture(*v806, v809, &buf, 0x138u);
        v12 = v763;
      }

      v396 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v396 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v396;
      }

      if (os_log_type_enabled(v396, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.value) = 67109120;
        HIDWORD(buf.value) = v390;
        _os_log_impl(&dword_2247DB000, v396, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating delta-EV bracketed capture operation. result=0x%08X\n\n", &buf, 8u);
      }

      if (v390)
      {
        v397 = v810;
        if (v810)
        {
          v398 = v815;
          do
          {
            v399 = *v398++;
            *(v399 + 100) = 0;
            --v397;
          }

          while (v397);
        }

        goto LABEL_849;
      }

LABEL_93:
      v13 = 0;
      goto LABEL_6;
    }

LABEL_849:
    v12 = v763;
    goto LABEL_33;
  }

  if (!v799)
  {
    if (v798)
    {
      v87 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v87 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v87;
      }

      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 136315138;
        *(&buf.value + 4) = "StillImageCaptureNow";
        _os_log_impl(&dword_2247DB000, v87, OS_LOG_TYPE_DEFAULT, "%s - Initiating OIS bracketed capture\n", &buf, 0xCu);
      }

      v88 = *MEMORY[0x277CF53F0];
      v89 = CFDictionaryGetValue(v800, *MEMORY[0x277CF53F0]);
      if (!v89)
      {
        goto LABEL_33;
      }

      v90 = v89;
      v91 = CFArrayGetCount(v89);
      if (v91 > 21)
      {
        goto LABEL_33;
      }

      v92 = v91;
      if (!v91)
      {
        goto LABEL_33;
      }

      v763 = v12;
      v818 = 0;
      memset(__b, 0, sizeof(__b));
      memset(v859, 0, 84);
      if (v91 >= 1)
      {
        v93 = 0;
        v94 = __b;
        do
        {
          v95 = CFArrayGetValueAtIndex(v90, v93);
          CFNumberGetValue(v95, kCFNumberSInt32Type, v94);
          ++v93;
          v94 = (v94 + 4);
        }

        while (v92 != v93);
      }

      v96 = valuePtr;
      if (!*(v6 + 4360))
      {
        goto LABEL_531;
      }

      v97 = CFDictionaryGetValue(v7, *MEMORY[0x277CF56C8]);
      v98 = v97;
      if (v97)
      {
        v99 = CFGetTypeID(v97);
        if (v99 == CFDictionaryGetTypeID())
        {
          v100 = CFDictionaryGetValue(v98, v88);
          v98 = v100;
          if (v100)
          {
            v101 = CFGetTypeID(v100);
            if (v101 == CFArrayGetTypeID())
            {
              if (CFArrayGetCount(v98) != v92)
              {
                goto LABEL_849;
              }

              v102 = 1;
              goto LABEL_525;
            }
          }
        }

        else
        {
          v98 = 0;
        }
      }

      v102 = 0;
LABEL_525:
      v96 = valuePtr;
      if (v92 >= 1)
      {
        v291 = 0;
        v292 = v859;
        do
        {
          if (v102)
          {
            v293 = CFArrayGetValueAtIndex(v98, v291);
            CFNumberGetValue(v293, kCFNumberSInt32Type, v292);
            v96 = valuePtr;
          }

          else
          {
            *v292 = *(__b + v291);
          }

          ++v291;
          ++v292;
        }

        while (v92 != v291);
      }

LABEL_531:
      v294 = v96 + v92 + 1;
      if (v778 == -1)
      {
        v295 = v96 + v92;
      }

      else
      {
        v295 = 0;
      }

      if (v777 == -1)
      {
        v296 = v96 + v92;
      }

      else
      {
        v296 = 0;
      }

      if (v810)
      {
        v297 = 0;
        if (v780)
        {
          v298 = v96 + v92 + 1;
        }

        else
        {
          v298 = 0;
        }

        do
        {
          v299 = v815[v297];
          *(v299 + 576) = v796;
          if (AllocateAndSendOneShotBuffers(v299, v294, v298, v295, v296, 0))
          {
            goto LABEL_724;
          }
        }

        while (++v297 < v810);
      }

      if (v764 || v766)
      {
        v300 = v783;
      }

      else
      {
        v300 = 1;
      }

      if (*(v6 + 4360))
      {
        v301 = 8;
      }

      else
      {
        v301 = 3;
      }

      if (H16ISP::H16ISPDevice::SetAEBracketingMode(*(*v806 + 24), v762, v301, v300))
      {
        goto LABEL_849;
      }

      if (!v789)
      {
        goto LABEL_562;
      }

      v302 = CFGetTypeID(v789);
      if (v302 != CFDictionaryGetTypeID())
      {
        goto LABEL_562;
      }

      v303 = CFDictionaryGetValue(v789, *MEMORY[0x277CF57E0]);
      if (!v303)
      {
        goto LABEL_562;
      }

      v304 = v303;
      v305 = CFGetTypeID(v303);
      if (v305 != CFArrayGetTypeID())
      {
        goto LABEL_849;
      }

      if (CFArrayGetCount(v304))
      {
        v306 = 0;
        v307 = &v848[0].value + 3;
        while (1)
        {
          v308 = CFArrayGetValueAtIndex(v304, v306);
          if (!v308)
          {
            break;
          }

          v309 = v308;
          v310 = CFGetTypeID(v308);
          if (v310 != CFDictionaryGetTypeID())
          {
            break;
          }

          LODWORD(buf.value) = 0;
          v858[0] = 0;
          v857[0] = 0;
          v856[0] = 0;
          v808[1] = 0;
          if (H16ISPGetRectParamsFromDict(v309, &buf, v858, v857, v856, &v808[1], 1u))
          {
            break;
          }

          *(v307 - 3) = v306;
          *(v307 - 1) = buf.value;
          *v307 = v858[0];
          v307[1] = v857[0];
          v307[2] = v856[0];
          v311 = v306 + 1;
          v312 = CFArrayGetCount(v304);
          if (v306 <= 0xE)
          {
            v307 += 6;
            ++v306;
            if (v311 < v312)
            {
              continue;
            }
          }

          goto LABEL_563;
        }

        LOWORD(v311) = v306;
      }

      else
      {
LABEL_562:
        LOWORD(v311) = 0;
      }

LABEL_563:
      v313 = v810;
      if (v810)
      {
        v314 = v815;
        v315 = v810;
        do
        {
          v316 = *v314++;
          *(v316 + 100) += v294;
          --v315;
        }

        while (v315);
      }

      if (*(v6 + 4360))
      {
        v317 = v313 > 1;
        bzero(&buf, 0x164uLL);
        if (cf2)
        {
          v318 = 592;
        }

        else
        {
          v318 = 584;
        }

        WORD2(buf.value) = v318;
        buf.timescale = *(v6 + 156) | (v317 << 31) | buf.timescale & 0x7FFF0000;
        LOWORD(buf.flags) = v92;
        if (v92 >= 1)
        {
          v319 = &buf;
          v320 = v859;
          v321 = __b;
          do
          {
            v322 = *v321++;
            HIWORD(v319->flags) = v322;
            LOWORD(v323) = v775;
            if ((v775 & 0x100000000) == 0)
            {
              v323 = *v320;
            }

            LOWORD(v319[13].value) = v323;
            v319 = (v319 + 2);
            ++v320;
            --v92;
          }

          while (v92);
        }

        v832 = v311;
        *&v838[48] = *&v848[5].timescale;
        *&v838[64] = *&v848[6].value;
        *&v838[80] = *&v848[6].epoch;
        *&v838[96] = *&v848[7].timescale;
        v837 = *&v848[2].epoch;
        *v838 = *&v848[3].timescale;
        *&v838[16] = *&v848[4].value;
        *&v838[32] = *&v848[4].epoch;
        v833 = *&v848[0].value;
        v834 = *&v848[0].epoch;
        v835 = *&v848[1].timescale;
        v836 = *&v848[2].value;
        LOWORD(v839) = 0;
        *&v838[112] = 0;
        if (valuePtr)
        {
          BYTE4(v839) = 1;
          *&v840[6] = valuePtr;
          *&v840[12] = v774;
          *&v840[4] = v768 & 1;
          if (v774)
          {
            v324 = 1;
          }

          else
          {
            v324 = 2;
          }

          *&v840[8] = v324;
        }

        v325 = *v806;
        v326 = 356;
      }

      else
      {
        bzero(&buf, 0x138uLL);
        if (cf2)
        {
          v364 = 589;
        }

        else
        {
          v364 = 573;
        }

        WORD2(buf.value) = v364;
        buf.timescale = buf.timescale & 0x7FFF0000 | *(v6 + 156);
        LOWORD(buf.flags) = v92;
        if (v92 >= 1)
        {
          v365 = &buf.flags + 1;
          v366 = __b;
          do
          {
            v367 = *v366++;
            *v365++ = v367;
            --v92;
          }

          while (v92);
        }

        v832 = v311;
        *&v838[48] = *&v848[5].timescale;
        *&v838[64] = *&v848[6].value;
        *&v838[80] = *&v848[6].epoch;
        *&v838[96] = *&v848[7].timescale;
        v837 = *&v848[2].epoch;
        *v838 = *&v848[3].timescale;
        *&v838[16] = *&v848[4].value;
        *&v838[32] = *&v848[4].epoch;
        v833 = *&v848[0].value;
        v834 = *&v848[0].epoch;
        v835 = *&v848[1].timescale;
        v836 = *&v848[2].value;
        LOWORD(v839) = 0;
        *&v838[112] = 0;
        if (valuePtr)
        {
          BYTE4(v839) = 1;
          *&v840[6] = valuePtr;
          *&v840[12] = v774;
          *&v840[4] = v768 & 1;
          if (v774)
          {
            v368 = 1;
          }

          else
          {
            v368 = 2;
          }

          *&v840[8] = v368;
        }

        v325 = *v806;
        v326 = 312;
      }

      v369 = LaunchStillImageCapture(v325, v809, &buf, v326);
      v370 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v370 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v370;
      }

      if (os_log_type_enabled(v370, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.value) = 67109120;
        HIDWORD(buf.value) = v369;
        _os_log_impl(&dword_2247DB000, v370, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating OIS bracketed capture operation. result=0x%08X\n\n", &buf, 8u);
      }

      if (v369)
      {
        v371 = v810;
        if (v810)
        {
          v372 = v815;
          do
          {
            v373 = *v372++;
            *(v373 + 100) = 0;
            --v371;
          }

          while (v371);
        }

        goto LABEL_849;
      }

LABEL_1232:
      v13 = 0;
      goto LABEL_908;
    }

    if (*&v788[8])
    {
      v176 = v12;
      LOWORD(v859[0]) = 0;
      LOWORD(v858[0]) = 0;
      v848[0].value = 0;
      v177 = CFDictionaryGetValue(v797, @"NumDoublets");
      v178 = CFDictionaryGetValue(v797, @"Randomize");
      v179 = CFDictionaryGetValue(v797, @"PowerProfile");
      v180 = CFDictionaryGetValue(v797, @"Nonce");
      if (v177)
      {
        if (v178)
        {
          if (v179)
          {
            v181 = v180;
            if (v180)
            {
              v182 = CFGetTypeID(v177);
              if (v182 == CFNumberGetTypeID())
              {
                v183 = CFGetTypeID(v178);
                if (v183 == CFBooleanGetTypeID())
                {
                  v184 = CFGetTypeID(v179);
                  if (v184 == CFNumberGetTypeID())
                  {
                    v185 = CFGetTypeID(v181);
                    if (v185 == CFNumberGetTypeID())
                    {
                      CFNumberGetValue(v177, kCFNumberSInt16Type, v859);
                      v186 = CFEqual(v178, *MEMORY[0x277CBED28]) != 0;
                      CFNumberGetValue(v179, kCFNumberSInt16Type, v858);
                      CFNumberGetValue(v181, kCFNumberSInt64Type, v848);
                      v187 = v859[0];
                      if (LOWORD(v859[0]))
                      {
                        v188 = v810;
                        if (v810)
                        {
                          v189 = 2 * LOWORD(v859[0]);
                          v190 = v815;
                          do
                          {
                            v191 = *v190++;
                            *(v191 + 100) = v189;
                            --v188;
                          }

                          while (v188);
                        }

                        bzero(&buf, 0x64uLL);
                        WORD2(buf.value) = 12291;
                        buf.timescale = *(v6 + 156);
                        LOWORD(buf.flags) = v187;
                        HIWORD(buf.flags) = v186;
                        LOWORD(buf.epoch) = v858[0];
                        v192 = LaunchStillImageCapture(*v806, v809, &buf, 0x64u);
                        v193 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                        {
                          v193 = os_log_create("com.apple.isp", "plugin");
                          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v193;
                        }

                        if (os_log_type_enabled(v193, OS_LOG_TYPE_INFO))
                        {
                          LODWORD(__b[0]) = 67109120;
                          HIDWORD(__b[0]) = v192;
                          _os_log_impl(&dword_2247DB000, v193, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating Bio bracketed capture operation. result=0x%08X\n\n", __b, 8u);
                        }

                        if (!v192)
                        {
                          v13 = 0;
                          v12 = v176;
                          goto LABEL_6;
                        }

                        v194 = v810;
                        if (v810)
                        {
                          v195 = v815;
                          do
                          {
                            v196 = *v195++;
                            *(v196 + 100) = 0;
                            --v194;
                          }

                          while (v194);
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

      v12 = v176;
      goto LABEL_33;
    }

    if (*&v788[4])
    {
      LOWORD(__b[0]) = 0;
      v218 = CFDictionaryGetValue(v795, @"UseDoublets");
      v219 = CFDictionaryGetValue(v795, @"Pattern");
      if (!v218)
      {
        goto LABEL_33;
      }

      v220 = v219;
      if (!v219)
      {
        goto LABEL_33;
      }

      v221 = CFGetTypeID(v218);
      if (v221 != CFBooleanGetTypeID())
      {
        goto LABEL_33;
      }

      v222 = CFGetTypeID(v220);
      if (v222 != CFNumberGetTypeID())
      {
        goto LABEL_33;
      }

      v223 = CFEqual(v218, *MEMORY[0x277CBED28]);
      CFNumberGetValue(v220, kCFNumberSInt16Type, __b);
      v224 = v810;
      if (v810)
      {
        if (v223)
        {
          v225 = 2;
        }

        else
        {
          v225 = 1;
        }

        v226 = v815;
        do
        {
          v227 = *v226++;
          *(v227 + 100) = v225;
          --v224;
        }

        while (v224);
      }

      bzero(&buf, 0x14uLL);
      WORD2(buf.value) = 12292;
      buf.timescale = *(v6 + 156);
      LOWORD(buf.flags) = v223 != 0;
      HIWORD(buf.flags) = __b[0];
      v228 = LaunchStillImageCapture(*v806, v809, &buf, 0x14u);
      v229 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v229 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v229;
      }

      if (os_log_type_enabled(v229, OS_LOG_TYPE_INFO))
      {
        LODWORD(v848[0].value) = 67109120;
        HIDWORD(v848[0].value) = v228;
        _os_log_impl(&dword_2247DB000, v229, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating Probe-pattern bracketed capture operation. result=0x%08X\n\n", v848, 8u);
      }

      if (v228)
      {
        v230 = v810;
        if (v810)
        {
          v231 = v815;
          do
          {
            v232 = *v231++;
            *(v232 + 100) = 0;
            --v230;
          }

          while (v230);
        }

        goto LABEL_33;
      }

      goto LABEL_93;
    }

    v763 = v12;
    if (*v788)
    {
      v260 = v792;
      v261 = CFArrayGetCount(v792);
      bzero(v848, 0x54uLL);
      bzero(__b, 0x54uLL);
      bzero(v859, 0x54uLL);
      bzero(v858, 0x54uLL);
      bzero(v857, 0x54uLL);
      if (v261)
      {
        v262 = 0;
        v799 = *MEMORY[0x277CF5608];
        v800 = *MEMORY[0x277CF5638];
        v797 = *MEMORY[0x277CF45E8];
        v798 = *MEMORY[0x277CF45E0];
        v794 = v261;
        valuePtr = __b;
        v263 = v859;
        v264 = v858;
        v265 = v857;
        v795 = *MEMORY[0x277CF45F0];
        LODWORD(v801) = v261;
        while (1)
        {
          theArray = v265;
          cf = v264;
          v266 = v263;
          LODWORD(buf.value) = 0;
          v856[0] = 0;
          v808[1] = 0;
          *v804 = v262;
          v267 = CFArrayGetValueAtIndex(v260, v262);
          if (!v267)
          {
            break;
          }

          v268 = v267;
          v269 = CFGetTypeID(v267);
          if (v269 != CFDictionaryGetTypeID())
          {
            break;
          }

          v270 = CFDictionaryGetValue(v268, v800);
          v271 = CFDictionaryGetValue(v268, v799);
          v272 = CFDictionaryGetValue(v268, v798);
          v273 = CFDictionaryGetValue(v268, v797);
          v274 = CFDictionaryGetValue(v268, v795);
          v275 = CFDictionaryGetValue(v268, @"AdditionalBlankingTime");
          v276 = CFDictionaryGetValue(v268, @"Pattern");
          if (!v272)
          {
            break;
          }

          v277 = v276;
          CFNumberGetValue(v272, kCFNumberSInt32Type, &buf);
          if (v270)
          {
            CFNumberGetValue(v270, kCFNumberSInt32Type, valuePtr);
          }

          if (v271)
          {
            CFNumberGetValue(v271, kCFNumberSInt32Type, v266);
          }

          if (v273)
          {
            CFNumberGetValue(v273, kCFNumberSInt32Type, v856);
          }

          v261 = v801;
          if (v274)
          {
            CFNumberGetValue(v274, kCFNumberSInt32Type, &v808[1]);
          }

          if (v275)
          {
            CFNumberGetValue(v275, kCFNumberSInt32Type, cf);
          }

          if (v277)
          {
            CFNumberGetValue(v277, kCFNumberSInt32Type, theArray);
          }

          v260 = v792;
          if (LODWORD(buf.value) == 2)
          {
            if (v808[1] == 1)
            {
              if (v856[0] == 1)
              {
                v279 = 4;
              }

              else
              {
                v279 = 2;
              }
            }

            else if (v856[0] == 1)
            {
              v279 = 3;
            }

            else
            {
              v279 = 1;
            }

            v278 = *v804;
            *(&v848[0].value + *v804) = v279;
          }

          else
          {
            v278 = *v804;
            if (LODWORD(buf.value) == 1)
            {
              *(&v848[0].value + *v804) = 4096;
            }

            else
            {
              *(&v848[0].value + *v804) = 0;
            }
          }

          v262 = v278 + 1;
          valuePtr = valuePtr + 4;
          v263 = v266 + 1;
          v264 = (cf + 4);
          v265 = (theArray + 4);
          if (v794 == v262)
          {
            goto LABEL_582;
          }
        }

        v261 = v801;
      }

LABEL_582:
      if (v778 == -1)
      {
        v327 = v261;
      }

      else
      {
        v327 = 0;
      }

      if (v777 == -1)
      {
        v328 = v261;
      }

      else
      {
        v328 = 0;
      }

      if (v810)
      {
        v329 = 0;
        if (v780)
        {
          v330 = v261;
        }

        else
        {
          v330 = 0;
        }

        while (1)
        {
          v331 = v815[v329];
          *(v331 + 576) = v796;
          if (AllocateAndSendOneShotBuffers(v331, v261, v330, v327, v328, 0))
          {
            goto LABEL_724;
          }

          ++v329;
          v332 = v810;
          if (v329 >= v810)
          {
            goto LABEL_605;
          }
        }
      }

      v332 = 0;
LABEL_605:
      bzero(&buf, 0x138uLL);
      WORD2(buf.value) = 12290;
      buf.timescale = buf.timescale & 0x7FFF0000 | *(v6 + 156) | ((*(v6 + 4360) != 0) << 31);
      LOWORD(buf.flags) = v261;
      if (v261)
      {
        v338 = &v838[2];
        v339 = &v838[44];
        v340 = v261;
        v341 = v848;
        v342 = __b;
        v343 = v859;
        v344 = v857;
        v345 = v858;
        do
        {
          v346 = v341->value;
          v341 = (v341 + 4);
          *v338 = v346;
          v347 = *v342++;
          *(v339 - 42) = v347;
          v348 = *v343++;
          *(v338 - 21) = v348;
          v349 = *v345++;
          *v339++ = v349;
          v350 = *v344++;
          v338[63] = v350;
          ++v338;
          --v340;
        }

        while (v340);
      }

      if (v332)
      {
        v351 = v815;
        v352 = v332;
        do
        {
          v353 = *v351++;
          *(v353 + 100) += v261;
          --v352;
        }

        while (v352);
      }

      v354 = LaunchStillImageCapture(*v806, v809, &buf, 0x138u);
      v355 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v355 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v355;
      }

      if (os_log_type_enabled(v355, OS_LOG_TYPE_INFO))
      {
        v856[0] = 67109120;
        v856[1] = v354;
        _os_log_impl(&dword_2247DB000, v355, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating projector bracketed capture operation. result=0x%08X\n\n", v856, 8u);
      }

      if (v354)
      {
        v356 = v810;
        if (v810)
        {
          v357 = v815;
          do
          {
            v358 = *v357++;
            *(v358 + 100) = 0;
            --v356;
          }

          while (v356);
        }

        goto LABEL_849;
      }

      goto LABEL_1232;
    }

    *v804 = v29;
    if (v793)
    {
      v284 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (*(v6 + 4360))
      {
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v284 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v284;
        }

        if (os_log_type_enabled(v284, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.value) = 136315138;
          *(&buf.value + 4) = "StillImageCaptureNow";
          _os_log_impl(&dword_2247DB000, v284, OS_LOG_TYPE_DEFAULT, "%s - Initiating dual unified bracketed capture\n", &buf, 0xCu);
        }

        bzero(__b, 0x264uLL);
        v859[0] = 500;
        WORD2(__b[0]) = 604;
        v285 = *(v6 + 156);
        LODWORD(__b[1]) = __b[1] & 0x7FFF0000 | v285 | ((v810 > 1) << 31);
        __src[2] = v285;
        __src[485] = 16;
        WORD2(v848[0].value) = __src[1];
        v286 = HasFlashBracket(v793);
        LODWORD(v797) = v286;
        if (theDict && !v286)
        {
          GetPerFrameTuningParam(theDict, &__src[16 * LOBYTE(__src[3]) + 4], v6);
          v287 = __src[3];
          __src[16 * LOBYTE(__src[3]) + 9] = 2;
          LOBYTE(__src[3]) = v287 + 1;
          v288 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF6160]);
          if (v288 && CFEqual(v288, *MEMORY[0x277CBED28]))
          {
            __src[484] = 1;
          }

          v286 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF6150]);
          if (v286)
          {
            v286 = CFBooleanGetValue(v286);
            LOBYTE(__src[486]) = v286 != 0;
          }
        }

        v289 = v810;
        if (v810)
        {
          v290 = 0;
          while (*(v815[v290] + 4369) == 1)
          {
            if (v810 == ++v290)
            {
              goto LABEL_521;
            }
          }

          v289 = v290;
        }

        else
        {
LABEL_521:
          v290 = 0;
        }

        if (v797)
        {
          __src[484] = 1;
          ExternalStrobeAttached = H16ISP::getExternalStrobeAttached(v286);
          ConfigureExternalStrobeParameters(*v806, v289, ExternalStrobeAttached);
        }

        v418 = CFDictionaryGetValue(v7, *MEMORY[0x277CF6088]);
        if (v418)
        {
          CFNumberGetValue(v418, kCFNumberSInt32Type, v859);
          v813 = 4;
        }

        LODWORD(__b[2]) = v859[0];
        v419 = CFArrayGetCount(v793);
        memcpy(v848, __src, 0x79CuLL);
        v798 = CFDictionaryGetValue(v7, *MEMORY[0x277CF6138]);
        if (v798)
        {
          if (CFArrayGetCount(v798) != v419)
          {
            goto LABEL_888;
          }

          v420 = CFDictionaryGetValue(v7, *MEMORY[0x277CF6100]);
          if (!v420 || v797)
          {
            if (v797)
            {
              LODWORD(v848[80].epoch) = 1;
            }
          }

          else
          {
            v421 = v420;
            GetPerFrameTuningParam(v420, &v848[-2] + 64 * LOBYTE(__src[3]), v815[v290]);
            *(&v848[-1] + 16 * LOBYTE(__src[3]) - 1) = 2;
            v422 = CFDictionaryGetValue(v421, *MEMORY[0x277CF6160]);
            if (v422 && CFEqual(v422, *MEMORY[0x277CBED28]))
            {
              LODWORD(v848[80].epoch) = 1;
            }

            v423 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF6150]);
            if (v423)
            {
              LOBYTE(v848[81].value) = CFBooleanGetValue(v423) != 0;
            }
          }
        }

        if (!v419)
        {
          LOWORD(v480) = 0;
          v494 = __src[3];
LABEL_890:
          LOBYTE(v848[0].flags) = v494;
          WORD2(__b[1]) = v480;
          v495 = CFArrayGetCount(v793);
          if (v789 && GetAFWindowParam(v789, &__b[2] + 4, &__b[1] + 3))
          {
            goto LABEL_1232;
          }

          if (v785)
          {
            v495 += CFArrayGetCount(v785);
            v820 = 298;
            v821 = v821 & 0x7FFF0000 | LOWORD(__b[1]) | ((v810 > 1) << 31);
            v823 = valuePtr;
            v822 = v768 & 1;
            v824 = 2;
            v825 = 1;
            v826 = v862;
            v827 = v862;
          }

          *(v6 + 576) = theDict != 0;
          if (H16ISP::H16ISPDevice::SetAEBracketingMode(*(*v806 + 24), v762, 16, v783))
          {
            goto LABEL_1232;
          }

          v496 = LOBYTE(__src[3]);
          if (v778 == -1)
          {
            if (LOBYTE(__src[3]))
            {
              v595 = (LOBYTE(__src[3]) + 15) & 0x1F0;
              v596 = xmmword_2249BBC60;
              v597 = xmmword_2249BBC70;
              v598 = xmmword_2249BBC80;
              v599 = xmmword_2249BBC90;
              v600 = xmmword_2249BBCA0;
              v601 = xmmword_2249BBCB0;
              v602 = xmmword_2249BBCC0;
              v603 = vdupq_n_s64(LOBYTE(__src[3]) - 1);
              v604 = xmmword_2249B9820;
              v605 = __src;
              v606 = vdupq_n_s64(0x10uLL);
              do
              {
                v607 = vmovn_s64(vcgeq_u64(v603, v604));
                if (vuzp1_s8(vuzp1_s16(v607, *v596.i8), *v596.i8).u8[0])
                {
                  v605[58] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v607, *&v596), *&v596).i8[1])
                {
                  v605[122] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v596, vmovn_s64(vcgeq_u64(v603, *&v602))), *&v596).i8[2])
                {
                  v605[186] = 1;
                  v605[250] = 1;
                }

                v608 = vmovn_s64(vcgeq_u64(v603, v601));
                if (vuzp1_s8(*&v596, vuzp1_s16(v608, *&v596)).i32[1])
                {
                  v605[314] = 1;
                }

                if (vuzp1_s8(*&v596, vuzp1_s16(v608, *&v596)).i8[5])
                {
                  v605[378] = 1;
                }

                if (vuzp1_s8(*&v596, vuzp1_s16(*&v596, vmovn_s64(vcgeq_u64(v603, *&v600)))).i8[6])
                {
                  v605[442] = 1;
                  v605[506] = 1;
                }

                v609 = vmovn_s64(vcgeq_u64(v603, v599));
                if (vuzp1_s8(vuzp1_s16(v609, *v596.i8), *v596.i8).u8[0])
                {
                  v605[570] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v609, *&v596), *&v596).i8[1])
                {
                  v605[634] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v596, vmovn_s64(vcgeq_u64(v603, *&v598))), *&v596).i8[2])
                {
                  v605[698] = 1;
                  v605[762] = 1;
                }

                v610 = vmovn_s64(vcgeq_u64(v603, v597));
                if (vuzp1_s8(*&v596, vuzp1_s16(v610, *&v596)).i32[1])
                {
                  v605[826] = 1;
                }

                if (vuzp1_s8(*&v596, vuzp1_s16(v610, *&v596)).i8[5])
                {
                  v605[890] = 1;
                }

                if (vuzp1_s8(*&v596, vuzp1_s16(*&v596, vmovn_s64(vcgeq_u64(v603, *&v596)))).i8[6])
                {
                  v605[954] = 1;
                  v605[1018] = 1;
                }

                v601 = vaddq_s64(v601, v606);
                v602 = vaddq_s64(v602, v606);
                v604 = vaddq_s64(v604, v606);
                v600 = vaddq_s64(v600, v606);
                v599 = vaddq_s64(v599, v606);
                v598 = vaddq_s64(v598, v606);
                v597 = vaddq_s64(v597, v606);
                v605 += 1024;
                v596 = vaddq_s64(v596, v606);
                v595 -= 16;
              }

              while (v595);
            }

            flags_low = LOBYTE(v848[0].flags);
            if (LOBYTE(v848[0].flags))
            {
              v612 = (LOBYTE(v848[0].flags) + 15) & 0x1F0;
              v613 = xmmword_2249BBC60;
              v614 = xmmword_2249BBC70;
              v615 = xmmword_2249BBC80;
              v616 = xmmword_2249BBC90;
              v617 = xmmword_2249BBCA0;
              v618 = xmmword_2249BBCB0;
              v619 = xmmword_2249BBCC0;
              v620 = vdupq_n_s64(LOBYTE(v848[0].flags) - 1);
              v621 = xmmword_2249B9820;
              v622 = v848;
              v623 = vdupq_n_s64(0x10uLL);
              do
              {
                v624 = vmovn_s64(vcgeq_u64(v620, v621));
                if (vuzp1_s8(vuzp1_s16(v624, *v613.i8), *v613.i8).u8[0])
                {
                  BYTE2(v622[2].timescale) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v624, *&v613), *&v613).i8[1])
                {
                  BYTE2(v622[5].value) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v613, vmovn_s64(vcgeq_u64(v620, *&v619))), *&v613).i8[2])
                {
                  BYTE2(v622[7].epoch) = 1;
                  BYTE2(v622[10].timescale) = 1;
                }

                v625 = vmovn_s64(vcgeq_u64(v620, v618));
                if (vuzp1_s8(*&v613, vuzp1_s16(v625, *&v613)).i32[1])
                {
                  BYTE2(v622[13].value) = 1;
                }

                if (vuzp1_s8(*&v613, vuzp1_s16(v625, *&v613)).i8[5])
                {
                  BYTE2(v622[15].epoch) = 1;
                }

                if (vuzp1_s8(*&v613, vuzp1_s16(*&v613, vmovn_s64(vcgeq_u64(v620, *&v617)))).i8[6])
                {
                  BYTE2(v622[18].timescale) = 1;
                  BYTE2(v622[21].value) = 1;
                }

                v626 = vmovn_s64(vcgeq_u64(v620, v616));
                if (vuzp1_s8(vuzp1_s16(v626, *v613.i8), *v613.i8).u8[0])
                {
                  BYTE2(v622[23].epoch) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v626, *&v613), *&v613).i8[1])
                {
                  BYTE2(v622[26].timescale) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v613, vmovn_s64(vcgeq_u64(v620, *&v615))), *&v613).i8[2])
                {
                  BYTE2(v622[29].value) = 1;
                  BYTE2(v622[31].epoch) = 1;
                }

                v627 = vmovn_s64(vcgeq_u64(v620, v614));
                if (vuzp1_s8(*&v613, vuzp1_s16(v627, *&v613)).i32[1])
                {
                  BYTE2(v622[34].timescale) = 1;
                }

                if (vuzp1_s8(*&v613, vuzp1_s16(v627, *&v613)).i8[5])
                {
                  BYTE2(v622[37].value) = 1;
                }

                if (vuzp1_s8(*&v613, vuzp1_s16(*&v613, vmovn_s64(vcgeq_u64(v620, *&v613)))).i8[6])
                {
                  BYTE2(v622[39].epoch) = 1;
                  BYTE2(v622[42].timescale) = 1;
                }

                v618 = vaddq_s64(v618, v623);
                v619 = vaddq_s64(v619, v623);
                v621 = vaddq_s64(v621, v623);
                v617 = vaddq_s64(v617, v623);
                v616 = vaddq_s64(v616, v623);
                v615 = vaddq_s64(v615, v623);
                v614 = vaddq_s64(v614, v623);
                v622 = (v622 + 1024);
                v613 = vaddq_s64(v613, v623);
                v612 -= 16;
              }

              while (v612);
            }

            v501 = v495 + 1;
            LODWORD(cf) = flags_low;
            v497 = v501;
          }

          else
          {
            v497 = 0;
            if (LOBYTE(__src[3]))
            {
              v498 = &__src[14] + 2;
              v499 = LOBYTE(__src[3]);
              do
              {
                v500 = *v498;
                v498 += 64;
                v497 += v500;
                --v499;
              }

              while (v499);
            }

            LODWORD(cf) = LOBYTE(v848[0].flags);
            if (LOBYTE(v848[0].flags))
            {
              v501 = 0;
              v502 = &v848[2].timescale + 2;
              v503 = LOBYTE(v848[0].flags);
              do
              {
                v504 = *v502;
                v502 += 64;
                v501 += v504;
                --v503;
              }

              while (v503);
            }

            else
            {
              LODWORD(cf) = 0;
              v501 = 0;
            }
          }

          if (v777 == -1)
          {
            if (v496)
            {
              v702 = (v496 + 15) & 0x1F0;
              v703 = xmmword_2249BBC60;
              v704 = xmmword_2249BBC70;
              v705 = xmmword_2249BBC80;
              v706 = xmmword_2249BBC90;
              v707 = xmmword_2249BBCA0;
              v708 = xmmword_2249BBCB0;
              v709 = xmmword_2249BBCC0;
              v710 = vdupq_n_s64(v496 - 1);
              v711 = xmmword_2249B9820;
              v712 = __src;
              v713 = vdupq_n_s64(0x10uLL);
              do
              {
                v714 = vmovn_s64(vcgeq_u64(v710, v711));
                if (vuzp1_s8(vuzp1_s16(v714, *v703.i8), *v703.i8).u8[0])
                {
                  v712[59] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v714, *&v703), *&v703).i8[1])
                {
                  v712[123] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v703, vmovn_s64(vcgeq_u64(v710, *&v709))), *&v703).i8[2])
                {
                  v712[187] = 1;
                  v712[251] = 1;
                }

                v715 = vmovn_s64(vcgeq_u64(v710, v708));
                if (vuzp1_s8(*&v703, vuzp1_s16(v715, *&v703)).i32[1])
                {
                  v712[315] = 1;
                }

                if (vuzp1_s8(*&v703, vuzp1_s16(v715, *&v703)).i8[5])
                {
                  v712[379] = 1;
                }

                if (vuzp1_s8(*&v703, vuzp1_s16(*&v703, vmovn_s64(vcgeq_u64(v710, *&v707)))).i8[6])
                {
                  v712[443] = 1;
                  v712[507] = 1;
                }

                v716 = vmovn_s64(vcgeq_u64(v710, v706));
                if (vuzp1_s8(vuzp1_s16(v716, *v703.i8), *v703.i8).u8[0])
                {
                  v712[571] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v716, *&v703), *&v703).i8[1])
                {
                  v712[635] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v703, vmovn_s64(vcgeq_u64(v710, *&v705))), *&v703).i8[2])
                {
                  v712[699] = 1;
                  v712[763] = 1;
                }

                v717 = vmovn_s64(vcgeq_u64(v710, v704));
                if (vuzp1_s8(*&v703, vuzp1_s16(v717, *&v703)).i32[1])
                {
                  v712[827] = 1;
                }

                if (vuzp1_s8(*&v703, vuzp1_s16(v717, *&v703)).i8[5])
                {
                  v712[891] = 1;
                }

                if (vuzp1_s8(*&v703, vuzp1_s16(*&v703, vmovn_s64(vcgeq_u64(v710, *&v703)))).i8[6])
                {
                  v712[955] = 1;
                  v712[1019] = 1;
                }

                v708 = vaddq_s64(v708, v713);
                v709 = vaddq_s64(v709, v713);
                v711 = vaddq_s64(v711, v713);
                v707 = vaddq_s64(v707, v713);
                v706 = vaddq_s64(v706, v713);
                v705 = vaddq_s64(v705, v713);
                v704 = vaddq_s64(v704, v713);
                v712 += 1024;
                v703 = vaddq_s64(v703, v713);
                v702 -= 16;
              }

              while (v702);
            }

            if (cf)
            {
              v718 = (cf + 15) & 0x1F0;
              v719 = xmmword_2249BBC60;
              v720 = xmmword_2249BBC70;
              v721 = xmmword_2249BBC80;
              v722 = xmmword_2249BBC90;
              v723 = xmmword_2249BBCA0;
              v724 = xmmword_2249BBCB0;
              v725 = xmmword_2249BBCC0;
              v726 = vdupq_n_s64(cf - 1);
              v727 = xmmword_2249B9820;
              v728 = v848;
              v729 = vdupq_n_s64(0x10uLL);
              do
              {
                v730 = vmovn_s64(vcgeq_u64(v726, v727));
                if (vuzp1_s8(vuzp1_s16(v730, *v719.i8), *v719.i8).u8[0])
                {
                  HIBYTE(v728[2].timescale) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v730, *&v719), *&v719).i8[1])
                {
                  BYTE3(v728[5].value) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v719, vmovn_s64(vcgeq_u64(v726, *&v725))), *&v719).i8[2])
                {
                  BYTE3(v728[7].epoch) = 1;
                  HIBYTE(v728[10].timescale) = 1;
                }

                v731 = vmovn_s64(vcgeq_u64(v726, v724));
                if (vuzp1_s8(*&v719, vuzp1_s16(v731, *&v719)).i32[1])
                {
                  BYTE3(v728[13].value) = 1;
                }

                if (vuzp1_s8(*&v719, vuzp1_s16(v731, *&v719)).i8[5])
                {
                  BYTE3(v728[15].epoch) = 1;
                }

                if (vuzp1_s8(*&v719, vuzp1_s16(*&v719, vmovn_s64(vcgeq_u64(v726, *&v723)))).i8[6])
                {
                  HIBYTE(v728[18].timescale) = 1;
                  BYTE3(v728[21].value) = 1;
                }

                v732 = vmovn_s64(vcgeq_u64(v726, v722));
                if (vuzp1_s8(vuzp1_s16(v732, *v719.i8), *v719.i8).u8[0])
                {
                  BYTE3(v728[23].epoch) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v732, *&v719), *&v719).i8[1])
                {
                  HIBYTE(v728[26].timescale) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v719, vmovn_s64(vcgeq_u64(v726, *&v721))), *&v719).i8[2])
                {
                  BYTE3(v728[29].value) = 1;
                  BYTE3(v728[31].epoch) = 1;
                }

                v733 = vmovn_s64(vcgeq_u64(v726, v720));
                if (vuzp1_s8(*&v719, vuzp1_s16(v733, *&v719)).i32[1])
                {
                  HIBYTE(v728[34].timescale) = 1;
                }

                if (vuzp1_s8(*&v719, vuzp1_s16(v733, *&v719)).i8[5])
                {
                  BYTE3(v728[37].value) = 1;
                }

                if (vuzp1_s8(*&v719, vuzp1_s16(*&v719, vmovn_s64(vcgeq_u64(v726, *&v719)))).i8[6])
                {
                  BYTE3(v728[39].epoch) = 1;
                  HIBYTE(v728[42].timescale) = 1;
                }

                v724 = vaddq_s64(v724, v729);
                v725 = vaddq_s64(v725, v729);
                v727 = vaddq_s64(v727, v729);
                v723 = vaddq_s64(v723, v729);
                v722 = vaddq_s64(v722, v729);
                v721 = vaddq_s64(v721, v729);
                v720 = vaddq_s64(v720, v729);
                v728 = (v728 + 1024);
                v719 = vaddq_s64(v719, v729);
                v718 -= 16;
              }

              while (v718);
            }

            v698 = v495 + 1;
            v695 = v698;
          }

          else
          {
            v695 = 0;
            if (v496)
            {
              v696 = &__src[14] + 3;
              do
              {
                v697 = *v696;
                v696 += 64;
                v695 += v697;
                --v496;
              }

              while (v496);
            }

            if (cf)
            {
              v698 = 0;
              v699 = cf;
              v700 = &v848[2].timescale + 3;
              do
              {
                v701 = *v700;
                v700 += 64;
                v698 += v701;
                --v699;
              }

              while (v699);
            }

            else
            {
              v698 = 0;
            }
          }

          if (v810)
          {
            v734 = 0;
            v735 = v815;
            while (1)
            {
              v736 = v815[v734];
              v737 = v736[4369];
              v738 = v737 ? v497 : v501;
              v739 = v736[4369] ? v695 : v698;
              v736[576] = theDict != 0;
              if (v737)
              {
                v740 = LOBYTE(__src[3]);
                if (LOBYTE(__src[3]))
                {
                  v741 = 0;
                  v742 = &__src[17] + 1;
                  do
                  {
                    v743 = *v742;
                    v742 += 64;
                    if ((v743 & 0xFE) == 2)
                    {
                      ++v741;
                    }

                    --v740;
                  }

                  while (v740);
                }

                else
                {
                  v741 = 0;
                }
              }

              else
              {
                v741 = cf;
                if (cf)
                {
                  v741 = 0;
                  v744 = cf;
                  v745 = &v848[2].epoch + 5;
                  do
                  {
                    v746 = *v745;
                    v745 += 64;
                    if ((v746 & 0xFE) == 2)
                    {
                      ++v741;
                    }

                    --v744;
                  }

                  while (v744);
                }
              }

              v747 = v736[4256] ? 0 : v741;
              v748 = v780 ? v495 + (__src[484] == 0) : 0;
              if (AllocateAndSendOneShotBuffers(v736, v495 + (__src[484] == 0) - v747, v748, v738, v739, 0))
              {
                goto LABEL_724;
              }

              ++v734;
              v749 = v810;
              if (v734 >= v810)
              {
                if (v810)
                {
                  v750 = v495 + (__src[484] == 0);
                  v751 = v810;
                  do
                  {
                    v752 = *v735++;
                    *(v752 + 100) += v750;
                    --v751;
                  }

                  while (v751);
                }

                goto LABEL_1333;
              }
            }
          }

          v749 = 0;
LABEL_1333:
          if (((*(v6 + 1304) & 1) != 0 || (*(v6 + 1504) & 1) != 0 || *(v6 + 2504) == 1) && (*(*v804 + 160) & 1) == 0)
          {
            if (H16ISP::H16ISPDevice::ISP_SendCommand(*(*v806 + 24), __src, 0x79Cu, 0, 0xFFFFFFFF))
            {
              goto LABEL_1232;
            }

            v749 = v810;
          }

          if (v749)
          {
            for (i = 0; i < v749; ++i)
            {
              v754 = v815[i];
              if (*(v754 + 1304) & 1) != 0 || (*(v754 + 1504))
              {
                v755 = 0;
              }

              else
              {
                v755 = *(v754 + 2504) ^ 1;
              }

              if ((*(v754 + 4369) & 1) == 0 && (v755 & 1) == 0 && (*(v754 + 4256) & 1) == 0)
              {
                v848[0].timescale = *(v754 + 156);
                if (H16ISP::H16ISPDevice::ISP_SendCommand(*(*v806 + 24), v848, 0x79Cu, 0, 0xFFFFFFFF))
                {
                  goto LABEL_1232;
                }

                v749 = v810;
              }
            }
          }

          LODWORD(buf.value) = 101;
          LOBYTE(buf.timescale) = v797;
          v756 = *(*v806 + 232);
          if (v756 && v797)
          {
            H16ISP::H16ISPServicesRemote::SetProperty(v756, &buf);
          }

          if (LaunchStillImageCapture(*v806, v809, __b, 0x264u))
          {
            v757 = *(*v806 + 232);
            if (v757 && LOBYTE(buf.timescale) == 1)
            {
              LOBYTE(buf.timescale) = 0;
              H16ISP::H16ISPServicesRemote::SetProperty(v757, &buf);
            }

            v758 = v810;
            if (v810)
            {
              v759 = v815;
              do
              {
                v760 = *v759++;
                *(v760 + 100) = 0;
                --v758;
              }

              while (v758);
            }
          }

          goto LABEL_1232;
        }

        v479 = 0;
        v480 = 0;
        if (v798)
        {
          v481 = BYTE4(v775);
        }

        else
        {
          v481 = 1;
        }

        LOBYTE(v801) = v481;
        v482 = BYTE4(v775) ^ 1;
        if (!v798)
        {
          v482 = 1;
        }

        LOBYTE(v795) = v482;
        v800 = v419;
        while (1)
        {
          v483 = CFArrayGetValueAtIndex(v793, v479);
          if (!v483)
          {
            break;
          }

          v484 = &v819[v480];
          GetPerFrameBracketParamForDualUB(v483, v484, &__src[16 * LOBYTE(__src[3]) + 4], v6);
          v485 = LOBYTE(__src[3]);
          v486 = &__src[16 * LOBYTE(__src[3]) + 4];
          v486[5] = 1;
          v487 = &v819[v480 + 21];
          if (v801)
          {
            if (v795)
            {
              *v487 = *v484;
              v488 = &v848[0].epoch + 8 * v485;
              v489 = *(v486 + 1);
              *v488 = *v486;
              *(v488 + 1) = v489;
              v490 = *(v486 + 3);
              *(v488 + 2) = *(v486 + 2);
              *(v488 + 3) = v490;
            }

            else
            {
              *v487 = v775;
            }
          }

          else
          {
            v491 = CFArrayGetValueAtIndex(v798, v479);
            GetPerFrameBracketParamForDualUB(v491, v487, (&v848[0].epoch + 8 * LOBYTE(__src[3])), v815[v290]);
            LOBYTE(v485) = __src[3];
            *(&v848[1].flags + 16 * LOBYTE(__src[3])) = 1;
            if (*(v484 + 6) != *(v487 + 6))
            {
              break;
            }
          }

          if (v480)
          {
            if (*(v484 + 6) == 1 && !BYTE6(v819[v480 - 1]))
            {
              v492 = &v819[--v480];
              *(v492 + 6) = 2;
              *(v492 + 5) = *(v484 + 5);
              *(v492 + 1) = *(v484 + 1);
              v493 = &v819[v480 + 21];
              *(v493 + 6) = 2;
              *(v493 + 5) = *(v487 + 5);
              *(v493 + 1) = *(v487 + 1);
            }
          }

          else
          {
            v480 = 0;
          }

          v494 = v485 + 1;
          LOBYTE(__src[3]) = v494;
          ++v480;
          if (++v479 >= v800)
          {
            goto LABEL_890;
          }
        }

LABEL_888:
        v13 = 4294954516;
        goto LABEL_908;
      }

      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v284 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v284;
      }

      if (os_log_type_enabled(v284, OS_LOG_TYPE_DEFAULT))
      {
        v359 = *(v6 + 156);
        LODWORD(buf.value) = 136315394;
        *(&buf.value + 4) = "StillImageCaptureNow";
        LOWORD(buf.flags) = 1024;
        *(&buf.flags + 2) = v359;
        _os_log_impl(&dword_2247DB000, v284, OS_LOG_TYPE_DEFAULT, "%s - Initiating unified bracketed capture CH%d\n\n", &buf, 0x12u);
      }

      bzero(v848, 0x1214uLL);
      HIDWORD(v848[11].epoch) = *(v6 + 156);
      LODWORD(__b[0]) = 500;
      WORD2(v848[0].value) = 605;
      v848[0].flags = 65537;
      v848[0].timescale = HIDWORD(v848[11].epoch);
      __src[2] = HIDWORD(v848[11].epoch);
      __src[485] = 17;
      v360 = HasFlashBracket(v793);
      LODWORD(v801) = v360;
      if (!theDict || v360)
      {
        if (v360)
        {
          __src[484] = 1;
          v424 = H16ISP::getExternalStrobeAttached(v360);
          ConfigureExternalStrobeParameters(*v806, *(v6 + 156), v424);
          LODWORD(buf.value) = 0;
          v425 = H16ISP::H16ISPDevice::ISP_PPMAdmissionCheck(*(*v806 + 24), 1u, 0, 0x10000u, &buf);
          v426 = buf.value;
          if (LODWORD(buf.value) >= 0x10000)
          {
            v426 = 0x10000;
          }

          if (v425)
          {
            v426 = 0x10000;
          }

          LODWORD(v848[1].value) = v426;
        }
      }

      else
      {
        GetPerFrameTuningParam(theDict, &__src[16 * LOBYTE(__src[3]) + 4], v6);
        v361 = __src[3];
        __src[16 * LOBYTE(__src[3]) + 9] = 2;
        LOBYTE(__src[3]) = v361 + 1;
        v362 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF6160]);
        if (v362 && CFEqual(v362, *MEMORY[0x277CBED28]))
        {
          __src[484] = 1;
        }

        v363 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF6150]);
        if (v363)
        {
          LOBYTE(__src[486]) = CFBooleanGetValue(v363) != 0;
        }
      }

      v427 = CFDictionaryGetValue(v7, *MEMORY[0x277CF6088]);
      if (v427)
      {
        CFNumberGetValue(v427, kCFNumberSInt32Type, __b);
        v428 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v428 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v428;
        }

        if (os_log_type_enabled(v428, OS_LOG_TYPE_ERROR))
        {
          StillImageCaptureNow();
        }

        v429 = 4;
      }

      else
      {
        v429 = 0;
      }

      v813 = v429;
      HIDWORD(v848[0].epoch) = __b[0];
      v430 = CFArrayGetCount(v793);
      if (v430)
      {
        if (!H16ISP::H16ISPFrameReceiver::HasPool(*(v6 + 160), 31) && AddCntxSwRawPoolToFrameReceiver(v6, *v806))
        {
          v431 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v431 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v431;
          }

          if (os_log_type_enabled(v431, OS_LOG_TYPE_ERROR))
          {
            StillImageCaptureNow();
          }

          goto LABEL_849;
        }

        v798 = NumberOfClientRequestedHiResStillImageCaptures(v793);
        v432 = 0;
        v433 = 0;
        do
        {
          v434 = CFArrayGetValueAtIndex(v793, v432);
          if (v434)
          {
            v435 = (&v848[12] + 68 * v433);
            GetPerFrameBracketParams(v434, v435, &__src[16 * LOBYTE(__src[3]) + 4], v6);
            if (v433)
            {
              if (v435->i8[6] == 1 && !*(&v848[9].timescale + 68 * v433 + 2))
              {
                v436 = &v848[12] + 68 * --v433;
                v436[6] = 2;
                v436[5] = v435->i8[5];
                *(v436 + 1) = v435->i16[1];
                bzero(v435, 0x44uLL);
              }
            }

            else
            {
              v433 = 0;
            }

            v437 = __src[3];
            __src[16 * LOBYTE(__src[3]) + 9] = 1;
            v438 = v810;
            if (v810)
            {
              v439 = &v848[12] + 68 * v433;
              v440 = v439[4];
              v441 = *(v439 + 3);
              if (v440 == 3)
              {
                v442 = v441;
              }

              else
              {
                v442 = 0;
              }

              v443 = v811;
              do
              {
                *v443++ += v442;
                v444 = v812;
                if (v441 > v812)
                {
                  v444 = v441;
                }

                v812 = v444;
                --v438;
              }

              while (v438);
            }

            else
            {
              v440 = *(&v848[12].value + 68 * v433 + 4);
            }

            v445 = v813;
            if (v440 == 3)
            {
              v445 = 6;
            }

            v813 = v445;
            LOBYTE(__src[3]) = v437 + 1;
            ++v433;
          }

          ++v432;
        }

        while (v432 != v430);
      }

      else
      {
        v798 = NumberOfClientRequestedHiResStillImageCaptures(v793);
        v433 = 0;
      }

      v446 = CFArrayGetCount(v793);
      HIWORD(v848[0].flags) = v433;
      if (v789 && GetAFWindowParam(v789, &v848[3].epoch + 4, &v848[0].epoch))
      {
        goto LABEL_849;
      }

      if (v785)
      {
        v446 += CFArrayGetCount(v785);
        v849 = 298;
        v850 = v850 & 0x7FFF0000 | LOWORD(v848[0].timescale);
        v852 = valuePtr;
        v851 = v768 & 1;
        v853 = 2;
        v854 = 1;
        v855 = v862;
      }

      if (H16ISP::H16ISPDevice::SetAEBracketingMode(*(*v806 + 24), v762, 15, v783))
      {
        goto LABEL_849;
      }

      v447 = LOBYTE(__src[3]);
      if (v778 == -1)
      {
        if (LOBYTE(__src[3]))
        {
          v576 = (LOBYTE(__src[3]) + 15) & 0x1F0;
          v577 = xmmword_2249BBC60;
          v578 = xmmword_2249BBC70;
          v579 = xmmword_2249BBC80;
          v580 = xmmword_2249BBC90;
          v581 = xmmword_2249BBCA0;
          v582 = xmmword_2249BBCB0;
          v583 = xmmword_2249BBCC0;
          v584 = vdupq_n_s64(LOBYTE(__src[3]) - 1);
          v585 = xmmword_2249B9820;
          v586 = __src;
          v587 = vdupq_n_s64(0x10uLL);
          do
          {
            v588 = vmovn_s64(vcgeq_u64(v584, v585));
            if (vuzp1_s8(vuzp1_s16(v588, *v577.i8), *v577.i8).u8[0])
            {
              v586[58] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(v588, *&v577), *&v577).i8[1])
            {
              v586[122] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v577, vmovn_s64(vcgeq_u64(v584, *&v583))), *&v577).i8[2])
            {
              v586[186] = 1;
              v586[250] = 1;
            }

            v589 = vmovn_s64(vcgeq_u64(v584, v582));
            if (vuzp1_s8(*&v577, vuzp1_s16(v589, *&v577)).i32[1])
            {
              v586[314] = 1;
            }

            if (vuzp1_s8(*&v577, vuzp1_s16(v589, *&v577)).i8[5])
            {
              v586[378] = 1;
            }

            if (vuzp1_s8(*&v577, vuzp1_s16(*&v577, vmovn_s64(vcgeq_u64(v584, *&v581)))).i8[6])
            {
              v586[442] = 1;
              v586[506] = 1;
            }

            v590 = vmovn_s64(vcgeq_u64(v584, v580));
            if (vuzp1_s8(vuzp1_s16(v590, *v577.i8), *v577.i8).u8[0])
            {
              v586[570] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(v590, *&v577), *&v577).i8[1])
            {
              v586[634] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v577, vmovn_s64(vcgeq_u64(v584, *&v579))), *&v577).i8[2])
            {
              v586[698] = 1;
              v586[762] = 1;
            }

            v591 = vmovn_s64(vcgeq_u64(v584, v578));
            if (vuzp1_s8(*&v577, vuzp1_s16(v591, *&v577)).i32[1])
            {
              v586[826] = 1;
            }

            if (vuzp1_s8(*&v577, vuzp1_s16(v591, *&v577)).i8[5])
            {
              v586[890] = 1;
            }

            if (vuzp1_s8(*&v577, vuzp1_s16(*&v577, vmovn_s64(vcgeq_u64(v584, *&v577)))).i8[6])
            {
              v586[954] = 1;
              v586[1018] = 1;
            }

            v582 = vaddq_s64(v582, v587);
            v583 = vaddq_s64(v583, v587);
            v585 = vaddq_s64(v585, v587);
            v581 = vaddq_s64(v581, v587);
            v580 = vaddq_s64(v580, v587);
            v579 = vaddq_s64(v579, v587);
            v578 = vaddq_s64(v578, v587);
            v586 += 1024;
            v577 = vaddq_s64(v577, v587);
            v576 -= 16;
          }

          while (v576);
        }

        LODWORD(valuePtr) = v446 + 1;
      }

      else
      {
        if (!LOBYTE(__src[3]))
        {
          LODWORD(valuePtr) = 0;
          v592 = 0;
          if (v777 != -1)
          {
            goto LABEL_1144;
          }

          goto LABEL_1143;
        }

        LODWORD(valuePtr) = 0;
        v448 = &__src[14] + 2;
        v449 = LOBYTE(__src[3]);
        do
        {
          v450 = *v448;
          v448 += 64;
          LODWORD(valuePtr) = valuePtr + v450;
          --v449;
        }

        while (v449);
      }

      if (v777 != -1)
      {
        v592 = 0;
        if (v447)
        {
          v593 = &__src[14] + 3;
          do
          {
            v594 = *v593;
            v593 += 64;
            v592 += v594;
            --v447;
          }

          while (v447);
        }

LABEL_1144:
        if (v810)
        {
          v644 = 0;
          v645 = v815;
          LODWORD(v800) = v446;
          do
          {
            v646 = v815[v644];
            *(v646 + 576) = theDict != 0;
            LODWORD(cf) = __src[484] == 0;
            v647 = *(v646 + 4800);
            if (v647)
            {
              v648 = CFArrayGetCount(v647);
            }

            else
            {
              v648 = 0;
            }

            v649 = LOBYTE(__src[3]);
            if (LOBYTE(__src[3]))
            {
              v650 = 0;
              v651 = &__src[17] + 1;
              do
              {
                v652 = *v651;
                v651 += 64;
                if ((v652 & 0xFE) == 2)
                {
                  ++v650;
                }

                --v649;
              }

              while (v649);
            }

            else
            {
              v650 = 0;
            }

            v653 = v815[v644];
            if (*(v653 + 4256))
            {
              v650 = 0;
            }

            LODWORD(theArray) = v650;
            if (v648)
            {
              BufferPool = H16ISP::H16ISPFrameReceiver::getBufferPool(*(v6 + 160), 31);
              v655 = 0;
              while (1)
              {
                v656 = CFArrayGetValueAtIndex(*(v815[v644] + 4800), v655);
                v657 = H16ISP::H16ISPFrameReceiver::AddPreallocatedBuffer(*(v815[v644] + 160), 31, v656);
                if (v657)
                {
                  break;
                }

                if (v648 == ++v655)
                {
                  goto LABEL_1172;
                }
              }

              v658 = v657;
              v659 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v659 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v659;
              }

              if (os_log_type_enabled(v659, OS_LOG_TYPE_ERROR))
              {
                v664 = *(v815[v644] + 156);
                LODWORD(buf.value) = 136315650;
                *(&buf.value + 4) = "StillImageCaptureNow";
                LOWORD(buf.flags) = 1024;
                *(&buf.flags + 2) = v664;
                WORD1(buf.epoch) = 1024;
                HIDWORD(buf.epoch) = v658;
                _os_log_error_impl(&dword_2247DB000, v659, OS_LOG_TYPE_ERROR, "%s - AddPreallocatedBuffer() CH %d returns error 0x%x\n", &buf, 0x18u);
              }

LABEL_1172:
              H16ISP::H16ISPDevice::SetBufferPoolConfiguration(*(*v806 + 24), *(v815[v644] + 156), 32, *(BufferPool + 232), 0, 1u, (BufferPool + 336));
            }

            else if (v798 && *(v653 + 4888) && *(v653 + 4928) >= 1 && H16ISP::H16ISPFrameReceiver::AllocateAndSendStillImageBuffers(*(v653 + 160), 31, v798))
            {
              v761 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v761 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v761;
              }

              if (os_log_type_enabled(v761, OS_LOG_TYPE_ERROR))
              {
                StillImageCaptureNow();
              }

LABEL_1366:
              v790 = -12686;
              goto LABEL_849;
            }

            if (v780)
            {
              v660 = v800 + cf;
            }

            else
            {
              v660 = 0;
            }

            v661 = AllocateAndSendOneShotBuffers(v815[v644], v800 + cf - theArray, v660, valuePtr, v592, v648);
            v662 = *(v815[v644] + 4800);
            if (v662)
            {
              CFRelease(v662);
              *(v815[v644] + 4800) = 0;
            }

            if (v661)
            {
              goto LABEL_1366;
            }

            ++v644;
            v663 = v810;
          }

          while (v644 < v810);
          if (v810)
          {
            v665 = v800 + (__src[484] == 0);
            do
            {
              v666 = *v645++;
              *(v666 + 100) += v665;
              --v663;
            }

            while (v663);
          }
        }

        if (((*(v6 + 1304) & 1) != 0 || (*(v6 + 1504) & 1) != 0 || *(v6 + 2504) == 1) && (*(*v804 + 160) & 1) == 0)
        {
          v667 = v813 ? v813 : -1;
          if (H16ISP::H16ISPDevice::ISP_SendCommand(*(*v806 + 24), __src, 0x79Cu, 0, v667))
          {
            goto LABEL_849;
          }
        }

        v668 = (v812 / 0x3E8) / 1000.0;
        if (v668 > 1.0)
        {
          H16ISP::H16ISPFrameReceiver::SetFrameDoneTimeoutDuration(*(v6 + 160), v668 + 2.0);
        }

        LODWORD(buf.value) = 101;
        LOBYTE(buf.timescale) = v801;
        v669 = *(*v806 + 232);
        if (v669 && v801)
        {
          H16ISP::H16ISPServicesRemote::SetProperty(v669, &buf);
        }

        if (LaunchStillImageCapture(*v806, v809, v848, 0x1214u))
        {
          v670 = *(*v806 + 232);
          if (v670 && LOBYTE(buf.timescale) == 1)
          {
            LOBYTE(buf.timescale) = 0;
            H16ISP::H16ISPServicesRemote::SetProperty(v670, &buf);
          }

          v671 = v810;
          if (v810)
          {
            v672 = v815;
            do
            {
              v673 = *v672++;
              *(v673 + 100) = 0;
              --v671;
            }

            while (v671);
          }

          goto LABEL_849;
        }

        goto LABEL_1232;
      }

      if (v447)
      {
        v628 = (v447 + 15) & 0x1F0;
        v629 = xmmword_2249BBC60;
        v630 = xmmword_2249BBC70;
        v631 = xmmword_2249BBC80;
        v632 = xmmword_2249BBC90;
        v633 = xmmword_2249BBCA0;
        v634 = xmmword_2249BBCB0;
        v635 = xmmword_2249BBCC0;
        v636 = vdupq_n_s64(v447 - 1);
        v637 = xmmword_2249B9820;
        v638 = __src;
        v639 = vdupq_n_s64(0x10uLL);
        do
        {
          v640 = vmovn_s64(vcgeq_u64(v636, v637));
          if (vuzp1_s8(vuzp1_s16(v640, *v629.i8), *v629.i8).u8[0])
          {
            v638[59] = 1;
          }

          if (vuzp1_s8(vuzp1_s16(v640, *&v629), *&v629).i8[1])
          {
            v638[123] = 1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v629, vmovn_s64(vcgeq_u64(v636, *&v635))), *&v629).i8[2])
          {
            v638[187] = 1;
            v638[251] = 1;
          }

          v641 = vmovn_s64(vcgeq_u64(v636, v634));
          if (vuzp1_s8(*&v629, vuzp1_s16(v641, *&v629)).i32[1])
          {
            v638[315] = 1;
          }

          if (vuzp1_s8(*&v629, vuzp1_s16(v641, *&v629)).i8[5])
          {
            v638[379] = 1;
          }

          if (vuzp1_s8(*&v629, vuzp1_s16(*&v629, vmovn_s64(vcgeq_u64(v636, *&v633)))).i8[6])
          {
            v638[443] = 1;
            v638[507] = 1;
          }

          v642 = vmovn_s64(vcgeq_u64(v636, v632));
          if (vuzp1_s8(vuzp1_s16(v642, *v629.i8), *v629.i8).u8[0])
          {
            v638[571] = 1;
          }

          if (vuzp1_s8(vuzp1_s16(v642, *&v629), *&v629).i8[1])
          {
            v638[635] = 1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v629, vmovn_s64(vcgeq_u64(v636, *&v631))), *&v629).i8[2])
          {
            v638[699] = 1;
            v638[763] = 1;
          }

          v643 = vmovn_s64(vcgeq_u64(v636, v630));
          if (vuzp1_s8(*&v629, vuzp1_s16(v643, *&v629)).i32[1])
          {
            v638[827] = 1;
          }

          if (vuzp1_s8(*&v629, vuzp1_s16(v643, *&v629)).i8[5])
          {
            v638[891] = 1;
          }

          if (vuzp1_s8(*&v629, vuzp1_s16(*&v629, vmovn_s64(vcgeq_u64(v636, *&v629)))).i8[6])
          {
            v638[955] = 1;
            v638[1019] = 1;
          }

          v634 = vaddq_s64(v634, v639);
          v635 = vaddq_s64(v635, v639);
          v637 = vaddq_s64(v637, v639);
          v633 = vaddq_s64(v633, v639);
          v632 = vaddq_s64(v632, v639);
          v631 = vaddq_s64(v631, v639);
          v630 = vaddq_s64(v630, v639);
          v638 += 1024;
          v629 = vaddq_s64(v629, v639);
          v628 -= 16;
        }

        while (v628);
      }

LABEL_1143:
      v592 = v446 + 1;
      goto LABEL_1144;
    }

    if (!v794)
    {
      if (*(v6 + 1704) == 1)
      {
        ++*(v6 + 100);
        if (H16ISP::H16ISPDevice::CaptureNow(*(*v806 + 24), *(v6 + 156), 0))
        {
          *(v6 + 100) = 0;
          goto LABEL_849;
        }

        v523 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v523 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v523;
        }

        if (!os_log_type_enabled(v523, OS_LOG_TYPE_INFO))
        {
          goto LABEL_1232;
        }

        buf.value = 67109120;
        v524 = "H16ISPCaptureDevice: Initiating context-switch capture operation. result=0x%08X\n\n";
      }

      else
      {
        v471 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v471 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v471;
        }

        if (os_log_type_enabled(v471, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.value) = 136315138;
          *(&buf.value + 4) = "StillImageCaptureNow";
          _os_log_impl(&dword_2247DB000, v471, OS_LOG_TYPE_DEFAULT, "%s - Initiating time machine capture\n", &buf, 0xCu);
        }

        if (valuePtr)
        {
          v472 = v776;
        }

        else
        {
          v472 = 1;
        }

        if (valuePtr <= 1)
        {
          v473 = 1;
        }

        else
        {
          v473 = valuePtr;
        }

        LOWORD(valuePtr) = v473;
        LODWORD(v474) = LOBYTE(__src[3]);
        if (v778 == -1)
        {
          if (LOBYTE(__src[3]))
          {
            v526 = (LOBYTE(__src[3]) + 15) & 0x1F0;
            v527 = xmmword_2249BBC60;
            v528 = xmmword_2249BBC70;
            v529 = xmmword_2249BBC80;
            v530 = xmmword_2249BBC90;
            v531 = xmmword_2249BBCA0;
            v532 = xmmword_2249BBCB0;
            v533 = xmmword_2249BBCC0;
            v534 = vdupq_n_s64(LOBYTE(__src[3]) - 1);
            v535 = xmmword_2249B9820;
            v536 = __src;
            v537 = vdupq_n_s64(0x10uLL);
            do
            {
              v538 = vmovn_s64(vcgeq_u64(v534, v535));
              if (vuzp1_s8(vuzp1_s16(v538, *v527.i8), *v527.i8).u8[0])
              {
                v536[58] = 1;
              }

              if (vuzp1_s8(vuzp1_s16(v538, *&v527), *&v527).i8[1])
              {
                v536[122] = 1;
              }

              if (vuzp1_s8(vuzp1_s16(*&v527, vmovn_s64(vcgeq_u64(v534, *&v533))), *&v527).i8[2])
              {
                v536[186] = 1;
                v536[250] = 1;
              }

              v539 = vmovn_s64(vcgeq_u64(v534, v532));
              if (vuzp1_s8(*&v527, vuzp1_s16(v539, *&v527)).i32[1])
              {
                v536[314] = 1;
              }

              if (vuzp1_s8(*&v527, vuzp1_s16(v539, *&v527)).i8[5])
              {
                v536[378] = 1;
              }

              if (vuzp1_s8(*&v527, vuzp1_s16(*&v527, vmovn_s64(vcgeq_u64(v534, *&v531)))).i8[6])
              {
                v536[442] = 1;
                v536[506] = 1;
              }

              v540 = vmovn_s64(vcgeq_u64(v534, v530));
              if (vuzp1_s8(vuzp1_s16(v540, *v527.i8), *v527.i8).u8[0])
              {
                v536[570] = 1;
              }

              if (vuzp1_s8(vuzp1_s16(v540, *&v527), *&v527).i8[1])
              {
                v536[634] = 1;
              }

              if (vuzp1_s8(vuzp1_s16(*&v527, vmovn_s64(vcgeq_u64(v534, *&v529))), *&v527).i8[2])
              {
                v536[698] = 1;
                v536[762] = 1;
              }

              v541 = vmovn_s64(vcgeq_u64(v534, v528));
              if (vuzp1_s8(*&v527, vuzp1_s16(v541, *&v527)).i32[1])
              {
                v536[826] = 1;
              }

              if (vuzp1_s8(*&v527, vuzp1_s16(v541, *&v527)).i8[5])
              {
                v536[890] = 1;
              }

              if (vuzp1_s8(*&v527, vuzp1_s16(*&v527, vmovn_s64(vcgeq_u64(v534, *&v527)))).i8[6])
              {
                v536[954] = 1;
                v536[1018] = 1;
              }

              v532 = vaddq_s64(v532, v537);
              v533 = vaddq_s64(v533, v537);
              v535 = vaddq_s64(v535, v537);
              v531 = vaddq_s64(v531, v537);
              v530 = vaddq_s64(v530, v537);
              v529 = vaddq_s64(v529, v537);
              v528 = vaddq_s64(v528, v537);
              v536 += 1024;
              v527 = vaddq_s64(v527, v537);
              v526 -= 16;
            }

            while (v526);
          }

          v475 = v472;
        }

        else
        {
          v475 = 0;
          if (LOBYTE(__src[3]))
          {
            v476 = &__src[14] + 2;
            v477 = LOBYTE(__src[3]);
            do
            {
              v478 = *v476;
              v476 += 64;
              v475 += v478;
              --v477;
            }

            while (v477);
          }
        }

        if (v777 == -1)
        {
          if (v474)
          {
            v545 = v474;
            v546 = (v474 + 15) & 0x1F0;
            v547 = xmmword_2249BBC60;
            v548 = xmmword_2249BBC70;
            v549 = xmmword_2249BBC80;
            v550 = xmmword_2249BBC90;
            v551 = xmmword_2249BBCA0;
            v552 = xmmword_2249BBCB0;
            v553 = xmmword_2249BBCC0;
            v554 = vdupq_n_s64(v545 - 1);
            v555 = xmmword_2249B9820;
            v556 = __src;
            v557 = vdupq_n_s64(0x10uLL);
            do
            {
              v558 = vmovn_s64(vcgeq_u64(v554, v555));
              if (vuzp1_s8(vuzp1_s16(v558, *v547.i8), *v547.i8).u8[0])
              {
                v556[59] = 1;
              }

              if (vuzp1_s8(vuzp1_s16(v558, *&v547), *&v547).i8[1])
              {
                v556[123] = 1;
              }

              if (vuzp1_s8(vuzp1_s16(*&v547, vmovn_s64(vcgeq_u64(v554, *&v553))), *&v547).i8[2])
              {
                v556[187] = 1;
                v556[251] = 1;
              }

              v559 = vmovn_s64(vcgeq_u64(v554, v552));
              if (vuzp1_s8(*&v547, vuzp1_s16(v559, *&v547)).i32[1])
              {
                v556[315] = 1;
              }

              if (vuzp1_s8(*&v547, vuzp1_s16(v559, *&v547)).i8[5])
              {
                v556[379] = 1;
              }

              if (vuzp1_s8(*&v547, vuzp1_s16(*&v547, vmovn_s64(vcgeq_u64(v554, *&v551)))).i8[6])
              {
                v556[443] = 1;
                v556[507] = 1;
              }

              v560 = vmovn_s64(vcgeq_u64(v554, v550));
              if (vuzp1_s8(vuzp1_s16(v560, *v547.i8), *v547.i8).u8[0])
              {
                v556[571] = 1;
              }

              if (vuzp1_s8(vuzp1_s16(v560, *&v547), *&v547).i8[1])
              {
                v556[635] = 1;
              }

              if (vuzp1_s8(vuzp1_s16(*&v547, vmovn_s64(vcgeq_u64(v554, *&v549))), *&v547).i8[2])
              {
                v556[699] = 1;
                v556[763] = 1;
              }

              v561 = vmovn_s64(vcgeq_u64(v554, v548));
              if (vuzp1_s8(*&v547, vuzp1_s16(v561, *&v547)).i32[1])
              {
                v556[827] = 1;
              }

              if (vuzp1_s8(*&v547, vuzp1_s16(v561, *&v547)).i8[5])
              {
                v556[891] = 1;
              }

              if (vuzp1_s8(*&v547, vuzp1_s16(*&v547, vmovn_s64(vcgeq_u64(v554, *&v547)))).i8[6])
              {
                v556[955] = 1;
                v556[1019] = 1;
              }

              v552 = vaddq_s64(v552, v557);
              v553 = vaddq_s64(v553, v557);
              v555 = vaddq_s64(v555, v557);
              v551 = vaddq_s64(v551, v557);
              v550 = vaddq_s64(v550, v557);
              v549 = vaddq_s64(v549, v557);
              v548 = vaddq_s64(v548, v557);
              v556 += 1024;
              v547 = vaddq_s64(v547, v557);
              v546 -= 16;
            }

            while (v546);
          }

          v542 = v472;
        }

        else
        {
          v542 = 0;
          if (v474)
          {
            v474 = v474;
            v543 = &__src[14] + 3;
            do
            {
              v544 = *v543;
              v543 += 64;
              v542 += v544;
              --v474;
            }

            while (v474);
          }
        }

        if (*(v6 + 698) != 1 || (*(v6 + 1304) & 1) == 0 && (*(v6 + 1504) & 1) == 0 && *(v6 + 2504) != 1)
        {
          goto LABEL_849;
        }

        if (v810)
        {
          v562 = 0;
          if (v780)
          {
            v563 = v472;
          }

          else
          {
            v563 = 0;
          }

          do
          {
            v564 = LOBYTE(__src[3]);
            if (LOBYTE(__src[3]))
            {
              v565 = 0;
              v566 = &__src[17] + 1;
              do
              {
                v567 = *v566;
                v566 += 64;
                if ((v567 & 0xFE) == 2)
                {
                  ++v565;
                }

                --v564;
              }

              while (v564);
            }

            else
            {
              v565 = 0;
            }

            v568 = v815[v562];
            if (*(v568 + 4256))
            {
              v565 = 0;
            }

            if (AllocateAndSendOneShotBuffers(v568, v472 - v565, v563, v475, v542, 0))
            {
              goto LABEL_724;
            }
          }

          while (++v562 < v810);
        }

        if (H16ISP::H16ISPDevice::SetAEBracketingMode(*(*v806 + 24), v762, v791, 4))
        {
          goto LABEL_849;
        }

        v569 = v810;
        if (v810)
        {
          v570 = v815;
          do
          {
            v571 = *v570++;
            *(v571 + 100) += v472;
            --v569;
          }

          while (v569);
        }

        __src[2] = *(v6 + 156);
        if (H16ISP::H16ISPDevice::ISP_SendCommand(*(*v806 + 24), __src, 0x79Cu, 0, 0xFFFFFFFF))
        {
          goto LABEL_849;
        }

        if (!LOBYTE(__src[3]) && ((*(v6 + 1304) & 1) != 0 || *(v6 + 1504) == 1) && *(v6 + 2504) == 1)
        {
          v768 = *(*v804 + 160) ^ 1;
        }

        LaunchStillImageCapture(*v806, v809, 0, 0);
        v572 = H16ISP::H16ISPDevice::TimeMachineCapture(*(*v806 + 24), v762, valuePtr, v768 & 1, v774, v772, &v862);
        if (v572)
        {
          v573 = v572;
          if (v810)
          {
            for (j = 0; j < v810; ++j)
            {
              v575 = v815[j];
              *(v575 + 100) = 0;
              dispatch_source_set_timer(*(v575 + 4248), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
            }
          }

          if (v573 == -536870186)
          {
            v13 = v790;
          }

          else
          {
            v13 = 4294954608;
          }

          goto LABEL_908;
        }

        v523 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v523 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v523;
        }

        if (!os_log_type_enabled(v523, OS_LOG_TYPE_INFO))
        {
          goto LABEL_1232;
        }

        buf.value = 67109120;
        v524 = "H16ISPCaptureDevice: Initiating time-machine capture operation. result=0x%08X\n\n";
      }

      v525 = &buf;
LABEL_1231:
      _os_log_impl(&dword_2247DB000, v523, OS_LOG_TYPE_INFO, v524, v525, 8u);
      goto LABEL_1232;
    }

    v333 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v333 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v333;
    }

    v334 = os_log_type_enabled(v333, OS_LOG_TYPE_DEFAULT);
    if (v334)
    {
      LODWORD(buf.value) = 136315138;
      *(&buf.value + 4) = "StillImageCaptureNow";
      _os_log_impl(&dword_2247DB000, v333, OS_LOG_TYPE_DEFAULT, "%s - Initiating flash capture\n", &buf, 0xCu);
    }

    LODWORD(valuePtr) = H16ISP::getExternalStrobeAttached(v334);
    ConfigureExternalStrobeParameters(*v806, *(v6 + 156), valuePtr);
    if (v7 && (v336 = CFGetTypeID(v7), TypeID = CFDictionaryGetTypeID(), v336 == TypeID))
    {
      v337 = CFDictionaryGetValue(v7, *MEMORY[0x277CF5520]);
      if (v337)
      {
        *v804 = CFEqual(v337, *MEMORY[0x277CBED28]) != 0;
      }

      else
      {
        *v804 = 0;
      }

      v507 = CFDictionaryGetValue(v7, *MEMORY[0x277CF60C0]);
      if (v507)
      {
        v508 = CFEqual(v507, *MEMORY[0x277CBED28]) == 0;
      }

      else
      {
        v508 = 1;
      }

      TypeID = CFDictionaryGetValue(v7, *MEMORY[0x277CF60C8]);
      if (TypeID)
      {
        TypeID = CFEqual(TypeID, *MEMORY[0x277CBED28]);
        v509 = TypeID == 0;
      }

      else
      {
        v509 = 1;
      }

      v510 = !v508 && !v509;
      if ((v508 | v510))
      {
        v400 = v510 & 1;
      }

      else if (*(v6 + 4360))
      {
        v400 = 2;
      }

      else
      {
        v400 = 1;
      }
    }

    else
    {
      *v804 = 0;
      v400 = 0;
    }

    if (v810)
    {
      for (k = 0; k < v810; ++k)
      {
        v402 = LOBYTE(__src[3]);
        if (LOBYTE(__src[3]))
        {
          LODWORD(v403) = 0;
          v404 = &__src[17] + 1;
          do
          {
            v405 = *v404;
            v404 += 64;
            if ((v405 & 0xFE) == 2)
            {
              v403 = (v403 + 1);
            }

            else
            {
              v403 = v403;
            }

            --v402;
          }

          while (v402);
        }

        else
        {
          v403 = 0;
        }

        v406 = v815[k];
        v407 = *(v406 + 4256);
        v408 = 1;
        *(v859 + k) = 1;
        if (v400 == 1 || v400 == 2 && *(v406 + 4369) == 1)
        {
          v408 = 2;
          *(v859 + k) = 2;
        }

        if (v407)
        {
          v403 = 0;
        }

        v409 = -58200 * v403;
        if (v780)
        {
          v410 = v408;
        }

        else
        {
          v410 = 0;
        }

        TypeID = AllocateAndSendOneShotBuffers(v406 + v409, v408, v410, v778 == -1, v777 == -1, 0);
      }

      if (TypeID)
      {
LABEL_724:
        v13 = 4294954610;
LABEL_908:
        v12 = v763;
        goto LABEL_6;
      }
    }

    v411 = *(v6 + 156);
    if (*(v786 + 8 + 104 * v411 + 16))
    {
      v412 = valuePtr;
      if (*(v6 + 4184))
      {
        v412 = 1;
      }

      if ((v412 & 1) == 0)
      {
        TypeID = H16ISPDisplayStrobePrepare(*(v786 + 678));
        *(v6 + 4184) = TypeID;
        v411 = *(v6 + 156);
      }
    }

    v413 = *(v786 + 8 + 104 * v411 + 8);
    if (v413 == 1919246706 || v413 == 1919251564 || v413 == 1919251319)
    {
      LODWORD(buf.value) = 0;
      TypeID = H16ISP::H16ISPDevice::ISP_PPMAdmissionCheck(*(*v806 + 24), 1u, 0, 0x10000u, &buf);
      v416 = buf.value;
      if (LODWORD(buf.value) >= 0x10000)
      {
        v416 = 0x10000;
      }

      if (TypeID)
      {
        CameraStrobeMaxLoad = -1;
      }

      else
      {
        CameraStrobeMaxLoad = v416;
      }
    }

    else
    {
      CameraStrobeMaxLoad = -1;
    }

    v506 = valuePtr;
    if (!*(v6 + 4184))
    {
      v506 = 1;
    }

    if (v506)
    {
LABEL_1212:
      if (CameraStrobeMaxLoad == -1)
      {
        CameraStrobeMaxLoad = H16ISP::getCameraStrobeMaxLoad(TypeID);
      }

      bzero(v848, 0x30uLL);
      WORD2(v848[0].value) = 540;
      v683 = v848[0].timescale & 0x7FFF0000 | *(v6 + 156);
      v684 = v810;
      LOWORD(v848[0].flags) = *v804;
      *(&v848[0].flags + 2) = 0;
      *(&v848[0].epoch + 4) = 0;
      WORD2(v848[1].value) = -1;
      v848[0].timescale = v683 | ((v810 > 1uLL) << 31);
      v848[1].timescale = v783;
      v848[1].flags = CameraStrobeMaxLoad;
      HIDWORD(v848[1].epoch) = v400;
      if (v810)
      {
        v685 = v815;
        v686 = v859;
        do
        {
          v688 = *v686++;
          v687 = v688;
          v689 = *v685++;
          *(v689 + 100) += v687;
          --v684;
        }

        while (v684);
      }

      LODWORD(buf.value) = 101;
      LOBYTE(buf.timescale) = 1;
      v690 = *(*v806 + 232);
      if (v690)
      {
        H16ISP::H16ISPServicesRemote::SetProperty(v690, &buf);
      }

      if (LaunchStillImageCapture(*v806, v809, v848, 0x30u))
      {
        v691 = v810;
        if (v810)
        {
          v692 = v815;
          do
          {
            v693 = *v692++;
            *(v693 + 100) = 0;
            --v691;
          }

          while (v691);
        }

        if (*(v6 + 4184))
        {
          DisableDisplayStrobeOverlay(v6);
        }

        v694 = *(*v806 + 232);
        if (v694)
        {
          LOBYTE(buf.timescale) = 0;
          H16ISP::H16ISPServicesRemote::SetProperty(v694, &buf);
        }

        goto LABEL_849;
      }

      v523 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v523 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v523;
      }

      if (!os_log_type_enabled(v523, OS_LOG_TYPE_INFO))
      {
        goto LABEL_1232;
      }

      __b[0] = 67109120;
      v524 = "H16ISPCaptureDevice: Initiating shutter+strobe operation. result=0x%08X\n\n";
      v525 = __b;
      goto LABEL_1231;
    }

    if (H16ISP::H16ISPDevice::PrepareCommand(*(*v806 + 24), *(v6 + 156), 1))
    {
LABEL_907:
      v13 = 4294954611;
      goto LABEL_908;
    }

    H16ISPDisplayStrobeSetScreenBrightness(*(v6 + 4184), 0);
    if (dword_28100331C)
    {
      v511 = HIBYTE(dword_28100331C);
      v512 = BYTE2(dword_28100331C);
      v513 = BYTE1(dword_28100331C);
      v514 = dword_28100331C;
      v515 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v515 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v515;
      }

      v516 = vcvtd_n_f64_u32(v511, 8uLL);
      v517 = vcvtd_n_f64_u32(v512, 8uLL);
      v518 = vcvtd_n_f64_u32(v513, 8uLL);
      v519 = vcvtd_n_f64_u32(v514, 8uLL);
      if (!os_log_type_enabled(v515, OS_LOG_TYPE_INFO))
      {
        goto LABEL_1209;
      }

      LODWORD(buf.value) = 134218752;
      *(&buf.value + 4) = v516;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = v517;
      HIWORD(buf.epoch) = 2048;
      *v829 = v518;
      *&v829[8] = 2048;
      v830 = v519;
      v520 = "Override Display Strobe RGBA Params R=%4.3f G=%4.3f B=%4.3f A=%4.3f\n\n";
      v521 = v515;
      v522 = 42;
    }

    else
    {
      v674 = *(v6 + 4192);
      v675 = *(v6 + 4194);
      v676 = *(v6 + 4196);
      v677 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v677 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v677;
      }

      v516 = vcvtd_n_f64_u32(v674, 0x10uLL);
      v517 = vcvtd_n_f64_u32(v675, 0x10uLL);
      v518 = vcvtd_n_f64_u32(v676, 0x10uLL);
      v519 = 1.0;
      if (!os_log_type_enabled(v677, OS_LOG_TYPE_INFO))
      {
        goto LABEL_1209;
      }

      v678 = *(v6 + 4192);
      v679 = *(v6 + 4194);
      v680 = *(v6 + 4196);
      LODWORD(buf.value) = 67110400;
      HIDWORD(buf.value) = v678;
      LOWORD(buf.timescale) = 2048;
      *(&buf.timescale + 2) = v516;
      WORD1(buf.epoch) = 1024;
      HIDWORD(buf.epoch) = v679;
      *v829 = 2048;
      *&v829[2] = v517;
      LOWORD(v830) = 1024;
      *(&v830 + 2) = v680;
      HIWORD(v830) = 2048;
      v831 = v518;
      v520 = "Current AWB RGBEstimate R=0x%04X (%4.3f) G=0x%04X (%4.3f) B=0x%04X (%4.3f)\n\n";
      v521 = v677;
      v522 = 50;
    }

    _os_log_impl(&dword_2247DB000, v521, OS_LOG_TYPE_INFO, v520, &buf, v522);
LABEL_1209:
    *&buf.value = v516;
    *&buf.timescale = v517;
    *&buf.epoch = v518;
    *v829 = v519;
    H16ISPDisplayStrobeSetScreenColor(*(v6 + 4184), &buf);
    LODWORD(v848[0].value) = 0;
    StrobeBrightnessRatio = H16ISPDisplayGetStrobeBrightnessRatio(*(v6 + 4184), v848);
    v682 = vcvtd_n_u64_f64(*&v848[0].value, 0x10uLL);
    if (!StrobeBrightnessRatio)
    {
      CameraStrobeMaxLoad = v682;
    }

    TypeID = usleep(0x3A98u);
    goto LABEL_1212;
  }

  v70 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v70 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v70;
  }

  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.value) = 136315138;
    *(&buf.value + 4) = "StillImageCaptureNow";
    _os_log_impl(&dword_2247DB000, v70, OS_LOG_TYPE_DEFAULT, "%s - Initiating manual bracketed capture\n", &buf, 0xCu);
  }

  memset_pattern16(v859, &unk_2249BBDF0, 0x54uLL);
  memset_pattern16(__b, &unk_2249BBE00, 0x54uLL);
  memset_pattern16(v857, &unk_2249BBDF0, 0x54uLL);
  memset_pattern16(v858, &unk_2249BBE00, 0x54uLL);
  v71 = CFArrayGetCount(theArray);
  if ((v71 - 22) < 0xFFFFFFFFFFFFFFEBLL)
  {
    goto LABEL_33;
  }

  v763 = v12;
  v72 = 0;
  *v804 = v71;
  LODWORD(v800) = valuePtr + v71;
  LODWORD(v801) = valuePtr + v71 + 1;
  cf = *MEMORY[0x277CF5638];
  v73 = *MEMORY[0x277CF5608];
  do
  {
    v74 = CFArrayGetValueAtIndex(theArray, v72);
    if (!v74)
    {
      break;
    }

    v75 = v74;
    v76 = CFGetTypeID(v74);
    if (v76 != CFDictionaryGetTypeID())
    {
      break;
    }

    v77 = CFDictionaryGetValue(v75, cf);
    v78 = CFDictionaryGetValue(v75, v73);
    if (!v77)
    {
      break;
    }

    v79 = v78;
    if (!v78)
    {
      break;
    }

    CFNumberGetValue(v77, kCFNumberSInt32Type, __b + 4 * v72);
    CFNumberGetValue(v79, kCFNumberSInt32Type, &v859[v72]);
    v80 = v810;
    if (v810)
    {
      v81 = *(__b + v72);
      v82 = v811;
      do
      {
        *v82++ += v81;
        --v80;
      }

      while (v80);
    }

    v72 = (v72 + 1);
  }

  while (v72 < *v804);
  if (*(v6 + 4360))
  {
    v83 = CFDictionaryGetValue(v7, *MEMORY[0x277CF5670]);
    v84 = v83;
    if (v83 && (v85 = CFGetTypeID(v83), v85 == CFArrayGetTypeID()))
    {
      if (CFArrayGetCount(v84) != *v804)
      {
        goto LABEL_849;
      }

      v86 = 1;
    }

    else
    {
      v86 = 0;
    }

    v233 = 0;
    v234 = 1;
    do
    {
      if (v86)
      {
        v235 = CFArrayGetValueAtIndex(v84, v233);
        if (!v235)
        {
          break;
        }

        v236 = v235;
        v237 = CFGetTypeID(v235);
        if (v237 != CFDictionaryGetTypeID())
        {
          break;
        }

        v238 = CFDictionaryGetValue(v236, cf);
        v239 = CFDictionaryGetValue(v236, v73);
        if (!v238)
        {
          break;
        }

        v240 = v239;
        if (!v239)
        {
          break;
        }

        CFNumberGetValue(v238, kCFNumberSInt32Type, &v858[v233]);
        CFNumberGetValue(v240, kCFNumberSInt32Type, &v857[v233]);
      }

      else
      {
        v858[v233] = *(__b + v233);
        v857[v233] = v859[v233];
      }

      v233 = v234;
    }

    while (*v804 > v234++);
  }

  if (v778 == -1)
  {
    v242 = v800;
  }

  else
  {
    v242 = 0;
  }

  if (v777 == -1)
  {
    v243 = v800;
  }

  else
  {
    v243 = 0;
  }

  v12 = v763;
  v244 = v801;
  if (!v810)
  {
LABEL_446:
    v248 = v791;
    if (v791 == 0xFFFF)
    {
      if (*(v6 + 4360))
      {
        v248 = 7;
      }

      else
      {
        v248 = 2;
      }
    }

    if (H16ISP::H16ISPDevice::SetAEBracketingMode(*(*v806 + 24), v762, v248, v783))
    {
      goto LABEL_33;
    }

    if (v789 && (v249 = CFGetTypeID(v789), v249 == CFDictionaryGetTypeID()))
    {
      v250 = CFDictionaryGetValue(v789, *MEMORY[0x277CF57E0]);
      if (!v250)
      {
        goto LABEL_620;
      }

      v251 = v250;
      v252 = CFGetTypeID(v250);
      if (v252 != CFArrayGetTypeID())
      {
        goto LABEL_849;
      }

      if (CFArrayGetCount(v251))
      {
        v253 = 0;
        v254 = &v848[0].value + 3;
        while (1)
        {
          v255 = CFArrayGetValueAtIndex(v251, v253);
          if (!v255)
          {
            break;
          }

          v256 = v255;
          v257 = CFGetTypeID(v255);
          if (v257 != CFDictionaryGetTypeID())
          {
            break;
          }

          LODWORD(buf.value) = 0;
          v856[0] = 0;
          *v808 = 0;
          v807 = 0;
          if (H16ISPGetRectParamsFromDict(v256, &buf, v856, &v808[1], v808, &v807, 1u))
          {
            break;
          }

          *(v254 - 3) = v253;
          *(v254 - 1) = buf.value;
          *v254 = v856[0];
          v254[1] = v808[1];
          v254[2] = v808[0];
          v258 = v253 + 1;
          v259 = CFArrayGetCount(v251);
          if (v253 <= 0xE)
          {
            v254 += 6;
            ++v253;
            if (v258 < v259)
            {
              continue;
            }
          }

          goto LABEL_814;
        }

        LOWORD(v258) = v253;
      }

      else
      {
LABEL_620:
        LOWORD(v258) = 0;
      }

LABEL_814:
      v282 = cf2;
      v283 = *v804;
      v244 = v801;
    }

    else
    {
      LOWORD(v258) = 0;
      v282 = cf2;
      v283 = *v804;
    }

    v451 = v810;
    if (v810)
    {
      v452 = v815;
      v453 = v810;
      do
      {
        v454 = *v452++;
        *(v454 + 100) += v244;
        --v453;
      }

      while (v453);
    }

    if (*(v6 + 4360))
    {
      v455 = v451 > 1;
      bzero(&buf, 0x204uLL);
      v456 = 0;
      if (v282)
      {
        v457 = 590;
      }

      else
      {
        v457 = 582;
      }

      WORD2(buf.value) = v457;
      buf.timescale = buf.timescale & 0x7FFF0000 | (v455 << 31) | *(v6 + 156);
      LOWORD(buf.flags) = v283;
      *&v838[2] = v258;
      *&v838[36] = *&v848[1].timescale;
      *&v838[52] = *&v848[2].value;
      *&v838[4] = *&v848[0].value;
      *&v838[20] = *&v848[0].epoch;
      *&v838[100] = *&v848[4].value;
      v839 = *&v848[4].epoch;
      *&v838[68] = *&v848[2].epoch;
      *&v838[84] = *&v848[3].timescale;
      v841 = *&v848[6].epoch;
      v842 = *&v848[7].timescale;
      *v840 = *&v848[5].timescale;
      *&v840[16] = *&v848[6].value;
      do
      {
        v458 = &buf + 4 * v456;
        *(v458 + 4) = *(__b + v456);
        v459 = &buf + 2 * v456;
        *(v459 + 50) = v859[v456];
        *(v458 + 97) = v858[v456];
        *(v459 + 236) = v857[v456++];
      }

      while (v283 > v456);
      if (valuePtr)
      {
        v843 = 1;
        v845 = valuePtr;
        v847 = v774;
        v844 = v768 & 1;
        if (v774)
        {
          v460 = 1;
        }

        else
        {
          v460 = 2;
        }

        v846 = v460;
      }

      v461 = *v806;
      v462 = 516;
    }

    else
    {
      bzero(&buf, 0x184uLL);
      v463 = 0;
      if (v282)
      {
        v464 = 587;
      }

      else
      {
        v464 = 563;
      }

      WORD2(buf.value) = v464;
      buf.timescale = *(v6 + 156) | buf.timescale & 0x7FFF0000;
      LOWORD(buf.flags) = v283;
      *&v838[2] = v258;
      *&v838[36] = *&v848[1].timescale;
      *&v838[52] = *&v848[2].value;
      *&v838[4] = *&v848[0].value;
      *&v838[20] = *&v848[0].epoch;
      *&v838[100] = *&v848[4].value;
      v839 = *&v848[4].epoch;
      *&v838[68] = *&v848[2].epoch;
      *&v838[84] = *&v848[3].timescale;
      v841 = *&v848[6].epoch;
      v842 = *&v848[7].timescale;
      *v840 = *&v848[5].timescale;
      *&v840[16] = *&v848[6].value;
      do
      {
        *(&buf.epoch + v463) = *(__b + v463);
        *(&v835 + v463 + 4) = v859[v463];
        ++v463;
      }

      while (v283 > v463);
      if (valuePtr)
      {
        v843 = 1;
        v845 = valuePtr;
        v847 = v774;
        v844 = v768 & 1;
        if (v774)
        {
          v465 = 1;
        }

        else
        {
          v465 = 2;
        }

        v846 = v465;
      }

      v461 = *v806;
      v462 = 388;
    }

    v466 = LaunchStillImageCapture(v461, v809, &buf, v462);
    v467 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v467 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v467;
    }

    if (os_log_type_enabled(v467, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.value) = 67109120;
      HIDWORD(buf.value) = v466;
      _os_log_impl(&dword_2247DB000, v467, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating manual bracketed capture operation. result=0x%08X\n\n", &buf, 8u);
    }

    if (v466)
    {
      v468 = v810;
      if (v810)
      {
        v469 = v815;
        do
        {
          v470 = *v469++;
          *(v470 + 100) = 0;
          --v468;
        }

        while (v468);
      }

      goto LABEL_849;
    }

    goto LABEL_1232;
  }

  v245 = 0;
  if (v780)
  {
    v246 = v801;
  }

  else
  {
    v246 = 0;
  }

  while (1)
  {
    v247 = v815[v245];
    *(v247 + 576) = v796;
    if (AllocateAndSendOneShotBuffers(v247, v801, v246, v242, v243, 0))
    {
      break;
    }

    if (++v245 >= v810)
    {
      goto LABEL_446;
    }
  }

  v13 = 4294954610;
LABEL_6:
  if (v11)
  {
    UnlockStreamMutexes(v11);
    pthread_mutex_lock(v12);
    CFRelease(v11);
  }

  return v13;
}

uint64_t AutoAENow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = H16ISP::H16ISPDevice::AEUpdateSuspend(*(a4 + 24), *(a2 + 156));
  v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v5 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_log_impl(&dword_2247DB000, v5, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Reverting to auto-exposure, result=0x%08X\n\n", v7, 8u);
  }

  if (v4)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t AutoFocusNow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a2 + 100))
  {
    return 4294954608;
  }

  v7 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v7 |= 0x80000000;
  }

  if (*(a2 + 652) == -1)
  {
    bzero(v12, 0xCuLL);
    v14 = v14 & 0x7FFF0000 | v7;
    v13 = 1031;
    v10 = H16ISP::H16ISPDevice::ISP_SendCommand(*(a4 + 24), v12, 0xCu, 0, 0xFFFFFFFF);
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v17 = v10;
      _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating auto-focus operation, res=0x%08X\n\n", buf, 8u);
    }

    if (v10)
    {
      return 4294954516;
    }
  }

  else
  {
    bzero(v12, 0x14uLL);
    v14 = v14 & 0x7FFF0000 | v7;
    v13 = -31736;
    v15 = 0x600000000;
    v8 = H16ISP::H16ISPDevice::ISP_SendCommand(*(a4 + 24), v12, 0x14u, 0, 0xFFFFFFFF);
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v17 = v8;
      _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating peak tracking auto-focus operation, res=0x%08X\n\n", buf, 8u);
    }

    if (v8)
    {
      return 4294954516;
    }
  }

  result = 0;
  *(a2 + 552) = 1;
  return result;
}

uint64_t CopyDeferAdditionOfAttachments(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CBED28];
  if (!*(a3 + 696))
  {
    v4 = MEMORY[0x277CBED10];
  }

  v5 = *v4;
  CFRetain(*v4);
  *a2 = v5;
  return 0;
}

uint64_t CopyTemporalNoiseReductionEnabled(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CBED28];
  if (!*(a3 + 108))
  {
    v4 = MEMORY[0x277CBED10];
  }

  v5 = *v4;
  CFRetain(*v4);
  *a2 = v5;
  return 0;
}

uint64_t CopyTemporalNoiseReductionConfiguration(const __CFAllocator *a1, __CFDictionary **a2, _BYTE *a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = Mutable;
  if (!Mutable)
  {
    goto LABEL_22;
  }

  v8 = *MEMORY[0x277CBED28];
  v9 = *MEMORY[0x277CBED10];
  if (a3[109])
  {
    v10 = *MEMORY[0x277CBED28];
  }

  else
  {
    v10 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x277CF62D0], v10);
  if (a3[110])
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  CFDictionarySetValue(v7, *MEMORY[0x277CF62F0], v11);
  v12 = CFNumberCreate(0, kCFNumberIntType, a3 + 116);
  if (v12)
  {
    v13 = v12;
    CFDictionarySetValue(v7, *MEMORY[0x277CF62D8], v12);
    CFRelease(v13);
  }

  v14 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v14)
  {
    v15 = v14;
    v16 = CFNumberCreate(0, kCFNumberFloatType, a3 + 120);
    if (v16)
    {
      v17 = v16;
      CFDictionarySetValue(v15, *MEMORY[0x277CF62C0], v16);
      CFRelease(v17);
    }

    v18 = CFNumberCreate(0, kCFNumberFloatType, a3 + 124);
    if (v18)
    {
      v19 = v18;
      CFDictionarySetValue(v15, *MEMORY[0x277CF62C8], v18);
      CFRelease(v19);
    }

    CFDictionarySetValue(v7, *MEMORY[0x277CF62E0], v15);
    CFRelease(v15);
    if (a3[112])
    {
      v20 = v8;
    }

    else
    {
      v20 = v9;
    }

    CFDictionarySetValue(v7, *MEMORY[0x277CF62E8], v20);
    if (a3[128])
    {
      v21 = v8;
    }

    else
    {
      v21 = v9;
    }

    CFDictionarySetValue(v7, *MEMORY[0x277CF62F8], v21);
    result = 0;
  }

  else
  {
LABEL_22:
    result = 4294954510;
  }

  *a2 = v7;
  return result;
}

uint64_t CopyTemporalNoiseReductionConfigurationSupportedKeys(const __CFAllocator *a1, __CFArray **a2)
{
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  v4 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, *MEMORY[0x277CF62D0]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF62F0]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF62D8]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF62E0]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF62E8]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF62F8]);
    result = 0;
  }

  else
  {
    result = 4294954510;
  }

  *a2 = v4;
  return result;
}

uint64_t SetFaceDetectionEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (!a1 || (v8 = *(a2 + 105), v9 = CFGetTypeID(a1), v9 != CFBooleanGetTypeID()))
  {
LABEL_15:
    v11 = 4294954516;
    goto LABEL_16;
  }

  v10 = CFEqual(a1, *MEMORY[0x277CBED28]);
  *(a2 + 105) = v10 != 0;
  if ((*(a2 + 160) == 0) | (v8 != 0) ^ (v10 == 0))
  {
    v11 = 0;
  }

  else
  {
    v11 = 4294954514;
  }

  if ((*(a2 + 160) == 0) | (v8 != 0) ^ (v10 == 0))
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (!v12)
  {
    v11 = ActivateFaceDetectionOutputInFrameReceiver(a2, a4);
    if (v11)
    {
      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
      {
        v13 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        SetFaceDetectionEnabled();
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
  {
    v14 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 105) == 1)
    {
      v15 = "True";
    }

    else
    {
      v15 = "False";
    }

    v17 = 136315138;
    v18 = v15;
    _os_log_impl(&dword_2247DB000, v14, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Enable Face Detection: %s\n\n", &v17, 0xCu);
  }

  return v11;
}

uint64_t CopyFaceDetectionEnabled(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CBED10];
  if (*(a3 + 105))
  {
    v4 = MEMORY[0x277CBED28];
  }

  v5 = *v4;
  CFRetain(*v4);
  *a2 = v5;
  return 0;
}

uint64_t SetFaceDetectionMode(const void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    v5 = 4294954516;
    if (v4 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(a1, kCFNumberIntType, (a2 + 4172)))
      {
        v5 = 0;
      }

      else
      {
        v5 = 4294954516;
      }
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
    v7 = *(a2 + 4172);
    v9[0] = 67109120;
    v9[1] = v7;
    _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Set Face Detection Mode: %u\n\n", v9, 8u);
  }

  return v5;
}

uint64_t CopyLuxAdaptiveParameters(const __CFAllocator *a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = *MEMORY[0x277D85DE8];
  H16ISP::H16ISPDevice::GetLuxAdaptiveSettings(*(a5 + 24), *(a3 + 156), 0, &v56);
  if (v9 || (H16ISP::H16ISPDevice::GetLuxAdaptiveSettings(*(a5 + 24), *(a3 + 156), 1, capacity), v10) || (H16ISP::H16ISPDevice::GetLuxAdaptiveSettings(*(a5 + 24), *(a3 + 156), 2, v54), v11) || (H16ISP::H16ISPDevice::GetLuxAdaptiveSettings(*(a5 + 24), *(a3 + 156), 4, v53), v12))
  {
    Mutable = 0;
    result = 4294954516;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      valuePtr = 0;
      v15 = CFArrayCreateMutable(a1, v56, MEMORY[0x277CBF128]);
      if (v15)
      {
        v16 = v15;
        if (v56)
        {
          v17 = 1;
          do
          {
            valuePtr = *(&v56 + v17);
            v18 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFArrayAppendValue(v16, v18);
            CFRelease(v18);
            v19 = v17++ >= v56;
          }

          while (!v19);
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF5588], v16);
        CFRelease(v16);
      }

      v20 = CFArrayCreateMutable(a1, v56, MEMORY[0x277CBF128]);
      if (v20)
      {
        v21 = v20;
        if (v56)
        {
          v22 = 18;
          do
          {
            valuePtr = *(&v56 + v22);
            v23 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFArrayAppendValue(v21, v23);
            CFRelease(v23);
            v24 = v22 - 17;
            ++v22;
          }

          while (v24 < v56);
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF5580], v21);
        CFRelease(v21);
      }

      v25 = CFArrayCreateMutable(a1, LOWORD(capacity[0]), MEMORY[0x277CBF128]);
      if (v25)
      {
        v26 = v25;
        if (LOWORD(capacity[0]))
        {
          v27 = 1;
          do
          {
            valuePtr = *(capacity + v27);
            v28 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFArrayAppendValue(v26, v28);
            CFRelease(v28);
            v19 = v27++ >= LOWORD(capacity[0]);
          }

          while (!v19);
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF5730], v26);
        CFRelease(v26);
      }

      v29 = CFArrayCreateMutable(a1, LOWORD(capacity[0]), MEMORY[0x277CBF128]);
      if (v29)
      {
        v30 = v29;
        if (LOWORD(capacity[0]))
        {
          v31 = 18;
          do
          {
            valuePtr = *(capacity + v31);
            v32 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFArrayAppendValue(v30, v32);
            CFRelease(v32);
            v33 = v31 - 17;
            ++v31;
          }

          while (v33 < LOWORD(capacity[0]));
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF5728], v30);
        CFRelease(v30);
      }

      v34 = CFArrayCreateMutable(a1, LOWORD(v54[0]), MEMORY[0x277CBF128]);
      if (v34)
      {
        v35 = v34;
        if (LOWORD(v54[0]))
        {
          v36 = 1;
          do
          {
            valuePtr = *(v54 + v36);
            v37 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFArrayAppendValue(v35, v37);
            CFRelease(v37);
            v19 = v36++ >= LOWORD(v54[0]);
          }

          while (!v19);
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF5598], v35);
        CFRelease(v35);
      }

      v38 = CFArrayCreateMutable(a1, LOWORD(v54[0]), MEMORY[0x277CBF128]);
      if (v38)
      {
        v39 = v38;
        if (LOWORD(v54[0]))
        {
          v40 = 18;
          do
          {
            valuePtr = *(v54 + v40);
            v41 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFArrayAppendValue(v39, v41);
            CFRelease(v41);
            v42 = v40 - 17;
            ++v40;
          }

          while (v42 < LOWORD(v54[0]));
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF5590], v39);
        CFRelease(v39);
      }

      v43 = CFArrayCreateMutable(a1, LOWORD(v53[0]), MEMORY[0x277CBF128]);
      if (v43)
      {
        v44 = v43;
        if (LOWORD(v53[0]))
        {
          v45 = 1;
          do
          {
            valuePtr = *(v53 + v45);
            v46 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFArrayAppendValue(v44, v46);
            CFRelease(v46);
            v19 = v45++ >= LOWORD(v53[0]);
          }

          while (!v19);
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF5578], v44);
        CFRelease(v44);
      }

      v47 = CFArrayCreateMutable(a1, LOWORD(v53[0]), MEMORY[0x277CBF128]);
      if (v47)
      {
        v48 = v47;
        if (LOWORD(v53[0]))
        {
          v49 = 18;
          do
          {
            valuePtr = *(v53 + v49);
            v50 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFArrayAppendValue(v48, v50);
            CFRelease(v50);
            v51 = v49 - 17;
            ++v49;
          }

          while (v51 < LOWORD(v53[0]));
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF5570], v48);
        CFRelease(v48);
      }
    }

    result = 0;
  }

  *a2 = Mutable;
  return result;
}

uint64_t CopyModuleInfo(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v9 = Mutable;
    valuePtr = *(a3 + 180);
    v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(v9, *MEMORY[0x277CF3EA0], v10);
    CFRelease(v10);
    if (!H16ISP::H16ISPDevice::GetCameraConfig(*(a5 + 24), *(a3 + 156), 0, v29, v34))
    {
      valuePtr = v37;
      v11 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(v9, *MEMORY[0x277CF3E80], v11);
      CFRelease(v11);
      valuePtr = v38;
      v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(v9, *MEMORY[0x277CF3E68], v12);
      CFRelease(v12);
      valuePtr = v35;
      v13 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(v9, *MEMORY[0x277CF3E78], v13);
      CFRelease(v13);
      valuePtr = v39;
      v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(v9, *MEMORY[0x277CF3E58], v14);
      CFRelease(v14);
      valuePtr = v36;
      v15 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(v9, *MEMORY[0x277CF3E70], v15);
      CFRelease(v15);
      v16 = CFStringCreateWithCString(0, v49, 0);
      if (v16)
      {
        v17 = v16;
        CFDictionarySetValue(v9, @"ModuleSerialNumber", v16);
        CFDictionarySetValue(v9, *MEMORY[0x277CF3E88], v17);
        CFRelease(v17);
      }

      *__str = 0;
      v32 = 0;
      v33 = 0;
      snprintf(__str, 0x11uLL, "%02X%02X%02X%02X%02X%02X%02X%02X", v40, v41, v42, v43, v44, v45, v46, v47);
      v18 = CFStringCreateWithCString(0, __str, 0);
      if (v18)
      {
        v19 = v18;
        CFDictionarySetValue(v9, *MEMORY[0x277CF3EA8], v18);
        CFRelease(v19);
      }

      v28 = 0;
      *cStr = 0;
      snprintf(cStr, 5uLL, "%04X", v48);
      v20 = CFStringCreateWithCString(0, cStr, 0);
      if (v20)
      {
        v21 = v20;
        CFDictionarySetValue(v9, *MEMORY[0x277CF3E60], v20);
        CFRelease(v21);
      }

      v22 = CFStringCreateWithCString(0, v51, 0);
      if (v22)
      {
        v23 = v22;
        CFDictionarySetValue(v9, *MEMORY[0x277CF3E98], v22);
        CFRelease(v23);
      }

      v24 = CFStringCreateWithCString(0, v50, 0);
      if (v24)
      {
        v25 = v24;
        CFDictionarySetValue(v9, @"StrobeSerialNumber", v24);
        CFRelease(v25);
      }
    }

    *a2 = v9;
  }

  return 0;
}

uint64_t CopyColorHistogram(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  bzero(v11, 0x400CuLL);
  v12 = -16372;
  v13 = *(v5 + 156);
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(v3 + 24), v11, 0x400Cu, 0, 0xFFFFFFFF))
  {
    v8 = 0;
    v9 = 4294954513;
  }

  else
  {
    v8 = CFDataCreate(0, v14, 0x4000);
    v9 = 0;
  }

  *v7 = v8;
  return v9;
}

uint64_t SetAWBScheme(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
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
  v8 = H16ISP::H16ISPDevice::SetAWBScheme(*(a4 + 24), *(a2 + 156), valuePtr);
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
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Selected AWB Scheme: %d result=0x%08X\n\n", buf, 0xEu);
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

uint64_t CopyAWBScheme(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  if (H16ISP::H16ISPDevice::GetAWBScheme(*(a5 + 24), *(a3 + 156), &v10))
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

uint64_t CopyMaxIntegrationTime(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  if (H16ISP::H16ISPDevice::GetMaxIntegrationTime(*(a5 + 24), *(a3 + 156), &v11))
  {
    v7 = 0;
    v8 = 4294954513;
  }

  else
  {
    LODWORD(v6) = v11;
    v10 = v6 / 1000.0;
    v7 = CFNumberCreate(0, kCFNumberDoubleType, &v10);
    v8 = 0;
  }

  *a2 = v7;
  return v8;
}

uint64_t CopyMinIntegrationTime(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::GetMinIntegrationTime(*(a5 + 24), *(a3 + 156), &valuePtr))
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

uint64_t CopySensorTemperature(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::GetSensorTemperature(*(a5 + 24), *(a3 + 156), &valuePtr, 0))
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

uint64_t CopySensorPixelClock(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::GetCurrentPixClockFrequencyIndex(*(a5 + 24), *(a3 + 156), &valuePtr))
  {
    return 4294954513;
  }

  if (H16ISP::H16ISPDevice::GetPixClockFrequencyForIndex(*(a5 + 24), *(a3 + 156), valuePtr, &valuePtr + 1))
  {
    v9 = 0;
    result = 4294954513;
  }

  else
  {
    v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr + 4);
    result = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t CopyAlternateOutputSizeLimits(uint64_t a1, __CFDictionary **a2, uint64_t a3)
{
  if (*(a3 + 698))
  {
    Mutable = 0;
    result = 4294954509;
  }

  else
  {
    v7 = *(a3 + 48);
    v8 = *(a3 + 192);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      if (v7 >= v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v7 - v9;
      valuePtr = *(*(a3 + 184) + 120 * (v7 - v9) + 28) >> 2;
      v11 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF56F8], v11);
      CFRelease(v11);
      valuePtr = *(*(a3 + 184) + 120 * v10 + 32) >> 2;
      v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF56E0], v12);
      CFRelease(v12);
      valuePtr = *(*(a3 + 184) + 120 * v10 + 28);
      v13 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF56F0], v13);
      CFRelease(v13);
      valuePtr = *(*(a3 + 184) + 120 * v10 + 32);
      v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF56D8], v14);
      CFRelease(v14);
      result = 0;
    }

    else
    {
      result = 4294954510;
    }
  }

  *a2 = Mutable;
  return result;
}

uint64_t SetAEMinGain(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v8 = H16ISP::H16ISPDevice::SetMinimumGainCap(*(a4 + 24), *(a2 + 156), valuePtr);
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
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting Minimum Gain Cap: 0x%08X, result=0x%08X\n\n", buf, 0xEu);
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

uint64_t CopyAEMinGain(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::GetMinimumGainCap(*(a5 + 24), *(a3 + 156), &valuePtr))
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

uint64_t SetAEGainThresholdForFlickerZoneIntegrationTimeTransition(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v8 = H16ISP::H16ISPDevice::SetAEMaxGainCapWithExposureUpdate(*(a4 + 24), *(a2 + 156), valuePtr);
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
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting AE Max Gain Cap With Exposure Update: 0x%08X, result=0x%08X\n\n", buf, 0xEu);
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

uint64_t CopyAEGainThresholdForFlickerZoneIntegrationTimeTransition(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::GetAEMaxGainCapWithExposureUpdate(*(a5 + 24), *(a3 + 156), &valuePtr))
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

uint64_t SetAEIntegrationTimeForUnityGainToMinGainTransition(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v8 = H16ISP::H16ISPDevice::SetAEGainCapOffExposureUpdate(*(a4 + 24), *(a2 + 156), valuePtr);
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
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting AE Gain Cap Off Exposure Update: 0x%08X, result=0x%08X\n\n", buf, 0xEu);
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

uint64_t CopyAEIntegrationTimeForUnityGainToMinGainTransition(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::GetAEGainCapOffExposureUpdate(*(a5 + 24), *(a3 + 156), &valuePtr))
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

uint64_t CopyErrorCounters(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *v17 = 0;
  valuePtr = 0;
  *v16 = 0;
  if (H16ISP::H16ISPDevice::GetErrorCount(*(a5 + 24), *(a3 + 156), 0, &valuePtr + 1) || H16ISP::H16ISPDevice::GetErrorCount(*(a5 + 24), *(a3 + 156), 1, &valuePtr) || H16ISP::H16ISPDevice::GetErrorCount(*(a5 + 24), *(a3 + 156), 2, &v17[1]) || H16ISP::H16ISPDevice::GetErrorCount(*(a5 + 24), *(a3 + 156), 3, v17) || H16ISP::H16ISPDevice::GetErrorCount(*(a5 + 24), *(a3 + 156), 4, &v16[1]) || H16ISP::H16ISPDevice::GetErrorCount(*(a5 + 24), *(a3 + 156), 6, v16))
  {
    v8 = 0;
    result = 4294954513;
  }

  else
  {
    result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v8 = result;
    if (result)
    {
      v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr + 4);
      CFDictionarySetValue(v8, *MEMORY[0x277CF5660], v10);
      CFRelease(v10);
      v11 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(v8, *MEMORY[0x277CF5620], v11);
      CFRelease(v11);
      v12 = CFNumberCreate(0, kCFNumberIntType, &v17[1]);
      CFDictionarySetValue(v8, @"SIFErrorCount", v12);
      CFRelease(v12);
      v13 = CFNumberCreate(0, kCFNumberIntType, v17);
      CFDictionarySetValue(v8, @"UARTErrorCount", v13);
      CFRelease(v13);
      v14 = CFNumberCreate(0, kCFNumberIntType, &v16[1]);
      CFDictionarySetValue(v8, @"LPDPErrorCount", v14);
      CFRelease(v14);
      v15 = CFNumberCreate(0, kCFNumberIntType, v16);
      CFDictionarySetValue(v8, @"ProjectorErrorCount", v15);
      CFRelease(v15);
      result = 0;
    }
  }

  *a2 = v8;
  return result;
}

uint64_t SetFaceDetectionRectangleOfInterest(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID() || !CGRectMakeWithDictionaryRepresentation(a1, &v11))
  {
    return 4294954516;
  }

  v8 = H16ISP::H16ISPDevice::SetFaceDetectionWindowParam(*(a4 + 24), *(a2 + 156), ((v11.size.width * 1000.0) << 32) | ((v11.size.height * 1000.0) << 48) | ((v11.origin.y * 1000.0) << 16) | (v11.origin.x * 1000.0));
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v13 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: set kFigCaptureStreamProperty_FaceDetectionRectangleOfInterest, res=0x%08x\n\n", buf, 8u);
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

uint64_t CopyFaceDetectionRectangleOfInterest(uint64_t a1, CFDictionaryRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (H16ISP::H16ISPDevice::GetFaceDetectionWindowParam(*(a5 + 24), *(a3 + 156), &v13))
  {
    DictionaryRepresentation = 0;
    v11 = 4294954513;
  }

  else
  {
    LOWORD(v6) = v13;
    v14.origin.x = v6 / 1000.0;
    LOWORD(v7) = WORD1(v13);
    v14.origin.y = v7 / 1000.0;
    LOWORD(v8) = WORD2(v13);
    v14.size.width = v8 / 1000.0;
    LOWORD(v9) = HIWORD(v13);
    v14.size.height = v9 / 1000.0;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v14);
    v11 = 0;
  }

  *a2 = DictionaryRepresentation;
  return v11;
}

uint64_t CopyAutoFocusMode(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  if (H16ISP::H16ISPDevice::GetFocusMode(*(a5 + 24), *(a3 + 156), &v9))
  {
    v6 = 0;
    result = 4294954513;
  }

  else
  {
    v8 = MEMORY[0x277CF3D78];
    if (v9 != 1)
    {
      v8 = MEMORY[0x277CF3D80];
    }

    v6 = *v8;
    CFRetain(*v8);
    result = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t CopyMatrixFocusParams(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *v15 = 0;
  *v16 = 0;
  v14 = 0;
  if (H16ISP::H16ISPDevice::GetAFMatrixModeConfig(*(a5 + 24), *(a3 + 156), &v16[1], v16, &v15[1], v15, &v14))
  {
    *a2 = 0;
    return 4294954513;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v13 = v16[1];
      v8 = CFNumberCreate(0, kCFNumberIntType, &v13);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF3E38], v8);
      CFRelease(v8);
      v13 = v16[0];
      v9 = CFNumberCreate(0, kCFNumberIntType, &v13);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF3E28], v9);
      CFRelease(v9);
      v13 = v15[1];
      v10 = CFNumberCreate(0, kCFNumberIntType, &v13);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF3E20], v10);
      CFRelease(v10);
      v13 = v15[0];
      v11 = CFNumberCreate(0, kCFNumberIntType, &v13);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF3E30], v11);
      CFRelease(v11);
      v13 = v14;
      v12 = CFNumberCreate(0, kCFNumberIntType, &v13);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF3E18], v12);
      CFRelease(v12);
    }

    result = 0;
    *a2 = Mutable;
  }

  return result;
}

uint64_t CopyMatrixFocusDebugData(uint64_t a1, CFDataRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  bzero(bytes, 0xA9CuLL);
  v11 = -31731;
  v12 = *(a3 + 156);
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), bytes, 0xA9Cu, 0, 0xFFFFFFFF))
  {
    v8 = 0;
    result = 4294954513;
  }

  else
  {
    v8 = CFDataCreate(0, bytes, 2716);
    result = 0;
  }

  *a2 = v8;
  return result;
}

uint64_t SetClientMaxBufferCountHint(CFTypeRef cf, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a2 + 698))
  {
    return 4294954509;
  }

  if (!cf)
  {
    return 4294954516;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
  *(a2 + 152) = valuePtr;
  v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v6 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = valuePtr;
    _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting Max Buffer Count Hint: %d\n\n", buf, 8u);
  }

  return 0;
}

uint64_t SetAttachRAW(const void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFBooleanGetTypeID()))
  {
    v5 = CFEqual(a1, *MEMORY[0x277CBED28]);
    v6 = 0;
    *(a2 + 104) = v5 != 0;
  }

  else
  {
    v6 = 4294954516;
  }

  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 104) == 1)
    {
      v8 = "True";
    }

    else
    {
      v8 = "False";
    }

    v10 = 136315138;
    v11 = v8;
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Capture Raw In Parallel: %s\n\n", &v10, 0xCu);
  }

  return v6;
}

uint64_t SetColorRange(CFTypeRef cf, uint64_t a2)
{
  if (*(a2 + 698))
  {
    return 4294954509;
  }

  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFStringGetTypeID())
    {
      if (CFEqual(*MEMORY[0x277CF3D88], cf))
      {
        v6 = 0;
LABEL_9:
        result = 0;
        *(a2 + 168) = v6;
        return result;
      }

      if (CFEqual(*MEMORY[0x277CF3D90], cf))
      {
        v6 = 1;
        goto LABEL_9;
      }
    }
  }

  return 4294954516;
}

uint64_t LockAWBNow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v6 |= 0x80000000;
  }

  v7 = H16ISP::H16ISPDevice::AWBUpdateSuspend(*(a4 + 24), v6);
  v8 = v7;
  v9 = *(a2 + 2304);
  v10 = *(a2 + 156);
  if (!gCaptureDeviceCFPrefs[44 * v10 + 205] && (*(a2 + 2304) & 1) == 0 && !v7)
  {
    v8 = H16ISP::H16ISPDevice::ALSSuspend(*(a4 + 24), v6);
    v10 = *(a2 + 156);
  }

  if (!gCaptureDeviceCFPrefs[44 * v10 + 204] && (v9 & 1) == 0 && !v8)
  {
    v8 = H16ISP::H16ISPDevice::LSCModulationSuspend(*(a4 + 24), v6);
  }

  v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v11 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67109120;
    v13[1] = v8;
    _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Lock AWB, result=0x%08X\n\n", v13, 8u);
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

uint64_t UnlockAWBNow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v6 |= 0x80000000;
  }

  v7 = H16ISP::H16ISPDevice::AWBUpdateResume(*(a4 + 24), v6);
  v8 = v7;
  v9 = *(a2 + 2304);
  v10 = *(a2 + 156);
  if (!gCaptureDeviceCFPrefs[44 * v10 + 205] && (*(a2 + 2304) & 1) == 0 && !v7)
  {
    v8 = H16ISP::H16ISPDevice::ALSResume(*(a4 + 24), v6);
    v10 = *(a2 + 156);
  }

  if (!gCaptureDeviceCFPrefs[44 * v10 + 204] && (v9 & 1) == 0 && !v8)
  {
    v8 = H16ISP::H16ISPDevice::LSCModulationResume(*(a4 + 24), v6);
  }

  v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v11 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67109120;
    v13[1] = v8;
    _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Unlock AWB, result=0x%08X\n\n", v13, 8u);
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

uint64_t LockAENow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v5 |= 0x80000000;
  }

  v6 = H16ISP::H16ISPDevice::AEUpdateSuspend(*(a4 + 24), v5);
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
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Lock AE, result=0x%08X\n\n", v9, 8u);
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

uint64_t UnlockAENow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v5 |= 0x80000000;
  }

  v6 = H16ISP::H16ISPDevice::AEUpdateResume(*(a4 + 24), v5);
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
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Unlock AE, result=0x%08X\n\n", v9, 8u);
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

uint64_t SetTorchLevel(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v26 = *MEMORY[0x277D85DE8];
  LODWORD(v24) = 101;
  v8 = CFGetTypeID(v2);
  if (v8 != CFNumberGetTypeID() || !*(v6 + 668))
  {
    return 4294954516;
  }

  valuePtr = 0.0;
  CFNumberGetValue(v7, kCFNumberFloatType, &valuePtr);
  v9 = MEMORY[0x277D86220];
  if (valuePtr >= 1.0)
  {
    v10 = 255;
  }

  else
  {
    if (valuePtr <= 0.0)
    {
      v16 = H16ISP::H16ISPDevice::DisableTorch(*(v4 + 24), *(v6 + 156));
      if (!*(v6 + 160))
      {
        H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(v4 + 24), *(v6 + 156), 0, 0);
      }

      *(v6 + 4513) = 0;
      v10 = 0;
      if (v16)
      {
        v11 = 4294954516;
        goto LABEL_34;
      }

      v11 = 0;
      v17 = *(v4 + 232);
      if (!v17)
      {
        goto LABEL_34;
      }

LABEL_28:
      v25 = 0;
      H16ISP::H16ISPServicesRemote::SetProperty(v17, &v24);
      goto LABEL_34;
    }

    if ((valuePtr * 255.0) <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = (valuePtr * 255.0);
    }
  }

  if (dword_28100313C)
  {
    if (dword_28100313C >= 0xFF)
    {
      v10 = 255;
    }

    else
    {
      v10 = dword_28100313C;
    }

    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v21 = v10;
      _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Torch Level Override: %d.\n\n", buf, 8u);
    }
  }

  v14 = *(v4 + 232);
  if (v14)
  {
    v25 = 1;
    H16ISP::H16ISPServicesRemote::SetProperty(v14, &v24);
  }

  if (*(v6 + 4512) == 1)
  {
    H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(v4 + 24), *(v6 + 156), 1u, 1u);
    v15 = H16ISP::H16ISPDevice::SetIndividualTorchLEDLevels(*(v4 + 24), *(v6 + 156), (v10 << 23) & 0xFF000000 | ((v10 >> 1) << 8));
  }

  else
  {
    if (!*(v6 + 160))
    {
      H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(v4 + 24), *(v6 + 156), 1u, 1u);
    }

    v15 = H16ISP::H16ISPDevice::EnableTorch(*(v4 + 24), *(v6 + 156), v10);
  }

  v16 = v15;
  *(v6 + 4513) = 1;
  if (!v15)
  {
    v11 = 0;
    goto LABEL_34;
  }

  v17 = *(v4 + 232);
  v11 = 4294954516;
  if (v17)
  {
    goto LABEL_28;
  }

LABEL_34:
  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v9)
  {
    v18 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v21 = v10;
    v22 = 1024;
    v23 = v16;
    _os_log_impl(&dword_2247DB000, v18, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting torch level to %d. result=0x%08X\n\n", buf, 0xEu);
  }

  return v11;
}

uint64_t SetAFWindowParams(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v68[124] = *MEMORY[0x277D85DE8];
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  *values = 0u;
  if (!a1)
  {
    v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v24 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v24;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      SetAFWindowParams();
    }

    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    if (v7 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(a1);
      if ((Count - 17) > 0xFFFFFFFFFFFFFFEFLL)
      {
        v69.location = 0;
        v69.length = Count;
        CFArrayGetValues(a1, v69, values);
        goto LABEL_4;
      }

      v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v25 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        SetAFWindowParams();
      }
    }

    else
    {
      v26 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v26 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v26;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        SetAFWindowParams();
      }
    }

    return 4294954516;
  }

  values[0] = a1;
  Count = 1;
LABEL_4:
  v9 = *(a2 + 156);
  v36 = a4;
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v9 |= 0x80000000;
  }

  v35 = v9;
  v10 = 0;
  valuePtr = 0;
  key = *MEMORY[0x277CF3EB0];
  cf2 = *MEMORY[0x277CBED10];
  v37 = *MEMORY[0x277CF3DA0];
  v11 = v68;
  v38 = -1;
  v12 = -1;
  v40 = Count;
  do
  {
    v44 = 0;
    *v42 = 0;
    v43 = 0;
    v13 = CFGetTypeID(values[v10]);
    if (v13 != CFDictionaryGetTypeID())
    {
      v28 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v28 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v28;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        SetAFWindowParams();
      }

      return 4294954514;
    }

    if (H16ISPGetRectParamsFromDict(values[v10], &v44, &v43 + 4, &v43, &v42[1], v42, 1u))
    {
      v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v29 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v29;
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        SetAFWindowParams();
      }

      return 4294954514;
    }

    v14 = WORD2(v43);
    v15 = v44;
    *(v11 - 2) = v44;
    *(v11 - 1) = v14;
    v16 = v42[1];
    v17 = v43;
    *v11 = v43;
    v11[1] = v16;
    v19 = LOBYTE(v42[0]);
    v18 = LOBYTE(v42[0]) == 0;
    v66[v10] = v42[0];
    if (v18)
    {
      LOWORD(v20) = 0;
    }

    else
    {
      v20 = 1 << v10;
    }

    v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v21 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316674;
      v55 = "SetAFWindowParamsCombined";
      v56 = 2048;
      *v57 = v10;
      *&v57[8] = 1024;
      *v58 = v15;
      *&v58[4] = 1024;
      v59 = v14;
      v60 = 1024;
      v61 = v17;
      v62 = 1024;
      v63 = v16;
      v64 = 1024;
      v65 = v19;
      _os_log_debug_impl(&dword_2247DB000, v21, OS_LOG_TYPE_DEBUG, "%s - AF window %ld hStart=%hu, vStart=%hu, width=%hu, height=%hu, weight=%hhu\n", buf, 0x34u);
    }

    Value = CFDictionaryGetValue(values[v10], key);
    if (Value && !CFEqual(Value, cf2))
    {
      v23 = CFDictionaryGetValue(values[v10], v37);
      if (!v23)
      {
        v34 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v34 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v34;
        }

        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          SetAFWindowParams();
        }

        return 4294954514;
      }

      CFNumberGetValue(v23, kCFNumberSInt16Type, &valuePtr);
      v38 = v10;
    }

    v12 ^= v20;
    ++v10;
    v11 += 4;
  }

  while (v40 != v10);
  v30 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v30 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v30;
  }

  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
  v32 = valuePtr;
  if (v31)
  {
    *buf = 136315906;
    v55 = "SetAFWindowParamsCombined";
    v56 = 1024;
    *v57 = v38;
    *&v57[4] = 1024;
    *&v57[6] = valuePtr;
    *v58 = 1024;
    *&v58[2] = v12;
    _os_log_debug_impl(&dword_2247DB000, v30, OS_LOG_TYPE_DEBUG, "%s - FD AF window ID=%hu scale=%hu mask=0x%hx\n", buf, 0x1Eu);
    v32 = valuePtr;
  }

  result = H16ISP::H16ISPDevice::SetCombinedAFWindow(*(v36 + 24), v35, v38, v32, v40, __src, v66, v12);
  if (result)
  {
    v33 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v33 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v33;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      SetAFWindowParams();
    }

    return 4294954514;
  }

  return result;
}

uint64_t SetAEWindowParams(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  *v14 = 0;
  *v15 = 0;
  v13 = 0;
  if (H16ISPGetRectParamsFromDict(a1, &v15[2], v15, &v14[2], v14, &v13, 0))
  {
    return 4294954516;
  }

  v10 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v10 |= 0x80000000;
  }

  v11 = H16ISP::H16ISPDevice::SetAEWindow(*(a4 + 24), v10, v15[2], v15[0], v14[2], v14[0]);
  if (v11)
  {
    v8 = 4294954516;
  }

  else
  {
    v8 = 0;
  }

  v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v12 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 67110144;
    v17 = v11;
    v18 = 1024;
    v19 = *&v15[2];
    v20 = 1024;
    v21 = *v15;
    v22 = 1024;
    v23 = *&v14[2];
    v24 = 1024;
    v25 = *v14;
    _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Set AE Window Params (result=0x%08X), hStart=%d, vStart=%d, width=%d, height=%d\n\n", buf, 0x20u);
  }

  return v8;
}

uint64_t ManualFocusNow(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    v11 = CFGetTypeID(a1);
    if (v11 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
      goto LABEL_8;
    }

    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF4748]);
  if (!Value)
  {
    return 4294954516;
  }

  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D98]);
  if (!v9)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr + 4);
  v10 = HIDWORD(valuePtr);
LABEL_9:
  v12 = H16ISP::H16ISPDevice::SetManualFocusPosition(*(a4 + 24), *(a2 + 156), valuePtr, v10);
  v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v13 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v17 = valuePtr;
    v18 = 1024;
    v19 = v12;
    _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating manual-focus operation, position=0x%02X, result=0x%08X\n\n", buf, 0xEu);
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

uint64_t SetFlashMode(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    if (CFEqual(*MEMORY[0x277CF3CC0], a1))
    {
      v5 = 0;
LABEL_8:
      result = 0;
      *(a2 + 256) = v5;
      return result;
    }

    if (CFEqual(*MEMORY[0x277CF3CC8], a1))
    {
      v5 = 1;
      goto LABEL_8;
    }
  }

  return 4294954516;
}

uint64_t SetAFEarlyOutParams(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D38]);
  v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D28]);
  v10 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D40]);
  v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D30]);
  v12 = !Value || v9 == 0;
  v13 = v12 || v10 == 0;
  if (v13 || v11 == 0)
  {
    return 4294954516;
  }

  v16 = v11;
  v20 = 0;
  valuePtr = 0;
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
  CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
  CFNumberGetValue(v10, kCFNumberIntType, &v20 + 4);
  CFNumberGetValue(v16, kCFNumberIntType, &v20);
  result = 4294954516;
  if (HIDWORD(v20) <= 0xFF && HIDWORD(valuePtr) <= 1 && valuePtr <= 1 && v20 <= 0x40)
  {
    v17 = *(a2 + 156);
    if (*(a2 + 4360) && !*(a2 + 4380))
    {
      v17 |= 0x80000000;
    }

    v18 = H16ISP::H16ISPDevice::SetAFEarlyOutParams(*(a4 + 24), v17, SBYTE4(valuePtr), valuePtr, SBYTE4(v20), v20);
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v23 = v18;
      _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting early-out AF Parameters, result=0x%08X\n\n", buf, 8u);
    }

    if (v18)
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

uint64_t ManualAENow(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  *v20 = 0;
  valuePtr = 0;
  *v19 = 0;
  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF3EE0]);
  if (!Value)
  {
    return 4294954516;
  }

  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
  v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3ED8]);
  if (!v9)
  {
    return 4294954516;
  }

  CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
  v10 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D48]);
  if (!v10)
  {
    return 4294954516;
  }

  CFNumberGetValue(v10, kCFNumberIntType, &v20[2]);
  v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3ED0]);
  if (!v11)
  {
    return 4294954516;
  }

  CFNumberGetValue(v11, kCFNumberIntType, v20);
  v12 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3EC8]);
  if (!v12)
  {
    return 4294954516;
  }

  CFNumberGetValue(v12, kCFNumberIntType, &v19[1]);
  v13 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D98]);
  if (v13)
  {
    CFNumberGetValue(v13, kCFNumberIntType, v19);
  }

  *buf = 0;
  v14 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3E10]);
  if (v14)
  {
    CFNumberGetValue(v14, kCFNumberFloatType, buf);
    v15 = vcvts_n_u32_f32(*buf, 8uLL);
  }

  else
  {
    v15 = 0;
  }

  v17 = H16ISP::H16ISPDevice::SetAEIntegrationTimeAndGains(*(a4 + 24), *(a2 + 156), 1000000 * HIDWORD(valuePtr) / valuePtr, v20[2], v19[1], v20[0], v19[0], v15, 0, 0, 0, 0);
  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v18 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 67110912;
    v23 = v17;
    v24 = 1024;
    v25 = HIDWORD(valuePtr);
    v26 = 1024;
    v27 = valuePtr;
    v28 = 1024;
    v29 = *&v20[2];
    v30 = 1024;
    v31 = *v20;
    v32 = 1024;
    v33 = v19[1];
    v34 = 1024;
    v35 = v19[0];
    v36 = 1024;
    v37 = v15;
    _os_log_impl(&dword_2247DB000, v18, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating manual-AE (result=0x%08X), shutterSpeedNumerator=%d, shutterSpeedDenominator=%d, agc=%d, sensorDGain=%d, ispDGain=%d, tag=0x%08X, frameRate=0x%08X\n\n", buf, 0x32u);
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

uint64_t RawImageProcessBegin(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = CFGetTypeID(a1);
    if (v7 == CFDictionaryGetTypeID() && (*(a2 + 400) & 1) == 0)
    {
      if (*(a2 + 160))
      {
        return 4294954612;
      }

      Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF5088]);
      if (Value)
      {
        v11 = Value;
        v12 = CFGetTypeID(Value);
        if (v12 == CFDataGetTypeID())
        {
          Length = CFDataGetLength(v11);
          LOBYTE(v34) = 0;
          v14 = H16ISP::H16ISPCreateCVBuffer((Length >> 4) + 1, 8u, 0, 0, 1, 0, 0.0, 64, 128, 0, v34, 0, 0, -1);
          if (v14)
          {
            v15 = v14;
            CVPixelBufferLockBaseAddress(v14, 0);
            BaseAddress = CVPixelBufferGetBaseAddress(v15);
            BytePtr = CFDataGetBytePtr(v11);
            memmove(BaseAddress, BytePtr, Length);
            v18 = BaseAddress[4];
            if (!v18)
            {
              goto LABEL_33;
            }

            v19 = BaseAddress[5];
            v20 = v19 ? BaseAddress + v19 : 0;
            if (v18 == 1)
            {
              goto LABEL_33;
            }

            if (!v20 || BaseAddress[6] == 0)
            {
              goto LABEL_33;
            }

            v22 = *(v20 + 229);
            if (*(a2 + 156) != v22)
            {
              goto LABEL_33;
            }

            v23.i64[0] = -1;
            v23.i64[1] = -1;
            if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(xmmword_281003140, v23)))))
            {
              H16ISP::H16ISPDevice::SetVISParams(*(a4 + 24), *(v20 + 229), xmmword_281003140, SDWORD1(xmmword_281003140), SDWORD2(xmmword_281003140), SHIDWORD(xmmword_281003140));
            }

            v24 = CFDictionaryGetValue(a1, *MEMORY[0x277CF66F0]);
            v25 = MEMORY[0x277CBED28];
            if (v24 && CFEqual(v24, *MEMORY[0x277CBED28]))
            {
              H16ISP::H16ISPDevice::EnableVIS(*(a4 + 24), *(a2 + 156), 1, 1);
              H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), 16, 1);
              H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), 18, 1);
            }

            v26 = CFDictionaryGetValue(a1, *MEMORY[0x277CF66E8]);
            if (v26)
            {
              v27 = v26;
              if (CFEqual(v26, *v25))
              {
                v28 = *(a4 + 24);
                v29 = *(a2 + 156);
                v30 = 1;
                v31 = 1;
              }

              else
              {
                if (!CFEqual(v27, *MEMORY[0x277CBED10]))
                {
                  goto LABEL_32;
                }

                v28 = *(a4 + 24);
                v29 = *(a2 + 156);
                v30 = 0;
                v31 = 0;
              }

              H16ISP::H16ISPDevice::EnableTileBasedGDC(v28, v29, v30, v31, 0, 0);
            }

LABEL_32:
            bzero(v35, 0x10uLL);
            v36 = 263;
            v32 = v20[46];
            v37 = v22;
            v38 = v32;
            if (!H16ISP::H16ISPDevice::ISP_SendCommand(*(a4 + 24), v35, 0x10u, 0, 0xFFFFFFFF))
            {
              v33 = (a2 + 108);
              if ((*(a2 + 108) != 1 || !H16ISP::H16ISPDevice::EnableTNR(*(a4 + 24), *(a2 + 156), a2 + 108)) && (!*(a2 + 105) || !H16ISP::H16ISPDevice::StartFaceDetect(*(a4 + 24), *(a2 + 156))))
              {
                if (!H16ISP::H16ISPDevice::ProcessRawStart(*(a4 + 24), v22))
                {
                  v8 = 0;
                  *(a2 + 400) = 1;
                  *(a2 + 401) = *(a2 + 108);
                  *(a2 + 404) = v20[46];
                  goto LABEL_34;
                }

                if (*v33 == 1)
                {
                  *v33 = 0;
                  H16ISP::H16ISPDevice::EnableTNR(*(a4 + 24), v22, a2 + 108);
                }
              }
            }

LABEL_33:
            v8 = 4294954516;
LABEL_34:
            CVPixelBufferUnlockBaseAddress(v15, 0);
            CVPixelBufferRelease(v15);
            return v8;
          }
        }
      }
    }
  }

  return 4294954516;
}

uint64_t RawImageProcessPrepare(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = *MEMORY[0x277D85DE8];
  v103 = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 400) != 1)
  {
    return 4294954516;
  }

  if (*(a2 + 408))
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF3F08]);
  if (!Value)
  {
    return 4294954516;
  }

  v9 = Value;
  IOSurface = CVPixelBufferGetIOSurface(Value);
  ID = IOSurfaceGetID(IOSurface);
  v12 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3F10]);
  v13 = v12;
  if (v12)
  {
    v14 = CFDictionaryGetValue(v12, *MEMORY[0x277CF5088]);
    if (v14)
    {
      v15 = v14;
      if (dword_281003150)
      {
        H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), 19, 1);
        H16ISP::H16ISPDevice::SetMetadataRequired(*(a4 + 24), *(a2 + 156), 19, 0, 1);
        H16ISP::H16ISPDevice::SetMetadataRequired(*(a4 + 24), *(a2 + 156), 19, 1, 1);
      }

      v16 = CFGetTypeID(v15);
      if (v16 == CFDataGetTypeID())
      {
        cf = v13;
        v98 = ID;
        Length = CFDataGetLength(v15);
        CameraConfig = H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), 0, v102, valuePtr);
        v19 = CameraConfig;
        v20 = v112;
        if (Length > v112)
        {
          v20 = Length;
        }

        if (CameraConfig)
        {
          v21 = Length;
        }

        else
        {
          v21 = v20;
        }

        BYTE4(v90) = 0;
        v22 = H16ISP::H16ISPCreateCVBuffer((v21 >> 4) + 1, 8u, 0, 0, 1, 0, 0.0, 64, 128, 0, SHIDWORD(v90), 0, 0, -1);
        if (v22)
        {
          v23 = v22;
          DataSize = v21;
          v24 = v19;
          CVPixelBufferLockBaseAddress(v22, 0);
          v25 = CVPixelBufferGetIOSurface(v23);
          v26 = IOSurfaceGetID(v25);
          BaseAddress = CVPixelBufferGetBaseAddress(v23);
          BytePtr = CFDataGetBytePtr(v15);
          memmove(BaseAddress, BytePtr, Length);
          v29 = *(a2 + 416);
          if (v29)
          {
            CVPixelBufferUnlockBaseAddress(v29, 0);
            CVPixelBufferRelease(*(a2 + 416));
            *(a2 + 416) = 0;
          }

          v30 = *(a2 + 448);
          ID = v98;
          if (v30)
          {
            CFRelease(v30);
            *(a2 + 448) = 0;
          }

          goto LABEL_23;
        }

        if (!v19)
        {
          *(a2 + 408) = 1;
          *(a2 + 416) = 0;
          *(a2 + 424) = 0;
          *(a2 + 432) = v9;
          *(a2 + 440) = 0;
LABEL_47:
          CFRetain(v13);
          *(a2 + 448) = v13;
LABEL_48:
          CFRetain(v9);
          return 0;
        }
      }
    }

    return 4294954516;
  }

  v23 = *(a2 + 416);
  if (!v23)
  {
    return 4294954516;
  }

  cf = 0;
  v31 = CVPixelBufferGetIOSurface(v23);
  v26 = IOSurfaceGetID(v31);
  DataSize = CVPixelBufferGetDataSize(v23);
  BaseAddress = CVPixelBufferGetBaseAddress(v23);
  v24 = -536870212;
LABEL_23:
  v32 = BaseAddress[4];
  if (!v32 || ((v33 = BaseAddress[5], v33) ? (v34 = BaseAddress + v33) : (v34 = 0), v32 == 1 || (v97 = v26, v35 = BaseAddress[6], !v35) || !v34 || (v36 = *(v34 + 229), *(a2 + 156) != v36) || (v99 = ID, v37 = *v34, v96 = *(v34 + 229), v38 = v34, v37 != H16ISP::H16ISPDevice::GetChannelSensorID(*(a4 + 24), v36)) || *(a2 + 404) != v38[46]))
  {
    v42 = 0;
    v43 = 0;
    v44 = 4294954516;
    goto LABEL_36;
  }

  v95 = v38;
  v39 = (BaseAddress + v35);
  v40 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3F28]);
  v41 = (a2 + 456);
  if (v40)
  {
    v114.location = 0;
    v114.length = 72;
    CFDataGetBytes(v40, v114, v41);
  }

  else
  {
    v46 = MEMORY[0x277CC0898];
    v47 = *MEMORY[0x277CC0898];
    *v41 = *MEMORY[0x277CC0898];
    v48 = *(v46 + 16);
    *(a2 + 472) = v48;
    *(a2 + 480) = v47;
    *(a2 + 496) = v48;
    *(a2 + 504) = v47;
    *(a2 + 520) = v48;
  }

  v49 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3F20]);
  v50 = v49;
  v94 = v24;
  if (!v49)
  {
    v53 = 1;
    goto LABEL_77;
  }

  v51 = CFDictionaryGetValue(v49, *MEMORY[0x277CC4E30]);
  if (!v51)
  {
    goto LABEL_57;
  }

  valuePtr[0] = 0;
  CFNumberGetValue(v51, kCFNumberIntType, valuePtr);
  switch(valuePtr[0])
  {
    case 0x34323076:
      v52 = 0;
      v53 = 0;
      goto LABEL_59;
    case 0x79757673:
      v53 = 0;
      v52 = 1;
      goto LABEL_59;
    case 0x79757666:
      v52 = 1;
      break;
    default:
LABEL_57:
      v52 = 0;
      break;
  }

  v53 = 1;
LABEL_59:
  *v39 = v52;
  v54 = CFDictionaryGetValue(v50, *MEMORY[0x277CC4EC8]);
  v55 = CFDictionaryGetValue(v50, *MEMORY[0x277CC4DD8]);
  v50 = 0;
  if (v54 && v55)
  {
    v56 = v55;
    CFNumberGetValue(v54, kCFNumberIntType, &v103 + 4);
    CFNumberGetValue(v56, kCFNumberIntType, &v103);
    if (HIDWORD(v103) && (v57 = v103, v103))
    {
      v50 = 0;
      v39[2] = WORD2(v103);
      v39[3] = v57;
    }

    else
    {
      v58 = *(a2 + 192);
      if (v58)
      {
        v50 = 0;
        v59 = *(a2 + 184);
        do
        {
          v60 = v50;
          if (*(v59 + 4) == *(v95 + 92))
          {
            v50 = v59;
            if (v60)
            {
              if (*(v59 + 1) <= *(v60 + 1))
              {
                v50 = v60;
              }

              else
              {
                v50 = v59;
              }
            }
          }

          v59 = (v59 + 120);
          --v58;
        }

        while (v58);
        if (v50)
        {
          v39[2] = *(v50 + 1);
          v39[3] = *(v50 + 2);
          v39[2064] = *(v50 + 3);
        }
      }

      else
      {
        v50 = 0;
      }
    }
  }

LABEL_77:
  if (CVPixelBufferGetPixelFormatType(v9) == 2037741171 || CVPixelBufferGetPixelFormatType(v9) == 2037741158)
  {
    *(v95 + 12) = CVPixelBufferGetWidth(v9);
    *(v95 + 13) = CVPixelBufferGetHeight(v9);
    *(v95 + 200) = 1;
    *(v95 + 13) = 0;
    *(v95 + 28) = CVPixelBufferGetWidth(v9);
    *(v95 + 29) = CVPixelBufferGetHeight(v9);
    *(v95 + 47) = CVPixelBufferGetBytesPerRow(v9);
    v53 = CVPixelBufferGetPixelFormatType(v9) != 2037741171;
  }

  v61 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3F18]);
  if (v61)
  {
    v62 = CFDictionaryGetValue(v61, *MEMORY[0x277CF5088]);
    v42 = v62;
    if (v62)
    {
      v63 = v53;
      v64 = CFGetTypeID(v62);
      if (v64 == CFDataGetTypeID())
      {
        theData = v42;
        v65 = CFDataGetLength(v42);
        v66 = H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), 0, v102, valuePtr);
        v67 = v112;
        if (v65 > v112)
        {
          v67 = v65;
        }

        v94 = v66;
        if (v66)
        {
          v67 = v65;
        }

        v93 = v67;
        BYTE4(v90) = 0;
        v68 = H16ISP::H16ISPCreateCVBuffer((v67 >> 4) + 1, 8u, 0, 0, 1, 0, 0.0, 64, 128, 0, SHIDWORD(v90), 0, 0, -1);
        v42 = v68;
        if (v68)
        {
          CVPixelBufferLockBaseAddress(v68, 0);
          v69 = CVPixelBufferGetIOSurface(v42);
          v92 = IOSurfaceGetID(v69);
          v70 = CVPixelBufferGetBaseAddress(v42);
          v71 = CFDataGetBytePtr(theData);
          memmove(v70, v71, v65);
          v53 = v63;
          goto LABEL_90;
        }
      }

      else
      {
        v42 = 0;
      }
    }

    v43 = 0;
LABEL_101:
    v44 = 4294954516;
    v24 = v94;
    goto LABEL_36;
  }

  v42 = 0;
  v92 = 0;
  v93 = 0;
LABEL_90:
  if (v50)
  {
    v72 = *(v50 + 1);
    v73 = *(v50 + 2);
    v74 = *(v50 + 3);
  }

  else
  {
    v72 = v39[2];
    v73 = v39[3];
    v74 = v39[2064];
  }

  BYTE4(v90) = 0;
  v75 = H16ISP::H16ISPCreateCVBuffer(v72, v73, v74, 0, *v39, v53, 0.0, 64, 128, 0, SHIDWORD(v90), 0, 0, -1);
  v43 = v75;
  if (!v75)
  {
    goto LABEL_101;
  }

  v76 = CVPixelBufferGetIOSurface(v75);
  v77 = IOSurfaceGetID(v76);
  valuePtr[0] = v99;
  v78 = CVPixelBufferGetDataSize(v9);
  v79 = *(v95 + 47);
  valuePtr[1] = v78;
  valuePtr[2] = v79;
  valuePtr[3] = v97;
  valuePtr[4] = DataSize;
  v80 = v92;
  if (v42)
  {
    v81 = v93;
  }

  else
  {
    v80 = -1;
    v81 = 0;
  }

  valuePtr[5] = v77;
  v110 = v80;
  v111 = v81;
  v82 = v39;
  if (*v39 == 1)
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(v43);
    Height = CVPixelBufferGetHeight(v43);
    v85 = 0;
    v105 = Height * BytesPerRow;
  }

  else
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v43, 0);
    v105 = CVPixelBufferGetHeight(v43) * BytesPerRowOfPlane;
    v87 = CVPixelBufferGetBytesPerRowOfPlane(v43, 1uLL);
    v85 = (CVPixelBufferGetHeight(v43) * v87) >> 1;
  }

  v106 = v85;
  v88 = *v82 == 1;
  v108 = *v82;
  if (v108 == 1)
  {
    v89 = 262080;
  }

  else
  {
    v89 = 131008;
  }

  v107 = ((v82[2] << v88) + 63) & v89;
  v109 = v96;
  v24 = H16ISP::H16ISPDevice::ISP_ProcessRawImagePrepare(*(a4 + 24), valuePtr);
  if (v24)
  {
    v44 = 4294954516;
  }

  else
  {
    v44 = 0;
  }

LABEL_36:
  if (!v24)
  {
    *(a2 + 408) = 1;
    *(a2 + 416) = v23;
    *(a2 + 424) = v42;
    *(a2 + 432) = v9;
    *(a2 + 440) = v43;
    v13 = cf;
    if (!cf)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  CVPixelBufferUnlockBaseAddress(v23, 0);
  CVPixelBufferRelease(v23);
  if (v42)
  {
    CVPixelBufferUnlockBaseAddress(v42, 0);
    CVPixelBufferRelease(v42);
  }

  if (v43)
  {
    CVPixelBufferUnlockBaseAddress(v43, 0);
    CVPixelBufferRelease(v43);
  }

  return v44;
}

uint64_t RawImageProcessGo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  sampleBufferOut = 0;
  if (*(a2 + 408) != 1)
  {
    return 4294954516;
  }

  if (H16ISP::H16ISPDevice::ISP_ProcessRawImageGo(*(a4 + 24), *(a2 + 156)))
  {
    v6 = 4294954516;
  }

  else
  {
    if (*(*(*(a4 + 24) + 4304) + 104 * *(a2 + 156) + 8))
    {
      memset(v21, 0, sizeof(v21));
      LOWORD(v21[0]) = 257;
      *(v21 + 2) = 0;
      BYTE6(v21[0]) = 0;
      *(v21 + 10) = 0;
      if (byte_28100338C == 1)
      {
        BYTE2(v21[1]) = byte_28100338C;
      }

      if (byte_28100338D == 1)
      {
        BYTE3(v21[1]) = byte_28100338D;
      }

      v22 = 0;
      CVBufferSetAttachment(*(a2 + 440), @"RawMetaData", *(a2 + 416), kCVAttachmentMode_ShouldPropagate);
      v24[0] = *(a2 + 440);
      std::deque<__CVBuffer *>::deque(formatDescription, v24, 1);
      v7.n128_u64[0] = 0;
      H16ISP::GenerateAndAttachCoreMediaMetaDataDictionary(*(*(a4 + 24) + 88), *(a2 + 440), formatDescription, v21, v7);
      std::deque<__CVBuffer *>::~deque[abi:ne200100](formatDescription);
    }

    v8 = *MEMORY[0x277CF3F70];
    Attachment = CVBufferGetAttachment(*(a2 + 440), *MEMORY[0x277CF3F70], 0);
    if (Attachment)
    {
      v10 = *(a2 + 448);
      if (v10)
      {
        CFRelease(v10);
      }

      CFRetain(Attachment);
      *(a2 + 448) = Attachment;
    }

    formatDescription[0] = 0;
    v11 = CFGetAllocator(*(a2 + 16));
    CMVideoFormatDescriptionCreateForImageBuffer(v11, *(a2 + 440), formatDescription);
    v12 = CFGetAllocator(*(a2 + 16));
    v6 = CMSampleBufferCreateForImageBuffer(v12, *(a2 + 440), 1u, 0, 0, formatDescription[0], (a2 + 456), &sampleBufferOut);
    FigFormatDescriptionRelease();
    if (v6)
    {
      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v13 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        RawImageProcessGo();
      }
    }

    else
    {
      if (Attachment)
      {
        CMSetAttachment(sampleBufferOut, v8, Attachment, 1u);
      }

      v14 = 32;
      if (*(a2 + 616))
      {
        v14 = 24;
      }

      v6 = CMBufferQueueEnqueue(*(a2 + v14), sampleBufferOut);
      if (v6)
      {
        v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v15 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          RawImageProcessGo();
        }
      }
    }

    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
    }
  }

  v16 = *(a2 + 432);
  if (v16)
  {
    CVPixelBufferUnlockBaseAddress(v16, 0);
    CVPixelBufferRelease(*(a2 + 432));
    *(a2 + 432) = 0;
  }

  v17 = *(a2 + 440);
  if (v17)
  {
    CVPixelBufferUnlockBaseAddress(v17, 0);
    CVPixelBufferRelease(*(a2 + 440));
    *(a2 + 440) = 0;
  }

  v18 = *(a2 + 424);
  if (v18)
  {
    CVPixelBufferUnlockBaseAddress(v18, 0);
    CVPixelBufferRelease(*(a2 + 424));
    *(a2 + 424) = 0;
  }

  *(a2 + 408) = 0;
  return v6;
}

uint64_t RawImageProcessEnd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 400) != 1)
  {
    return 4294954516;
  }

  if (*(a2 + 408))
  {
    return 4294954516;
  }

  H16ISP::H16ISPDevice::ProcessRawStop(*(a4 + 24), *(a2 + 156));
  if (*(a2 + 401) == 1)
  {
    *(a2 + 108) = 0;
    H16ISP::H16ISPDevice::EnableTNR(*(a4 + 24), *(a2 + 156), a2 + 108);
  }

  *(a2 + 400) = 0;
  v7 = *(a2 + 416);
  if (v7)
  {
    CVPixelBufferUnlockBaseAddress(v7, 0);
    CVPixelBufferRelease(*(a2 + 416));
    *(a2 + 416) = 0;
  }

  result = *(a2 + 448);
  if (result)
  {
    CFRelease(result);
    result = 0;
    *(a2 + 448) = 0;
  }

  return result;
}

uint64_t SetAEGainConvergenceNormalizationEnable(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (v8)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    v14 = 0;
    v10 = "H16ISPCaptureDevice: Enable AE Gain Convergence Normalization\n\n";
    v11 = &v14;
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    v13 = 0;
    v10 = "H16ISPCaptureDevice: Disable AE Gain Convergence Normalization\n\n";
    v11 = &v13;
  }

  _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, v10, v11, 2u);
LABEL_15:
  if (H16ISP::H16ISPDevice::EnableAEGainConvergenceNormalization(*(a4 + 24), *(a2 + 156), v8 != 0))
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t LockBLCNow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v5 |= 0x80000000;
  }

  v6 = H16ISP::H16ISPDevice::BLCSuspend(*(a4 + 24), v5);
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
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: BLC Suspend, result=0x%08X\n\n", v9, 8u);
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

uint64_t UnlockBLCNow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v5 |= 0x80000000;
  }

  v6 = H16ISP::H16ISPDevice::BLCResume(*(a4 + 24), v5);
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
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: BLC Resume, result=0x%08X\n\n", v9, 8u);
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

uint64_t SetDiagnosticMode(const void *a1, uint64_t a2)
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
  v5 = *(a2 + 160);
  v6 = 4294954516;
  if (v5)
  {
    if (H16ISP::H16ISPFrameReceiver::setDiagnosticsMode(v5, valuePtr))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t SetImageMapParams(CFTypeRef cf, uint64_t a2)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFDictionaryGetTypeID())
    {
      return 4294954516;
    }
  }

  Value = CFDictionaryGetValue(cf, *MEMORY[0x277CF3DD8]);
  v6 = MEMORY[0x277CF3E08];
  if (Value)
  {
    v7 = Value;
    if (CFEqual(*MEMORY[0x277CF3E08], Value))
    {
      v8 = 0;
    }

    else if (CFEqual(*MEMORY[0x277CF3DE8], v7))
    {
      v8 = 6;
    }

    else if (CFEqual(*MEMORY[0x277CF3DF0], v7))
    {
      v8 = 7;
    }

    else if (CFEqual(*MEMORY[0x277CF3DF8], v7))
    {
      v8 = 8;
    }

    else
    {
      if (!CFEqual(*MEMORY[0x277CF3E00], v7))
      {
        return 4294954516;
      }

      v8 = 9;
    }

    *(a2 + 580) = v8;
  }

  v9 = CFDictionaryGetValue(cf, *MEMORY[0x277CF3DE0]);
  if (v9)
  {
    v10 = v9;
    if (CFEqual(*v6, v9))
    {
      v11 = 0;
    }

    else if (CFEqual(*MEMORY[0x277CF3DE8], v10))
    {
      v11 = 6;
    }

    else if (CFEqual(*MEMORY[0x277CF3DF0], v10))
    {
      v11 = 7;
    }

    else if (CFEqual(*MEMORY[0x277CF3DF8], v10))
    {
      v11 = 8;
    }

    else
    {
      if (!CFEqual(*MEMORY[0x277CF3E00], v10))
      {
        return 4294954516;
      }

      v11 = 9;
    }

    *(a2 + 584) = v11;
  }

  v12 = CFDictionaryGetValue(cf, *MEMORY[0x277CF5628]);
  if (!v12)
  {
    goto LABEL_33;
  }

  v13 = v12;
  v14 = CFGetTypeID(v12);
  if (v14 != CFDataGetTypeID() || CFDataGetLength(v13) != 36)
  {
    return 4294954516;
  }

  v15 = *(a2 + 592);
  if (v15)
  {
    CFRelease(v15);
  }

  *(a2 + 592) = v13;
  CFRetain(v13);
LABEL_33:
  result = CFDictionaryGetValue(cf, *MEMORY[0x277CF5630]);
  if (!result)
  {
    return result;
  }

  v17 = result;
  v18 = CFGetTypeID(result);
  if (v18 != CFDataGetTypeID() || CFDataGetLength(v17) != 36)
  {
    return 4294954516;
  }

  v19 = *(a2 + 600);
  if (v19)
  {
    CFRelease(v19);
  }

  *(a2 + 600) = v17;
  CFRetain(v17);
  return 0;
}

uint64_t SetAlternateOutputSize(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(a2 + 698))
  {
    return 4294954509;
  }

  valuePtr = 0;
  *v42 = 0;
  v7 = *(a2 + 48);
  if (v7 >= *(a2 + 192))
  {
    v8 = *(a2 + 192);
  }

  else
  {
    v8 = 0;
  }

  if (!cf)
  {
    return 4294954516;
  }

  v10 = CFGetTypeID(cf);
  if (v10 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(cf, *MEMORY[0x277CF56E8]);
  v12 = CFDictionaryGetValue(cf, *MEMORY[0x277CF56D0]);
  v13 = CFDictionaryGetValue(cf, *MEMORY[0x277CF55A8]);
  v14 = CFDictionaryGetValue(cf, *MEMORY[0x277CF55A0]);
  if (Value)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v19 = v7 - v8;
    CFNumberGetValue(Value, kCFNumberIntType, &v42[1]);
    CFNumberGetValue(v12, kCFNumberIntType, v42);
    v20 = *(a2 + 184);
    v21 = (v20 + 120 * v19);
    v22 = v21[7];
    v23 = v42[1] <= v22 && v42[1] >= v22 >> 2;
    if (!v23)
    {
      return 4294954516;
    }

    v24 = v21[8];
    if (v42[0] > v24 || v42[0] < v24 >> 2)
    {
      return 4294954516;
    }

    if (v13 && v14)
    {
      CFNumberGetValue(v13, kCFNumberIntType, &valuePtr + 4);
      CFNumberGetValue(v14, kCFNumberIntType, &valuePtr);
      v28 = valuePtr;
      v27 = HIDWORD(valuePtr);
      v22 = HIDWORD(valuePtr) & 0xFFFFFFFE;
      v29 = valuePtr & 0xFFFFFFFE;
      valuePtr &= 0xFFFFFFFEFFFFFFFELL;
      v4 = 4294954516;
      if (v27 < 0x140)
      {
        return v4;
      }

      v30 = (*(a2 + 184) + 120 * v19);
      v31 = v30[7];
      v23 = v31 >= v22;
      v32 = v31 - v22;
      if (!v23)
      {
        return v4;
      }

      if (v28 < 0xF0)
      {
        return v4;
      }

      v33 = v30[8];
      v23 = v33 >= v29;
      v34 = v33 - v29;
      if (!v23)
      {
        return v4;
      }

      v35 = (v30[5] + (v32 >> 1)) & 0xFFFFFFFE;
      v36 = (v30[6] + (v34 >> 1)) & 0xFFFFFFFE;
    }

    else
    {
      HIDWORD(valuePtr) = v21[7];
      v29 = *(v20 + 120 * v19 + 32);
      LODWORD(valuePtr) = v29;
      v35 = v21[5];
      v36 = v21[6];
    }

    v37 = *(a2 + 160);
    if (v37)
    {
      v4 = H16ISP::H16ISPFrameReceiver::setNewOutputSize(v37);
      v38 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v38 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v38;
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v44 = v4;
        _os_log_impl(&dword_2247DB000, v38, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: setNewOutputSize, result=0x%08X\n\n", buf, 8u);
      }

      if (v4)
      {
        return 4294954516;
      }

      v39 = v42[0];
      *(a2 + 620) = v42[1];
      *(a2 + 624) = v39;
      v40 = valuePtr;
      *(a2 + 636) = HIDWORD(valuePtr);
      *(a2 + 640) = v40;
    }

    else
    {
      v4 = 0;
      *(a2 + 620) = v42[1];
      *(a2 + 624) = v42[0];
      *(a2 + 636) = v22;
      *(a2 + 640) = v29;
    }

    *(a2 + 628) = v35;
    *(a2 + 632) = v36;
    return v4;
  }

  v16 = *(a2 + 160);
  if (!v16 || H16ISP::H16ISPFrameReceiver::isNewOutputSizeChangePending(v16))
  {
    return 4294954516;
  }

  v4 = 4294954516;
  if (v13)
  {
    if (v14)
    {
      CFNumberGetValue(v13, kCFNumberIntType, &valuePtr + 4);
      CFNumberGetValue(v14, kCFNumberIntType, &valuePtr);
      v17 = HIDWORD(valuePtr) & 0xFFFFFFFE;
      v18 = valuePtr & 0xFFFFFFFE;
      LODWORD(valuePtr) = valuePtr & 0xFFFFFFFE;
      HIDWORD(valuePtr) = v17;
      if (v17 >= *(a2 + 620) && v18 >= *(a2 + 624))
      {
        if (H16ISP::H16ISPDevice::SetScalerCrop(*(a4 + 24), *(a2 + 156), ((*(a2 + 644) - v17) >> 1) & 0x7FFFFFFE | ((((((*(a2 + 648) - v18) >> 1) & 0x7FFFFFFE) >> 1) & 0x3FFFFFFF) << 33), v17 | (v18 << 32)))
        {
          return 4294954516;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v4;
}

uint64_t SetUsePreviewBufferQueueForRawReprocessing(const void *a1, uint64_t a2)
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
  *(a2 + 616) = v5 != 0;
  return result;
}

uint64_t SetAFPeakPredictionEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v7 = CFGetTypeID(a1);
    v8 = "False";
    if (v7 == CFBooleanGetTypeID())
    {
      v9 = CFEqual(a1, *MEMORY[0x277CBED28]);
      v10 = *(a2 + 156);
      if (*(a2 + 4360) && !*(a2 + 4380))
      {
        v10 |= 0x80000000;
      }

      if (v9)
      {
        v8 = "True";
      }

      if (H16ISP::H16ISPDevice::EnableAFPeakPrediction(*(a4 + 24), v10, v9 != 0))
      {
        v11 = 4294954516;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 4294954516;
    }
  }

  else
  {
    v11 = 4294954516;
    v8 = "False";
  }

  v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v12 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = v8;
    _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Enable AF Peak Prediction: %s\n\n", &v14, 0xCu);
  }

  return v11;
}

uint64_t SetAEEnabled(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = cf;
  v14 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    v7 = CFGetTypeID(cf);
    v8 = 4294954516;
    if (v7 == CFBooleanGetTypeID())
    {
      LODWORD(v4) = CFEqual(v4, *MEMORY[0x277CBED28]) != 0;
      if (H16ISP::H16ISPDevice::EnableAE(*(a4 + 24), *(a2 + 156), v4))
      {
        v8 = 4294954516;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      LODWORD(v4) = 0;
    }
  }

  else
  {
    v8 = 4294954516;
  }

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

    v12 = 136315138;
    v13 = v10;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Enable AE: %s\n\n", &v12, 0xCu);
  }

  return v8;
}

uint64_t SetAWB1stGainManual(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D58]);
  v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D70]);
  v10 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D68]);
  v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D60]);
  v12 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D50]);
  if (Value)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || v10 == 0 || v11 == 0 || v12 == 0)
  {
    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v17 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      SetAWB1stGainManual();
    }

    return 4294954516;
  }

  v19 = v12;
  v20 = CFEqual(Value, *MEMORY[0x277CBED28]);
  valuePtr = 0;
  CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
  *v25 = 0;
  CFNumberGetValue(v10, kCFNumberIntType, v25);
  *v24 = 0;
  CFNumberGetValue(v11, kCFNumberIntType, v24);
  *v23 = 0;
  CFNumberGetValue(v19, kCFNumberIntType, v23);
  v21 = H16ISP::H16ISPDevice::SetAWB1stGainManual(*(a4 + 24), *(a2 + 156), v20 != 0, valuePtr, v25[0], v24[0], v23[0]);
  v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v22 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 67110400;
    v28 = v20 != 0;
    v29 = 1024;
    v30 = valuePtr;
    v31 = 1024;
    v32 = *v25;
    v33 = 1024;
    v34 = *v24;
    v35 = 1024;
    v36 = *v23;
    v37 = 1024;
    v38 = v21;
    _os_log_impl(&dword_2247DB000, v22, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: set kFigCaptureStreamProperty_AWB1stGainManual, enableFlag=%d, rGain=%d, grGain=%d, gbGain=%d, bGain=%d, result=0x%08X\n\n", buf, 0x26u);
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

uint64_t SetLimitAERange(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF5740]);
  v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5658]);
  if (!Value)
  {
    v12 = H16ISP::H16ISPDevice::SetAEMode(*(a4 + 24), *(a2 + 156), 0);
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    *buf = 67109120;
    v21 = v12;
    v14 = "H16ISPCaptureDevice: kFigCaptureStreamProperty_LimitAERange disabled. res=0x%08x\n\n";
    v15 = v13;
    v16 = 8;
    goto LABEL_15;
  }

  v10 = v9;
  valuePtr = 0;
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  *v18 = 0;
  CFNumberGetValue(v10, kCFNumberIntType, v18);
  if (H16ISP::H16ISPDevice::SetPanoAELimits(*(a4 + 24), *(a2 + 156), valuePtr, v18[0]))
  {
    return 4294954516;
  }

  v12 = H16ISP::H16ISPDevice::SetAEMode(*(a4 + 24), *(a2 + 156), 1);
  v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v17 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    v21 = valuePtr;
    v22 = 1024;
    v23 = *v18;
    v24 = 1024;
    v25 = v12;
    v14 = "H16ISPCaptureDevice: kFigCaptureStreamProperty_LimitAERange enabled, upper=0x%08X, lower=0x%08X, res=0x%08x\n\n";
    v15 = v17;
    v16 = 20;
LABEL_15:
    _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_INFO, v14, buf, v16);
  }

LABEL_16:
  if (v12)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}