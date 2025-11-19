uint64_t StillImageConfigUpdateAtomically(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v26, 0, sizeof(v26));
  v27 = 0u;
  v6 = *(a3 + 48);
  *&v26[12] = vmovn_s64(vcvtq_s64_f64(*(a3 + 32)));
  v28 = 0;
  *&v26[8] = *(a2 + 156);
  *&v26[4] = 2849;
  *&v26[20] = vmovn_s64(vcvtq_u64_f64(v6));
  BufferPool = H16ISP::H16ISPFrameReceiver::getBufferPool(*(a2 + 160), 7);
  if (BufferPool)
  {
    v8 = BufferPool;
    *&v26[28] = *(a3 + 20);
    v9 = *(BufferPool + 28);
    HIDWORD(v28) = *(BufferPool + 24);
    DWORD2(v27) = 0;
    HIDWORD(v27) = v9;
    *&v26[36] = ColorRangeForOutputWithMatrix(a2, a3, *(a2 + 176));
    if (H16ISP::getFrameFormatMetaInfo(*(a3 + 16), &v24))
    {
      if (v25 == 2 || (DWORD1(v24) - 35) <= 1)
      {
        v11 = v8[11];
        v10 = v8[12];
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      v15 = v8[10];
      if (v15 > 22)
      {
        if ((v15 - 24) < 6)
        {
          LOBYTE(v28) = v25 != 0;
          *&v26[40] = HIDWORD(v24);
          *&v26[44] = v11;
          LODWORD(v27) = v10;
          goto LABEL_40;
        }

        if ((v15 - 31) < 6)
        {
          LOBYTE(v28) = v25 != 0;
          *&v26[40] = HIDWORD(v24);
          *&v27 = __PAIR64__(v10, v11);
          goto LABEL_40;
        }

        if (v15 == 23)
        {
          *&v26[44] = ((5 * ((v8[6] + 31) >> 5)) & 0x1FFFFF) << 8;
          LODWORD(v27) = ((5 * ((v8[6] + 15) >> 4)) & 0x7FFFFF) << 6;
          *&v26[40] = 19;
          goto LABEL_31;
        }

LABEL_37:
        LOBYTE(v28) = 0;
        v21 = (v8[6] + 63) & 0xFFFFFFC0;
        *&v26[40] = v15;
        *&v26[44] = v21;
        goto LABEL_38;
      }

      if (v15 <= 14)
      {
        if (v15)
        {
          if (v15 == 1)
          {
            LOBYTE(v28) = 0;
            v16 = (2 * v8[6] + 63) & 0xFFFFFFC0;
            *&v26[40] = 1;
            *&v26[44] = v16;
            goto LABEL_40;
          }

          if (v15 != 13)
          {
            goto LABEL_37;
          }

          LOBYTE(v28) = 1;
        }

        else
        {
          LOBYTE(v28) = 0;
        }

        v19 = (v8[6] + 63) & 0xFFFFFFC0;
        *&v26[40] = 0;
        *&v26[44] = v19;
LABEL_38:
        v18 = v8[6];
        goto LABEL_39;
      }

      switch(v15)
      {
        case 15:
          LOBYTE(v28) = 0;
          v20 = (2 * v8[6] + 63) & 0xFFFFFFC0;
          *&v26[40] = 18;
          *&v26[44] = v20;
          v18 = 2 * v8[6];
          break;
        case 18:
          LOBYTE(v28) = 0;
          v17 = (((2 * ((2863311531u * (v8[6] + 2)) >> 32)) & 0xFFFFFFFC) + 63) & 0xFFFFFFC0;
          *&v26[40] = 19;
          *&v26[44] = v17;
          v18 = (2 * ((2863311531u * (v8[6] + 2)) >> 32)) & 0xFFFFFFFC;
          break;
        case 22:
          *&v26[44] = (32 * v8[6] + 992) & 0xFFFFFC00;
          LODWORD(v27) = (32 * v8[6] + 480) & 0xFFFFFE00;
          *&v26[40] = 0;
LABEL_31:
          LOBYTE(v28) = 1;
          goto LABEL_40;
        default:
          goto LABEL_37;
      }

LABEL_39:
      LODWORD(v27) = (v18 + 63) & 0xFFFFFFC0;
LABEL_40:
      v13 = H16ISP::H16ISPDevice::ISP_SendCommand(*(a1 + 24), v26, 0x48u, 0, 0xFFFFFFFF);
      if (v13)
      {
        v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v22 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          StillImageConfigUpdateAtomically();
        }
      }

      return v13;
    }

    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
    }

    v13 = 3758097084;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      StillImageConfigUpdateAtomically();
    }
  }

  else
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    v13 = 3758097084;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      StillImageConfigUpdateAtomically();
    }
  }

  return v13;
}

uint64_t resizeRawPool(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 776) == 1)
  {
    v4 = *(a2 + 768);
  }

  else
  {
    v4 = 0;
  }

  if (*(a2 + 976) == 1 && *(a2 + 968) > v4)
  {
    v4 = *(a2 + 968);
  }

  if (*(a2 + 1176) == 1 && *(a2 + 1168) > v4)
  {
    v4 = *(a2 + 1168);
  }

  if (*(a2 + 1376) == 1 && *(a2 + 1368) > v4)
  {
    v4 = *(a2 + 1368);
  }

  if (*(a2 + 1576) == 1 && *(a2 + 1568) > v4)
  {
    v4 = *(a2 + 1568);
  }

  if (*(a2 + 2104) == 1 && *(a2 + 2168) > v4)
  {
    v4 = *(a2 + 2168);
  }

  if (*(a2 + 2504) == 1 && *(a2 + 2568) > v4)
  {
    v4 = *(a2 + 2568);
  }

  if (*(a2 + 1704) == 1 && *(a2 + 1768) > v4)
  {
    v4 = *(a2 + 1768);
  }

  if (((*(a2 + 4080) & 1) != 0 || doesDisabledTofRequireBuffers(a1, a2)) && *(a2 + 4108) > v4)
  {
    v4 = *(a2 + 4108);
  }

  if (*(a2 + 1904) == 1 && *(a2 + 4448) == 1 && *(a2 + 1968) > v4)
  {
    v4 = *(a2 + 1968);
  }

  if ((*(a2 + 4816) || *(a2 + 4824)) && *(a2 + 4832) > v4)
  {
    v4 = *(a2 + 4832);
  }

  if (*(a2 + 4840))
  {
    v5 = *(a2 + 4880);
    v6 = v5 <= v4 ? v4 : *(a2 + 4880);
    if (v5 >= 0)
    {
      v4 = v6;
    }
  }

  v7 = v4 + *(a2 + 2104);
  if (*(a2 + 8) && H16ISP::H16ISPDevice::isSensorType(*(a1 + 24), *(a2 + 156), 1785950322))
  {
    v7 += 4;
  }

  if (*(a2 + 4594) == 1 && H16ISP::H16ISPDevice::isSensorType(*(a1 + 24), *(a2 + 156), 1718186595))
  {
    v7 += 4;
  }

  if (gCaptureDeviceCFPrefs[44 * *(a2 + 156) + 208])
  {
    v8 = gCaptureDeviceCFPrefs[44 * *(a2 + 156) + 208];
  }

  else
  {
    v8 = v7;
  }

  result = H16ISP::H16ISPFrameReceiver::HasPool(*(a2 + 160), 1);
  if (result)
  {
    FirmwarePrimeCount = H16ISP::H16ISPFrameReceiver::getFirmwarePrimeCount(*(a2 + 160), 1);
    result = H16ISP::H16ISPFrameReceiver::ModifyPoolBufferCount(*(a2 + 160), 1, FirmwarePrimeCount + v8);
    if (!result)
    {
      result = H16ISP::H16ISPFrameReceiver::HasPool(*(a2 + 160), 29);
      if (result)
      {
        v11 = H16ISP::H16ISPFrameReceiver::getFirmwarePrimeCount(*(a2 + 160), 29) + v8;
        v12 = *(a2 + 160);

        return H16ISP::H16ISPFrameReceiver::ModifyPoolBufferCount(v12, 29, v11);
      }
    }
  }

  return result;
}

uint64_t StopExclaveStreams(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a2 + 57344;
  v5 = H16ISP::H16ISPDevice::enabledExclaveDebug(*(a1 + 24));
  if (!*(v4 + 832))
  {
    return 0;
  }

  v6 = v5;
  v7 = *(v4 + 840);
  if (v7)
  {
    dispatch_source_set_timer(v7, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  }

  v8 = *(a1 + 296);
  if (v8)
  {
    dispatch_sync(v8, &__block_literal_global_0);
  }

  if (notify_is_valid_token(*(v4 + 836)))
  {
    notify_cancel(*(v4 + 836));
    dispatch_sync(*(a1 + 288), &__block_literal_global_773);
    *(v4 + 836) = -1;
  }

  bzero(v20, 0x208uLL);
  v10 = *(a2 + 156);
  v9 = (a2 + 156);
  v20[130] = v10;
  kdebug_trace();
  v11 = ispExclaveKitCommand();
  kdebug_trace();
  if (v11)
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v12;
    }

    v13 = 3758097087;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      StopExclaveStreams();
    }

    return v13;
  }

  if (v6)
  {
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *v9;
      *buf = 136315394;
      v22 = "StopExclaveStreams";
      v23 = 1024;
      v24 = v15;
      _os_log_impl(&dword_2247DB000, v14, OS_LOG_TYPE_DEFAULT, "%s - Successfully Stopped EK Channel=%d\n", buf, 0x12u);
    }
  }

  v16 = H16ISP::H16ISPDevice::PowerOffExclaveKit(*(a1 + 24), *v9);
  if (v16)
  {
    StopExclaveStreams(v9, v16, buf);
    return *buf;
  }

  *(v4 + 832) = 0;
  *(*(a1 + 24) + 96) = -1;
  v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v17 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v17;
  }

  v13 = 0;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *v9;
    *buf = 136315394;
    v22 = "StopExclaveStreams";
    v23 = 1024;
    v24 = v18;
    _os_log_impl(&dword_2247DB000, v17, OS_LOG_TYPE_DEFAULT, "%s - Successfully stopped EK Channel:%d\n", buf, 0x12u);
    return 0;
  }

  return v13;
}

void SecureAlgorithmSetTargetFrameRate(const __CFDictionary *a1, const __CFString *a2, const char *a3, float *a4)
{
  value = 0;
  if (CFDictionaryGetValueIfPresent(a1, a2, &value))
  {
    if (value && (v5 = CFGetTypeID(value), v5 == CFNumberGetTypeID()))
    {
      if (CFNumberGetValue(value, kCFNumberFloatType, a4))
      {
        if (*a4 < 0.0)
        {
          v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
          {
            v6 = os_log_create("com.apple.isp", "exclaves");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v6;
          }

          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            SecureAlgorithmSetTargetFrameRate();
          }

          *a4 = 0.0;
        }
      }

      else
      {
        v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v8 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v8;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          SecureAlgorithmSetTargetFrameRate();
        }
      }
    }

    else
    {
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        SecureAlgorithmSetTargetFrameRate();
      }
    }
  }
}

const void *SetHITHFeatureConfiguration(uint64_t a1, const __CFDictionary *a2)
{
  if (*(a1 + 130) != 1)
  {
    return 0;
  }

  value = 0;
  v4 = SetMetadataOutputFeatureEnabled(a1 + 752, a2, **(a1 + 824));
  if (v4)
  {
    v5 = v4;
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      SetHITHFeatureConfiguration();
    }

    return v5;
  }

  if (!CFDictionaryGetValueIfPresent(a2, *(*(a1 + 824) + 8), &value))
  {
    return 0;
  }

  v7 = SetMetadataOutputBufferPoolConfiguration(a1 + 752, value);
  if (v7)
  {
    v5 = v7;
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      SetHITHFeatureConfiguration();
    }

    return v5;
  }

  v9 = CFDictionaryGetValue(value, *MEMORY[0x277CF4768]);
  v5 = v9;
  if (!v9)
  {
    return v5;
  }

  v10 = CFGetTypeID(v9);
  if (v10 != CFStringGetTypeID())
  {
    return 0;
  }

  v11 = *(a1 + 840);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = CFRetain(v5);
  v5 = 0;
  *(a1 + 840) = v12;
  return v5;
}

const void *SetANSTThumbnailFeatureConfiguration(uint64_t a1, const __CFDictionary *a2)
{
  value = 0;
  if (*(a1 + 131) != 1)
  {
    return 0;
  }

  v4 = SetMetadataOutputFeatureEnabled(a1 + 848, a2, **(a1 + 920));
  if (v4)
  {
    v5 = v4;
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      SetANSTThumbnailFeatureConfiguration();
    }

    return v5;
  }

  if (!CFDictionaryGetValueIfPresent(a2, *(*(a1 + 920) + 8), &value))
  {
    return 0;
  }

  v7 = SetMetadataOutputBufferPoolConfiguration(a1 + 848, value);
  if (v7)
  {
    v5 = v7;
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      SetANSTThumbnailFeatureConfiguration();
    }

    return v5;
  }

  v9 = CFDictionaryGetValue(value, *MEMORY[0x277CF4768]);
  v5 = v9;
  if (!v9)
  {
    return v5;
  }

  v10 = CFGetTypeID(v9);
  if (v10 != CFStringGetTypeID())
  {
    return 0;
  }

  v11 = *(a1 + 936);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = CFRetain(v5);
  v5 = 0;
  *(a1 + 936) = v12;
  return v5;
}

uint64_t SetPrePostLTMThumbnailFeatureConfiguration(uint64_t a1, const __CFDictionary *a2)
{
  cf1 = 0;
  value = 0;
  number = 0;
  if (*(a1 + 132) != 1)
  {
    return 0;
  }

  v4 = SetMetadataOutputFeatureEnabled(a1 + 960, a2, **(a1 + 1032));
  if (v4)
  {
    v5 = v4;
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      SetPrePostLTMThumbnailFeatureConfiguration();
    }

    return v5;
  }

  if (!CFDictionaryGetValueIfPresent(a2, *(*(a1 + 1032) + 8), &value))
  {
    return 0;
  }

  v7 = SetMetadataOutputBufferPoolConfiguration(a1 + 960, value);
  if (v7)
  {
    v5 = v7;
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      SetPrePostLTMThumbnailFeatureConfiguration();
    }
  }

  else
  {
    v10 = CFDictionaryGetValue(value, *MEMORY[0x277CF4768]);
    if (v10)
    {
      v11 = v10;
      v12 = CFGetTypeID(v10);
      if (v12 == CFStringGetTypeID())
      {
        v13 = *(a1 + 1048);
        if (v13)
        {
          CFRelease(v13);
        }

        *(a1 + 1048) = CFRetain(v11);
      }
    }

    ValueIfPresent = CFDictionaryGetValueIfPresent(value, *MEMORY[0x277CF4620], &cf1);
    v15 = MEMORY[0x277CBED28];
    if (ValueIfPresent)
    {
      *(a1 + 944) = CFEqual(cf1, *MEMORY[0x277CBED28]) != 0;
    }

    if (CFDictionaryGetValueIfPresent(value, *MEMORY[0x277CF4618], &cf1) && cf1)
    {
      *(a1 + 945) = CFEqual(cf1, *v15) != 0;
    }

    if (CFDictionaryGetValueIfPresent(value, *MEMORY[0x277CF65F8], &number) && number)
    {
      valuePtr = 0;
      CFNumberGetValue(number, kCFNumberSInt16Type, &valuePtr);
      *(a1 + 946) = valuePtr;
    }

    v5 = 0;
    if (CFDictionaryGetValueIfPresent(value, *MEMORY[0x277CF65A8], &number) && number)
    {
      valuePtr = 0;
      CFNumberGetValue(number, kCFNumberSInt16Type, &valuePtr);
      v5 = 0;
      *(a1 + 948) = valuePtr;
    }
  }

  return v5;
}

uint64_t SetWSegThumbnailFeatureConfiguration(uint64_t a1, const __CFDictionary *a2)
{
  number = 0;
  value = 0;
  if (*(a1 + 133) != 1)
  {
    return 0;
  }

  v4 = SetMetadataOutputFeatureEnabled(a1 + 1072, a2, **(a1 + 1144));
  if (v4)
  {
    v5 = v4;
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      SetWSegThumbnailFeatureConfiguration();
    }

    return v5;
  }

  if (!CFDictionaryGetValueIfPresent(a2, *(*(a1 + 1144) + 8), &value))
  {
    return 0;
  }

  v7 = SetMetadataOutputBufferPoolConfiguration(a1 + 1072, value);
  if (v7)
  {
    v5 = v7;
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      SetWSegThumbnailFeatureConfiguration();
    }
  }

  else
  {
    v10 = CFDictionaryGetValue(value, *MEMORY[0x277CF4768]);
    if (v10)
    {
      v11 = v10;
      v12 = CFGetTypeID(v10);
      if (v12 == CFStringGetTypeID())
      {
        v13 = *(a1 + 1160);
        if (v13)
        {
          CFRelease(v13);
        }

        *(a1 + 1160) = CFRetain(v11);
      }
    }

    if (CFDictionaryGetValueIfPresent(value, *MEMORY[0x277CF67A8], &number))
    {
      v14 = number == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      LOBYTE(valuePtr) = 0;
      CFNumberGetValue(number, kCFNumberSInt8Type, &valuePtr);
      *(a1 + 1056) = valuePtr;
    }

    if (CFDictionaryGetValueIfPresent(value, *MEMORY[0x277CF65F8], &number) && number)
    {
      LOWORD(valuePtr) = 0;
      CFNumberGetValue(number, kCFNumberSInt16Type, &valuePtr);
      *(a1 + 1058) = valuePtr;
    }

    if (CFDictionaryGetValueIfPresent(value, *MEMORY[0x277CF65A8], &number) && number)
    {
      LOWORD(valuePtr) = 0;
      CFNumberGetValue(number, kCFNumberSInt16Type, &valuePtr);
      *(a1 + 1060) = valuePtr;
    }

    v5 = 0;
    if (CFDictionaryGetValueIfPresent(value, *MEMORY[0x277CF67B0], &number) && number)
    {
      valuePtr = 0;
      CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
      v5 = 0;
      *(a1 + 1068) = valuePtr;
    }
  }

  return v5;
}

uint64_t LightSourceMaskTunableConfigurationSendToFirmware(uint64_t a1, int a2, int32x4_t *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  if (a3[2].i32[0] != 1)
  {
    return 0;
  }

  v4 = a3->i32[0];
  if (a3->i32[0] <= 0x40u && (v5 = a3->u32[1], v5 < 0x41))
  {
    v9 = a3->u32[2];
    if (v9 >= 3)
    {
      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v13 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
      }

      v7 = 3758097131;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LightSourceMaskTunableConfigurationSendToFirmware();
      }
    }

    else
    {
      v10 = a3->u32[3];
      if (v10 > 1)
      {
        v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v14 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
        }

        v7 = 3758097131;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LightSourceMaskTunableConfigurationSendToFirmware();
        }
      }

      else
      {
        *v36 = vmovn_s32(a3[1]);
        v7 = H16ISP::H16ISPDevice::SetStatsFEThumbnailMaskConfig(*(a1 + 24), a2, v4, v5, v9, v10, v36);
        if (v7)
        {
          v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v12 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v15 = a3->u8[0];
            v16 = a3->u8[4];
            v17 = a3->u8[8];
            v18 = a3->u8[12];
            v19[0] = 67111168;
            v19[1] = a2;
            v20 = 1024;
            v21 = v15;
            v22 = 1024;
            v23 = v16;
            v24 = 1024;
            v25 = v17;
            v26 = 1024;
            v27 = v18;
            v28 = 1024;
            v29 = v36[0];
            v30 = 1024;
            v31 = v36[1];
            v32 = 1024;
            v33 = v36[2];
            v34 = 1024;
            v35 = v36[3];
            _os_log_error_impl(&dword_2247DB000, v12, OS_LOG_TYPE_ERROR, "SetStatsFEThumbnailMaskConfig failed: channel=%u downscaleFactorX=%hhu downscaleFactorY=%hhu genMode=%hhu bitBinMode=%hhu thresholdMask=[%hu, %hu, %hu, %hu]\n", v19, 0x38u);
          }

          a3[2].i32[0] = 0;
        }

        else
        {
          a3[2].i32[0] = 2;
        }
      }
    }
  }

  else
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
    }

    v7 = 3758097131;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LightSourceMaskTunableConfigurationSendToFirmware();
    }
  }

  return v7;
}

uint64_t SetMetadataOutputFeatureEnabled(uint64_t a1, CFDictionaryRef theDict, void *key)
{
  value = 0;
  if (!CFDictionaryGetValueIfPresent(theDict, key, &value))
  {
    return 0;
  }

  if (value && (v4 = CFGetTypeID(value), v4 == CFBooleanGetTypeID()))
  {
    v5 = 0;
    *(a1 + 81) = CFBooleanGetValue(value) != 0;
  }

  else
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
    }

    v5 = 3758097084;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      SetMetadataOutputFeatureEnabled();
    }
  }

  return v5;
}

uint64_t SetMetadataOutputBufferPoolConfiguration(uint64_t a1, const __CFDictionary *cf)
{
  cfa = 0;
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFDictionaryGetTypeID()))
  {
    if (!CFDictionaryGetValueIfPresent(cf, *MEMORY[0x277CF6550], &cfa))
    {
      return 0;
    }

    if (*(a1 + 81) == 1)
    {
      v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v5 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v5;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        SetMetadataOutputBufferPoolConfiguration();
      }

      return 3758097131;
    }

    v8 = CFGetTypeID(cfa);
    TypeID = CVPixelBufferPoolGetTypeID();
    v10 = cfa;
    if (v8 == TypeID)
    {
      MetadataOutputBufferPoolRelease(a1);
      if (!CFEqual(v10, *MEMORY[0x277CBEEE8]))
      {
        PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(v10);
        if (PixelBufferAttributes)
        {
          v12 = PixelBufferAttributes;
          valuePtr = 0;
          Value = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x277CC4EC8]);
          if (!Value)
          {
            v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v21 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
            }

            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              SetMetadataOutputBufferPoolConfiguration();
            }

            return 3758097090;
          }

          CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
          v14 = CFDictionaryGetValue(v12, *MEMORY[0x277CC4DD8]);
          if (!v14)
          {
            v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v22 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
            }

            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              SetMetadataOutputBufferPoolConfiguration();
            }

            return 3758097090;
          }

          CFNumberGetValue(v14, kCFNumberIntType, &valuePtr);
          if ((*(a1 + 60) | 4) == 0x2C)
          {
            if (HIDWORD(valuePtr) > *(a1 + 20) || valuePtr > *(a1 + 24))
            {
              v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v15 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
              }

              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                SetMetadataOutputBufferPoolConfiguration();
              }

              return 3758097090;
            }
          }

          else if (HIDWORD(valuePtr) < *(a1 + 20) || valuePtr < *(a1 + 24))
          {
            v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v23 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v23;
            }

            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              SetMetadataOutputBufferPoolConfiguration();
            }

            return 3758097090;
          }
        }

        *(a1 + 8) = CVPixelBufferPoolRetain(v10);
        v20 = CVPixelBufferPoolGetTypeID();
LABEL_51:
        v6 = 0;
        *a1 = v20;
        return v6;
      }

      return 0;
    }

    v16 = CFGetTypeID(cfa);
    if (v16 == CVDataBufferPoolGetTypeID())
    {
      v17 = cfa;
      MetadataOutputBufferPoolRelease(a1);
      if (!CFEqual(v17, *MEMORY[0x277CBEEE8]))
      {
        *(a1 + 8) = CFRetain(v17);
        v20 = CVDataBufferPoolGetTypeID();
        goto LABEL_51;
      }

      return 0;
    }

    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    v6 = 3758097090;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      SetMetadataOutputBufferPoolConfiguration();
    }
  }

  else
  {
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
    }

    v6 = 3758097090;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      SetMetadataOutputBufferPoolConfiguration();
    }
  }

  return v6;
}

uint64_t LightSourceMaskGetTunableParameterValue(const __CFDictionary *a1, const __CFString *a2, void *a3)
{
  value = 0;
  if (!CFDictionaryGetValueIfPresent(a1, a2, &value))
  {
    return 0;
  }

  v4 = 3758097090;
  if (value)
  {
    v5 = CFGetTypeID(value);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(value, kCFNumberSInt32Type, a3);
      return 0;
    }
  }

  return v4;
}

uint64_t IntermediateTapAndScalerConfigUpdateAtomically(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  memset(v57, 0, sizeof(v57));
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  memset(v61, 0, 28);
  v6 = *(a2 + 160);
  if (v6)
  {
    BufferPool = H16ISP::H16ISPFrameReceiver::getBufferPool(v6, 6);
    if (BufferPool)
    {
      v12 = BufferPool;
      *&v57[4] = a5;
      *&v57[8] = *(a2 + 156);
      v13 = *(a3 + 48);
      *&v57[12] = vmovn_s64(vcvtq_s64_f64(*(a3 + 32)));
      *&v57[20] = vmovn_s64(vcvtq_u64_f64(v13));
      v14 = BufferPool[10];
      if (v14 <= 0x24)
      {
        if (((1 << v14) & 0x1FBF000000) != 0)
        {
          v16 = BufferPool[11];
          v15 = BufferPool[12];
          if (H16ISP::getFrameFormatMetaInfo(*(a3 + 16), &v55))
          {
            BYTE12(v58) = v56 != 0;
            DWORD2(v58) = HIDWORD(v55);
            *&v57[28] = v16;
          }

          else
          {
            v20 = v15;
            v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v21 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
            }

            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              IntermediateTapAndScalerConfigUpdateAtomically();
            }

            *&v57[28] = (v12[6] + 63) & 0xFFFFFFC0;
            DWORD2(v58) = 0;
            BYTE12(v58) = 0;
            v15 = v20;
          }

          goto LABEL_28;
        }

        if (v14 == 22)
        {
          v15 = 0;
          v16 = 0;
          BYTE12(v58) = 1;
          v23 = (32 * BufferPool[6] + 992) & 0xFFFFFC00;
          DWORD2(v58) = 0;
          *&v57[28] = v23;
          goto LABEL_28;
        }

        if (v14 == 23)
        {
          v15 = 0;
          v16 = 0;
          BYTE12(v58) = 1;
          v22 = BufferPool[6] + 31;
          DWORD2(v58) = 19;
          *&v57[28] = ((5 * (v22 >> 5)) & 0x1FFFFF) << 8;
LABEL_28:
          DWORD1(v58) = v12[7];
          v24 = a2 + 1304;
          v25 = a2 + 1504 == a3 || v24 == a3;
          v26 = 172;
          if (v25)
          {
            v26 = 176;
          }

          LODWORD(v58) = ColorRangeForOutputWithMatrix(a2, a3, *(a2 + v26));
          if (a5 == 2845)
          {
            v27 = 0;
          }

          else
          {
            v27 = 10;
          }

          v28 = H16ISP::H16ISPFrameReceiver::getBufferPool(*(a2 + 160), v27);
          if (v28)
          {
            v29 = v28;
            v30 = vmovn_s64(vcvtq_u64_f64(*(a4 + 48)));
            *&v59 = vmovn_s64(vcvtq_s64_f64(*(a4 + 32)));
            *(&v59 + 1) = v30;
            v31 = *(v28 + 28);
            DWORD2(v61[1]) = *(v28 + 24);
            v32 = *(a4 + 24);
            LODWORD(v60) = *(a4 + 20);
            DWORD1(v60) = v32;
            HIDWORD(v61[0]) = -v32 & 0xF;
            LODWORD(v61[1]) = v31;
            v33 = a2 + 1504 == a4 || v24 == a4;
            v34 = 172;
            if (v33)
            {
              v34 = 176;
            }

            DWORD2(v60) = ColorRangeForOutputWithMatrix(a2, a4, *(a2 + v34));
            if (H16ISP::getFrameFormatMetaInfo(*(a4 + 16), &v55) && (v56 == 2 || (DWORD1(v55) - 35) <= 1))
            {
              v16 = v29[11];
              v15 = v29[12];
            }

            v35 = v61 + 4;
            v36 = v29[10];
            switch(v36)
            {
              case 0:
                BYTE4(v61[1]) = 0;
                goto LABEL_62;
              case 1:
                v35 = v61;
                HIDWORD(v60) = 1;
                BYTE4(v61[1]) = 0;
                goto LABEL_78;
              case 13:
                BYTE4(v61[1]) = 1;
LABEL_62:
                v42 = (v29[6] + 63) & 0xFFFFFFC0;
                HIDWORD(v60) = 0;
                LODWORD(v61[0]) = v42;
                goto LABEL_63;
              case 15:
                BYTE4(v61[1]) = 0;
                goto LABEL_77;
              case 16:
                BYTE4(v61[1]) = 1;
LABEL_77:
                v52 = (2 * v29[6] + 63) & 0xFFFFFFC0;
                HIDWORD(v60) = 18;
                LODWORD(v61[0]) = v52;
LABEL_78:
                v40 = 2 * v29[6];
                goto LABEL_79;
              case 18:
                BYTE4(v61[1]) = 0;
                v39 = (((2 * ((2863311531u * (v29[6] + 2)) >> 32)) & 0xFFFFFFFC) + 63) & 0xFFFFFFC0;
                HIDWORD(v60) = 19;
                LODWORD(v61[0]) = v39;
                v40 = (2 * ((2863311531u * (v29[6] + 2)) >> 32)) & 0xFFFFFFFC;
                goto LABEL_79;
              case 22:
                BYTE4(v61[1]) = 1;
                v43 = *(a4 + 20);
                v44 = v43 + 31;
                if (v43 < -31)
                {
                  v44 = v43 + 62;
                }

                HIDWORD(v60) = 0;
                LODWORD(v61[0]) = (32 * v44) & 0xFFFFFC00;
                v46 = v43 + 15;
                v45 = v43 < -15;
                v47 = v43 + 30;
                if (!v45)
                {
                  v47 = v46;
                }

                v15 = (32 * v47) & 0xFFFFFE00;
                break;
              case 23:
                BYTE4(v61[1]) = 1;
                v48 = *(a4 + 20);
                v49 = v48 + 31;
                if (v48 < -31)
                {
                  v49 = v48 + 62;
                }

                HIDWORD(v60) = 19;
                LODWORD(v61[0]) = ((5 * (v49 >> 5)) & 0x1FFFFF) << 8;
                v50 = v48 + 15;
                v45 = v48 < -15;
                v51 = v48 + 30;
                if (!v45)
                {
                  v51 = v50;
                }

                v15 = ((5 * (v51 >> 4)) & 0x7FFFFF) << 6;
                break;
              case 24:
              case 26:
              case 28:
                BYTE4(v61[1]) = 1;
                HIDWORD(v60) = 0;
                LODWORD(v61[0]) = v16;
                break;
              case 25:
              case 27:
              case 29:
                BYTE4(v61[1]) = 1;
                HIDWORD(v60) = 19;
                LODWORD(v61[0]) = v16;
                break;
              case 31:
              case 32:
              case 33:
              case 34:
                BYTE4(v61[1]) = 1;
                v37 = 26;
                goto LABEL_57;
              case 35:
                v37 = 25;
                goto LABEL_56;
              case 36:
                v37 = 26;
LABEL_56:
                BYTE4(v61[1]) = 0;
LABEL_57:
                HIDWORD(v60) = v37;
                DWORD1(v61[0]) = v16;
                v35 = v61 + 8;
                break;
              default:
                BYTE4(v61[1]) = 0;
                v41 = (v29[6] + 63) & 0xFFFFFFC0;
                HIDWORD(v60) = v36;
                LODWORD(v61[0]) = v41;
LABEL_63:
                v40 = v29[6];
LABEL_79:
                v15 = (v40 + 63) & 0xFFFFFFC0;
                break;
            }

            *v35 = v15;
            v18 = H16ISP::H16ISPDevice::ISP_SendCommand(*(a1 + 24), v57, 0x6Cu, 0, 0xFFFFFFFF);
            if (v18)
            {
              v53 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v53 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v53;
              }

              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                IntermediateTapAndScalerConfigUpdateAtomically();
              }
            }
          }

          else
          {
            v38 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v38 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v38;
            }

            v18 = 3758097084;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              IntermediateTapAndScalerConfigUpdateAtomically();
            }
          }

          return v18;
        }
      }

      v15 = 0;
      v16 = 0;
      if (v14 == 15)
      {
        *&v57[28] = (2 * BufferPool[6] + 63) & 0xFFFFFFC0;
        DWORD2(v58) = 18;
      }

      else
      {
        *&v57[28] = (BufferPool[6] + 63) & 0xFFFFFFC0;
        DWORD2(v58) = 0;
      }

      BYTE12(v58) = 0;
      goto LABEL_28;
    }

    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    v18 = 3758097084;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      IntermediateTapAndScalerConfigUpdateAtomically();
    }
  }

  else
  {
    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v17 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
    }

    v18 = 3758097095;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      IntermediateTapAndScalerConfigUpdateAtomically();
    }
  }

  return v18;
}

uint64_t ScalerOutputConfigUpdateAtomically(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 2843)
  {
    v5 = 0;
  }

  else
  {
    v5 = 10;
  }

  memset(v42, 0, sizeof(v42));
  v43 = 0u;
  v44 = 0u;
  v45 = 0;
  v6 = *(a2 + 160);
  if (v6)
  {
    v7 = a4;
    BufferPool = H16ISP::H16ISPFrameReceiver::getBufferPool(v6, v5);
    if (BufferPool)
    {
      v11 = BufferPool;
      v12 = *(a3 + 48);
      *&v42[12] = vmovn_s64(vcvtq_s64_f64(*(a3 + 32)));
      *&v42[4] = v7;
      *&v42[8] = *(a2 + 156);
      *&v42[20] = vmovn_s64(vcvtq_u64_f64(v12));
      v13 = *(BufferPool + 28);
      HIDWORD(v45) = *(BufferPool + 24);
      v14 = *(a3 + 24);
      *&v42[28] = *(a3 + 20);
      LODWORD(v43) = v14;
      DWORD2(v44) = -v14 & 0xF;
      HIDWORD(v44) = v13;
      v15 = a2 + 1504 == a3 || a2 + 1304 == a3;
      v16 = 172;
      if (v15)
      {
        v16 = 176;
      }

      DWORD1(v43) = ColorRangeForOutputWithMatrix(a2, a3, *(a2 + v16));
      if (H16ISP::getFrameFormatMetaInfo(*(a3 + 16), &v40) && (v41 == 2 || (DWORD1(v40) - 35) <= 1))
      {
        v18 = v11[11];
        v17 = v11[12];
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      v22 = &v44;
      v23 = v11[10];
      switch(v23)
      {
        case 0u:
          LOBYTE(v45) = 0;
          goto LABEL_36;
        case 1u:
          v22 = &v43 + 12;
          DWORD2(v43) = 1;
          LOBYTE(v45) = 0;
          goto LABEL_52;
        case 0xDu:
          LOBYTE(v45) = 1;
LABEL_36:
          v27 = (v11[6] + 63) & 0xFFFFFFC0;
          DWORD2(v43) = 0;
          HIDWORD(v43) = v27;
          goto LABEL_37;
        case 0xFu:
          LOBYTE(v45) = 0;
          goto LABEL_51;
        case 0x10u:
          LOBYTE(v45) = 1;
LABEL_51:
          v37 = (2 * v11[6] + 63) & 0xFFFFFFC0;
          DWORD2(v43) = 18;
          HIDWORD(v43) = v37;
LABEL_52:
          v26 = 2 * v11[6];
          goto LABEL_53;
        case 0x12u:
          LOBYTE(v45) = 0;
          v25 = (((2 * ((2863311531u * (v11[6] + 2)) >> 32)) & 0xFFFFFFFC) + 63) & 0xFFFFFFC0;
          DWORD2(v43) = 19;
          HIDWORD(v43) = v25;
          v26 = (2 * ((2863311531u * (v11[6] + 2)) >> 32)) & 0xFFFFFFFC;
          goto LABEL_53;
        case 0x16u:
          LOBYTE(v45) = 1;
          v28 = *(a3 + 20);
          v29 = v28 + 31;
          if (v28 < -31)
          {
            v29 = v28 + 62;
          }

          DWORD2(v43) = 0;
          HIDWORD(v43) = (32 * v29) & 0xFFFFFC00;
          v31 = v28 + 15;
          v30 = v28 < -15;
          v32 = v28 + 30;
          if (!v30)
          {
            v32 = v31;
          }

          v17 = (32 * v32) & 0xFFFFFE00;
          break;
        case 0x17u:
          LOBYTE(v45) = 1;
          v33 = *(a3 + 20);
          v34 = v33 + 31;
          if (v33 < -31)
          {
            v34 = v33 + 62;
          }

          DWORD2(v43) = 19;
          HIDWORD(v43) = ((5 * (v34 >> 5)) & 0x1FFFFF) << 8;
          v35 = v33 + 15;
          v30 = v33 < -15;
          v36 = v33 + 30;
          if (!v30)
          {
            v36 = v35;
          }

          v17 = ((5 * (v36 >> 4)) & 0x7FFFFF) << 6;
          break;
        case 0x18u:
        case 0x1Au:
        case 0x1Cu:
          LOBYTE(v45) = 1;
          DWORD2(v43) = 0;
          HIDWORD(v43) = v18;
          break;
        case 0x19u:
        case 0x1Bu:
        case 0x1Du:
          LOBYTE(v45) = 1;
          DWORD2(v43) = 19;
          HIDWORD(v43) = v18;
          break;
        case 0x1Fu:
        case 0x20u:
        case 0x21u:
        case 0x22u:
          LOBYTE(v45) = 1;
          v24 = 26;
          goto LABEL_31;
        case 0x23u:
          v24 = 25;
          goto LABEL_30;
        case 0x24u:
          v24 = 26;
LABEL_30:
          LOBYTE(v45) = 0;
LABEL_31:
          DWORD2(v43) = v24;
          LODWORD(v44) = v18;
          v22 = &v44 + 4;
          break;
        default:
          LOBYTE(v45) = 0;
          *(&v43 + 1) = __PAIR64__((v11[6] + 63) & 0xFFFFFFC0, v23);
LABEL_37:
          v26 = v11[6];
LABEL_53:
          v17 = (v26 + 63) & 0xFFFFFFC0;
          break;
      }

      *v22 = v17;
      v20 = H16ISP::H16ISPDevice::ISP_SendCommand(*(a1 + 24), v42, 0x48u, 0, 0xFFFFFFFF);
      if (v20)
      {
        v38 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v38 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v38;
        }

        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          ScalerOutputConfigUpdateAtomically();
        }
      }
    }

    else
    {
      v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v21 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
      }

      v20 = 3758097084;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        ScalerOutputConfigUpdateAtomically();
      }
    }
  }

  else
  {
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    v20 = 3758097095;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      ScalerOutputConfigUpdateAtomically();
    }
  }

  return v20;
}

void NotifyProjectorValidationError(uint64_t a1, uint64_t a2)
{
  FigStreamRef = GetFigStreamRef(a1, a2);
  if ((*(a1 + 4264) & 1) == 0 && FigStreamRef)
  {
    *(a1 + 4264) = 1;

    H16ISPPostNotification(@"ProjectorValidationFailed", FigStreamRef, 0);
  }
}

uint64_t EnableIRProjector(int a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 4256) & 1) != 0 || (result = H16ISP::H16ISPDevice::isSensorType(*(a3 + 24), *(a2 + 156), 1785950322), result))
  {
    v7 = *(a3 + 24);
    v8 = *(a2 + 156);
    if (a1)
    {
      result = H16ISP::H16ISPDevice::IsProjectorAllowed(v7, v8);
      if (result)
      {
        v9 = *(a3 + 24);
        v10 = *(a2 + 156);

        return H16ISP::H16ISPDevice::SetProjectorOn(v9, v10);
      }
    }

    else
    {

      return H16ISP::H16ISPDevice::SetProjectorOff(v7, v8);
    }
  }

  return result;
}

const void *GetFigStreamRef(uint64_t a1, uint64_t a2)
{
  if (CFArrayGetCount(*(a2 + 120)) < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(*(a2 + 120), v4);
    if (CMBaseObjectGetDerivedStorage() == a1)
    {
      break;
    }

    if (CFArrayGetCount(*(a2 + 120)) <= ++v4)
    {
      return 0;
    }
  }

  v6 = *(a2 + 120);

  return CFArrayGetValueAtIndex(v6, v4);
}

uint64_t DebugSpecialFunctionGetHandle(H16ISP::H16ISPDevice *a1, char *a2, unint64_t *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  bzero(v6, 0x40uLL);
  v7 = 5;
  v8 = *"FrontIRStrobe";
  v9 = unk_2249BBEE0;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v6, 0x40u, 1u, 0xFFFFFFFF);
  if (!result)
  {
    *a2 = v10;
  }

  return result;
}

uint64_t DebugSpecialFunction(H16ISP::H16ISPDevice *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  bzero(v9, 0x38uLL);
  v10 = 28;
  v11 = 1;
  v12 = a2;
  v13 = 1;
  v14 = a3;
  v15 = a4;
  v16 = 0;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x38u, 1u, 0xFFFFFFFF);
}

void addSupportedConfiguration(const __CFAllocator *a1, __CFArray *a2, int a3, int a4, int a5, const __CFArray *a6, int a7, int a8, BOOL a9, BOOL a10)
{
  v27 = a4;
  valuePtr = a3;
  v16 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
  if (v16)
  {
    v17 = v16;
    v18 = CFNumberCreate(a1, kCFNumberSInt32Type, &v27);
    if (v18)
    {
      v19 = v18;
      if (a5)
      {
        v20 = *MEMORY[0x277CBED28];
      }

      else
      {
        v20 = *MEMORY[0x277CBED10];
      }

      if (a7)
      {
        v21 = *MEMORY[0x277CBED28];
      }

      else
      {
        v21 = *MEMORY[0x277CBED10];
      }

      if (a8)
      {
        v22 = *MEMORY[0x277CBED28];
      }

      else
      {
        v22 = *MEMORY[0x277CBED10];
      }

      if (a9)
      {
        v23 = *MEMORY[0x277CBED28];
      }

      else
      {
        v23 = *MEMORY[0x277CBED10];
      }

      if (a10)
      {
        v24 = *MEMORY[0x277CBED28];
      }

      else
      {
        v24 = *MEMORY[0x277CBED10];
      }

      Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF43B8], v17);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF4370], v19);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF43A0], v20);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF4378], a6);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF4398], v21);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF4390], v21);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF4388], v21);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF4380], v21);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF43A8], v22);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF4368], v23);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF43B0], v24);
      CFRelease(v17);
      CFRelease(v19);
      CFArrayAppendValue(a2, Mutable);
      v26 = Mutable;
    }

    else
    {
      v26 = v17;
    }

    CFRelease(v26);
  }
}

void ___ZL39CopySupportedTimeOfFlightProjectorModesPK13__CFAllocatorPvP19H16ISPCaptureStreamP18H16ISPCaptureGroupP19H16ISPCaptureDevice_block_invoke(uint64_t a1, __CFArray *a2, int a3)
{
  valuePtr = a3;
  v4 = CFNumberCreate(*(a1 + 32), kCFNumberIntType, &valuePtr);
  CFArrayAppendValue(a2, v4);
  CFRelease(v4);
}

void ___ZL21CopyDCNUCVPixelBufferPK13__CFAllocatorPvP19H16ISPCaptureStreamP18H16ISPCaptureGroupP19H16ISPCaptureDevice_block_invoke(void *a1)
{
  if (*(a1[6] + 4984))
  {
    *(*(a1[4] + 8) + 24) = bfpn_correction_create_dict_from_metadata();
    if (*(*(a1[4] + 8) + 24))
    {
      *(*(a1[5] + 8) + 24) = CFRetain(*(a1[6] + 4984));
    }

    else
    {
      v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v2 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v2;
      }

      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        ___ZL21CopyDCNUCVPixelBufferPK13__CFAllocatorPvP19H16ISPCaptureStreamP18H16ISPCaptureGroupP19H16ISPCaptureDevice_block_invoke_cold_1();
      }
    }
  }
}

uint64_t SetSIFRCommonPool(uint64_t a1, int a2, __int16 a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  HIBYTE(v7) = 1;
  v3 = H16ISP::H16ISPDevice::SetCommonBufferPool(*(a1 + 24), a2, 3, a3, &v6, 0x32uLL);
  if (v3)
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SetSIFRCommonPool();
    }
  }

  return v3;
}

uint64_t H16ISPSensorRawPoolConfigurationFindIndexForPool(uint64_t a1, __CVPixelBufferPool *a2)
{
  *v7 = 0;
  if (H16ISPSensorRawPoolConfigurationGetBufferWidthAndHeight(a2, &v7[1], v7))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  for (i = 1; ; i = 0)
  {
    v5 = i;
    v6 = a1 + 4840 + 48 * result;
    if (*(v6 + 24) == v7[1] && *(v6 + 28) == v7[0])
    {
      break;
    }

    result = 1;
    if ((v5 & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t H16ISPSensorRawPoolConfigurationGetBufferWidthAndHeight(__CVPixelBufferPool *a1, unsigned int *a2, unsigned int *a3)
{
  PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(a1);
  valuePtr = 0;
  if (PixelBufferAttributes)
  {
    v6 = PixelBufferAttributes;
    Value = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x277CC4EC8]);
    if (Value && CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr + 4))
    {
      v8 = CFDictionaryGetValue(v6, *MEMORY[0x277CC4DD8]);
      if (v8 && CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr))
      {
        if (HIDWORD(valuePtr) && (v9 = valuePtr) != 0)
        {
          v10 = 0;
          *a2 = HIDWORD(valuePtr);
          *a3 = v9;
        }

        else
        {
          v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v14 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
          }

          v10 = 3758097084;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            H16ISPSensorRawPoolConfigurationGetBufferWidthAndHeight();
          }
        }
      }

      else
      {
        v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v13 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
        }

        v10 = 3758097136;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          H16ISPSensorRawPoolConfigurationGetBufferWidthAndHeight();
        }
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

      v10 = 3758097136;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        H16ISPSensorRawPoolConfigurationGetBufferWidthAndHeight();
      }
    }
  }

  else
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    v10 = 3758097136;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      H16ISPSensorRawPoolConfigurationGetBufferWidthAndHeight();
    }
  }

  return v10;
}

uint64_t H16ISPEPipeReceivedProc()
{
  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  pthread_mutex_lock((DerivedStorage + 328));
  v1 = isExclaveAlgoEnabled(DerivedStorage);
  if (v1)
  {
    H16ISP::H16ISPFilterGraphMessage::CreateH16ISPFilterGraphMessage(v1);
  }

  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    H16ISPEPipeReceivedProc();
  }

  pthread_mutex_unlock((DerivedStorage + 328));
  return 0;
}

void AddHiResRawPoolToFrameReceiver(uint64_t a1)
{
  v1 = *(a1 + 4936);
  if (v1 && (v2 = *(v1 + 56)) != 0)
  {
    if (H16ISP::H16ISPFrameReceiver::addSharedBufferPoolToFrameReceiver(*(a1 + 160), v2))
    {
      v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v3 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        AddHiResRawPoolToFrameReceiver();
      }
    }
  }

  else if (*(a1 + 4888))
  {
    v4 = *(a1 + 160);
    v5 = *(a1 + 4898);
    GetFormatForHiResRaw(a1, *(a1 + 4924));
    CVPixelBufferPoolGetMinBufferCount();
    if (H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v4, 31, v5))
    {
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v6 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        AddHiResRawPoolToFrameReceiver();
      }
    }
  }
}

void AddRawPlusPoolToFrameReceiver(uint64_t a1)
{
  v1 = *(a1 + 4936);
  if (v1)
  {
    v2 = *(v1 + 112);
    if (v2)
    {
      if (H16ISP::H16ISPFrameReceiver::addSharedBufferPoolToFrameReceiver(*(a1 + 160), v2))
      {
        v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v3 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
        }

        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          AddRawPlusPoolToFrameReceiver();
        }
      }
    }
  }
}

void ActivateStillImageQuadraOutputInFrameReceiver(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 160))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 192);
    if (v4 < v5)
    {
      v5 = 0;
    }

    if (H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(a1 + 156), *(*(a1 + 184) + 120 * (v4 - v5) + 16), v10, v12))
    {
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v6 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        ActivateStillImageQuadraOutputInFrameReceiver();
      }
    }

    else if ((*(*(a1 + 160) + 533) & 1) != 0 || (v8[10] = v10[10], v8[11] = v10[11], v8[12] = v10[12], v9 = v11, v8[6] = v10[6], v8[7] = v10[7], v8[8] = v10[8], v8[9] = v10[9], v8[2] = v10[2], v8[3] = v10[3], v8[4] = v10[4], v8[5] = v10[5], v8[0] = v10[0], v8[1] = v10[1], !AddRawPoolToFrameReceiver(a1, a2, v8)))
    {
      SetMetaDataOptionsOnFrameReceiver(a1, a2);
    }

    else
    {
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        ActivateStillImageQuadraOutputInFrameReceiver();
      }
    }
  }
}

void ActivateRawOutputInFrameReceiver(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 160))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 192);
    if (v4 < v5)
    {
      v5 = 0;
    }

    if (H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(a1 + 156), *(*(a1 + 184) + 120 * (v4 - v5) + 16), v11, v13))
    {
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v6 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        ActivateRawOutputInFrameReceiver();
      }
    }

    else if ((*(*(a1 + 160) + 533) & 1) != 0 || (v9[10] = v11[10], v9[11] = v11[11], v9[12] = v11[12], v10 = v12, v9[6] = v11[6], v9[7] = v11[7], v9[8] = v11[8], v9[9] = v11[9], v9[2] = v11[2], v9[3] = v11[3], v9[4] = v11[4], v9[5] = v11[5], v9[0] = v11[0], v9[1] = v11[1], !AddRawPoolToFrameReceiver(a1, a2, v9)))
    {
      if (*(a1 + 4256) == 1 && (*(a1 + 2120) | 2) == 0x4C303132 && H16ISP::H16ISPDevice::SetSensorInterfacePixelFormat(*(a2 + 24), *(a1 + 156), 15, 1, 0, 0))
      {
        v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v8 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          ActivateRawOutputInFrameReceiver();
        }
      }

      else
      {
        SetMetaDataOptionsOnFrameReceiver(a1, a2);
      }
    }

    else
    {
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        ActivateRawOutputInFrameReceiver();
      }
    }
  }
}

void AddDCSIMUDataPoolToFrameReceiver(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  H16ISP::H16ISPDevice::GetPoolInfo(*(a2 + 24), *(a1 + 156), 48, &v6 + 1, &v6);
  if (v3)
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      AddDCSIMUDataPoolToFrameReceiver();
    }
  }

  else if (H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(*(a1 + 160), 45, SHIDWORD(v6)))
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AddDCSIMUDataPoolToFrameReceiver();
    }
  }
}

void AddDCSNonVisionDataPoolToFrameReceiver(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  H16ISP::H16ISPDevice::GetPoolInfo(*(a2 + 24), *(a1 + 156), 49, &v6 + 1, &v6);
  if (v3)
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      AddDCSNonVisionDataPoolToFrameReceiver();
    }
  }

  else if (H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(*(a1 + 160), 46, SHIDWORD(v6)))
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AddDCSNonVisionDataPoolToFrameReceiver();
    }
  }
}

uint64_t getTofGroupPreviewMasterChannel(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 3);
    SensorChannel = H16ISP::H16ISPDevice::getSensorChannel(v2, 1785950322, 1852793709);
    v4 = *(v2 + 4304) + 8;
    v5 = *(v4 + 104 * SensorChannel + 52);
    if (v5 && (Count = CFArrayGetCount(*(a1 + 15)), (v7 = Count) != 0))
    {
      v8 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(*(a1 + 15), v8);
        FigCaptureStreamGetFigBaseObject();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v10 = *(DerivedStorage + 156);
        if (v5 == *(v4 + 104 * v10 + 52) && *(DerivedStorage + 4369) == 1 && *(DerivedStorage + 160))
        {
          break;
        }

        if (v7 == ++v8)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      LOWORD(v10) = -1;
    }
  }

  else
  {
    LOWORD(v10) = -1;
  }

  return v10;
}

void GraphTeardown(uint64_t a1, int a2)
{
  v4 = *(a1 + 4952);
  if (v4)
  {
    H16ISP::H16ISPFilterGraphManager::Deactivate(v4);
    v5 = *(a1 + 4952);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(a1 + 4952) = 0;
  }

  v6 = *(a1 + 4720);
  if (v6)
  {
    if (!*(a1 + 4360))
    {
      H16ISP::H16ISPFilterGraphManager::Deactivate(v6);
      v11 = *(a1 + 4720);
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      goto LABEL_21;
    }

    v12 = 0;
    if (!H16ISP::H16ISPFilterGraphManager::GetNode(v6, 3, &v12) && v12)
    {
      H16ISP::H16ISPGraphFrameSyncNode::DisableChannel(v12, *(a1 + 156));
    }

    v7 = *(a1 + 4720);
    if (a2)
    {
      H16ISP::H16ISPFilterGraphManager::Deactivate(v7);
      v8 = *(a1 + 4720);
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      if (CFArrayGetCount(*(a1 + 4360)) >= 1)
      {
        v9 = 0;
        do
        {
          CFArrayGetValueAtIndex(*(a1 + 4360), v9);
          FigCaptureStreamGetFigBaseObject();
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          if (DerivedStorage)
          {
            *(DerivedStorage + 4720) = 0;
          }

          ++v9;
        }

        while (v9 < CFArrayGetCount(*(a1 + 4360)));
      }

LABEL_21:
      *(a1 + 4720) = 0;
      return;
    }

    if (!H16ISP::H16ISPFilterGraphManager::GetNode(v7, 2, &v12) && v12)
    {
      H16ISP::H16ISPGraphExitNode::UnRegisterH16ISPFrameReceivedProcForChannel(v12, *(a1 + 156));
    }
  }
}

uint64_t std::unordered_map<unsigned int,H16ISP::H16ISPFrameReceiverBufferPoolType>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::__unordered_map_hasher<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::hash<eCIspDpcTypes>,std::equal_to<eCIspDpcTypes>,true>,std::__unordered_map_equal<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::equal_to<eCIspDpcTypes>,std::hash<eCIspDpcTypes>,true>,std::allocator<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>>>::__emplace_unique_key_args<eCIspDpcTypes,std::pair<eCIspDpcTypes const,FigCaptureStreamDefectivePixelsType> const&>(a1, i + 4);
  }

  return a1;
}

FILE *PearlCalibrationNode_IsfHistoryRead(_BYTE *a1, _OWORD *a2, uint64_t a3)
{
  v5 = *(a3 + 232);
  if (v5)
  {
    LODWORD(v9) = 4;
    H16ISP::H16ISPServicesRemote::GetProperty(v5, &v9);
    result = memcpy(a1, v10, 0xE38uLL);
    v7 = v12;
    *a2 = v11;
    a2[1] = v7;
  }

  else
  {
    readAnalyticsIsfThresholds(a2, a2);
    result = fopen("/var/mobile/Library/ISP/Pearl/IsfHistory.bin", "rb");
    if (result)
    {
      v8 = result;
      fread(a1, 0xE38uLL, 1uLL, result);

      return fclose(v8);
    }

    else
    {
      *a1 = 3;
      a1[4] = 1;
    }
  }

  return result;
}

void PearlCalibrationNode_IsfHistoryWrite(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v16 = *MEMORY[0x277D85DE8];
  v7 = *(v6 + 232);
  if (v7)
  {
    memcpy(v13, v2, sizeof(v13));
    v8 = v4[1];
    v14 = *v4;
    v15 = v8;
    LODWORD(v12) = 4;
    H16ISP::H16ISPServicesRemote::SetProperty(v7, &v12);
  }

  else
  {
    writeAnalyticsIsfThresholds(v3);
    v9 = fopen("/var/mobile/Library/ISP/Pearl/IsfHistory.bin.bak", "wb");
    if (v9)
    {
      v10 = v9;
      fwrite(v5, 0xE38uLL, 1uLL, v9);
      fclose(v10);

      rename("/var/mobile/Library/ISP/Pearl/IsfHistory.bin.bak", "/var/mobile/Library/ISP/Pearl/IsfHistory.bin", v11);
    }
  }
}

uint64_t PearlCalibrationNode_PceCalibWrite(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v10 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v6 = *(v4 + 232);
  if (v6)
  {
    memcpy(v9, v5, sizeof(v9));
    LODWORD(v8) = 3;
    return H16ISP::H16ISPServicesRemote::SetProperty(v6, &v8);
  }

  else
  {

    return PCECalibration::save(v5);
  }
}

void sub_2248C2C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Matrix<float>::~Matrix(v9);
  Matrix<float>::~Matrix(&a9);
  _Unwind_Resume(a1);
}

void Matrix<float>::operator-(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 20);
  if (v3 == *(a1 + 20))
  {
    v4 = *(a2 + 16);
    if (v4 == *(a1 + 16))
    {
      Matrix<float>::Matrix(a3, v4, v3);
      vDSPVsub<float>();
    }
  }

  Matrix<float>::operator-();
}

uint64_t *std::__tree<std::__value_type<camera_module_description,camera_module_description>,std::__map_value_compare<camera_module_description,std::__value_type<camera_module_description,camera_module_description>,std::less<camera_module_description>,true>,std::allocator<std::__value_type<camera_module_description,camera_module_description>>>::__emplace_unique_key_args<camera_module_description,std::piecewise_construct_t const&,std::tuple<camera_module_description&&>,std::tuple<>>(uint64_t a1, int *a2)
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

void Matrix<float>::Matrix(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_283812D20;
  v4 = *(a2 + 20);
  v5 = *(a2 + 16) - a3;
  if (a4 != -1)
  {
    v5 = a4;
  }

  v6 = *(a2 + 8) + 4 * (v4 * a3);
  v7 = &unk_283812D20;
  v8 = v6;
  v9 = v5;
  v10 = v4;
  v11 = 0;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  operator new[]();
}

uint64_t Matrix<float>::Matrix(uint64_t result, int a2, int a3)
{
  *result = &unk_283812D20;
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

{
  *result = &unk_283812D20;
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

void Matrix<float>::MultAxBToC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  if (v3 == 1 && v4 == 1)
  {
    Matrix<float>::ScalarProduct(a2, v10);
  }

  v7 = *(a2 + 16);
  v6 = *(a2 + 20);
  if (v6 == 1 && v7 == 1)
  {
    Matrix<float>::ScalarProduct(a1, v10);
  }

  if (v4 != v7)
  {
    Matrix<float>::MultAxBToC();
  }

  if (v3 != *(a3 + 16) || v6 != *(a3 + 20))
  {
    Matrix<float>::MultAxBToC();
  }

  LODWORD(v9) = *(a1 + 20);
  vDSPMmul<float>(*(a1 + 8), 1, *(a2 + 8), 1, *(a3 + 8), 1, *(a1 + 16), *(a3 + 20), v9);
}

void sub_2248C31B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t LimitZoomFactorForTeleDensification(uint64_t a1, _WORD *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = vcvtd_n_s64_f64(*(a1 + 4584), 0xAuLL);
  if (v3 < 1)
  {
    return 0;
  }

  v5 = 1;
  while (a2[v5] < v3)
  {
    if (++v5 == 4)
    {
      return 0;
    }
  }

  a2[1] = v3;
  a2[2] = v3;
  a2[3] = v3;
  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = a3;
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_DEFAULT, "TimeOfFlightAutoFocusAssistant: Limiting zoom factor of non-preview-master wide camera for tele densification (%s)\n", &v8, 0xCu);
  }

  return 1;
}

const __CFArray *ActiveNondisruptiveStreamingFormatsIncludesARawPlusConfig(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 104);
  if (result)
  {
    if (CFArrayGetCount(result) < 1)
    {
      return 0;
    }

    else
    {
      v5 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(*(a2 + 104), v5);
        FigCaptureStreamGetFigBaseObject();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (*(DerivedStorage + 4946) == 1)
        {
          v7 = DerivedStorage;
          if (H16ISP::H16ISPDevice::isSensorType(*(a1 + 24), *(DerivedStorage + 156), 1919251319) || H16ISP::H16ISPDevice::isSensorType(*(a1 + 24), *(v7 + 156), 1919251564))
          {
            break;
          }
        }

        if (++v5 >= CFArrayGetCount(*(a2 + 104)))
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t ChannelMaskForSharedRawPool(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SensorChannel = H16ISP::H16ISPDevice::getSensorChannel(*(a1 + 24), 1919246706, 1852793709);
  if (ActiveNondisruptiveStreamingFormatsIncludesARawPlusConfig(a1, a2))
  {
    if (SensorChannel < 0)
    {
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        ChannelMaskForSharedRawPool();
      }
    }

    else
    {
      return (1 << SensorChannel) & a3;
    }
  }

  return a3;
}

uint64_t ChannelMaskForSharedHiResRawPool(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SensorChannel = H16ISP::H16ISPDevice::getSensorChannel(*(a1 + 24), 1919246706, 1852793709);
  v7 = H16ISP::H16ISPDevice::getSensorChannel(*(a1 + 24), 1919251319, 1852793709);
  if (*(*(*(a1 + 24) + 4304) + 652) >= 18 && (v8 = *(a2 + 104)) != 0 && CFArrayGetCount(v8) >= 1)
  {
    v9 = 0;
    while (1)
    {
      CFArrayGetValueAtIndex(*(a2 + 104), v9);
      FigCaptureStreamGetFigBaseObject();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (H16ISP::H16ISPDevice::isSensorType(*(a1 + 24), *(DerivedStorage + 156), 1919251564) && ((*(DerivedStorage + 4945) & 1) != 0 || (*(DerivedStorage + 4944) & 1) != 0))
      {
        break;
      }

      if (++v9 >= CFArrayGetCount(*(a2 + 104)))
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (SensorChannel < 0 || v7 < 0)
    {
      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v11 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        ChannelMaskForSharedHiResRawPool();
      }
    }

    else
    {
      return ((1 << v7) | (1 << SensorChannel)) & a3;
    }
  }

  return a3;
}

uint64_t ChannelMaskForSharedRawPlusPool(uint64_t a1, uint64_t a2)
{
  SensorChannel = H16ISP::H16ISPDevice::getSensorChannel(*(a1 + 24), 1919251564, 1852793709);
  v5 = H16ISP::H16ISPDevice::getSensorChannel(*(a1 + 24), 1919251319, 1852793709);
  if (SensorChannel < 0 && v5 < 0)
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ChannelMaskForSharedRawPlusPool();
    }
  }

  else
  {
    v7 = 1 << v5;
    if (v5 < 0)
    {
      v7 = 0;
    }

    return (v7 | (1 << SensorChannel) & ~(SensorChannel >> 31)) & a2;
  }

  return a2;
}

uint64_t SetSharedBufferPoolConfigurations(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a2 + 144) && (v8 = *(a1 + 24), v9 = *(a2 + 8) - 1, v10 = ChannelMaskForSharedRawPool(a1, a2, a3), v11 = H16ISP::H16ISPDevice::SetSharedBufferPoolConfiguration(v8, v9, v10, 1, a4), v11))
  {
    v12 = v11;
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      SetSharedBufferPoolConfigurations();
    }
  }

  else if (*(a2 + 200) && (v14 = *(a1 + 24), v15 = *(a2 + 8) - 1, v16 = ChannelMaskForSharedHiResRawPool(a1, a2, a3), v17 = H16ISP::H16ISPDevice::SetSharedBufferPoolConfiguration(v14, v15, v16, 7, a4), v17))
  {
    v12 = v17;
    v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v18 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      SetSharedBufferPoolConfigurations();
    }
  }

  else if (*(a2 + 256))
  {
    v19 = *(a1 + 24);
    v20 = *(a2 + 8) - 1;
    v21 = ChannelMaskForSharedRawPlusPool(a1, a3);
    v12 = H16ISP::H16ISPDevice::SetSharedBufferPoolConfiguration(v19, v20, v21, 8, a4);
    if (v12)
    {
      v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v22 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        SetSharedBufferPoolConfigurations();
      }
    }
  }

  else
  {
    return 0;
  }

  return v12;
}

uint64_t H16ISPSensorSharedRawPoolConfigurationFindIndexForPool(uint64_t a1, __CVPixelBufferPool *a2)
{
  *v5 = 0;
  if (H16ISPSensorRawPoolConfigurationGetBufferWidthAndHeight(a2, &v5[1], v5))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  for (i = (a1 + 176); *(i - 1) != v5[1] || *i != v5[0]; i += 14)
  {
    if (++result == 3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

double InitBracketingTuningSet(void *a1)
{
  bzero(a1, 0x40uLL);
  *a1 = 8421504;
  *(a1 + 6) = 2618;
  *(a1 + 28) = 0;
  *&result = 0x200000000;
  *(a1 + 20) = 0x200000000;
  *(a1 + 22) = 0;
  *(a1 + 12) = 0;
  *(a1 + 26) = 0;
  a1[4] = 0x8080808080808080;
  *(a1 + 10) = 32896;
  return result;
}

__CFDictionary *CreateBasicPixelBufferAttributeDict()
{
  v9 = 128;
  valuePtr = 64;
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v2 = CFNumberCreate(v0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D60], v2);
    CFRelease(v2);
    v3 = CFNumberCreate(v0, kCFNumberIntType, &v9);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E38], v3);
    CFRelease(v3);
    v4 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v4)
    {
      v5 = v4;
      CFDictionarySetValue(v4, *MEMORY[0x277CD2B60], *MEMORY[0x277CBED28]);
      v8 = 0;
      v6 = CFNumberCreate(0, kCFNumberIntType, &v8);
      CFDictionarySetValue(v5, *MEMORY[0x277CD2970], v6);
      CFRelease(v6);
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], v5);
      CFRelease(v5);
    }

    else
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

uint64_t GetISPProcessingSessionOutputID(int a1)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v3 = MEMORY[0x277CF6A70];
        break;
      case 4:
        v3 = MEMORY[0x277CF6A58];
        break;
      case 5:
        v3 = MEMORY[0x277CF6A68];
        break;
      default:
        return result;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v3 = MEMORY[0x277CF6A60];
    }

    else
    {
      if (a1 != 2)
      {
        return result;
      }

      v3 = MEMORY[0x277CF6A48];
    }
  }

  else
  {
    v3 = MEMORY[0x277CF6A50];
  }

  return *v3;
}

uint64_t H16ISPProcessingSessionInvalidate(uint64_t a1)
{
  if (!a1)
  {
    v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v21 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      H16ISPProcessingSessionInvalidate();
    }

    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v22 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      H16ISPProcessingSessionInvalidate();
    }

    return 4294954516;
  }

  v2 = DerivedStorage;
  pthread_mutex_lock((DerivedStorage + 1248));
  if (!*v2)
  {
    *v2 = 1;
    v3 = *(v2 + 48);
    if (v3)
    {
      _Block_release(v3);
      *(v2 + 48) = 0;
    }

    v4 = *(v2 + 40);
    if (v4)
    {
      _Block_release(v4);
      *(v2 + 40) = 0;
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      CFRelease(v5);
      *(v2 + 24) = 0;
    }

    if (*(v2 + 1242))
    {
      if (*(v2 + 1320) == 1)
      {
        H16ISPMetrics::StopTimer(*(v2 + 1328));
        v6 = *(v2 + 1328);
        if (v6)
        {
          H16ISPMetrics::~H16ISPMetrics(v6);
          MEMORY[0x22AA55B60]();
        }

        v7 = *(v2 + 1336);
        if (v7)
        {
          H16ISPMetrics::~H16ISPMetrics(v7);
          MEMORY[0x22AA55B60]();
        }

        v8 = *(v2 + 1344);
        if (v8)
        {
          H16ISPMetrics::~H16ISPMetrics(v8);
          MEMORY[0x22AA55B60]();
        }

        v9 = *(v2 + 1352);
        if (v9)
        {
          H16ISPMetrics::~H16ISPMetrics(v9);
          MEMORY[0x22AA55B60]();
        }

        v10 = *(v2 + 1360);
        if (v10)
        {
          H16ISPMetrics::~H16ISPMetrics(v10);
          MEMORY[0x22AA55B60]();
        }

        v11 = *(v2 + 1368);
        if (v11)
        {
          H16ISPMetrics::~H16ISPMetrics(v11);
          MEMORY[0x22AA55B60]();
        }
      }

      v12 = *(v2 + 1224);
      if (v12)
      {
        H16ISP::H16ISPGeneralProcessFrameReceiver::stopReceive(v12);
      }

      v13 = CMBaseObjectGetDerivedStorage();
      pthread_mutex_lock((v13 + 32));
      if (v13 && !*v13)
      {
        H16ISP::H16ISPDevice::ISP_GeneralProcessStop(*(v2 + 56), *(v2 + 1240));
      }

      pthread_mutex_unlock((v13 + 32));
      v15 = *(v2 + 72);
      if (v15)
      {
        H16ISP::H16ISPFrameReceiverBufferPool::deactivatePool(v15);
        v16 = *(v2 + 72);
        if (v16)
        {
          H16ISP::H16ISPFrameReceiverBufferPool::~H16ISPFrameReceiverBufferPool(v16);
          MEMORY[0x22AA55B60]();
        }

        *(v2 + 72) = 0;
      }

      v17 = *(v2 + 64);
      if (v17)
      {
        H16ISP::H16ISPFrameReceiverBufferPool::deactivatePool(v17);
        v18 = *(v2 + 64);
        if (v18)
        {
          H16ISP::H16ISPFrameReceiverBufferPool::~H16ISPFrameReceiverBufferPool(v18);
          MEMORY[0x22AA55B60]();
        }

        *(v2 + 64) = 0;
      }

      v19 = (v2 + 1224);
      v20 = *(v2 + 88);
      if (v20)
      {
        CFRelease(v20);
        *(v2 + 88) = 0;
      }

      if (*v19)
      {
        H16ISP::DestroyH16ISPGeneralProcessFrameReceiver(*v19, v14);
      }

      *(v2 + 1242) = 0;
      *v19 = 0;
      *(v2 + 1232) = 0;
    }

    else
    {
      v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v24 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v24;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        H16ISPProcessingSessionInvalidate();
      }
    }

    CFRelease(*(v2 + 8));
    v25 = *(v2 + 16);
    if (v25)
    {
      CFRelease(v25);
      *(v2 + 16) = 0;
    }
  }

  pthread_mutex_unlock((v2 + 1248));
  return 0;
}

void H16ISPProcessingSessionFinalize(uint64_t a1)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v3 = DerivedStorage;
      H16ISPProcessingSessionInvalidate(a1);

      pthread_mutex_destroy((v3 + 1248));
    }

    else
    {
      v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v4 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        H16ISPProcessingSessionInvalidate();
      }
    }
  }
}

uint64_t H16ISPProcessingSessionCopyProperty(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      H16ISPProcessingSessionCopyProperty();
    }

    return 4294954516;
  }

  v8 = DerivedStorage;
  v9 = CMBaseObjectGetDerivedStorage();
  v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  v11 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v10 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_INFO, "H16ISPProcessingSessionCopyProperty: \n\n", buf, 2u);
  }

  pthread_mutex_lock((v8 + 1248));
  if (*v8)
  {
    pthread_mutex_unlock((v8 + 1248));
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v11)
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      H16ISPProcessingSessionCopyProperty();
    }

    v13 = 4294954511;
    FigSignalError(4294954511, "invalidated");
  }

  else
  {
    valuePtr = 0;
    Value = CFDictionaryGetValue(*(v8 + 16), a2);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      if (valuePtr <= 0x175 && (v17 = processingSessionProperties[5 * valuePtr + 3]) != 0)
      {
        v13 = v17(a3, a4, v8, v9);
      }

      else
      {
        v13 = 4294954512;
      }
    }

    else
    {
      v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v11)
      {
        v18 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        H16ISPProcessingSessionCopyProperty(a2);
      }

      v13 = 4294954509;
    }

    pthread_mutex_unlock((v8 + 1248));
  }

  return v13;
}

uint64_t H16ISPProcessingSessionSetProperty(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      H16ISPProcessingSessionSetProperty();
    }

    return 4294954516;
  }

  v6 = DerivedStorage;
  v7 = CMBaseObjectGetDerivedStorage();
  pthread_mutex_lock((v6 + 1248));
  if (*v6)
  {
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      H16ISPProcessingSessionSetProperty();
    }

    v9 = 4294954511;
    FigSignalError(4294954511, "invalidated");
  }

  else
  {
    valuePtr = 0;
    Value = CFDictionaryGetValue(*(v6 + 16), a2);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      if (valuePtr <= 0x175 && (v12 = processingSessionProperties[5 * valuePtr + 2]) != 0)
      {
        v9 = v12(a3, v6, v7);
      }

      else
      {
        v9 = 4294954512;
      }
    }

    else
    {
      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v13 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        H16ISPProcessingSessionCopyProperty(a2);
      }

      v9 = 4294954509;
    }
  }

  pthread_mutex_unlock((v6 + 1248));
  return v9;
}

uint64_t FigSignalError(uint64_t a1, const char *a2)
{
  v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v3 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    FigSignalError();
  }

  return a1;
}

uint64_t H16ISPProcessingSessionPrepare(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v2 = DerivedStorage;
      pthread_mutex_lock((DerivedStorage + 1248));
      if (*v2)
      {
        v3 = 4294954511;
LABEL_34:
        pthread_mutex_unlock((v2 + 1248));
        return v3;
      }

      v19 = 0;
      if (*(v2 + 1242) == 1)
      {
        v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v5 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v5;
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          H16ISPProcessingSessionPrepare();
        }

LABEL_31:
        v3 = 4294954516;
        goto LABEL_32;
      }

      v6 = *(v2 + 32) - 1;
      if (v6 >= 8)
      {
        v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v10 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          H16ISPProcessingSessionPrepare();
        }

        goto LABEL_31;
      }

      *(v2 + 80) = dword_2249BBF48[v6];
      v7 = CMBaseObjectGetDerivedStorage();
      pthread_mutex_lock((v7 + 32));
      if (v7 && !*v7)
      {
        v8 = H16ISP::H16ISPDevice::ISP_GeneralProcessStart(*(v2 + 56), *(v2 + 80), &v19);
        pthread_mutex_unlock((v7 + 32));
        if (!v8)
        {
          *(v2 + 1240) = v19;
          v13 = *(v2 + 56);
          v18[4] = 0;
          v18[5] = 0;
          v18[3] = v2;
          v18[1] = v13;
          v18[2] = MyH16ISPGeneralProcessFrameReceivedProc;
          v18[0] = v2 + 1224;
          if (H16ISP::CreateH16ISPGeneralProcessFrameReceiver(v18))
          {
            v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v14 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
            }

            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              H16ISPProcessingSessionPrepare();
            }
          }

          else
          {
            if (*(v2 + 1224))
            {
              *(v2 + 1232) = MyH16ISPGeneralProcessFrameReceivedProc;
              H16ISP::H16ISPDevice::GetCameraConfig(*(v2 + 56), 0, 0, v17, v20);
              H16ISP::H16ISPDevice::GetCameraConfig(*(v2 + 56), 1u, 0, v17, v20);
              v15 = *(v2 + 80);
              if (v15 <= 9)
              {
                if (((1 << v15) & 0x2E2) != 0)
                {
                  operator new();
                }

                if (!v15)
                {
                  operator new();
                }
              }

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
              H16ISPProcessingSessionPrepare();
            }
          }

          goto LABEL_45;
        }
      }

      else
      {
        pthread_mutex_unlock((v7 + 32));
        v8 = -536870212;
      }

      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        H16ISPProcessingSessionPrepare();
      }

      if (v8 <= -536870207)
      {
        if (v8 != -536870210)
        {
          if (v8 == -536870208)
          {
            v3 = 4294954511;
            goto LABEL_32;
          }

          goto LABEL_45;
        }

        v3 = 4294954510;
LABEL_32:
        v11 = *(v2 + 40);
        if (v11)
        {
          (*(v11 + 16))(v11, 1);
        }

        goto LABEL_34;
      }

      v3 = 4294954516;
      if (v8 == -536870206 || v8 == -536870184)
      {
        goto LABEL_32;
      }

LABEL_45:
      v3 = 4294954513;
      goto LABEL_32;
    }

    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      H16ISPProcessingSessionPrepare();
    }
  }

  return 4294954516;
}

uint64_t H16ISPProcessingSessionProcessBuffer(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v68 = *MEMORY[0x277D85DE8];
  bzero(&v57, 0x234uLL);
  bzero(v34, 0x398uLL);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  *&v34[936] = 0u;
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v9 = DerivedStorage;
      pthread_mutex_lock((DerivedStorage + 1248));
      if (*(v9 + 1320) == 1)
      {
        H16ISPMetrics::StopTimer(*(v9 + 1328));
        H16ISPMetrics::StartTimer(*(v9 + 1328));
        v55 = mach_absolute_time();
        v56 = mach_absolute_time();
      }

      if (*(v9 + 1242))
      {
        if (a5)
        {
          if (a4 <= 20)
          {
            if (a4 < 1)
            {
LABEL_39:
              if (!*v9)
              {
                operator new();
              }

              v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v22 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
              }

              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                H16ISPProcessingSessionProcessBuffer();
              }

              v12 = 4294954511;
              goto LABEL_50;
            }

            Height = 0;
            v33 = 0;
            key = 0;
            theDict = 0;
            v29 = 0;
            Width = 0;
            v15 = *MEMORY[0x277CF6A50];
            cf2 = *MEMORY[0x277CF6A58];
            v16 = a4;
            v17 = (a5 + 8);
            do
            {
              if (!*v17 || (v18 = *(v17 - 1)) == 0 || (GetISPProcessingSessionOutputIndex(v18), v19 = CFGetTypeID(*v17), v19 != CVPixelBufferGetTypeID()))
              {
                v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v23 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v23;
                }

                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  H16ISPProcessingSessionProcessBuffer();
                }

                goto LABEL_49;
              }

              if (CFEqual(*(v17 - 1), v15))
              {
                v20 = *v17;
                theDict = CVPixelBufferGetWidth(*v17);
                key = CVPixelBufferGetHeight(v20);
                v33 = 1;
              }

              else if (CFEqual(*(v17 - 1), cf2))
              {
                v21 = *v17;
                Width = CVPixelBufferGetWidth(*v17);
                Height = CVPixelBufferGetHeight(v21);
                v29 = 1;
              }

              v17 += 2;
              --v16;
            }

            while (v16);
            if ((v29 & 1) == 0)
            {
              goto LABEL_39;
            }

            if (v33)
            {
              if (Width == theDict >> 2 && Height == key >> 2)
              {
                goto LABEL_39;
              }

              v26 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v26 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v26;
              }

              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                *buf = 136316162;
                v59 = "H16ISPProcessingSessionProcessBuffer";
                v60 = 2048;
                v61 = theDict;
                v62 = 2048;
                v63 = key;
                v64 = 2048;
                v65 = Width;
                v66 = 2048;
                v67 = Height;
                _os_log_error_impl(&dword_2247DB000, v26, OS_LOG_TYPE_ERROR, "%s - Primary scaler low resolution buffer is not quarter res (primary=%zu x %zu, lowres=%zu x %zu\n", buf, 0x34u);
              }
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
                H16ISPProcessingSessionProcessBuffer();
              }
            }
          }

          else
          {
            v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v10 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
            }

            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              H16ISPProcessingSessionProcessBuffer();
            }
          }
        }

        else
        {
          v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v14 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            H16ISPProcessingSessionProcessBuffer();
          }
        }
      }

      else
      {
        v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v13 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          H16ISPProcessingSessionProcessBuffer();
        }
      }

LABEL_49:
      v12 = 4294954516;
LABEL_50:
      pthread_mutex_unlock((v9 + 1248));
      return v12;
    }

    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      H16ISPProcessingSessionProcessBuffer();
    }
  }

  return 4294954516;
}

uint64_t H16ISPProcessingSessionCompleteBuffers(uint64_t a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      H16ISPProcessingSessionCompleteBuffers();
    }

    return 4294954516;
  }

  v2 = DerivedStorage;
  pthread_mutex_lock((DerivedStorage + 1248));
  if (*(v2 + 1242))
  {
    if (*v2)
    {
      v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v3 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        H16ISPProcessingSessionCompleteBuffers();
      }

      v4 = 4294954511;
    }

    else
    {
      v8 = *(v2 + 1224);
      if (v8)
      {
        v4 = H16ISP::H16ISPGeneralProcessFrameReceiver::completeAllRequests(v8);
        if (v4)
        {
          v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v9 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
          }

          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            H16ISPProcessingSessionCompleteBuffers();
          }

          v4 = 4294954516;
        }
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      H16ISPProcessingSessionCompleteBuffers();
    }

    v4 = 4294954513;
  }

  pthread_mutex_unlock((v2 + 1248));
  return v4;
}

uint64_t H16ISPProcessingSessionProcessBuffers(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v90 = *MEMORY[0x277D85DE8];
  bzero(&v69, 0x234uLL);
  bzero(v46, 0x398uLL);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  *&v46[936] = 0u;
  if (!a1)
  {
    return 4294954516;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v15 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      H16ISPProcessingSessionProcessBuffers();
    }

    return 4294954516;
  }

  v13 = DerivedStorage;
  if ((*(DerivedStorage + 32) - 7) < 2)
  {
    pthread_mutex_lock((DerivedStorage + 1248));
    if (*(v13 + 1320) == 1)
    {
      H16ISPMetrics::StopTimer(*(v13 + 1328));
      H16ISPMetrics::StartTimer(*(v13 + 1328));
      v67 = mach_absolute_time();
      v68 = mach_absolute_time();
    }

    if (*(v13 + 1242))
    {
      if (a4)
      {
        if (a3 < 21)
        {
          if (a6)
          {
            if (a5 < 21)
            {
              v89 = 0u;
              v88 = 0u;
              v87 = 0u;
              v86 = 0u;
              v85 = 0u;
              v84 = 0u;
              v83 = 0u;
              v82 = 0u;
              v81 = 0u;
              *buffer = 0u;
              if (a3 >= 1)
              {
                v24 = a3;
                v25 = (a4 + 8);
                v26 = buffer;
                do
                {
                  v27 = *v25;
                  v25 += 2;
                  *v26++ = v27;
                  --v24;
                }

                while (v24);
              }

              if (a5 < 1)
              {
LABEL_64:
                if (!*v13)
                {
                  operator new();
                }

                v35 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v35 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v35;
                }

                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  H16ISPProcessingSessionProcessBuffers();
                }

                v17 = 4294954511;
                goto LABEL_75;
              }

              v28 = 0;
              key = 0;
              Width = 0;
              v41 = 0;
              Height = 0;
              v40 = 0;
              cf2 = *MEMORY[0x277CF6A50];
              v42 = *MEMORY[0x277CF6A58];
              v29 = a5;
              v30 = (a6 + 8);
              do
              {
                if (!*v30 || (v31 = *(v30 - 1)) == 0 || (GetISPProcessingSessionOutputIndex(v31), v32 = CFGetTypeID(*v30), v32 != CVPixelBufferGetTypeID()))
                {
                  v36 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                  {
                    v36 = os_log_create("com.apple.isp", "plugin");
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v36;
                  }

                  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                  {
                    H16ISPProcessingSessionProcessBuffers();
                  }

                  goto LABEL_74;
                }

                if (CFEqual(*(v30 - 1), cf2))
                {
                  v33 = *v30;
                  Width = CVPixelBufferGetWidth(*v30);
                  key = CVPixelBufferGetHeight(v33);
                  v28 = 1;
                }

                else if (CFEqual(*(v30 - 1), v42))
                {
                  v34 = *v30;
                  v40 = CVPixelBufferGetWidth(*v30);
                  Height = CVPixelBufferGetHeight(v34);
                  v41 = 1;
                }

                v30 += 2;
                --v29;
              }

              while (v29);
              if ((v41 & 1) == 0)
              {
                goto LABEL_64;
              }

              if (v28)
              {
                if (v40 == Width >> 2 && Height == key >> 2)
                {
                  goto LABEL_64;
                }

                v38 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v38 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v38;
                }

                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316162;
                  v71 = "H16ISPProcessingSessionProcessBuffers";
                  v72 = 2048;
                  v73 = Width;
                  v74 = 2048;
                  v75 = key;
                  v76 = 2048;
                  v77 = v40;
                  v78 = 2048;
                  v79 = Height;
                  _os_log_error_impl(&dword_2247DB000, v38, OS_LOG_TYPE_ERROR, "%s - Primary scaler low resolution buffer is not quarter res (primary=%zu x %zu, lowres=%zu x %zu\n", buf, 0x34u);
                }
              }

              else
              {
                v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v37 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v37;
                }

                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  H16ISPProcessingSessionProcessBuffers();
                }
              }
            }

            else
            {
              v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v22 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
              }

              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                H16ISPProcessingSessionProcessBuffers();
              }
            }
          }

          else
          {
            v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v23 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v23;
            }

            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              H16ISPProcessingSessionProcessBuffers();
            }
          }
        }

        else
        {
          v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v14 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            H16ISPProcessingSessionProcessBuffers();
          }
        }
      }

      else
      {
        v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v21 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          H16ISPProcessingSessionProcessBuffers();
        }
      }
    }

    else
    {
      v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v18 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        H16ISPProcessingSessionProcessBuffers();
      }
    }

LABEL_74:
    v17 = 4294954516;
LABEL_75:
    pthread_mutex_unlock((v13 + 1248));
    return v17;
  }

  if (a3 >= 2)
  {
    v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v16 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      H16ISPProcessingSessionProcessBuffers();
    }

    return 4294954516;
  }

  if (a3 == 1)
  {
    v19 = *(a4 + 8);
  }

  else
  {
    v19 = 0;
  }

  return H16ISPProcessingSessionProcessBuffer(a1, a2, v19, a5, a6);
}

void MyH16ISPGeneralProcessFrameReceivedProc(uint64_t a1, uint64_t a2)
{
  v86 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (!*(a2 + 948) && *(a1 + 48))
    {
      if (*(a2 + 1296))
      {
        v4 = 0;
        v5 = 0;
        v6 = (a2 + 976);
        v7 = (a2 + 976);
        do
        {
          if (CFEqual(*v7, @"ActionsList") || CFEqual(*v7, @"OperationsList"))
          {
            v5 = 1;
          }

          ++v4;
          v8 = *(a2 + 1296);
          v7 += 2;
        }

        while (v4 < v8);
        if (v5)
        {
          if (v8)
          {
            v9 = v85;
            v10 = *(a2 + 1296);
            do
            {
              v11 = *v6++;
              *v9++ = v11;
              --v10;
            }

            while (v10);
            v12 = v8;
          }

          else
          {
            v12 = 0;
            v5 = 1;
          }

          goto LABEL_29;
        }

        if (v8)
        {
          v14 = 0;
          v12 = 0;
          v15 = *(a2 + 944);
          do
          {
            if (v15)
            {
              v16 = &v6[v14];
              v17 = *(v16 + 1);
              v18 = v15;
              v19 = (a2 + 48);
              do
              {
                if (*v19 == v17)
                {
                  v20 = &v85[v12];
                  *v20 = *v16;
                  v20[1] = v17;
                  ++v12;
                }

                ++v19;
                --v18;
              }

              while (v18);
            }

            ++v14;
          }

          while (v14 != v8);
          v5 = 0;
LABEL_29:
          if (*(a1 + 1320) == 1)
          {
            *(a2 + 1312) = mach_absolute_time();
            *(a2 + 1376) = mach_absolute_time();
            *(a2 + 1392) = *(a2 + 952);
            H16ISPMetrics::AddSample(*(a1 + 1336), *(a2 + 1320), *(a2 + 1328));
            H16ISPMetrics::AddSample(*(a1 + 1344), *(a2 + 1336), *(a2 + 1344));
            H16ISPMetrics::AddSample(*(a1 + 1352), *(a2 + 1368), *(a2 + 1376));
            H16ISPMetrics::AddSample(*(a1 + 1360), *(a2 + 1384), *(a2 + 1392));
            H16ISPMetrics::AddSample(*(a1 + 1368), *(a2 + 1304), *(a2 + 1312));
            if ((dword_2810032CC & 0x80000) != 0)
            {
              v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v21 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
              }

              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = *(a2 + 960);
                v23 = *(a2 + 1320);
                v24 = *(a2 + 1328);
                v25 = *(a2 + 1336);
                v26 = *(a2 + 1344);
                v27 = *(a2 + 1368);
                v28 = *(a2 + 1376);
                v29 = *(a2 + 1384);
                v30 = *(a2 + 1392);
                v31 = *(a2 + 1304);
                v32 = *(a2 + 1312);
                *buf = 134220544;
                v64 = v22;
                v65 = 2048;
                v66 = v23;
                v67 = 2048;
                v68 = v24;
                v69 = 2048;
                v70 = v25;
                v71 = 2048;
                v72 = v26;
                v73 = 2048;
                v74 = v27;
                v75 = 2048;
                v76 = v28;
                v77 = 2048;
                v78 = v29;
                v79 = 2048;
                v80 = v30;
                v81 = 2048;
                v82 = v31;
                v83 = 2048;
                v84 = v32;
                _os_log_impl(&dword_2247DB000, v21, OS_LOG_TYPE_DEFAULT, "Sample:%p,%lld,%lld,%lld,%lld,%lld,%lld,%lld,%lld,%lld,%lld\n", buf, 0x70u);
              }
            }

            H16ISPMetrics::GetMetricsSummary(*(a1 + 1328), buf);
            if (HIDWORD(v64) == v64 - 2)
            {
              v33 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              v34 = MEMORY[0x277D86220];
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v33 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v33;
              }

              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *v60 = 0;
                _os_log_impl(&dword_2247DB000, v33, OS_LOG_TYPE_DEFAULT, "*** Metrics report for GP Session ***\n", v60, 2u);
                v33 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              }

              if (v33 == v34)
              {
                v33 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v33;
              }

              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *v60 = 0;
                _os_log_impl(&dword_2247DB000, v33, OS_LOG_TYPE_DEFAULT, "*** CM command cadence ***\n", v60, 2u);
              }

              H16ISPMetrics::PrintMetricsSummary(*(a1 + 1328));
              v35 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v34)
              {
                v35 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v35;
              }

              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *v60 = 0;
                _os_log_impl(&dword_2247DB000, v35, OS_LOG_TYPE_DEFAULT, "*** Driver Setup time ***\n", v60, 2u);
              }

              H16ISPMetrics::PrintMetricsSummary(*(a1 + 1336));
              v36 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v34)
              {
                v36 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v36;
              }

              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *v60 = 0;
                _os_log_impl(&dword_2247DB000, v36, OS_LOG_TYPE_DEFAULT, "*** FW Setup time ***\n", v60, 2u);
              }

              H16ISPMetrics::PrintMetricsSummary(*(a1 + 1344));
              v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v34)
              {
                v37 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v37;
              }

              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *v60 = 0;
                _os_log_impl(&dword_2247DB000, v37, OS_LOG_TYPE_DEFAULT, "*** Request Processing time (Userspace) ***\n", v60, 2u);
              }

              H16ISPMetrics::PrintMetricsSummary(*(a1 + 1352));
              v38 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v34)
              {
                v38 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v38;
              }

              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                *v60 = 0;
                _os_log_impl(&dword_2247DB000, v38, OS_LOG_TYPE_DEFAULT, "*** Request Processing time (Kernel) ***\n", v60, 2u);
              }

              H16ISPMetrics::PrintMetricsSummary(*(a1 + 1360));
              v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v34)
              {
                v39 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v39;
              }

              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *v60 = 0;
                _os_log_impl(&dword_2247DB000, v39, OS_LOG_TYPE_DEFAULT, "*** Total Processing time ***\n", v60, 2u);
              }

              H16ISPMetrics::PrintMetricsSummary(*(a1 + 1368));
              v40 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v34)
              {
                v40 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v40;
              }

              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                *v60 = 0;
                _os_log_impl(&dword_2247DB000, v40, OS_LOG_TYPE_DEFAULT, "*** Metrics end ***\n", v60, 2u);
              }
            }
          }

          v41 = *(a1 + 32);
          v42 = v41 > 7;
          v43 = (1 << v41) & 0xE2;
          if (v42 || v43 == 0)
          {
            if ((v5 & 1) == 0)
            {
              if (*(a2 + 944))
              {
                v53 = *(a2 + 40);
                if (v53)
                {
                  CVBufferSetAttachment(*(a2 + 48), @"RawMetaData", v53, kCVAttachmentMode_ShouldPropagate);
                  if ((*(a1 + 1312) & 1) == 0)
                  {
                    memset(v60, 0, sizeof(v60));
                    v60[1] = 1;
                    *&v60[2] = 0;
                    v60[6] = 0;
                    *&v60[10] = 0;
                    if (byte_28100338C == 1)
                    {
                      v60[18] = 1;
                    }

                    if (byte_28100338D == 1)
                    {
                      v60[19] = byte_28100338D;
                    }

                    v54 = *(a2 + 48);
                    v61 = 0;
                    v62 = v54;
                    std::deque<__CVBuffer *>::deque(buf, &v62, 1);
                    v55.n128_u64[0] = 0;
                    H16ISP::GenerateAndAttachCoreMediaMetaDataDictionary(*(*(a1 + 56) + 88), *(a2 + 48), buf, v60, v55);
                    v56 = *MEMORY[0x277CF3F70];
                    Attachment = CVBufferGetAttachment(*(a2 + 48), *MEMORY[0x277CF3F70], 0);
                    if (*(a2 + 944) >= 2u)
                    {
                      v57 = (a2 + 56);
                      v58 = 1;
                      do
                      {
                        CVBufferSetAttachment(*v57, v56, Attachment, kCVAttachmentMode_ShouldPropagate);
                        ++v58;
                        ++v57;
                      }

                      while (v58 < *(a2 + 944));
                    }

                    CFRetain(Attachment);
                    v59 = &v85[v12];
                    *v59 = v56;
                    v59[1] = Attachment;
                    std::deque<__CVBuffer *>::~deque[abi:ne200100](buf);
                    goto LABEL_94;
                  }
                }
              }
            }
          }

          else if (*(a2 + 944))
          {
            v45 = 0;
            v46 = a2 + 48;
            do
            {
              v47 = v45;
              PixelFormatType = CVPixelBufferGetPixelFormatType(*(v46 + 8 * v45));
              if (PixelFormatType > 2100848175)
              {
                if (PixelFormatType > 2105042479)
                {
                  v49 = PixelFormatType == 2105046576;
                  v50 = 2105042480;
                }

                else
                {
                  v49 = PixelFormatType == 2100848176;
                  v50 = 2100852272;
                }
              }

              else if (PixelFormatType > 1534617135)
              {
                v49 = PixelFormatType == 1534617136;
                v50 = 1534621232;
              }

              else
              {
                v49 = PixelFormatType == 1530422832;
                v50 = 1530426928;
              }

              if (v49 || PixelFormatType == v50)
              {
                CVPixelBufferLockBaseAddress(*(a2 + 40), 0);
                CVPixelBufferGetBaseAddress(*(a2 + 40));
                CVPixelBufferGetIOSurface(*(v46 + 8 * v47));
                IOSurfaceSetCompressedTileDataRegionMemoryUsedOfPlane();
                IOSurfaceSetCompressedTileDataRegionMemoryUsedOfPlane();
                CVPixelBufferUnlockBaseAddress(*(a2 + 40), 0);
              }

              v45 = v47 + 1;
            }

            while (*(a2 + 944) > (v47 + 1));
            Attachment = 0;
            goto LABEL_94;
          }

          Attachment = 0;
LABEL_94:
          (*(*(a1 + 48) + 16))();
          if (Attachment)
          {
            CFRelease(Attachment);
          }

          return;
        }
      }

      v5 = 0;
      v12 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      MyH16ISPGeneralProcessFrameReceivedProc();
    }
  }
}

void sub_2248C73BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::deque<__CVBuffer *>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t GetISPProcessingSessionOutputIndex(const __CFString *a1)
{
  if (CFEqual(a1, *MEMORY[0x277CF6A50]))
  {
    return 0;
  }

  if (CFEqual(a1, *MEMORY[0x277CF6A60]))
  {
    return 1;
  }

  if (CFEqual(a1, *MEMORY[0x277CF6A48]))
  {
    return 2;
  }

  if (CFEqual(a1, *MEMORY[0x277CF6A70]))
  {
    return 3;
  }

  return 4 * (CFEqual(a1, *MEMORY[0x277CF6A58]) != 0);
}

uint64_t ISPProcessingSessionProcessBuffer(uint64_t a1, CVBufferRef buffer, void *cf, uint64_t a4, uint64_t a5, const void *a6)
{
  Attachment = 0;
  v91 = 0;
  if (*(a1 + 1242))
  {
    if (buffer)
    {
      if (a4)
      {
        if (*(a1 + 32) != 2)
        {
          goto LABEL_21;
        }

        if (cf)
        {
          v12 = CFGetTypeID(cf);
          if (v12 == CVPixelBufferGetTypeID())
          {
            Attachment = cf;
            CVPixelBufferRetain(cf);
          }

LABEL_21:
          v17 = *(a1 + 64);
          if (!v17)
          {
            v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v19 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
            }

            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              ISPProcessingSessionProcessBuffer();
            }

            goto LABEL_31;
          }

          if (H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(v17, &v91, 0))
          {
            v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v18 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
            }

            v14 = 3758097086;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              ISPProcessingSessionProcessBuffer();
            }

            goto LABEL_32;
          }

          CVPixelBufferLockBaseAddress(v91, 0);
          BaseAddress = CVPixelBufferGetBaseAddress(v91);
          DataSize = CVPixelBufferGetDataSize(v91);
          bzero(BaseAddress, DataSize);
          v23 = 0;
          *BaseAddress = 1;
          *(BaseAddress + 1) = 16;
          v24 = *(a1 + 32);
          if (v24 > 4)
          {
            if ((v24 - 5) >= 3)
            {
              goto LABEL_93;
            }
          }

          else if (v24 != 1)
          {
            if (v24 != 2)
            {
              if (v24 != 3)
              {
                goto LABEL_93;
              }

              *(BaseAddress + 5) = 192;
              Length = CFDataGetLength(*a4);
              BytePtr = CFDataGetBytePtr(*a4);
              memmove(BaseAddress + 96, BytePtr, Length);
              goto LABEL_92;
            }

            if (Attachment)
            {
              CVPixelBufferLockBaseAddress(Attachment, 0);
              v41 = CVPixelBufferGetBaseAddress(Attachment);
              goto LABEL_72;
            }

            v74 = *(a1 + 72);
            if (v74)
            {
              if (H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(v74, &Attachment, 0))
              {
                v75 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v75 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v75;
                }

                v14 = 3758097086;
                if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                {
                  ISPProcessingSessionProcessBuffer();
                }

                goto LABEL_32;
              }

              v79 = CFDataGetLength(cf);
              v41 = CFDataGetBytePtr(cf);
              CVPixelBufferLockBaseAddress(Attachment, 0);
              v80 = CVPixelBufferGetBaseAddress(Attachment);
              memmove(v80, v41, v79);
LABEL_72:
              v42 = v41[4];
              if (v42)
              {
                v43 = v41[5];
                if (v43)
                {
                  v44 = v41 + v43;
                }

                else
                {
                  v44 = 0;
                }

                if (v42 >= 3)
                {
                  v45 = v41[7];
                  if (v45)
                  {
                    v46 = v41 + v45;
                  }

                  else
                  {
                    v46 = 0;
                  }

                  if (v42 < 8)
                  {
                    v48 = 0;
                  }

                  else
                  {
                    v47 = v41[12];
                    if (v47)
                    {
                      v48 = v41 + v47;
                    }

                    else
                    {
                      v48 = 0;
                    }

                    if (v42 >= 0xA)
                    {
                      v49 = v41[14];
                      if (v49)
                      {
                        v50 = v41 + v49;
LABEL_144:
                        v14 = 3758096385;
                        if (v44 && v46 && v48 && v50)
                        {
                          *(BaseAddress + 1) = 0xB000000088;
                          *(BaseAddress + 34) = *v44;
                          *(BaseAddress + 70) = *(v44 + 344);
                          BaseAddress[78] = *(v44 + 4);
                          BaseAddress[79] = *(v44 + 94);
                          BaseAddress[80] = v44[45];
                          BaseAddress[81] = *(v44 + 201);
                          *(BaseAddress + 168) = v44[461];
                          BaseAddress[82] = *(v46 + 2);
                          BaseAddress[83] = *(v46 + 4);
                          *(BaseAddress + 43) = v44[46];
                          BaseAddress[92] = *(v46 + 1313);
                          *(BaseAddress + 184) = *(v46 + 432);
                          *(BaseAddress + 740) = v46[12];
                          *(BaseAddress + 741) = v46[1732];
                          *(BaseAddress + 44) = 0;
                          *(BaseAddress + 45) = v41[3];
                          *(BaseAddress + 726) = v48[63];
                          *(BaseAddress + 727) = v48[66];
                          *(BaseAddress + 728) = v50[162];
                          *(BaseAddress + 729) = v50[5];
                          *(BaseAddress + 730) = v50[2];
                          *(BaseAddress + 725) = v50[4];
                          *(BaseAddress + 731) = 0;
                          v23 = *(v44 + 229);
                          CVPixelBufferUnlockBaseAddress(Attachment, 0);
LABEL_93:
                          CVPixelBufferUnlockBaseAddress(v91, 0);
                          memcpy(__dst, a6, sizeof(__dst));
                          *(&__dst[0] + 1) = buffer;
                          PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
                          FrameFormat = H16ISP::getFrameFormat(PixelFormatType);
                          if (FrameFormat > 0x15 || (v56 = 1, ((1 << FrameFormat) & 0x380004) == 0))
                          {
                            v56 = 0;
                          }

                          DWORD2(__dst[1]) = v56;
                          *&__dst[2] = v91;
                          LODWORD(__dst[59]) = *(a4 + 1128);
                          if (LODWORD(__dst[59]))
                          {
                            v57 = 0;
                            v86 = *MEMORY[0x277CC4DA8];
                            v58 = (a5 + 8);
                            v59 = 14;
                            v84 = *MEMORY[0x277CBED28];
                            do
                            {
                              v60 = *v58;
                              ISPProcessingSessionOutputIndex = GetISPProcessingSessionOutputIndex(*(v58 - 1));
                              *(&__dst[3] + v57) = v60;
                              v62 = *(a1 + 32);
                              v63 = v62 > 7;
                              v64 = (1 << v62) & 0xE2;
                              if (!v63 && v64 != 0)
                              {
                                extraColumnsOnRight[0] = 0;
                                extraRowsOnBottom = 0;
                                CVPixelBufferGetExtendedPixels(v60, 0, extraColumnsOnRight, 0, &extraRowsOnBottom);
                                if (extraColumnsOnRight[0] | extraRowsOnBottom)
                                {
                                  CVBufferSetAttachment(v60, v86, v84, kCVAttachmentMode_ShouldNotPropagate);
                                }
                              }

                              v66 = a4 + 8 + 56 * ISPProcessingSessionOutputIndex;
                              v67 = &__dst[v59];
                              v68 = *(v66 + 32);
                              *v67 = *(v66 + 16);
                              v67[1] = v68;
                              *(&__dst[54] + v57++) = 0;
                              v58 += 2;
                              v59 += 2;
                            }

                            while (v57 < LODWORD(__dst[59]));
                          }

                          *(&__dst[2] + 1) = Attachment;
                          LODWORD(__dst[0]) = *(a1 + 1240);
                          DWORD1(__dst[0]) = v23;
                          if (*(a1 + 1320))
                          {
                            *&__dst[83] = mach_absolute_time();
                            *(&__dst[83] + 1) = mach_absolute_time();
                            *(&__dst[85] + 1) = mach_absolute_time();
                            *(&__dst[86] + 1) = mach_absolute_time();
                          }

                          DerivedStorage = CMBaseObjectGetDerivedStorage();
                          pthread_mutex_lock((DerivedStorage + 32));
                          v14 = 3758097088;
                          if (DerivedStorage && !*DerivedStorage)
                          {
                            v70 = *(a1 + 1224);
                            memcpy(extraColumnsOnRight, __dst, sizeof(extraColumnsOnRight));
                            v14 = H16ISP::H16ISPGeneralProcessFrameReceiver::GeneralProcess(v70, extraColumnsOnRight);
                          }

                          pthread_mutex_unlock((DerivedStorage + 32));
                          if (*(a1 + 1320) == 1)
                          {
                            mach_absolute_time();
                          }

                          if (v14)
                          {
                            v71 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                            {
                              v71 = os_log_create("com.apple.isp", "plugin");
                              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v71;
                            }

                            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                            {
                              ISPProcessingSessionProcessBuffer();
                            }
                          }
                        }

LABEL_32:
                        if (Attachment)
                        {
                          CVPixelBufferRelease(Attachment);
                        }

                        if (v91)
                        {
                          CVPixelBufferRelease(v91);
                        }

                        return v14;
                      }
                    }
                  }

LABEL_143:
                  v50 = 0;
                  goto LABEL_144;
                }

                v48 = 0;
              }

              else
              {
                v48 = 0;
                v44 = 0;
              }

              v46 = 0;
              goto LABEL_143;
            }

            v78 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v78 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v78;
            }

            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              ISPProcessingSessionProcessBuffer();
            }

LABEL_31:
            v14 = 3758096385;
            goto LABEL_32;
          }

          v27 = CFDataGetLength(*a4);
          v28 = CFDataGetBytePtr(*a4);
          v29 = v28;
          v30 = *(a1 + 32);
          if (v30 == 6)
          {
            *(BaseAddress + 11) = 128;
            if (*v28 == 1)
            {
              if (*(v28 + 23787) == 1)
              {
                v85 = v28 + 94208;
                *(BaseAddress + 23813) = 1;
                *(BaseAddress + 95256) = v28[20];
                *(BaseAddress + 47629) = *(v28 + 4);
                v35 = *(v28 + 6);
                *(BaseAddress + 23812) = v35;
                memcpy(BaseAddress + 64, v28 + 28, v35);
                if (*(a4 + 1128))
                {
                  v36 = 0;
                  v37 = *MEMORY[0x277CF6A58];
                  v38 = a5;
                  while (!CFEqual(*v38, v37))
                  {
                    ++v36;
                    v38 += 2;
                    if (v36 >= *(a4 + 1128))
                    {
                      goto LABEL_156;
                    }
                  }

                  *(BaseAddress + 95257) = 1;
                }

LABEL_156:
                v33 = 648740;
                *(BaseAddress + 162177) = 1;
                v81 = v85[966];
                *(BaseAddress + 648712) = v81;
                if (v81)
                {
                  *(BaseAddress + 324358) = *(v85 + 59);
                  BaseAddress[324366] = *(v85 + 480);
                  *(BaseAddress + 324367) = *(v85 + 962);
                  v82 = *(v85 + 242);
                  if (v82 >= 0x871C2)
                  {
                    v83 = 553410;
                  }

                  else
                  {
                    v83 = v82;
                  }

                  memcpy(BaseAddress + 47648, v29 + 95180, v83);
                }

                goto LABEL_64;
              }

              v77 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v77 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v77;
              }

              v14 = 3758097090;
              if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_32;
              }
            }

            else
            {
              v73 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v73 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v73;
              }

              v14 = 3758097090;
              if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_32;
              }
            }
          }

          else
          {
            if (v30 != 5)
            {
              if (v30 == 1)
              {
                *(BaseAddress + 4) = 72;
                memmove(BaseAddress + 36, v28, v27);
                v31 = CVPixelBufferGetPixelFormatType(buffer);
                H16ISP::getFrameFormatMetaInfo(v31, __dst);
                v32 = CVPixelBufferGetPixelFormatType(*(a5 + 8));
                H16ISP::getFrameFormatMetaInfo(v32, extraColumnsOnRight);
                if (BaseAddress[36] >= 2u && (LODWORD(__dst[1]) == 2 || LODWORD(extraColumnsOnRight[2]) == 2))
                {
                  v76 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                  {
                    v76 = os_log_create("com.apple.isp", "plugin");
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v76;
                  }

                  if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                  {
                    ISPProcessingSessionProcessBuffer();
                  }

                  v14 = 3758097090;
                  goto LABEL_32;
                }

                v33 = *(BaseAddress + 4) + 55940;
              }

              else
              {
                v33 = 0;
              }

              goto LABEL_64;
            }

            *(BaseAddress + 10) = 128;
            if (*v28 == 1)
            {
              v33 = 95296;
LABEL_64:
              *(BaseAddress + 7) = v33;
              bzero(BaseAddress + v33, 0xE08uLL);
              v39 = *(a1 + 72);
              if (v39)
              {
                if (H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(v39, &Attachment, 0))
                {
                  v40 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                  {
                    v40 = os_log_create("com.apple.isp", "plugin");
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v40;
                  }

                  v14 = 3758097086;
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                  {
                    ISPProcessingSessionProcessBuffer();
                  }

                  goto LABEL_32;
                }

                CVPixelBufferLockBaseAddress(Attachment, 0);
                v52 = CVPixelBufferGetBaseAddress(Attachment);
                v53 = CVPixelBufferGetDataSize(Attachment);
                bzero(v52, v53);
                *v52 = 1;
                *(v52 + 1) = 1;
                *(v52 + 4) = xmmword_2249BBD70;
                *(v52 + 12) = xmmword_2249BBD80;
                *(v52 + 20) = xmmword_2249BBD90;
                *(v52 + 28) = xmmword_2249BBDA0;
                CVPixelBufferUnlockBaseAddress(Attachment, 0);
LABEL_92:
                v23 = 0;
                goto LABEL_93;
              }

              v51 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v51 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v51;
              }

              if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
              {
                ISPProcessingSessionProcessBuffer();
              }

              goto LABEL_31;
            }

            v72 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v72 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v72;
            }

            v14 = 3758097090;
            if (!os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_32;
            }
          }

          ISPProcessingSessionProcessBuffer();
          goto LABEL_32;
        }

        Attachment = CVBufferGetAttachment(buffer, @"RawMetaData", 0);
        CVPixelBufferRetain(Attachment);
        CVBufferRemoveAttachment(buffer, @"RawMetaData");
        if (Attachment)
        {
          goto LABEL_21;
        }

        v34 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v34 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v34;
        }

        v14 = 3758097090;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          ISPProcessingSessionProcessBuffer();
        }
      }

      else
      {
        v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v16 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
        }

        v14 = 3758097090;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          ISPProcessingSessionProcessBuffer();
        }
      }
    }

    else
    {
      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v15 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
      }

      v14 = 3758097090;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        ISPProcessingSessionProcessBuffer();
      }
    }
  }

  else
  {
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    v14 = 3758097112;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      ISPProcessingSessionProcessBuffer();
    }
  }

  return v14;
}

uint64_t ISPProcessingSessionProcessBufferGeneric(uint64_t a1, uint64_t a2, uint64_t a3, void *__src)
{
  if (*(a1 + 1242))
  {
    if (a2)
    {
      memcpy(__dst, __src, 0x7B0uLL);
      if (*(a2 + 1128))
      {
        v7 = 0;
        v8 = 0;
        v9 = __dst[5];
        v10 = (a3 + 8);
        do
        {
          if (CFEqual(*(v10 - 1), @"ActionsList"))
          {
            __dst[27] = *v10;
          }

          else if (CFEqual(*(v10 - 1), @"OperationsList"))
          {
            __dst[26] = *v10;
          }

          else if (CFEqual(*(v10 - 1), @"StatsBuffer"))
          {
            v9 = *v10;
          }

          else
          {
            __dst[v8++ + 6] = *v10;
          }

          ++v7;
          v10 += 2;
        }

        while (v7 < *(a2 + 1128));
      }

      else
      {
        v8 = 0;
        v9 = __dst[5];
      }

      LODWORD(__dst[118]) = v8;
      if (v9)
      {
        __dst[5] = 0;
        __dst[0] = *(a1 + 1240);
        if (*(a1 + 1320) == 1)
        {
          __dst[166] = mach_absolute_time();
          __dst[167] = mach_absolute_time();
          __dst[171] = mach_absolute_time();
          __dst[173] = mach_absolute_time();
        }

        v12 = 3758097088;
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        pthread_mutex_lock((DerivedStorage + 32));
        if (DerivedStorage && !*DerivedStorage)
        {
          v15 = *(a1 + 1224);
          memcpy(v18, __dst, sizeof(v18));
          v12 = H16ISP::H16ISPGeneralProcessFrameReceiver::GeneralProcessGeneric(v15, v18, 0);
        }

        pthread_mutex_unlock((DerivedStorage + 32));
        if (*(a1 + 1320) == 1)
        {
          mach_absolute_time();
        }

        if (v12)
        {
          v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v16 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            ISPProcessingSessionProcessBufferGeneric();
          }
        }
      }

      else
      {
        return 4294954516;
      }
    }

    else
    {
      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v13 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        ISPProcessingSessionProcessBufferGeneric();
      }

      return 3758097090;
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
      ISPProcessingSessionProcessBuffer();
    }

    return 3758097112;
  }

  return v12;
}

uint64_t ISPProcessingSessionProcessBuffers(uint64_t a1, CVPixelBufferRef *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v73 = 0;
  v74 = 0;
  if (*(a1 + 1242))
  {
    if (a3)
    {
      v7 = *(a1 + 64);
      if (!v7)
      {
        v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v15 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          ISPProcessingSessionProcessBuffer();
        }

LABEL_21:
        v12 = 3758096385;
LABEL_22:
        if (v73)
        {
          CVPixelBufferRelease(v73);
        }

        if (v74)
        {
          CVPixelBufferRelease(v74);
        }

        return v12;
      }

      if (H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(v7, &v74, 0))
      {
        v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v11 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
        }

        v12 = 3758097086;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          ISPProcessingSessionProcessBuffer();
        }

        goto LABEL_22;
      }

      CVPixelBufferLockBaseAddress(v74, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(v74);
      DataSize = CVPixelBufferGetDataSize(v74);
      bzero(BaseAddress, DataSize);
      *BaseAddress = 1;
      *(BaseAddress + 1) = 16;
      v19 = *(a1 + 32);
      if ((v19 - 5) >= 3)
      {
        if (v19 == 8)
        {
          *(BaseAddress + 14) = 192;
          BytePtr = CFDataGetBytePtr(*a3);
          if (CFDataGetLength(*a3) < 4 || *BytePtr != 1)
          {
            v34 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v34 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v34;
            }

            v12 = 3758097086;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              ISPProcessingSessionProcessBuffer();
            }

            goto LABEL_22;
          }

          MapSMGParametersV1(BytePtr, BaseAddress + 192);
          goto LABEL_65;
        }

        if (v19 != 1)
        {
LABEL_65:
          CVPixelBufferUnlockBaseAddress(v74, 0);
          a5[4] = v74;
          if (*(a5 + 490))
          {
            v37 = 0;
            v38 = a5 + 215;
            do
            {
              v39 = a2[v37];
              v38[v37] = v39;
              PixelFormatType = CVPixelBufferGetPixelFormatType(v39);
              FrameFormat = H16ISP::getFrameFormat(PixelFormatType);
              v43 = FrameFormat <= 0x15 && ((1 << FrameFormat) & 0x380004) != 0;
              *(v38 + v37++ + 40) = v43;
            }

            while (v37 < *(a5 + 490));
          }

          v44 = *(a3 + 1128);
          *(a5 + 236) = v44;
          if (v44)
          {
            v45 = 0;
            v69 = *MEMORY[0x277CC4DA8];
            v46 = (a4 + 8);
            v67 = *MEMORY[0x277CBED28];
            v47 = 28;
            do
            {
              v48 = *v46;
              ISPProcessingSessionOutputIndex = GetISPProcessingSessionOutputIndex(*(v46 - 1));
              a5[v45 + 6] = v48;
              v50 = *(a1 + 32);
              v51 = v50 > 7;
              v52 = (1 << v50) & 0xE2;
              if (!v51 && v52 != 0)
              {
                extraColumnsOnRight[0] = 0;
                *&extraRowsOnBottom = 0;
                CVPixelBufferGetExtendedPixels(v48, 0, extraColumnsOnRight, 0, &extraRowsOnBottom);
                if (extraColumnsOnRight[0] | extraRowsOnBottom)
                {
                  CVBufferSetAttachment(v48, v69, v67, kCVAttachmentMode_ShouldNotPropagate);
                }
              }

              v54 = a3 + 8 + 56 * ISPProcessingSessionOutputIndex;
              v55 = &a5[v47];
              v56 = *(v54 + 32);
              *v55 = *(v54 + 16);
              v55[1] = v56;
              *(a5 + v45++ + 216) = 0;
              v46 += 2;
              v47 += 4;
            }

            while (v45 < *(a5 + 236));
          }

          a5[5] = v73;
          *a5 = *(a1 + 1240);
          *(a5 + 1) = 0;
          if (*(a1 + 1320))
          {
            a5[166] = mach_absolute_time();
            a5[167] = mach_absolute_time();
            a5[171] = mach_absolute_time();
            a5[173] = mach_absolute_time();
          }

          DerivedStorage = CMBaseObjectGetDerivedStorage();
          pthread_mutex_lock((DerivedStorage + 32));
          v12 = 3758097088;
          if (DerivedStorage && !*DerivedStorage)
          {
            v58 = *(a1 + 1224);
            memcpy(extraColumnsOnRight, a5, sizeof(extraColumnsOnRight));
            v12 = H16ISP::H16ISPGeneralProcessFrameReceiver::GeneralProcessBuffers(v58, extraColumnsOnRight);
          }

          pthread_mutex_unlock((DerivedStorage + 32));
          if (*(a1 + 1320) == 1)
          {
            a5[168] = mach_absolute_time();
          }

          if (v12)
          {
            v59 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v59 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v59;
            }

            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              ISPProcessingSessionProcessBuffer();
            }
          }

          goto LABEL_22;
        }
      }

      Length = CFDataGetLength(*a3);
      v21 = CFDataGetBytePtr(*a3);
      v22 = v21;
      v23 = *(a1 + 32);
      if (v23 == 6)
      {
        *(BaseAddress + 11) = 128;
        if (*v21 == 1)
        {
          if (*(v21 + 23787) == 1)
          {
            v68 = a4;
            *(BaseAddress + 23813) = 1;
            *(BaseAddress + 95256) = v21[20];
            *(BaseAddress + 47629) = *(v21 + 4);
            v28 = *(v21 + 6);
            *(BaseAddress + 23812) = v28;
            memcpy(BaseAddress + 64, v21 + 28, v28);
            if (*(a3 + 1128))
            {
              v29 = 0;
              v30 = *MEMORY[0x277CF6A58];
              while (!CFEqual(*a4, v30))
              {
                ++v29;
                a4 += 16;
                if (v29 >= *(a3 + 1128))
                {
                  goto LABEL_113;
                }
              }

              *(BaseAddress + 95257) = 1;
            }

LABEL_113:
            v26 = 648740;
            *(BaseAddress + 162177) = 1;
            v64 = v22[95174];
            *(BaseAddress + 648712) = v64;
            if (v64)
            {
              *(BaseAddress + 324358) = *(v22 + 5947);
              BaseAddress[324366] = *(v22 + 47584);
              *(BaseAddress + 324367) = *(v22 + 95170);
              v65 = *(v22 + 23794);
              if (v65 >= 0x871C2)
              {
                v66 = 553410;
              }

              else
              {
                v66 = v65;
              }

              memcpy(BaseAddress + 47648, v22 + 95180, v66);
            }

            a4 = v68;
            goto LABEL_50;
          }

          v63 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v63 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v63;
          }

          v12 = 3758097090;
          if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }
        }

        else
        {
          v61 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v61 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v61;
          }

          v12 = 3758097090;
          if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        if (v23 != 5)
        {
          if (v23 == 1)
          {
            *(BaseAddress + 4) = 72;
            memmove(BaseAddress + 36, v21, Length);
            v24 = CVPixelBufferGetPixelFormatType(*a2);
            H16ISP::getFrameFormatMetaInfo(v24, extraColumnsOnRight);
            v25 = CVPixelBufferGetPixelFormatType(*(a4 + 8));
            H16ISP::getFrameFormatMetaInfo(v25, &extraRowsOnBottom);
            if (BaseAddress[36] >= 2u && (LODWORD(extraColumnsOnRight[2]) == 2 || v72 == 2))
            {
              v62 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v62 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v62;
              }

              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                ISPProcessingSessionProcessBuffers();
              }

              v12 = 3758097090;
              goto LABEL_22;
            }

            v26 = *(BaseAddress + 4) + 55940;
          }

          else
          {
            v26 = 0;
          }

          goto LABEL_50;
        }

        *(BaseAddress + 10) = 128;
        if (*v21 == 1)
        {
          v26 = 95296;
LABEL_50:
          *(BaseAddress + 7) = v26;
          bzero(BaseAddress + v26, 0xE08uLL);
          v31 = *(a1 + 72);
          if (v31)
          {
            if (H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(v31, &v73, 0))
            {
              v32 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v32 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v32;
              }

              v12 = 3758097086;
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                ISPProcessingSessionProcessBuffer();
              }

              goto LABEL_22;
            }

            CVPixelBufferLockBaseAddress(v73, 0);
            v35 = CVPixelBufferGetBaseAddress(v73);
            v36 = CVPixelBufferGetDataSize(v73);
            bzero(v35, v36);
            *v35 = 1;
            *(v35 + 1) = 1;
            *(v35 + 4) = xmmword_2249BBD70;
            *(v35 + 12) = xmmword_2249BBD80;
            *(v35 + 20) = xmmword_2249BBD90;
            *(v35 + 28) = xmmword_2249BBDA0;
            CVPixelBufferUnlockBaseAddress(v73, 0);
            goto LABEL_65;
          }

          v33 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v33 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v33;
          }

          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            ISPProcessingSessionProcessBuffer();
          }

          goto LABEL_21;
        }

        v60 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v60 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v60;
        }

        v12 = 3758097090;
        if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }
      }

      ISPProcessingSessionProcessBuffers();
      goto LABEL_22;
    }

    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
    }

    v12 = 3758097090;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      ISPProcessingSessionProcessBuffer();
    }
  }

  else
  {
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    v12 = 3758097112;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      ISPProcessingSessionProcessBuffer();
    }
  }

  return v12;
}

int8x16_t MapSMGParametersV1(uint64_t a1, char *a2)
{
  bzero(a2, 0x94uLL);
  *a2 = 1;
  *(a2 + 1) = *(a1 + 96);
  *(a2 + 8) = *(a1 + 48);
  *(a2 + 40) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 80);
  *(a2 + 26) = *(a1 + 4);
  *(a2 + 54) = *(a1 + 8);
  *(a2 + 110) = *(a1 + 10);
  *(a2 + 116) = *(a1 + 16);
  result = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  *(a2 + 132) = result;
  return result;
}

uint64_t H16ISPCaptureDeviceFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  H16ISPCaptureDeviceInvalidate();

  return pthread_mutex_destroy((DerivedStorage + 32));
}

uint64_t H16ISPCaptureDevicePerformPearlCalibration()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LogCaptureDeviceEvent(8u, DerivedStorage, 0, 0, 0, 0, 0);
  return 0;
}

void SavePFLFile(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v11 = *MEMORY[0x277D85DE8];
  v6 = *(v2 + 24);
  v7 = *(v6 + 4304);
  hasSensorType = H16ISP::H16ISPDevice::hasSensorType(v6, 1785950322);
  if (*(v4 + 664) && *(v5 + 232))
  {
    if (!hasSensorType || (v9 = *(v4 + 156), *(v7 + 104 * v9 + 60) != 1))
    {
      if (!H16ISP::H16ISPDevice::hasSensorType(*(v5 + 24), 1718186595) || byte_2810033C6 != 1)
      {
        return;
      }

      v9 = *(v4 + 156);
    }

    if (H16ISP::H16ISPDevice::SavePersistFile(*(v5 + 24), v9))
    {
      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        SavePFLFile();
      }
    }
  }
}

void ___ZL25H16ISPCaptureStreamCreatePK13__CFAllocatorP22OpaqueFigCaptureDevicePN6H16ISP12H16ISPDeviceEPP22OpaqueFigCaptureStream_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v10 = *MEMORY[0x277D85DE8];
  v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  v4 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v3 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    ___ZL25H16ISPCaptureStreamCreatePK13__CFAllocatorP22OpaqueFigCaptureDevicePN6H16ISP12H16ISPDeviceEPP22OpaqueFigCaptureStream_block_invoke_cold_1();
  }

  v5 = *(v2 + 32);
  *(v5 + 100) = 0;
  if (*(v5 + 4184))
  {
    DisableDisplayStrobeOverlay(v5);
  }

  v6 = *(*(v2 + 40) + 232);
  if (v6)
  {
    LODWORD(v8) = 101;
    v9 = 0;
    H16ISP::H16ISPServicesRemote::SetProperty(v6, &v8);
  }

  else
  {
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v4)
    {
      v7 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "StillImageCaptureFailure: Could not set strobe state\n\n", &v8, 2u);
    }
  }

  H16ISPPostNotification(*MEMORY[0x277CF53E8], *(v2 + 48), 0);
}

uint64_t H16ISPCaptureStreamFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v3 = CMBaseObjectGetDerivedStorage();
    LogCaptureDeviceEvent(0xBu, v3, DerivedStorage, 0, 0, 0, 0);
    H16ISPCaptureStreamInvalidate(a1, v4);
    v5 = CMBaseObjectGetDerivedStorage();
    LogCaptureDeviceEvent(0xBu, v5, DerivedStorage, 0, 0, 0, 1);
  }

  return pthread_mutex_destroy((DerivedStorage + 264));
}

void H16ISPCaptureStreamInvalidate(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v88 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  LogCaptureDeviceEvent(0xAu, v3, DerivedStorage, 0, 0, 0, 0);
  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  v5 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(DerivedStorage + 156);
    *v85 = 136315394;
    *&v85[4] = "H16ISPCaptureStreamInvalidate";
    *&v85[12] = 1024;
    *&v85[14] = v6;
    _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "%s - camChannel:%d\n", v85, 0x12u);
  }

  pthread_mutex_lock((v3 + 32));
  v7 = *(v3 + 120);
  if (v7)
  {
    CFRetain(*(v3 + 120));
    pthread_mutex_unlock((v3 + 32));
    LockStreamMutexes(v7);
    if (!*DerivedStorage)
    {
      if (StopExclaveStreams(v3, DerivedStorage))
      {
        v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v5)
        {
          v8 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v8;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          H16ISPCaptureStreamInvalidate();
        }
      }

      v9 = *(DerivedStorage + 4368);
      if (IsJasperSyncGroup(*(v3 + 24), *(DerivedStorage + 4360)))
      {
        CFArrayGetValueAtIndex(*(DerivedStorage + 4360), 0);
        FigCaptureStreamGetFigBaseObject();
        v9 = *(DerivedStorage + 156) == *(CMBaseObjectGetDerivedStorage() + 156);
      }

      v10 = *(DerivedStorage + 4360);
      if (v10 && (v9 & 1) != 0 && CFArrayGetCount(v10))
      {
        v11 = 0;
        do
        {
          if (CFArrayGetValueAtIndex(*(DerivedStorage + 4360), v11))
          {
            FigCaptureStreamGetFigBaseObject();
            v12 = CMBaseObjectGetDerivedStorage();
            if (*(v12 + 156) != *(DerivedStorage + 156))
            {
              v13 = v12;
              if (!*v12)
              {
                v14 = *(v12 + 160);
                if (v14)
                {
                  H16ISP::H16ISPFrameReceiver::stopReceive(v14);
                  H16ISP::DestroyH16ISPFrameReceiver(*(v13 + 160), v15);
                  H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(v3 + 24), *(v13 + 156), 0, 0);
                  *(v13 + 160) = 0;
                  v16 = *(v3 + 232);
                  if (v16)
                  {
                    v17 = *(v13 + 156);
                    *v85 = 2;
                    *&v85[8] = v17;
                    v85[12] = 0;
                    H16ISP::H16ISPServicesRemote::SetProperty(v16, v85);
                  }
                }
              }
            }
          }

          ++v11;
        }

        while (v11 < CFArrayGetCount(*(DerivedStorage + 4360)));
      }

      *DerivedStorage = 1;
      v18 = *(DerivedStorage + 160);
      if (v18)
      {
        H16ISP::H16ISPFrameReceiver::stopReceive(v18);
        GraphTeardown(DerivedStorage, v9 & 1);
        H16ISP::DestroyH16ISPFrameReceiver(*(DerivedStorage + 160), v19);
        H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(v3 + 24), *(DerivedStorage + 156), 0, 0);
        *(DerivedStorage + 160) = 0;
        v20 = *(v3 + 232);
        if (v20)
        {
          v21 = *(DerivedStorage + 156);
          *v85 = 2;
          *&v85[8] = v21;
          v85[12] = 0;
          H16ISP::H16ISPServicesRemote::SetProperty(v20, v85);
        }
      }

      v22 = *(DerivedStorage + 4536);
      if (v22)
      {
        RgbIrCalibration::~RgbIrCalibration(v22);
        MEMORY[0x22AA55B60]();
        *(DerivedStorage + 4536) = 0;
      }

      if (*(DerivedStorage + 4513) == 1)
      {
        H16ISP::H16ISPDevice::DisableTorch(*(v3 + 24), *(DerivedStorage + 156));
        H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(v3 + 24), *(DerivedStorage + 156), 0, 0);
        v23 = *(v3 + 232);
        if (v23)
        {
          *v85 = 101;
          v85[8] = 0;
          H16ISP::H16ISPServicesRemote::SetProperty(v23, v85);
        }

        else
        {
          v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
          {
            v24 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v24;
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *v85 = 136315138;
            *&v85[4] = "H16ISPCaptureStreamInvalidate";
            _os_log_impl(&dword_2247DB000, v24, OS_LOG_TYPE_INFO, "%s - Could not set strobe state\n", v85, 0xCu);
          }
        }
      }

      v25 = *(DerivedStorage + 816);
      if (v25)
      {
        _Block_release(v25);
        *(DerivedStorage + 816) = 0;
      }

      v26 = *(DerivedStorage + 808);
      if (v26)
      {
        _Block_release(v26);
        *(DerivedStorage + 808) = 0;
      }

      v27 = *(DerivedStorage + 1016);
      if (v27)
      {
        _Block_release(v27);
        *(DerivedStorage + 1016) = 0;
      }

      v28 = *(DerivedStorage + 1008);
      if (v28)
      {
        _Block_release(v28);
        *(DerivedStorage + 1008) = 0;
      }

      v29 = *(DerivedStorage + 1216);
      if (v29)
      {
        _Block_release(v29);
        *(DerivedStorage + 1216) = 0;
      }

      v30 = *(DerivedStorage + 1208);
      if (v30)
      {
        _Block_release(v30);
        *(DerivedStorage + 1208) = 0;
      }

      v31 = *(DerivedStorage + 1416);
      if (v31)
      {
        _Block_release(v31);
        *(DerivedStorage + 1416) = 0;
      }

      v32 = *(DerivedStorage + 1408);
      if (v32)
      {
        _Block_release(v32);
        *(DerivedStorage + 1408) = 0;
      }

      v33 = *(DerivedStorage + 1616);
      if (v33)
      {
        _Block_release(v33);
        *(DerivedStorage + 1616) = 0;
      }

      v34 = *(DerivedStorage + 1608);
      if (v34)
      {
        _Block_release(v34);
        *(DerivedStorage + 1608) = 0;
      }

      v35 = *(DerivedStorage + 1816);
      if (v35)
      {
        _Block_release(v35);
        *(DerivedStorage + 1816) = 0;
      }

      v36 = *(DerivedStorage + 1808);
      if (v36)
      {
        _Block_release(v36);
        *(DerivedStorage + 1808) = 0;
      }

      v37 = *(DerivedStorage + 2016);
      if (v37)
      {
        _Block_release(v37);
        *(DerivedStorage + 2016) = 0;
      }

      v38 = *(DerivedStorage + 2008);
      if (v38)
      {
        _Block_release(v38);
        *(DerivedStorage + 2008) = 0;
      }

      v39 = *(DerivedStorage + 2216);
      if (v39)
      {
        _Block_release(v39);
        *(DerivedStorage + 2216) = 0;
      }

      v40 = *(DerivedStorage + 2208);
      if (v40)
      {
        _Block_release(v40);
        *(DerivedStorage + 2208) = 0;
      }

      v41 = *(DerivedStorage + 2416);
      if (v41)
      {
        _Block_release(v41);
        *(DerivedStorage + 2416) = 0;
      }

      v42 = *(DerivedStorage + 2408);
      if (v42)
      {
        _Block_release(v42);
        *(DerivedStorage + 2408) = 0;
      }

      v43 = *(DerivedStorage + 2616);
      if (v43)
      {
        _Block_release(v43);
        *(DerivedStorage + 2616) = 0;
      }

      v44 = *(DerivedStorage + 2608);
      if (v44)
      {
        _Block_release(v44);
        *(DerivedStorage + 2608) = 0;
      }

      v45 = *(DerivedStorage + 4120);
      if (v45)
      {
        _Block_release(v45);
        *(DerivedStorage + 4120) = 0;
      }

      v46 = (DerivedStorage + 58184);
      v47 = *(DerivedStorage + 2912);
      if (v47)
      {
        _Block_release(v47);
        *(DerivedStorage + 2912) = 0;
      }

      for (i = 0; i != 32; i += 8)
      {
        v49 = DerivedStorage + i;
        v50 = *(DerivedStorage + i + 856);
        if (v50)
        {
          CVPixelBufferRelease(v50);
          *(v49 + 856) = 0;
        }

        v51 = *(v49 + 1056);
        if (v51)
        {
          CVPixelBufferRelease(v51);
          *(v49 + 1056) = 0;
        }

        v52 = *(DerivedStorage + i + 1256);
        if (v52)
        {
          CVPixelBufferRelease(v52);
          *(DerivedStorage + i + 1256) = 0;
        }
      }

      v53 = *(DerivedStorage + 848);
      if (v53)
      {
        CVPixelBufferPoolRelease(v53);
        *(DerivedStorage + 848) = 0;
      }

      v54 = *(DerivedStorage + 1048);
      if (v54)
      {
        CVPixelBufferPoolRelease(v54);
        *(DerivedStorage + 1048) = 0;
      }

      v55 = *(DerivedStorage + 1248);
      if (v55)
      {
        CVPixelBufferPoolRelease(v55);
        *(DerivedStorage + 1248) = 0;
      }

      v56 = *(DerivedStorage + 1448);
      if (v56)
      {
        CVPixelBufferPoolRelease(v56);
        *(DerivedStorage + 1448) = 0;
      }

      v57 = *(DerivedStorage + 1648);
      if (v57)
      {
        CVPixelBufferPoolRelease(v57);
        *(DerivedStorage + 1648) = 0;
      }

      v58 = *(DerivedStorage + 2448);
      if (v58)
      {
        CVPixelBufferPoolRelease(v58);
        *(DerivedStorage + 2448) = 0;
      }

      v59 = *(DerivedStorage + 4136);
      if (v59)
      {
        CFRelease(v59);
        *(DerivedStorage + 4136) = 0;
      }

      v60 = *(DerivedStorage + 2848);
      if (v60)
      {
        CVPixelBufferPoolRelease(v60);
        *(DerivedStorage + 2848) = 0;
      }

      MetadataOutputFeatureResetConfiguration(DerivedStorage + 3080);
      MetadataOutputFeatureResetConfiguration(DerivedStorage + 3176);
      for (j = 3272; j != 3656; j += 96)
      {
        MetadataOutputFeatureResetConfiguration(DerivedStorage + j);
      }

      MetadataOutputFeatureResetConfiguration(DerivedStorage + 3656);
      MetadataOutputFeatureResetConfiguration(DerivedStorage + 3752);
      *(DerivedStorage + 3856) = 0;
      *(DerivedStorage + 3848) = 0;
      MetadataOutputFeatureResetConfiguration(DerivedStorage + 3864);
      *(DerivedStorage + 3960) = 0;
      *(DerivedStorage + 3972) = 0;
      *(DerivedStorage + 3962) = 0;
      MetadataOutputFeatureResetConfiguration(DerivedStorage + 3976);
      if (*(DerivedStorage + 4816))
      {
        *(DerivedStorage + 4816) = 0;
      }

      if (*(DerivedStorage + 528))
      {
        FigFormatDescriptionRelease();
        *(DerivedStorage + 528) = 0;
      }

      v62 = *(DerivedStorage + 24);
      if (v62)
      {
        CFRelease(v62);
        *(DerivedStorage + 24) = 0;
      }

      v63 = *(DerivedStorage + 32);
      if (v63)
      {
        CFRelease(v63);
        *(DerivedStorage + 32) = 0;
      }

      v64 = *(DerivedStorage + 144);
      if (v64)
      {
        CFRelease(v64);
        *(DerivedStorage + 144) = 0;
      }

      v65 = *(DerivedStorage + 40);
      if (v65)
      {
        CFRelease(v65);
        *(DerivedStorage + 40) = 0;
      }

      v66 = *(DerivedStorage + 136);
      if (v66)
      {
        CFRelease(v66);
        *(DerivedStorage + 136) = 0;
      }

      v67 = *(DerivedStorage + 592);
      if (v67)
      {
        CFRelease(v67);
        *(DerivedStorage + 592) = 0;
      }

      v68 = *(DerivedStorage + 600);
      if (v68)
      {
        CFRelease(v68);
        *(DerivedStorage + 600) = 0;
      }

      if (H16ISP::H16ISPDevice::isSensorType(*(v3 + 24), *(DerivedStorage + 156), 1919246706))
      {
        v69 = *(DerivedStorage + 4976);
        if (v69)
        {
          *v85 = MEMORY[0x277D85DD0];
          *&v85[8] = 0x40000000;
          *&v85[16] = ___ZL10DCNUDeInitP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke;
          v86 = &__block_descriptor_tmp_1806;
          v87 = DerivedStorage;
          dispatch_sync(v69, v85);
          dispatch_release(*(DerivedStorage + 4976));
          *(DerivedStorage + 4976) = 0;
        }
      }

      if (*(DerivedStorage + 697) == 1)
      {
        v70 = *(DerivedStorage + 184);
        if (v70)
        {
          MEMORY[0x22AA55B60](v70, 0x1000C40027896E1);
          *(DerivedStorage + 184) = 0;
          v71 = *(DerivedStorage + 4808);
          if (v71)
          {
            CFRelease(v71);
          }
        }
      }

      v72 = *(DerivedStorage + 4184);
      if (v72)
      {
        H16ISPDisplayStrobeDispose(v72);
        *(DerivedStorage + 4184) = 0;
      }

      if (*(DerivedStorage + 4456))
      {
        pthread_mutex_lock((DerivedStorage + 328));
        DestroyMotionMetadataDebugLogger(*(DerivedStorage + 4456));
        pthread_mutex_unlock((DerivedStorage + 328));
        *(DerivedStorage + 4456) = 0;
      }

      v73 = *(DerivedStorage + 4248);
      if (v73)
      {
        dispatch_source_cancel(v73);
        dispatch_release(*(DerivedStorage + 4248));
      }

      v74 = *(DerivedStorage + 4240);
      if (v74)
      {
        dispatch_release(v74);
      }

      v75 = *(v3 + 224);
      if (v75)
      {
        H16ISP::H16ISPFirmwareWorkProcessor::FlushSurfaceCache(v75);
      }

      v76 = *(DerivedStorage + 4360);
      if (v76)
      {
        CFRelease(v76);
        *(DerivedStorage + 4360) = 0;
      }

      if (*(DerivedStorage + 1) || *(DerivedStorage + 2))
      {
        *(DerivedStorage + 1) = 0;
        SavePFLFile(v3, DerivedStorage);
        H16ISP::H16ISPDevice::ISP_ReleaseChannel(*(v3 + 24), *(DerivedStorage + 156));
      }

      v77 = *(DerivedStorage + 4824);
      if (v77)
      {
        CVPixelBufferPoolRelease(v77);
        *(DerivedStorage + 4824) = 0;
      }

      v78 = *(DerivedStorage + 4960);
      if (v78)
      {
        MEMORY[0x22AA55B60](v78, 0x1000C40504FFAC1);
        *(DerivedStorage + 4960) = 0;
      }

      if (*v46)
      {
        dispatch_source_cancel(*v46);
        dispatch_release(*v46);
        *v46 = 0;
      }

      v79 = *(DerivedStorage + 4520);
      if (v79)
      {
        H16ISP::ProjectorManager::~ProjectorManager(v79);
        MEMORY[0x22AA55B60]();
        *(DerivedStorage + 4520) = 0;
      }

      v80 = 0;
      *(DerivedStorage + 58192) = 0;
      v81 = (DerivedStorage + 4840);
      v82 = 1;
      do
      {
        v83 = v82;
        v84 = *&v81[3 * v80];
        if (v84)
        {
          CVPixelBufferPoolRelease(v84);
        }

        v82 = 0;
        v80 = 1;
      }

      while ((v83 & 1) != 0);
      *(DerivedStorage + 4931) = 0u;
      *(DerivedStorage + 4904) = 0u;
      *(DerivedStorage + 4920) = 0u;
      *(DerivedStorage + 4872) = 0u;
      *(DerivedStorage + 4888) = 0u;
      *v81 = 0u;
      *(DerivedStorage + 4856) = 0u;
    }

    UnlockStreamMutexes(v7);
    CFRelease(v7);
    LogCaptureDeviceEvent(0xAu, v3, DerivedStorage, 0, 0, 0, 1);
  }

  else
  {
    pthread_mutex_unlock((v3 + 32));
  }
}

void ___ZL10DCNUDeInitP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 4984);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 4984) = 0;
  }
}

uint64_t H16ISPCaptureStreamStop(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(DerivedStorage + 156);
    v12[0] = 67109120;
    v12[1] = v5;
    _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_INFO, "H16ISPCaptureStreamStop: camChannel:%d\n\n", v12, 8u);
  }

  LogCaptureDeviceEvent(0xFu, v3, DerivedStorage, 0, 0, 0, 0);
  pthread_mutex_lock((v3 + 32));
  v6 = *(v3 + 120);
  if (!v6)
  {
    pthread_mutex_unlock((v3 + 32));
    v8 = "device invalidated";
    goto LABEL_9;
  }

  CFRetain(*(v3 + 120));
  pthread_mutex_unlock((v3 + 32));
  LockStreamMutexes(v6);
  if (*DerivedStorage)
  {
    UnlockStreamMutexes(v6);
    CFRelease(v6);
    v8 = "invalidated";
LABEL_9:
    v9 = 4294954511;
    v10 = 4294954511;
    goto LABEL_10;
  }

  if (!*(v3 + 24))
  {
    UnlockStreamMutexes(v6);
    CFRelease(v6);
    return 4294954616;
  }

  if (*(DerivedStorage + 1))
  {
    v9 = H16ISPCaptureStreamStopInternal(a1, v7);
    UnlockStreamMutexes(v6);
    CFRelease(v6);
    LogCaptureDeviceEvent(0xFu, v3, DerivedStorage, 0, 0, 0, 1);
    return v9;
  }

  UnlockStreamMutexes(v6);
  CFRelease(v6);
  v8 = "stream not controlled";
  v9 = 4294954607;
  v10 = 4294954607;
LABEL_10:
  FigSignalError(v10, v8);
  return v9;
}

void ___ZL23ExclaveInitFlickerTimerP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 156);
  dispatch_assert_queue_V2(*(v1 + 296));
  v3 = *(v1 + 232);
  if (v3)
  {
    bzero(v12, 0xE60uLL);
    LODWORD(v12[0]) = 22;
    if (H16ISP::H16ISPServicesRemote::GetProperty(v3, v12))
    {
      v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v4 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v4;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        ___ZL23ExclaveInitFlickerTimerP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke_cold_1();
      }
    }

    else if (v16)
    {
      v6 = v12[1];
      v7 = v12[2];
      v8 = v13;
      v9 = v14;
      v10 = v15;
      bzero(v12 + 4, 0x228uLL);
      v17 = v2;
      LODWORD(v12[0]) = 196619;
      mach_absolute_time();
      v18 = FigHostTimeToNanoseconds();
      v19 = v9;
      v21 = *&v7;
      v20 = vcvtd_n_u64_f64(*&v6, 0x10uLL);
      v23 = v10;
      v22 = v8;
      if (ispExclaveKitCommand())
      {
        v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v11 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v11;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          ___ZL23ExclaveInitFlickerTimerP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke_cold_2();
        }
      }

      else
      {
        kdebug_trace();
      }
    }
  }

  else
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ___ZL23ExclaveInitFlickerTimerP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke_cold_3();
    }
  }
}

void ___ZL8DCNUInitP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = stat("/var/mobile/Library/ISP/CalData/DCNUMetadata_0", &v15);
  v4 = MEMORY[0x277D86220];
  if (v3)
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ___ZL8DCNUInitP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke_cold_1();
    }

LABEL_27:
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v4)
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      ___ZL8DCNUInitP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke_cold_7();
    }

    return;
  }

  if (v15.st_size != 53176)
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ___ZL8DCNUInitP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke_cold_2();
    }

    goto LABEL_27;
  }

  v6 = fopen("/var/mobile/Library/ISP/CalData/DCNUMetadata_0", "rb");
  if (!v6)
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v4)
    {
      v11 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      ___ZL8DCNUInitP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke_cold_6();
    }

    goto LABEL_27;
  }

  v7 = v6;
  v8 = fread(v2 + 2496, 0xCFB8uLL, 1uLL, v6);
  fclose(v7);
  if (v8 != 1)
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v4)
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      ___ZL8DCNUInitP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke_cold_3();
    }

    goto LABEL_27;
  }

  if (v2[2501])
  {
    v15.st_dev = v2[2500];
    *(*(a1 + 32) + 4984) = CreatePixelBufferFromFile();
    if (!*(*(a1 + 32) + 4984))
    {
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v4)
      {
        v9 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ___ZL8DCNUInitP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke_cold_4();
      }
    }
  }

  else
  {
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v4)
    {
      v14 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      ___ZL8DCNUInitP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke_cold_5();
    }
  }
}

uint64_t H16ISPCaptureGroupFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  pthread_mutex_lock((DerivedStorage + 40));
  if ((*(DerivedStorage + 32) & 1) == 0)
  {
    v1 = CMBaseObjectGetDerivedStorage();
    LogCaptureDeviceEvent(0x17u, v1, 0, DerivedStorage, 0, 0, 0);
    H16ISPCaptureGroupInvalidate();
    LogCaptureDeviceEvent(0x17u, v1, 0, DerivedStorage, 0, 0, 1);
  }

  pthread_mutex_unlock((DerivedStorage + 40));

  return pthread_mutex_destroy((DerivedStorage + 40));
}

void H16ISPCaptureGroupInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  LogCaptureDeviceEvent(0x16u, v1, 0, DerivedStorage, 0, 0, 0);
  pthread_mutex_lock((DerivedStorage + 40));
  if ((*(DerivedStorage + 32) & 1) == 0)
  {
    *(DerivedStorage + 32) = 1;
    v2 = *(DerivedStorage + 16);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 16) = 0;
    }

    v3 = *(DerivedStorage + 104);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 104) = 0;
    }

    v4 = *(DerivedStorage + 24);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 24) = 0;
    }

    v5 = *(DerivedStorage + 136);
    if (v5)
    {
      H16ISP::H16ISPFrameReceiverSharedBufferPool::~H16ISPFrameReceiverSharedBufferPool(v5);
      MEMORY[0x22AA55B60]();
      *(DerivedStorage + 136) = 0;
    }

    H16ISPSensorSharedRawPoolConfigurationReset(DerivedStorage, 1);
  }

  pthread_mutex_unlock((DerivedStorage + 40));

  LogCaptureDeviceEvent(0x16u, v1, 0, DerivedStorage, 0, 0, 1);
}

uint64_t H16ISPCaptureGroupStop()
{
  v20 = *MEMORY[0x277D85DE8];
  FigCaptureSynchronizedStreamsGroupGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  memset(v18, 0, sizeof(v18));
  kdebug_trace();
  pthread_mutex_lock((DerivedStorage + 40));
  if (*(DerivedStorage + 32) != 1)
  {
    v4 = *(DerivedStorage + 104);
    if (v4)
    {
      LockStreamMutexes(v4);
      if (CFArrayGetCount(*(DerivedStorage + 104)))
      {
        v5 = 0;
        v6 = 0;
        v7 = 0;
        memset(v19, 0, sizeof(v19));
        do
        {
          CFArrayGetValueAtIndex(*(DerivedStorage + 104), v5);
          FigCaptureStreamGetFigBaseObject();
          v8 = CMBaseObjectGetDerivedStorage();
          v9 = *(v8 + 160);
          if (v9)
          {
            v10 = v8;
            *(v18 + v6) = v9;
            *(v19 + v6) = CFArrayGetValueAtIndex(*(DerivedStorage + 104), v5);
            if (*(v10 + 4368))
            {
              v7 = v6;
            }

            v6 = (v6 + 1);
          }

          ++v5;
        }

        while (v5 < CFArrayGetCount(*(DerivedStorage + 104)));
        if (v6)
        {
          v11 = v19;
          v12 = *(v19 + (v6 - 1));
          *(v19 + (v6 - 1)) = *(v19 + v7);
          *(v19 + v7) = v12;
          H16ISP::H16ISPFrameReceiver::StopChannels(*(v1 + 24), v18, v6);
          v3 = v6;
          do
          {
            v14 = *v11++;
            H16ISPCaptureStreamStopInternal(v14, v13);
            --v3;
          }

          while (v3);
          UnlockStreamMutexes(*(DerivedStorage + 104));
          goto LABEL_29;
        }
      }

      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v15 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureGroupStop();
      }

      UnlockStreamMutexes(*(DerivedStorage + 104));
    }

    else
    {
      v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v16 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureGroupStop();
      }
    }

    v3 = 4294954516;
    goto LABEL_29;
  }

  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    H16ISPCaptureGroupStop();
  }

  v3 = 4294954511;
LABEL_29:
  pthread_mutex_unlock((DerivedStorage + 40));
  kdebug_trace();
  return v3;
}

void ___ZL41ExclavePreferenceClearValuesOnFirstLaunchP19H16ISPCaptureDevice_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 283) == 1)
  {
    v2 = *MEMORY[0x277CBF040];
    v3 = *MEMORY[0x277CBF010];
    v4 = CFPreferencesCopyValue(@"ISPDebugTreatPropertyWriteKeysAsVolatile", @"com.apple.coremedia", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(v5) && CFArrayGetCount(*(v1 + 120)) >= 1)
        {
          v7 = 0;
          v8 = 0;
          do
          {
            CFArrayGetValueAtIndex(*(v1 + 120), v7);
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            if (*(DerivedStorage + 2925) == 1)
            {
              KeyForChannel = ExclavePreferenceCreateKeyForChannel(v1, *(DerivedStorage + 156));
              if (KeyForChannel)
              {
                v11 = KeyForChannel;
                v12 = CFPreferencesCopyValue(KeyForChannel, @"com.apple.coremedia", v2, v3);
                if (v12)
                {
                  CFRelease(v12);
                  CFPreferencesSetValue(v11, 0, @"com.apple.coremedia", v2, v3);
                  v8 = 1;
                }

                CFRelease(v11);
              }
            }

            ++v7;
          }

          while (v7 < CFArrayGetCount(*(v1 + 120)));
          if (v8)
          {
            CFPreferencesSynchronize(@"com.apple.coremedia", v2, v3);
          }
        }
      }

      else
      {
        v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v13 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v13;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          ___ZL41ExclavePreferenceClearValuesOnFirstLaunchP19H16ISPCaptureDevice_block_invoke_cold_1();
        }
      }

      CFRelease(v5);
    }
  }
}

__CFArray *StreamArrayCopyAndSort(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  MutableCopy = CFArrayCreateMutableCopy(0, Count, a1);
  v4 = MutableCopy;
  if (MutableCopy)
  {
    v6.location = 0;
    v6.length = Count;
    CFArraySortValues(MutableCopy, v6, StreamChannelComparator, 0);
  }

  return v4;
}

uint64_t StreamChannelComparator(const void *a1, const void *a2, void *a3)
{
  result = 0;
  if (a1 && a2)
  {
    FigCaptureStreamGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigCaptureStreamGetFigBaseObject();
    v6 = CMBaseObjectGetDerivedStorage();
    v7 = *(DerivedStorage + 156);
    v8 = *(v6 + 156);
    if (v7 >= v8)
    {
      return v7 > v8;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

void ___ZL20TailspinNotificationjPv_block_invoke(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_daemonLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_daemonLog == MEMORY[0x277D86220])
  {
    v3 = os_log_create("com.apple.isp", "daemon");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_daemonLog = v3;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "failure";
    if (a2)
    {
      v4 = "succeeded";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_2247DB000, v3, OS_LOG_TYPE_DEFAULT, "dumpTailspinInBackground %s\n", &v5, 0xCu);
  }
}

__CFArray *LightSourceMaskInfoCreateArray(unsigned int *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 4, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v4 = 4;
    do
    {
      v5 = CFNumberCreate(v2, kCFNumberSInt32Type, a1);
      if (v5)
      {
        v6 = v5;
        CFArrayAppendValue(Mutable, v5);
        CFRelease(v6);
      }

      ++a1;
      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LightSourceMaskInfoCreateArray();
    }
  }

  return Mutable;
}

__CFArray *ImageRegistrationInfoCreateArray(float *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 9, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v4 = 9;
    do
    {
      v5 = CFNumberCreate(v2, kCFNumberFloatType, a1);
      if (v5)
      {
        v6 = v5;
        CFArrayAppendValue(Mutable, v5);
        CFRelease(v6);
      }

      ++a1;
      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ImageRegistrationInfoCreateArray();
    }
  }

  return Mutable;
}

void ___ZL31H16ISPDebugDepthFrameFileWriteriP10__CVBufferS0_PK14__CFDictionarydd_block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v26 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = H16ISPDebugDepthFrameFileWriter(int,__CVBuffer *,__CVBuffer *,__CFDictionary const*,double,double)::savedFrameCounter;
  v31 = v3;
  valuePtr = v4;
  v30 = 0;
  setlocale(0, "");
  time(&v30);
  v6 = localtime(&v30);
  strftime(v34, 0x14uLL, "%m%d%g_%H%M%S", v6);
  v7 = 0;
  v8 = &__filename[sprintf(__filename, "/var/mobile/Media/DCIM/%s-%05d-", v34, v5)];
  v9 = 1;
  do
  {
    v10 = v9;
    if (v2)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(v2);
      v29 = 0;
      CVPixelBufferLockBaseAddress(v2, 0);
      BytesPerRow = CVPixelBufferGetBytesPerRow(v2);
      Width = CVPixelBufferGetWidth(v2);
      Height = CVPixelBufferGetHeight(v2);
      BaseAddress = CVPixelBufferGetBaseAddress(v2);
      sprintf(v8, "%s.%lux%lu.%s", off_2785312F0[v7], Width, Height, &PixelFormatType);
      v15 = fopen(__filename, "wb");
      if (v15)
      {
        v16 = v15;
        if (Height)
        {
          v17 = 0;
          v18 = 2 * Width;
          v19 = 1;
          do
          {
            fwrite(&BaseAddress[v17 * BytesPerRow], v18, 1uLL, v16);
            v17 = v19;
          }

          while (Height > v19++);
        }

        fclose(v16);
        CVPixelBufferUnlockBaseAddress(v2, 0);
      }
    }

    v9 = 0;
    v2 = v1;
    v7 = 1;
  }

  while ((v10 & 1) != 0);
  if (v26)
  {
    strcpy(v8, "metadata.plist");
    H16ISPWriteDictionary(v26, __filename);
  }

  if (v4 != 0.0 || v3 != 0.0)
  {
    v21 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v23 = CFNumberCreate(v21, kCFNumberFloat64Type, &valuePtr);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CF42A8], v23);
    CFRelease(v23);
    v24 = CFNumberCreate(v21, kCFNumberFloat64Type, &v31);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CF42A0], v24);
    CFRelease(v24);
    strcpy(v8, "disparityParams.plist");
    H16ISPWriteDictionary(Mutable, __filename);
  }

  CVPixelBufferRelease(*(a1 + 40));
  CVPixelBufferRelease(*(a1 + 48));
  v25 = *(*(*(a1 + 32) + 8) + 24);
  if (v25)
  {
    CFRelease(v25);
  }
}

void H16ISPWriteDictionary(const __CFDictionary *a1, const char *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  SystemEncoding = CFStringGetSystemEncoding();
  v6 = CFStringCreateWithCString(v4, a2, SystemEncoding);
  v7 = CFURLCreateWithFileSystemPath(v4, v6, kCFURLPOSIXPathStyle, 0);
  v8 = CFWriteStreamCreateWithFile(v4, v7);
  CFWriteStreamOpen(v8);
  CFPropertyListWrite(a1, v8, kCFPropertyListXMLFormat_v1_0, 0, 0);
  CFWriteStreamClose(v8);
  CFRelease(v8);
  CFRelease(v7);

  CFRelease(v6);
}

uint64_t OUTLINED_FUNCTION_31@<X0>(int a1@<W8>)
{
  *(v1 + 4) = v2;
  LOWORD(STACK[0x2CC]) = 1024;
  *(v1 + 14) = a1;
  LOWORD(STACK[0x2D2]) = 1024;
  LODWORD(STACK[0x2D4]) = v3;
  return v4;
}

void OUTLINED_FUNCTION_32(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

__n128 OUTLINED_FUNCTION_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  result = a15;
  LODWORD(STACK[0x2C0]) = a15.n128_u32[0];
  return result;
}

void OUTLINED_FUNCTION_49(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

uint64_t (*_GLOBAL__sub_I_H16ISPCaptureDevice_cpp())(uint64_t a1, void *a2, uint64_t a3)
{
  v0 = *MEMORY[0x277CF47C0];
  kMetadataOutputConfigurationKeys[0] = *MEMORY[0x277CF47C8];
  unk_281003A10 = v0;
  v1 = *MEMORY[0x277CF47A8];
  qword_281003A18 = *MEMORY[0x277CF4888];
  unk_281003A20 = v1;
  v2 = *MEMORY[0x277CF4878];
  qword_281003A28 = *MEMORY[0x277CF47A0];
  qword_281003A30 = v2;
  v3 = *MEMORY[0x277CF4770];
  qword_281003A38 = *MEMORY[0x277CF4778];
  unk_281003A40 = v3;
  v4 = *MEMORY[0x277CF4798];
  qword_281003A48 = *MEMORY[0x277CF4860];
  unk_281003A50 = v4;
  v5 = *MEMORY[0x277CF4870];
  qword_281003A58 = *MEMORY[0x277CF4790];
  unk_281003A60 = v5;
  v6 = *MEMORY[0x277CF4780];
  qword_281003A68 = *MEMORY[0x277CF4788];
  unk_281003A70 = v6;
  v7 = *MEMORY[0x277CF4848];
  qword_281003A78 = *MEMORY[0x277CF4868];
  unk_281003A80 = v7;
  v8 = *MEMORY[0x277CF48D8];
  qword_281003A88 = *MEMORY[0x277CF4840];
  unk_281003A90 = v8;
  v9 = *MEMORY[0x277CF47E0];
  qword_281003A98 = *MEMORY[0x277CF47E8];
  unk_281003AA0 = v9;
  v10 = *MEMORY[0x277CF47D8];
  qword_281003AA8 = *MEMORY[0x277CF4898];
  unk_281003AB0 = v10;
  v11 = *MEMORY[0x277CF4890];
  qword_281003AB8 = *MEMORY[0x277CF47D0];
  unk_281003AC0 = v11;
  v12 = *MEMORY[0x277CF47B0];
  qword_281003AC8 = *MEMORY[0x277CF47B8];
  unk_281003AD0 = v12;
  v13 = *MEMORY[0x277CF4858];
  qword_281003AD8 = *MEMORY[0x277CF4880];
  unk_281003AE0 = v13;
  v14 = *MEMORY[0x277CF48E0];
  qword_281003AE8 = *MEMORY[0x277CF4850];
  unk_281003AF0 = v14;
  xmmword_281003298 = 0u;
  unk_2810032A8 = 0u;
  xmmword_281003278 = 0u;
  unk_281003288 = 0u;
  xmmword_281003258 = 0u;
  unk_281003268 = 0u;
  xmmword_281003238 = 0u;
  unk_281003248 = 0u;
  xmmword_281003218 = 0u;
  unk_281003228 = 0u;
  xmmword_2810031F8 = 0u;
  unk_281003208 = 0u;
  xmmword_2810031D8 = 0u;
  unk_2810031E8 = 0u;
  xmmword_2810031B8 = 0u;
  unk_2810031C8 = 0u;
  xmmword_281003198 = 0u;
  unk_2810031A8 = 0u;
  xmmword_281003178 = 0u;
  unk_281003188 = 0u;
  xmmword_281003168 = 0u;
  v15 = *MEMORY[0x277CF6B08];
  streamProperties[0] = *MEMORY[0x277CF6B90];
  *algn_281003B48 = v15;
  qword_281003B50 = 0;
  qword_281003B58 = CopyBufferQueue;
  qword_281003B60 = 0x300000000;
  dword_281003B68 = 63;
  qword_281003B70 = *MEMORY[0x277CF6BD0];
  unk_281003B78 = v15;
  qword_281003B80 = 0;
  unk_281003B88 = CopyStillImageBufferQueue;
  qword_281003B90 = 0x300000000;
  dword_281003B98 = 31;
  v16 = *MEMORY[0x277CF6B18];
  qword_281003BA0 = *MEMORY[0x277CF6BE0];
  unk_281003BA8 = v16;
  qword_281003BB0 = 0;
  unk_281003BB8 = CopySupportedFormatsArray;
  qword_281003BC0 = 0x300000000;
  dword_281003BC8 = 63;
  v17 = *MEMORY[0x277CF6B20];
  qword_281003BD0 = *MEMORY[0x277CF6BA0];
  unk_281003BD8 = v17;
  qword_281003BE0 = 0;
  unk_281003BE8 = CopyFormatDescription;
  qword_281003BF0 = 0x300000000;
  dword_281003BF8 = 63;
  v18 = *MEMORY[0x277CF6B28];
  qword_281003C00 = *MEMORY[0x277CF6BB8];
  unk_281003C08 = v18;
  qword_281003C10 = SetMaximumFrameRate;
  qword_281003C18 = CopyMaximumFrameRate;
  qword_281003C20 = 0x300000000;
  dword_281003C28 = 63;
  qword_281003C30 = *MEMORY[0x277CF6BB0];
  unk_281003C38 = v18;
  qword_281003C40 = SetMaximumAllowedFrameRate;
  qword_281003C48 = CopyMaximumAllowedFrameRate;
  qword_281003C50 = 0x300000000;
  dword_281003C58 = 63;
  qword_281003C60 = *MEMORY[0x277CF6B40];
  v19 = qword_281003C60;
  unk_281003C68 = v16;
  qword_281003C70 = 0;
  unk_281003C78 = CopySupportedPropertiesDictionary;
  qword_281003C80 = 0;
  dword_281003C88 = 63;
  qword_281003C90 = *MEMORY[0x277CF6BA8];
  unk_281003C98 = v18;
  qword_281003CA0 = SetFormatIndex;
  qword_281003CA8 = CopyFormatIndex;
  qword_281003CB0 = 0x300000000;
  dword_281003CB8 = 63;
  qword_281003CC0 = *MEMORY[0x277CF6BC0];
  unk_281003CC8 = v18;
  qword_281003CD0 = SetMinimumFrameRate;
  qword_281003CD8 = CopyMinimumFrameRate;
  qword_281003CE0 = 0x300000000;
  dword_281003CE8 = 63;
  qword_281003CF0 = *MEMORY[0x277CF59A0];
  unk_281003CF8 = v16;
  qword_281003D00 = SetExternalSyncFrameRateRational;
  unk_281003D08 = 0;
  qword_281003D10 = 0x308000000;
  dword_281003D18 = 63;
  qword_281003D20 = *MEMORY[0x277CF5A08];
  unk_281003D28 = v16;
  qword_281003D30 = SetFrameRateRangeRational;
  qword_281003D38 = CopyFrameRateRangeRational;
  qword_281003D40 = 0x308000000;
  dword_281003D48 = 63;
  qword_281003D50 = *MEMORY[0x277CF6BD8];
  v56 = qword_281003D50;
  qword_281003D58 = *MEMORY[0x277CF6B38];
  v20 = qword_281003D58;
  qword_281003D60 = StillImageCaptureNow;
  qword_281003D68 = 0;
  qword_281003D70 = 0x300000000;
  dword_281003D78 = 31;
  qword_281003D80 = *MEMORY[0x277CF6B80];
  qword_281003D88 = qword_281003D58;
  qword_281003D90 = AutoAENow;
  qword_281003D98 = 0;
  qword_281003DA0 = 0x300000000;
  dword_281003DA8 = 31;
  qword_281003DB0 = *MEMORY[0x277CF6B88];
  qword_281003DB8 = qword_281003D58;
  v55 = qword_281003DB0;
  qword_281003DC0 = AutoFocusNow;
  qword_281003DC8 = 0;
  qword_281003DD0 = 0x300000002;
  dword_281003DD8 = 31;
  qword_281003DE0 = *MEMORY[0x277CF6B98];
  qword_281003DE8 = *MEMORY[0x277CF6B00];
  v21 = qword_281003DE8;
  qword_281003DF0 = SetDeferAdditionOfAttachments;
  qword_281003DF8 = CopyDeferAdditionOfAttachments;
  qword_281003E00 = 0x300000000;
  dword_281003E08 = 63;
  qword_281003E10 = *MEMORY[0x277CF5C30];
  qword_281003E18 = *MEMORY[0x277CF6B30];
  v22 = qword_281003E18;
  qword_281003E20 = 0;
  qword_281003E28 = CopyPortType;
  qword_281003E30 = 0;
  dword_281003E38 = 63;
  qword_281003E40 = *MEMORY[0x277CF5D38];
  qword_281003E48 = qword_281003DE8;
  qword_281003E50 = SetTemporalNoiseReductionEnabled;
  qword_281003E58 = CopyTemporalNoiseReductionEnabled;
  qword_281003E60 = 0x300000000;
  dword_281003E68 = 31;
  qword_281003E70 = *MEMORY[0x277CF5D28];
  qword_281003E78 = v16;
  qword_281003E80 = SetTemporalNoiseReductionConfiguration;
  qword_281003E88 = CopyTemporalNoiseReductionConfiguration;
  qword_281003E90 = 0x300000000;
  dword_281003E98 = 31;
  qword_281003EA0 = *MEMORY[0x277CF5D30];
  qword_281003EA8 = v16;
  qword_281003EB0 = 0;
  qword_281003EB8 = CopyTemporalNoiseReductionConfigurationSupportedKeys;
  qword_281003EC0 = 0x100000000;
  dword_281003EC8 = 31;
  qword_281003ED0 = *MEMORY[0x277CF59B8];
  qword_281003ED8 = qword_281003DE8;
  qword_281003EE0 = SetFaceDetectionEnabled;
  qword_281003EE8 = CopyFaceDetectionEnabled;
  qword_281003EF0 = 0x300000000;
  dword_281003EF8 = 31;
  qword_281003F00 = @"FaceDetectionMode";
  qword_281003F08 = v18;
  qword_281003F10 = SetFaceDetectionMode;
  qword_281003F18 = CopyFaceDetectionMode;
  qword_281003F20 = 0x300000000;
  dword_281003F28 = 31;
  qword_281003F30 = *MEMORY[0x277CF5B38];
  qword_281003F38 = v16;
  qword_281003F40 = SetLuxAdaptiveParameters;
  qword_281003F48 = CopyLuxAdaptiveParameters;
  qword_281003F50 = 0x300000000;
  dword_281003F58 = 31;
  qword_281003F60 = *MEMORY[0x277CF5BC0];
  qword_281003F68 = v16;
  qword_281003F70 = 0;
  qword_281003F78 = CopyModuleInfo;
  qword_281003F80 = 0x300000000;
  dword_281003F88 = 63;
  qword_281003F90 = *MEMORY[0x277CF58C8];
  qword_281003F98 = v16;
  qword_281003FA0 = 0;
  qword_281003FA8 = CopyColorHistogram;
  qword_281003FB0 = 0x300000020;
  dword_281003FB8 = 31;
  qword_281003FC0 = *MEMORY[0x277CF57F0];
  qword_281003FC8 = v18;
  qword_281003FD0 = SetAWBScheme;
  qword_281003FD8 = CopyAWBScheme;
  qword_281003FE0 = 0x300000020;
  dword_281003FE8 = 31;
  qword_281003FF0 = *MEMORY[0x277CF5B78];
  qword_281003FF8 = v18;
  qword_281004000 = SetMaxIntegrationTime;
  qword_281004008 = CopyMaxIntegrationTime;
  qword_281004010 = 0x300000000;
  dword_281004018 = 31;
  qword_281004020 = *MEMORY[0x277CF5BA0];
  qword_281004028 = v18;
  qword_281004030 = 0;
  qword_281004038 = CopyMinIntegrationTime;
  qword_281004040 = 0x300000000;
  dword_281004048 = 31;
  qword_281004050 = *MEMORY[0x277CF5CB0];
  qword_281004058 = v18;
  qword_281004060 = 0;
  qword_281004068 = CopySensorTemperature;
  qword_281004070 = 0x300000000;
  dword_281004078 = 31;
  qword_281004080 = *MEMORY[0x277CF5C78];
  qword_281004088 = v18;
  qword_281004090 = 0;
  qword_281004098 = CopySensorPixelClock;
  qword_2810040A0 = 0x300000000;
  dword_2810040A8 = 15;
  qword_2810040B0 = *MEMORY[0x277CF5820];
  qword_2810040B8 = v16;
  qword_2810040C0 = 0;
  qword_2810040C8 = CopyAlternateOutputSizeLimits;
  qword_2810040D0 = 0x300000000;
  dword_2810040D8 = 31;
  qword_2810040E0 = *MEMORY[0x277CF57A8];
  qword_2810040E8 = qword_281003DE8;
  qword_2810040F0 = SetAEStatsEnable;
  qword_2810040F8 = 0;
  qword_281004100 = 0x300000000;
  dword_281004108 = 31;
  qword_281004110 = *MEMORY[0x277CF5788];
  qword_281004118 = v18;
  qword_281004120 = SetAEMaxGain;
  qword_281004128 = CopyAEMaxGain;
  qword_281004130 = 0x300000000;
  dword_281004138 = 31;
  qword_281004140 = *MEMORY[0x277CF5798];
  qword_281004148 = v18;
  qword_281004150 = SetAEMinGain;
  qword_281004158 = CopyAEMinGain;
  qword_281004160 = 0x300000000;
  dword_281004168 = 31;
  qword_281004170 = *MEMORY[0x277CF5770];
  qword_281004178 = v18;
  qword_281004180 = SetAEGainThresholdForFlickerZoneIntegrationTimeTransition;
  qword_281004188 = CopyAEGainThresholdForFlickerZoneIntegrationTimeTransition;
  qword_281004190 = 0x300000000;
  dword_281004198 = 31;
  qword_2810041A0 = *MEMORY[0x277CF5778];
  qword_2810041A8 = v18;
  qword_2810041B0 = SetAEIntegrationTimeForUnityGainToMinGainTransition;
  qword_2810041B8 = CopyAEIntegrationTimeForUnityGainToMinGainTransition;
  qword_2810041C0 = 0x300000000;
  dword_2810041C8 = 31;
  qword_2810041D0 = *MEMORY[0x277CF5988];
  qword_2810041D8 = v16;
  qword_2810041E0 = 0;
  qword_2810041E8 = CopyErrorCounters;
  qword_2810041F0 = 0x300000000;
  dword_2810041F8 = 63;
  qword_281004200 = *MEMORY[0x277CF59C8];
  qword_281004208 = v16;
  qword_281004210 = SetFaceDetectionRectangleOfInterest;
  qword_281004218 = CopyFaceDetectionRectangleOfInterest;
  qword_281004220 = 0x300000000;
  dword_281004228 = 31;
  qword_281004230 = *MEMORY[0x277CF5850];
  qword_281004238 = qword_281003E18;
  v54 = qword_281004230;
  qword_281004240 = SetAutoFocusMode;
  qword_281004248 = CopyAutoFocusMode;
  qword_281004250 = 0x300000002;
  dword_281004258 = 31;
  qword_281004260 = *MEMORY[0x277CF5B68];
  qword_281004268 = v16;
  v53 = qword_281004260;
  qword_281004270 = SetMatrixFocusParams;
  qword_281004278 = CopyMatrixFocusParams;
  qword_281004280 = 0x300000002;
  dword_281004288 = 31;
  qword_281004290 = *MEMORY[0x277CF3F00];
  qword_281004298 = v16;
  qword_2810042A0 = 0;
  qword_2810042A8 = CopyMatrixFocusDebugData;
  qword_2810042B0 = 0x300000002;
  dword_2810042B8 = 31;
  qword_2810042C0 = *MEMORY[0x277CF5BA8];
  qword_2810042C8 = v18;
  qword_2810042D0 = 0;
  qword_2810042D8 = CopyMFDCameraFaceDown;
  qword_2810042E0 = 0x100000002;
  dword_2810042E8 = 15;
  qword_2810042F0 = *MEMORY[0x277CF5BB0];
  qword_2810042F8 = v18;
  qword_281004300 = 0;
  qword_281004308 = CopyMFDCameraFaceUp;
  qword_281004310 = 0x100000002;
  dword_281004318 = 15;
  qword_281004320 = *MEMORY[0x277CF58C0];
  qword_281004328 = v18;
  qword_281004330 = SetClientMaxBufferCountHint;
  qword_281004338 = 0;
  qword_281004340 = 0x300000000;
  dword_281004348 = 63;
  qword_281004350 = *MEMORY[0x277CF5830];
  qword_281004358 = qword_281003DE8;
  qword_281004360 = SetAttachRAW;
  qword_281004368 = 0;
  qword_281004370 = 0x300000000;
  dword_281004378 = 63;
  qword_281004380 = *MEMORY[0x277CF58D8];
  qword_281004388 = qword_281003E18;
  qword_281004390 = SetColorRange;
  qword_281004398 = 0;
  qword_2810043A0 = 0x300000020;
  dword_2810043A8 = 31;
  qword_2810043B0 = *MEMORY[0x277CF5B10];
  qword_2810043B8 = qword_281003D58;
  v52 = qword_2810043B0;
  qword_2810043C0 = LockAWBNow;
  qword_2810043C8 = 0;
  qword_2810043D0 = 0x300000020;
  dword_2810043D8 = 31;
  qword_2810043E0 = *MEMORY[0x277CF5D98];
  qword_2810043E8 = qword_281003D58;
  v51 = qword_2810043E0;
  qword_2810043F0 = UnlockAWBNow;
  qword_2810043F8 = 0;
  qword_281004400 = 0x300000020;
  dword_281004408 = 31;
  qword_281004410 = *MEMORY[0x277CF5B00];
  qword_281004418 = qword_281003D58;
  v50 = qword_281004410;
  qword_281004420 = LockAENow;
  qword_281004428 = 0;
  qword_281004430 = 0x300000000;
  dword_281004438 = 31;
  qword_281004440 = *MEMORY[0x277CF5D90];
  qword_281004448 = qword_281003D58;
  v49 = qword_281004440;
  qword_281004450 = UnlockAENow;
  qword_281004458 = 0;
  qword_281004460 = 0x300000000;
  dword_281004468 = 31;
  qword_281004470 = *MEMORY[0x277CF5D80];
  qword_281004478 = v18;
  qword_281004480 = SetTorchLevel;
  qword_281004488 = 0;
  qword_281004490 = 1;
  dword_281004498 = 31;
  qword_2810044A0 = *MEMORY[0x277CF57E0];
  qword_2810044A8 = v16;
  v48 = qword_2810044A0;
  qword_2810044B0 = SetAFWindowParams;
  qword_2810044B8 = 0;
  qword_2810044C0 = 0x300000000;
  dword_2810044C8 = 31;
  qword_2810044D0 = *MEMORY[0x277CF57B8];
  v47 = qword_2810044D0;
  qword_2810044D8 = v16;
  qword_281004500 = *MEMORY[0x277CF5828];
  qword_2810044E0 = SetAEWindowParams;
  qword_2810044E8 = 0;
  qword_2810044F0 = 0x300000000;
  dword_2810044F8 = 31;
  qword_281004508 = qword_281003D58;
  qword_281004510 = Apply3AWindowSettings;
  qword_281004518 = 0;
  qword_281004520 = 0x300000000;
  dword_281004528 = 31;
  qword_281004530 = *MEMORY[0x277CF5760];
  v23 = qword_281004530;
  qword_281004538 = v16;
  qword_281004540 = SetAEFaceDetectionMetering;
  qword_281004548 = 0;
  qword_281004550 = 0x300000000;
  dword_281004558 = 31;
  qword_281004560 = *MEMORY[0x277CF5998];
  qword_281004568 = v16;
  v46 = qword_281004560;
  qword_281004570 = SetExposureBias;
  qword_281004578 = 0;
  qword_281004580 = 0x300000000;
  dword_281004588 = 31;
  qword_281004590 = *MEMORY[0x277CF5750];
  qword_281004598 = v18;
  v45 = qword_281004590;
  qword_2810045A0 = SetAEConvergenceSpeed;
  qword_2810045A8 = 0;
  qword_2810045B0 = 0x300000000;
  dword_2810045B8 = 31;
  qword_2810045C0 = *MEMORY[0x277CF57A0];
  qword_2810045C8 = v18;
  v44 = qword_2810045C0;
  qword_2810045D0 = SetAEStability;
  qword_2810045D8 = 0;
  qword_2810045E0 = 0x300000000;
  dword_2810045E8 = 31;
  qword_2810045F0 = *MEMORY[0x277CF57D8];
  qword_2810045F8 = v16;
  v43 = qword_2810045F0;
  qword_281004600 = SetAFSearchPositions;
  qword_281004608 = 0;
  qword_281004610 = 0x300000002;
  dword_281004618 = 31;
  qword_281004620 = *MEMORY[0x277CF5B58];
  v42 = qword_281004620;
  qword_281004628 = v16;
  qword_281004650 = *MEMORY[0x277CF5DF0];
  qword_281004630 = ManualFocusNow;
  qword_281004638 = 0;
  qword_281004640 = 0x300000002;
  dword_281004648 = 31;
  qword_281004658 = qword_281003DE8;
  qword_281004660 = SetVideoRecordingInProgress;
  qword_281004668 = 0;
  qword_281004670 = 0x300000000;
  dword_281004678 = 31;
  qword_281004680 = *MEMORY[0x277CF5A60];
  qword_281004688 = v16;
  v41 = qword_281004680;
  qword_281004690 = SetHistogramParams;
  qword_281004698 = 0;
  qword_2810046A0 = 0x300000000;
  dword_2810046A8 = 31;
  qword_2810046B0 = *MEMORY[0x277CF5790];
  v40 = qword_2810046B0;
  qword_2810046B8 = qword_281003E18;
  qword_2810046E0 = *MEMORY[0x277CF59D8];
  qword_2810046C0 = SetAEMeteringMode;
  qword_2810046C8 = 0;
  qword_2810046D0 = 0x300000000;
  dword_2810046D8 = 31;
  qword_2810046E8 = qword_281003E18;
  qword_2810046F0 = SetFlashMode;
  qword_2810046F8 = 0;
  qword_281004700 = 0x300000001;
  dword_281004708 = 31;
  qword_281004710 = *MEMORY[0x277CF57C8];
  v39 = qword_281004710;
  qword_281004718 = v16;
  qword_281004740 = *MEMORY[0x277CF5780];
  qword_281004720 = SetAFEarlyOutParams;
  qword_281004728 = 0;
  qword_281004730 = 0x300000002;
  dword_281004738 = 31;
  qword_281004748 = qword_281003DE8;
  qword_281004750 = SetAEMatrixMetadataEnable;
  qword_281004770 = *MEMORY[0x277CF5B50];
  qword_281004758 = 0;
  qword_281004760 = 0x300000000;
  dword_281004768 = 31;
  qword_281004778 = v16;
  qword_281004780 = ManualAENow;
  qword_2810047A0 = *MEMORY[0x277CF5C48];
  qword_281004788 = 0;
  qword_281004790 = 0x300000000;
  dword_281004798 = 31;
  qword_2810047A8 = v16;
  qword_2810047B0 = RawImageProcessBegin;
  qword_2810047D0 = *MEMORY[0x277CF5C60];
  qword_2810047B8 = 0;
  qword_2810047C0 = 0x300000000;
  dword_2810047C8 = 31;
  qword_2810047D8 = v16;
  qword_2810047E0 = RawImageProcessPrepare;
  qword_281004800 = *MEMORY[0x277CF5C58];
  qword_2810047E8 = 0;
  qword_2810047F0 = 0x300000000;
  dword_2810047F8 = 31;
  qword_281004808 = qword_281003D58;
  qword_281004810 = RawImageProcessGo;
  qword_281004830 = *MEMORY[0x277CF5C50];
  qword_281004818 = 0;
  qword_281004820 = 0x300000000;
  dword_281004828 = 31;
  qword_281004838 = qword_281003D58;
  qword_281004840 = RawImageProcessEnd;
  qword_281004860 = *MEMORY[0x277CF5768];
  qword_281004848 = 0;
  qword_281004850 = 0x300000000;
  dword_281004858 = 31;
  qword_281004868 = qword_281003DE8;
  qword_281004870 = SetAEGainConvergenceNormalizationEnable;
  qword_281004878 = 0;
  qword_281004880 = 0x300000000;
  dword_281004888 = 31;
  qword_281004890 = *MEMORY[0x277CF5970];
  qword_281004898 = v18;
  v38 = qword_281004890;
  qword_2810048A0 = SetDeviceOrientation;
  qword_2810048A8 = 0;
  qword_2810048B0 = 0x300000000;
  dword_2810048B8 = 63;
  qword_2810048C0 = *MEMORY[0x277CF5B18];
  qword_2810048C8 = qword_281003D58;
  v37 = qword_2810048C0;
  qword_2810048D0 = LockBLCNow;
  qword_2810048D8 = 0;
  qword_2810048E0 = 0x300000000;
  dword_2810048E8 = 31;
  qword_2810048F0 = *MEMORY[0x277CF5DA0];
  v36 = qword_2810048F0;
  qword_2810048F8 = qword_281003D58;
  qword_281004920 = *MEMORY[0x277CF5978];
  qword_281004900 = UnlockBLCNow;
  qword_281004908 = 0;
  qword_281004910 = 0x300000000;
  dword_281004918 = 31;
  qword_281004928 = v18;
  qword_281004930 = SetDiagnosticMode;
  qword_281004950 = *MEMORY[0x277CF5A88];
  qword_281004938 = 0;
  qword_281004940 = 0x300000000;
  dword_281004948 = 31;
  qword_281004958 = v16;
  qword_281004960 = SetImageMapParams;
  qword_281004980 = *MEMORY[0x277CF5818];
  qword_281004968 = 0;
  qword_281004970 = 0x300000000;
  dword_281004978 = 31;
  qword_281004988 = v16;
  qword_281004990 = SetAlternateOutputSize;
  qword_2810049B0 = *MEMORY[0x277CF5DB0];
  qword_281004998 = 0;
  qword_2810049A0 = 0x300000000;
  dword_2810049A8 = 31;
  qword_2810049B8 = qword_281003DE8;
  qword_2810049C0 = SetUsePreviewBufferQueueForRawReprocessing;
  qword_2810049C8 = 0;
  qword_2810049D0 = 0x300000000;
  dword_2810049D8 = 31;
  qword_2810049E0 = *MEMORY[0x277CF57D0];
  v35 = qword_2810049E0;
  qword_2810049E8 = qword_281003DE8;
  qword_281004A10 = *MEMORY[0x277CF5758];
  qword_2810049F0 = SetAFPeakPredictionEnabled;
  qword_2810049F8 = 0;
  qword_281004A00 = 0x300000000;
  dword_281004A08 = 31;
  qword_281004A18 = qword_281003DE8;
  qword_281004A20 = SetAEEnabled;
  qword_281004A40 = *MEMORY[0x277CF57E8];
  qword_281004A28 = 0;
  qword_281004A30 = 0x300000000;
  dword_281004A38 = 31;
  qword_281004A48 = v16;
  qword_281004A50 = SetAWB1stGainManual;
  qword_281004A70 = *MEMORY[0x277CF5AE8];
  qword_281004A58 = 0;
  qword_281004A60 = 0x300000020;
  dword_281004A68 = 31;
  qword_281004A78 = v16;
  qword_281004A80 = SetLimitAERange;
  qword_281004AA0 = *MEMORY[0x277CF58B0];
  qword_281004A88 = 0;
  qword_281004A90 = 0x300000000;
  dword_281004A98 = 31;
  qword_281004AA8 = qword_281003DE8;
  qword_281004AB0 = SetChromaNoiseReductionEnabled;
  qword_281004AB8 = 0;
  qword_281004AC0 = 0x300000000;
  dword_281004AC8 = 31;
  qword_281004AD0 = *MEMORY[0x277CF5C20];
  qword_281004AD8 = v16;
  v34 = qword_281004AD0;
  qword_281004AE0 = PeakTrackingFocusNow;
  qword_281004AE8 = 0;
  qword_281004AF0 = 0x300000002;
  dword_281004AF8 = 31;
  qword_281004B00 = *MEMORY[0x277CF5B20];
  qword_281004B08 = qword_281003D58;
  v33 = qword_281004B00;
  qword_281004B10 = LockLTMNow;
  qword_281004B18 = 0;
  qword_281004B20 = 0x300000000;
  dword_281004B28 = 31;
  qword_281004B30 = *MEMORY[0x277CF5DA8];
  v32 = qword_281004B30;
  qword_281004B38 = qword_281003D58;
  qword_281004B60 = *MEMORY[0x277CF5688];
  qword_281004B40 = UnlockLTMNow;
  qword_281004B48 = 0;
  qword_281004B50 = 0x300000000;
  dword_281004B58 = 31;
  qword_281004B68 = v18;
  qword_281004B70 = SetMaxPerFrameExposureDelta;
  qword_281004B78 = CopyMaxPerFrameExposureDelta;
  qword_281004B90 = *MEMORY[0x277CF59F0];
  qword_281004B80 = 0x300000000;
  dword_281004B88 = 31;
  qword_281004B98 = v16;
  qword_281004BA0 = 0;
  qword_281004BA8 = CopyFocusLastScanHistory;
  qword_281004BC0 = *MEMORY[0x277CF5CD8];
  qword_281004BB0 = 0x300000002;
  dword_281004BB8 = 31;
  qword_281004BC8 = qword_281003E18;
  qword_281004BD0 = SetSphereMode;
  qword_281004BD8 = CopySphereMode;
  qword_281004BF0 = *MEMORY[0x277CF5BC8];
  qword_281004BE0 = 0x300000004;
  dword_281004BE8 = 31;
  qword_281004BF8 = qword_281003DE8;
  qword_281004C00 = SetMotionDataFromISPEnabled;
  qword_281004C20 = *MEMORY[0x277CF5DF8];
  qword_281004C08 = 0;
  qword_281004C10 = 0x300000010;
  dword_281004C18 = 63;
  qword_281004C28 = qword_281003DE8;
  qword_281004C30 = SetVideoStabilizationISPDebugDataEnabled;
  qword_281004C50 = *MEMORY[0x277CF5B70];
  qword_281004C38 = 0;
  qword_281004C40 = 0x300000010;
  dword_281004C48 = 31;
  qword_281004C58 = v16;
  qword_281004C60 = SetMaxFrameCoalescingDuration;
  qword_281004C68 = CopyMaxFrameCoalescingDuration;
  qword_281004C70 = 0x300000000;
  dword_281004C78 = 31;
  qword_281004C80 = *MEMORY[0x277CF58F8];
  v24 = qword_281004C80;
  qword_281004C88 = v16;
  qword_281004C90 = SetContinuousAutoFocusNow;
  qword_281004C98 = 0;
  qword_281004CA0 = 0x30000000ALL;
  dword_281004CA8 = 31;
  qword_281004CB0 = *MEMORY[0x277CF5B08];
  v25 = qword_281004CB0;
  qword_281004CB8 = qword_281003D58;
  qword_281004CE0 = *MEMORY[0x277CF5B60];
  qword_281004CC0 = SetLockAFNow;
  qword_281004CC8 = 0;
  qword_281004CD0 = 0x300000002;
  dword_281004CD8 = 31;
  qword_281004CE8 = v16;
  qword_281004CF0 = SetManualWhiteBalanceGain;
  qword_281004D10 = *MEMORY[0x277CF5A78];
  qword_281004CF8 = 0;
  qword_281004D00 = 0x300000000;
  dword_281004D08 = 31;
  qword_281004D18 = qword_281003DE8;
  qword_281004D20 = SetISPHallDataEnabled;
  qword_281004D40 = *MEMORY[0x277CF5A80];
  qword_281004D28 = 0;
  qword_281004D30 = 0x300000004;
  dword_281004D38 = 63;
  qword_281004D48 = qword_281003DE8;
  qword_281004D50 = SetISPMotionDataEnabled;
  qword_281004D70 = *MEMORY[0x277CF5900];
  qword_281004D58 = 0;
  qword_281004D60 = 0x300000010;
  dword_281004D68 = 63;
  qword_281004D78 = qword_281003DE8;
  qword_281004D80 = SetDebugHallDataFromISPEnabled;
  qword_281004DA0 = *MEMORY[0x277CF5908];
  qword_281004D88 = 0;
  qword_281004D90 = 0x300000004;
  dword_281004D98 = 63;
  qword_281004DA8 = qword_281003DE8;
  qword_281004DB0 = SetDebugMotionDataFromISPEnabled;
  qword_281004DD0 = *MEMORY[0x277CF59B0];
  qword_281004DB8 = 0;
  qword_281004DC0 = 0x300000010;
  dword_281004DC8 = 63;
  qword_281004DD8 = v16;
  qword_281004DE0 = SetFaceDetectionConfiguration;
  qword_281004DE8 = 0;
  qword_281004DF0 = 0x300000000;
  dword_281004DF8 = 31;
  qword_281004E00 = *MEMORY[0x277CF5E30];
  v31 = qword_281004E00;
  qword_281004E08 = v18;
  qword_281004E10 = SetZoomFactor;
  qword_281004E18 = CopyZoomFactor;
  qword_281004E30 = *MEMORY[0x277CF5B80];
  qword_281004E20 = 0x300000000;
  dword_281004E28 = 31;
  qword_281004E38 = v18;
  qword_281004E40 = 0;
  qword_281004E48 = CopyMaxZoomFactor;
  qword_281004E60 = *MEMORY[0x277CF5E18];
  qword_281004E50 = 0x300000000;
  dword_281004E58 = 31;
  qword_281004E68 = v16;
  qword_281004E70 = 0;
  qword_281004E78 = CopyWhiteBalanceCalibrations;
  qword_281004E90 = *MEMORY[0x277CF5E20];
  qword_281004E80 = 0x300000020;
  dword_281004E88 = 31;
  qword_281004E98 = v16;
  qword_281004EA0 = 0;
  qword_281004EA8 = CopyWhiteBalanceGain;
  qword_281004EC0 = *MEMORY[0x277CF5E00];
  qword_281004EB0 = 0x300000020;
  dword_281004EB8 = 31;
  qword_281004EC8 = qword_281003DE8;
  qword_281004ED0 = SetVideoStabilizationISPOutputVectorsEnabled;
  qword_281004ED8 = 0;
  qword_281004EE0 = 0x300000010;
  dword_281004EE8 = 31;
  qword_281004EF0 = *MEMORY[0x277CF5848];
  v26 = qword_281004EF0;
  qword_281004EF8 = qword_281003D58;
  qword_281004F20 = *MEMORY[0x277CF59E0];
  qword_281004F00 = SetAutoFocusHintNow;
  qword_281004F08 = 0;
  qword_281004F10 = 0x30000000ALL;
  dword_281004F18 = 31;
  qword_281004F28 = v18;
  qword_281004F30 = 0;
  qword_281004F38 = CopyFocalLength;
  qword_281004F50 = *MEMORY[0x277CF5C28];
  qword_281004F40 = 0x300000000;
  dword_281004F48 = 63;
  qword_281004F58 = v18;
  qword_281004F60 = 0;
  qword_281004F68 = CopyPixelSize;
  qword_281004F80 = *MEMORY[0x277CF5AD0];
  qword_281004F70 = 0x300000000;
  dword_281004F78 = 63;
  qword_281004F88 = qword_281003DE8;
  qword_281004F90 = SetLeaderFollowerAutoFocusEnabled;
  qword_281004FB0 = *MEMORY[0x277CF5AD8];
  qword_281004F98 = 0;
  qword_281004FA0 = 0x300000002;
  dword_281004FA8 = 31;
  qword_281004FB8 = v18;
  qword_281004FC0 = 0;
  qword_281004FC8 = CopyLensFNumber;
  qword_281004FE0 = *MEMORY[0x277CF59C0];
  qword_281004FD0 = 0x300000000;
  dword_281004FD8 = 63;
  qword_281004FE8 = v18;
  qword_281004FF0 = SetFaceDetectionMetadataCoordinateSpace;
  qword_281005010 = *MEMORY[0x277CF5BD8];
  qword_281004FF8 = 0;
  qword_281005000 = 0x300000000;
  dword_281005008 = 31;
  qword_281005018 = qword_281003DE8;
  qword_281005020 = SetMultipleOutputSupportEnabled;
  qword_281005028 = CopyMultipleOutputSupportEnabled;
  qword_281005040 = *MEMORY[0x277CF5DD8];
  qword_281005030 = 0x300000000;
  dword_281005038 = 63;
  qword_281005048 = v16;
  qword_281005050 = SetVideoOutputHandlers;
  qword_281005070 = *MEMORY[0x277CF5DE8];
  qword_281005058 = 0;
  qword_281005060 = 0x300000000;
  dword_281005068 = 63;
  qword_281005078 = v16;
  qword_281005080 = SetVideoOutputsEnabled;
  qword_281005088 = CopyVideoOutputsEnabled;
  qword_2810050A0 = *MEMORY[0x277CF5DC8];
  qword_281005090 = 0x300000000;
  dword_281005098 = 63;
  qword_2810050A8 = v16;
  qword_2810050B0 = SetVideoOutputConfigurations;
  qword_2810050B8 = CopyVideoOutputConfigurations;
  qword_2810050D0 = *MEMORY[0x277CF5DE0];
  qword_2810050C0 = 0x300000000;
  dword_2810050C8 = 63;
  qword_2810050D8 = v16;
  qword_2810050E0 = 0;
  qword_2810050E8 = CopyVideoOutputsColorInfo;
  qword_281005100 = *MEMORY[0x277CF5DD0];
  qword_2810050F0 = 0x300000000;
  dword_2810050F8 = 63;
  qword_281005108 = v16;
  qword_281005110 = 0;
  qword_281005118 = CopyGeometricDistortionCorrectedRects;
  qword_281005130 = *MEMORY[0x277CF5910];
  qword_281005120 = 0x300000000;
  dword_281005128 = 63;
  qword_281005138 = qword_281003DE8;
  qword_281005140 = SetDecouplePrimaryScalerFromStreaming;
  qword_281005148 = CopyDecouplePrimaryScalerFromStreaming;
  qword_281005150 = 0x300000000;
  dword_281005158 = 31;
  qword_281005160 = *MEMORY[0x277CF59F8];
  v27 = qword_281005160;
  qword_281005168 = v16;
  qword_281005190 = *MEMORY[0x277CF5DC0];
  qword_281005170 = SetFocusNow;
  qword_281005178 = 0;
  qword_281005180 = 0x30000000ALL;
  dword_281005188 = 31;
  qword_281005198 = v16;
  qword_2810051A0 = 0;
  qword_2810051A8 = CopyVibeMitigationInfo;
  qword_2810051C0 = *MEMORY[0x277CF5DB8];
  qword_2810051B0 = 2;
  dword_2810051B8 = 31;
  qword_2810051C8 = qword_281003DE8;
  qword_2810051D0 = SetVibeMitigationEnabled;
  qword_2810051F0 = *MEMORY[0x277CF5D20];
  qword_2810051D8 = 0;
  qword_2810051E0 = 0x4000000;
  dword_2810051E8 = 31;
  qword_2810051F8 = v16;
  qword_281005200 = SetSynchronizedStreamsSlaveConfiguration;
  qword_281005208 = CopySynchronizedStreamsSlaveConfiguration;
  qword_281005220 = *MEMORY[0x277CF5D00];
  qword_281005210 = 0x300000200;
  dword_281005218 = 63;
  qword_281005228 = v16;
  qword_281005230 = 0;
  qword_281005238 = CopySupportedColorSpaces;
  qword_281005250 = *MEMORY[0x277CF58E0];
  qword_281005240 = 0x300000000;
  dword_281005248 = 31;
  qword_281005258 = v18;
  qword_281005260 = SetColorSpace;
  qword_281005268 = CopyColorSpace;
  qword_281005280 = *MEMORY[0x277CF5A48];
  qword_281005270 = 0x300000020;
  dword_281005278 = 31;
  qword_281005288 = v16;
  qword_281005290 = 0;
  qword_281005298 = CopyAutoFocusPositionSensor;
  qword_2810052B0 = *MEMORY[0x277CF5A18];
  qword_2810052A0 = 0x300000000;
  dword_2810052A8 = 31;
  qword_2810052B8 = v16;
  qword_2810052C0 = 0;
  qword_2810052C8 = CopyGDCCoefficients;
  qword_2810052E0 = *MEMORY[0x277CF5C00];
  qword_2810052D0 = 0x300800000;
  dword_2810052D8 = 31;
  qword_2810052E8 = v16;
  qword_2810052F0 = 0;
  qword_2810052F8 = CopyOpticalCenter;
  qword_281005300 = 0x300800000;
  dword_281005308 = 31;
  qword_281005310 = @"EnablePDEStreaming";
  qword_281005318 = v18;
  qword_281005340 = *MEMORY[0x277CF5860];
  qword_281005320 = SetPDEStreaming;
  qword_281005328 = 0;
  qword_281005330 = 0x300000040;
  dword_281005338 = 31;
  qword_281005348 = v18;
  qword_281005350 = SetAPSMode;
  qword_281005358 = CopyAPSMode;
  qword_281005370 = *MEMORY[0x277CF5A50];
  qword_281005360 = 0x300020000;
  dword_281005368 = 31;
  qword_281005378 = qword_281003DE8;
  qword_281005380 = SetHighCurrentTorchEnabled;
  qword_2810053A0 = *MEMORY[0x277CF5838];
  qword_281005388 = 0;
  qword_281005390 = 1;
  dword_281005398 = 31;
  qword_2810053A8 = v16;
  qword_2810053B0 = SetAFCalibrationData;
  qword_2810053B8 = CopyAFCalibrationData;
  qword_2810053D0 = *MEMORY[0x277CF5CC0];
  qword_2810053C0 = 0x300000002;
  dword_2810053C8 = 31;
  qword_2810053D8 = v16;
  qword_2810053E0 = SetSphereCalibrationData;
  qword_2810053E8 = CopySphereCalibrationData;
  qword_281005400 = *MEMORY[0x277CF5CC8];
  qword_2810053F0 = 0x300000004;
  dword_2810053F8 = 31;
  qword_281005408 = v16;
  qword_281005410 = SetSphereEndStopCalibrationData;
  qword_281005418 = CopySphereEndStopCalibrationData;
  qword_281005430 = *MEMORY[0x277CF5870];
  qword_281005420 = 0x300000004;
  dword_281005428 = 31;
  qword_281005438 = v16;
  qword_281005440 = SetAPSSphereInterCalibrationData;
  qword_281005448 = CopyAPSSphereInterCalibrationData;
  qword_281005460 = *MEMORY[0x277CF5AA0];
  qword_281005450 = 0x300000084;
  dword_281005458 = 31;
  qword_281005468 = qword_281003DE8;
  qword_281005470 = SetKeypointDetectionEnabled;
  qword_281005478 = CopyKeypointDetectionEnabled;
  qword_281005490 = *MEMORY[0x277CF5A98];
  qword_281005480 = 0x300000000;
  dword_281005488 = 31;
  qword_281005498 = v16;
  qword_2810054A0 = SetKeypointDetectionConfiguration;
  qword_2810054A8 = CopyKeypointDetectionConfiguration;
  qword_2810054C0 = *MEMORY[0x277CF5C70];
  qword_2810054B0 = 0x300000000;
  dword_2810054B8 = 31;
  qword_2810054C8 = v18;
  qword_2810054D0 = SetSceneClassifierVersion;
  qword_2810054D8 = CopySceneClassifierVersion;
  qword_2810054F0 = *MEMORY[0x277CF5AC0];
  qword_2810054E0 = 0x300000000;
  dword_2810054E8 = 31;
  qword_2810054F8 = qword_281003DE8;
  qword_281005500 = SetLTMLookUpTableMetadataEnabled;
  qword_281005508 = CopyLTMLookUpTableMetadataEnabled;
  qword_281005520 = *MEMORY[0x277CF5B28];
  qword_281005510 = 0x300000000;
  dword_281005518 = 31;
  qword_281005528 = qword_281003DE8;
  qword_281005530 = SetLumaHistogramEnabled;
  qword_281005538 = CopyLumaHistogramEnabled;
  qword_281005550 = *MEMORY[0x277CF57B0];
  qword_281005540 = 0x300000000;
  dword_281005548 = 31;
  qword_281005558 = v16;
  qword_281005560 = SetAutoExposureTables;
  qword_281005568 = CopyAutoExposureTables;
  qword_281005580 = *MEMORY[0x277CF5D58];
  qword_281005570 = 0x300000000;
  dword_281005578 = 31;
  qword_281005588 = v16;
  qword_281005590 = TimeMachineSuspendNow;
  qword_2810055B0 = *MEMORY[0x277CF5D50];
  qword_281005598 = 0;
  qword_2810055A0 = 0x300000000;
  dword_2810055A8 = 31;
  qword_2810055B8 = qword_281003D58;
  qword_2810055C0 = TimeMachineResumeNow;
  qword_2810055E0 = *MEMORY[0x277CF5D48];
  qword_2810055C8 = 0;
  qword_2810055D0 = 0x300000000;
  dword_2810055D8 = 31;
  qword_2810055E8 = v16;
  qword_2810055F0 = 0;
  qword_2810055F8 = CopyTimeMachinePTSRange;
  qword_281005610 = *MEMORY[0x277CF57C0];
  qword_281005600 = 0x300000000;
  dword_281005608 = 31;
  qword_281005618 = qword_281003DE8;
  qword_281005620 = SetFirmwareFocusTriggerEnabled;
  qword_281005628 = CopyFirmwareFocusTriggerEnabled;
  qword_281005640 = *MEMORY[0x277CF58F0];
  qword_281005630 = 0x300000002;
  dword_281005638 = 31;
  qword_281005648 = qword_281003DE8;
  qword_281005650 = SetContentAwareEnhancement;
  qword_281005658 = CopyContentAwareEnhancement;
  qword_281005670 = *MEMORY[0x277CF58E8];
  qword_281005660 = 0x300000000;
  dword_281005668 = 15;
  qword_281005678 = qword_281003DE8;
  qword_281005680 = SetContentAwareAWBEnabled;
  qword_281005688 = CopyContentAwareAWBEnabled;
  qword_2810056A0 = *MEMORY[0x277CF5BE0];
  qword_281005690 = 0x300000000;
  dword_281005698 = 15;
  qword_2810056A8 = v16;
  qword_2810056B0 = SetNRSharpeningConfiguration;
  qword_2810056B8 = CopyNRSharpeningConfiguration;
  qword_2810056D0 = *MEMORY[0x277CF5CF0];
  qword_2810056C0 = 0x300000800;
  dword_2810056C8 = 31;
  qword_2810056D8 = v18;
  qword_2810056E0 = 0;
  qword_2810056E8 = CopyStructuredLightStandbyTemperature;
  qword_281005700 = *MEMORY[0x277CF5858];
  qword_2810056F0 = 64;
  dword_2810056F8 = 31;
  qword_281005708 = qword_281003DE8;
  qword_281005710 = SetAPSLoggingDataEnabled;
  qword_281005730 = *MEMORY[0x277CF5CD0];
  qword_281005718 = 0;
  qword_281005720 = 0x300000080;
  dword_281005728 = 31;
  qword_281005738 = qword_281003DE8;
  qword_281005740 = SetSphereLoggingDataEnabled;
  qword_281005760 = *MEMORY[0x277CF5968];
  qword_281005748 = 0;
  qword_281005750 = 0x300000004;
  dword_281005758 = 31;
  qword_281005768 = qword_281003DE8;
  qword_281005770 = SetDeviceMotionLoggingDataEnabled;
  qword_281005790 = *MEMORY[0x277CF5868];
  qword_281005778 = 0;
  qword_281005780 = 0x300000010;
  dword_281005788 = 31;
  qword_281005798 = v16;
  qword_2810057A0 = 0;
  qword_2810057A8 = CopyAPSOffsetEstimatorInfo;
  qword_2810057B0 = 0x300000080;
  dword_2810057B8 = 31;
  qword_2810057C0 = *MEMORY[0x277CF5C68];
  v28 = qword_2810057C0;
  qword_2810057C8 = v16;
  qword_2810057F0 = *MEMORY[0x277CF59E8];
  qword_2810057D0 = SetROIForCameraControls;
  qword_2810057D8 = 0;
  qword_2810057E0 = 0x300000000;
  dword_2810057E8 = 31;
  qword_2810057F8 = qword_281003DE8;
  qword_281005800 = SetFocusBlurMapEnabled;
  qword_281005820 = *MEMORY[0x277CF5A70];
  qword_281005808 = 0;
  qword_281005810 = 0x300000000;
  dword_281005818 = 31;
  qword_281005828 = qword_281003DE8;
  qword_281005830 = SetAPSDataEnabled;
  qword_281005850 = *MEMORY[0x277CF5E28];
  qword_281005838 = 0;
  qword_281005840 = 0x300000080;
  dword_281005848 = 31;
  qword_281005858 = qword_281003E18;
  qword_281005860 = SetStreamingYCbCrMatrix;
  qword_281005868 = CopyStreamingYCbCrMatrix;
  qword_281005880 = *MEMORY[0x277CF5CE0];
  qword_281005870 = 0x300000000;
  dword_281005878 = 31;
  qword_281005888 = v18;
  qword_281005890 = SetForegroundSegmentationNetwork;
  qword_281005898 = CopyForegroundSegmentationNetwork;
  qword_2810058B0 = *MEMORY[0x277CF5CE8];
  qword_2810058A0 = 0x300000000;
  dword_2810058A8 = 31;
  qword_2810058B8 = v18;
  qword_2810058C0 = SetStreamingTuningProfile;
  qword_2810058C8 = CopyStreamingTuningProfile;
  qword_2810058E0 = *MEMORY[0x277CF59A8];
  qword_2810058D0 = 0x300000000;
  dword_2810058D8 = 15;
  qword_2810058E8 = v16;
  qword_2810058F0 = 0;
  qword_2810058F8 = CopyFPCCoefficients;
  qword_281005910 = *MEMORY[0x277CF5E10];
  qword_281005900 = 0x100000002;
  dword_281005908 = 15;
  qword_281005918 = qword_281003DE8;
  qword_281005920 = SetVisionDataSuspended;
  qword_281005940 = *MEMORY[0x277CF5980];
  qword_281005928 = 0;
  qword_281005930 = 0x300000000;
  dword_281005938 = 31;
  qword_281005948 = v16;
  qword_281005950 = SetEnabledFocusScores;
  qword_281005970 = *MEMORY[0x277CF5AB8];
  qword_281005958 = 0;
  qword_281005960 = 0x300000000;
  dword_281005968 = 31;
  qword_281005978 = v18;
  qword_281005980 = SetLTMCurve;
  qword_2810059A0 = *MEMORY[0x277CF5AE0];
  qword_281005988 = 0;
  qword_281005990 = 0x300000000;
  dword_281005998 = 31;
  qword_2810059A8 = v18;
  qword_2810059B0 = SetLSCStrength;
  qword_2810059B8 = CopyLSCStrength;
  qword_2810059D0 = *MEMORY[0x277CF5C38];
  qword_2810059C0 = 0x300000000;
  dword_2810059C8 = 31;
  qword_2810059D8 = qword_281003DE8;
  qword_2810059E0 = SetRawBufferCompandingEnabled;
  qword_281005A00 = *MEMORY[0x277CF5D40];
  qword_2810059E8 = 0;
  qword_2810059F0 = 0x300080000;
  dword_2810059F8 = 31;
  qword_281005A08 = v16;
  qword_281005A10 = SetTimeLapseCaptureConfiguration;
  qword_281005A18 = CopyTimeLapseCaptureConfiguration;
  qword_281005A30 = *MEMORY[0x277CF5A40];
  qword_281005A20 = 0x300000000;
  dword_281005A28 = 31;
  qword_281005A38 = qword_281003DE8;
  qword_281005A40 = SetHDRImageStatisticsEnabled;
  qword_281005A60 = *MEMORY[0x277CF58A0];
  qword_281005A48 = 0;
  qword_281005A50 = 0x300000000;
  dword_281005A58 = 31;
  qword_281005A68 = v16;
  qword_281005A70 = 0;
  qword_281005A78 = CopyBackWideCalibratedExtrinsics;
  qword_281005A90 = *MEMORY[0x277CF5A20];
  qword_281005A80 = 0x300000000;
  dword_281005A88 = 4;
  qword_281005A98 = v16;
  qword_281005AA8 = CopyBackWideCalibratedGDCCoefficients;
  qword_281005AC0 = *MEMORY[0x277CF5C08];
  qword_281005AA0 = 0;
  qword_281005AB0 = 0x300000000;
  dword_281005AB8 = 4;
  qword_281005AC8 = v16;
  qword_281005AD8 = CopyBackWideCalibratedOpticalCenter;
  dword_281005AE8 = 4;
  qword_281005AF0 = *MEMORY[0x277CF5A30];
  qword_281005AD0 = 0;
  qword_281005AE0 = 0x300000000;
  qword_281005AF8 = v18;
  qword_281005B08 = CopyAmbientViewingLevel;
  qword_281005B20 = *MEMORY[0x277CF5D68];
  qword_281005B00 = 0;
  qword_281005B10 = 0x300000000;
  dword_281005B18 = 15;
  qword_281005B28 = v16;
  qword_281005B38 = CopyTOFAutoFocusEstimatorResults;
  qword_281005B50 = *MEMORY[0x277CF5D60];
  qword_281005B30 = 0;
  qword_281005B40 = 0x300000002;
  dword_281005B48 = 15;
  qword_281005B60 = SetTOFAutoFocusEstimatorDataEnabled;
  qword_281005B80 = *MEMORY[0x277CF5840];
  qword_281005B58 = qword_281003DE8;
  qword_281005B68 = 0;
  qword_281005B70 = 0x300000002;
  dword_281005B78 = 15;
  qword_281005B88 = v16;
  qword_281005B98 = CopyAutoFocusDriverShortStats;
  qword_281005BB0 = *MEMORY[0x277CF5AF8];
  qword_281005B90 = 0;
  qword_281005BA0 = 0x300000002;
  dword_281005BA8 = 15;
  qword_281005BB8 = qword_281003DE8;
  qword_281005BC0 = SetLocalHistogramsEnabled;
  qword_281005BC8 = CopyLocalHistogramsEnabled;
  qword_281005BE0 = *MEMORY[0x277CF5940];
  qword_281005BD0 = 0x300000000;
  dword_281005BD8 = 31;
  qword_281005BF0 = SetLocalHistogramsOnStreamingOutputs;
  qword_281005C10 = *MEMORY[0x277CF5AF0];
  qword_281005BE8 = qword_281003DE8;
  qword_281005BF8 = 0;
  qword_281005C00 = 0x300000000;
  dword_281005C08 = 31;
  qword_281005C20 = SetLocalHistogramsClippingDataEnabled;
  qword_281005C40 = *MEMORY[0x277CF5938];
  qword_281005C18 = qword_281003DE8;
  qword_281005C28 = 0;
  qword_281005C30 = 0x300000000;
  dword_281005C38 = 31;
  qword_281005C50 = SetLocalHistogramsClippingDataOnStreamingOutputs;
  qword_281005C70 = *MEMORY[0x277CF5928];
  qword_281005C48 = qword_281003DE8;
  qword_281005C58 = 0;
  qword_281005C60 = 0x300000000;
  dword_281005C68 = 31;
  qword_281005C80 = SetLTMLookUpTableMetadataOnStreamingOutputs;
  qword_281005CA0 = *MEMORY[0x277CF5AC8];
  qword_281005C78 = qword_281003DE8;
  qword_281005C88 = 0;
  qword_281005C90 = 0x300000000;
  dword_281005C98 = 31;
  qword_281005CB0 = SetLTMThumbnailMetadataEnabled;
  qword_281005CD0 = *MEMORY[0x277CF5930];
  qword_281005CA8 = qword_281003DE8;
  qword_281005CB8 = 0;
  qword_281005CC0 = 0x300000000;
  dword_281005CC8 = 31;
  qword_281005CE0 = SetLTMThumbnailMetadataOnStreamingOutputs;
  qword_281005D00 = @"ReplaySIFDMAMode";
  qword_281005CD8 = qword_281003DE8;
  qword_281005CE8 = 0;
  qword_281005CF0 = 0x300000000;
  dword_281005CF8 = 31;
  qword_281005D10 = SetReplaySIFDMA;
  qword_281005D30 = @"TorchColor";
  qword_281005D08 = qword_281003DE8;
  qword_281005D18 = 0;
  qword_281005D20 = 0x300000000;
  dword_281005D28 = 31;
  qword_281005D40 = SetTorchColor;
  qword_281005D60 = @"OISPosition";
  qword_281005D38 = v16;
  qword_281005D48 = 0;
  qword_281005D50 = 1;
  dword_281005D58 = 31;
  qword_281005D68 = v16;
  qword_281005D70 = SetOISPosition;
  qword_281005D78 = CopyOISPosition;
  qword_281005D90 = @"OISActuator";
  qword_281005D80 = 0x300000004;
  dword_281005D88 = 31;
  qword_281005DA0 = SetOISActuator;
  qword_281005DC0 = @"OISTemperature";
  qword_281005D98 = v16;
  qword_281005DA8 = 0;
  qword_281005DB0 = 0x300000004;
  dword_281005DB8 = 31;
  qword_281005DC8 = v18;
  qword_281005DD8 = CopyOISTemperature;
  qword_281005DF0 = @"AFTestScriptLoad";
  qword_281005DD0 = 0;
  qword_281005DE0 = 0x300000004;
  dword_281005DE8 = 31;
  qword_281005E00 = SetAFTestScriptLoad;
  qword_281005E20 = @"SensorSidebandEnable";
  qword_281005DF8 = v16;
  qword_281005E08 = 0;
  qword_281005E10 = 0x300000004;
  dword_281005E18 = 63;
  qword_281005E30 = SetSensorSidebandEnabled;
  qword_281005E50 = @"ReloadNVM";
  qword_281005E28 = qword_281003DE8;
  qword_281005E38 = 0;
  qword_281005E40 = 0x300000000;
  dword_281005E48 = 31;
  qword_281005E60 = SetReloadNVM;
  qword_281005E80 = @"ChromaNoiseReductionLevel";
  qword_281005E58 = qword_281003D58;
  qword_281005E68 = 0;
  qword_281005E70 = 0x300000000;
  dword_281005E78 = 31;
  qword_281005E88 = v18;
  qword_281005E90 = SetChromaNoiseReductionLevel;
  qword_281005E98 = CopyChromaNoiseReductionLevel;
  qword_281005EB0 = @"ISPProcessingConfig";
  qword_281005EA0 = 0x300000000;
  dword_281005EA8 = 31;
  qword_281005EC0 = SetISPProcessingConfig;
  qword_281005EE0 = @"NoiseReductionLevel";
  qword_281005EB8 = v18;
  qword_281005EC8 = 0;
  qword_281005ED0 = 0x300000000;
  dword_281005ED8 = 31;
  qword_281005EE8 = v18;
  qword_281005EF0 = SetNoiseReductionLevel;
  qword_281005EF8 = CopyNoiseReductionLevel;
  qword_281005F10 = *MEMORY[0x277CF5A90];
  qword_281005F00 = 0x300000000;
  dword_281005F08 = 31;
  qword_281005F20 = SetInfraredLightSourceConfiguration;
  qword_281005F40 = @"IRProjectorParams";
  qword_281005F18 = v16;
  qword_281005F28 = 0;
  qword_281005F30 = 0x300000040;
  dword_281005F38 = 31;
  qword_281005F50 = SetIRProjectorParams;
  qword_281005F70 = @"GenericProjectorType";
  qword_281005F48 = v16;
  qword_281005F58 = 0;
  qword_281005F60 = 0x300000040;
  dword_281005F68 = 63;
  qword_281005F80 = SetGenericProjectorType;
  qword_281005FA0 = @"ProjectorValid";
  qword_281005F78 = v16;
  qword_281005F88 = 0;
  qword_281005F90 = 0x300000040;
  dword_281005F98 = 31;
  qword_281005FA8 = qword_281003DE8;
  qword_281005FB8 = CopyProjectorValid;
  qword_281005FD0 = @"ValidateCompliance";
  qword_281005FB0 = 0;
  qword_281005FC0 = 0x300000040;
  dword_281005FC8 = 63;
  qword_281005FD8 = qword_281003DE8;
  qword_281005FE8 = CopyValidateCompliance;
  qword_281006000 = @"ValidateComplianceWithDetails";
  qword_281005FE0 = 0;
  qword_281005FF0 = 0x300000040;
  dword_281005FF8 = 63;
  qword_281006008 = v18;
  qword_281006018 = CopyValidateComplianceWithDetails;
  qword_281006030 = @"ProjectorFaultStatus";
  qword_281006010 = 0;
  qword_281006020 = 0x300000040;
  dword_281006028 = 63;
  qword_281006038 = v18;
  qword_281006048 = CopyProjectorFaultStatus;
  qword_281006060 = @"ProjectorRosalineFaultStatus";
  qword_281006040 = 0;
  qword_281006050 = 0x300000040;
  dword_281006058 = 31;
  qword_281006068 = v18;
  qword_281006078 = CopyProjectorRosalineFaultStatus;
  qword_281006090 = @"DynamicVoltageEnable";
  qword_281006070 = 0;
  qword_281006080 = 0x300000040;
  dword_281006088 = 31;
  qword_2810060A0 = SetDynamicVoltageEnable;
  qword_2810060C0 = @"ProjectorRikerFaultStatus";
  qword_281006098 = qword_281003DE8;
  qword_2810060A8 = 0;
  qword_2810060B0 = 0x300000000;
  dword_2810060B8 = 31;
  qword_2810060C8 = v18;
  qword_2810060D0 = 0;
  qword_2810060D8 = CopyProjectorRikerFaultStatus;
  qword_2810060F0 = @"ProjectorQuarkFaultStatus";
  qword_2810060E0 = 0x300002000;
  dword_2810060E8 = 32;
  qword_2810060F8 = v16;
  qword_281006108 = CopyProjectorQuarkFaultStatus;
  qword_281006120 = @"ProjectorWillFaultStatus";
  qword_281006100 = 0;
  qword_281006110 = 0x300002000;
  dword_281006118 = 32;
  qword_281006128 = v18;
  qword_281006138 = CopyProjectorWillFaultStatus;
  qword_281006150 = @"RikerResistance";
  qword_281006130 = 0;
  qword_281006140 = 0x300002000;
  dword_281006148 = 32;
  qword_281006158 = v18;
  qword_281006160 = 0;
  qword_281006168 = CopyRikerResistance;
  qword_281006180 = @"RikerState";
  qword_281006170 = 0x100002000;
  dword_281006178 = 32;
  qword_281006188 = v18;
  qword_281006198 = CopyRikerState;
  qword_2810061B0 = @"ProjectorRikerStatus";
  qword_281006190 = 0;
  qword_2810061A0 = 0x100002000;
  dword_2810061A8 = 32;
  qword_2810061B8 = v18;
  qword_2810061C8 = CopyProjectorRikerStatus;
  qword_2810061E0 = @"BaneResistance";
  qword_2810061C0 = 0;
  qword_2810061D0 = 0x300002000;
  dword_2810061D8 = 32;
  qword_2810061E8 = v18;
  qword_2810061F8 = CopyBaneResistance;
  qword_281006210 = @"BaneState";
  qword_2810061F0 = 0;
  qword_281006200 = 0x300000040;
  dword_281006208 = 31;
  qword_281006218 = v18;
  qword_281006228 = CopyBaneState;
  qword_281006240 = @"ProjectorMamaBearStatus";
  qword_281006220 = 0;
  qword_281006230 = 0x300000040;
  dword_281006238 = 31;
  qword_281006248 = v18;
  qword_281006258 = CopyProjectorMamaBearStatus;
  qword_281006270 = @"ProjectorRigelPulseCount";
  qword_281006250 = 0;
  qword_281006260 = 0x300000040;
  dword_281006268 = 31;
  qword_281006278 = v18;
  qword_281006288 = CopyProjectorRigelPulseCount;
  qword_2810062A0 = @"RigelSerialNumber";
  qword_281006280 = 0;
  qword_281006290 = 0x300000040;
  dword_281006298 = 31;
  qword_2810062A8 = qword_281003E18;
  qword_2810062B0 = 0;
  qword_2810062B8 = CopyProjectorRigelSerialNumber;
  qword_2810062D0 = @"GuadLastResistance";
  qword_2810062C0 = 0x100000040;
  dword_2810062C8 = 31;
  qword_2810062D8 = v18;
  qword_2810062E8 = CopyGuadaloupLastResistance;
  qword_281006300 = @"GuadRecordRegisters";
  qword_2810062E0 = 0;
  qword_2810062F0 = 0x100000040;
  dword_2810062F8 = 31;
  qword_281006308 = v18;
  qword_281006318 = CopyGuadaloupRecordRegisters;
  qword_281006330 = @"RigelFaultInterruptMask";
  qword_281006310 = 0;
  qword_281006320 = 0x100000040;
  dword_281006328 = 31;
  qword_281006340 = SetRigelFaultInterruptMask;
  qword_281006360 = @"CollapseMBSupplyToForceOpenCircuitFault";
  qword_281006338 = qword_281003DE8;
  qword_281006348 = 0;
  qword_281006350 = 0x300000040;
  dword_281006358 = 31;
  qword_281006370 = ForceOpenCircuitFault;
  qword_281006390 = @"YogiFaultCSpecialFunctions";
  qword_281006368 = qword_281003DE8;
  qword_281006378 = 0;
  qword_281006380 = 0x300000040;
  dword_281006388 = 31;
  qword_2810063A0 = SetYogiFaultCSpecialFunctions;
  qword_2810063C0 = @"ProjectorSpecCalibrationValue";
  qword_281006398 = qword_281003DE8;
  qword_2810063A8 = 0;
  qword_2810063B0 = 0x300000040;
  dword_2810063B8 = 31;
  qword_2810063C8 = v18;
  qword_2810063D0 = SetRosalineCalCurrent;
  qword_2810063D8 = CopyProjectorSpecCalibrationValue;
  qword_2810063F0 = @"ProjectorSpecCalibrationPw";
  qword_2810063E0 = 0x300000040;
  dword_2810063E8 = 31;
  qword_2810063F8 = v18;
  qword_281006400 = SetRosalineCalPulseWidth;
  qword_281006408 = CopyProjectorSpecCalibrationPw;
  qword_281006420 = @"ProjectorVersion";
  qword_281006410 = 0x300000040;
  dword_281006418 = 31;
  qword_281006428 = v18;
  qword_281006438 = CopyProjectorVersion;
  qword_281006450 = @"ProjectorHWVersion";
  qword_281006430 = 0;
  qword_281006440 = 0x300000040;
  dword_281006448 = 31;
  qword_281006458 = v18;
  qword_281006468 = CopyProjectorHWVersion;
  qword_281006480 = @"ProjectorTokenVersion";
  qword_281006460 = 0;
  qword_281006470 = 0x300000040;
  dword_281006478 = 31;
  qword_281006488 = v18;
  qword_281006498 = CopyProjectorTokenVersion;
  qword_2810064B0 = @"PCEPreset";
  qword_281006490 = 0;
  qword_2810064A0 = 0x300000040;
  dword_2810064A8 = 63;
  qword_2810064C0 = SetPDEPreset;
  qword_2810064E0 = @"PCEOutputFormat";
  qword_2810064B8 = v18;
  qword_2810064C8 = 0;
  qword_2810064D0 = 0x300000040;
  dword_2810064D8 = 31;
  qword_2810064E8 = v18;
  qword_2810064F0 = SetPCEOutputFormat;
  qword_281006510 = @"FusionMode";
  qword_2810064F8 = 0;
  qword_281006500 = 0x200000040;
  dword_281006508 = 31;
  qword_281006520 = SetFusionMode;
  qword_281006540 = @"EnableHwGdr";
  qword_281006518 = v18;
  qword_281006528 = 0;
  qword_281006530 = 0x200000040;
  dword_281006538 = 31;
  qword_281006550 = SetHwGdrMode;
  *&streamProperties[1347] = 0u;
  qword_281006570 = @"EnableCinVid";
  qword_281006548 = v21;
  dword_281006568 = 31;
  qword_281006578 = v21;
  qword_281006580 = SetCinVidMode;
  *&streamProperties[1353] = 0u;
  qword_2810065A0 = *MEMORY[0x277CF5950];
  dword_281006598 = 31;
  qword_2810065A8 = v16;
  qword_2810065B0 = SetDepthEngineConfiguration;
  qword_2810065D0 = *MEMORY[0x277CF5D08];
  qword_2810065B8 = 0;
  qword_2810065C0 = 0x300000400;
  dword_2810065C8 = 31;
  qword_2810065D8 = v16;
  qword_2810065E0 = 0;
  qword_2810065E8 = CopySupportedDepthPerspectivePortTypes;
  qword_281006600 = *MEMORY[0x277CF5960];
  qword_2810065F0 = 0x300000000;
  dword_2810065F8 = 31;
  qword_281006608 = v16;
  qword_281006610 = 0;
  qword_281006618 = CopySupportedOutputConfigurations;
  qword_281006630 = *MEMORY[0x277CF5958];
  qword_281006620 = 0x300000400;
  dword_281006628 = 31;
  qword_281006638 = v16;
  qword_281006640 = 0;
  qword_281006648 = CopyOutputConfigurations;
  qword_281006660 = @"ValidateCalibration";
  qword_281006650 = 0x300000400;
  dword_281006658 = 31;
  qword_281006668 = v21;
  qword_281006670 = 0;
  qword_281006678 = CopyValidateCalibration;
  qword_281006690 = @"EnableFIDMetadata";
  qword_281006680 = 0x300000040;
  dword_281006688 = 63;
  qword_281006698 = v21;
  qword_2810066A0 = SetEnableFIDMetadata;
  qword_2810066C0 = @"EnableFIDDebugMetadata";
  qword_2810066A8 = 0;
  qword_2810066B0 = 0x300000040;
  dword_2810066B8 = 31;
  qword_2810066C8 = v21;
  qword_2810066D0 = SetEnableFIDDebugMetadata;
  qword_2810066F0 = @"FIDEnabled";
  qword_2810066D8 = 0;
  qword_2810066E0 = 0x300000040;
  dword_2810066E8 = 31;
  qword_2810066F8 = v21;
  qword_281006700 = SetEnableFID;
  qword_281006720 = @"AEMode";
  qword_281006708 = 0;
  qword_281006710 = 0x300000040;
  dword_281006718 = 31;
  qword_281006728 = v18;
  qword_281006730 = SetAEMode;
  qword_281006750 = @"AETarget";
  qword_281006738 = 0;
  qword_281006740 = 0x300000040;
  dword_281006748 = 31;
  qword_281006758 = v18;
  qword_281006760 = SetAETarget;
  qword_281006768 = CopyAETarget;
  qword_281006780 = @"FIDState";
  qword_281006770 = 0x300000040;
  dword_281006778 = 31;
  qword_281006788 = v18;
  qword_281006790 = SetFIDState;
  qword_2810067B0 = @"EnableIRFramesToPDE";
  qword_281006798 = 0;
  qword_2810067A0 = 0x300000040;
  dword_2810067A8 = 31;
  qword_2810067B8 = v18;
  qword_2810067C0 = EnableIRFramesToPDE;
  qword_2810067E0 = @"GMCDebug";
  qword_2810067C8 = 0;
  qword_2810067D0 = 0x300000040;
  dword_2810067D8 = 31;
  qword_2810067E8 = v18;
  qword_2810067F0 = SetGMCDebug;
  qword_281006810 = @"ColorGMCDebug";
  qword_2810067F8 = 0;
  qword_281006800 = 0x300000040;
  dword_281006808 = 31;
  qword_281006818 = v18;
  qword_281006820 = SetColorGMCDebug;
  qword_281006840 = @"SIFROverrideMode";
  qword_281006828 = 0;
  qword_281006830 = 0x300000040;
  dword_281006838 = 31;
  qword_281006848 = v18;
  qword_281006850 = SetSIFROverrideMode;
  qword_281006870 = @"SplitPDOverrideMode";
  qword_281006858 = 0;
  qword_281006860 = 0x300000020;
  dword_281006868 = 15;
  qword_281006878 = v18;
  qword_281006880 = SetSplitPDOverrideMode;
  qword_2810068A0 = @"APSActuator";
  qword_281006888 = 0;
  qword_281006890 = 0x300000000;
  dword_281006898 = 31;
  qword_2810068A8 = v18;
  qword_2810068B0 = SetAPSActuator;
  qword_2810068D0 = @"MasterSlaveAPSFocusEnable";
  qword_2810068B8 = 0;
  qword_2810068C0 = 0x300000080;
  dword_2810068C8 = 31;
  qword_2810068D8 = v21;
  qword_2810068E0 = SetMasterSlaveAPSFocus;
  qword_281006900 = @"MasterSlaveContrastFocusEnable";
  qword_2810068E8 = 0;
  qword_2810068F0 = 0x300000200;
  dword_2810068F8 = 31;
  qword_281006908 = v21;
  qword_281006910 = SetMasterSlaveContrastFocus;
  qword_281006930 = @"ForceSingleChannelCommands";
  qword_281006918 = 0;
  qword_281006920 = 0x300000200;
  dword_281006928 = 31;
  qword_281006938 = v21;
  qword_281006940 = SetForceSingleChannelCommands;
  qword_281006960 = @"TorchManualParameters";
  qword_281006948 = 0;
  qword_281006950 = 0x300000200;
  dword_281006958 = 31;
  qword_281006968 = v16;
  qword_281006970 = SetTorchManualParameters;
  qword_281006990 = @"LPDPFilterEnable";
  qword_281006978 = 0;
  qword_281006980 = 1;
  dword_281006988 = 31;
  qword_281006998 = v21;
  qword_2810069A0 = SetLPDPFilterEnable;
  qword_2810069C0 = @"HighSpeedOutputLevel";
  qword_2810069A8 = 0;
  qword_2810069B0 = 0x300000000;
  dword_2810069B8 = 31;
  qword_2810069C8 = v18;
  qword_2810069D0 = SetHighSpeedOutputLevel;
  qword_2810069F0 = @"SupportedLinkFrequencies";
  qword_2810069D8 = 0;
  qword_2810069E0 = 0x300000000;
  dword_2810069E8 = 63;
  qword_2810069F8 = v16;
  qword_281006A00 = 0;
  qword_281006A08 = CopySupportedLinkFrequencies;
  qword_281006A20 = @"LinkFrequencyIndex";
  qword_281006A10 = 0x300000000;
  dword_281006A18 = 63;
  qword_281006A28 = v18;
  qword_281006A30 = SetLinkFrequencyIndex;
  qword_281006A38 = CopyLinkFrequencyIndex;
  qword_281006A50 = @"TestPattern";
  qword_281006A40 = 0x300000000;
  dword_281006A48 = 63;
  qword_281006A58 = v22;
  qword_281006A60 = SetTestPattern;
  qword_281006A68 = CopySupportedTestPatterns;
  qword_281006A80 = @"APSDistance";
  qword_281006A70 = 0x300000000;
  dword_281006A78 = 31;
  qword_281006A88 = v18;
  qword_281006A90 = SetAPSDistance;
  qword_281006AB0 = @"APSPosition";
  qword_281006A98 = 0;
  qword_281006AA0 = 0x200000080;
  dword_281006AA8 = 63;
  qword_281006AB8 = v16;
  qword_281006AC0 = SetAPSPosition;
  qword_281006AC8 = CopyAPSPosition;
  qword_281006AE0 = @"APSSearchRange";
  qword_281006AD0 = 0x200000080;
  dword_281006AD8 = 63;
  qword_281006AE8 = v16;
  qword_281006AF0 = SetAPSSearchRange;
  qword_281006B10 = @"DynamicVoltage";
  qword_281006AF8 = 0;
  qword_281006B00 = 0x200000080;
  dword_281006B08 = 63;
  qword_281006B18 = v16;
  qword_281006B20 = SetDynamicVoltageLevel;
  qword_281006B40 = @"LPDPEqualization";
  qword_281006B28 = 0;
  qword_281006B30 = 0x200000000;
  dword_281006B38 = 63;
  qword_281006B48 = v16;
  qword_281006B50 = SetLPDPEqualization;
  qword_281006B70 = @"LPDPRC";
  qword_281006B58 = 0;
  qword_281006B60 = 0x200000000;
  dword_281006B68 = 31;
  qword_281006B78 = v16;
  qword_281006B80 = 0;
  qword_281006B88 = CopyLPDPRC;
  qword_281006BA0 = @"SensorNVM";
  qword_281006B90 = 0x300000000;
  dword_281006B98 = 31;
  qword_281006BA8 = v16;
  qword_281006BB0 = 0;
  qword_281006BB8 = CopySensorNVM;
  qword_281006BD0 = @"EnablePDEStreaming";
  qword_281006BE0 = SetPDEStreaming;
  qword_281006C00 = @"PCECalib";
  qword_281006BC0 = 0x300000000;
  dword_281006BC8 = 63;
  qword_281006BD8 = v18;
  qword_281006BE8 = 0;
  qword_281006BF0 = 0x300000040;
  dword_281006BF8 = 31;
  qword_281006C08 = v20;
  qword_281006C10 = SetPCECalibration;
  qword_281006C18 = CopyPCECalibration;
  qword_281006C30 = @"PCEShiftParams";
  qword_281006C20 = 0x300000040;
  dword_281006C28 = 31;
  qword_281006C38 = v20;
  qword_281006C40 = 0;
  qword_281006C48 = CopyPCEShiftParams;
  qword_281006C60 = @"PCEDepthConfig";
  qword_281006C50 = 0x100000040;
  dword_281006C58 = 31;
  qword_281006C68 = v20;
  qword_281006C70 = 0;
  qword_281006C78 = CopyPCEDepthConfig;
  qword_281006C90 = @"RawImageProcessStillFlowEnabled";
  qword_281006C80 = 0x100000040;
  dword_281006C88 = 31;
  qword_281006C98 = v21;
  qword_281006CA0 = SetRawImageProcessStillFlowEnabled;
  qword_281006CC0 = @"ProximityMonitoringEnabled";
  qword_281006CA8 = 0;
  qword_281006CB0 = 0x300000000;
  dword_281006CB8 = 31;
  qword_281006CC8 = v21;
  qword_281006CD0 = SetProximityMonitoringEnabled;
  qword_281006CF0 = @"PCERFCLockEnabled";
  qword_281006CD8 = 0;
  qword_281006CE0 = 0x300000040;
  dword_281006CE8 = 31;
  qword_281006CF8 = v21;
  qword_281006D00 = SetPCERFCLockEnabled;
  qword_281006D20 = @"PCERegsUpdateTweak";
  qword_281006D08 = 0;
  qword_281006D10 = 0x300000040;
  dword_281006D18 = 31;
  qword_281006D28 = v18;
  qword_281006D30 = SetPCERegsUpdateTweak;
  qword_281006D50 = *MEMORY[0x277CF5C40];
  qword_281006D38 = 0;
  qword_281006D40 = 0x300000040;
  dword_281006D48 = 31;
  qword_281006D58 = v21;
  qword_281006D60 = SetUseAuxRawPool;
  result = CopyUseAuxRawPool;
  qword_281006D80 = @"MamaBearCapacitance";
  qword_281006D68 = CopyUseAuxRawPool;
  qword_281006D70 = 0x300000000;
  dword_281006D78 = 31;
  qword_281006D88 = v18;
  qword_281006D90 = 0;
  qword_281006D98 = CopyMamaBearCapacitance;
  qword_281006DB0 = @"MamaBearState";
  qword_281006DA0 = 0x100000040;
  dword_281006DA8 = 31;
  qword_281006DB8 = v18;
  qword_281006DC0 = 0;
  qword_281006DC8 = CopyMamaBearState;
  qword_281006DE0 = @"UseAuxRawPool";
  qword_281006DF0 = SetUseAuxRawPool;
  qword_281006DF8 = CopyUseAuxRawPool;
  qword_281006E10 = @"ReplayEnable";
  qword_281006DD0 = 0x100000040;
  dword_281006DD8 = 31;
  qword_281006DE8 = v21;
  qword_281006E00 = 0x300000040;
  dword_281006E08 = 63;
  qword_281006E18 = v21;
  qword_281006E20 = SetReplayEnabled;
  qword_281006E28 = CopyReplayEnabled;
  qword_281006E40 = @"ReplayFrame";
  qword_281006E30 = 0x300000000;
  dword_281006E38 = 31;
  qword_281006E48 = v16;
  qword_281006E50 = SetReplayFrame;
  qword_281006E70 = @"ProjectorErrorProtectionEnabled";
  qword_281006E58 = 0;
  qword_281006E60 = 0x300000000;
  dword_281006E68 = 31;
  qword_281006E78 = v21;
  qword_281006E80 = SetProjectorErrorProtectionEnabled;
  qword_281006E88 = CopyProjectorErrorProtectionEnabled;
  qword_281006EA0 = @"GDCMetadataEnabled";
  qword_281006E90 = 0x300000040;
  dword_281006E98 = 31;
  qword_281006EA8 = v21;
  qword_281006EB0 = SetGDCMetadataEnabled;
  qword_281006ED0 = @"ManualControl";
  qword_281006EB8 = 0;
  qword_281006EC0 = 0x300000000;
  dword_281006EC8 = 31;
  qword_281006ED8 = v16;
  qword_281006EE0 = SetManualControl;
  qword_281006F00 = @"PackedRawAttachmentsEnabled";
  qword_281006EE8 = 0;
  qword_281006EF0 = 0x300000000;
  dword_281006EF8 = 31;
  qword_281006F08 = v21;
  qword_281006F10 = SetPackedRawAttachmentsEnabled;
  qword_281006F30 = *MEMORY[0x277CF5C18];
  qword_281006F40 = SetPackedRawAttachmentsEnabled;
  qword_281006F18 = CopyPackedRawAttachmentsEnabled;
  qword_281006F48 = CopyPackedRawAttachmentsEnabled;
  qword_281006F60 = @"ForceVideoRawBitDepth";
  qword_281006F20 = 0x300000000;
  dword_281006F28 = 31;
  qword_281006F38 = v21;
  qword_281006F50 = 0x300000000;
  dword_281006F58 = 31;
  qword_281006F68 = v18;
  qword_281006F70 = SetForceVideoRawBitDepth;
  qword_281006F90 = @"ImageCaptureWaitForAEEnabled";
  qword_281006F78 = 0;
  qword_281006F80 = 0x200000000;
  dword_281006F88 = 15;
  qword_281006F98 = v21;
  qword_281006FA0 = SetImageCaptureWaitForAEEnabled;
  qword_281006FC0 = *MEMORY[0x277CF5A58];
  qword_281006FA8 = 0;
  qword_281006FB0 = 0x300000000;
  dword_281006FB8 = 31;
  qword_281006FC8 = v21;
  qword_281006FD0 = SetHighlightRecoveryEnabled;
  qword_281006FF0 = *MEMORY[0x277CF5E08];
  qword_281006FD8 = 0;
  qword_281006FE0 = 0x300000020;
  dword_281006FE8 = 15;
  qword_281006FF8 = v18;
  qword_281007000 = SetVisionDataKeypointDetectionThreshold;
  qword_281007020 = *MEMORY[0x277CF5D88];
  qword_281007008 = 0;
  qword_281007010 = 0x300000000;
  dword_281007018 = 31;
  qword_281007028 = v20;
  qword_281007030 = SetTriggerVisionDataBurst;
  qword_281007050 = @"MultiplePearlCalibration";
  qword_281007038 = 0;
  qword_281007040 = 0x300000000;
  dword_281007048 = 31;
  qword_281007058 = v21;
  qword_281007060 = SetMultiplePearlCalibration;
  qword_281007080 = @"PearlCalibrationDebugInfo";
  qword_281007068 = 0;
  qword_281007070 = 0x300000040;
  dword_281007078 = 31;
  qword_281007088 = v16;
  qword_281007090 = 0;
  qword_281007098 = CopyPearlCalibrationDebugInfo;
  qword_2810070B0 = @"ProjectorOverheatLimit";
  qword_2810070A0 = 0x100000040;
  dword_2810070A8 = 31;
  qword_2810070B8 = v18;
  qword_2810070C0 = SetProjectorOverheatLimit;
  qword_2810070C8 = CopyProjectorOverheatLimit;
  qword_2810070E0 = @"ToFCapturingPresetIndex";
  qword_2810070D0 = 0x200000040;
  dword_2810070D8 = 31;
  qword_2810070E8 = v18;
  qword_2810070F0 = SetToFCapturingPresetIndex;
  qword_2810070F8 = CopyToFCapturingPresetIndex;
  qword_281007110 = @"JasperPreset";
  qword_281007100 = 0x300002000;
  dword_281007108 = 32;
  qword_281007118 = v22;
  qword_281007120 = SetJasperPreset;
  qword_281007128 = CopyJasperPreset;
  qword_281007140 = @"JasperProcessingMode";
  qword_281007130 = 0x300002000;
  dword_281007138 = 32;
  qword_281007148 = v18;
  qword_281007150 = SetJasperProcessingMode;
  qword_281007158 = CopyJasperProcessingMode;
  qword_281007170 = @"JasperRgbMode";
  qword_281007160 = 0x300002000;
  dword_281007168 = 32;
  qword_281007178 = v18;
  qword_281007180 = SetJasperRgbMode;
  qword_2810071A0 = @"JasperBuiltInSequence";
  qword_281007188 = 0;
  qword_281007190 = 0x200002000;
  dword_281007198 = 32;
  qword_2810071A8 = v16;
  qword_2810071B0 = SetJasperBuiltInSequence;
  qword_2810071D0 = @"JasperBurstSize";
  qword_2810071B8 = 0;
  qword_2810071C0 = 0x200002000;
  dword_2810071C8 = 32;
  qword_2810071D8 = v18;
  qword_2810071E0 = SetJasperBurstSize;
  qword_2810071E8 = CopyJasperBurstSize;
  qword_281007200 = @"JasperFrameModeList";
  qword_2810071F0 = 0x300002000;
  dword_2810071F8 = 32;
  qword_281007208 = v22;
  qword_281007210 = SetFrameModeDictionaryLocation;
  qword_281007230 = @"JapserCalibData";
  qword_281007218 = 0;
  qword_281007220 = 0x200002000;
  dword_281007228 = 32;
  qword_281007238 = v16;
  qword_281007240 = 0;
  qword_281007248 = CopyJasperCalibData;
  qword_281007260 = @"JasperFrameConfig";
  qword_281007250 = 0x100002000;
  dword_281007258 = 32;
  qword_281007268 = v16;
  qword_281007270 = SetJasperFrameConfig;
  qword_281007290 = @"JasperPreloadFrameConfig";
  qword_281007278 = 0;
  qword_281007280 = 0x200002000;
  dword_281007288 = 32;
  qword_281007298 = v16;
  qword_2810072A0 = SetJasperPreloadFrameConfig;
  qword_2810072C0 = @"JasperFrameOffset";
  qword_2810072A8 = 0;
  qword_2810072B0 = 0x200002000;
  dword_2810072B8 = 32;
  qword_2810072C8 = v16;
  qword_2810072D0 = SetJasperFrameOffset;
  qword_2810072F0 = @"JasperSequence";
  qword_2810072D8 = 0;
  qword_2810072E0 = 0x200002000;
  dword_2810072E8 = 32;
  qword_2810072F8 = v16;
  qword_281007300 = SetJasperSequence;
  qword_281007320 = @"JasperCalib";
  qword_281007308 = 0;
  qword_281007310 = 0x200002000;
  dword_281007318 = 32;
  qword_281007328 = v20;
  qword_281007330 = SetJasperCalibration;
  qword_281007338 = CopyJasperCalibration;
  qword_281007350 = @"JasperGmoDebugMode";
  qword_281007340 = 0x300002000;
  dword_281007348 = 32;
  qword_281007358 = v21;
  qword_281007360 = SetJasperGmoDebugMode;
  qword_281007380 = @"JasperGmoFlowBits";
  qword_281007368 = 0;
  qword_281007370 = 0x200002000;
  dword_281007378 = 32;
  qword_281007388 = v18;
  qword_281007390 = SetJasperGmoFlow;
  qword_2810073B0 = @"JasperLockAfFrequency";
  qword_281007398 = 0;
  qword_2810073A0 = 0x200002000;
  dword_2810073A8 = 32;
  qword_2810073B8 = v18;
  qword_2810073C0 = SetJasperLockAfFrequency;
  qword_2810073E0 = *MEMORY[0x277CF5D70];
  qword_2810073C8 = 0;
  qword_2810073D0 = 0x200002000;
  dword_2810073D8 = 32;
  qword_2810073E8 = v16;
  qword_2810073F0 = SetTimeOfFlightConfiguration;
  qword_2810073F8 = CopyTimeOfFlightConfiguration;
  qword_281007410 = *MEMORY[0x277CF5D18];
  qword_281007400 = 0x300002000;
  dword_281007408 = 32;
  qword_281007418 = v16;
  qword_281007420 = 0;
  qword_281007428 = CopySupportedTimeOfFlightProjectorModes;
  qword_281007440 = @"OverrideJasperWideExtrinsics";
  qword_281007430 = 0x100002000;
  dword_281007438 = 32;
  qword_281007448 = v16;
  qword_281007450 = SetJasperWideExtrinsics;
  qword_281007470 = @"RgbjConfiguration";
  qword_281007458 = 0;
  qword_281007460 = 0x200002000;
  dword_281007468 = 32;
  qword_281007478 = v16;
  qword_281007480 = SetRgbjConfiguration;
  qword_2810074A0 = @"RgbjReport";
  qword_281007488 = 0;
  qword_281007490 = 0x200002000;
  dword_281007498 = 32;
  qword_2810074A8 = v16;
  qword_2810074B0 = 0;
  qword_2810074B8 = CopyRgbjReport;
  qword_2810074D0 = @"RgbjForceSaveCalib";
  qword_2810074C0 = 0x200002000;
  dword_2810074C8 = 32;
  qword_2810074D8 = v20;
  qword_2810074E0 = RgbjForceSaveCalib;
  dword_2810074F8 = 32;
  qword_281007500 = @"ManualColorCalGain";
  qword_2810074E8 = 0;
  qword_2810074F0 = 0x200002000;
  qword_281007508 = v16;
  qword_281007510 = SetManualColorCalGain;
  qword_281007530 = *MEMORY[0x277CF6BC8];
  qword_281007518 = 0;
  qword_281007520 = 0x300000000;
  dword_281007528 = 31;
  qword_281007538 = v16;
  qword_281007540 = 0;
  qword_281007548 = CopyObjectsDetectionSupportedConfigurationKeys;
  qword_281007560 = *MEMORY[0x277CF5BF0];
  qword_281007550 = 0x308000000;
  dword_281007558 = 31;
  qword_281007568 = v16;
  qword_281007570 = SetObjectDetectionConfiguration;
  qword_281007590 = *MEMORY[0x277CF5BF8];
  qword_2810075A0 = SetFaceDetectionRectangleOfInterest;
  qword_2810075A8 = CopyFaceDetectionRectangleOfInterest;
  qword_2810075C0 = *MEMORY[0x277CF5AA8];
  qword_281007578 = 0;
  qword_281007580 = 0x300000000;
  dword_281007588 = 31;
  qword_281007598 = v16;
  qword_2810075B0 = 0x300000000;
  dword_2810075B8 = 31;
  qword_2810075C8 = v16;
  qword_2810075D0 = 0;
  qword_2810075D8 = CopyLSCGainGrid;
  qword_2810075F0 = *MEMORY[0x277CF5A38];
  qword_2810075E0 = 0x300000000;
  dword_2810075E8 = 31;
  qword_2810075F8 = v21;
  qword_281007600 = SetHDRFusionEnable;
  qword_281007608 = CopyHDRFusionEnable;
  qword_281007620 = *MEMORY[0x277CF58B8];
  qword_281007610 = 0x300000020;
  dword_281007618 = 15;
  qword_281007628 = v21;
  qword_281007630 = SetCAREnable;
  qword_281007638 = CopyCAREnable;
  qword_281007650 = *MEMORY[0x277CF5B98];
  qword_281007640 = 0x300040000;
  dword_281007648 = 15;
  qword_281007658 = v18;
  qword_281007660 = SetStreamMemoryPoolID;
  qword_281007680 = *MEMORY[0x277CF5BE8];
  qword_281007668 = 0;
  qword_281007670 = 0x300000000;
  dword_281007678 = 63;
  qword_281007688 = v18;
  qword_281007690 = SetSwitchingFormatIndex;
  qword_281007698 = CopySwitchingFormatIndex;
  qword_2810076B0 = *MEMORY[0x277CF5C80];
  qword_2810076A0 = 0x300000000;
  dword_2810076A8 = 31;
  qword_2810076B8 = v16;
  qword_2810076C0 = 0;
  qword_2810076C8 = CopySensorDimensions;
  qword_2810076E0 = *MEMORY[0x277CF5808];
  qword_2810076D0 = 0x100000000;
  dword_2810076D8 = 31;
  qword_2810076E8 = v16;
  qword_2810076F0 = SetActiveNondisruptiveSwitchingFormats;
  qword_281007710 = *MEMORY[0x277CF65F0];
  qword_2810076F8 = 0;
  qword_281007700 = 0x300000000;
  dword_281007708 = 31;
  qword_281007718 = v16;
  qword_281007720 = 0;
  qword_281007728 = CopyVisionDataConfigurationSupportedKeys;
  qword_281007740 = *MEMORY[0x277CF5948];
  qword_281007730 = 0x100000000;
  dword_281007738 = 31;
  qword_281007748 = v21;
  qword_281007750 = SetLumaHistogramsOnStreamingOutputs;
  qword_281007770 = *MEMORY[0x277CF5AB0];
  qword_281007758 = 0;
  qword_281007760 = 0x300000000;
  dword_281007768 = 31;
  qword_281007778 = v16;
  qword_281007780 = 0;
  qword_281007788 = CopyLSCQuadraCICGainGrid;
  qword_2810077A0 = *MEMORY[0x277CF5A68];
  qword_281007790 = 0x101000000;
  dword_281007798 = 31;
  qword_2810077A8 = v16;
  qword_2810077B0 = 0;
  qword_2810077B8 = CopyLSCQuadraGICGainGrid;
  qword_2810077D0 = *MEMORY[0x277CF5A00];
  qword_2810077C0 = 0x101008000;
  dword_2810077C8 = 31;
  qword_2810077D8 = v16;
  qword_2810077E0 = 0;
  qword_2810077E8 = CopyFocusPixelMap;
  qword_281007800 = *MEMORY[0x277CF58A8];
  qword_2810077F0 = 0x100000000;
  dword_2810077F8 = 15;
  qword_281007808 = v16;
  qword_281007810 = 0;
  qword_281007818 = CopyNarrowerCalibratedExtrinsics;
  qword_281007830 = *MEMORY[0x277CF5A28];
  qword_281007820 = 0x300400000;
  dword_281007828 = 31;
  qword_281007838 = v16;
  qword_281007840 = 0;
  qword_281007848 = CopyNarrowerCalibratedGDCCoefficients;
  qword_281007860 = *MEMORY[0x277CF5C10];
  qword_281007850 = 0x300400000;
  dword_281007858 = 31;
  qword_281007868 = v16;
  qword_281007870 = 0;
  qword_281007878 = CopyNarrowerCalibratedOpticalCenter;
  qword_281007890 = *MEMORY[0x277CF5888];
  qword_281007880 = 0x300400000;
  dword_281007888 = 31;
  qword_281007898 = v18;
  qword_2810078A0 = 0;
  qword_2810078A8 = CopyNarrowerFOVCalibratedValidRadius;
  qword_2810078C0 = *MEMORY[0x277CF5880];
  qword_2810078B0 = 0x100400000;
  dword_2810078B8 = 31;
  qword_2810078C8 = v18;
  qword_2810078D0 = 0;
  qword_2810078D8 = CopyFullFOVCalibratedValidRadius;
  qword_2810078F0 = *MEMORY[0x277CF5898];
  qword_2810078E0 = 0x100200000;
  dword_2810078E8 = 31;
  qword_2810078F8 = v16;
  qword_281007900 = 0;
  qword_281007908 = CopyCameraViewMatrix;
  qword_281007920 = *MEMORY[0x277CF57F8];
  qword_281007910 = 0;
  dword_281007918 = 63;
  qword_281007928 = v16;
  qword_281007930 = 0;
  qword_281007938 = CopyAbsoluteColorCalibrations;
  qword_281007950 = *MEMORY[0x277CF5CF8];
  qword_281007940 = 0x100000000;
  dword_281007948 = 15;
  qword_281007958 = v21;
  qword_281007960 = SetSupplementalControlForAutoFocusAssistEnabled;
  qword_281007968 = CopySupplementalControlForAutoFocusAssistEnabled;
  dword_281007978 = 16;
  qword_281007980 = *MEMORY[0x277CF59D0];
  qword_281007970 = 0x300100000;
  qword_281007988 = v16;
  qword_281007990 = 0;
  qword_281007998 = CopyFlashCalibrationData;
  dword_2810079A8 = 7;
  qword_2810079B0 = *MEMORY[0x277CF58D0];
  qword_2810079A0 = 0x300000001;
  qword_2810079B8 = v18;
  qword_2810079C0 = SetColorPostProcessingMode;
  qword_2810079E0 = *MEMORY[0x277CF5B30];
  qword_2810079C8 = 0;
  qword_2810079D0 = 0x300000000;
  dword_2810079D8 = 31;
  qword_2810079E8 = v16;
  qword_2810079F0 = SetLumaHistogramROI;
  qword_281007A10 = *MEMORY[0x277CF5918];
  qword_2810079F8 = 0;
  qword_281007A00 = 0x300000000;
  dword_281007A08 = 31;
  qword_281007A18 = v16;
  qword_281007A20 = 0;
  qword_281007A28 = CopyDefectivePixelTable;
  qword_281007A40 = *MEMORY[0x277CF5CA0];
  qword_281007A30 = 0x300000000;
  dword_281007A38 = 31;
  qword_281007A48 = v18;
  qword_281007A50 = SetSensorRawOutputRetainedBufferCount;
  qword_281007A70 = *MEMORY[0x277CF5C90];
  qword_281007A58 = 0;
  qword_281007A60 = 0x300000000;
  dword_281007A68 = 31;
  qword_281007A78 = v16;
  qword_281007A80 = 0;
  qword_281007A88 = CopyUnsynchronizedSensorRawOutputBufferPoolRequirements;
  qword_281007AA0 = *MEMORY[0x277CF5C88];
  qword_281007A90 = 0x300000000;
  dword_281007A98 = 31;
  qword_281007AA8 = v16;
  qword_281007AB0 = SetUnsynchronizedSensorRawOutputBufferPool;
  qword_281007AD0 = @"StrobeYetiStatus";
  qword_281007AB8 = 0;
  qword_281007AC0 = 0x300000000;
  dword_281007AC8 = 31;
  qword_281007AD8 = v18;
  qword_281007AE0 = 0;
  qword_281007AE8 = CopyStrobeYetiStatus;
  qword_281007B00 = *MEMORY[0x277CF5990];
  qword_281007AF0 = 0x300000001;
  dword_281007AF8 = 1;
  qword_281007B08 = v21;
  qword_281007B10 = SetExclusivelyForSecureProcessing;
  qword_281007B18 = CopyExclusivelyForSecureProcessing;
  qword_281007B30 = @"TorchSegmentParameters";
  qword_281007B20 = 0x302000000;
  dword_281007B28 = 24;
  qword_281007B38 = v16;
  LODWORD(streamProperties[2051]) = 31;
  qword_281007B40 = SetTorchSegmentParameters;
  qword_281007B60 = @"FocusBehavior";
  qword_281007B48 = 0;
  qword_281007B50 = 1;
  qword_281007B68 = v18;
  LODWORD(streamProperties[2057]) = 31;
  qword_281007B70 = SetFocusBehavior;
  qword_281007B90 = @"ExclaveTestSuite";
  qword_281007B78 = 0;
  qword_281007B80 = 0x200000000;
  qword_281007B98 = v16;
  LODWORD(streamProperties[2063]) = 24;
  qword_281007BA0 = SetExclaveTestSuite;
  qword_281007BC0 = *MEMORY[0x277CF5B48];
  qword_281007BA8 = 0;
  qword_281007BB0 = 0x302000000;
  qword_281007BC8 = v18;
  qword_281007BD0 = SetMainToSIFRFrameRateRatio;
  qword_281007BD8 = CopyMainToSIFRFrameRateRatio;
  LODWORD(streamProperties[2069]) = 15;
  qword_281007BF0 = *MEMORY[0x277CF5920];
  qword_281007BE0 = 0x300000020;
  qword_281007BF8 = v16;
  qword_281007C00 = 0;
  qword_281007C08 = CopyDefectivePixels;
  LODWORD(streamProperties[2075]) = 31;
  qword_281007C20 = @"AWBTemporalStabilizationEnabled";
  qword_281007C10 = 0x300000000;
  qword_281007C28 = v21;
  qword_281007C30 = SetAWBTemporalStabilizationEnabled;
  LODWORD(streamProperties[2081]) = 15;
  qword_281007C50 = *MEMORY[0x277CF5CB8];
  qword_281007C38 = 0;
  qword_281007C40 = 0x300000000;
  qword_281007C58 = v16;
  qword_281007C60 = 0;
  LODWORD(streamProperties[2087]) = 1;
  qword_281007C68 = CopyDCNUCVPixelBuffer;
  qword_281007C80 = @"TimewarpConfiguration_Private";
  qword_281007C70 = 0x300000000;
  qword_281007C88 = v16;
  qword_281007C90 = SetTimewarpConfiguration;
  LODWORD(streamProperties[2093]) = 15;
  qword_281007CB0 = @"TimewarpRecordingInProgress_Private";
  qword_281007C98 = 0;
  qword_281007CA0 = 0x200000000;
  qword_281007CB8 = v21;
  qword_281007CC0 = SetTimewarpRecordingInProgress;
  LODWORD(streamProperties[2099]) = 15;
  qword_281007CE0 = @"TimewarpForceFPS_Private";
  qword_281007CC8 = 0;
  qword_281007CD0 = 0x200000000;
  qword_281007CE8 = v18;
  qword_281007CF0 = SetTimewarpForceFPS;
  LODWORD(streamProperties[2105]) = 15;
  qword_281007D10 = @"ExternalSyncModeEnabled";
  qword_281007CF8 = 0;
  qword_281007D00 = 0x200000000;
  qword_281007D18 = v20;
  qword_281007D20 = SetExternalSyncModeEnabled;
  LODWORD(streamProperties[2111]) = 31;
  qword_281007D40 = *MEMORY[0x277CF5B40];
  qword_281007D28 = 0;
  qword_281007D30 = 0x200000000;
  qword_281007D48 = v16;
  LODWORD(streamProperties[2117]) = 15;
  qword_281007D50 = SetMLVNRConfiguration;
  qword_281007D70 = *MEMORY[0x277CF5D10];
  qword_281007D58 = 0;
  qword_281007D60 = 0x300000000;
  qword_281007D78 = v16;
  qword_281007D80 = 0;
  LODWORD(streamProperties[2123]) = 63;
  qword_281007D88 = CopySupportedSphereModes;
  qword_281007DA0 = *MEMORY[0x277CF5A10];
  qword_281007D90 = 0x300000004;
  qword_281007DA8 = v18;
  qword_281007DB0 = SetPrimaryFrameSkip;
  LODWORD(streamProperties[2129]) = 15;
  qword_281007DD0 = *MEMORY[0x277CF5800];
  qword_281007DB8 = 0;
  qword_281007DC0 = 0x300008000;
  qword_281007DD8 = v16;
  qword_281007DE0 = SetActiveNondisruptiveStreamingFormats;
  LODWORD(streamProperties[2135]) = 31;
  qword_281007E00 = *MEMORY[0x277CF5810];
  qword_281007DE8 = 0;
  qword_281007DF0 = 0x200008000;
  qword_281007E08 = v16;
  qword_281007E10 = 0;
  qword_281007E18 = CopyStreamSensorRawOutputBufferPoolRequirements;
  LODWORD(streamProperties[2141]) = 31;
  qword_281007E30 = *MEMORY[0x277CF5C98];
  qword_281007E20 = 0x100008000;
  qword_281007E38 = v16;
  qword_281007E40 = SetStreamSensorRawOutputBufferPools;
  LODWORD(streamProperties[2147]) = 31;
  qword_281007E60 = *MEMORY[0x277CF5CA8];
  qword_281007E48 = 0;
  qword_281007E50 = 0x200008000;
  qword_281007E68 = v16;
  LODWORD(streamProperties[2153]) = 31;
  qword_281007E70 = SetStreamSensorRawOutputRetainedBufferCounts;
  qword_281007E90 = *MEMORY[0x277CF5878];
  qword_281007E78 = 0;
  qword_281007E80 = 0x200008000;
  qword_281007E98 = v18;
  qword_281007EA0 = 0;
  LODWORD(streamProperties[2159]) = 15;
  qword_281007EA8 = CopyCalibratedRotationAngle;
  qword_281007EC0 = *MEMORY[0x277CF5D78];
  qword_281007EB0 = 0x300000000;
  qword_281007EC8 = v18;
  qword_281007ED0 = SetTorchBeamWidth;
  LODWORD(streamProperties[2165]) = 31;
  qword_281007EF0 = *MEMORY[0x277CF5BD0];
  qword_281007ED8 = 0;
  qword_281007EE0 = 257;
  qword_281007EF8 = v21;
  qword_281007F00 = SetMultiIlluminantWhiteBalanceEnabled;
  LODWORD(streamProperties[2171]) = 15;
  qword_281007F08 = CopyMultiIlluminantWhiteBalanceEnabled;
  qword_281007F20 = *MEMORY[0x277CF5B88];
  qword_281007F10 = 0x300008000;
  qword_281007F28 = v18;
  LODWORD(streamProperties[2177]) = 31;
  qword_281007F30 = SetMaximumFrameRateForBufferAllocation;
  qword_281007F50 = @"SIFRControlMode_Private";
  qword_281007F38 = 0;
  qword_281007F40 = 0x300008000;
  qword_281007F58 = v18;
  LODWORD(streamProperties[2183]) = 15;
  qword_281007F60 = SetSIFRControlMode;
  qword_281007F80 = *MEMORY[0x277CF5890];
  qword_281007F68 = 0;
  qword_281007F70 = 0x300000020;
  qword_281007F88 = v18;
  LODWORD(streamProperties[2189]) = 15;
  qword_281007F90 = SetCameraControlsCacheExpiryDuration;
  qword_281007FB0 = @"DCSDataFileLoad_Private";
  qword_281007F98 = 0;
  qword_281007FA0 = 0x300008000;
  qword_281007FB8 = v16;
  qword_281007FC0 = SetDCSDataFileLoad;
  LODWORD(streamProperties[2195]) = 63;
  qword_281007FE0 = @"DCSDataFileUnload_Private";
  qword_281007FC8 = 0;
  qword_281007FD0 = 0x200000000;
  qword_281007FE8 = v18;
  qword_281007FF0 = SetDCSDataFileUnload;
  LODWORD(streamProperties[2201]) = 63;
  qword_281008010 = @"DCSLTCEnabled";
  qword_281007FF8 = 0;
  qword_281008000 = 0x200000000;
  qword_281008018 = v21;
  qword_281008020 = SetISPDCSDataLtcEnabled;
  LODWORD(streamProperties[2207]) = 63;
  qword_281008040 = @"ISPPropertyValue_Private";
  qword_281008028 = 0;
  qword_281008030 = 0x200000000;
  qword_281008048 = v18;
  qword_281008050 = SetISPProperty;
  LODWORD(streamProperties[2213]) = 63;
  qword_281008070 = @"SensorSerialNumber_Private";
  qword_281008058 = 0;
  qword_281008060 = 0x200000000;
  qword_281008078 = v22;
  qword_281008080 = 0;
  qword_281008088 = CopySensorSerialNum;
  LODWORD(streamProperties[2219]) = 63;
  qword_2810080A0 = @"DCSIMURate_Private";
  qword_281008090 = 0x100000000;
  qword_2810080A8 = v18;
  qword_2810080B0 = SetDCSIMURate;
  LODWORD(streamProperties[2225]) = 31;
  qword_2810080D0 = @"DCSMagnetometerReset_Private";
  qword_2810080B8 = 0;
  qword_2810080C0 = 0x200000000;
  qword_2810080D8 = v18;
  qword_2810080E0 = SetDCSMagnetometerReset;
  LODWORD(streamProperties[2231]) = 31;
  qword_281008100 = @"DCSMagnetometerOperationMode_Private";
  qword_2810080E8 = 0;
  qword_2810080F0 = 0x200000000;
  qword_281008108 = v18;
  qword_281008110 = SetDCSMagnetometerOperationMode;
  LODWORD(streamProperties[2237]) = 31;
  *(&streamProperties[2241] + 4) = 0u;
  qword_281008118 = 0;
  qword_281008120 = 0x200000000;
  xmmword_281008140 = 0u;
  xmmword_281008130 = 0u;
  groupProperties = v19;
  qword_2810082D0 = v16;
  qword_2810082D8 = 0;
  qword_2810082E0 = CopyGroupSupportedPropertiesDictionary;
  qword_2810082F8 = *MEMORY[0x277CF68D8];
  unk_281008300 = v16;
  unk_2810082E8 = 0;
  dword_2810082F0 = 63;
  qword_281008308 = 0;
  unk_281008310 = CopyGroupSupportedStreams;
  qword_281008328 = *MEMORY[0x277CF6858];
  unk_281008330 = v16;
  qword_281008318 = 0;
  dword_281008320 = 63;
  qword_281008338 = 0;
  unk_281008340 = CopyGroupBaseZoomFactors;
  qword_281008358 = *MEMORY[0x277CF6860];
  unk_281008360 = v16;
  qword_281008348 = 0;
  dword_281008350 = 31;
  qword_281008368 = 0;
  unk_281008370 = CopyGroupExtrinsics;
  qword_281008388 = *MEMORY[0x277CF68E0];
  unk_281008390 = v16;
  qword_281008378 = 0;
  dword_281008380 = 63;
  qword_281008398 = SetGroupSynchronizationPrimary;
  qword_2810083A0 = CopyGroupSynchronizationMaster;
  qword_2810083B8 = *MEMORY[0x277CF6850];
  unk_2810083C0 = v16;
  qword_2810083A8 = 0;
  dword_2810083B0 = 63;
  qword_2810083C8 = SetGroupActiveStreams;
  qword_2810083D0 = CopyGroupActiveStreams;
  qword_2810083E8 = *MEMORY[0x277CF68A0];
  unk_2810083F0 = v18;
  qword_2810083D8 = 0;
  dword_2810083E0 = 63;
  qword_2810083F8 = SetGroupMinSkippingRatio;
  qword_281008400 = CopyGroupMinSkippingRatio;
  qword_281008418 = *MEMORY[0x277CF6870];
  unk_281008420 = v16;
  qword_281008408 = 0x300000000;
  dword_281008410 = 63;
  qword_281008428 = SetGroupMasterConfiguration;
  qword_281008430 = CopyGroupMasterConfiguration;
  qword_281008448 = *MEMORY[0x277CF6878];
  unk_281008450 = v16;
  qword_281008438 = 0x300010000;
  dword_281008440 = 63;
  qword_281008458 = 0;
  unk_281008460 = CopyGroupMasterConfigurationSupportedKeys;
  qword_281008478 = *MEMORY[0x277CF68E8];
  unk_281008480 = v16;
  qword_281008468 = 0x10000;
  dword_281008470 = 63;
  qword_2810084A8 = *MEMORY[0x277CF6890];
  unk_2810084B0 = v18;
  qword_281008488 = SetGroupZoomFactorsByOutput;
  unk_281008490 = 0;
  qword_281008498 = 0x300004000;
  dword_2810084A0 = 31;
  qword_2810084B8 = SetGroupMaxSlaveStreams;
  qword_2810084C0 = CopyGroupMaxSlaveStreams;
  qword_2810084D8 = *MEMORY[0x277CF6880];
  qword_2810084C8 = 0x300000000;
  dword_2810084D0 = 63;
  qword_2810084E0 = v18;
  qword_2810084E8 = SetGroupMaxSlaveTimeMachines;
  qword_2810084F0 = CopyGroupMaxSlaveTimeMachines;
  qword_281008508 = *MEMORY[0x277CF6888];
  qword_2810084F8 = 0x300000000;
  dword_281008500 = 63;
  qword_281008510 = v18;
  qword_281008518 = SetGroupMaxSlaveStreamsProcessingEnabled;
  qword_281008520 = CopyGroupMaxSlaveStreamsProcessingEnabled;
  qword_281008538 = *MEMORY[0x277CF6898];
  qword_281008528 = 0x300000000;
  dword_281008530 = 63;
  qword_281008540 = v21;
  qword_281008548 = SetMidFrameSynchronizationEnabled;
  qword_281008550 = CopyGroupMidFrameSynchronizationEnabled;
  qword_281008568 = *MEMORY[0x277CF68B0];
  qword_281008558 = 0x300000000;
  dword_281008560 = 63;
  qword_281008570 = v16;
  qword_281008578 = SetSensorRawOutputBufferPool;
  qword_281008598 = *MEMORY[0x277CF68B8];
  qword_281008580 = 0;
  qword_281008588 = 0x300000000;
  dword_281008590 = 63;
  qword_2810085A0 = v16;
  qword_2810085A8 = 0;
  qword_2810085B0 = CopySensorRawOutputBufferPoolRequirements;
  qword_2810085C8 = *MEMORY[0x277CF6840];
  qword_2810085B8 = 0x300000000;
  dword_2810085C0 = 63;
  qword_2810085D0 = v16;
  qword_2810085D8 = SetGroupNondisruptiveSwitchingFormatIndices;
  qword_2810085F8 = *MEMORY[0x277CF6838];
  qword_2810085E0 = 0;
  qword_2810085E8 = 0x300000000;
  dword_2810085F0 = 63;
  qword_281008600 = v21;
  qword_281008608 = SetAWBStatisticsAveragingEnabled;
  qword_281008628 = *MEMORY[0x277CF68C8];
  qword_281008610 = 0;
  qword_281008618 = 0x300000000;
  dword_281008620 = 31;
  qword_281008630 = v18;
  qword_281008638 = SetSynchronizedSensorRawOutputRetainedBufferCount;
  qword_281008658 = *MEMORY[0x277CF6820];
  qword_281008640 = 0;
  qword_281008648 = 0x300000000;
  dword_281008650 = 63;
  qword_281008660 = v21;
  qword_281008668 = SetAEMatchIntegrationTimes;
  qword_281008688 = *MEMORY[0x277CF6848];
  qword_281008670 = 0;
  qword_281008678 = 0x300000000;
  dword_281008680 = 31;
  qword_281008690 = v16;
  qword_281008698 = 0;
  qword_2810086A0 = CopySynchronizedStreamsSensorRawOutputBufferPoolRequirements;
  qword_2810086B8 = *MEMORY[0x277CF68C0];
  qword_2810086A8 = 0x100008000;
  dword_2810086B0 = 31;
  qword_2810086C0 = v16;
  qword_2810086C8 = SetSynchronizedStreamsSensorRawOutputBufferPools;
  qword_2810086E8 = *MEMORY[0x277CF68D0];
  qword_2810086D0 = 0;
  qword_2810086D8 = 0x200008000;
  dword_2810086E0 = 31;
  qword_2810086F0 = v16;
  qword_2810086F8 = SetSynchronizedStreamsSensorRawOutputRetainedBufferCounts;
  qword_281008718 = *MEMORY[0x277CF6828];
  qword_281008700 = 0;
  qword_281008708 = 0x200008000;
  dword_281008710 = 31;
  qword_281008720 = v16;
  qword_281008728 = SetGroupAEWindowParams;
  qword_281008748 = *MEMORY[0x277CF6830];
  qword_281008730 = 0;
  qword_281008738 = 0x300000000;
  dword_281008740 = 31;
  qword_281008750 = v16;
  qword_281008758 = SetGroupAFWindowParams;
  qword_281008778 = *MEMORY[0x277CF68A8];
  qword_281008760 = 0;
  qword_281008768 = 0x300000000;
  dword_281008770 = 31;
  qword_281008780 = v16;
  qword_281008788 = SetGroupROIForCameraControls;
  qword_2810087A8 = *MEMORY[0x277CF6868];
  qword_281008790 = 0;
  qword_281008798 = 0x300000000;
  dword_2810087A0 = 31;
  qword_2810087B0 = v16;
  qword_2810087B8 = SetGroupLumaHistogramROI;
  qword_2810087D8 = v52;
  qword_2810087E8 = LockAWBNow;
  qword_281008808 = v51;
  qword_281008818 = UnlockAWBNow;
  qword_281008838 = v50;
  qword_281008848 = LockAENow;
  qword_281008868 = v49;
  qword_281008878 = UnlockAENow;
  qword_281008898 = v55;
  qword_2810088A8 = AutoFocusNow;
  qword_2810088C8 = v48;
  qword_2810088D8 = SetAFWindowParams;
  qword_2810088F8 = v47;
  qword_281008908 = SetAEWindowParams;
  qword_281008928 = v28;
  qword_281008938 = SetROIForCameraControls;
  qword_281008958 = v23;
  qword_281008988 = v23;
  qword_281008968 = SetAEFaceDetectionMetering;
  qword_281008998 = SetAEFaceDetectionMetering;
  qword_2810089B8 = v46;
  qword_2810089C8 = SetExposureBias;
  qword_2810089E8 = v45;
  qword_2810089F8 = SetAEConvergenceSpeed;
  qword_281008A18 = v44;
  qword_281008A28 = SetAEStability;
  qword_281008A48 = v43;
  qword_281008A58 = SetAFSearchPositions;
  qword_281008A78 = v42;
  qword_281008A88 = ManualFocusNow;
  qword_281008AA8 = v41;
  qword_281008AB8 = SetHistogramParams;
  qword_281008AD8 = v40;
  qword_281008AE8 = SetAEMeteringMode;
  qword_281008B08 = v39;
  qword_281008B18 = SetAFEarlyOutParams;
  qword_281008B38 = v38;
  qword_281008B48 = SetDeviceOrientation;
  dword_281008B60 = 63;
  qword_281008B68 = v37;
  qword_281008B78 = LockBLCNow;
  qword_281008B98 = v36;
  qword_281008BA8 = UnlockBLCNow;
  qword_281008BC8 = v35;
  qword_281008BD8 = SetAFPeakPredictionEnabled;
  qword_281008BF8 = v34;
  qword_281008C08 = PeakTrackingFocusNow;
  qword_281008C28 = v33;
  qword_281008C38 = LockLTMNow;
  qword_281008C58 = v32;
  qword_281008C68 = UnlockLTMNow;
  qword_281008C88 = v54;
  qword_281008C98 = SetAutoFocusMode;
  qword_281008CA0 = CopyAutoFocusMode;
  qword_281008CB8 = v53;
  qword_281008CC8 = SetMatrixFocusParams;
  qword_281008CD0 = CopyMatrixFocusParams;
  qword_281008CE8 = v24;
  qword_281008CF8 = SetContinuousAutoFocusNow;
  qword_281008D18 = v25;
  qword_2810087C0 = 0;
  qword_2810087C8 = 0x300000000;
  dword_2810087D0 = 31;
  qword_2810087E0 = v20;
  qword_2810087F0 = 0;
  qword_2810087F8 = 0x300000020;
  dword_281008800 = 31;
  qword_281008810 = v20;
  qword_281008820 = 0;
  qword_281008828 = 0x300000020;
  dword_281008830 = 31;
  qword_281008840 = v20;
  qword_281008850 = 0;
  qword_281008858 = 0x300000000;
  dword_281008860 = 31;
  qword_281008870 = v20;
  qword_281008880 = 0;
  qword_281008888 = 0x300000000;
  dword_281008890 = 31;
  qword_2810088A0 = v20;
  qword_2810088B0 = 0;
  qword_2810088B8 = 0x300000002;
  dword_2810088C0 = 31;
  qword_2810088D0 = v16;
  qword_2810088E0 = 0;
  qword_2810088E8 = 0x300000000;
  dword_2810088F0 = 31;
  qword_281008900 = v16;
  qword_281008910 = 0;
  qword_281008918 = 0x300000000;
  dword_281008920 = 31;
  qword_281008930 = v16;
  qword_281008940 = 0;
  qword_281008948 = 0x300000000;
  dword_281008950 = 31;
  qword_281008960 = v16;
  qword_281008970 = 0;
  qword_281008978 = 0x300000000;
  dword_281008980 = 31;
  qword_281008990 = v16;
  qword_2810089A0 = 0;
  qword_2810089A8 = 0x300000000;
  dword_2810089B0 = 31;
  qword_2810089C0 = v16;
  qword_2810089D0 = 0;
  qword_2810089D8 = 0x300000000;
  dword_2810089E0 = 31;
  qword_2810089F0 = v18;
  qword_281008A00 = 0;
  qword_281008A08 = 0x300000000;
  dword_281008A10 = 31;
  qword_281008A20 = v18;
  qword_281008A30 = 0;
  qword_281008A38 = 0x300000000;
  dword_281008A40 = 31;
  qword_281008A50 = v16;
  qword_281008A60 = 0;
  qword_281008A68 = 0x300000002;
  dword_281008A70 = 31;
  qword_281008A80 = v16;
  qword_281008A90 = 0;
  qword_281008A98 = 0x300000002;
  dword_281008AA0 = 31;
  qword_281008AB0 = v16;
  qword_281008AC0 = 0;
  qword_281008AC8 = 0x300000000;
  dword_281008AD0 = 31;
  qword_281008AE0 = v22;
  qword_281008AF0 = 0;
  qword_281008AF8 = 0x300000000;
  dword_281008B00 = 31;
  qword_281008B10 = v16;
  qword_281008B20 = 0;
  qword_281008B28 = 0x300000002;
  dword_281008B30 = 31;
  qword_281008B40 = v18;
  qword_281008B50 = 0;
  qword_281008B58 = 0x300000000;
  qword_281008B70 = v20;
  qword_281008B80 = 0;
  qword_281008B88 = 0x300000000;
  dword_281008B90 = 31;
  qword_281008BA0 = v20;
  qword_281008BB0 = 0;
  qword_281008BB8 = 0x300000000;
  dword_281008BC0 = 31;
  qword_281008BD0 = v21;
  qword_281008BE0 = 0;
  qword_281008BE8 = 0x300000000;
  dword_281008BF0 = 31;
  qword_281008C00 = v16;
  qword_281008C10 = 0;
  qword_281008C18 = 0x300000002;
  dword_281008C20 = 31;
  qword_281008C30 = v20;
  qword_281008C40 = 0;
  qword_281008C48 = 0x300000000;
  dword_281008C50 = 31;
  qword_281008C60 = v20;
  qword_281008C70 = 0;
  qword_281008C78 = 0x300000000;
  dword_281008C80 = 31;
  qword_281008C90 = v22;
  qword_281008CA8 = 0x300000002;
  dword_281008CB0 = 31;
  qword_281008CC0 = v16;
  qword_281008CD8 = 0x300000002;
  dword_281008CE0 = 31;
  qword_281008CF0 = v16;
  qword_281008D00 = 0;
  qword_281008D08 = 0x30000000ALL;
  dword_281008D10 = 31;
  qword_281008D20 = v20;
  qword_281008D28 = SetLockAFNow;
  qword_281008D30 = 0;
  qword_281008D38 = 0x300000002;
  dword_281008D40 = 31;
  qword_281008D48 = v31;
  qword_281008D50 = v18;
  qword_281008D58 = SetGroupZoomFactor;
  qword_281008D78 = v26;
  qword_281008D60 = 0;
  qword_281008D68 = 0x300000000;
  dword_281008D70 = 31;
  qword_281008D80 = v20;
  qword_281008D88 = SetAutoFocusHintNow;
  qword_281008D90 = 0;
  qword_281008D98 = 0x30000000ALL;
  dword_281008DA0 = 31;
  qword_281008DA8 = v56;
  qword_281008DB0 = v16;
  qword_281008DB8 = GroupStillImageCaptureNow;
  qword_281008DD8 = v27;
  qword_281008DC0 = 0;
  qword_281008DC8 = 0x300000000;
  dword_281008DD0 = 31;
  qword_281008DE0 = v16;
  qword_281008DE8 = SetFocusNow;
  qword_281008DF0 = 0;
  qword_281008DF8 = 0x30000000ALL;
  dword_281008E00 = 31;
  deviceProperties[0] = v19;
  qword_281008E10 = v16;
  qword_281008E18 = 0;
  qword_281008E20 = CopyDeviceSupportedPropertiesDictionary;
  dword_281008E28 = 0;
  v30 = *MEMORY[0x277CF6B10];
  qword_281008E30 = *MEMORY[0x277CF6A00];
  unk_281008E38 = v30;
  qword_281008E40 = 0;
  unk_281008E48 = CopyClock;
  dword_281008E50 = 0;
  qword_281008E58 = *MEMORY[0x277CF6A08];
  unk_281008E60 = v16;
  qword_281008E68 = 0;
  unk_281008E70 = CopyStreamArray;
  dword_281008E78 = 0;
  qword_281008E80 = *MEMORY[0x277CF3C70];
  unk_281008E88 = v22;
  qword_281008E90 = 0;
  unk_281008E98 = CopyFirmwareVersion;
  dword_281008EA0 = 0;
  qword_281008EA8 = *MEMORY[0x277CF3C98];
  unk_281008EB0 = v16;
  qword_281008EB8 = 0;
  unk_281008EC0 = CopyStreamGroupsArray;
  dword_281008EC8 = 0;
  qword_281008ED0 = *MEMORY[0x277CF3C88];
  unk_281008ED8 = v16;
  qword_281008EE0 = SetMultiCamConfiguration;
  qword_281008EE8 = CopyMultiCamConfiguration;
  dword_281008EF0 = 0;
  qword_281008EF8 = *MEMORY[0x277CF3C68];
  unk_281008F00 = v21;
  qword_281008F08 = SetClientIsActive;
  unk_281008F10 = 0;
  dword_281008F18 = 0;
  qword_281008F20 = *MEMORY[0x277CF3C60];
  unk_281008F28 = v21;
  qword_281008F30 = SetAudioIsPlayingToBuiltInSpeaker;
  unk_281008F38 = 0;
  dword_281008F40 = 0;
  qword_281008F48 = *MEMORY[0x277CF3CA0];
  unk_281008F50 = v21;
  qword_281008F58 = SetTOFAutoFocusEnabled;
  qword_281008F60 = CopyTOFAutoFocusEnabled;
  dword_281008F68 = 0x2000;
  qword_281008F70 = @"DARTCacheParameters";
  unk_281008F78 = v16;
  qword_281008F80 = SetDARTCacheParameters;
  unk_281008F88 = 0;
  dword_281008F90 = 0;
  qword_281008F98 = @"DiagnosticsLogDump";
  unk_281008FA0 = v20;
  qword_281008FA8 = SetDiagnosticsLogDump;
  unk_281008FB0 = 0;
  dword_281008FB8 = 0;
  qword_281008FC0 = @"SensorAgileClockingEnable";
  unk_281008FC8 = v21;
  qword_281008FD0 = SetSensorAgileClockingEnable;
  unk_281008FD8 = 0;
  dword_281008FE0 = 0;
  qword_281008FE8 = @"FactoryFeaturesMode";
  unk_281008FF0 = v20;
  qword_281008FF8 = SetFactoryFeaturesMode;
  unk_281009000 = 0;
  dword_281009008 = 0;
  qword_281009010 = @"ForgetFirmwareDuringPluginTeardown";
  qword_281009018 = v20;
  qword_281009020 = SetForgetFirmwareDuringPluginTeardown;
  qword_281009028 = 0;
  dword_281009030 = 0;
  qword_281009038 = @"MotionDataSamplingRate";
  qword_281009040 = v18;
  qword_281009048 = SetMotionDataSamplingRate;
  qword_281009050 = 0;
  dword_281009058 = 0;
  qword_281009060 = *MEMORY[0x277CF3CA8];
  qword_281009068 = v16;
  qword_281009070 = 0;
  qword_281009078 = CopyUnitInfo;
  dword_281009080 = 0;
  qword_281009088 = @"MulticamSessionStatus";
  qword_281009090 = v16;
  qword_281009098 = 0;
  qword_2810090A0 = CopyMultiCamSessionStatus;
  dword_2810090A8 = 0;
  qword_2810090B0 = *MEMORY[0x277CF3C80];
  qword_2810090B8 = v18;
  qword_2810090C0 = SetDeviceMemoryPoolID;
  qword_2810090C8 = 0;
  dword_2810090D0 = 0;
  qword_2810090D8 = @"DCSAudioAccelTimeReference_Private";
  qword_2810090E0 = v16;
  qword_2810090E8 = 0;
  qword_2810090F0 = CopyDCSAudioAccelTimeReference;
  dword_2810090F8 = 0;
  qword_281009100 = @"DCSAudioAccelSampleCallback_Private";
  qword_281009108 = v16;
  qword_281009110 = SetDCSAudioAccelCallback;
  qword_281009118 = 0;
  dword_281009120 = 0;
  qword_281009128 = @"DCSAudioAccelMessageCallback_Private";
  qword_281009130 = v16;
  qword_281009138 = SetDCSAudioAccelMessageCallback;
  qword_281009140 = 0;
  dword_281009148 = 0;
  qword_281009150 = @"DCSAudioAccelConfigTestMode_Private";
  qword_281009158 = v21;
  qword_281009160 = SetDCSAudioAccelTestMode;
  qword_281009168 = 0;
  dword_281009170 = 0;
  qword_281009178 = @"DCSAudioAccelConfig_Private";
  qword_281009180 = v16;
  qword_281009188 = SetDCSAudioAccelConfig;
  qword_281009190 = 0;
  dword_281009198 = 0;
  qword_2810091A0 = @"DCSAudioAccelDevicePropertyStreamingEnabled_Private";
  qword_2810091A8 = v21;
  qword_2810091B0 = SetDCSAudioAccelStreaming;
  qword_2810091B8 = CopyDCSAudioAccelStreaming;
  dword_2810091C0 = 0;
  qword_2810091C8 = @"DCSFPGAControl_Private";
  qword_2810091D0 = v18;
  qword_2810091D8 = SetDCSFPGAControl;
  qword_2810091E0 = 0;
  dword_2810091E8 = 0;
  qword_2810091F0 = @"DCSFPGAStatus_Private";
  qword_2810091F8 = v16;
  qword_281009200 = 0;
  qword_281009208 = CopyDCSFPGAStatus;
  dword_281009210 = 0;
  qword_281009218 = @"DCSFPGASyncOffsetControl_Private";
  qword_281009220 = v16;
  qword_281009228 = SetDCSFPGASyncOffsetControl;
  qword_281009230 = 0;
  dword_281009238 = 0;
  qword_281009240 = @"DCSFPGASyncControl_Private";
  qword_281009248 = v16;
  qword_281009250 = SetDCSFPGASyncControl;
  qword_281009258 = 0;
  dword_281009260 = 0;
  qword_281009268 = *MEMORY[0x277CF3C78];
  qword_281009270 = v21;
  qword_281009278 = SetLowMemoryMode;
  qword_281009280 = CopyLowMemoryMode;
  dword_281009288 = 0;
  qword_281009290 = *MEMORY[0x277CF3C90];
  qword_281009298 = v16;
  qword_2810092A0 = 0;
  qword_2810092A8 = CopyISPProcessingSessionTypes;
  dword_2810092B0 = 0;
  dword_2810092D8 = 0;
  xmmword_2810092C8 = 0u;
  xmmword_2810092B8 = 0u;
  processingSessionProperties[0] = v19;
  qword_281008168 = v16;
  qword_281008170 = 0;
  unk_281008178 = CopyProcessingSessionSupportedPropertiesDictionary;
  dword_281008180 = 0;
  qword_281008188 = *MEMORY[0x277CF6AA8];
  unk_281008190 = v16;
  qword_281008198 = 0;
  unk_2810081A0 = CopyProcessingSessionInputPixelBufferAttributes;
  dword_2810081A8 = 0;
  qword_2810081B0 = *MEMORY[0x277CF6AB8];
  unk_2810081B8 = v16;
  qword_2810081C0 = 0;
  unk_2810081C8 = CopyProcessingSessionOutputPixelBufferAttributes;
  dword_2810081D0 = 0;
  qword_2810081D8 = *MEMORY[0x277CF6A98];
  unk_2810081E0 = v16;
  qword_2810081E8 = SetProcessingSessionDefaultProcessingParameters;
  qword_2810081F0 = CopyProcessingSessionDefaultProcessingParameters;
  dword_2810081F8 = 0;
  qword_281008200 = *MEMORY[0x277CF6AB0];
  unk_281008208 = v20;
  qword_281008210 = SetProcessingSessionOutputHandler;
  unk_281008218 = 0;
  dword_281008220 = 0;
  qword_281008228 = *MEMORY[0x277CF6AC8];
  unk_281008230 = v16;
  qword_281008238 = 0;
  unk_281008240 = CopyProcessingSessionSupportedOutputs;
  dword_281008248 = 0;
  qword_281008250 = *MEMORY[0x277CF6AA0];
  unk_281008258 = v21;
  qword_281008260 = SetProcessingSessionDeferAdditionOfAttachments;
  qword_281008268 = CopyProcessingSessionDeferAdditionOfAttachments;
  dword_281008270 = 0;
  qword_281008278 = *MEMORY[0x277CF6AC0];
  unk_281008280 = v16;
  qword_281008288 = 0;
  unk_281008290 = CopyProcessingSessionSupportedInputs;
  dword_281008298 = 0;
  dword_2810082C0 = 0;
  xmmword_2810082A0 = 0u;
  unk_2810082B0 = 0u;
  return result;
}