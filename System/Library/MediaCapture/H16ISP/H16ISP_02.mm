uint64_t SetMetadataOutputConfiguration(const __CFDictionary *a1, int32x4_t *a2, uint64_t a3)
{
  v61 = *MEMORY[0x277D85DE8];
  theDict = 0;
  if (!CFDictionaryGetValueIfPresent(a1, *MEMORY[0x277CF6630], &theDict))
  {
    return 0;
  }

  v5 = theDict;
  if (a2[181].i8[8] == 1)
  {
    if (CFDictionaryContainsKey(theDict, qword_281003A18))
    {
LABEL_4:
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v6 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
      }

      v7 = 3758097084;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        SetMetadataOutputConfiguration();
      }

      return v7;
    }

    v13 = -1;
    v14 = &qword_281003A30;
    while (v13 != 8)
    {
      v15 = *v14;
      v14 += 3;
      ++v13;
      if (CFDictionaryContainsKey(v5, v15))
      {
        if (v13 <= 8)
        {
          goto LABEL_4;
        }

        return 0;
      }
    }

    return 0;
  }

  if (theDict && (v8 = CFGetTypeID(theDict), v8 == CFDictionaryGetTypeID()))
  {
    v9 = theDict;
    if (a2[189].i8[8] == 1)
    {
      v10 = SetMetadataOutputFeatureEnabled(&a2[192].i64[1], theDict, *MEMORY[0x277CF47C8]);
      if (v10)
      {
        v7 = v10;
        v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v11 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          SetMetadataOutputConfiguration();
        }

LABEL_88:
        v35 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v35 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v35;
        }

        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          SetMetadataOutputConfiguration();
        }

        return v7;
      }

      value = 0;
      if (CFDictionaryGetValueIfPresent(v9, *MEMORY[0x277CF47C0], &value))
      {
        v7 = 3758097090;
        if (a2[197].i8[9] == 1)
        {
          v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v17 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
          }

          v7 = 3758097095;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            SetMetadataOutputConfiguration();
          }

LABEL_68:
          v27 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v27 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v27;
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            SetMetadataOutputConfiguration();
          }

          goto LABEL_88;
        }

        v18 = value;
        *cf = 0;
        if (LightSourceMaskGetTunableParameterValue(value, *MEMORY[0x277CF46D8], &a2[190]) == -536870206)
        {
          v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v19 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            SetMetadataOutputConfiguration();
          }

LABEL_64:
          v26 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v26 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v26;
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            SetMetadataOutputConfiguration();
          }

          goto LABEL_68;
        }

        if (LightSourceMaskGetTunableParameterValue(v18, *MEMORY[0x277CF46E0], a2[190].i64 + 4) == -536870206)
        {
          v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v20 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v20;
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            SetMetadataOutputConfiguration();
          }

          goto LABEL_64;
        }

        if (LightSourceMaskGetTunableParameterValue(v18, *MEMORY[0x277CF46E8], &a2[190].u64[1]) == -536870206)
        {
          v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v21 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            SetMetadataOutputConfiguration();
          }

          goto LABEL_64;
        }

        if (LightSourceMaskGetTunableParameterValue(v18, *MEMORY[0x277CF46D0], &a2[190].u64[1] + 4) == -536870206)
        {
          v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v22 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            SetMetadataOutputConfiguration();
          }

          goto LABEL_64;
        }

        if (CFDictionaryGetValueIfPresent(v18, *MEMORY[0x277CF46F0], cf))
        {
          if (!*cf || (v23 = CFGetTypeID(*cf), v23 != CFArrayGetTypeID()))
          {
            v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v25 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
            }

            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              SetMetadataOutputConfiguration();
            }

            goto LABEL_64;
          }

          if (CFArrayGetCount(*cf) > 4)
          {
            v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v24 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v24;
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              SetMetadataOutputConfiguration(cf);
            }

            goto LABEL_64;
          }

          if (CFArrayGetCount(*cf) >= 1)
          {
            v28 = 0;
            v29 = a2 + 191;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*cf, v28);
              if (ValueAtIndex)
              {
                CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, v29);
              }

              ++v28;
              v29 = (v29 + 4);
            }

            while (v28 < CFArrayGetCount(*cf));
          }

          a2[192].i32[0] = 1;
        }

        v31 = SetMetadataOutputBufferPoolConfiguration(&a2[192].i64[1], value);
        if (v31)
        {
          v7 = v31;
          v32 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v32 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v32;
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            SetMetadataOutputConfiguration();
          }

          goto LABEL_68;
        }
      }

      v33 = SetMetadataOutputFeatureEnabled(&a2[198].i64[1], v9, *MEMORY[0x277CF47A8]);
      if (v33)
      {
        v7 = v33;
        v34 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v34 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v34;
        }

        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          SetMetadataOutputConfiguration();
        }

        goto LABEL_88;
      }

      value = 0;
      if (CFDictionaryGetValueIfPresent(v9, *MEMORY[0x277CF47A0], &value))
      {
        v36 = SetMetadataOutputBufferPoolConfiguration(&a2[198].i64[1], value);
        if (v36)
        {
          v7 = v36;
          v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          v38 = MEMORY[0x277D86220];
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v37 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v37;
          }

          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *cf = 136315138;
            *&cf[4] = "SetKeypointDescriptorDataConfiguration";
            _os_log_error_impl(&dword_2247DB000, v37, OS_LOG_TYPE_ERROR, "%s - failed to set keypoint descriptor data configuration\n", cf, 0xCu);
            v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          }

          if (v37 == v38)
          {
            v37 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v37;
          }

          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            SetMetadataOutputConfiguration();
          }

          goto LABEL_88;
        }
      }

      v9 = theDict;
    }

    *cf = 0;
    v39 = &a2[204].i64[1];
    v40 = 4;
    while (1)
    {
      v7 = SetMetadataOutputFeatureEnabled(v39, v9, **(v39 + 72));
      if (v7)
      {
        break;
      }

      v39 += 96;
      if (!--v40)
      {
        goto LABEL_111;
      }
    }

    v41 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v41 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v41;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      SetMetadataOutputConfiguration();
    }

LABEL_111:
    v42 = 0;
    while (2)
    {
      v43 = &a2[6 * v42++ + 204].i64[1];
      while (!CFDictionaryGetValueIfPresent(v9, *(*(v43 + 72) + 8), cf))
      {
        ++v42;
        v43 += 96;
        if (v42 == 5)
        {
          if (v7)
          {
LABEL_120:
            v44 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v44 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v44;
            }

            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              SetMetadataOutputConfiguration();
            }

            return v7;
          }

          goto LABEL_124;
        }
      }

      v7 = SetMetadataOutputBufferPoolConfiguration(v43, *cf);
      if (v7)
      {
        v51 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v51 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v51;
        }

        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          SetMetadataOutputConfiguration();
        }

        goto LABEL_120;
      }

      if (v42 != 4)
      {
        continue;
      }

      break;
    }

LABEL_124:
    v45 = SetHITHFeatureConfiguration(&a2[181].i64[1], theDict);
    if (v45)
    {
      v7 = v45;
      v46 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v46 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v46;
      }

      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        SetMetadataOutputConfiguration();
      }
    }

    else
    {
      v47 = SetANSTThumbnailFeatureConfiguration(&a2[181].i64[1], theDict);
      if (v47)
      {
        v7 = v47;
        v48 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v48 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v48;
        }

        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          SetMetadataOutputConfiguration();
        }
      }

      else
      {
        v49 = SetPrePostLTMThumbnailFeatureConfiguration(&a2[181].i64[1], theDict);
        if (v49)
        {
          v7 = v49;
          v50 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v50 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v50;
          }

          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            SetMetadataOutputConfiguration();
          }
        }

        else
        {
          v52 = SetWSegThumbnailFeatureConfiguration(&a2[181].i64[1], theDict);
          if (v52)
          {
            v7 = v52;
            v53 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v53 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v53;
            }

            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              SetMetadataOutputConfiguration();
            }
          }

          else
          {
            if (a2[189].i8[8] != 1 || (v54 = LightSourceMaskTunableConfigurationSendToFirmware(a3, a2[9].i32[3], a2 + 190), !v54))
            {
              *cf = 0;
              ValueIfPresent = CFDictionaryGetValueIfPresent(theDict, @"EnableDCSIMUData_Private", cf);
              v57 = MEMORY[0x277CBED28];
              if (ValueIfPresent)
              {
                a2[254].i8[8] = CFEqual(*cf, *MEMORY[0x277CBED28]) != 0;
              }

              value = 0;
              if (CFDictionaryGetValueIfPresent(theDict, @"EnableDCSNonVisionData_Private", &value))
              {
                a2[254].i8[9] = CFEqual(value, *v57) != 0;
              }

              return 0;
            }

            v7 = v54;
            v55 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v55 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v55;
            }

            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              SetMetadataOutputConfiguration();
            }
          }
        }
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

    v7 = 3758097090;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      SetMetadataOutputConfiguration();
    }
  }

  return v7;
}

uint64_t CopyWhiteBalanceCalibrations(const __CFAllocator *a1, __CFArray **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  H16ISP::H16ISPDevice::GetAWBCalibrationMatrix(*(a5 + 24), *(a3 + 156), valuePtr);
  if (v7)
  {
    Mutable = 0;
LABEL_3:
    result = 4294954513;
    goto LABEL_4;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    goto LABEL_3;
  }

  v10 = *MEMORY[0x277CBECE8];
  v11 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v12 = MEMORY[0x277CF67C0];
  if (v11)
  {
    v13 = v11;
    v14 = CFNumberCreate(0, kCFNumberSInt32Type, valuePtr);
    if (v14)
    {
      v15 = v14;
      CFDictionaryAddValue(v13, *MEMORY[0x277CF67C8], v14);
      CFRelease(v15);
    }

    for (i = 0; i != 36; i += 4)
    {
      v17 = vcvtd_n_f64_s32(*&v26[i + 4], 0xCuLL);
      *&bytes[i] = v17;
    }

    v18 = CFDataCreate(0, bytes, 36);
    CFDictionarySetValue(v13, *v12, v18);
    CFRelease(v18);
    CFArrayAppendValue(Mutable, v13);
    CFRelease(v13);
  }

  result = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (result)
  {
    v19 = result;
    v20 = CFNumberCreate(0, kCFNumberSInt32Type, v26);
    if (v20)
    {
      v21 = v20;
      CFDictionaryAddValue(v19, *MEMORY[0x277CF67C8], v20);
      CFRelease(v21);
    }

    for (j = 0; j != 36; j += 4)
    {
      v23 = vcvtd_n_f64_s32(*&v26[j + 40], 0xCuLL);
      *&bytes[j] = v23;
    }

    v24 = CFDataCreate(0, bytes, 36);
    CFDictionarySetValue(v19, *v12, v24);
    CFRelease(v24);
    CFArrayAppendValue(Mutable, v19);
    CFRelease(v19);
    result = 0;
  }

LABEL_4:
  *a2 = Mutable;
  return result;
}

__n128 H16ISP::H16ISPDevice::GetAWBCalibrationMatrix(H16ISP::H16ISPDevice *a1, int a2, uint64_t a3)
{
  bzero(v8, 0x5CuLL);
  v9 = -31973;
  v10 = a2;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(a1, v8, 0x5Cu, 0, 0xFFFFFFFF))
  {
    result = v12;
    v7 = v14;
    *(a3 + 32) = v13;
    *(a3 + 48) = v7;
    *(a3 + 64) = v15;
    *a3 = v11;
    *(a3 + 16) = result;
  }

  return result;
}

double H16ISP::H16ISPDevice::GetStrobeLEDCalibrationValues(H16ISP::H16ISPDevice *a1, __int16 a2, _OWORD *a3)
{
  bzero(v8, 0x38uLL);
  v9 = 1582;
  v10 = a2;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(a1, v8, 0x38u, 0, 0xFFFFFFFF))
  {
    v7 = *v12;
    *a3 = v11;
    a3[1] = v7;
    result = *&v12[12];
    *(a3 + 28) = *&v12[12];
  }

  return result;
}

uint64_t CopyFlashCalibrationData(const __CFAllocator *a1, CFDataRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 24);
  v9 = *(v8 + 538);
  bzero(&v21, 0x14uLL);
  H16ISP::H16ISPDevice::GetStrobeLEDCalibrationValues(v8, *(a3 + 156), &v24[4]);
  if (v10)
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      CopyFlashCalibrationData();
    }

    v12 = 0;
    v13 = 4294954514;
    goto LABEL_7;
  }

  if (!v24[5])
  {
    v12 = 0;
    v13 = 4294954513;
    goto LABEL_7;
  }

  if (v24[4] == 2)
  {
    v15 = v24;
    v16 = &v23;
    v17 = &v25;
    v18 = &v24[16];
    v21 = 0;
    v22 = *&v24[8];
LABEL_15:
    *v16 = *v18;
    *v15 = *v17;
    goto LABEL_16;
  }

  v15 = &v22 + 4;
  v16 = &v22;
  v17 = &v26 + 4;
  v18 = &v26;
  if (v24[4] == 3 && !v24[6])
  {
    v21 = 1;
    goto LABEL_15;
  }

  if (v24[4] == 3 && v24[6] - 1 <= 1)
  {
    v21 = 2;
    v20 = *(v9 + 104 * *(a3 + 156) + 16);
    switch(v20)
    {
      case 1919246706:
        goto LABEL_15;
      case 1919251564:
        v17 = &v28 + 4;
        v18 = &v28;
        goto LABEL_15;
      case 1919251319:
        v17 = &v27 + 4;
        v18 = &v27;
        goto LABEL_15;
    }
  }

LABEL_16:
  v12 = CFDataCreate(a1, &v21, 20);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      CopyFlashCalibrationData();
    }

    v12 = 0;
    v13 = 4294954510;
  }

LABEL_7:
  *a2 = v12;
  return v13;
}

uint64_t SetTimeOfFlightConfiguration(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1785950322);
  v8 = 4294954516;
  if (!a1 || !isSensorType)
  {
    return v8;
  }

  v9 = CFGetTypeID(a1);
  if (v9 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 1;
  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF68F8]);
  v8 = Value;
  if (!Value)
  {
    v13 = (a2 + 4560);
    *(a2 + 4560) = 1;
    goto LABEL_11;
  }

  v11 = CFGetTypeID(Value);
  if (v11 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(v8, kCFNumberIntType, &valuePtr);
  v12 = valuePtr;
  v13 = (a2 + 4560);
  *(a2 + 4560) = 1;
  if (v12 <= 4)
  {
    if (!v12)
    {
      v8 = 0;
      *v13 = 0;
      goto LABEL_11;
    }

    if (v12 == 1)
    {
      v8 = 0;
LABEL_11:
      v14 = 4;
      goto LABEL_12;
    }

LABEL_25:
    v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v20 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v20;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      SetTimeOfFlightConfiguration();
    }

    *v13 = 0;
    v14 = 4;
    v8 = 4294954516;
    goto LABEL_12;
  }

  if (v12 == 6)
  {
    v8 = 0;
    v14 = 108;
  }

  else
  {
    if (v12 != 5)
    {
      goto LABEL_25;
    }

    v8 = 0;
    v14 = 104;
  }

LABEL_12:
  v15 = H16ISP::JasperConfigManager::configureFrameMode(v14);
  if (*(a2 + 160) && v15)
  {
    if (H16ISP::JasperConfigManager::applyFrameMode(*(a4 + 24), *(a2 + 156), *(a2 + 4576), *(a4 + 232), v16))
    {
      EnableIRProjector(0, a2, a4);
      FigStreamRef = GetFigStreamRef(a2, a4);
      H16ISPPostNotification(@"BadJasperCalibrationNotification", FigStreamRef, 0);
      return 4294954516;
    }

    EnableIRProjector(1, a2, a4);
  }

  v21 = 0;
  v19 = *(a2 + 4720);
  if (v19)
  {
    H16ISP::H16ISPFilterGraphManager::GetNode(v19, 11, &v21);
    if (v21)
    {
      H16ISP::H16ISPJasperDepthNode::setProcessingMode(v21, *v13);
    }
  }

  return v8;
}

BOOL H16ISP::JasperConfigManager::configureFrameMode(H16ISP::JasperConfigManager *this)
{
  v1 = qword_2810038EC;
  HIDWORD(qword_2810038EC) = this;
  v2 = 4;
  if (this > 103)
  {
    if (this != 104 && this != 108)
    {
      goto LABEL_7;
    }
  }

  else if (this != 4 && this != 44)
  {
LABEL_7:
    v2 = this;
  }

  LODWORD(qword_2810038EC) = v2;
  return v2 != v1;
}

uint64_t SetAEMatrixMetadataEnable(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v10 = "H16ISPCaptureDevice: Enable AE-matrix metadata collection\n\n";
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
    v10 = "H16ISPCaptureDevice: Disable AE-matrix metadata collection\n\n";
    v11 = &v13;
  }

  _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, v10, v11, 2u);
LABEL_15:
  if (H16ISP::H16ISPDevice::EnableAEMatrixMetadata(*(a4 + 24), *(a2 + 156), v8 != 0))
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::H16ISPDevice::EnableAEMatrixMetadata(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -32245;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetMaximumFrameRate(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3)
{
  if ((*(this + 1073) >> a2))
  {
    result = 0;
    *a3 = 0;
  }

  else
  {
    bzero(v7, 0x10uLL);
    v8 = 519;
    v9 = a2;
    result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
    if (!result)
    {
      *a3 = v10;
    }
  }

  return result;
}

uint64_t CopyMaximumFrameRate(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  if (H16ISP::H16ISPDevice::GetMaximumFrameRate(*(a5 + 24), *(a3 + 156), &v11))
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

uint64_t SetSceneClassifierVersion(const void *a1, uint64_t a2)
{
  valuePtr = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  if (*(a2 + 160))
  {
    if (*(a2 + 4600) == valuePtr)
    {
      return 0;
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
        SetSceneClassifierVersion();
      }

      return 4294954612;
    }
  }

  else
  {
    result = 0;
    *(a2 + 4600) = valuePtr;
  }

  return result;
}

uint64_t SetAudioIsPlayingToBuiltInSpeaker(const __CFBoolean *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = CFBooleanGetValue(a1) != 0;
  if (H16ISP::H16ISPDevice::SetInternalSpeakerActive(*(a4 + 24), v5))
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::H16ISPDevice::SetInternalSpeakerActive(H16ISP::H16ISPDevice *this, char a2)
{
  bzero(v5, 0xCuLL);
  v6 = 1970;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t SetMaximumAllowedFrameRate(const __CFNumber *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 160))
  {
    v9 = *(a2 + 48);
    v10 = *(a2 + 192);
    if (v9 < v10)
    {
      v10 = 0;
    }

    v11 = v9 - v10;
    if (H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), *(*(a2 + 184) + 120 * (v9 - v10) + 16), v26, v28))
    {
      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v12 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        SetMaximumAllowedFrameRate();
      }
    }

    else
    {
      v13 = *(a2 + 184);
      v14 = *(a2 + 48);
      v15 = *(a2 + 192);
      if (v14 < v15)
      {
        v15 = 0;
      }

      v16 = 120 * (v14 - v15);
      if (v13)
      {
        v17 = v13 + 120 * v11;
      }

      else
      {
        v17 = v16;
      }

      v18 = *(v17 + 108);
      if (v18 == 0.0)
      {
        v19 = v27;
      }

      else
      {
        v19 = v18 * 256.0;
      }

      v20 = v19 * 0.0039062;
      v25 = v19 * 0.0039062;
      CFNumberGetValue(a1, kCFNumberFloatType, &v25);
      if (v25 <= v20)
      {
        result = H16ISP::H16ISPDevice::SetMaximumAllowedFrameRate(*(a4 + 24), *(a2 + 156), vcvtms_u32_f32(v25 * 256.0));
        if (result)
        {
          v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v22 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            SetMaximumAllowedFrameRate();
          }

          result = 4294954514;
        }

        v23 = v25;
        *(a2 + 60) = v25;
        if (v23 <= 30.0)
        {
          v24 = 1;
        }

        else
        {
          if (v23 <= 120.0)
          {
            *(a2 + 92) = 0;
            return result;
          }

          v24 = -1;
        }

        *(a2 + 92) = v24;
        return result;
      }

      v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v21 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        SetMaximumAllowedFrameRate();
      }
    }

    return 4294954516;
  }

  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    SetMaximumAllowedFrameRate();
  }

  return 4294954612;
}

uint64_t SetMinimumFrameRate(const __CFNumber *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 48);
  v8 = *(a2 + 192);
  if (v7 < v8)
  {
    v8 = 0;
  }

  v9 = v7 - v8;
  if (H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), *(*(a2 + 184) + 120 * (v7 - v8) + 16), v27, v31))
  {
    return 4294954516;
  }

  v11 = *(a2 + 184);
  v12 = *(a2 + 48);
  v13 = *(a2 + 192);
  if (v12 < v13)
  {
    v13 = 0;
  }

  v14 = 120 * (v12 - v13);
  if (v11)
  {
    v15 = v11 + 120 * v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v15 + 108);
  v17 = v16 * 256.0;
  v18 = v16 == 0.0;
  v19 = v28;
  if (!v18)
  {
    v19 = v17;
  }

  v20 = v19 * 0.0039062;
  valuePtr = v19 * 0.0039062;
  v21 = v29 * 0.0039062;
  CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
  if ((dword_2810033B0 & 0x80000000) == 0 && H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1785950322))
  {
    v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v22 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = dword_2810033B0;
      _os_log_impl(&dword_2247DB000, v22, OS_LOG_TYPE_INFO, "Forcing Jasper FPS. Setting min and max to %d\n", buf, 8u);
    }

    v29 = dword_2810033B0 << 8;
    v20 = dword_2810033B0;
    valuePtr = dword_2810033B0;
  }

  v23 = valuePtr;
  result = 4294954516;
  if (valuePtr < v21 || valuePtr > v20 || valuePtr > *(a2 + 60))
  {
    return result;
  }

  v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v24 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v24;
    v23 = valuePtr;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = v23;
    _os_log_impl(&dword_2247DB000, v24, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting new min frame-rate: %.3f\n\n", buf, 0xCu);
    v23 = valuePtr;
  }

  v25 = *(a2 + 160);
  if (!v25)
  {
    *(a2 + 56) = v23;
    if (v23 > *(a2 + 52))
    {
      *(a2 + 52) = v23;
    }

    goto LABEL_40;
  }

  if (*(a2 + 56) <= 0.0 && v23 > 0.0)
  {
    H16ISP::H16ISPFrameReceiver::EnableFrameDoneTimer(v25, 1);
    v23 = valuePtr;
    v25 = *(a2 + 160);
  }

  *(a2 + 56) = v23;
  if (v23 <= *(a2 + 52))
  {
    goto LABEL_34;
  }

  *(a2 + 52) = v23;
  if (v25)
  {
    SetMaximumFrameRateNow(a2, a4);
    v25 = *(a2 + 160);
LABEL_34:
    if (v25)
    {
      if (*(a2 + 56) <= 0.0)
      {
        H16ISP::H16ISPFrameReceiver::EnableFrameDoneTimer(v25, 0);
        H16ISP::H16ISPDevice::SetMinimumFrameRate(*(a4 + 24), *(a2 + 156));
      }

      else
      {
        SetMinimumFrameRateNow(a2, a4);
      }
    }
  }

LABEL_40:
  if (!*(a2 + 4720))
  {
    return 0;
  }

  result = H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1785950322);
  if (result)
  {
    *buf = 0;
    H16ISP::H16ISPFilterGraphManager::GetNode(*(a2 + 4720), 11, buf);
    if (*buf)
    {
      H16ISP::H16ISPJasperDepthNode::setJasperFrameRateMin(*buf, valuePtr);
    }

    return 0;
  }

  return result;
}

uint64_t SetMaximumFrameRate(const __CFNumber *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 48);
  v8 = *(a2 + 192);
  if (v7 < v8)
  {
    v8 = 0;
  }

  if (H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), *(*(a2 + 184) + 120 * (v7 - v8) + 16), v13, v17))
  {
    return 4294954516;
  }

  valuePtr = 0.0;
  CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
  v9 = valuePtr;
  if (valuePtr > *(a2 + 60) || v14 > vcvtd_n_u64_f64(valuePtr, 8uLL))
  {
    return 4294954516;
  }

  v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v11 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    v9 = valuePtr;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v16 = v9;
    _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting new max frame-rate: %.3f\n\n", buf, 0xCu);
    v9 = valuePtr;
  }

  *(a2 + 52) = v9;
  if (v9 < *(a2 + 56))
  {
    *(a2 + 56) = v9;
    if (*(a2 + 160))
    {
      SetMinimumFrameRateNow(a2, a4);
    }
  }

  if (*(a2 + 160))
  {
    SetMaximumFrameRateNow(a2, a4);
  }

  return 0;
}

uint64_t SetChromaNoiseReductionEnabled(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = cf;
  v15 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFBooleanGetTypeID())
    {
      v8 = CFEqual(v4, *MEMORY[0x277CBED28]);
      LODWORD(v4) = v8 != 0;
      if (!H16ISP::H16ISPDevice::EnableCNR(*(a4 + 24), *(a2 + 156), v4))
      {
        v9 = 0;
        *(a2 + 4224) = v8 != 0;
        goto LABEL_7;
      }
    }

    else
    {
      LODWORD(v4) = 0;
    }
  }

  v9 = 4294954516;
LABEL_7:
  v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v10 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = "False";
    if (v4)
    {
      v11 = "True";
    }

    v13 = 136315138;
    v14 = v11;
    _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Enable CNR: %s\n\n", &v13, 0xCu);
  }

  return v9;
}

uint64_t H16ISP::H16ISPDevice::EnableCNR(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  if (a3)
  {
    bzero(v7, 0xCuLL);
    v5 = 2607;
  }

  else
  {
    bzero(v7, 0xCuLL);
    v5 = 2608;
  }

  v8 = v5;
  v9 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t SetAEMaxGain(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
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
  v8 = *(a2 + 160);
  v9 = H16ISP::H16ISPDevice::SetGainCap(*(a4 + 24), *(a2 + 156), valuePtr);
  if (v8)
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *buf = 67109376;
    v15 = valuePtr;
    v16 = 1024;
    v17 = v9;
    v11 = "H16ISPCaptureDevice: Setting Gain Cap: 0x%08X, result=0x%08X\n\n";
  }

  else
  {
    *(a2 + 96) = valuePtr;
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    *buf = 67109376;
    v15 = valuePtr;
    v16 = 1024;
    v17 = v9;
    v11 = "H16ISPCaptureDevice: Caching Gain Cap for next stream start: 0x%08X, result=0x%08X\n\n";
  }

  _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_INFO, v11, buf, 0xEu);
LABEL_14:
  if (v9)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::H16ISPDevice::SetGainCap(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 524;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t SetColorSpace(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v8 = valuePtr;
  if (valuePtr <= 2)
  {
    switch(valuePtr)
    {
      case 0:
LABEL_19:
        v13 = 0;
        v10 = 0;
        goto LABEL_20;
      case 1:
        v8 = 0;
        v13 = 0;
        goto LABEL_23;
      case 2:
        v8 = 0;
        v13 = 0;
        v10 = 2;
LABEL_20:
        v11 = 1;
        goto LABEL_24;
    }

LABEL_14:
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      SetColorSpace();
    }

    v8 = 0;
    goto LABEL_19;
  }

  if (valuePtr <= 4)
  {
    v8 = valuePtr != 3;
    v13 = 1;
LABEL_23:
    v11 = 1;
    v10 = 1;
    goto LABEL_24;
  }

  if (valuePtr == 5)
  {
    v8 = 0;
    v11 = 0;
    v10 = 2;
    v13 = 3;
    goto LABEL_24;
  }

  if (valuePtr != 6)
  {
    goto LABEL_14;
  }

  v8 = 0;
  v11 = 0;
  v13 = 3;
  v10 = 3;
LABEL_24:
  if ((*(a2 + 704) & 1) != 0 || (*(a2 + 904) & 1) != 0 || (*(a2 + 1104) & 1) != 0 || (*(a2 + 1304) & 1) != 0 || *(a2 + 1504) == 1)
  {
    if (*(a2 + 4388) != v10)
    {
      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v15 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        SetColorSpace();
      }

      return 4294954612;
    }

    if (*(a2 + 4392) != v13)
    {
      v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v16 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        SetColorSpace();
      }

      return 4294954612;
    }

    if (*(a2 + 4396) != v11)
    {
      v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v17 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        SetColorSpace();
      }

      return 4294954612;
    }

    if (*(a2 + 4400) != v8)
    {
      v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v14 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        SetColorSpace();
      }

      return 4294954612;
    }
  }

  else
  {
    *(a2 + 4392) = v13;
    *(a2 + 4396) = v11;
    *(a2 + 4400) = v8;
    *(a2 + 4388) = v10;
    ApplyColorSpaceConfiguration(a4, a2);
  }

  return 0;
}

void ApplyColorSpaceConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4396);
  if (H16ISP::H16ISPDevice::LTMGammaSet(*(a1 + 24), *(a2 + 156), *(a2 + 4392)))
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ApplyColorSpaceConfiguration();
    }
  }

  else if (H16ISP::H16ISPDevice::LTMModeSet(*(a1 + 24), *(a2 + 156), v4))
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ApplyColorSpaceConfiguration();
    }
  }

  else if (H16ISP::H16ISPDevice::EnableHDRC(*(a1 + 24), *(a2 + 156), *(a2 + 4400)))
  {
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ApplyColorSpaceConfiguration();
    }
  }

  else if (H16ISP::H16ISPDevice::SetAWBRGBColorspace(*(a1 + 24), *(a2 + 156), *(a2 + 4388)))
  {
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      ApplyColorSpaceConfiguration();
    }
  }
}

uint64_t SetStreamingYCbCrMatrix(CFTypeRef cf, uint64_t a2)
{
  v4 = *(a2 + 160);
  if (v4 && !H16ISP::H16ISPFrameReceiver::IsSuspended(v4))
  {
    return 4294954612;
  }

  if (!cf)
  {
    v6 = 0;
    goto LABEL_9;
  }

  v5 = CFGetTypeID(cf);
  if (v5 == CFStringGetTypeID())
  {
    if (CFEqual(cf, *MEMORY[0x277CC4D20]))
    {
      v6 = 1;
LABEL_9:
      result = 0;
      *(a2 + 172) = v6;
      return result;
    }

    if (CFEqual(cf, *MEMORY[0x277CC4D28]))
    {
      v6 = 2;
      goto LABEL_9;
    }
  }

  return 4294954516;
}

uint64_t SetKeypointDetectionEnabled(const void *a1, uint64_t a2)
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
  *(a2 + 4596) = v5 != 0;
  return result;
}

uint64_t SetMetadataSectionRequired(uint64_t a1, uint64_t a2, int *a3, const __CFBoolean *cf)
{
  v27 = *MEMORY[0x277D85DE8];
  if (cf && (v8 = CFGetTypeID(cf), v8 == CFBooleanGetTypeID()))
  {
    Value = CFBooleanGetValue(cf);
    v10 = Value;
    v11 = Value != 0;
    if ((a3[1] & 1) == 0 && Value)
    {
      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v12 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        SetMetadataSectionRequired();
      }

      return 4294954514;
    }

    if (*(a2 + 160))
    {
      if (*(a3 + 5) == v11)
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
      result = H16ISP::H16ISPDevice::SetMetadataRequired(*(a1 + 24), *(a2 + 156), *a3, 0, Value != 0);
      if (result)
      {
        v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v15 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = "disable";
          v17 = *a3;
          v18 = *(a2 + 156);
          if (v10)
          {
            v16 = "enable";
          }

          v19 = 136315906;
          v20 = "SetMetadataSectionRequired";
          v21 = 2080;
          v22 = v16;
          v23 = 1024;
          v24 = v17;
          v25 = 1024;
          v26 = v18;
          _os_log_error_impl(&dword_2247DB000, v15, OS_LOG_TYPE_ERROR, "%s - failed to %s metadata required section %d on channel=%u\n\n", &v19, 0x22u);
        }

        return 4294954514;
      }

      *(a3 + 5) = v11;
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
      SetMetadataSectionRequired();
    }

    return 4294954516;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetMetadataRequired(H16ISP::H16ISPDevice *a1, __int16 a2, __int16 a3, int a4, __int16 a5)
{
  bzero(v11, 0x14uLL);
  v12 = 335;
  v13 = a2;
  v14 = a4;
  v15 = a3;
  v16 = a5;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v11, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t SetLumaHistogramEnabled(const __CFBoolean *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && (v7 = CFGetTypeID(a1), v7 == CFBooleanGetTypeID()))
  {
    Value = CFBooleanGetValue(a1);
    v9 = Value != 0;
    if (!*(a2 + 160))
    {
      v12 = Value;
      if (H16ISP::H16ISPDevice::EnableYCCHistogram(*(a4 + 24), *(a2 + 156), Value != 0))
      {
        v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v13 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          SetLumaHistogramEnabled();
        }
      }

      else
      {
        result = H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), *(a2 + 4324), v12 != 0);
        if (!result)
        {
          *(a2 + 4328) = v9;
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
          SetLumaHistogramEnabled();
        }
      }

      return 4294954514;
    }

    if (*(a2 + 4328) == v9)
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
      SetLumaHistogramEnabled();
    }

    return 4294954516;
  }
}

uint64_t H16ISP::H16ISPDevice::EnableYCCHistogram(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2616;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t SetContentAwareEnhancement(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v8 = *(a2 + 160);
  if (v8 && !H16ISP::H16ISPFrameReceiver::IsSuspended(v8))
  {
    return 4294954612;
  }

  v9 = CFEqual(a1, *MEMORY[0x277CBED28]) != 0;
  *(a2 + 4225) = v9;
  result = H16ISP::H16ISPDevice::EnableNRSemanticVideo(*(a4 + 24), *(a2 + 156), v9);
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
      SetContentAwareEnhancement();
    }

    return 4294954516;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableNRSemanticVideo(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2839;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAWBSemanticVideo(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2840;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t SetContentAwareAWBEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v8 = *(a2 + 160);
  if (v8 && !H16ISP::H16ISPFrameReceiver::IsSuspended(v8))
  {
    return 4294954612;
  }

  v9 = CFEqual(a1, *MEMORY[0x277CBED28]) != 0;
  *(a2 + 4226) = v9;
  result = H16ISP::H16ISPDevice::EnableAWBSemanticVideo(*(a4 + 24), *(a2 + 156), v9);
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
      SetContentAwareAWBEnabled();
    }

    return 4294954516;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetColorPostProcessingMode(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2635;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t SetColorPostProcessingMode(const __CFNumber *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 0;
  if (!a1)
  {
    return 4294954513;
  }

  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  if (H16ISP::H16ISPDevice::SetColorPostProcessingMode(*(a4 + 24), *(a2 + 156), valuePtr))
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetLSCStrength(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = CFGetTypeID(a1);
    if (v7 != CFNumberGetTypeID())
    {
      return 4294954516;
    }

    valuePtr = -1082130432;
    CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
    v8 = *&valuePtr;
  }

  else
  {
    valuePtr = -1082130432;
    v8 = -1.0;
  }

  result = H16ISP::H16ISPDevice::SetLSCStrength(*(a4 + 24), *(a2 + 156), v8);
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
      SetLSCStrength();
    }

    return 4294954514;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetLSCStrength(H16ISP::H16ISPDevice *this, int a2, float a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2636;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t SetAPSDataEnabled(const __CFBoolean *cf, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(result) = SetMetadataSectionEnabled(a4, a2, (a2 + 4276), cf);
  if (result == -12684)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t SetISPHallDataEnabled(const void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFBooleanGetTypeID()))
  {
    v5 = CFEqual(a1, *MEMORY[0x277CBED28]);
    v6 = 0;
    if (!*(a2 + 160))
    {
      *(a2 + 4145) = v5 != 0;
    }
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
    if (*(a2 + 4145))
    {
      v8 = "True";
    }

    else
    {
      v8 = "False";
    }

    v10 = 136315394;
    v11 = v8;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetMotionDataFromISPEnabled: %s (err=%d)\n\n", &v10, 0x12u);
  }

  return v6;
}

uint64_t SetISPMotionDataEnabled(const void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFBooleanGetTypeID()))
  {
    v5 = CFEqual(a1, *MEMORY[0x277CBED28]);
    v6 = 0;
    if (!*(a2 + 160))
    {
      *(a2 + 4144) = v5 != 0;
    }
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
    if (*(a2 + 4144))
    {
      v8 = "True";
    }

    else
    {
      v8 = "False";
    }

    v10 = 136315394;
    v11 = v8;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetMotionDataFromISPEnabled: %s (err=%d)\n\n", &v10, 0x12u);
  }

  return v6;
}

uint64_t SetDecouplePrimaryScalerFromStreaming(const void *a1, uint64_t a2)
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
  v6 = v5 != 0;
  if (v5)
  {
    if (*(a2 + 704))
    {
      return 4294954516;
    }
  }

  result = 0;
  *(a2 + 4198) = v6;
  return result;
}

uint64_t H16ISP::H16ISPDevice::SetTimeMachineDepth(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 296;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t CopyVideoOutputsColorInfo(uint64_t a1, __CFDictionary **a2, uint64_t a3)
{
  if (*(a3 + 698) == 1)
  {
    v5 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v7 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v7)
      {
        v8 = v7;
        *value = 0u;
        *v18 = 0u;
        GenerateBufferTagsForOutput(a3, a3 + 704, value);
        if (value[0])
        {
          CFDictionarySetValue(v8, *MEMORY[0x277CC4C00], value[0]);
        }

        if (value[1])
        {
          CFDictionarySetValue(v8, *MEMORY[0x277CC4D10], value[1]);
        }

        if (v18[0])
        {
          CFDictionarySetValue(v8, *MEMORY[0x277CC4CC0], v18[0]);
        }

        if (v18[1])
        {
          CFDictionarySetValue(v8, *MEMORY[0x277CC4C90], v18[1]);
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF6640], v8);
        CFRelease(v8);
      }

      v9 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v9)
      {
        v10 = v9;
        *value = 0u;
        *v18 = 0u;
        GenerateBufferTagsForOutput(a3, a3 + 904, value);
        if (value[0])
        {
          CFDictionarySetValue(v10, *MEMORY[0x277CC4C00], value[0]);
        }

        if (value[1])
        {
          CFDictionarySetValue(v10, *MEMORY[0x277CC4D10], value[1]);
        }

        if (v18[0])
        {
          CFDictionarySetValue(v10, *MEMORY[0x277CC4CC0], v18[0]);
        }

        if (v18[1])
        {
          CFDictionarySetValue(v10, *MEMORY[0x277CC4C90], v18[1]);
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF6658], v10);
        CFRelease(v10);
      }

      v11 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v11)
      {
        v12 = v11;
        *value = 0u;
        *v18 = 0u;
        GenerateBufferTagsForOutput(a3, a3 + 1104, value);
        if (value[0])
        {
          CFDictionarySetValue(v12, *MEMORY[0x277CC4C00], value[0]);
        }

        if (value[1])
        {
          CFDictionarySetValue(v12, *MEMORY[0x277CC4D10], value[1]);
        }

        if (v18[0])
        {
          CFDictionarySetValue(v12, *MEMORY[0x277CC4CC0], v18[0]);
        }

        if (v18[1])
        {
          CFDictionarySetValue(v12, *MEMORY[0x277CC4C90], v18[1]);
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF6628], v12);
        CFRelease(v12);
      }

      v13 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v13)
      {
        v14 = v13;
        *value = 0u;
        *v18 = 0u;
        GenerateBufferTagsForOutput(a3, a3 + 1304, value);
        if (value[0])
        {
          CFDictionarySetValue(v14, *MEMORY[0x277CC4C00], value[0]);
        }

        if (value[1])
        {
          CFDictionarySetValue(v14, *MEMORY[0x277CC4D10], value[1]);
        }

        if (v18[0])
        {
          CFDictionarySetValue(v14, *MEMORY[0x277CC4CC0], v18[0]);
        }

        if (v18[1])
        {
          CFDictionarySetValue(v14, *MEMORY[0x277CC4C90], v18[1]);
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF6660], v14);
        CFRelease(v14);
      }

      result = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (result)
      {
        v16 = result;
        *value = 0u;
        *v18 = 0u;
        GenerateBufferTagsForOutput(a3, a3 + 1504, value);
        if (value[0])
        {
          CFDictionarySetValue(v16, *MEMORY[0x277CC4C00], value[0]);
        }

        if (value[1])
        {
          CFDictionarySetValue(v16, *MEMORY[0x277CC4D10], value[1]);
        }

        if (v18[0])
        {
          CFDictionarySetValue(v16, *MEMORY[0x277CC4CC0], v18[0]);
        }

        if (v18[1])
        {
          CFDictionarySetValue(v16, *MEMORY[0x277CC4C90], v18[1]);
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF6668], v16);
        CFRelease(v16);
        result = 0;
      }
    }

    else
    {
      result = 4294954510;
    }
  }

  else
  {
    Mutable = 0;
    result = 4294954509;
  }

  *a2 = Mutable;
  return result;
}

void GenerateBufferTagsForOutput(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v5 = a1 + 1304;
  v6 = a1 + 1504;
  if (a1 + 704 == a2 || a1 + 904 == a2 || a1 + 1104 == a2 || v5 == a2 || v6 == a2)
  {
    v9 = v5 == a2 || v6 == a2;
    v10 = *(a1 + 4388);
    if (v10 != 3)
    {
      v11 = MEMORY[0x277CC4C18];
      if (v10 != 2)
      {
        if (v10 == 1)
        {
          if (v9 || (*(a1 + 4400) & 1) == 0)
          {
            v11 = MEMORY[0x277CC4C30];
          }
        }

        else
        {
          v11 = MEMORY[0x277CC4C20];
        }
      }

      *a3 = *v11;
    }

    v12 = 172;
    if (v9)
    {
      v12 = 176;
    }

    v13 = ColorRangeForOutputWithMatrix(a1, a2, *(a1 + v12));
    v14 = MEMORY[0x277CC4D18];
    v15 = MEMORY[0x277CC4D28];
    if (v13 != 2)
    {
      v15 = MEMORY[0x277CC4D20];
    }

    if (v13 == 4)
    {
      v15 = MEMORY[0x277CC4D18];
    }

    *(a3 + 8) = *v15;
    if (!v9 && (*(a1 + 4400) & 1) != 0)
    {
      *(a3 + 8) = *v14;
    }

    v16 = *(a1 + 4392);
    if (v16 == 1)
    {
      v18 = MEMORY[0x277CC4CD0];
    }

    else
    {
      if (v16 == 3)
      {
        *(a3 + 16) = 0;
        if (*(a1 + 4388) == 3)
        {
          v17 = MEMORY[0x277CC4CA0];
        }

        else
        {
          v17 = MEMORY[0x277CC4C98];
        }

        *(a3 + 24) = *v17;
        return;
      }

      v18 = MEMORY[0x277CC4CD8];
    }

    *(a3 + 16) = *v18;
    *(a3 + 24) = 0;
    return;
  }

  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    GenerateBufferTagsForOutput();
  }
}

uint64_t SetStreamingTuningProfile(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (!a1)
  {
    goto LABEL_9;
  }

  v8 = CFGetTypeID(a1);
  if (v8 != CFNumberGetTypeID())
  {
    goto LABEL_9;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  v9 = 0;
  if (valuePtr == *(a2 + 4424))
  {
    goto LABEL_10;
  }

  if (!valuePtr)
  {
    v15 = 0;
    goto LABEL_20;
  }

  if (valuePtr != 1)
  {
LABEL_9:
    v9 = 4294954516;
    goto LABEL_10;
  }

  v10 = *(a2 + 160);
  if (!v10)
  {
    v11 = 1;
    goto LABEL_17;
  }

  if (!H16ISP::H16ISPFrameReceiver::IsSuspended(v10))
  {
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v17 = 0;
    H16ISP::H16ISPFrameReceiver::getOutputSize(*(a2 + 160), &v20 + 1, &v20, &v19 + 1, &v19, &v18, &v17);
    if ((v18 - 31) >= 6 && v18 != 1)
    {
      goto LABEL_25;
    }

    v15 = valuePtr != 0;
LABEL_20:
    v9 = H16ISP::H16ISPDevice::SetProResSharpeningTuning(*(a4 + 24), *(a2 + 156), v15);
    if (!v9)
    {
      v11 = valuePtr;
      goto LABEL_27;
    }

    v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
    {
      v16 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      SetStreamingTuningProfile();
    }

LABEL_25:
    v9 = 4294954514;
    goto LABEL_10;
  }

  v11 = valuePtr;
LABEL_17:
  v9 = 0;
LABEL_27:
  *(a2 + 4424) = v11;
LABEL_10:
  v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
  {
    v12 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a2 + 4424);
    valuePtr = 136315650;
    v22 = "SetStreamingTuningProfile";
    v23 = 1024;
    v24 = v13;
    v25 = 1024;
    v26 = v9;
    _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_INFO, "%s - ISP tuning profile = %d (err = %d)\n", &valuePtr, 0x18u);
  }

  return v9;
}

uint64_t SetMainToSIFRFrameRateRatio(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  valuePtr = 1;
  CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr <= 0)
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      SetMainToSIFRFrameRateRatio();
    }

    return 4294954516;
  }

  result = H16ISP::H16ISPDevice::SetSIFRSkipInterval(*(a4 + 24), *(a2 + 156), valuePtr);
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
      SetMainToSIFRFrameRateRatio();
    }

    return 4294954514;
  }

  else
  {
    *(a2 + 64) = valuePtr;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetSIFRSkipInterval(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  if (*(this + 1167) < a2)
  {
    return 3758097090;
  }

  v9 = v3;
  v10 = v4;
  v6 = 0x100800000000;
  v7 = a2;
  v8 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, &v6, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableDolbyVisionMetadata(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 4103;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t ColorRangeForOutputWithMatrix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((H16ISP::getFrameFormatMetaInfo(*(a2 + 16), &v11) & 1) == 0)
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ColorRangeForOutputWithMatrix();
    }
  }

  if (BYTE8(v11) == 1)
  {
    if (a3 == 2)
    {
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        ColorRangeForOutputWithMatrix();
      }
    }

    if (*(a1 + 4392) == 3)
    {
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        ColorRangeForOutputWithMatrix();
      }
    }

    return 0;
  }

  if (*(a1 + 4392) == 3)
  {
    return 4;
  }

  if ((a3 - 1) < 2)
  {
    return a3;
  }

  if (a3)
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ColorRangeForOutputWithMatrix();
    }

    return 0;
  }

  if (*(a2 + 20) <= 959)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t SetAEFaceDetectionMetering(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  v30 = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF55C0]);
  if (!Value)
  {
    return 4294954516;
  }

  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
  v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5648]);
  if (!v9)
  {
    return 4294954516;
  }

  CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
  v10 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5610]);
  if (!v10)
  {
    return 4294954516;
  }

  CFNumberGetValue(v10, kCFNumberIntType, &v30);
  v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CF56B8]);
  if (!v11)
  {
    return 4294954516;
  }

  CFNumberGetValue(v11, kCFNumberIntType, &v29);
  v12 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5690]);
  if (!v12)
  {
    return 4294954516;
  }

  CFNumberGetValue(v12, kCFNumberIntType, &v28 + 4);
  v13 = CFDictionaryGetValue(a1, *MEMORY[0x277CF55B0]);
  if (!v13)
  {
    return 4294954516;
  }

  CFNumberGetValue(v13, kCFNumberIntType, &v28);
  v14 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5560]);
  if (!v14)
  {
    return 4294954516;
  }

  CFNumberGetValue(v14, kCFNumberIntType, &v27 + 4);
  v15 = CFDictionaryGetValue(a1, *MEMORY[0x277CF55B8]);
  if (!v15)
  {
    return 4294954516;
  }

  CFNumberGetValue(v15, kCFNumberIntType, &v27);
  v16 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5680]);
  if (!v16)
  {
    return 4294954516;
  }

  CFNumberGetValue(v16, kCFNumberIntType, &v26 + 4);
  v17 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5650]);
  if (!v17)
  {
    return 4294954516;
  }

  CFNumberGetValue(v17, kCFNumberIntType, &v26);
  v18 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5568]);
  if (!v18)
  {
    return 4294954516;
  }

  CFNumberGetValue(v18, kCFNumberIntType, &v25 + 4);
  v19 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5618]);
  if (!v19)
  {
    return 4294954516;
  }

  CFNumberGetValue(v19, kCFNumberIntType, &v25);
  v20 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v20 |= 0x80000000;
  }

  v21 = H16ISP::H16ISPDevice::SetAEFDSceneMeteringConfig(*(a4 + 24), v20, SWORD2(valuePtr), valuePtr, v30, v29, SWORD2(v28), v28, SWORD2(v27), SHIWORD(v27), v27, SWORD1(v27), SWORD2(v26), SHIWORD(v26));
  if (v21)
  {
    v22 = 4294954516;
  }

  else
  {
    v22 = 0;
  }

  v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v23 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v23;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v33 = v21;
    _os_log_impl(&dword_2247DB000, v23, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetAEFDSceneMeteringConfig (result=0x%08X)\n\n", buf, 8u);
  }

  return v22;
}

uint64_t SetAEMeteringMode(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v6 |= 0x80000000;
  }

  if (!cf)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFStringGetTypeID())
  {
    return 4294954516;
  }

  if (CFEqual(*MEMORY[0x277CF56B0], cf))
  {
    v8 = 2;
    goto LABEL_12;
  }

  if (CFEqual(*MEMORY[0x277CF56A0], cf))
  {
    v8 = 3;
    goto LABEL_12;
  }

  if (!CFEqual(*MEMORY[0x277CF56A8], cf))
  {
    return 4294954516;
  }

  v8 = 4;
LABEL_12:
  if (H16ISP::H16ISPDevice::SetAEMeteringMode(*(a4 + 24), v6, v8))
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetAWBTemporalStabilizationEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  result = H16ISP::H16ISPDevice::EnableAWBTemporalStabilizer(*(a4 + 24), *(a2 + 156), v8);
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
      SetAWBTemporalStabilizationEnabled();
    }

    return 4294954514;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableAWBTemporalStabilizer(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 a3)
{
  if (*(this + 1167) < a2)
  {
    return 3758097090;
  }

  v9 = v3;
  v10 = v4;
  v6 = 0x832700000000;
  v7 = a2;
  v8 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, &v6, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t SetGroupAFWindowParams(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = *(*(a4 + 24) + 4304);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  *values = 0u;
  v50 = 0u;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = a1;
  v8 = CFGetTypeID(a1);
  if (v8 != CFDictionaryGetTypeID() || CFArrayGetCount(*(a3 + 16)) > 4)
  {
    return 4294954516;
  }

  bzero(v48, 0x270uLL);
  if (CFArrayGetCount(*(a3 + 16)) >= 1)
  {
    v34 = a4;
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *MEMORY[0x277CF3EB0];
    key = *MEMORY[0x277CF3DA0];
    cf2 = *MEMORY[0x277CBED28];
    v35 = v7;
    v36 = a3;
    do
    {
      CFArrayGetValueAtIndex(*(a3 + 16), v11);
      FigCaptureStreamGetFigBaseObject();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v15 = *(v4 + 8 + 104 * *(DerivedStorage + 156) + 8);
      value = 0;
      v16 = H16ISP::ModuleDescriptionToPortType(v15);
      if (CFDictionaryGetValueIfPresent(v7, v16, &value))
      {
        v17 = CFGetTypeID(value);
        if (v17 == CFDictionaryGetTypeID())
        {
          values[0] = value;
          Count = 1;
        }

        else
        {
          if (v17 != CFArrayGetTypeID())
          {
            v32 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v32 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v32;
            }

            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              SetGroupAFWindowParams();
            }

            return 4294954516;
          }

          Count = CFArrayGetCount(value);
          if ((Count - 17) <= 0xFFFFFFFFFFFFFFEFLL)
          {
            v33 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v33 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v33;
            }

            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              SetGroupAFWindowParams();
            }

            return 4294954516;
          }

          v58.location = 0;
          v58.length = Count;
          CFArrayGetValues(value, v58, values);
        }

        v19 = 0;
        v20 = v12;
        v21 = &v48[39 * v12];
        *(v21 + 77) = -1;
        v21[1] = 0xFFFF;
        v37 = v20;
        v22 = &v48[39 * v20 + 3] + 1;
        while (1)
        {
          v41 = 0;
          v42 = 0;
          v40 = 0;
          *v21 = *(DerivedStorage + 156);
          *(v21 + 68) = Count;
          v23 = H16ISPGetRectParamsFromDict(values[v19], &v42 + 4, &v42, &v41 + 4, &v41, &v40, 0);
          if (v23)
          {
            break;
          }

          *(v22 - 3) = (*(&v42 + 1) * 1000.0);
          v24 = (*(&v41 + 1) * 1000.0);
          *(v22 - 2) = (*&v42 * 1000.0);
          *(v22 - 1) = fmax(v24, 1.0);
          *v22 = fmax((*&v41 * 1000.0), 1.0);
          v25 = v40;
          *(v21 + v19 + 138) = v40;
          if (v25)
          {
            *(v21 + 77) ^= 1 << v19;
          }

          v26 = CFDictionaryGetValue(values[v19], v13);
          if (v26 && CFEqual(v26, cf2))
          {
            v27 = CFDictionaryGetValue(values[v19], key);
            if (!v27)
            {
              v30 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v30 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v30;
              }

              v7 = v35;
              a3 = v36;
              v28 = v37;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v45 = "SetGroupAFWindowParams";
                v46 = 2048;
                v47 = v19;
                _os_log_error_impl(&dword_2247DB000, v30, OS_LOG_TYPE_ERROR, "%s - missing FaceTrackingScale value for AF window=%ld\n", buf, 0x16u);
              }

              v9 = 4294954516;
              goto LABEL_33;
            }

            CFNumberGetValue(v27, kCFNumberSInt16Type, v21 + 6);
            *(v21 + 2) = v19;
          }

          ++v19;
          v22 += 4;
          if (Count == v19)
          {
            v9 = 0;
            v7 = v35;
            a3 = v36;
            v28 = v37;
            goto LABEL_33;
          }
        }

        v9 = v23;
        v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v29 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v29;
        }

        v7 = v35;
        a3 = v36;
        v28 = v37;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v45 = "SetGroupAFWindowParams";
          v46 = 2048;
          v47 = v19;
          _os_log_error_impl(&dword_2247DB000, v29, OS_LOG_TYPE_ERROR, "%s - failed to extract rect parameters from AF window=%ld\n", buf, 0x16u);
        }

LABEL_33:
        v12 = v28 + 1;
      }

      ++v11;
    }

    while (v11 < CFArrayGetCount(*(a3 + 16)));
    if (v9 || !v12)
    {
      return v9;
    }

    if (H16ISP::H16ISPDevice::SetMultiCamAFWindowParams(*(v34 + 24), v12, v48))
    {
      v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v31 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v31;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        SetGroupAFWindowParams();
      }
    }
  }

  return 0;
}

uint64_t SetAutoFocusMode(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v6 |= 0x80000000;
  }

  if (!cf)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFStringGetTypeID())
  {
    return 4294954516;
  }

  if (!CFEqual(*MEMORY[0x277CF3D80], cf))
  {
    if (CFEqual(*MEMORY[0x277CF3D78], cf))
    {
      v8 = H16ISP::H16ISPDevice::SetFocusMode(*(a4 + 24), v6, 1);
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
      }

      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      v12 = 67109120;
      v13 = v8;
      v10 = "H16ISPCaptureDevice: SetFocusMode (CISP_AF_FOCUS_MODE_MATRIX), result=0x%08X\n\n";
      goto LABEL_16;
    }

    return 4294954516;
  }

  v8 = H16ISP::H16ISPDevice::SetFocusMode(*(a4 + 24), v6, 0);
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
  }

  if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    goto LABEL_17;
  }

  v12 = 67109120;
  v13 = v8;
  v10 = "H16ISPCaptureDevice: SetFocusMode (CISP_AF_FOCUS_MODE_WEIGHTED_SUM), result=0x%08X\n\n";
LABEL_16:
  _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, v10, &v12, 8u);
LABEL_17:
  if (v8)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::H16ISPDevice::SetFocusMode(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31735;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t SetMatrixFocusParams(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF3E38]);
  v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3E28]);
  v10 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3E20]);
  v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3E30]);
  v12 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3E18]);
  v13 = !Value || v9 == 0;
  if (v13 || v10 == 0)
  {
    return 4294954516;
  }

  v16 = v12;
  valuePtr = 0;
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  *v23 = 0;
  CFNumberGetValue(v9, kCFNumberIntType, v23);
  *v22 = 0;
  CFNumberGetValue(v10, kCFNumberIntType, v22);
  *v21 = 0;
  if (v11)
  {
    CFNumberGetValue(v11, kCFNumberIntType, v21);
  }

  else
  {
    *v21 = 20;
  }

  *v20 = 0;
  if (v16)
  {
    CFNumberGetValue(v16, kCFNumberIntType, v20);
  }

  else
  {
    *v20 = 42;
  }

  v17 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v17 |= 0x80000000;
  }

  v18 = H16ISP::H16ISPDevice::SetAFMatrixModeConfig(*(a4 + 24), v17, valuePtr, v23[0], v22[0], v21[0], v20[0]);
  v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v19 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v26 = v18;
    _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetAFMatrixModeConfig, result=0x%08X\n\n", buf, 8u);
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

uint64_t H16ISP::H16ISPDevice::SetAFMatrixModeConfig(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7)
{
  bzero(v15, 0x18uLL);
  v16 = -31733;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t SetAFSearchPositions(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = CFGetTypeID(a1);
  if (v7 == CFArrayGetTypeID())
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *v18 = 0u;
    v19 = 0u;
    Count = CFArrayGetCount(a1);
    if (Count >= 0x100)
    {
      v9 = 256;
    }

    else
    {
      v9 = Count;
    }

    if (Count)
    {
      v10 = 0;
      if (v9 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v9;
      }

      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
        v13 = CFGetTypeID(ValueAtIndex);
        if (v13 != CFNumberGetTypeID())
        {
          break;
        }

        valuePtr = 0;
        v14 = CFArrayGetValueAtIndex(a1, v10);
        CFNumberGetValue(v14, kCFNumberIntType, &valuePtr);
        v18[v10++] = valuePtr;
        if (v11 == v10)
        {
          goto LABEL_14;
        }
      }

      LODWORD(v11) = v10;
    }

    else
    {
      LODWORD(v11) = 0;
    }

LABEL_14:
    if (v11 == v9)
    {
      v15 = *(a2 + 156);
      if (*(a2 + 4360))
      {
        if (!*(a2 + 4380))
        {
          v15 |= 0x80000000;
        }
      }

      H16ISP::H16ISPDevice::SetAFSearchPositions(*(a4 + 24), v15, v9, v18);
    }
  }

  return 4294954516;
}

uint64_t SetFocusNow(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = -536870206;
  valuePtr = 0;
  if (!a1)
  {
    goto LABEL_56;
  }

  v8 = CFGetTypeID(a1);
  if (v8 != CFDictionaryGetTypeID())
  {
    goto LABEL_56;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF44D0]);
  v10 = CFDictionaryGetValue(a1, *MEMORY[0x277CF44D8]);
  v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CF44E0]);
  v12 = CFDictionaryGetValue(a1, *MEMORY[0x277CF44B8]);
  v13 = CFDictionaryGetValue(a1, *MEMORY[0x277CF44E8]);
  v14 = CFDictionaryGetValue(a1, *MEMORY[0x277CF44C8]);
  v15 = CFDictionaryGetValue(a1, *MEMORY[0x277CF44B0]);
  v16 = CFDictionaryGetValue(a1, *MEMORY[0x277CF44C0]);
  if (Value)
  {
    v17 = v10 == 0;
  }

  else
  {
    v17 = 1;
  }

  v20 = v17 || v11 == 0 || v12 == 0 || v13 == 0;
  cf1 = v14;
  if (v20 || v14 == 0 || v15 == 0 || v16 == 0)
  {
    goto LABEL_26;
  }

  number = v16;
  v36 = a4;
  v25 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v25 |= 0x80000000;
  }

  bzero(buf, 0x2CuLL);
  LOWORD(v40) = -31723;
  *v41 = *v41 & 0x7FFF0000 | v25;
  v26 = *MEMORY[0x277CBED28];
  v41[4] = CFEqual(v12, *MEMORY[0x277CBED28]) != 0;
  v41[5] = CFEqual(Value, v26) != 0;
  CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr + 4);
  v42 = HIDWORD(valuePtr);
  if (CFEqual(v11, *MEMORY[0x277CF5E48]))
  {
    v27 = 0;
    v28 = v36;
  }

  else
  {
    v28 = v36;
    if (CFEqual(v11, *MEMORY[0x277CF5E38]))
    {
      v27 = 1;
    }

    else
    {
      if (!CFEqual(v11, *MEMORY[0x277CF5E40]))
      {
        goto LABEL_26;
      }

      v27 = 2;
    }
  }

  v43 = v27;
  CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr + 4);
  v44 = HIDWORD(valuePtr);
  if (CFEqual(v15, *MEMORY[0x277CF4488]))
  {
    v29 = 0;
    goto LABEL_42;
  }

  if (CFEqual(v15, *MEMORY[0x277CF4480]))
  {
    v29 = 1;
    goto LABEL_42;
  }

  if (!CFEqual(v15, *MEMORY[0x277CF4478]))
  {
LABEL_26:
    v24 = 4294954516;
    v4 = -536870206;
    goto LABEL_57;
  }

  v29 = 2;
LABEL_42:
  v45 = v29;
  if (!CFEqual(v14, *MEMORY[0x277CF4510]))
  {
    v4 = -536870206;
    if (CFEqual(cf1, *MEMORY[0x277CF4528]))
    {
      v30 = 1;
      goto LABEL_54;
    }

    if (CFEqual(cf1, *MEMORY[0x277CF4508]))
    {
      v30 = 2;
      goto LABEL_54;
    }

    if (CFEqual(cf1, *MEMORY[0x277CF4530]))
    {
      v30 = 3;
      goto LABEL_54;
    }

    if (CFEqual(cf1, *MEMORY[0x277CF4520]))
    {
      v30 = 4;
      goto LABEL_54;
    }

    if (CFEqual(cf1, *MEMORY[0x277CF4518]))
    {
      v30 = 5;
      goto LABEL_54;
    }

LABEL_56:
    v24 = 4294954516;
    goto LABEL_57;
  }

  v30 = 0;
LABEL_54:
  v46 = v30;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr + 4);
  v47 = HIDWORD(valuePtr);
  v31 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D98]);
  if (v31)
  {
    CFNumberGetValue(v31, kCFNumberSInt32Type, &valuePtr);
    v32 = valuePtr;
  }

  else
  {
    v32 = 0;
  }

  v48 = v32;
  v4 = H16ISP::H16ISPDevice::ISP_SendCommand(*(v28 + 24), buf, 0x2Cu, 0, 0xFFFFFFFF);
  if (v4)
  {
    v24 = 4294954516;
  }

  else
  {
    v24 = 0;
  }

LABEL_57:
  v33 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v33 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v33;
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v40 = v24;
    *v41 = 1024;
    *&v41[2] = v4;
    _os_log_impl(&dword_2247DB000, v33, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetFocusNow. err=%d, res=0x%08X\n\n", buf, 0xEu);
  }

  return v24;
}

uint64_t SetForegroundSegmentationNetwork(const void *a1, uint64_t a2)
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
  v5 = *(a2 + 4720);
  if (v5)
  {
    v7 = 0;
    H16ISP::H16ISPFilterGraphManager::GetNode(v5, 8, &v7);
    if (v7)
    {
      H16ISP::H16ISPGraphSegmentationNode::SetSegmentationNetwork(v7, valuePtr);
    }
  }

  result = 0;
  *(a2 + 4728) = valuePtr;
  return result;
}

uint64_t SetAEStability(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  *v20 = -1;
  valuePtr = -1;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 == CFNumberGetTypeID())
  {
    CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
    if (valuePtr <= 0xFF)
    {
      v8 = H16ISP::H16ISPDevice::SetAEStability(*(a4 + 24), *(a2 + 156), valuePtr);
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        v23 = valuePtr;
        v24 = 1024;
        v25 = v8;
        _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting AE Stability: 0x%02X, result=0x%08X\n\n", buf, 0xEu);
      }

      v10 = v8 == 0;
LABEL_9:
      if (v10)
      {
        return 0;
      }

      else
      {
        return 4294954516;
      }
    }

    return 4294954516;
  }

  v12 = CFGetTypeID(a1);
  if (v12 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF5518]);
  v14 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5510]);
  if (!Value || v14 == 0)
  {
    return 4294954516;
  }

  v16 = v14;
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  CFNumberGetValue(v16, kCFNumberIntType, v20);
  result = 4294954516;
  if (valuePtr <= 0xFF && *v20 <= 0xFFu)
  {
    v17 = *(a2 + 156);
    if (*(a2 + 4360) && !*(a2 + 4380))
    {
      v17 |= 0x80000000;
    }

    v18 = H16ISP::H16ISPDevice::SetAEStability(*(a4 + 24), v17, valuePtr);
    if (!v18)
    {
      v18 = H16ISP::H16ISPDevice::SetAEStability_UnstableToStable(*(a4 + 24), v17, v20[0]);
    }

    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      v23 = valuePtr;
      v24 = 1024;
      v25 = *v20;
      v26 = 1024;
      v27 = v18;
      _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting AE Stability: 0x%02X/0x%02X, result=0x%08X\n\n", buf, 0x14u);
    }

    v10 = v18 == 0;
    goto LABEL_9;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAEStability(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 538;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEStability_UnstableToStable(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 553;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t SetGroupZoomFactor(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v8 = *(*(a4 + 24) + 4304);
  v9 = CFGetTypeID(a1);
  if (v9 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  v10 = *MEMORY[0x277CBECE8];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!theDict)
  {
    return 4294954510;
  }

  v29 = a4;
  valuePtr = 1.0;
  CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
  v11 = *(a2 + 4384);
  if (CFArrayGetCount(*(a3 + 104)))
  {
    v12 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(a3 + 104), v12);
      FigCaptureStreamGetFigBaseObject();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(DerivedStorage + 4384) < v11)
      {
        v11 = *(DerivedStorage + 4384);
      }

      ++v12;
    }

    while (v12 < CFArrayGetCount(*(a3 + 104)));
  }

  if (CFArrayGetCount(*(a3 + 104)))
  {
    v15 = 0;
    v16 = v8 + 8;
    v17 = *MEMORY[0x277CF6640];
    v18 = *MEMORY[0x277CF6658];
    v19 = *MEMORY[0x277CF6628];
    while (1)
    {
      CFArrayGetValueAtIndex(*(a3 + 104), v15);
      FigCaptureStreamGetFigBaseObject();
      v20 = CMBaseObjectGetDerivedStorage();
      v21 = *(v16 + 104 * *(v20 + 156) + 8);
      v31 = 1065353216;
      Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        break;
      }

      v23 = Mutable;
      v24 = valuePtr * (v11 / *(v20 + 4384));
      if (v24 < 1.0)
      {
        v24 = 1.0;
      }

      v31 = LODWORD(v24);
      v25 = CFNumberCreate(v10, kCFNumberFloatType, &v31);
      CFDictionaryAddValue(v23, v17, v25);
      CFDictionaryAddValue(v23, v18, v25);
      CFDictionaryAddValue(v23, v19, v25);
      v26 = H16ISP::ModuleDescriptionToPortType(v21);
      CFDictionaryAddValue(theDict, v26, v23);
      CFRelease(v23);
      CFRelease(v25);
      if (++v15 >= CFArrayGetCount(*(a3 + 104)))
      {
        goto LABEL_15;
      }
    }

    CFRelease(theDict);
    return 4294954510;
  }

LABEL_15:
  v27 = SetGroupZoomFactorsByOutput(theDict, v14, a3, v29);
  CFRelease(theDict);
  return v27;
}

uint64_t SetGroupZoomFactorsByOutput(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36[6] = *MEMORY[0x277D85DE8];
  v6 = *(*(a4 + 24) + 4304);
  v34[0] = 0;
  v34[1] = 0;
  v33 = v34;
  valuePtr = MEMORY[0x277CF6640];
  *(std::__tree<std::__value_type<__CFString const*,eCIspOutputSelect>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,eCIspOutputSelect>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,eCIspOutputSelect>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v33, MEMORY[0x277CF6640]) + 10) = 0;
  valuePtr = MEMORY[0x277CF6658];
  *(std::__tree<std::__value_type<__CFString const*,eCIspOutputSelect>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,eCIspOutputSelect>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,eCIspOutputSelect>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v33, MEMORY[0x277CF6658]) + 10) = 1;
  valuePtr = MEMORY[0x277CF6628];
  *(std::__tree<std::__value_type<__CFString const*,eCIspOutputSelect>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,eCIspOutputSelect>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,eCIspOutputSelect>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(&v33, MEMORY[0x277CF6628]) + 10) = 2;
  if (a1 && (v7 = CFGetTypeID(a1), v7 == CFDictionaryGetTypeID()))
  {
    v8 = 0;
    v9 = 0;
    v31 = v6 + 8;
    v28 = a1;
    v29 = a3;
    while (v8 < CFArrayGetCount(*(a3 + 104)))
    {
      CFArrayGetValueAtIndex(*(a3 + 104), v8);
      FigCaptureStreamGetFigBaseObject();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v11 = *(v31 + 104 * *(DerivedStorage + 156) + 8);
      v12 = H16ISP::ModuleDescriptionToPortType(v11);
      Value = CFDictionaryGetValue(a1, v12);
      if (Value)
      {
        v32 = v9;
        v30 = &v36[v9];
        *v30 = *(DerivedStorage + 156);
        v14 = v30 + 1;
        for (i = 1039; i != 1042; ++i)
        {
          *v14++ = vcvts_n_s32_f32(*(DerivedStorage + 4 * i), 0xAuLL);
        }

        v16 = v33;
        if (v33 != v34)
        {
          do
          {
            v17 = v16[4];
            v18 = *(v16 + 10);
            LODWORD(valuePtr) = 1065353216;
            v19 = CFDictionaryGetValue(Value, v17);
            if (v19)
            {
              CFNumberGetValue(v19, kCFNumberFloatType, &valuePtr);
              v20 = *&valuePtr;
              *(DerivedStorage + 4156 + 4 * v18) = valuePtr;
              v30[v18 + 1] = vcvts_n_s32_f32(v20, 0xAuLL);
            }

            v21 = v16[1];
            if (v21)
            {
              do
              {
                v22 = v21;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              do
              {
                v22 = v16[2];
                v23 = *v22 == v16;
                v16 = v22;
              }

              while (!v23);
            }

            v16 = v22;
          }

          while (v22 != v34);
        }

        a1 = v28;
        a3 = v29;
        if (v11 == 1919246706)
        {
          v24 = *(a4 + 272);
          if (v24)
          {
            if (H16ISP::H16ISPTimeOfFlightColorSynchronizer::isTeleDensificationEnabled(v24))
            {
              if ((*(DerivedStorage + 4369) & 1) == 0)
              {
                LimitZoomFactorForTeleDensification(DerivedStorage, v30, "SetGroupZoomFactorsByOutput");
              }
            }
          }
        }

        v9 = v32 + 1;
      }

      ++v8;
    }

    if (v9)
    {
      if (H16ISP::H16ISPDevice::SetMultiCamZoomFactor(*(a4 + 24), v9, v36))
      {
        v25 = 4294954514;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 4294954514;
    }
  }

  else
  {
    v25 = 4294954516;
  }

  std::__tree<std::__value_type<CalibrationDataTypes,Input *>,std::__map_value_compare<CalibrationDataTypes,std::__value_type<CalibrationDataTypes,Input *>,std::less<CalibrationDataTypes>,true>,std::allocator<std::__value_type<CalibrationDataTypes,Input *>>>::destroy(&v33, v34[0]);
  return v25;
}

void *std::__tree<std::__value_type<__CFString const*,eCIspOutputSelect>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,eCIspOutputSelect>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,eCIspOutputSelect>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const* const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

uint64_t SetAEConvergenceSpeed(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  valuePtr = -1;
  v4 = &gCaptureDeviceCFPrefs[44 * *(a2 + 156)];
  if (v4[182] < 0x100 || v4[181] < 0x100)
  {
    return 0;
  }

  if (!cf)
  {
    return 4294954516;
  }

  v9 = CFGetTypeID(cf);
  if (v9 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
  v10 = valuePtr;
  if (valuePtr > 0xFF)
  {
    return 4294954516;
  }

  v11 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v11 |= 0x80000000;
  }

  v12 = H16ISP::H16ISPDevice::SetAEConvergenceSpeed2Way(*(a4 + 24), v11, valuePtr, valuePtr);
  v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v13 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    v16 = valuePtr;
    v17 = 1024;
    v18 = v10;
    v19 = 1024;
    v20 = v12;
    _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting AE Convergence Speed - long2shortSpeed:0x%02X, short2longSpeed:0x%02X, result=0x%08X\n\n", buf, 0x14u);
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

uint64_t H16ISP::H16ISPDevice::SetAEConvergenceSpeed2Way(H16ISP::H16ISPDevice *this, int a2, char a3, char a4)
{
  bzero(v9, 0x10uLL);
  v10 = 579;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMultiCamZoomFactor(H16ISP::H16ISPDevice *a1, unsigned int a2, const void *a3)
{
  if (a2 > 6)
  {
    return 3758097090;
  }

  *&v12[82] = v3;
  v13 = v4;
  bzero(v9, 0x3CuLL);
  v10 = 13314;
  v11 = a2;
  memcpy(v12, a3, 8 * a2);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x3Cu, 0, 0xFFFFFFFF);
}

uint64_t SetExposureBias(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF5998]);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
      if (!HIWORD(valuePtr))
      {
        v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D98]);
        if (v9)
        {
          CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
        }

        goto LABEL_10;
      }
    }

    return 4294954516;
  }

  v10 = CFGetTypeID(a1);
  if (v10 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr + 4);
  if (HIWORD(valuePtr))
  {
    return 4294954516;
  }

LABEL_10:
  v12 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v12 |= 0x80000000;
  }

  v13 = H16ISP::H16ISPDevice::SetExposureBias(*(a4 + 24), v12, SWORD2(valuePtr), valuePtr);
  v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v14 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    v17 = HIDWORD(valuePtr);
    v18 = 1024;
    v19 = valuePtr;
    v20 = 1024;
    v21 = v13;
    _os_log_impl(&dword_2247DB000, v14, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting Exposure Bias: 0x%08X, tag=0x%08X, result=0x%08X\n\n", buf, 0x14u);
  }

  if (v13)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::H16ISPDevice::SetExposureBias(H16ISP::H16ISPDevice *this, int a2, __int16 a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = 516;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t CopyAEMaxGain(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::GetGainCap(*(a5 + 24), *(a3 + 156), &valuePtr))
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

uint64_t H16ISP::H16ISPDevice::GetGainCap(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 523;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  *a3 = v10;
  return result;
}

uint64_t SetHistogramParams(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  result = CFDictionaryGetValue(a1, *MEMORY[0x277CF55C8]);
  if (result)
  {
    v9 = result;
    v10 = CFGetTypeID(result);
    if (v10 == CFBooleanGetTypeID())
    {
      v11 = *(a2 + 156);
      if (*(a2 + 4360) && !*(a2 + 4380))
      {
        v11 |= 0x80000000;
      }

      v12 = *(a4 + 24);
      v13 = CFEqual(v9, *MEMORY[0x277CBED28]) != 0;
      v14 = H16ISP::H16ISPDevice::EnableHistogram(v12, v11, v13);
      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v15 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16[0] = 67109120;
        v16[1] = v14;
        _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting Histogram Parameters (result=0x%08X)\n\n", v16, 8u);
      }

      if (v14)
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
      return 0;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableHistogram(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2575;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t CopyGroupMinSkippingRatio(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4)
{
  valuePtr = *(a4 + 112);
  *a2 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  return 0;
}

uint64_t SetGroupMinSkippingRatio(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  if (*(a3 + 112) == valuePtr)
  {
    return 0;
  }

  v9 = *(a3 + 104);
  if (v9)
  {
    if (GetNumberOfActiveChannels(v9))
    {
      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        SetGroupMinSkippingRatio();
      }

      return 4294954516;
    }

    v11 = *(a3 + 104);
    if (v11)
    {
      v12 = *(*(a4 + 24) + 4304);
      if (CFArrayGetCount(v11))
      {
        v13 = 0;
        v14 = 0;
        v15 = v12 + 8;
        do
        {
          CFArrayGetValueAtIndex(*(a3 + 104), v13);
          FigCaptureStreamGetFigBaseObject();
          v14 |= *(v15 + 104 * *(CMBaseObjectGetDerivedStorage() + 156) + 8) == 1785950322;
          ++v13;
        }

        while (v13 < CFArrayGetCount(*(a3 + 104)));
        if (v14)
        {
          goto LABEL_26;
        }
      }
    }
  }

  CFArrayGetValueAtIndex(*(a3 + 16), 0);
  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = *(DerivedStorage + 156);
  if (*(DerivedStorage + 4360) && !*(DerivedStorage + 4380))
  {
    v17 |= 0x80000000;
  }

  if (!H16ISP::H16ISPDevice::SetMinimumFrameSkippingRatio(*(a4 + 24), v17, valuePtr))
  {
LABEL_26:
    result = 0;
    *(a3 + 112) = valuePtr;
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
      SetGroupMinSkippingRatio();
    }

    return 4294954514;
  }

  return result;
}

uint64_t SetGroupMaxSlaveStreams(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 0;
  bzero(&v14, 4uLL);
  v7 = *(a3 + 104);
  if (!v7)
  {
    return 4294954516;
  }

  NumberOfActiveChannels = GetNumberOfActiveChannels(v7);
  result = 4294954516;
  if (!a1 || NumberOfActiveChannels)
  {
    return result;
  }

  v10 = CFGetTypeID(a1);
  if (v10 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  LOWORD(v14) = valuePtr;
  CFArrayGetValueAtIndex(*(a3 + 104), 0);
  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *(DerivedStorage + 156);
  if (*(DerivedStorage + 4360) && !*(DerivedStorage + 4380))
  {
    v12 |= 0x80000000;
  }

  result = H16ISP::H16ISPDevice::SetMultiCamSlaveProperties(*(a4 + 24), v12, 1, v14);
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
      SetGroupMaxSlaveStreams();
    }

    return 4294954514;
  }

  else
  {
    *(a3 + 116) = valuePtr;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetMultiCamSlaveProperties(H16ISP::H16ISPDevice *a1, int a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = 13316;
  v12 = a4;
  v13 = a3;
  v11 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t SetGroupMaxSlaveStreamsProcessingEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  bzero(&v20, 4uLL);
  v7 = *(a3 + 104);
  if (!v7)
  {
    return 4294954516;
  }

  if (CFArrayGetCount(v7) >= 1)
  {
    v8 = 0;
    while (1)
    {
      if (CFArrayGetValueAtIndex(*(a3 + 104), v8))
      {
        FigCaptureStreamGetFigBaseObject();
        v9 = *(CMBaseObjectGetDerivedStorage() + 160);
        if (v9)
        {
          if (!H16ISP::H16ISPFrameReceiver::IsSuspended(v9))
          {
            break;
          }
        }
      }

      if (++v8 >= CFArrayGetCount(*(a3 + 104)))
      {
        goto LABEL_8;
      }
    }

    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "SetGroupMaxSlaveStreamsProcessingEnabled";
      _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "%s - Unable to change processing while stream is active\n", buf, 0xCu);
    }

    return 4294954516;
  }

LABEL_8:
  if (!a1)
  {
    return 4294954516;
  }

  v10 = CFGetTypeID(a1);
  if (v10 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  isTeleDensificationForceWideAllowed = H16ISP::H16ISPTimeOfFlightColorSynchronizer::isTeleDensificationForceWideAllowed(*(a4 + 272), *(a3 + 8));
  v12 = valuePtr;
  if (isTeleDensificationForceWideAllowed)
  {
    v13 = valuePtr;
    Count = CFArrayGetCount(*(a3 + 104));
    v12 = valuePtr;
    if (Count - 1 > v13)
    {
      v12 = ++valuePtr;
    }
  }

  HIWORD(v20) = v12;
  CFArrayGetValueAtIndex(*(a3 + 104), 0);
  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = *(DerivedStorage + 156);
  if (*(DerivedStorage + 4360) && !*(DerivedStorage + 4380))
  {
    v16 |= 0x80000000;
  }

  result = H16ISP::H16ISPDevice::SetMultiCamSlaveProperties(*(a4 + 24), v16, 2, v20);
  if (result)
  {
    v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v18 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      SetGroupMaxSlaveStreams();
    }

    return 4294954514;
  }

  else
  {
    *(a3 + 124) = valuePtr;
  }

  return result;
}

unint64_t H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::isTeleDensificationForceWideAllowed(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 236) == 1)
  {
    SensorChannel = H16ISP::H16ISPDevice::getSensorChannel(a3, 1919246706, 1852793709);
    if (SensorChannel == -1 || *(*(a3 + 4304) + 104 * SensorChannel + 60) != a2)
    {
      goto LABEL_10;
    }

    v7 = *(a1 + 232);
    if (v7 == 2)
    {
      LOBYTE(v10) = 1;
      return v10 & 1;
    }

    if (v7 == 1)
    {
      v8 = *(a1 + 208) - 66;
      v9 = v8 >= 0x21;
      v10 = 0x180000001uLL >> v8;
      if (v9)
      {
        LOBYTE(v10) = 0;
      }
    }

    else
    {
LABEL_10:
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t SetGroupMaxSlaveTimeMachines(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 0;
  v5 = *(a3 + 104);
  if (!v5)
  {
    return 4294954516;
  }

  NumberOfActiveChannels = GetNumberOfActiveChannels(v5);
  result = 4294954516;
  if (!a1 || NumberOfActiveChannels)
  {
    return result;
  }

  v10 = CFGetTypeID(a1);
  if (v10 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  CFArrayGetValueAtIndex(*(a3 + 104), 0);
  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *(DerivedStorage + 156);
  if (*(DerivedStorage + 4360) && !*(DerivedStorage + 4380))
  {
    v12 |= 0x80000000;
  }

  result = H16ISP::H16ISPDevice::SetMultiCamTimeMachineProperties(*(a4 + 24), v12, valuePtr);
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
      SetGroupMaxSlaveTimeMachines();
    }

    return 4294954514;
  }

  else
  {
    *(a3 + 120) = valuePtr;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetMultiCamTimeMachineProperties(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 13317;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t SetGroupMasterConfiguration(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID() || !*(a3 + 104))
  {
    return 4294954516;
  }

  v65 = a4;
  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF6810]);
  v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6800]);
  v10 = CFDictionaryGetValue(a1, *MEMORY[0x277CF67F8]);
  v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6808]);
  v12 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6818]);
  if (Value)
  {
    v13 = 0;
  }

  else
  {
    v13 = v9 == 0;
  }

  v15 = v13 && v10 == 0 && v11 == 0;
  theDict = v12;
  if (v15 && v12 == 0)
  {
    CFArrayGetCount(*(a3 + 104));
    Value = 0;
    v9 = 0;
    goto LABEL_74;
  }

  if (*(a3 + 8) != 1)
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a3 + 104));
  v18 = MEMORY[0x277CBEEE8];
  if (Value)
  {
    if (!CFEqual(Value, *MEMORY[0x277CBEEE8]))
    {
      v69.location = 0;
      v69.length = Count;
      if (!CFArrayContainsValue(*(a3 + 104), v69, Value))
      {
        return 4294954516;
      }
    }
  }

  if (v9)
  {
    if (!CFEqual(v9, *v18))
    {
      v70.location = 0;
      v70.length = Count;
      if (!CFArrayContainsValue(*(a3 + 104), v70, v9))
      {
        return 4294954516;
      }
    }
  }

  if (v10)
  {
    if (!CFEqual(v10, *v18))
    {
      v71.location = 0;
      v71.length = Count;
      if (!CFArrayContainsValue(*(a3 + 104), v71, v10))
      {
        return 4294954516;
      }
    }
  }

  if (v11)
  {
    if (!CFEqual(v11, *v18))
    {
      v72.location = 0;
      v72.length = Count;
      if (!CFArrayContainsValue(*(a3 + 104), v72, v11))
      {
        return 4294954516;
      }
    }
  }

  if (v10 && CFEqual(v9, *v18))
  {
    v9 = v10;
  }

  if (v11 && CFEqual(v9, *v18))
  {
    v9 = v11;
  }

  if (Value && CFEqual(Value, *v18))
  {
    Value = CFArrayGetValueAtIndex(*(a3 + 104), 0);
  }

  if (!theDict)
  {
LABEL_74:
    if (CFArrayGetCount(*(a3 + 104)))
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a3 + 104), v36);
        FigCaptureStreamGetFigBaseObject();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v42 = DerivedStorage;
        v43 = DerivedStorage + 4096;
        if (*(DerivedStorage + 4369))
        {
          v37 = DerivedStorage;
        }

        if (Value)
        {
          v44 = CFEqual(ValueAtIndex, Value);
          *(v43 + 273) = v44 != 0;
          if (v44)
          {
            v39 = v42;
          }

          SuspendResumeStream(v65, v42);
        }

        if (v9)
        {
          v45 = CFEqual(ValueAtIndex, v9);
          *(v43 + 274) = v45 != 0;
          if (v45)
          {
            v38 = v42;
          }
        }

        ++v36;
      }

      while (v36 < CFArrayGetCount(*(a3 + 104)));
      if (v37 != v39)
      {
        OnPreviewMasterChanged(v65, v37, v39, "OSStatus SetGroupMasterConfiguration(CFTypeRef, H16ISPCaptureStream *, H16ISPCaptureGroup *, H16ISPCaptureDevice *)");
      }

      a4 = v65;
      if (Value && v39 && H16ISP::H16ISPDevice::SetMaster(*(v65 + 24), *(v39 + 156), *(v39 + 156)))
      {
        return 4294954514;
      }

      if (!v9)
      {
        return 0;
      }

      if (v38)
      {
        SensorChannel = *(v38 + 156);
        v47 = 1;
        goto LABEL_96;
      }
    }

    else if (!v9)
    {
      return 0;
    }

    SensorChannel = H16ISP::H16ISPDevice::getSensorChannel(*(a4 + 24), 1919246706, 1852793709);
    v47 = 0;
LABEL_96:
    if (!H16ISP::H16ISPDevice::SetStatsMaster(*(a4 + 24), SensorChannel, v47))
    {
      return 0;
    }

    return 4294954514;
  }

  memset(v67, 0, sizeof(v67));
  if (!CFArrayGetCount(*(a3 + 104)))
  {
    v50 = 0;
    v51 = 0;
    v49 = 0;
    v52 = 0;
    v53 = 0;
    goto LABEL_102;
  }

  v19 = 0;
  v56 = 0;
  v62 = 0;
  v54 = 0;
  v20 = 0;
  v55 = 0;
  v60 = 0;
  key = *MEMORY[0x277CF62B0];
  cf2 = *MEMORY[0x277CBED28];
  v58 = *MEMORY[0x277CF62B8];
  v57 = *MEMORY[0x277CF62A8];
  do
  {
    v64 = v20;
    v21 = CFArrayGetValueAtIndex(*(a3 + 104), v19);
    FigCaptureStreamGetFigBaseObject();
    v22 = CMBaseObjectGetDerivedStorage();
    v23 = *(*(*(a4 + 24) + 4304) + 104 * *(v22 + 156) + 16);
    v24 = H16ISP::ModuleDescriptionToPortType(v23);
    v25 = CFDictionaryGetValue(theDict, v24);
    if (v25)
    {
      v26 = v25;
      v27 = CFDictionaryGetValue(v25, key);
      *(v22 + 4371) = CFEqual(v27, cf2) != 0;
      if (v23 == 1919246706)
      {
        if (H16ISP::H16ISPTimeOfFlightColorSynchronizer::isTeleDensificationEnabled(*(v65 + 272)) && H16ISP::H16ISPTimeOfFlightColorSynchronizer::isTeleDensificationForceWideAllowed(*(v65 + 272), *(a3 + 8)) && (*(v22 + 4371) & 1) == 0)
        {
          if (H16ISP::H16ISPTimeOfFlightColorSynchronizer::isVerbose(*(v65 + 272)))
          {
            v35 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v35 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v35;
            }

            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 0;
              _os_log_impl(&dword_2247DB000, v35, OS_LOG_TYPE_DEFAULT, "TimeOfFlightAutoFocusAssistant: Forcing wide\n", valuePtr, 2u);
            }
          }

          v28 = 1;
          *(v22 + 4371) = 1;
        }

        else
        {
          v28 = 0;
        }

        H16ISP::H16ISPTimeOfFlightColorSynchronizer::setWideForcedToStream(*(v65 + 272), v28);
      }

      v29 = CFDictionaryGetValue(v26, v58);
      *(v22 + 4372) = CFEqual(v29, cf2) != 0;
      *valuePtr = 0;
      v30 = CFDictionaryGetValue(v26, v57);
      CFNumberGetValue(v30, kCFNumberSInt32Type, valuePtr);
      v31 = *valuePtr;
      *(v22 + 4376) = *valuePtr;
      *(v22 + 4373) = v31 > 1;
      v32 = &v67[v62];
      *v32 = *(v22 + 156);
      *(v32 + 2) = v31;
      *(v32 + 12) = *(v22 + 4372);
      *(v32 + 1) = *(v22 + 4371) ^ 1;
      ++v62;
    }

    v20 = v64;
    a4 = v65;
    if (*(v22 + 4369))
    {
      v20 = v22;
    }

    if (Value)
    {
      v33 = CFEqual(v21, Value);
      *(v22 + 4369) = v33 != 0;
      if (!v33)
      {
        goto LABEL_54;
      }
    }

    else if (!*(v22 + 4369))
    {
LABEL_54:
      if (v9)
      {
        goto LABEL_55;
      }

      goto LABEL_65;
    }

    WORD2(v56) = *(v22 + 156);
    if (v23 == 1919246706)
    {
      H16ISP::H16ISPTimeOfFlightColorSynchronizer::setWideForcedToStream(*(v65 + 272), 0);
    }

    v54 = v22;
    if (v9)
    {
LABEL_55:
      v34 = CFEqual(v21, v9);
      *(v22 + 4370) = v34 != 0;
      if (!v34)
      {
        goto LABEL_57;
      }

LABEL_56:
      v55 = 1;
      LODWORD(v56) = *(v22 + 156);
      goto LABEL_57;
    }

LABEL_65:
    if (*(v22 + 4370))
    {
      goto LABEL_56;
    }

LABEL_57:
    if (*(v22 + 4372) == 1)
    {
      v60 += *(v22 + 4369) ^ 1;
    }

    SuspendResumeStream(v65, v22);
    ++v19;
  }

  while (v19 < CFArrayGetCount(*(a3 + 104)));
  if (v20 != v54)
  {
    OnPreviewMasterChanged(v65, v20, v54, "SetGroupMasterConfiguration");
  }

  v49 = v62;
  v51 = v56;
  v50 = WORD2(v56);
  v52 = v55;
  v53 = v60;
LABEL_102:
  if (v53 > *(a3 + 120))
  {
    return 4294954516;
  }

  if (H16ISP::H16ISPDevice::SetMultiCamMasterSlaveConfiguration(*(a4 + 24), v50 | 0x80000000, v50, v51, v52, v49, v67))
  {
    return 4294954514;
  }

  return 0;
}

uint64_t SetAEMatchIntegrationTimes(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v8 = *(a3 + 104);
  if (!v8)
  {
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      SetAEMatchIntegrationTimes();
    }

    return 4294954514;
  }

  CFArrayGetValueAtIndex(v8, 0);
  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 156);
  if (*(DerivedStorage + 4360) && !*(DerivedStorage + 4380))
  {
    v10 |= 0x80000000;
  }

  v11 = CFEqual(a1, *MEMORY[0x277CBED28]) != 0;
  result = H16ISP::H16ISPDevice::EnableAEMatching(*(a4 + 24), v10, v11);
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
      SetAEMatchIntegrationTimes();
    }

    return 4294954514;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableAEMatching(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 a3)
{
  if (*(this + 1167) < a2)
  {
    return 3758097090;
  }

  v9 = v3;
  v10 = v4;
  v6 = 0x340C00000000;
  v7 = a2;
  v8 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, &v6, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t SuspendResumeStream(uint64_t result, uint64_t a2)
{
  if (*(a2 + 160))
  {
    v3 = a2 + 4096;
    if (((*(a2 + 704) & 1) != 0 || (*(a2 + 904) & 1) != 0 || (*(a2 + 1104) & 1) != 0 || (*(a2 + 2704) & 1) != 0 || (*(a2 + 2104) & 1) != 0 || (*(a2 + 2304) & 1) != 0 || (*(a2 + 4080) & 1) != 0 || doesDisabledTofRequireBuffers(result, a2) || (*(a2 + 1904) & 1) != 0 || *(a2 + 2904) == 1) && (!*(a2 + 4360) || *(v3 + 273) == 1))
    {
      result = H16ISP::H16ISPFrameReceiver::IsSuspended(*(a2 + 160));
      if (result)
      {
        v4 = *(a2 + 160);

        return H16ISP::H16ISPFrameReceiver::ResumeReceive(v4);
      }
    }

    else
    {
      result = H16ISP::H16ISPFrameReceiver::IsSuspended(*(a2 + 160));
      if ((result & 1) == 0)
      {
        result = H16ISP::H16ISPFrameReceiver::SuspendReceive(*(a2 + 160));
        *(v3 + 873) = 0;
      }
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetMultiCamMasterSlaveConfiguration(H16ISP::H16ISPDevice *a1, int a2, char a3, char a4, int a5, unsigned int a6, const void *a7)
{
  bzero(v15, 0x58uLL);
  v16 = 13318;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  memcpy(&v22, a7, 16 * a6);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v15, 0x58u, 0, 0xFFFFFFFF);
}

uint64_t SetAPSMode(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  if (gCaptureDeviceCFPrefs[44 * *(a2 + 156) + 185] != -1)
  {
    return 0;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  result = H16ISP::H16ISPDevice::SetAPSMode(*(a4 + 24), *(a2 + 156), valuePtr);
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
      SetAPSMode();
    }

    return 4294954514;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAPSMode(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1924;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t SetAPSLoggingDataEnabled(const void *a1, uint64_t a2)
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
  v6 = v5;
  if (*(a2 + 160))
  {
    if (*(a2 + 4151) == (v5 != 0))
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
    result = 0;
    *(a2 + 4151) = v6 != 0;
  }

  return result;
}

uint64_t CopyAPSOffsetEstimatorInfo(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  bzero(v43, 0x58uLL);
  v44 = 1958;
  v45 = *(a3 + 156);
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v43, 0x58u, 0, 0xFFFFFFFF))
  {
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      CopyAPSOffsetEstimatorInfo();
    }

    Mutable = 0;
LABEL_7:
    result = 4294954516;
    goto LABEL_22;
  }

  if (v46 != 1)
  {
    Mutable = 0;
    result = 4294954513;
    goto LABEL_22;
  }

  v11 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    result = 4294954510;
    goto LABEL_22;
  }

  valuePtr = v53;
  v12 = CFNumberCreate(v11, kCFNumberFloatType, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF4228], v12);
  CFRelease(v12);
  v41 = v52;
  v13 = CFNumberCreate(v11, kCFNumberFloatType, &v41);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF4230], v13);
  CFRelease(v13);
  v40 = v48;
  v14 = CFNumberCreate(v11, kCFNumberFloatType, &v40);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF41E0], v14);
  CFRelease(v14);
  v39 = v50;
  v15 = CFNumberCreate(v11, kCFNumberFloatType, &v39);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF41F0], v15);
  CFRelease(v15);
  v38 = v49;
  v16 = CFNumberCreate(v11, kCFNumberFloatType, &v38);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF41F8], v16);
  CFRelease(v16);
  v37 = v51;
  v17 = CFNumberCreate(v11, kCFNumberFloatType, &v37);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF41E8], v17);
  CFRelease(v17);
  v36 = v57;
  v18 = CFNumberCreate(v11, kCFNumberSInt16Type, &v36);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF4238], v18);
  CFRelease(v18);
  v35 = v56;
  v19 = CFNumberCreate(v11, kCFNumberSInt32Type, &v35);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF4220], v19);
  CFRelease(v19);
  if (v47 <= 3)
  {
    if (v47 <= 1)
    {
      if (!v47)
      {
        v34 = 0;
        goto LABEL_19;
      }

      if (v47 != 1)
      {
LABEL_24:
        v27 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v27 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v27;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          CopyAPSOffsetEstimatorInfo();
        }

        goto LABEL_7;
      }
    }
  }

  else if (v47 > 8)
  {
    goto LABEL_24;
  }

  v34 = v47;
LABEL_19:
  v20 = CFNumberCreate(v11, kCFNumberSInt32Type, &v34);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF41C8], v20);
  CFRelease(v20);
  v33 = v54;
  v21 = CFNumberCreate(v11, kCFNumberFloatType, &v33);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF4218], v21);
  CFRelease(v21);
  v32 = v55;
  v22 = CFNumberCreate(v11, kCFNumberFloatType, &v32);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF41D8], v22);
  CFRelease(v22);
  if (*(*(a5 + 24) + 4312) >= 17)
  {
    v31 = v58;
    v23 = CFNumberCreate(v11, kCFNumberFloatType, &v31);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CF4200], v23);
    CFRelease(v23);
    v30 = v59;
    v24 = CFNumberCreate(v11, kCFNumberFloatType, &v30);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CF4208], v24);
    CFRelease(v24);
    v29 = v60;
    v25 = CFNumberCreate(v11, kCFNumberFloatType, &v29);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CF4210], v25);
    CFRelease(v25);
    v28 = v61;
    v26 = CFNumberCreate(v11, kCFNumberFloatType, &v28);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CF41D0], v26);
    CFRelease(v26);
  }

  result = 0;
LABEL_22:
  *a2 = Mutable;
  return result;
}

float SetTemporalNoiseReductionConfiguration(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 109);
  v5 = *(a2 + 110);
  v6 = *(a2 + 116);
  valuePtr = v6;
  result = *(a2 + 120);
  v35 = *(a2 + 124);
  v36 = result;
  if (a1)
  {
    v11 = CFGetTypeID(a1);
    if (v11 == CFDictionaryGetTypeID())
    {
      v12 = *(*(a4 + 24) + 4304);
      if (v12)
      {
        Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF62D0]);
        v14 = MEMORY[0x277CBED28];
        if (Value)
        {
          v4 = CFEqual(Value, *MEMORY[0x277CBED28]) != 0;
        }

        v15 = CFDictionaryGetValue(a1, *MEMORY[0x277CF62F0]);
        if (v15)
        {
          v5 = CFEqual(v15, *v14) != 0;
        }

        v16 = CFDictionaryGetValue(a1, *MEMORY[0x277CF62D8]);
        if (v16)
        {
          CFNumberGetValue(v16, kCFNumberSInt32Type, &valuePtr);
          v6 = valuePtr;
        }

        v17 = v6 ? v4 : 1;
        if (v17 == 1)
        {
          v18 = v6 > 2 && *(v12 + 652) < 18;
          if (!v18 && v6 <= 3)
          {
            v20 = CFDictionaryGetValue(a1, *MEMORY[0x277CF62E0]);
            if (v20)
            {
              v21 = v20;
              v22 = CFDictionaryGetValue(v20, *MEMORY[0x277CF62C0]);
              if (v22)
              {
                CFNumberGetValue(v22, kCFNumberFloatType, &v36);
              }

              v23 = CFDictionaryGetValue(v21, *MEMORY[0x277CF62C8]);
              if (v23)
              {
                CFNumberGetValue(v23, kCFNumberFloatType, &v35);
              }

              v24 = valuePtr ? v4 : 0;
              if (v24 != 1 || v35 > v36)
              {
                v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v25 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
                }

                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  SetTemporalNoiseReductionConfiguration();
                }

                return result;
              }
            }

            v26 = CFDictionaryGetValue(a1, *MEMORY[0x277CF62E8]);
            if (v26)
            {
              v27 = CFBooleanGetValue(v26) != 0;
            }

            else
            {
              v27 = 0;
            }

            v28 = CFDictionaryGetValue(a1, *MEMORY[0x277CF62F8]);
            if (v28)
            {
              v29 = CFBooleanGetValue(v28) != 0;
            }

            else
            {
              v29 = 0;
            }

            v30 = *(a2 + 160);
            if (!v30)
            {
              goto LABEL_69;
            }

            if (!H16ISP::H16ISPFrameReceiver::IsSuspended(v30) && (*(a2 + 109) != v4 || *(a2 + 110) != v5))
            {
              return result;
            }

            if (!*(a2 + 160) || *(a2 + 108) != 1)
            {
              goto LABEL_69;
            }

            if (*(a2 + 128) != v29 && H16ISP::H16ISPDevice::EnableHighStrengthTNR(*(a4 + 24), *(a2 + 156), v29))
            {
              v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v31 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v31;
              }

              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                SetTemporalNoiseReductionConfiguration();
              }

              return result;
            }

            if (*(a2 + 116) != valuePtr && H16ISP::H16ISPDevice::EnableBand0Modulation(*(a4 + 24), *(a2 + 156), valuePtr))
            {
              v32 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v32 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v32;
              }

              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                SetTemporalNoiseReductionConfiguration();
              }

              return result;
            }

            if (*(a2 + 120) == v36 && *(a2 + 124) == v35 || !H16ISP::H16ISPDevice::SetBand0StrengthModThreshold(*(a4 + 24), *(a2 + 156), vcvtd_n_s64_f64(v36, 8uLL), vcvtd_n_s64_f64(v35, 8uLL)))
            {
LABEL_69:
              *(a2 + 109) = v4;
              *(a2 + 110) = v5;
              *(a2 + 112) = v27;
              *(a2 + 116) = valuePtr;
              v34 = v35;
              result = v36;
              *(a2 + 120) = v36;
              *(a2 + 124) = v34;
              *(a2 + 128) = v29;
              return result;
            }

            v33 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v33 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v33;
            }

            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              SetTemporalNoiseReductionConfiguration();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t SetTemporalNoiseReductionEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_7;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFBooleanGetTypeID())
  {
    goto LABEL_7;
  }

  v8 = CFEqual(a1, *MEMORY[0x277CBED28]);
  v9 = *(a2 + 160);
  if (!v9)
  {
    goto LABEL_15;
  }

  if (H16ISP::H16ISPFrameReceiver::IsSuspended(v9))
  {
    if (*(a2 + 160))
    {
      *v14 = *(a2 + 108);
      *&v14[12] = *(a2 + 120);
      v14[0] = v8 != 0;
      if (H16ISP::H16ISPDevice::EnableTNR(*(a4 + 24), *(a2 + 156), v14))
      {
LABEL_7:
        v10 = 4294954516;
        goto LABEL_8;
      }
    }

LABEL_15:
    v10 = 0;
    *(a2 + 108) = v8 != 0;
    goto LABEL_8;
  }

  v10 = 4294954612;
LABEL_8:
  v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v11 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = "False";
    if (*(a2 + 108))
    {
      v12 = "True";
    }

    *v14 = 136315394;
    *&v14[4] = v12;
    *&v14[12] = 1024;
    *&v14[14] = v10;
    _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Enable TNR: %s (err = %d)\n\n", v14, 0x12u);
  }

  return v10;
}

uint64_t SetTOFAutoFocusEstimatorDataEnabled(const void *a1, uint64_t a2)
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
  v6 = v5;
  if (*(a2 + 160))
  {
    if (*(a2 + 4152) == (v5 != 0))
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
    result = 0;
    *(a2 + 4152) = v6 != 0;
  }

  return result;
}

uint64_t SetLeaderFollowerAutoFocusEnabled(const void *a1, uint64_t a2)
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
  v6 = v5;
  if (*(a2 + 160))
  {
    if (*(a2 + 4154) == (v5 != 0))
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
    result = 0;
    *(a2 + 4154) = v6 != 0;
  }

  return result;
}

CFIndex SetSensorRawOutputBufferPool(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 104);
  if (v7)
  {
    if (CFArrayGetCount(v7))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        CFArrayGetValueAtIndex(*(a3 + 104), v8);
        FigCaptureStreamGetFigBaseObject();
        v9 |= 1 << *(CMBaseObjectGetDerivedStorage() + 156);
        ++v8;
      }

      while (v8 < CFArrayGetCount(*(a3 + 104)));
    }

    else
    {
      LOWORD(v9) = 0;
    }

    if (GetNumberOfActiveChannels(*(a3 + 104)))
    {
      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        SetSensorRawOutputBufferPool();
      }

      return 4294954514;
    }
  }

  else
  {
    LOWORD(v9) = 0;
  }

  if (*(a3 + 136))
  {
    if (H16ISP::H16ISPDevice::SetSharedBufferPoolConfiguration(*(a4 + 24), *(a3 + 8) - 1, v9, 1, 0))
    {
      return 4294954514;
    }

    v11 = *(a3 + 136);
    if (v11)
    {
      H16ISP::H16ISPFrameReceiverSharedBufferPool::~H16ISPFrameReceiverSharedBufferPool(v11);
      MEMORY[0x22AA55B60]();
    }

    *(a3 + 136) = 0;
  }

  if (a1)
  {
    if (!H16ISP::H16ISPDevice::SetSharedBufferPoolConfiguration(*(a4 + 24), *(a3 + 8) - 1, v9, 1, 1) && !H16ISP::H16ISPDevice::GetSharedBufferPoolInfo(*(a4 + 24), *(a3 + 8) - 1, v9, 1, v14))
    {
      H16ISP::getCVPixelFormat(v16, v17, *v15);
      operator new();
    }

    return 4294954514;
  }

  result = CFArrayGetCount(*(a3 + 104));
  if (result)
  {
    v13 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(a3 + 104), v13);
      FigCaptureStreamGetFigBaseObject();
      *(CMBaseObjectGetDerivedStorage() + 4816) = *(a3 + 136);
      ++v13;
    }

    while (v13 < CFArrayGetCount(*(a3 + 104)));
    return 0;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetSharedBufferPoolConfiguration(H16ISP::H16ISPDevice *this, __int16 a2, __int16 a3, __int16 a4, char a5)
{
  bzero(v11, 0x14uLL);
  v12 = 13320;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = 1;
  v16 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::getFrameFormat(H16ISP *this)
{
  v1 = this;
  result = 0xFFFFFFFFLL;
  if (v1 <= 1651587121)
  {
    if (v1 > 796419633)
    {
      if (v1 > 1530422831)
      {
        if (v1 > 1650943795)
        {
          v8 = 1650946097;
          if (v1 == 1650946100)
          {
            v21 = 2;
          }

          else
          {
            v21 = -1;
          }

          if (v1 == 1650946098)
          {
            v10 = 44;
          }

          else
          {
            v10 = v21;
          }

          v11 = 1650943796;
          v12 = 2;
          v13 = v1 == 1650946096;
          v14 = 20;
        }

        else
        {
          v8 = 1534617135;
          if (v1 == 1534621232)
          {
            v9 = 16;
          }

          else
          {
            v9 = -1;
          }

          if (v1 == 1534617136)
          {
            v10 = 16;
          }

          else
          {
            v10 = v9;
          }

          v11 = 1530422832;
          v12 = 13;
          v13 = v1 == 1530426928;
          v14 = 13;
        }

        goto LABEL_75;
      }

      if (v1 > 875704421)
      {
        if (v1 <= 1111970368)
        {
          if (v1 == 875704438)
          {
            v17 = 0;
          }

          else
          {
            v17 = -1;
          }

          if (v1 == 875704422)
          {
            return 0;
          }

          else
          {
            return v17;
          }
        }

        if (v1 == 1111970369)
        {
          return 46;
        }

        v3 = 1278226488;
        goto LABEL_126;
      }

      if (v1 == 796419634 || v1 == 796423728)
      {
        goto LABEL_127;
      }

      v24 = 30258;
    }

    else
    {
      if (v1 <= 758674991)
      {
        if (v1 <= 645424689)
        {
          v5 = 641230384;
          v6 = 22;
          if (v1 == 645424688)
          {
            v23 = 23;
          }

          else
          {
            v23 = -1;
          }

          if (v1 == 641234480)
          {
            v19 = 22;
          }

          else
          {
            v19 = v23;
          }

          goto LABEL_106;
        }

        if (v1 <= 645428785)
        {
          if (v1 != 645424690)
          {
            if (v1 == 645428784)
            {
              return 23;
            }

            else
            {
              return 0xFFFFFFFFLL;
            }
          }

          goto LABEL_127;
        }

        if (v1 != 645428786)
        {
          v3 = 758670896;
          goto LABEL_126;
        }

        goto LABEL_127;
      }

      if (v1 <= 762869297)
      {
        if (v1 > 762865201)
        {
          if (v1 == 762865202)
          {
            goto LABEL_127;
          }

          v4 = 30256;
        }

        else
        {
          if (v1 == 758674992)
          {
            goto LABEL_127;
          }

          v4 = 26160;
        }

        v3 = v4 | 0x2D780000;
        goto LABEL_126;
      }

      if (v1 <= 792229423)
      {
        if (v1 != 762869298)
        {
          v3 = 792225328;
          goto LABEL_126;
        }

        goto LABEL_127;
      }

      if (v1 == 792229424)
      {
        goto LABEL_127;
      }

      v24 = 26160;
    }

    v3 = v24 | 0x2F780000;
    goto LABEL_126;
  }

  if (v1 > 2016686639)
  {
    if (v1 <= 2088265263)
    {
      if (v1 <= 2037741157)
      {
        if (v1 <= 2019963439)
        {
          if (v1 != 2016686640)
          {
            v3 = 2016686642;
            goto LABEL_126;
          }

          return 15;
        }

        if (v1 == 2019963440)
        {
          return 15;
        }

        v3 = 2019963442;
LABEL_126:
        if (v1 != v3)
        {
          return result;
        }

        goto LABEL_127;
      }

      if (v1 <= 2084070959)
      {
        v5 = 2037741158;
        v6 = 1;
        v18 = v1 == 2037741171;
        v19 = 1;
        goto LABEL_104;
      }

      if (v1 != 2084070960)
      {
        v3 = 2084075056;
        goto LABEL_126;
      }

LABEL_127:
      bzero(&v26, 0x14uLL);
      v16 = 0;
      while (*&supportedFormatMap[v16] != v1)
      {
        v16 += 20;
        if (v16 == 1300)
        {
          return DWORD1(v26);
        }
      }

      goto LABEL_137;
    }

    if (v1 <= 2100848175)
    {
      if (v1 > 2088269359)
      {
        if (v1 == 2088269360)
        {
          goto LABEL_127;
        }

        v15 = 30258;
      }

      else
      {
        if (v1 == 2088265264)
        {
          goto LABEL_127;
        }

        v15 = 26162;
      }

      v3 = v15 | 0x7C780000;
      goto LABEL_126;
    }

    v8 = 2105042479;
    if (v1 == 2105046576)
    {
      v20 = 17;
    }

    else
    {
      v20 = -1;
    }

    if (v1 == 2105042480)
    {
      v10 = 17;
    }

    else
    {
      v10 = v20;
    }

    v11 = 2100848176;
    v12 = 14;
    v13 = v1 == 2100852272;
    v14 = 14;
LABEL_75:
    if (!v13)
    {
      v14 = -1;
    }

    if (v1 == v11)
    {
      v22 = v12;
    }

    else
    {
      v22 = v14;
    }

    if (v1 <= v8)
    {
      return v22;
    }

    else
    {
      return v10;
    }
  }

  if (v1 > 1735549491)
  {
    if (v1 > 1885745711)
    {
      if (v1 > 1919379251)
      {
        v5 = 1919379252;
        v6 = 2;
        v7 = 1919381552;
        goto LABEL_102;
      }

      if (v1 != 1885745712)
      {
        v3 = 1885745714;
        goto LABEL_126;
      }
    }

    else
    {
      if (v1 <= 1882468911)
      {
        v5 = 1735549492;
        v6 = 2;
        v7 = 1735553072;
LABEL_102:
        v18 = v1 == v7;
        v19 = 20;
LABEL_104:
        if (!v18)
        {
          v19 = -1;
        }

LABEL_106:
        if (v1 == v5)
        {
          return v6;
        }

        else
        {
          return v19;
        }
      }

      if (v1 != 1882468912)
      {
        v3 = 1882468914;
        goto LABEL_126;
      }
    }

    return 18;
  }

  if (v1 > 1651925815)
  {
    if (v1 <= 1734504495)
    {
      if (v1 != 1651925816)
      {
        if (v1 != 1652056888)
        {
          return result;
        }

        bzero(&v26, 0x14uLL);
        v16 = 0;
        while (*&supportedFormatMap[v16] != 1652056888)
        {
          v16 += 20;
          if (v16 == 1300)
          {
            return DWORD1(v26);
          }
        }

        goto LABEL_137;
      }

      goto LABEL_127;
    }

    v5 = 1734504496;
    v6 = 20;
    v18 = v1 == 1734505012;
    v19 = 2;
    goto LABEL_104;
  }

  switch(v1)
  {
    case 1651587122:
      bzero(&v26, 0x14uLL);
      v16 = 0;
      while (*&supportedFormatMap[v16] != 1651587122)
      {
        v16 += 20;
        if (v16 == 1300)
        {
          return DWORD1(v26);
        }
      }

      goto LABEL_137;
    case 1651798066:
      return 44;
    case 1651847472:
      bzero(&v26, 0x14uLL);
      v16 = 0;
      while (*&supportedFormatMap[v16] != 1651847472)
      {
        v16 += 20;
        if (v16 == 1300)
        {
          return DWORD1(v26);
        }
      }

LABEL_137:
      v25 = &supportedFormatMap[v16];
      v26 = *v25;
      v27 = *(v25 + 4);
      return DWORD1(v26);
  }

  return result;
}

uint64_t H16ISP::H16ISPFrameReceiverBufferPool::H16ISPFrameReceiverBufferPool(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, CFTypeRef cf, __CVPixelBufferPool *pixelBufferPool, int a18)
{
  return H16ISP::H16ISPFrameReceiverBufferPool::H16ISPFrameReceiverBufferPool(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, cf, pixelBufferPool, a18);
}

{
  *&v36[24] = a14;
  *&v36[16] = a13;
  *&v36[8] = a12;
  *v36 = a11;
  v35 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 24) = a5;
  v19 = (a1 + 24);
  *(a1 + 28) = a6;
  v20 = (a1 + 28);
  *(a1 + 32) = a7;
  v21 = (a1 + 32);
  *(a1 + 36) = a8;
  v22 = (a1 + 36);
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *(a1 + 40) = a9;
  v23 = *a10;
  *(a1 + 72) = a10[1];
  *(a1 + 56) = v23;
  *(a1 + 88) = v36[0];
  *(a1 + 92) = *&v36[4];
  *(a1 + 108) = *&v36[20];
  *(a1 + 116) = a15;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xFFFFFFFFLL;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 320) = a18;
  *(a1 + 328) = 0;
  pthread_mutexattr_init(&v34);
  pthread_mutexattr_settype(&v34, 2);
  pthread_mutex_init((a1 + 256), &v34);
  pthread_mutexattr_destroy(&v34);
  if (pixelBufferPool)
  {
    *(a1 + 184) = CVPixelBufferPoolRetain(pixelBufferPool);
    *(a1 + 100) = CVPixelBufferPoolGetMinBufferCount();
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(pixelBufferPool);
    Value = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x277CC4EC8]);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, v19);
    }

    v26 = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x277CC4DD8]);
    if (v26)
    {
      CFNumberGetValue(v26, kCFNumberSInt32Type, v20);
    }

    v27 = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x277CC4DA0]);
    if (v27)
    {
      CFNumberGetValue(v27, kCFNumberSInt32Type, v21);
    }

    v28 = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x277CC4DB8]);
    if (v28)
    {
      CFNumberGetValue(v28, kCFNumberSInt32Type, v22);
    }
  }

  v29 = *(a1 + 100);
  if (*(a1 + 104) < v29)
  {
    *(a1 + 104) = v29;
  }

  v30 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 168) = Mutable;
  if (Mutable)
  {
    v32 = CFNumberCreate(v30, kCFNumberSInt32Type, (a1 + 104));
    CFDictionarySetValue(*(a1 + 168), *MEMORY[0x277CC4E40], v32);
    CFRelease(v32);
  }

  if (cf)
  {
    *(a1 + 176) = CFRetain(cf);
  }

  H16ISP::gFrameReceiverBufferPoolPrefs = H16ISP::H16ISPGetCFPreferenceNumber(@"VerboseBufferTracking", @"com.apple.coremedia", 0);
  H16ISP::gFrameReceiverBufferPoolPrefs = H16ISP::H16ISPGetCFPreferenceNumber(@"UseIOSurfaceWiringAssertion", @"com.apple.coremedia", 1);
  *(a1 + 248) = H16ISP::gFrameReceiverBufferPoolPrefs != 0;
  *(a1 + 152) = CFArrayCreateMutable(v30, 0, MEMORY[0x277CBF128]);
  return a1;
}

H16ISP::H16ISPFrameReceiverSharedBufferPool *H16ISP::H16ISPFrameReceiverSharedBufferPool::H16ISPFrameReceiverSharedBufferPool(H16ISP::H16ISPFrameReceiverSharedBufferPool *this, H16ISP::H16ISPDevice *a2, H16ISP::H16ISPFrameReceiverBufferPool *a3, __int16 a4, __int16 a5)
{
  v8 = *MEMORY[0x277D85DE8];
  *(this + 104) = 0u;
  *this = a2;
  *(this + 120) = 0u;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = a3;
  *(this + 24) = 0;
  *(this + 34) = 1065353216;
  *(this + 72) = a4;
  *(this + 73) = a5;
  *(this + 148) = 0;
  *(this + 19) = 0;
  std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::clear(this + 13);
  pthread_mutexattr_init(&v7);
  pthread_mutexattr_settype(&v7, 2);
  pthread_mutex_init((this + 8), &v7);
  pthread_mutexattr_destroy(&v7);
  return this;
}

void *std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t SetSynchronizedSensorRawOutputRetainedBufferCount(const void *a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  v24 = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v5 = CFGetTypeID(a1);
  if (v5 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr + 4);
  v6 = *(a3 + 104);
  if (!v6)
  {
    return 0;
  }

  if (!CFArrayGetCount(v6))
  {
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v7 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(*(a3 + 104), v7);
    FigCaptureStreamGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = HIDWORD(valuePtr);
    *(DerivedStorage + 4832) = HIDWORD(valuePtr);
    if (v9 < 1)
    {
      goto LABEL_11;
    }

    v10 = DerivedStorage;
    if (!*(DerivedStorage + 160))
    {
      goto LABEL_10;
    }

    v11 = resizeStillMetaPool(DerivedStorage, 1, &valuePtr, &v24);
    if (v11)
    {
      break;
    }

    v12 = resizeThumbnailRawPool(v10, 1, 0, &v24);
    if (v12)
    {
      v13 = v12;
      v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v22 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v27 = "SetSynchronizedSensorRawOutputRetainedBufferCount";
        v28 = 1024;
        v29 = v13;
        v30 = 1024;
        v31 = valuePtr;
        v32 = 1024;
        v33 = v24;
        v23 = "%s - Unable to modify thumbnail raw pool, err = %d, FWprimeCount= %d, clientRetainCount=%d\n";
        goto LABEL_30;
      }

      goto LABEL_12;
    }

LABEL_10:
    if (++v7 >= CFArrayGetCount(*(a3 + 104)))
    {
      goto LABEL_11;
    }
  }

  v13 = v11;
  v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v22 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v27 = "SetSynchronizedSensorRawOutputRetainedBufferCount";
    v28 = 1024;
    v29 = v13;
    v30 = 1024;
    v31 = valuePtr;
    v32 = 1024;
    v33 = v24;
    v23 = "%s - Unable to modify still meta pool, err = %d, FWprimeCount= %d, clientRetainCount=%d\n";
LABEL_30:
    _os_log_impl(&dword_2247DB000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0x1Eu);
  }

LABEL_12:
  v14 = *(a3 + 136);
  if (v14)
  {
    if (*H16ISP::H16ISPFrameReceiverSharedBufferPool::GetPool(v14) == 1)
    {
      Pool = H16ISP::H16ISPFrameReceiverSharedBufferPool::GetPool(*(a3 + 136));
      v16 = HIDWORD(valuePtr) + *(Pool + 112);
      v17 = H16ISP::H16ISPFrameReceiverSharedBufferPool::GetPool(*(a3 + 136));
      v18 = H16ISP::H16ISPFrameReceiverBufferPool::ModifyBufferCount(v17, v16);
      if (v18)
      {
        v19 = v18;
        v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v20 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v20;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v27 = "SetSynchronizedSensorRawOutputRetainedBufferCount";
          v28 = 1024;
          v29 = v19;
          v30 = 1024;
          v31 = v16;
          _os_log_impl(&dword_2247DB000, v20, OS_LOG_TYPE_DEFAULT, "%s - unable to modify pool buffer count for shared raw pool, res=%d buffer count %d\n", buf, 0x18u);
        }

        return 4294954516;
      }
    }
  }

  return v13;
}

uint64_t SetDeviceMemoryPoolID(const __CFNumber *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  H16ISP::H16ISPDevice::ISP_SetMemoryPoolID(*(a4 + 24), valuePtr);
  return 0;
}

uint64_t H16ISP::H16ISPDevice::ISP_SetMemoryPoolID(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x50u, v4, 1u, 0, 0);
}

uint64_t H16ISPCaptureStreamStart(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  v5 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(DerivedStorage + 156);
    v16 = 136315394;
    v17 = "H16ISPCaptureStreamStart";
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_INFO, "%s - Starting streaming on channel  %d\n\n", &v16, 0x12u);
  }

  LogCaptureDeviceEvent(0xEu, v3, DerivedStorage, 0, 0, 0, 0);
  if (!*(v3 + 24))
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStart();
    }

    goto LABEL_17;
  }

  if (*(DerivedStorage + 400) != 1)
  {
    pthread_mutex_lock((v3 + 32));
    v11 = *(v3 + 120);
    if (v11)
    {
      CFRetain(*(v3 + 120));
      pthread_mutex_unlock((v3 + 32));
      LockStreamMutexes(v11);
      if (*DerivedStorage)
      {
        v13 = "invalidated";
        started = 4294954511;
        v14 = 4294954511;
      }

      else
      {
        if (*(DerivedStorage + 1))
        {
          started = H16ISPCaptureStreamStartInternal(a1, v12);
          goto LABEL_22;
        }

        v13 = "stream not controlled";
        started = 4294954607;
        v14 = 4294954607;
      }

      FigSignalError(v14, v13);
LABEL_22:
      UnlockStreamMutexes(v11);
      CFRelease(v11);
      LogCaptureDeviceEvent(0xEu, v3, DerivedStorage, 0, 0, 0, 1);
      return started;
    }

    pthread_mutex_unlock((v3 + 32));
LABEL_17:
    v7 = "device invalidated";
    started = 4294954511;
    v9 = 4294954511;
    goto LABEL_18;
  }

  v7 = "processRawSessionStarted";
  started = 4294954516;
  v9 = 4294954516;
LABEL_18:
  FigSignalError(v9, v7);
  return started;
}

uint64_t H16ISPCaptureStreamStartInternal(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v334 = *MEMORY[0x277D85DE8];
  v267 = v2;
  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v276 = CMBaseObjectGetDerivedStorage();
  if ((v276[107] & 0x40) != 0)
  {
    v4 = *(DerivedStorage + 4960);
    if (v4)
    {
      *(v4 + 8) = mach_absolute_time();
      *(DerivedStorage + 4968) = 1;
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
        H16ISPCaptureStreamStartInternal();
      }
    }
  }

  v275 = (DerivedStorage + 156);
  kdebug_trace();
  v6 = *(v276 + 3);
  v277 = (v276 + 24);
  v269 = *(v6 + 4304);
  v273 = *(DerivedStorage + 4368);
  if (*(DerivedStorage + 4144))
  {
    v7 = 1;
  }

  else
  {
    v7 = *(DerivedStorage + 4147);
  }

  v271 = v7;
  if (*(DerivedStorage + 4145) & 1) != 0 || (*(DerivedStorage + 4146))
  {
    v8 = 1;
  }

  else
  {
    v8 = *(DerivedStorage + 4148);
  }

  v272 = v8;
  if (H16ISP::H16ISPDevice::hasSensorType(v6, 1785950322) && IsJasperSyncGroup(*v277, *(DerivedStorage + 4360)))
  {
    v273 = 0;
    v9 = GetNumberOfActiveChannels(*(DerivedStorage + 4360)) == 0;
  }

  else
  {
    v9 = 0;
  }

  v274 = v273 | v9;
  v268 = v9;
  v266 = 0;
  if ((*(DerivedStorage + 776) & 1) == 0 && (*(DerivedStorage + 976) & 1) == 0 && (*(DerivedStorage + 1176) & 1) == 0 && (*(DerivedStorage + 1376) & 1) == 0 && (*(DerivedStorage + 1576) & 1) == 0 && (*(DerivedStorage + 2776) & 1) == 0 && (*(DerivedStorage + 2504) & 1) == 0 && (*(DerivedStorage + 2104) & 1) == 0 && (*(DerivedStorage + 1976) & 1) == 0 && !*(DerivedStorage + 4824) && !*(DerivedStorage + 4840) && !*(DerivedStorage + 4816))
  {
    v45 = *(DerivedStorage + 4936);
    if (!v45 || !*v45 && !v45[14])
    {
      v266 = 1;
    }
  }

  v10 = *(DerivedStorage + 4360);
  if ((v10 == 0) | v274 & 1)
  {
    if (!*(DerivedStorage + 4720))
    {
      memset(buf, 0, 32);
      *&buf[32] = 1065353216;
      LODWORD(valuePtr[0]) = -1;
      if (v10)
      {
        for (i = 0; i < CFArrayGetCount(v10); ++i)
        {
          CFArrayGetValueAtIndex(*(DerivedStorage + 4360), i);
          FigCaptureStreamGetFigBaseObject();
          v13 = CMBaseObjectGetDerivedStorage();
          v15 = v13;
          if (*(v13 + 4256) == 1 && (*(v13 + 4408) & 0x28) != 0)
          {
            LODWORD(v278) = 0;
            ProjectorVersion = H16ISP::ProjectorManager::getProjectorVersion(*v277, *(v13 + 156), &v278, &v278, valuePtr, v14);
            if (ProjectorVersion)
            {
              v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v17 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
              }

              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *number = 136315394;
                *&number[4] = "CreateFaceTrackingNode";
                *&number[12] = 1024;
                *&number[14] = ProjectorVersion;
                _os_log_error_impl(&dword_2247DB000, v17, OS_LOG_TYPE_ERROR, "%s - Error retrieving projector version res=0x%08X\n\n", number, 0x12u);
              }
            }
          }

          if (*(v15 + 836) == 1)
          {
            *number = *(v15 + 156);
            std::__hash_table<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::__unordered_map_hasher<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::hash<eCIspDpcTypes>,std::equal_to<eCIspDpcTypes>,true>,std::__unordered_map_equal<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::equal_to<eCIspDpcTypes>,std::hash<eCIspDpcTypes>,true>,std::allocator<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>>>::__emplace_unique_key_args<eCIspDpcTypes,std::pair<eCIspDpcTypes const,FigCaptureStreamDefectivePixelsType> const&>(buf, number);
          }

          else if (*(v15 + 1036) == 1)
          {
            *number = *(v15 + 156);
            *&number[4] = 10;
            std::__hash_table<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::__unordered_map_hasher<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::hash<eCIspDpcTypes>,std::equal_to<eCIspDpcTypes>,true>,std::__unordered_map_equal<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::equal_to<eCIspDpcTypes>,std::hash<eCIspDpcTypes>,true>,std::allocator<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>>>::__emplace_unique_key_args<eCIspDpcTypes,std::pair<eCIspDpcTypes const,FigCaptureStreamDefectivePixelsType> const&>(buf, number);
          }

          else if (*(v15 + 1236) == 1)
          {
            *number = *(v15 + 156);
            *&number[4] = 6;
            std::__hash_table<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::__unordered_map_hasher<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::hash<eCIspDpcTypes>,std::equal_to<eCIspDpcTypes>,true>,std::__unordered_map_equal<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::equal_to<eCIspDpcTypes>,std::hash<eCIspDpcTypes>,true>,std::allocator<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>>>::__emplace_unique_key_args<eCIspDpcTypes,std::pair<eCIspDpcTypes const,FigCaptureStreamDefectivePixelsType> const&>(buf, number);
          }

          v10 = *(DerivedStorage + 4360);
        }
      }

      else if (*(DerivedStorage + 836) == 1)
      {
        *number = *v275;
        std::__hash_table<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::__unordered_map_hasher<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::hash<eCIspDpcTypes>,std::equal_to<eCIspDpcTypes>,true>,std::__unordered_map_equal<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::equal_to<eCIspDpcTypes>,std::hash<eCIspDpcTypes>,true>,std::allocator<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>>>::__emplace_unique_key_args<eCIspDpcTypes,std::pair<eCIspDpcTypes const,FigCaptureStreamDefectivePixelsType> const&>(buf, number);
      }

      else if (*(DerivedStorage + 1036) == 1)
      {
        *number = *v275;
        *&number[4] = 10;
        std::__hash_table<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::__unordered_map_hasher<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::hash<eCIspDpcTypes>,std::equal_to<eCIspDpcTypes>,true>,std::__unordered_map_equal<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::equal_to<eCIspDpcTypes>,std::hash<eCIspDpcTypes>,true>,std::allocator<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>>>::__emplace_unique_key_args<eCIspDpcTypes,std::pair<eCIspDpcTypes const,FigCaptureStreamDefectivePixelsType> const&>(buf, number);
      }

      else if (*(DerivedStorage + 1236) == 1)
      {
        *number = *v275;
        *&number[4] = 6;
        std::__hash_table<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::__unordered_map_hasher<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::hash<eCIspDpcTypes>,std::equal_to<eCIspDpcTypes>,true>,std::__unordered_map_equal<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::equal_to<eCIspDpcTypes>,std::hash<eCIspDpcTypes>,true>,std::allocator<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>>>::__emplace_unique_key_args<eCIspDpcTypes,std::pair<eCIspDpcTypes const,FigCaptureStreamDefectivePixelsType> const&>(buf, number);
      }

      if (*&buf[24])
      {
        operator new();
      }

      if (dword_281003368)
      {
        *number = *v275;
        std::__hash_table<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::__unordered_map_hasher<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::hash<eCIspDpcTypes>,std::equal_to<eCIspDpcTypes>,true>,std::__unordered_map_equal<eCIspDpcTypes,std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>,std::equal_to<eCIspDpcTypes>,std::hash<eCIspDpcTypes>,true>,std::allocator<std::__hash_value_type<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>>>::__emplace_unique_key_args<eCIspDpcTypes,std::pair<eCIspDpcTypes const,FigCaptureStreamDefectivePixelsType> const&>(buf, number);
        operator new();
      }

      operator new();
    }

    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_73;
  }

  v18 = *(DerivedStorage + 4720);
  if (v18)
  {
    *buf = 0;
    *number = 0;
    H16ISP::H16ISPFilterGraphManager::GetNode(v18, 6, buf);
    H16ISP::H16ISPFilterGraphManager::GetNode(*(DerivedStorage + 4720), 8, number);
    if (*buf | *number)
    {
      if (*(DerivedStorage + 672))
      {
        v272 = 1;
      }

      else
      {
        v271 |= *(v269 + 632);
      }
    }
  }

  if (H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, 13, v272 & 1) || H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, 21, v271 & ~v272 & 1))
  {
    goto LABEL_73;
  }

  v23 = *(DerivedStorage + 156);
  if (*(DerivedStorage + 4360))
  {
    v24 = DerivedStorage + 628;
    if (!*(DerivedStorage + 4380))
    {
      v23 |= 0x80000000;
    }
  }

  else
  {
    v24 = DerivedStorage + 628;
  }

  v19 = 3758097122;
  if (*(v24 + 3979) == 1 && *(v24 + 3980) != 1)
  {
    goto LABEL_74;
  }

  if (*(v24 + 3885) == 1)
  {
    H16ISP::H16ISPDevice::DisableTorch(*(v276 + 3), *(DerivedStorage + 156));
    H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(v276 + 3), *v275, 0, 0);
    v25 = *(v276 + 29);
    if (v25)
    {
      *buf = 101;
      buf[8] = 0;
      H16ISP::H16ISPServicesRemote::SetProperty(v25, buf);
      v24 = DerivedStorage + 628;
    }

    else
    {
      v26 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v26 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v26;
      }

      v24 = DerivedStorage + 628;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "H16ISPCaptureStreamStartInternal";
        _os_log_impl(&dword_2247DB000, v26, OS_LOG_TYPE_INFO, "%s - Could not set strobe state\n", buf, 0xCu);
      }
    }
  }

  *(v24 + 3884) = 0;
  NumberOfActiveChannels = GetNumberOfActiveChannels(*(v276 + 15));
  v28 = *(DerivedStorage + 4360);
  if (v28)
  {
    v29 = GetNumberOfActiveChannels(v28);
    if ((v29 != 0) | v273 & 1)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    if (!((v29 != 0) | v273 & 1 | v268))
    {
      v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v31 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v31;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }

      goto LABEL_74;
    }
  }

  else
  {
    v30 = 0;
  }

  v32 = *(v276 + 27);
  if (v32)
  {
    v33 = *v32;
    if (!*v32)
    {
LABEL_109:
      v36 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v36 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v36;
      }

      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }

      goto LABEL_74;
    }

    v34 = v32 + 14;
    while (1)
    {
      v35 = *v34;
      v34 += 4;
      if (((1 << *v275) & v35) != 0)
      {
        break;
      }

      if (!--v33)
      {
        goto LABEL_109;
      }
    }
  }

  else
  {
    v37 = NumberOfActiveChannels != v30 || *(DerivedStorage + 4360) == 0;
    if (v37 && NumberOfActiveChannels)
    {
LABEL_74:
      if (*(DerivedStorage + 160))
      {
        v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v20 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v20;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          H16ISPCaptureStreamStartInternal();
        }

        GraphTeardown(DerivedStorage, v274 & 1);
        H16ISP::DestroyH16ISPFrameReceiver(*(DerivedStorage + 160), v21);
        H16ISP::H16ISPDevice::ISP_EnableSensorPower(*v277, *(DerivedStorage + 156), 0, 0);
        *(DerivedStorage + 160) = 0;
      }

      goto LABEL_80;
    }
  }

  if (*(DerivedStorage + 4360))
  {
    if (*(DerivedStorage + 4376) == -1)
    {
      *(DerivedStorage + 4376) = 0;
      if (ApplySlaveConfiguration(v276, DerivedStorage))
      {
LABEL_73:
        v19 = 4294954514;
        goto LABEL_74;
      }
    }
  }

  if (H16ISP::H16ISPDevice::EnableFESAutoAdjust(*v277, *v275, 1))
  {
    v38 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v38 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v38;
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

LABEL_142:
    v19 = 0;
    goto LABEL_80;
  }

  if (H16ISP::H16ISPDevice::EnableNewCBAFStats(*v277, *v275, 1))
  {
    v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v39 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v39;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_142;
  }

  if (H16ISP::H16ISPDevice::EnableFirmwareFocusHint(*v277, *(DerivedStorage + 156), *(DerivedStorage + 4604)))
  {
    v40 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v40 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v40;
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_142;
  }

  if (H16ISP::H16ISPDevice::EnableSlowSyncFlash(*v277, *v275, byte_2810033C8))
  {
    v41 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v41 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v41;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_142;
  }

  if (dword_281003154 && H16ISP::H16ISPDevice::WritePropertyValue(*v277, *v275, 2306, 0, 0xFFFFFFFF))
  {
    v42 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v42 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v42;
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_74;
  }

  *(DerivedStorage + 4155) = byte_2810033C9;
  if (dword_281003334 != -1 && H16ISP::H16ISPDevice::WritePropertyValue(*v277, *v275, 514, dword_281003334, 0xFFFFFFFF))
  {
    v43 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v43 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v43;
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_74;
  }

  if (dword_281003338 != -1 && H16ISP::H16ISPDevice::EnableStaticLUTForLTM(*v277, *v275, dword_281003338 != 0))
  {
    v44 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v44 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v44;
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_74;
  }

  v46 = *v275;
  v47 = gCaptureDeviceCFPrefs[44 * *v275 + 194];
  if (v47 != -1)
  {
    bzero(buf, 0x10uLL);
    *&buf[4] = 1870;
    *&buf[8] = v46;
    *&buf[12] = v47;
    if (H16ISP::H16ISPDevice::ISP_SendCommand(*v277, buf, 0x10u, 0, 0xFFFFFFFF))
    {
      v48 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v48 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v48;
      }

      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }

      goto LABEL_74;
    }

    v46 = *v275;
  }

  if (gCaptureDeviceCFPrefs[44 * v46 + 195] != -1)
  {
    if (H16ISP::H16ISPDevice::WritePropertyValue(*v277, v46, 1322, gCaptureDeviceCFPrefs[44 * v46 + 195], 0xFFFFFFFF))
    {
      v49 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v49 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v49;
      }

      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }

      goto LABEL_74;
    }

    v46 = *v275;
  }

  v50 = gCaptureDeviceCFPrefs[44 * v46 + 196];
  if (v50 != -1)
  {
    if (H16ISP::H16ISPDevice::EnableAPSModeSwitch(*v277, v46, v50 != 0))
    {
      v51 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v51 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v51;
      }

      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }

      goto LABEL_74;
    }

    v46 = *v275;
  }

  v52 = gCaptureDeviceCFPrefs[44 * v46 + 198];
  if (v52 != -1)
  {
    if (H16ISP::H16ISPDevice::EnableDACClamp(*v277, v46, v52 != 0))
    {
      v53 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v53 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v53;
      }

      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }

      goto LABEL_74;
    }

    v46 = *v275;
  }

  v54 = gCaptureDeviceCFPrefs[44 * v46 + 199];
  if (v54 != -1)
  {
    if (H16ISP::H16ISPDevice::SetAPSManualOffset(*v277, v46, v54))
    {
      v55 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v55 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v55;
      }

      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }

      goto LABEL_74;
    }

    v46 = *v275;
  }

  if (gCaptureDeviceCFPrefs[44 * v46 + 200] != -1)
  {
    if (H16ISP::H16ISPDevice::WritePropertyValue(*v277, v46, 1370, gCaptureDeviceCFPrefs[44 * v46 + 200], 0xFFFFFFFF))
    {
      v56 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v56 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v56;
      }

      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }

      goto LABEL_74;
    }

    v46 = *v275;
  }

  if (dword_281003380 != -1)
  {
    if (H16ISP::H16ISPDevice::WritePropertyValue(*v277, v46, 276, dword_281003380, 0xFFFFFFFF))
    {
      v57 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v57 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v57;
      }

      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }

      goto LABEL_74;
    }

    v46 = *v275;
  }

  if (*(DerivedStorage + 4592) == 1)
  {
    H16ISP::H16ISPDevice::SetPearlControlMode(*v277, v46, *(DerivedStorage + 4594), *(DerivedStorage + 4593), byte_2810033C6);
    v46 = *(DerivedStorage + 156);
  }

  v58 = v269 + 8;
  v59 = *(v269 + 8 + 104 * v46 + 52);
  hasSensorType = H16ISP::H16ISPDevice::hasSensorType(*v277, 1718186595);
  if (v59 == 2)
  {
    v61 = hasSensorType;
  }

  else
  {
    v61 = 0;
  }

  H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *(DerivedStorage + 156), 48, v61);
  H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *(DerivedStorage + 156), 34, *(DerivedStorage + 4360) != 0);
  v62 = (*(DerivedStorage + 4152) & 1) != 0 || (*(DerivedStorage + 4151) & 1) != 0 || *(DerivedStorage + 4154) == 1;
  H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *(DerivedStorage + 156), 50, v62);
  if (*(DerivedStorage + 3034) == 1)
  {
    H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, 24, 1);
    H16ISP::H16ISPDevice::SetMetadataRequired(*v277, *v275, 24, 0, 1);
  }

  if (*(DerivedStorage + 3032) == 1 && H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, 67, 1))
  {
    v63 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v63 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v63;
    }

    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_73;
  }

  if (*(DerivedStorage + 664))
  {
    H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, 55, 1);
  }

  if (dword_281003158)
  {
    H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, 14, 1);
  }

  if (dword_28100315C)
  {
    H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, 25, 1);
  }

  if (dword_281003160)
  {
    H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, 17, 1);
  }

  if (dword_281003150)
  {
    H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, 19, 1);
    H16ISP::H16ISPDevice::SetMetadataRequired(*v277, *v275, 19, 0, 1);
    H16ISP::H16ISPDevice::SetMetadataRequired(*v277, *v275, 19, 1, 1);
  }

  if (dword_28100332C)
  {
    H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, 26, 1);
  }

  if (dword_281003354)
  {
    H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, 43, 1);
  }

  if (dword_281003164)
  {
    H16ISP::H16ISPDevice::EnableLocalHistogram(*v277, *v275, 1);
    H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, 15, 1);
  }

  for (j = 0; j != 84; ++j)
  {
    if (gCaptureDeviceCFPrefs[j + 12] == 1)
    {
      H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, j, 1);
      H16ISP::H16ISPDevice::SetMetadataRequired(*v277, *v275, j, 1, 1);
      H16ISP::H16ISPDevice::SetMetadataRequired(*v277, *v275, j, 0, 1);
    }
  }

  v65 = dword_2810032B8;
  if (dword_2810032B8)
  {
    for (k = 0; k != 32; ++k)
    {
      if ((v65 >> k))
      {
        H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, k + 32, 1);
        H16ISP::H16ISPDevice::SetMetadataRequired(*v277, *v275, k + 32, 1, 1);
        H16ISP::H16ISPDevice::SetMetadataRequired(*v277, *v275, k + 32, 0, 1);
        v65 = dword_2810032B8;
      }
    }
  }

  v67 = dword_281003340;
  if (dword_281003340 != -1)
  {
    if (!dword_281003340)
    {
      *(DerivedStorage + 1424) = 0;
LABEL_263:
      *(DerivedStorage + 1624) = v67;
      goto LABEL_264;
    }

    if (*(DerivedStorage + 1304) == 1)
    {
      *(DerivedStorage + 1424) = 1;
    }

    if (*(DerivedStorage + 1504))
    {
      v67 = 1;
      goto LABEL_263;
    }
  }

LABEL_264:
  v68 = &gCaptureDeviceCFPrefs[44 * *v275];
  v69 = v68[182];
  v70 = v68[181];
  if (v69 < 0x100 || v70 <= 0xFF)
  {
    if (v69 > 0xFF)
    {
      LOBYTE(v69) = v70;
    }

    if (v70 > 0xFF)
    {
      LOBYTE(v70) = v69;
    }

    H16ISP::H16ISPDevice::SetAEConvergenceSpeed2Way(*v277, *v275, v70, v69);
  }

  v71.i64[0] = -1;
  v71.i64[1] = -1;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(xmmword_281003140, v71)))))
  {
    H16ISP::H16ISPDevice::SetVISParams(*v277, *v275, xmmword_281003140, SDWORD1(xmmword_281003140), SDWORD2(xmmword_281003140), SHIDWORD(xmmword_281003140));
  }

  if (dword_2810032BC >= 1)
  {
    H16ISP::H16ISPDevice::WritePropertyValue(*v277, *v275, 2057, 1, 0xFFFFFFFF);
  }

  v72 = *(DerivedStorage + 200);
  switch(v72)
  {
    case -1:
      if (*(DerivedStorage + 698) == 1)
      {
        v73 = *v277;
        v74 = *(DerivedStorage + 156);
        if (*(DerivedStorage + 778) == 1)
        {
          H16ISP::H16ISPDevice::EnableVIS(v73, v74, 1, 1);
        }

        else
        {
          H16ISP::H16ISPDevice::EnableVIS(v73, v74, 0, 0);
        }
      }

      break;
    case 1:
      H16ISP::H16ISPDevice::EnableVIS(*v277, *v275, 1, 1);
      H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, 16, 1);
      H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, 18, 1);
      break;
    case 2:
      H16ISP::H16ISPDevice::EnableVIS(*v277, *v275, 1, 0);
      H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, 16, 1);
      H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, 18, 1);
      break;
    default:
      H16ISP::H16ISPDevice::EnableVIS(*v277, *v275, 0, 0);
      H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, 16, 0);
      H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *v275, 18, 0);
      break;
  }

  H16ISP::H16ISPDevice::EnableTileBasedGDC(*v277, *(DerivedStorage + 156), *(DerivedStorage + 1379), *(DerivedStorage + 779), 0, 0);
  if (*(DerivedStorage + 1379) == 1)
  {
    v75 = *(DerivedStorage + 1380);
    if (v75 > 0.0)
    {
      v76 = *(DerivedStorage + 780);
LABEL_292:
      H16ISP::H16ISPDevice::SetGDCStrength(*v277, *v275, v76, v75);
      goto LABEL_293;
    }
  }

  if (*(DerivedStorage + 779) == 1)
  {
    v76 = *(DerivedStorage + 780);
    if (v76 > 0.0)
    {
      v75 = *(DerivedStorage + 1380);
      goto LABEL_292;
    }
  }

LABEL_293:
  if (*(DerivedStorage + 204) != -1)
  {
    H16ISP::H16ISPDevice::SuspendAEHdrRatioUpdate(*v277, *(DerivedStorage + 156));
    H16ISP::H16ISPDevice::SetHDRRatioManual(*v277, *(DerivedStorage + 156), *(DerivedStorage + 204));
  }

  v77 = *(DerivedStorage + 48);
  v78 = *(DerivedStorage + 192);
  if (H16ISP::H16ISPDevice::UpdateChannelConfigCache(*v277, *(DerivedStorage + 156)))
  {
    v79 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v79 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v79;
    }

    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_74;
  }

  if (v77 >= v78)
  {
    v80 = v78;
  }

  else
  {
    v80 = 0;
  }

  v81 = v77 - v80;
  if (H16ISP::H16ISPDevice::GetCameraConfig(*v277, *(DerivedStorage + 156), *(*(DerivedStorage + 184) + 120 * (v77 - v80) + 16), &v287, v314))
  {
    v82 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v82 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v82;
    }

    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_74;
  }

  H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *(DerivedStorage + 156), 30, (v315 & 3) != 0);
  H16ISP::H16ISPDevice::EnableMetadataSection(*v277, *(DerivedStorage + 156), 54, v296 != 0);
  v83 = *(DerivedStorage + 184) + 120 * v81;
  v270 = *(v83 + 20);
  v84 = *(v83 + 28);
  if (*(DerivedStorage + 168) == 1)
  {
    if (*(v83 + 112))
    {
      v85 = 2;
    }

    else
    {
      v85 = 1;
    }
  }

  else
  {
    v85 = 0;
  }

  if (*(DerivedStorage + 692) >= 1)
  {
    bzero(buf, 0x10uLL);
    *&buf[4] = 292;
    *&buf[8] = *v275;
    *&buf[12] = 1;
    H16ISP::H16ISPDevice::ISP_SendCommand(*v277, buf, 0x10u, 0, 0xFFFFFFFF);
  }

  v86 = *(DerivedStorage + 196);
  if (v86 != -1)
  {
    if (v86)
    {
      H16ISP::H16ISPDevice::EnableFullResLSC(*v277, *v275);
    }

    else
    {
      H16ISP::H16ISPDevice::DisableFullResLSC(*v277, *v275);
    }
  }

  v87 = *(DerivedStorage + 208);
  if (v87 != -1)
  {
    H16ISP::H16ISPDevice::EnableFocusPixels(*v277, v23, v87 != 0);
  }

  v88 = *(DerivedStorage + 212);
  if (v88 != -1)
  {
    H16ISP::H16ISPDevice::EnableContinuousFocus(*v277, v23, v88 != 0, *(DerivedStorage + 216));
  }

  v89 = *(DerivedStorage + 244);
  if (v89 != -1)
  {
    if (v89)
    {
      H16ISP::H16ISPDevice::BinningCompensationStart(*v277, *v275);
    }

    else
    {
      H16ISP::H16ISPDevice::BinningCompensationStop(*v277, *v275);
    }
  }

  v90 = *(DerivedStorage + 224);
  if (v90 == -1)
  {
    v91 = *(DerivedStorage + 228);
    if (v91 != -1)
    {
      if (v91)
      {
        H16ISP::H16ISPDevice::StartHighlightRecovery(*v277, *v275);
      }

      else
      {
        H16ISP::H16ISPDevice::StopHighlightRecovery(*v277, *v275);
      }
    }
  }

  else if (v90)
  {
    H16ISP::H16ISPDevice::StartHighlightRecovery(*v277, *v275);
    H16ISP::H16ISPDevice::StartLocalToneMapping(*v277, *v275);
  }

  else
  {
    H16ISP::H16ISPDevice::StopHighlightRecovery(*v277, *v275);
    H16ISP::H16ISPDevice::StopLocalToneMapping(*v277, *v275);
  }

  v92 = *(DerivedStorage + 248) - 1;
  if (v92 <= 2)
  {
    H16ISP::H16ISPDevice::EnableContextSwitching(*v277, *v275, v92);
  }

  if (*(DerivedStorage + 698) != 1)
  {
LABEL_362:
    v100 = (*(DerivedStorage + 184) + 120 * v81);
    if (H16ISP::H16ISPDevice::SetPrimaryBESConfig(*v277, *(DerivedStorage + 156), v270, v84, v100[1], v100[2], v100[3], v100[1], v100[2], *(DerivedStorage + 48) >= *(DerivedStorage + 192), v85, 0, 0, 0, 0))
    {
      v101 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v101 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v101;
      }

      if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }

      goto LABEL_74;
    }

    goto LABEL_367;
  }

  if (*(DerivedStorage + 1388))
  {
    v93 = 1396;
    v94 = 1392;
LABEL_344:
    v95 = *(DerivedStorage + v94);
    v96 = *(DerivedStorage + v93);
    goto LABEL_345;
  }

  if (*(DerivedStorage + 1588))
  {
    v93 = 1596;
    v94 = 1592;
    goto LABEL_344;
  }

  if (*(DerivedStorage + 2588) == 1)
  {
    v93 = 2596;
    v94 = 2592;
    goto LABEL_344;
  }

  LOWORD(v96) = 0;
  LOWORD(v95) = 0;
LABEL_345:
  if (H16ISP::H16ISPDevice::SetTimeMachineDepth(*v277, *v275, v95, v96))
  {
    v97 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v97 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v97;
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_142;
  }

  if (*(DerivedStorage + 776) & 1) != 0 || (*(DerivedStorage + 976) & 1) != 0 || (*(DerivedStorage + 1176) & 1) != 0 || (*(DerivedStorage + 4080) & 1) != 0 || (*(DerivedStorage + 1976))
  {
    v98 = 1;
  }

  else
  {
    v98 = *(DerivedStorage + 2104);
  }

  if (H16ISP::H16ISPDevice::SetRawPreviewConfig(*v277, *v275, v98 & 1))
  {
    v99 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v99 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v99;
    }

    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_142;
  }

  if ((*(DerivedStorage + 698) & 1) == 0)
  {
    goto LABEL_362;
  }

LABEL_367:
  v286 = 0;
  H16ISP::H16ISPDevice::ISP_SelectBestMIPIFrequencyIndex(*(v276 + 3), *v275, &v286);
  v285 = 0;
  H16ISP::H16ISPDevice::ISP_SelectBestChargePumpFrequencyIndex(*(v276 + 3), *v275, &v285);
  v284 = 0;
  H16ISP::H16ISPDevice::ISP_SelectBestPixClockFrequencyIndex(*(v276 + 3), *v275, &v284);
  if (v276[256] == 1)
  {
    H16ISP::H16ISPDevice::SetMIPIFrequencyIndex(*v277, *v275, v286);
    if (v285 != -1)
    {
      H16ISP::H16ISPDevice::SetChargePumpFrequencyIndex(*v277, *v275, v285);
    }

    v102 = v284;
    if (v284 != -1)
    {
      v103 = *v275;
      if (*(v58 + 104 * *v275 + 64))
      {
        if (*(DerivedStorage + 4360))
        {
          if (v273)
          {
            *(v276 + 65) = v284;
          }

          else
          {
            v102 = *(v276 + 65);
          }
        }

        H16ISP::H16ISPDevice::SetPixClockFrequencyIndex(*v277, v103, v102);
      }
    }

    bzero(buf, 0x84uLL);
    if (!H16ISP::H16ISPDevice::ISP_GetCurrentToFClockBanks(*v277, *v275, buf))
    {
      H16ISP::H16ISPDevice::ISP_SetCurrentToFClockBanks(*v277, *v275, buf);
    }
  }

  if ((*(DerivedStorage + 4256) & 1) == 0 && *(v58 + 104 * *v275 + 8) != 1785950322)
  {
    ApplyColorSpaceConfiguration(v276, DerivedStorage);
  }

  if (*(DerivedStorage + 240) != -1)
  {
    H16ISP::H16ISPDevice::SetAWBScheme(*v277, *v275, *(DerivedStorage + 240));
  }

  v104 = *(DerivedStorage + 220);
  if (v104 != -1)
  {
    if (v104)
    {
      H16ISP::H16ISPDevice::SNFStart(*v277, *v275);
    }

    else
    {
      H16ISP::H16ISPDevice::SNFStop(*v277, *v275);
    }
  }

  v105 = *(DerivedStorage + 656);
  if (v105 != -1 && !*v275 && H16ISP::H16ISPDevice::EnableHighFrameRateAF(*v277, 0, v105 != 0))
  {
    v127 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v127 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v127;
    }

    if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }
  }

  H16ISP::H16ISPDevice::AttachOldRawToPreview(*v277, *(DerivedStorage + 156), 0);
  if (*(DerivedStorage + 104) == 1)
  {
    if (gCaptureDeviceCFPrefs[0] || *(DerivedStorage + 4606) == 1)
    {
      v106 = HIDWORD(v290);
    }

    else
    {
      v106 = v290;
    }
  }

  else
  {
    v106 = -1;
  }

  v107 = *v277;
  v108 = *v275;
  if (dword_2810032C0)
  {
    H16ISP::H16ISPDevice::SetAEBracketingWaitForFocusParams(v107, v108, 1, 1000 * dword_2810032C0);
    v109 = dword_2810032C0 / 0x3E8u + 4;
  }

  else
  {
    H16ISP::H16ISPDevice::SetAEBracketingWaitForFocusParams(v107, v108, 0, 0);
    v109 = 4;
  }

  *(DerivedStorage + 4176) = v109;
  v110 = *(DerivedStorage + 184) + 120 * v81;
  if (*(v110 + 36) == 1)
  {
    *(DerivedStorage + 644) = *(v110 + 40);
  }

  else
  {
    v111 = DWORD2(v295);
    *(DerivedStorage + 644) = *(&v295 + 1);
    if (BYTE12(v294))
    {
      *(DerivedStorage + 644) = v111 >> 1;
    }
  }

  v112 = (DerivedStorage + 160);
  v113 = *v277;
  *number = DerivedStorage + 160;
  *&number[8] = v113;
  *&number[16] = v314[26];
  v317 = v314[30];
  v114 = *(DerivedStorage + 152);
  v318 = *(DerivedStorage + 156);
  v319 = v314[25];
  if (*(DerivedStorage + 105) == 1)
  {
    v115 = v314[29];
  }

  else
  {
    v115 = -1;
  }

  v320 = v115;
  if (*(DerivedStorage + 698) == 1)
  {
    if (v114 <= *(DerivedStorage + 768))
    {
      v114 = *(DerivedStorage + 768);
    }

    if (v114 <= *(DerivedStorage + 968))
    {
      v114 = *(DerivedStorage + 968);
    }

    if (v114 <= *(DerivedStorage + 1368))
    {
      v114 = *(DerivedStorage + 1368);
    }

    if (v114 <= *(DerivedStorage + 1568))
    {
      v114 = *(DerivedStorage + 1568);
    }

    if (v114 <= *(DerivedStorage + 1168))
    {
      v114 = *(DerivedStorage + 1168);
    }

    if (v114 <= *(DerivedStorage + 2568))
    {
      v114 = *(DerivedStorage + 2568);
    }

    if (v114 <= *(DerivedStorage + 2768))
    {
      v114 = *(DerivedStorage + 2768);
    }

    if (v114 <= *(DerivedStorage + 2168))
    {
      v114 = *(DerivedStorage + 2168);
    }

    if (v114 <= *(DerivedStorage + 2368))
    {
      v114 = *(DerivedStorage + 2368);
    }
  }

  v321 = v114;
  v326 = H16ISPEPipeReceivedProc;
  v327 = v267;
  v116 = *(DerivedStorage + 108);
  v117 = MyH16ISPFrameReceivedFilterGraphEntryProc;
  if (!*(DerivedStorage + 4720))
  {
    v117 = MyH16ISPFrameReceivedProc;
  }

  v322 = v117;
  v323 = v267;
  v324 = MyH16ISPFrameReceiverMessageProc;
  v325 = v267;
  if (v116)
  {
    v118 = DerivedStorage + 108;
  }

  else
  {
    v118 = 0;
  }

  v328 = v118;
  v119 = *(DerivedStorage + 52);
  if (v119 > *(DerivedStorage + 60))
  {
    v120 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v120 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v120;
    }

    if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
    {
      v132 = *(DerivedStorage + 156);
      v133 = *(DerivedStorage + 52);
      v134 = *(DerivedStorage + 60);
      *buf = 136315906;
      *&buf[4] = "H16ISPCaptureStreamStartInternal";
      *&buf[12] = 1024;
      *&buf[14] = v132;
      *&buf[18] = 2048;
      *&buf[20] = v133;
      *&buf[28] = 2048;
      *&buf[30] = v134;
      _os_log_error_impl(&dword_2247DB000, v120, OS_LOG_TYPE_ERROR, "%s - CH%d maxFrameRate %.3f is larger than maxAllowedFrameRate %.3f\n\n", buf, 0x26u);
    }

    v19 = 4294954516;
    goto LABEL_74;
  }

  v121 = *(DerivedStorage + 80);
  if (v121 < 2)
  {
    v122 = vcvtms_u32_f32(v119 * 256.0);
    v121 = 1;
  }

  else
  {
    v122 = *(DerivedStorage + 76);
  }

  v329 = v122;
  v330 = v121;
  v123 = *(DerivedStorage + 88);
  if (v123 < 2)
  {
    v124 = vcvtps_u32_f32(*(DerivedStorage + 56) * 256.0);
    v123 = 1;
  }

  else
  {
    v124 = *(DerivedStorage + 84);
  }

  v331 = v124;
  v332 = v123;
  v333 = *(DerivedStorage + 4516);
  if (ALSModeForStreaming(DerivedStorage, v276) == 2 && H16ISP::H16ISPDevice::EnableALS(*v277, *v275, 2))
  {
    v125 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v125 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v125;
    }

    v19 = 3758097084;
    if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_74;
  }

  *(DerivedStorage + 4236) = *(DerivedStorage + 4232);
  if (H16ISP::H16ISPDevice::GetErrorCount(*v277, *(DerivedStorage + 156), 2, (DerivedStorage + 4792)))
  {
    v126 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v126 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v126;
    }

    v19 = 3758097084;
    if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_74;
  }

  if (H16ISP::CreateH16ISPFrameReceiver(number))
  {
    v128 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v128 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v128;
    }

    if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_74;
  }

  if (H16ISP::H16ISPDevice::isSensorType(*v277, *v275, 1785950322))
  {
    H16ISP::H16ISPFrameReceiver::SendFWStartCmdBeforeDeliveringBuffers(*v112, 0);
  }

  *(*(DerivedStorage + 160) + 432) = *(DerivedStorage + 2924);
  if (*(DerivedStorage + 4266) == 1)
  {
    *(DerivedStorage + 4266) = 0;
    if (H16ISP::H16ISPDevice::EnableVibeMitigation(*v277, *v275, 0))
    {
      v129 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v129 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v129;
      }

      if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }
    }
  }

  if (*(DerivedStorage + 4607) == 1 && *(DerivedStorage + 4608) == 1)
  {
    H16ISP::H16ISPFrameReceiver::SendFWStartCmdBeforeDeliveringBuffers(*v112, 0);
  }

  if ((v266 & 1) == 0)
  {
    H16ISP::H16ISPFrameReceiver::SendFWStartCmdBeforeDeliveringBuffers(*v112, 0);
  }

  if (*(DerivedStorage + 698))
  {
    if (*(DerivedStorage + 8))
    {
      v266 &= !H16ISP::H16ISPDevice::isSensorType(*v277, *v275, 1785950322);
    }

    if (*(DerivedStorage + 4594) == 1 && H16ISP::H16ISPDevice::isSensorType(*v277, *v275, 1718186595))
    {
      H16ISP::H16ISPFrameReceiver::SendFWStartCmdBeforeDeliveringBuffers(*v112, 0);
      v130 = *v277;
      v131 = *v275;
    }

    else
    {
      v130 = *v277;
      v131 = *v275;
      if (v266)
      {
        v137 = 1;
        goto LABEL_492;
      }
    }

    v137 = *(DerivedStorage + 4606);
LABEL_492:
    if (H16ISP::H16ISPDevice::EnableLocalRawBufferMode(v130, v131, v137 & 1))
    {
      v138 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v138 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v138;
      }

      if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }

      goto LABEL_74;
    }

    if (*(DerivedStorage + 1377) & 1) != 0 || (*(DerivedStorage + 1577))
    {
      v140 = 0;
    }

    else
    {
      v140 = *(DerivedStorage + 2577) ^ 1;
    }

    if (H16ISP::H16ISPDevice::EnableLocalThumbnailRawBufferMode(*v277, *v275, v140 & 1))
    {
      v144 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v144 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v144;
      }

      if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }

      goto LABEL_74;
    }

    if (*(DerivedStorage + 1704) == 1)
    {
      if (BYTE14(v292))
      {
        v145 = 2;
      }

      else
      {
        v145 = 1;
      }

      v146 = H16ISP::H16ISPDevice::EnableFullResCapture(*v277, *v275, v145);
      if (v146)
      {
        v147 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v147 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v147;
        }

        if (!os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_627;
        }

        goto LABEL_526;
      }
    }

    else
    {
      v146 = H16ISP::H16ISPDevice::EnableFullResCapture(*v277, *v275, 0);
      if (v146)
      {
        v148 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v148 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v148;
        }

        if (!os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_627;
        }

LABEL_526:
        H16ISPCaptureStreamStartInternal();
LABEL_627:
        v19 = v146;
        goto LABEL_74;
      }
    }

    v149 = ConfigSensorFormat(v276, DerivedStorage);
    if (v149)
    {
      v160 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v160 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v160;
      }

      if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }
    }

    if (!v296)
    {
LABEL_639:
      if (*(DerivedStorage + 1104))
      {
        v177 = 2;
      }

      else
      {
        v177 = 3;
      }

      if (H16ISP::H16ISPDevice::ISP_PreviewStreamSet(*v277, *(DerivedStorage + 156), v177))
      {
        v178 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v178 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v178;
        }

        if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
        {
          H16ISPCaptureStreamStartInternal();
        }

        goto LABEL_73;
      }

      if (*(DerivedStorage + 8) && H16ISP::H16ISPDevice::isSensorType(*v277, *v275, 1785950322))
      {
        v310 = v297;
        v311 = v298;
        v312 = v299;
        v306 = v293;
        v307 = v294;
        v313 = v300;
        v308 = v295;
        v309 = v296;
        *&buf[32] = v289;
        v303 = v290;
        v304 = v291;
        v305 = v292;
        *buf = v287;
        *&buf[16] = v288;
        AddRawPoolToFrameReceiver(DerivedStorage, v276, buf);
      }

      if (*(DerivedStorage + 4824) || *(DerivedStorage + 4840) || *(DerivedStorage + 4816) || (v263 = *(DerivedStorage + 4936)) != 0 && *v263)
      {
        v310 = v297;
        v311 = v298;
        v312 = v299;
        v306 = v293;
        v307 = v294;
        v313 = v300;
        v308 = v295;
        v309 = v296;
        *&buf[32] = v289;
        v303 = v290;
        v304 = v291;
        v305 = v292;
        *buf = v287;
        *&buf[16] = v288;
        AddRawPoolToFrameReceiver(DerivedStorage, v276, buf);
      }

      if (!*(DerivedStorage + 4888))
      {
        v179 = *(DerivedStorage + 4936);
        if (!v179)
        {
          goto LABEL_664;
        }

        if (!*(v179 + 56))
        {
LABEL_658:
          if (*(v179 + 112))
          {
            AddRawPlusPoolToFrameReceiver(DerivedStorage);
          }

          goto LABEL_664;
        }
      }

      AddHiResRawPoolToFrameReceiver(DerivedStorage);
      v179 = *(DerivedStorage + 4936);
      if (v179)
      {
        goto LABEL_658;
      }

LABEL_664:
      if (*(DerivedStorage + 704) == 1)
      {
        ActivatePrimaryScalerOutputInFrameReceiver(DerivedStorage, v276);
      }

      if (*(DerivedStorage + 904) == 1)
      {
        ActivateSecondaryScalerOutputInFrameReceiver(DerivedStorage, v276);
      }

      if (*(DerivedStorage + 1104) == 1)
      {
        ActivateIntermediateTapOutputInFrameReceiver(DerivedStorage, v276);
      }

      if (*(DerivedStorage + 1304) == 1)
      {
        ActivateStillImageOutputInFrameReceiver(DerivedStorage, v276);
      }

      if (*(DerivedStorage + 1504) == 1)
      {
        ActivateStillImageIntermediateTapOutputInFrameReceiver(DerivedStorage, v276);
      }

      if (*(DerivedStorage + 1704) == 1)
      {
        ActivateStillImageQuadraOutputInFrameReceiver(DerivedStorage, v276);
      }

      if (*(DerivedStorage + 2104) == 1)
      {
        ActivateRawOutputInFrameReceiver(DerivedStorage, v276);
      }

      if (*(DerivedStorage + 2304) == 1)
      {
        ActivateProResRawOutputInFrameReceiver(DerivedStorage, v276);
      }

      if (*(DerivedStorage + 2504) == 1)
      {
        ActivateStillImageRawOutputInFrameReceiver(DerivedStorage, v276);
      }

      if (*(DerivedStorage + 2704) == 1)
      {
        ActivateVisPipeOutputInFrameReceiver(DerivedStorage, v276);
      }

      if (*(DerivedStorage + 4080) == 1)
      {
        ActivatePointCloudOutputInFrameReceiver(DerivedStorage, v276);
      }

      if (*(DerivedStorage + 2904) == 1)
      {
        ActivateMetadataOutputInFrameReceiver(DerivedStorage, v276);
        if (*(DerivedStorage + 2904))
        {
          if (*(DerivedStorage + 4072) != 1 || (AddDCSIMUDataPoolToFrameReceiver(DerivedStorage, v276), (*(DerivedStorage + 2904) & 1) != 0))
          {
            if (*(DerivedStorage + 4073) == 1)
            {
              AddDCSNonVisionDataPoolToFrameReceiver(DerivedStorage, v276);
            }
          }
        }
      }

      if (*(DerivedStorage + 1904) == 1 && *(DerivedStorage + 1976) == 1 && (*(*v112 + 533) & 1) == 0)
      {
        v310 = v297;
        v311 = v298;
        v312 = v299;
        v306 = v293;
        v307 = v294;
        v313 = v300;
        v308 = v295;
        v309 = v296;
        *&buf[32] = v289;
        v303 = v290;
        v304 = v291;
        v305 = v292;
        *buf = v287;
        *&buf[16] = v288;
        AddRawPoolToFrameReceiver(DerivedStorage, v276, buf);
      }

      if (H16ISP::H16ISPDevice::isSensorType(*v277, *v275, 1718186595) && *(DerivedStorage + 4448) == 1 && (*(*v112 + 533) & 1) == 0)
      {
        v310 = v297;
        v311 = v298;
        v312 = v299;
        v306 = v293;
        v307 = v294;
        v313 = v300;
        v308 = v295;
        v309 = v296;
        *&buf[32] = v289;
        v303 = v290;
        v304 = v291;
        v305 = v292;
        *buf = v287;
        *&buf[16] = v288;
        AddRawPoolToFrameReceiver(DerivedStorage, v276, buf);
      }

      if (*(DerivedStorage + 4594) == 1 && H16ISP::H16ISPDevice::isSensorType(*v277, *v275, 1718186595) && (*(*v112 + 533) & 1) == 0)
      {
        v310 = v297;
        v311 = v298;
        v312 = v299;
        v306 = v293;
        v307 = v294;
        v313 = v300;
        v308 = v295;
        v309 = v296;
        *&buf[32] = v289;
        v303 = v290;
        v304 = v291;
        v305 = v292;
        *buf = v287;
        *&buf[16] = v288;
        AddRawPoolToFrameReceiver(DerivedStorage, v276, buf);
      }

      v180 = 0;
      *buf = *(DerivedStorage + 156);
      v181 = (DerivedStorage + 4156);
      for (m = 2; m != 8; m += 2)
      {
        v183 = *v181++;
        v184 = vcvts_n_s32_f32(v183, 0xAuLL);
        *&buf[m] = v184;
        v180 |= v184 > 0x400;
      }

      if ((v180 & 1) != 0 && H16ISP::H16ISPDevice::SetMultiCamZoomFactor(*v277, 1u, buf))
      {
        v185 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v185 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v185;
        }

        if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
        {
          H16ISPCaptureStreamStartInternal();
        }
      }

      goto LABEL_533;
    }

    if (*(DerivedStorage + 1304) == 1 && (*(DerivedStorage + 1388) & 1) != 0)
    {
      v161 = 1488;
    }

    else
    {
      if (*(DerivedStorage + 1504) != 1 || *(DerivedStorage + 1588) != 1)
      {
        v166 = 0;
        v165 = 1;
LABEL_596:
        if (*(DerivedStorage + 2504) == 1 && *(DerivedStorage + 2588) == 1)
        {
          v165 = *(DerivedStorage + 2688) ^ 1;
          v166 = *(DerivedStorage + 1492);
        }

        if (gCaptureDeviceCFPrefs[44 * *v275 + 206] == -1)
        {
          v167 = v165;
        }

        else
        {
          v167 = gCaptureDeviceCFPrefs[44 * *v275 + 206];
        }

        if (H16ISP::H16ISPDevice::SetCameraControl(*v277, *v275, 3, v167))
        {
          v168 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v168 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v168;
          }

          if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
          {
            H16ISPCaptureStreamStartInternal();
          }

          goto LABEL_73;
        }

        if (H16ISP::H16ISPDevice::SetCameraControl(*v277, *v275, 4, v166))
        {
          v176 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v176 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v176;
          }

          if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
          {
            H16ISPCaptureStreamStartInternal();
          }

          goto LABEL_73;
        }

        goto LABEL_639;
      }

      v161 = 1688;
    }

    v165 = *(DerivedStorage + v161) ^ 1;
    v166 = *(DerivedStorage + 1492);
    goto LABEL_596;
  }

  v135 = *(DerivedStorage + 160);
  memset(buf, 0, 32);
  if (H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v135, 0, SDWORD1(v288)))
  {
    v136 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v136 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v136;
    }

    if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_74;
  }

  if (H16ISP::H16ISPDevice::SetScalerChromaSampleOffset(*v277, *(DerivedStorage + 156), *(DerivedStorage + 168) == 0, 1, 0))
  {
    v139 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v139 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v139;
    }

    if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_73;
  }

  if (v106 != -1)
  {
    v141 = *(DerivedStorage + 160);
    memset(buf, 0, 32);
    if (H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v141, 1, v106) || (v142 = *(DerivedStorage + 160), memset(buf, 0, 32), H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v142, 29, v297)))
    {
      v143 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v143 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v143;
      }

      if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }

      goto LABEL_74;
    }
  }

  v149 = 0;
LABEL_533:
  if (*(DerivedStorage + 4424) == 1)
  {
    *buf = 0;
    LODWORD(valuePtr[0]) = 0;
    LODWORD(v278) = 0;
    v283 = 0;
    BYTE4(v282) = 0;
    H16ISP::H16ISPFrameReceiver::getOutputSize(*v112, buf, valuePtr, &v278, &v283 + 1, &v283, &v282 + 4);
    if ((v283 - 31) >= 6 && v283 != 1)
    {
      *(DerivedStorage + 4424) = 0;
    }

    if (H16ISP::H16ISPDevice::SetProResSharpeningTuning(*v277, *(DerivedStorage + 156), *(DerivedStorage + 4424) != 0))
    {
      v150 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v150 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v150;
      }

      if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }

      *(DerivedStorage + 4424) = 0;
    }
  }

  v151 = *v275;
  v152 = *(v58 + 104 * *v275 + 8);
  if (v152 == 1919246706 || v152 == 1919251564 || v152 == 1919251319)
  {
    v156 = v152 == 1919246706 && dword_281003330 == 2;
    v157 = dword_281003330 == 1 && v152 == 1919251564;
    v158 = *(DerivedStorage + 4408);
    if (!v157 && !v156)
    {
      if (!v158)
      {
        goto LABEL_582;
      }
    }

    else
    {
      *(DerivedStorage + 4408) = v158 | 5;
      if (dword_281003344)
      {
        *(DerivedStorage + 4408) = v158 | 7;
      }
    }

    if (*(DerivedStorage + 4360))
    {
      if (v152 != 1919251564 && (v152 != 1919251319 || *(DerivedStorage + 660) != -1))
      {
        goto LABEL_612;
      }

      v162 = dword_28100334C;
      if (dword_28100334C == -1)
      {
        v162 = 1;
      }

      if (dword_281003348 == -1)
      {
        v163 = v162;
      }

      else
      {
        v163 = dword_281003348;
      }

      v164 = H16ISP::H16ISPDevice::SetFocusMultiCamBehavior(*v277, v151, v163);
      goto LABEL_589;
    }

LABEL_582:
    if (*(DerivedStorage + 4404) == 2)
    {
      H16ISP::H16ISPDevice::EnablePDEOutput(*v277, v151, 0, 0);
      *(DerivedStorage + 4404) = 1;
    }

    if (v152 != 1919251564 && (v152 != 1919251319 || *(DerivedStorage + 660) != -1))
    {
      goto LABEL_612;
    }

    if (dword_281003348 == -1)
    {
      v163 = 2;
    }

    else
    {
      v163 = dword_281003348;
    }

    v164 = H16ISP::H16ISPDevice::SetFocusMultiCamBehavior(*v277, *v275, v163);
LABEL_589:
    if (!v164)
    {
      *(DerivedStorage + 660) = v163;
    }
  }

LABEL_612:
  if (*(DerivedStorage + 4256) == 1)
  {
    if (H16ISP::H16ISPDevice::IsProjectorAllowed(*v277, *v275))
    {
      operator new();
    }

    if (*(DerivedStorage + 4408))
    {
      NotifyProjectorValidationError(DerivedStorage, v276);
    }
  }

  else if (*(DerivedStorage + 4408))
  {
    EnablePCEStreamingInFrameReceiver(v276, DerivedStorage);
  }

  if (H16ISP::H16ISPDevice::isSensorType(*v277, *v275, 1785950322))
  {
    v170 = H16ISP::JasperConfigManager::applyFrameMode(*(v276 + 3), *(DerivedStorage + 156), *(DerivedStorage + 4576), *(v276 + 29), v169);
    v146 = v170;
    if (v170)
    {
      if (H16ISP::JasperConfigManager::getFrameMode(v170) != -1)
      {
        v171 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v171 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v171;
        }

        if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
        {
          H16ISPCaptureStreamStartInternal();
        }

        H16ISPPostNotification(@"BadJasperCalibrationNotification", v267, 0);
        goto LABEL_627;
      }
    }

    else if (H16ISP::H16ISPDevice::IsProjectorAllowed(*v277, *v275))
    {
      *(DerivedStorage + 4258) = 1;
      v172 = *(DerivedStorage + 4720);
      if (v172)
      {
        *buf = 0;
        Node = H16ISP::H16ISPFilterGraphManager::GetNode(v172, 11, buf);
        if (!Node)
        {
          v174 = *buf;
          if (*buf)
          {
            H16ISP::JasperConfigManager::getFrameMode(Node);
            H16ISP::H16ISPTimeOfFlightColorSynchronizer::setFWisAFOwner(*(v276 + 34), v276[281]);
            H16ISP::H16ISPTimeOfFlightColorSynchronizer::setPreviewMasterCallback(*(v276 + 34), getTofGroupPreviewMasterChannel, v276);
            H16ISP::H16ISPTimeOfFlightColorSynchronizer::setFWProjectorMode(*(v276 + 34), 1);
            v175 = *(v276 + 34);
            if (v276[280] == 1)
            {
              H16ISP::H16ISPTimeOfFlightColorSynchronizer::enableTofAssistance(v175, *v112);
            }

            else
            {
              H16ISP::H16ISPTimeOfFlightColorSynchronizer::disableTofAssistance(v175);
            }

            H16ISP::H16ISPJasperDepthNode::setJasperFrameRateMin(v174, *(DerivedStorage + 56));
            H16ISP::H16ISPJasperDepthNode::setJasperFrameRateMax(v174, *(DerivedStorage + 52));
          }
        }
      }

      H16ISP::H16ISPDevice::SetTOFPriRandomSwapMode(*v277, *v275, 1, 512, 3072);
    }

    else
    {
      NotifyProjectorValidationError(DerivedStorage, v276);
    }
  }

  if (*(DerivedStorage + 4258) == 1)
  {
    EnableIRProjector(1, DerivedStorage, v276);
  }

  v186 = *(DerivedStorage + 580);
  v187 = *(DerivedStorage + 584);
  if (!*(DerivedStorage + 580))
  {
    goto LABEL_718;
  }

  bzero(buf, 0x3CuLL);
  *&buf[4] = -16366;
  *&buf[8] = *v275;
  *&buf[12] = v186;
  *&buf[16] = v187;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*v277, buf, 0x3Cu, 0, 0xFFFFFFFF))
  {
    v189 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v189 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v189;
    }

    if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_74;
  }

  if (*(DerivedStorage + 580))
  {
    v212 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    v213 = MEMORY[0x277D86220];
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v212 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v212;
    }

    if (os_log_type_enabled(v212, OS_LOG_TYPE_INFO))
    {
      LOWORD(valuePtr[0]) = 0;
      _os_log_impl(&dword_2247DB000, v212, OS_LOG_TYPE_INFO, "Adding buffer-pool to receiver for horizontal edge map\n\n", valuePtr, 2u);
    }

    v214 = *(DerivedStorage + 160);
    memset(valuePtr, 0, sizeof(valuePtr));
    H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v214, 4, *&buf[32]);
    *(DerivedStorage + 608) = *&buf[32];
    v215 = *(DerivedStorage + 592);
    if (v215)
    {
      BytePtr = CFDataGetBytePtr(v215);
      if (BytePtr)
      {
        bzero(valuePtr, 0x24uLL);
        WORD2(valuePtr[0]) = -16368;
        DWORD2(valuePtr[0]) = 0;
        v217 = *(DerivedStorage + 580) - 6;
        if (v217 <= 3)
        {
          HIDWORD(valuePtr[0]) = dword_2249BBE20[v217];
          LOWORD(valuePtr[1]) = 0x1000000010000uLL >> (16 * v217);
        }

        for (n = 0; n != 9; ++n)
        {
          v219 = *&BytePtr[4 * n];
          if (v219 >= 0.0)
          {
            LOWORD(v221) = vcvts_n_s32_f32(v219, 0xDuLL);
            v220 = valuePtr + 2 * n;
          }

          else
          {
            v220 = valuePtr + 2 * n;
            v221 = -vcvts_n_s32_f32(fabsf(v219), 0xDuLL);
          }

          *(v220 + 9) = v221;
        }

        if (H16ISP::H16ISPDevice::ISP_SendCommand(*v277, valuePtr, 0x24u, 0, 0xFFFFFFFF))
        {
          v222 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v213)
          {
            v222 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v222;
          }

          if (!os_log_type_enabled(v222, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_74;
          }

          goto LABEL_818;
        }
      }
    }
  }

  else
  {
    *(DerivedStorage + 608) = -1;
  }

  if (!*(DerivedStorage + 584))
  {
    *(DerivedStorage + 612) = -1;
    goto LABEL_718;
  }

  v224 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  v225 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v224 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v224;
  }

  if (os_log_type_enabled(v224, OS_LOG_TYPE_INFO))
  {
    LOWORD(valuePtr[0]) = 0;
    _os_log_impl(&dword_2247DB000, v224, OS_LOG_TYPE_INFO, "Adding buffer-pool to receiver for vertical edge map\n\n", valuePtr, 2u);
  }

  v226 = *(DerivedStorage + 160);
  memset(valuePtr, 0, sizeof(valuePtr));
  H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v226, 4, SDWORD1(v303));
  *(DerivedStorage + 612) = DWORD1(v303);
  v227 = *(DerivedStorage + 600);
  if (v227)
  {
    v228 = CFDataGetBytePtr(v227);
    if (v228)
    {
      bzero(valuePtr, 0x24uLL);
      WORD2(valuePtr[0]) = -16368;
      DWORD2(valuePtr[0]) = 1;
      v229 = *(DerivedStorage + 584) - 6;
      if (v229 <= 3)
      {
        HIDWORD(valuePtr[0]) = dword_2249BBE20[v229];
        LOWORD(valuePtr[1]) = 0x1000000010000uLL >> (16 * v229);
      }

      for (ii = 0; ii != 9; ++ii)
      {
        v231 = *&v228[4 * ii];
        if (v231 >= 0.0)
        {
          LOWORD(v232) = vcvts_n_s32_f32(v231, 0xDuLL);
        }

        else
        {
          v232 = -vcvts_n_s32_f32(fabsf(v231), 0xDuLL);
        }

        *(&valuePtr[1] + ii + 1) = v232;
      }

      if (H16ISP::H16ISPDevice::ISP_SendCommand(*v277, valuePtr, 0x24u, 0, 0xFFFFFFFF))
      {
        v233 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v225)
        {
          v233 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v233;
        }

        if (!os_log_type_enabled(v233, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_74;
        }

LABEL_818:
        H16ISPCaptureStreamStartInternal();
        goto LABEL_74;
      }
    }
  }

LABEL_718:
  if (*(DerivedStorage + 620) == -1 || *(DerivedStorage + 624) == -1 || H16ISP::H16ISPFrameReceiver::setNewOutputSize(*(DerivedStorage + 160)))
  {
    goto LABEL_721;
  }

  v282 = 0;
  v283 = 0;
  v281 = 0;
  v280 = 0;
  H16ISP::H16ISPFrameReceiver::getOutputSize(*v112, &v283 + 1, &v283, &v282 + 1, &v282, &v281, &v280);
  bzero(valuePtr, 0x1CuLL);
  DWORD2(valuePtr[0]) = *v275;
  WORD2(valuePtr[0]) = 2049;
  *(valuePtr + 12) = *(DerivedStorage + 628);
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*v277, valuePtr, 0x1Cu, 0, 0xFFFFFFFF))
  {
    v223 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v223 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v223;
    }

    if (os_log_type_enabled(v223, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_73;
  }

  bzero(buf, 0x38uLL);
  v248 = *v275;
  *&buf[4] = 2817;
  v249 = v282 + HIDWORD(v283);
  *&buf[8] = v248;
  *&buf[12] = v282 + HIDWORD(v283);
  *&buf[16] = v283;
  *&buf[40] = HIDWORD(v282);
  v250 = v281;
  if (v281 <= 22)
  {
    if (v281 > 14)
    {
      if (v281 > 17)
      {
        if (v281 == 18)
        {
          v250 = 19;
          LOBYTE(v303) = 0;
          v249 = (2 * ((2863311531u * (v249 + 2)) >> 32)) & 0xFFFFFFFC;
          goto LABEL_947;
        }

        if (v281 == 22)
        {
          *&buf[28] = vand_s8(vadd_s32(vdup_n_s32(32 * v249), 0x1E0000003E0), 0xFFFFFE00FFFFFC00);
          *&buf[24] = 0;
          LOBYTE(v303) = 1;
          goto LABEL_949;
        }
      }

      else
      {
        if (v281 == 15)
        {
          v250 = 18;
          LOBYTE(v303) = 0;
          goto LABEL_941;
        }

        if (v281 == 16)
        {
          v250 = 18;
          LOBYTE(v303) = 1;
LABEL_941:
          v249 *= 2;
LABEL_947:
          v264 = (v249 + 63) & 0xFFFFFFC0;
          *&buf[24] = v250;
          goto LABEL_948;
        }
      }

LABEL_946:
      LOBYTE(v303) = 0;
      goto LABEL_947;
    }

    if (v281)
    {
      if (v281 == 1)
      {
        LOBYTE(v303) = 0;
        *&buf[24] = 1;
        *&buf[28] = (2 * v249 + 63) & 0xFFFFFFC0;
        goto LABEL_949;
      }

      if (v281 != 13)
      {
        goto LABEL_946;
      }

      LOBYTE(v303) = 1;
    }

    else
    {
      LOBYTE(v303) = 0;
    }

    v264 = (v249 + 63) & 0xFFFFFFC0;
    *&buf[24] = 0;
LABEL_948:
    *&buf[28] = v264;
    *&buf[32] = v264;
    goto LABEL_949;
  }

  if ((v281 - 24) >= 6)
  {
    if ((v281 - 31) < 6)
    {
      BufferPool = H16ISP::H16ISPFrameReceiver::getBufferPool(*v112, 0);
      H16ISP::getFrameFormatMetaInfo(v281, &v278);
      *&buf[24] = HIDWORD(v278);
      v252 = 336;
      if (v279)
      {
        v252 = 340;
      }

      v253 = 368;
      if (v279)
      {
        v253 = 372;
      }

      v254 = *(BufferPool + v253);
      v255 = *(BufferPool + v252);
      LOBYTE(v303) = v279 != 0;
      *&buf[32] = v255;
      *&buf[36] = v254;
      goto LABEL_949;
    }

    if (v281 == 23)
    {
      *&buf[24] = 19;
      LOBYTE(v303) = 1;
      *&buf[28] = vshr_n_u32(vmul_s32(vshl_u32(vadd_s32(vdup_n_s32(v249), 0xF0000001FLL), 0xFFFFFFFCFFFFFFFBLL), 0xA0000002800), 3uLL);
      goto LABEL_949;
    }

    goto LABEL_946;
  }

  v258 = H16ISP::H16ISPFrameReceiver::getBufferPool(*v112, 0);
  H16ISP::getFrameFormatMetaInfo(v281, &v278);
  *&buf[24] = HIDWORD(v278);
  v259 = 336;
  if (v279)
  {
    v259 = 340;
  }

  v260 = 368;
  if (v279)
  {
    v260 = 372;
  }

  v261 = *(v258 + v260);
  v262 = *(v258 + v259);
  LOBYTE(v303) = v279 != 0;
  *&buf[28] = v262;
  *&buf[32] = v261;
LABEL_949:
  DWORD1(v303) = v282 + HIDWORD(v283);
  *&buf[20] = v280 ^ 1;
  *&buf[44] = v283;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*v277, buf, 0x38u, 0, 0xFFFFFFFF))
  {
    v265 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v265 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v265;
    }

    if (os_log_type_enabled(v265, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    goto LABEL_73;
  }

LABEL_721:
  if (dword_281003364)
  {
    v188 = 0;
  }

  else
  {
    v188 = *(DerivedStorage + 696) ^ 1;
  }

  H16ISP::H16ISPFrameReceiver::EnableMetaDataDictionaryCreationOnRealTimeThread(*v112, v188 & 1);
  v190 = *(DerivedStorage + 96);
  if (v190)
  {
    if (H16ISP::H16ISPDevice::SetGainCap(*v277, *v275, v190))
    {
      v191 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v191 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v191;
      }

      if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }
    }

    *(DerivedStorage + 96) = 0;
  }

  if ((*(DerivedStorage + 698) & 1) == 0)
  {
    v192 = *(DerivedStorage + 4156);
    if (v192 != 1.0)
    {
      if (H16ISP::H16ISPDevice::SetZoomFactor(*v277, *v275, vcvts_n_s32_f32(v192, 0xAuLL)))
      {
        v193 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v193 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v193;
        }

        if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
        {
          H16ISPCaptureStreamStartInternal((DerivedStorage + 4156));
        }
      }
    }
  }

  H16ISP::H16ISPFrameReceiver::SetFrameDoneTimeoutDuration(*(DerivedStorage + 160), 5.0);
  v194 = *(DerivedStorage + 160);
  *(DerivedStorage + 4204) = *(v194 + 533);
  *(DerivedStorage + 4208) = *(v194 + 536);
  *(DerivedStorage + 4216) = *(v194 + 480);
  SetMetaDataOptionsOnFrameReceiver(DerivedStorage, v276);
  *(DerivedStorage + 556) = 0;
  if (dword_281003318 >= 1)
  {
    H16ISP::H16ISPDevice::EnableCFOV(*v277, *v275, 1);
  }

  if (word_281003324 != 0xFFFF)
  {
    H16ISP::H16ISPDevice::EnableFocus(*v277, *v275, 0, word_281003324);
  }

  if ((*(DerivedStorage + 4256) & 1) == 0)
  {
    v195 = gCaptureDeviceCFPrefs[44 * *v275 + 183];
    if (v195 != -1 && (*(DerivedStorage + 2704) & 1) == 0 && H16ISP::H16ISPDevice::EnableDPM(*v277, *v275, v195 != 0))
    {
      v196 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v196 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v196;
      }

      if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }
    }

    v197 = gCaptureDeviceCFPrefs[44 * *v275 + 184];
    if (v197 != -1 && H16ISP::H16ISPDevice::EnableDPMAssistedAE(*v277, *v275, v197 != 0))
    {
      v198 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v198 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v198;
      }

      if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }
    }
  }

  v199 = gCaptureDeviceCFPrefs[44 * *v275 + 193];
  if (v199 != -1 && H16ISP::H16ISPDevice::EnableAEStageDetect(*v277, *v275, v199 != 0))
  {
    v200 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v200 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v200;
    }

    if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }
  }

  v201 = gCaptureDeviceCFPrefs[44 * *v275 + 185];
  if (v201 != -1 && H16ISP::H16ISPDevice::SetAPSMode(*v277, *v275, v201))
  {
    v202 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v202 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v202;
    }

    if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }
  }

  v203 = *v275;
  v204 = gCaptureDeviceCFPrefs[44 * *v275 + 207];
  if (v204)
  {
    H16ISP::H16ISPDevice::WritePropertyValue(*v277, v203, 1320, v204, 0xFFFFFFFF);
    v203 = *v275;
  }

  v205 = gCaptureDeviceCFPrefs[44 * v203 + 187];
  if (v205 != -1)
  {
    H16ISP::H16ISPDevice::WritePropertyValue(*v277, v203, 3076, v205, 0xFFFFFFFF);
    v203 = *v275;
  }

  v206 = LOWORD(gCaptureDeviceCFPrefs[44 * v203 + 189]) | (gCaptureDeviceCFPrefs[44 * v203 + 188] << 16);
  if (v206)
  {
    H16ISP::H16ISPDevice::WritePropertyValue(*v277, v203, 5127, v206, 0xFFFFFFFF);
    v207 = *v275;
    v203 = *v275;
  }

  else
  {
    v207 = v203;
  }

  v208 = gCaptureDeviceCFPrefs[44 * v207 + 202];
  if (v208 != -1)
  {
    H16ISP::H16ISPDevice::WritePropertyValue(*v277, v203, 1317, v208, 0xFFFFFFFF);
  }

  v209 = *(DerivedStorage + 160);
  *(DerivedStorage + 4192) = -1;
  *(DerivedStorage + 4196) = -1;
  H16ISP::H16ISPFrameReceiver::SetFDMode(v209, *(DerivedStorage + 4172));
  H16ISP::H16ISPFrameReceiver::SetFDFeatureFlags(*(DerivedStorage + 160), *(DerivedStorage + 4168));
  if ((*(DerivedStorage + 704) & 1) == 0 && (*(DerivedStorage + 904) & 1) == 0 && (*(DerivedStorage + 1104) & 1) == 0 && (*(DerivedStorage + 1304) & 1) == 0 && (*(DerivedStorage + 1504) & 1) == 0 && (*(DerivedStorage + 1704) & 1) == 0 && ((*(DerivedStorage + 1904) & 1) != 0 || (*(DerivedStorage + 2104) & 1) != 0 || *(DerivedStorage + 2504) == 1))
  {
    bzero(buf, 0x68uLL);
    *&buf[4] = 1565;
    *&buf[8] = *v275;
    H16ISP::H16ISPDevice::ISP_SendCommand(*v277, buf, 0x68u, 0, 0xFFFFFFFF);
    if (HIWORD(v304) != 10)
    {
      bzero(valuePtr, 0x10uLL);
      WORD2(valuePtr[0]) = 331;
      DWORD2(valuePtr[0]) = *v275;
      HIDWORD(valuePtr[0]) = 2;
      H16ISP::H16ISPDevice::ISP_SendCommand(*v277, valuePtr, 0x10u, 0, 0xFFFFFFFF);
    }
  }

  v210 = *(DerivedStorage + 4720);
  if (v210)
  {
    *buf = 0;
    if ((*(DerivedStorage + 4360) == 0) | v274 & 1)
    {
      if (H16ISP::H16ISPFilterGraphManager::Activate(v210))
      {
        v211 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v211 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v211;
        }

        if (os_log_type_enabled(v211, OS_LOG_TYPE_ERROR))
        {
          H16ISPCaptureStreamStartInternal();
        }

        goto LABEL_73;
      }

      H16ISP::H16ISPFilterGraphManager::GetNode(*(DerivedStorage + 4720), 9, buf);
      if (*buf)
      {
        H16ISP::H16ISPGraphVIOCameraControlNode::SetFrameReceiver(*buf, *v112);
      }
    }

    *buf = 0;
    H16ISP::H16ISPFilterGraphManager::GetNode(*(DerivedStorage + 4720), 4, buf);
    if (*buf)
    {
      SetOptionsForMetadataNode(*buf, v276, DerivedStorage, v271 & 1, v272 & 1);
    }

    *buf = 0;
    H16ISP::H16ISPFilterGraphManager::GetNode(*(DerivedStorage + 4720), 2, buf);
    if (*buf)
    {
      H16ISP::H16ISPGraphExitNode::RegisterH16ISPFrameReceivedProcForChannel(*buf, *v275, MyH16ISPFrameReceivedProc);
    }

    if (*(DerivedStorage + 4360))
    {
      *buf = 0;
      H16ISP::H16ISPFilterGraphManager::GetNode(*(DerivedStorage + 4720), 3, buf);
      if (*buf)
      {
        H16ISP::H16ISPGraphFrameSyncNode::EnableChannel(*buf, *v275);
      }
    }
  }

  bzero((DerivedStorage + 4752), 0x28uLL);
  started = H16ISP::H16ISPFrameReceiver::startReceive(*(DerivedStorage + 160));
  if (started)
  {
    v235 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v235 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v235;
    }

    if (os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStartInternal();
    }

    if (started == -536870211)
    {
      H16ISP::H16ISPDevice::ISP_MemoryDiagnostics(*v277);
    }

LABEL_860:
    H16ISP::H16ISPFrameReceiver::stopReceive(*v112);
    goto LABEL_74;
  }

  *(DerivedStorage + 4752) = mach_absolute_time();
  v236 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  v237 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v236 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v236;
  }

  if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
  {
    v238 = *v275;
    *buf = 67109120;
    *&buf[4] = v238;
    _os_log_impl(&dword_2247DB000, v236, OS_LOG_TYPE_DEFAULT, "H16ISPCaptureStreamStart - Camera channel %d started.\n\n", buf, 8u);
  }

  v239 = *(DerivedStorage + 392);
  if (v239 != 0.0)
  {
    H16ISP::H16ISPDevice::SetMaxIntegrationTime(*v277, *v275, (v239 * 1000.0));
  }

  v240 = *(DerivedStorage + 4232);
  if (v240 != *(DerivedStorage + 4228))
  {
    bzero(buf, 0x18uLL);
    *&buf[4] = 3331;
    *&buf[8] = *(DerivedStorage + 156);
    *&buf[12] = v240;
    v241 = *(DerivedStorage + 4168);
    buf[16] = v241 & 1;
    buf[17] = (v241 & 2) != 0;
    buf[18] = (v241 & 4) != 0;
    buf[19] = (v241 & 8) == 0;
    buf[20] = (v241 & 0x10) == 0;
    H16ISP::H16ISPDevice::ISP_SendCommand(*v277, buf, 0x18u, 0, 0xFFFFFFFF);
  }

  if (*(DerivedStorage + 4607) == 1)
  {
    H16ISP::H16ISPFrameReceiver::SuspendReceive(*v112);
  }

  if (*(DerivedStorage + 4360))
  {
    SuspendResumeStream(v276, DerivedStorage);
  }

  v242 = *(v276 + 29);
  if (v242)
  {
    v243 = *v275;
    *buf = 2;
    *&buf[8] = v243;
    buf[12] = 1;
    v19 = H16ISP::H16ISPServicesRemote::SetProperty(v242, buf);
    if (v19)
    {
      v244 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v237)
      {
        v244 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v244;
      }

      if (os_log_type_enabled(v244, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }

      goto LABEL_860;
    }
  }

  if (isExclaveAlgoEnabled(DerivedStorage))
  {
    ExclaveResumeFlickerTimer(DerivedStorage);
  }

  if (v276[280] == 1 && *(DerivedStorage + 664))
  {
    if (CFArrayGetCount(*(v276 + 15)) < 1)
    {
      goto LABEL_912;
    }

    v245 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v276 + 15), v245);
      FigCaptureStreamGetFigBaseObject();
      v247 = CMBaseObjectGetDerivedStorage();
      if (H16ISP::H16ISPDevice::isSensorType(*(v276 + 3), *(v247 + 156), 1785950322))
      {
        break;
      }

      if (++v245 >= CFArrayGetCount(*(v276 + 15)))
      {
        goto LABEL_912;
      }
    }

    if (ValueAtIndex)
    {
      if (!*(v247 + 160) && *(v247 + 8))
      {
        v149 = StartJasperForInternalStreaming(ValueAtIndex);
      }
    }

    else
    {
LABEL_912:
      v256 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v237)
      {
        v256 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v256;
      }

      if (os_log_type_enabled(v256, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }
    }

    if (v149)
    {
      v257 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v237)
      {
        v257 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v257;
      }

      if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStartInternal();
      }

      H16ISP::H16ISPFrameReceiver::stopReceive(*v112);
      v19 = v149;
      goto LABEL_74;
    }

    v19 = 0;
  }

  else
  {
    v19 = v149;
  }

  if (!*(DerivedStorage + 8))
  {
    H16ISPPostNotification(*MEMORY[0x277CF6B70], v267, 0);
  }

  if (v19)
  {
    goto LABEL_74;
  }

LABEL_80:
  kdebug_trace();
  return v19;
}