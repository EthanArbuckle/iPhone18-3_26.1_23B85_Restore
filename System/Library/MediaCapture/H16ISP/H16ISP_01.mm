uint64_t SetFaceDetectionMetadataCoordinateSpace(const void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
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
  if (*(a2 + 160))
  {
    if (*(a2 + 4153) == (valuePtr != 0))
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
    *(a2 + 4153) = valuePtr != 0;
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
    }

    result = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 67109120;
      v9 = valuePtr;
      _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting FaceDetection Metadata Coordinate Space: %d\n\n", buf, 8u);
      return 0;
    }
  }

  return result;
}

uint64_t SetFormatIndex(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = *MEMORY[0x277D85DE8];
  valuePtr = -1;
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
  if (valuePtr >= 2 * *(a2 + 192))
  {
    return 4294954516;
  }

  if (*(a2 + 160))
  {
    if (valuePtr == *(a2 + 48))
    {
      return 0;
    }

    else
    {
      return 4294954612;
    }
  }

  v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  v11 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v10 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = *(a2 + 156);
    *buf = 67109376;
    v37 = valuePtr;
    v38 = 1024;
    v39 = v12;
    _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting new format: %d of CH%d\n\n", buf, 0xEu);
  }

  CFRelease(*(a2 + 40));
  ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 136), valuePtr);
  *(a2 + 40) = ValueAtIndex;
  CFRetain(ValueAtIndex);
  v14 = valuePtr;
  *(a2 + 48) = valuePtr;
  *(a2 + 4796) = v14;
  v15 = *(a2 + 192);
  if (v14 < v15)
  {
    v15 = 0;
  }

  v16 = v14 - v15;
  if (H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), *(*(a2 + 184) + 120 * (v14 - v15) + 16), v33, buf))
  {
    *(a2 + 52) = 1106247680;
    *(a2 + 60) = 1106247680;
    goto LABEL_32;
  }

  v17 = *(a2 + 184);
  v18 = *(a2 + 48);
  v19 = *(a2 + 192);
  if (v18 < v19)
  {
    v19 = 0;
  }

  v20 = 120 * (v18 - v19);
  if (v17)
  {
    v21 = v17 + 120 * v16;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(v21 + 108);
  if (v22 == 0.0)
  {
    v23 = v34;
  }

  else
  {
    v23 = v22 * 256.0;
  }

  v24 = v23 * 0.0039062;
  *(a2 + 52) = v24;
  *(a2 + 60) = v24;
  if (v24 <= 30.0)
  {
    v25 = 1;
    goto LABEL_30;
  }

  if (v24 > 120.0)
  {
    v25 = -1;
LABEL_30:
    *(a2 + 92) = v25;
    goto LABEL_32;
  }

  *(a2 + 92) = 0;
LABEL_32:
  *(a2 + 56) = 0;
  *(a2 + 392) = 0;
  if ((dword_2810033B0 & 0x80000000) == 0 && H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1785950322))
  {
    v26 = dword_2810033B0;
    *(a2 + 52) = dword_2810033B0;
    *(a2 + 56) = v26;
    *(a2 + 60) = v26;
  }

  *(a2 + 628) = -1;
  *(a2 + 636) = -1;
  *(a2 + 620) = -1;
  memset_pattern16((a2 + 4156), &xmmword_2249BBDE0, 0xCuLL);
  v27 = *(a2 + 4228);
  *(a2 + 4236) = v27;
  *(a2 + 4232) = v27;
  *(a2 + 4168) = 0;
  H16ISPResetVideoOutputConfigurationsForNewSelectedFormat(a2, a4);
  if (H16ISP::H16ISPDevice::EnableSBS(*(a4 + 24), *(a2 + 156), *(*(a2 + 184) + 120 * v16 + 104)))
  {
    v28 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v11)
    {
      v28 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v28;
    }

    v8 = 3758097122;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      SetFormatIndex();
    }
  }

  else
  {
    v8 = 0;
  }

  v29 = *(a2 + 184) + 120 * v16;
  if (H16ISP::H16ISPDevice::SetCameraConfig(*(a4 + 24), *(a2 + 156), *(v29 + 16), *(v29 + 36), *(v29 + 40), *(v29 + 44), *(v29 + 48), *(v29 + 56), *(v29 + 64), *(v29 + 68), *(v29 + 72), *(v29 + 76), *(v29 + 84)))
  {
    v30 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v11)
    {
      v30 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v30;
    }

    v8 = 3758097122;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      SetFormatIndex();
    }
  }

  else
  {
    *(a2 + 4610) = 0;
  }

  if (H16ISP::H16ISPDevice::EnableFESAutoAdjust(*(a4 + 24), *(a2 + 156), 1))
  {
    v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v11)
    {
      v31 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v31;
    }

    v8 = 3758097122;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      SetFormatIndex();
    }
  }

  if (H16ISP::H16ISPDevice::SetMaximumAllowedFrameRate(*(a4 + 24), *(a2 + 156), vcvtms_u32_f32(*(a2 + 52) * 256.0)))
  {
    v32 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v11)
    {
      v32 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v32;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      SetFormatIndex();
    }

    return 3758097122;
  }

  return v8;
}

uint64_t H16ISP::H16ISPDevice::SetFESOutputSize(H16ISP::H16ISPDevice *this, int a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = 2305;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetFESCropRect(H16ISP::H16ISPDevice *a1, int a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v8 = HIDWORD(a3);
  v9 = HIDWORD(a4);
  bzero(v11, 0x1CuLL);
  v12 = 2304;
  v13 = a2;
  v14 = v5;
  v15 = v8;
  v16 = v4;
  v17 = v9;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v11, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t CopyOpticalCenter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v17 = *MEMORY[0x277D85DE8];
  if (H16ISP::H16ISPDevice::isSensorType(*(v2 + 24), *(v4 + 156), 1718186595))
  {
    if (!getPCECalib(*(v3 + 24), v13))
    {
      DictionaryRepresentation = 0;
      v10 = 4294954516;
      goto LABEL_11;
    }

    v8 = vdivq_f64(v16, vdupq_lane_s64(v15, 0));
  }

  else
  {
    if (H16ISP::H16ISPDevice::GetDistortionData(*(v3 + 24), *(v5 + 156), 0, v13))
    {
      DictionaryRepresentation = 0;
      v10 = 4294954514;
      goto LABEL_11;
    }

    v8 = vcvtq_f64_f32(v14);
  }

  y = v8.y;
  DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v8);
  if (DictionaryRepresentation)
  {
    v10 = 0;
  }

  else
  {
    v10 = 4294954510;
  }

LABEL_11:
  *v7 = DictionaryRepresentation;
  return v10;
}

uint64_t CopyNarrowerCalibratedOpticalCenter(uint64_t a1, uint64_t a2)
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

void CopyMetadataOutputFeatureConfiguration(__CFDictionary *a1, uint64_t *a2)
{
  v4 = MEMORY[0x277CBED28];
  if (!*(a2 + 81))
  {
    v4 = MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(a1, *a2[9], *v4);
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = *a2;
    if (v8 == CVPixelBufferPoolGetTypeID() && (v9 = a2[1]) != 0 || (v10 = *a2, v10 == CVDataBufferPoolGetTypeID()) && (v9 = a2[1]) != 0)
    {
      CFDictionarySetValue(v7, *MEMORY[0x277CF6550], v9);
    }

    v11 = CFNumberCreate(v5, kCFNumberSInt32Type, a2 + 20);
    if (v11)
    {
      v12 = v11;
      CFDictionarySetValue(v7, *MEMORY[0x277CF65F8], v11);
      CFRelease(v12);
    }

    v13 = CFNumberCreate(v5, kCFNumberSInt32Type, a2 + 3);
    if (v13)
    {
      v14 = v13;
      CFDictionarySetValue(v7, *MEMORY[0x277CF65A8], v13);
      CFRelease(v14);
    }

    v15 = CFNumberCreate(v5, kCFNumberSInt32Type, a2 + 28);
    if (v15)
    {
      v16 = v15;
      CFDictionarySetValue(v7, *MEMORY[0x277CF6558], v15);
      CFRelease(v16);
    }

    v17 = CFNumberCreate(v5, kCFNumberSInt32Type, a2 + 4);
    if (v17)
    {
      v18 = v17;
      CFDictionarySetValue(v7, *MEMORY[0x277CF6568], v17);
      CFRelease(v18);
    }

    v19 = CFNumberCreate(v5, kCFNumberSInt32Type, a2 + 68);
    if (v19)
    {
      v20 = v19;
      CFDictionarySetValue(v7, *MEMORY[0x277CF65C0], v19);
      CFRelease(v20);
    }

    valuePtr = *(a2 + 9) + 1;
    v21 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
    if (v21)
    {
      v22 = v21;
      CFDictionarySetValue(v7, *MEMORY[0x277CF6560], v21);
      CFRelease(v22);
    }

    CFDictionarySetValue(a1, *(a2[9] + 8), v7);
    CFRelease(v7);
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
      CopyMetadataOutputFeatureConfiguration();
    }
  }
}

uint64_t SetDepthEngineConfiguration(const void *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = a2 + 1024;
  v7 = a2[1102];
  if (a1)
  {
    v9 = *(*(a4 + 24) + 4304);
    v10 = CFGetTypeID(a1);
    if (v10 != CFDictionaryGetTypeID())
    {
      return 4294954516;
    }

    Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF42D0]);
    if (Value)
    {
      v12 = Value;
      v13 = CFGetTypeID(Value);
      if (v13 == CFArrayGetTypeID())
      {
        a2[1104] = 0;
        v14 = CFDictionaryGetValue(a1, *MEMORY[0x277CF42E8]);
        if (v14)
        {
          valuePtr = 0;
          if (CFNumberGetValue(v14, kCFNumberIntType, &valuePtr))
          {
            if (valuePtr == 1278226536 || valuePtr == 1751411059 || valuePtr == 1751410032)
            {
              a2[1104] = 1;
            }
          }
        }

        a2[1102] = 0;
        v81.length = CFArrayGetCount(v12);
        v81.location = 0;
        key = *MEMORY[0x277CF4280];
        if (CFArrayContainsValue(v12, v81, *MEMORY[0x277CF4280]))
        {
          a2[1102] |= 1u;
        }

        v82.length = CFArrayGetCount(v12);
        v82.location = 0;
        v74 = *MEMORY[0x277CF4290];
        if (CFArrayContainsValue(v12, v82, *MEMORY[0x277CF4290]))
        {
          a2[1102] |= 2u;
        }

        v83.length = CFArrayGetCount(v12);
        v83.location = 0;
        v73 = *MEMORY[0x277CF42B0];
        if (CFArrayContainsValue(v12, v83, *MEMORY[0x277CF42B0]))
        {
          a2[1102] |= 4u;
        }

        v84.length = CFArrayGetCount(v12);
        v84.location = 0;
        v72 = *MEMORY[0x277CF4298];
        if (CFArrayContainsValue(v12, v84, *MEMORY[0x277CF4298]))
        {
          a2[1102] |= 0x20u;
        }

        v85.length = CFArrayGetCount(v12);
        v85.location = 0;
        v71 = *MEMORY[0x277CF42B8];
        v15 = CFArrayContainsValue(v12, v85, *MEMORY[0x277CF42B8]);
        v16 = a2[1102];
        if (v15)
        {
          a2[1102] = v16 | 8;
          v16 = 1;
        }

        H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), a2[39], 44, v16 != 0);
        v17 = CFDictionaryGetValue(a1, *MEMORY[0x277CF4320]);
        if (v17 && *(v9 + 104 * a2[39] + 16) != 1718186595 && CFBooleanGetValue(v17) == 1)
        {
          a2[1102] |= 0x1000u;
        }

        v18 = v9 + 8;
        v19 = *(v9 + 8 + 104 * a2[39] + 8);
        a2[1103] = 0;
        if (v19 == 1718186595)
        {
          RegistrationOfPreset = H16ISP::DepthFrontConfigurations::getRegistrationOfPreset(0);
        }

        else
        {
          RegistrationOfPreset = H16ISP::DepthRearConfigurations::getRegistrationOfPreset(0);
        }

        v22 = RegistrationOfPreset;
        v23 = CFDictionaryGetValue(a1, *MEMORY[0x277CF42C8]);
        if (v23)
        {
          v24 = v23;
          v25 = CFGetTypeID(v23);
          if (v25 == CFStringGetTypeID() && *(v18 + 104 * a2[39] + 8) == 1718186595 && (CFStringCompare(v24, *MEMORY[0x277CF3D08], 0) == kCFCompareEqualTo || CFStringCompare(v24, *MEMORY[0x277CF3D20], 0) == kCFCompareEqualTo))
          {
            a2[1103] = 2;
            v22 = 1;
          }
        }

        v76 = 0;
        v26 = a2[1103];
        if (*(v18 + 104 * a2[39] + 8) == 1718186595)
        {
          HIDWORD(v76) = H16ISP::DepthFrontConfigurations::getWidthOfPreset(v26);
          HeightOfPreset = H16ISP::DepthFrontConfigurations::getHeightOfPreset(a2[1103]);
        }

        else
        {
          HIDWORD(v76) = H16ISP::DepthRearConfigurations::getWidthOfPreset(v26);
          HeightOfPreset = H16ISP::DepthRearConfigurations::getHeightOfPreset(a2[1103]);
        }

        LODWORD(v76) = HeightOfPreset;
        v28 = CFDictionaryGetValue(a1, *MEMORY[0x277CF42F0]);
        if (v28)
        {
          v29 = v28;
          v30 = CFGetTypeID(v28);
          if (v30 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v29, kCFNumberSInt32Type, &v76 + 4);
          }
        }

        v31 = CFDictionaryGetValue(a1, *MEMORY[0x277CF42E0]);
        if (v31)
        {
          v32 = v31;
          v33 = CFGetTypeID(v31);
          if (v33 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v32, kCFNumberSInt32Type, &v76);
          }
        }

        v34 = *MEMORY[0x277CF42D8];
        if (CFDictionaryContainsKey(a1, *MEMORY[0x277CF42D8]))
        {
          v35 = CFDictionaryGetValue(a1, v34);
          v36 = CFBooleanGetValue(v35) != 0;
        }

        else
        {
          v36 = 0;
        }

        v6[332] = v36;
        v41 = *MEMORY[0x277CF4328];
        if (CFDictionaryContainsKey(a1, *MEMORY[0x277CF4328]))
        {
          v42 = CFDictionaryGetValue(a1, v41);
          v43 = CFBooleanGetValue(v42) != 0;
        }

        else
        {
          v43 = 0;
        }

        v6[352] = v43;
        if (*(v18 + 104 * a2[39] + 8) == 1718186595)
        {
          Preset = H16ISP::DepthFrontConfigurations::getPreset(HIDWORD(v76), v76, v22);
          if (Preset == 8)
          {
            Preset = H16ISP::DepthFrontRotatedConfigurations::getPreset(HIDWORD(v76), v76, v22);
            if (Preset == 8)
            {
              v45 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v45 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v45;
              }

              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v46 = "out";
                if (v22)
                {
                  v46 = "";
                }

                valuePtr = 67109634;
                *v78 = HIDWORD(v76);
                *&v78[4] = 1024;
                *&v78[6] = v76;
                *v79 = 2080;
                *&v79[2] = v46;
                _os_log_error_impl(&dword_2247DB000, v45, OS_LOG_TYPE_ERROR, "H16ISPCaptureDevice: Unknown configuration: %dx%d with%s perspective change\n\n", &valuePtr, 0x18u);
              }

              return 4294954516;
            }
          }

          a2[1103] = Preset;
          v48 = CFDictionaryGetValue(a1, *MEMORY[0x277CF42F8]);
          if (v48)
          {
            v49 = v48;
            v50 = CFGetTypeID(v48);
            if (v50 == CFBooleanGetTypeID())
            {
              v51 = CFBooleanGetValue(v49) != 0;
              a2[1105] = v51;
              v52 = dword_28100336C;
              if (dword_28100336C <= 2 && dword_28100336C != v51)
              {
                v53 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v53 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v53;
                  v52 = dword_28100336C;
                }

                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  v54 = a2[1105];
                  valuePtr = 136315650;
                  *v78 = "SetDepthEngineConfiguration";
                  *&v78[8] = 1024;
                  *v79 = v54;
                  *&v79[4] = 1024;
                  *&v79[6] = v52;
                  _os_log_impl(&dword_2247DB000, v53, OS_LOG_TYPE_DEFAULT, "%s - Would change fusion mode to %d, but preferences force mode %d\n", &valuePtr, 0x18u);
                  v52 = dword_28100336C;
                }

                a2[1105] = v52;
              }
            }
          }

          v55 = CFDictionaryGetValue(a1, *MEMORY[0x277CF4318]);
          if (v55)
          {
            v56 = v55;
            v57 = CFGetTypeID(v55);
            if (v57 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v56, kCFNumberSInt32Type, a2 + 1108);
            }
          }

          v58 = CFDictionaryGetValue(a1, *MEMORY[0x277CF4310]);
          if (v58)
          {
            v59 = v58;
            v60 = CFGetTypeID(v58);
            if (v60 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v59, kCFNumberSInt32Type, a2 + 1109);
            }
          }

          v61 = CFDictionaryGetValue(a1, *MEMORY[0x277CF4300]);
          if (v61)
          {
            v62 = v61;
            v63 = CFGetTypeID(v61);
            if (v63 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v62, kCFNumberSInt32Type, a2 + 1110);
            }
          }

          v64 = CFDictionaryGetValue(a1, *MEMORY[0x277CF4308]);
          if (v64)
          {
            v65 = v64;
            v66 = CFGetTypeID(v64);
            if (v66 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v65, kCFNumberSInt32Type, a2 + 1111);
            }
          }

          if (v6[332] == 1 && a2[1105] && (a2[1108] > 0 || a2[1109] != 0x7FFFFFFF || a2[1111] != 0x7FFFFFFF))
          {
            v67 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v67 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v67;
            }

            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              valuePtr = 136315138;
              *v78 = "SetDepthEngineConfiguration";
              _os_log_impl(&dword_2247DB000, v67, OS_LOG_TYPE_DEFAULT, "%s - Can not use HW GDR along with minimum depth threshold fusion\n", &valuePtr, 0xCu);
            }

            return 4294954516;
          }

          goto LABEL_106;
        }

        v47 = H16ISP::DepthRearConfigurations::getPreset(HIDWORD(v76), v76, v22);
        if (v47 != 5)
        {
          a2[1103] = v47;
LABEL_106:
          if (H16ISP::H16ISPDevice::hasSensorType(*(a4 + 24), 1919251564) && H16ISP::H16ISPDevice::hasSensorType(*(a4 + 24), 1919246706) && H16ISP::H16ISPDevice::hasSensorType(*(a4 + 24), 1919251319) && !H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), a2[39], 1919251564))
          {
            H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), a2[39], 1919246706);
          }

          v68 = CFDictionaryGetValue(a1, *MEMORY[0x277CF42C0]);
          if (v68)
          {
            v69 = v68;
            v70 = CFGetTypeID(v68);
            if (v70 == CFDictionaryGetTypeID())
            {
              *(a2 + 559) = CFDictionaryGetValue(v69, key);
              *(a2 + 560) = CFDictionaryGetValue(v69, v74);
              *(a2 + 561) = CFDictionaryGetValue(v69, v71);
              *(a2 + 562) = CFDictionaryGetValue(v69, v73);
              *(a2 + 563) = CFDictionaryGetValue(v69, v72);
            }
          }

          goto LABEL_28;
        }
      }

      return 4294954516;
    }
  }

  a2[1102] = 0;
LABEL_28:
  if (*(a2 + 20))
  {
    v21 = a2[1102];
    if (v7)
    {
      if (!v21)
      {
        if (v6[160])
        {
          H16ISP::ProjectorManager::setProjectorType(*(a2 + 565), 0);
        }

        else if (CFArrayGetCount(*(a2 + 545)))
        {
          v37 = 0;
          do
          {
            CFArrayGetValueAtIndex(*(a2 + 545), v37);
            FigCaptureStreamGetFigBaseObject();
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            if (*(DerivedStorage + 4404) != 1)
            {
              v39 = DerivedStorage;
              H16ISP::H16ISPDevice::EnablePDEOutput(*(a4 + 24), *(DerivedStorage + 156), 0, 0);
              *(v39 + 4404) = 1;
            }

            ++v37;
          }

          while (v37 < CFArrayGetCount(*(a2 + 545)));
        }

        H16ISP::H16ISPFrameReceiver::DisablePDEStreaming(*(a2 + 20));
      }
    }

    else if (v21)
    {
      EnablePCEStreamingInFrameReceiver(a4, a2);
    }
  }

  return 0;
}

uint64_t H16ISP::DepthRearConfigurations::getRegistrationOfPreset(H16ISP::DepthRearConfigurations *this)
{
  if (this <= 4)
  {
    return *(&H16ISP::PCERearPresets + 12 * this + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::DepthRearConfigurations::getWidthOfPreset(H16ISP::DepthRearConfigurations *this)
{
  if (this <= 4)
  {
    return *(&H16ISP::PCERearPresets + 3 * this);
  }

  else
  {
    return 0;
  }
}

uint64_t CopyOutputConfigurations(const __CFAllocator *a1, __CFDictionary **a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v38 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v10 = Mutable;
  v11 = *(*(*(a5 + 24) + 4304) + 104 * a3[39] + 16);
  switch(v11)
  {
    case 1919251564:
      v30 = a3[1103];
      if (v30 > 4)
      {
        goto LABEL_15;
      }

      HeightOfPreset = H16ISP::DepthRearConfigurations::getHeightOfPreset(v30);
      WidthOfPreset = H16ISP::DepthRearConfigurations::getWidthOfPreset(a3[1103]);
      v29 = a3[492];
      addConfiguration(a1, v10, *MEMORY[0x277CF4280], 825306677, 0x3FFF, 320, 240, v29, v34, v35);
      addConfiguration(a1, v10, *MEMORY[0x277CF42B8], 825306677, 0x3FFF, WidthOfPreset, HeightOfPreset, v29, v34, v35);
      v19 = *MEMORY[0x277CF4290];
      v20 = a1;
      v21 = v10;
      v22 = 1932996149;
      v23 = 320;
      v24 = 240;
      goto LABEL_13;
    case 1919246706:
      v26 = a3[1103];
      if (v26 > 4)
      {
        goto LABEL_15;
      }

      v27 = H16ISP::DepthRearConfigurations::getHeightOfPreset(v26);
      v28 = H16ISP::DepthRearConfigurations::getWidthOfPreset(a3[1103]);
      v29 = a3[492];
      addConfiguration(a1, v10, *MEMORY[0x277CF4280], 825306677, 0x3FFF, 240, 320, v29, v34, v35);
      addConfiguration(a1, v10, *MEMORY[0x277CF4290], 1932996149, 0x3FFF, 240, 320, v29, v34, v35);
      v19 = *MEMORY[0x277CF42B8];
      v20 = a1;
      v21 = v10;
      v22 = 825306677;
      v23 = v28;
      v24 = v27;
LABEL_13:
      v25 = v29;
LABEL_14:
      addConfiguration(v20, v21, v19, v22, 0x3FFF, v23, v24, v25, v34, v35);
      goto LABEL_15;
    case 1718186595:
      v12 = a3[1103];
      if (v12 <= 7)
      {
        v13 = H16ISP::DepthFrontConfigurations::getHeightOfPreset(v12);
        v14 = H16ISP::DepthFrontConfigurations::getWidthOfPreset(a3[1103]);
        v15 = a3[492];
        bzero(&v34, 0x68uLL);
        LOWORD(v35) = 1565;
        v36 = a3[39];
        v16 = H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), &v34, 0x68u, 0, 0xFFFFFFFF);
        v17 = 608;
        v18 = 656;
        if (!v16 && v37 == 10)
        {
          v13 = H16ISP::DepthFrontRotatedConfigurations::getHeightOfPreset(a3[1103]);
          v14 = H16ISP::DepthFrontRotatedConfigurations::getWidthOfPreset(a3[1103]);
          v17 = 432;
          v18 = 504;
        }

        addConfiguration(a1, v10, *MEMORY[0x277CF4298], 825437747, 0, v14, v13, v15, v34, v35);
        addConfiguration(a1, v10, *MEMORY[0x277CF42B8], 825306677, 0x3FFF, v14, v13, v15, v34, v35);
        addConfiguration(a1, v10, *MEMORY[0x277CF4280], 825306677, 0x3FFF, v17, v18, v15, v34, v35);
        v19 = *MEMORY[0x277CF4290];
        v20 = a1;
        v21 = v10;
        v22 = 1932996149;
        v23 = v17;
        v24 = v18;
        v25 = v15;
        goto LABEL_14;
      }

LABEL_15:
      result = 0;
      *a2 = v10;
      return result;
  }

  CFRelease(Mutable);
  return 4294954514;
}

void addConfiguration(const __CFAllocator *a1, __CFDictionary *a2, const __CFString *a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  v28 = a5;
  valuePtr = a4;
  v26 = a7;
  v27 = a6;
  v24 = 128;
  v25 = 64;
  v23 = a8;
  v12 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
  v13 = CFNumberCreate(a1, kCFNumberSInt32Type, &v28);
  v14 = CFNumberCreate(a1, kCFNumberSInt32Type, &v27);
  v15 = CFNumberCreate(a1, kCFNumberSInt32Type, &v26);
  v16 = CFNumberCreate(a1, kCFNumberSInt32Type, &v25);
  v17 = CFNumberCreate(a1, kCFNumberSInt32Type, &v24);
  v18 = CFNumberCreate(a1, kCFNumberSInt32Type, &v23);
  v19 = v18;
  v20 = 0;
  if (v12)
  {
    if (v13)
    {
      if (v14)
      {
        if (v15)
        {
          if (v16)
          {
            if (v17)
            {
              if (v18)
              {
                Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                v20 = Mutable;
                if (Mutable)
                {
                  CFDictionarySetValue(Mutable, *MEMORY[0x277CF4358], v12);
                  CFDictionarySetValue(v20, *MEMORY[0x277CF4350], v13);
                  CFDictionarySetValue(v20, *MEMORY[0x277CF4360], v14);
                  CFDictionarySetValue(v20, *MEMORY[0x277CF4348], v15);
                  CFDictionarySetValue(v20, *MEMORY[0x277CF4330], v16);
                  CFDictionarySetValue(v20, *MEMORY[0x277CF4340], v17);
                  CFDictionarySetValue(v20, *MEMORY[0x277CF4338], v19);
                  CFDictionarySetValue(a2, a3, v20);
                }
              }
            }
          }
        }
      }
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }
}

uint64_t ___ZN6H16ISP12H16ISPDevice21ISP_EnableSensorPowerEjbb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32) + 4424;
  notify_set_state(*(v2 + 16 * *(a1 + 48) + 12), *(a1 + 40));
  v3 = *(v2 + 16 * *(a1 + 48));

  return notify_post(v3);
}

uint64_t CopySensorRawOutputBufferPoolRequirements(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 + 104);
  if (v8 && CFArrayGetCount(v8))
  {
    v9 = 0;
    v10 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(a4 + 104), v9);
      FigCaptureStreamGetFigBaseObject();
      v10 |= 1 << *(CMBaseObjectGetDerivedStorage() + 156);
      ++v9;
    }

    while (v9 < CFArrayGetCount(*(a4 + 104)));
  }

  else
  {
    LOWORD(v10) = 0;
  }

  if (H16ISP::H16ISPDevice::GetSharedBufferPoolInfo(*(a5 + 24), *(a4 + 8) - 1, v10, 1, v21))
  {
    v11 = 0;
    result = 4294954513;
  }

  else
  {
    v13 = *MEMORY[0x277CBECE8];
    result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v11 = result;
    if (result)
    {
      v14 = CFNumberCreate(v13, kCFNumberSInt16Type, &v22[2]);
      CFDictionarySetValue(v11, *MEMORY[0x277CC4D60], v14);
      CFRelease(v14);
      v15 = CFNumberCreate(v13, kCFNumberSInt16Type, v22);
      CFDictionarySetValue(v11, *MEMORY[0x277CC4E38], v15);
      CFRelease(v15);
      v16 = CFNumberCreate(v13, kCFNumberIntType, &v24);
      CFDictionarySetValue(v11, *MEMORY[0x277CC4EC8], v16);
      CFRelease(v16);
      v17 = CFNumberCreate(v13, kCFNumberIntType, &v24 + 4);
      CFDictionarySetValue(v11, *MEMORY[0x277CC4DD8], v17);
      CFRelease(v17);
      v18 = CFNumberCreate(v13, kCFNumberSInt16Type, &v23);
      CFDictionarySetValue(v11, *MEMORY[0x277CC4E50], v18);
      CFRelease(v18);
      valuePtr = H16ISP::getCVPixelFormat(v26, v27, *v25);
      v19 = CFNumberCreate(v13, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(v11, *MEMORY[0x277CC4E30], v19);
      CFRelease(v19);
      result = 0;
    }
  }

  *a2 = v11;
  return result;
}

uint64_t H16ISP::getCVPixelFormat(H16ISP *this, int a2, int a3)
{
  v3 = 1651925816;
  if ((this - 1) >= 3)
  {
    if (this)
    {
      if (this == 5)
      {
        return 1652056888;
      }

      v3 = 1651847472;
      fprintf(*MEMORY[0x277D85DF8], "%s: Unsupported companding mode: %d");
      return v3;
    }

    if (a2 > 1)
    {
      if (a2 == 2 || a2 == 3)
      {
        return 1650943796;
      }

      if (a2 == 15)
      {
        return 1651519798;
      }

LABEL_20:
      v3 = 1651847472;
      fprintf(*MEMORY[0x277D85DF8], "%s: Invalid pixel format for shared buffer pool, compandingMode:%d, format:%d packType:%d ");
      return v3;
    }

    if (!a2)
    {
      return 1278226488;
    }

    if (a2 != 1)
    {
      goto LABEL_20;
    }

    if (a3)
    {
      return 1651847472;
    }

    else
    {
      return 1651587122;
    }
  }

  return v3;
}

uint64_t H16ISP::H16ISPDevice::DisableKnobManualMode(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2580;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

double H16ISP::H16ISPDevice::GetLuxAdaptiveSettings(H16ISP::H16ISPDevice *a1, int a2, __int16 a3, _OWORD *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  bzero(v9, 0x2CuLL);
  v10 = 2582;
  v11 = a2;
  v12 = a3;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x2Cu, 0, 0xFFFFFFFF))
  {
    *a4 = *v13;
    result = *&v13[14];
    *(a4 + 14) = *&v13[14];
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetLuxAdaptiveSettings(H16ISP::H16ISPDevice *a1, int a2, __int128 *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  bzero(v8, 0x2CuLL);
  v9 = 2581;
  v10 = a2;
  v6 = a3[1];
  v11 = *a3;
  v12 = v6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v8, 0x2Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetSensorInterfacePixelFormat(H16ISP::H16ISPDevice *this, int a2, char a3, char a4, char a5, char a6)
{
  bzero(v13, 0x14uLL);
  v14 = 277;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetSharedBufferPoolInfo(H16ISP::H16ISPDevice *a1, __int16 a2, __int16 a3, __int16 a4, void *a5)
{
  bzero(a5, 0x34uLL);
  *(a5 + 2) = 13321;
  *(a5 + 4) = a2;
  *(a5 + 5) = a3;
  *(a5 + 6) = a4;

  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, a5, 0x34u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::LTMGammaSet(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 8202;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::LTMModeSet(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 8196;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableHDRC(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2632;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAWBRGBColorspace(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31971;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::getFrameFormatMetaInfo(int a1, _OWORD *a2)
{
  if (!a2)
  {
    return 0;
  }

  bzero(a2, 0x14uLL);
  v4 = 0;
  while (*&supportedFormatMap[v4] != a1)
  {
    v4 += 20;
    if (v4 == 1300)
    {
      return 0;
    }
  }

  v6 = &supportedFormatMap[v4];
  v7 = *v6;
  *(a2 + 4) = *(v6 + 4);
  *a2 = v7;
  return 1;
}

uint64_t SetHDRImageStatisticsEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  result = H16ISP::H16ISPDevice::EnableDolbyVisionMetadata(*(a4 + 24), *(a2 + 156), v8);
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
      SetHDRImageStatisticsEnabled();
    }

    return 4294954514;
  }

  return result;
}

uint64_t SetHDRFusionEnable(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
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
  *(a2 + 4610) = v8 != 0;
  if (v8)
  {
    v9 = *(a2 + 48);
    v10 = *(a2 + 192);
    if (v9 < v10)
    {
      v10 = 0;
    }

    if (H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), *(*(a2 + 184) + 120 * (v9 - v10) + 16), v15, v17))
    {
      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v11 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        SetHDRFusionEnable();
      }

      return 4294954516;
    }

    if (!v16)
    {
      v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v14 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        SetHDRFusionEnable();
      }

      return 4294954516;
    }

    v13 = *(a2 + 4610);
  }

  else
  {
    v13 = 0;
  }

  if (H16ISP::H16ISPDevice::EnableHDRFusion(*(a4 + 24), *(a2 + 156), v13 & 1))
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::H16ISPDevice::EnableHDRFusion(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 4102;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t SetCAREnable(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  result = H16ISP::H16ISPDevice::EnableCAR(*(a4 + 24), *(a2 + 156), v8 != 0);
  if (result)
  {
    return 4294954514;
  }

  *(a2 + 4265) = v8 != 0;
  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableCAR(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 356;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t SetStreamMemoryPoolID(const __CFNumber *a1, uint64_t a2)
{
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  *(a2 + 4516) = valuePtr;
  return 0;
}

uint64_t SetMaxIntegrationTime(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  valuePtr = 0.0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
  v8 = valuePtr;
  *(a2 + 392) = valuePtr;
  v9 = H16ISP::H16ISPDevice::SetMaxIntegrationTime(*(a4 + 24), *(a2 + 156), (v8 * 1000.0));
  v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v10 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v14 = valuePtr;
    v15 = 1024;
    v16 = v9;
    _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting Maximum Integration Time (in Milliseconds): %.3f, result=0x%08X\n\n", buf, 0x12u);
  }

  if (v9)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::H16ISPDevice::SetMaxIntegrationTime(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 526;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t SetAutoExposureTables(const __CFDictionary *cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Value = cf;
  valuePtr[1] = *MEMORY[0x277D85DE8];
  valuePtr[0] = 0x400000000;
  if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 != CFDictionaryGetTypeID())
    {
      return 4294954516;
    }

    v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, valuePtr);
    Value = CFDictionaryGetValue(Value, v8);
    CFRelease(v8);
    if (!Value)
    {
      goto LABEL_15;
    }

    v9 = CFGetTypeID(Value);
    if (v9 == CFDataGetTypeID())
    {
      v10 = 1;
    }

    else
    {
      v21 = CFGetTypeID(Value);
      if (v21 == CFNumberGetTypeID())
      {
        *v22 = 0;
        CFNumberGetValue(Value, kCFNumberIntType, v22);
        Value = 0;
        if (*v22 >= 8uLL)
        {
          v10 = 0;
        }

        else
        {
          v10 = 0xA07060504020300uLL >> (8 * v22[0]);
        }
      }

      else
      {
        v10 = 0;
        Value = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  bzero(v22, 0xD4uLL);
  v23 = 576;
  v24 = *(a2 + 156);
  v25 = HIDWORD(valuePtr[0]);
  v27 = v10;
  if (v10 == 1)
  {
    BytePtr = CFDataGetBytePtr(Value);
    Length = CFDataGetLength(Value);
    v13 = Length >> 3;
    if (Length >= 8)
    {
      v14 = &v28;
      v15 = (BytePtr + 4);
      v16 = 1;
      do
      {
        *(v14 - 1) = (1000 * *(v15 - 1));
        v17 = *v15;
        v15 += 2;
        *v14 = v17;
        v14 = (v14 + 12);
      }

      while (v13 > v16++);
    }
  }

  else
  {
    LOWORD(v13) = 0;
  }

  v26 = v13;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(*(a4 + 24), v22, 0xD4u, 0, 0xFFFFFFFF);
  if (result)
  {
LABEL_15:
    v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v20 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v20;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      SetAutoExposureTables();
    }

    return 4294954514;
  }

  return result;
}

uint64_t SetLuxAdaptiveParameters(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  v54 = a4;
  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF5588]);
  v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5580]);
  v10 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5730]);
  v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5728]);
  v12 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5598]);
  v13 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5590]);
  v14 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5578]);
  v55 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5570]);
  if (Value)
  {
    v15 = v9 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    Count = CFArrayGetCount(Value);
    if (Count <= 8 && (v20 = Count, CFArrayGetCount(v9) == Count) && (H16ISP::H16ISPDevice::GetLuxAdaptiveSettings(*(v54 + 24), *(a2 + 156), 0, &v71), !v21))
    {
      LOWORD(v63) = 0;
      HIDWORD(v64) = v72;
      bzero(&v63 + 2, 0x1AuLL);
      WORD1(v63) = v20;
      if (v20 >= 1)
      {
        for (i = 0; i != v20; ++i)
        {
          LODWORD(v61) = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
          CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &v61);
          *(&v63 + i + 2) = v61;
          v41 = CFArrayGetValueAtIndex(v9, i);
          CFNumberGetValue(v41, kCFNumberIntType, &v61);
          *(&v64 + i + 4) = v61;
        }
      }

      v17 = -12780;
      if (H16ISP::H16ISPDevice::DisableKnobManualMode(*(v54 + 24), *(a2 + 156), 0))
      {
        v16 = 0;
      }

      else
      {
        v47 = *(v54 + 24);
        v48 = *(a2 + 156);
        v61 = v63;
        v62 = v64;
        v49 = H16ISP::H16ISPDevice::SetLuxAdaptiveSettings(v47, v48, &v61);
        v16 = v49 == 0;
        if (v49)
        {
          v17 = -12780;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v16 = 0;
      v17 = -12780;
    }
  }

  if (v10)
  {
    v22 = v11 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
LABEL_25:
    if (!v12)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  v23 = CFArrayGetCount(v10);
  if (v23 > 8)
  {
    goto LABEL_24;
  }

  v24 = v23;
  if (CFArrayGetCount(v11) != v23)
  {
    goto LABEL_24;
  }

  H16ISP::H16ISPDevice::GetLuxAdaptiveSettings(*(v54 + 24), *(a2 + 156), 1, &v69);
  if (v25)
  {
    goto LABEL_24;
  }

  LOWORD(v61) = 1;
  HIDWORD(v62) = v70;
  bzero(&v61 + 2, 0x1AuLL);
  WORD1(v61) = v24;
  if (v24 >= 1)
  {
    for (j = 0; j != v24; ++j)
    {
      LODWORD(valuePtr) = 0;
      v27 = CFArrayGetValueAtIndex(v10, j);
      CFNumberGetValue(v27, kCFNumberIntType, &valuePtr);
      *(&v61 + j + 2) = valuePtr;
      v28 = CFArrayGetValueAtIndex(v11, j);
      CFNumberGetValue(v28, kCFNumberIntType, &valuePtr);
      *(&v62 + j + 4) = valuePtr;
    }
  }

  if (H16ISP::H16ISPDevice::DisableKnobManualMode(*(v54 + 24), *(a2 + 156), 1))
  {
LABEL_24:
    v17 = -12780;
    goto LABEL_25;
  }

  v45 = *(v54 + 24);
  v46 = *(a2 + 156);
  valuePtr = v61;
  v60 = v62;
  if (H16ISP::H16ISPDevice::SetLuxAdaptiveSettings(v45, v46, &valuePtr))
  {
    v17 = -12780;
  }

  else
  {
    ++v16;
  }

  if (!v12)
  {
    goto LABEL_31;
  }

LABEL_26:
  if (v13)
  {
    v29 = CFArrayGetCount(v12);
    if (v29 <= 8)
    {
      v30 = v29;
      if (CFArrayGetCount(v13) == v29)
      {
        H16ISP::H16ISPDevice::GetLuxAdaptiveSettings(*(v54 + 24), *(a2 + 156), 2, &v67);
        if (!v31)
        {
          LOWORD(valuePtr) = 2;
          HIDWORD(v60) = v68;
          bzero(&valuePtr + 2, 0x1AuLL);
          WORD1(valuePtr) = v30;
          if (v30 >= 1)
          {
            for (k = 0; k != v30; ++k)
            {
              LODWORD(v57) = 0;
              v43 = CFArrayGetValueAtIndex(v12, k);
              CFNumberGetValue(v43, kCFNumberIntType, &v57);
              *(&valuePtr + k + 2) = v57;
              v44 = CFArrayGetValueAtIndex(v13, k);
              CFNumberGetValue(v44, kCFNumberIntType, &v57);
              *(&v60 + k + 4) = v57;
            }
          }

          v32 = v55;
          if (H16ISP::H16ISPDevice::DisableKnobManualMode(*(v54 + 24), *(a2 + 156), 2))
          {
            v17 = -12780;
          }

          else
          {
            v52 = *(v54 + 24);
            v53 = *(a2 + 156);
            v57 = valuePtr;
            v58 = v60;
            if (H16ISP::H16ISPDevice::SetLuxAdaptiveSettings(v52, v53, &v57))
            {
              v17 = -12780;
            }

            else
            {
              ++v16;
            }
          }

          goto LABEL_32;
        }
      }
    }

    v17 = -12780;
  }

LABEL_31:
  v32 = v55;
LABEL_32:
  if (v14 && v32)
  {
    v33 = CFArrayGetCount(v14);
    if (v33 > 8)
    {
      goto LABEL_41;
    }

    v34 = v33;
    if (CFArrayGetCount(v32) != v33)
    {
      goto LABEL_41;
    }

    H16ISP::H16ISPDevice::GetLuxAdaptiveSettings(*(v54 + 24), *(a2 + 156), 4, &v65);
    if (v35)
    {
      goto LABEL_41;
    }

    LOWORD(v57) = 4;
    HIDWORD(v58) = v66;
    bzero(&v57 + 2, 0x1AuLL);
    WORD1(v57) = v34;
    if (v34 >= 1)
    {
      for (m = 0; m != v34; ++m)
      {
        LODWORD(v56[0]) = 0;
        v37 = CFArrayGetValueAtIndex(v14, m);
        CFNumberGetValue(v37, kCFNumberIntType, v56);
        *(&v57 + m + 2) = v56[0];
        v38 = CFArrayGetValueAtIndex(v32, m);
        CFNumberGetValue(v38, kCFNumberIntType, v56);
        *(&v58 + m + 4) = v56[0];
      }
    }

    if (H16ISP::H16ISPDevice::DisableKnobManualMode(*(v54 + 24), *(a2 + 156), 4))
    {
LABEL_41:
      v17 = -12780;
    }

    else
    {
      v50 = *(v54 + 24);
      v51 = *(a2 + 156);
      v56[0] = v57;
      v56[1] = v58;
      if (H16ISP::H16ISPDevice::SetLuxAdaptiveSettings(v50, v51, v56))
      {
        v17 = -12780;
      }

      else
      {
        ++v16;
      }
    }
  }

  if (v16)
  {
    return v17;
  }

  else
  {
    return 4294954516;
  }
}

float H16ISP::H16ISPDevice::GetRotationCorrectionCalibration(H16ISP::H16ISPDevice *this, __int16 a2, float *a3)
{
  bzero(v7, 0x24uLL);
  v9 = a2;
  v8 = 362;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x24u, 0, 0xFFFFFFFF))
  {
    result = v10;
    *a3 = v10;
  }

  return result;
}

uint64_t CopyCalibratedRotationAngle(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  H16ISP::H16ISPDevice::GetRotationCorrectionCalibration(*(a5 + 24), *(a3 + 156), &valuePtr);
  if (v7)
  {
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      CopyCalibratedRotationAngle();
    }

    return 4294954514;
  }

  else
  {
    v10 = CFNumberCreate(a1, kCFNumberFloatType, &valuePtr);
    result = 0;
    *a2 = v10;
  }

  return result;
}

uint64_t SetHighCurrentTorchEnabled(const void *a1, uint64_t a2)
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
    if (*(a2 + 4512) == (v5 != 0))
    {
      return 0;
    }

    else
    {
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        SetHighCurrentTorchEnabled();
      }

      return 4294954612;
    }
  }

  else
  {
    result = 0;
    *(a2 + 4512) = v6 != 0;
  }

  return result;
}

uint64_t SetRawBufferCompandingEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  *(a2 + 568) = CFEqual(a1, *MEMORY[0x277CBED28]) != 0;
  if (ConfigSensorFormat(a4, a2))
  {
    return 4294954514;
  }

  else
  {
    return 0;
  }
}

uint64_t ConfigSensorFormat(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = 0;
  if ((*(a2 + 776) & 1) == 0 && (*(a2 + 976) & 1) == 0 && (*(a2 + 1176) & 1) == 0 && (*(a2 + 1376) & 1) == 0 && (*(a2 + 1576) & 1) == 0 && (*(a2 + 2776) & 1) == 0 && (*(a2 + 2504) & 1) == 0 && (*(a2 + 2104) & 1) == 0 && !*(a2 + 4824) && !*(a2 + 4840) && !*(a2 + 4816))
  {
    v15 = *(a2 + 4936);
    if (!v15 || !*v15 && !v15[14])
    {
      v4 = 1;
    }
  }

  v5 = *(a2 + 48);
  v6 = *(a2 + 192);
  if (v5 < v6)
  {
    v6 = 0;
  }

  v7 = v5 - v6;
  CameraConfig = H16ISP::H16ISPDevice::GetCameraConfig(*(a1 + 24), *(a2 + 156), *(*(a2 + 184) + 120 * (v5 - v6) + 16), v16, v18);
  if (!CameraConfig)
  {
    if (dword_281003384 != -1)
    {
      *(a2 + 568) = dword_281003384 != 0;
    }

    if (dword_281003328 == -1)
    {
      if (v17 != 1 || *(a2 + 4256) == 1)
      {
        *(a2 + 569) = 0;
      }
    }

    else
    {
      *(a2 + 569) = dword_281003328 != 0;
    }

    *(a2 + 564) = 0;
    v9 = *(a2 + 156);
    v10 = gCaptureDeviceCFPrefs[44 * v9 + 180];
    if (v10 == -1)
    {
      if (v4 & *(a2 + 569)) != 1 || (*(a2 + 568))
      {
LABEL_27:
        *(a2 + 560) = 3;
        v11 = gCaptureDeviceCFPrefs[44 * v9 + 179];
        if (v11 == -1)
        {
          if (H16ISP::H16ISPDevice::isSensorType(*(a1 + 24), v9, 1785950322))
          {
            v11 = 0;
          }

          else
          {
            v11 = *(a2 + 569);
            if (v11 != 1)
            {
LABEL_32:
              if (*(a2 + 568) == 1)
              {
                *(a2 + 560) = 0;
              }

              if (*(a2 + 572) != -1 && (*(a2 + 4256) & 1) == 0 && !H16ISP::H16ISPDevice::isSensorType(*(a1 + 24), *(a2 + 156), 1785950322))
              {
                *(a2 + 560) = *(a2 + 572);
              }

              v12 = v18[376] == 1 && *(a2 + 564) != 0;
              CameraConfig = H16ISP::H16ISPDevice::SetSensorInterfacePixelFormat(*(a1 + 24), *(a2 + 156), *(a2 + 560), (*(a2 + 569) & 1) == 0, v12, *(a2 + 568));
              if (CameraConfig)
              {
                v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v13 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
                }

                if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                {
                  ConfigSensorFormat();
                }
              }

              return CameraConfig;
            }
          }
        }

        *(a2 + 560) = v11;
        goto LABEL_32;
      }

      v10 = *(*(a2 + 184) + 120 * v7 + 105);
    }

    *(a2 + 564) = v10;
    goto LABEL_27;
  }

  return CameraConfig;
}

uint64_t SetNRSharpeningConfiguration(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return ApplyNoiseReductionConfiguration(a4, a2, 0, 0, 0, a1);
}

uint64_t ApplyNoiseReductionConfiguration(uint64_t a1, uint64_t a2, int a3, int a4, int a5, CFDictionaryRef theDict)
{
  v12 = 0x80;
  valuePtr = 128;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CF53A0]);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      v12 = valuePtr;
      if (valuePtr > 0xFF)
      {
        return 4294954516;
      }
    }

    else
    {
      v12 = 0x80;
    }
  }

  v14 = (a2 + 156);
  if (H16ISP::H16ISPDevice::SetRNFStrength(*(a1 + 24), *(a2 + 156), a3, v12))
  {
    v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v15 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      ApplyNoiseReductionConfiguration();
    }
  }

  else
  {
    v16 = 0x80;
    v60 = 128;
    if (theDict)
    {
      v17 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF53A8]);
      if (v17)
      {
        CFNumberGetValue(v17, kCFNumberSInt32Type, &v60);
      }

      v16 = v60;
      if (v60 > 0xFF)
      {
        return 4294954516;
      }
    }

    if (H16ISP::H16ISPDevice::SetSharpness(*(a1 + 24), *v14, a4, v16))
    {
      v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v18 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        ApplyNoiseReductionConfiguration();
      }
    }

    else
    {
      v19 = 0x80;
      v58 = 128;
      if (theDict)
      {
        v20 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF5390]);
        if (v20)
        {
          CFNumberGetValue(v20, kCFNumberSInt32Type, &v58);
        }

        v19 = v58;
        if (v58 > 0xFF)
        {
          return 4294954516;
        }
      }

      if (H16ISP::H16ISPDevice::SetLCEStrength(*(a1 + 24), *v14, a5, v19))
      {
        v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v22 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          ApplyNoiseReductionConfiguration();
        }
      }

      else
      {
        v59 = 0x80;
        v58 = -2139062144;
        v57 = 0x80;
        v56 = -2139062144;
        v55 = 1;
        v54 = 16843009;
        if (theDict && (v23 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF5398])) != 0)
        {
          v24 = v23;
          v25 = CFDictionaryGetValue(v23, *MEMORY[0x277CF5378]);
          v26 = MEMORY[0x277CBED28];
          if (v25 && CFEqual(*MEMORY[0x277CBED28], v25))
          {
            v27 = *(a2 + 48);
            v28 = *(a2 + 192);
            if (v27 < v28)
            {
              v28 = 0;
            }

            if ((*(*(a2 + 184) + 120 * (v27 - v28) + 104) & 1) == 0)
            {
              v44 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v44 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v44;
              }

              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                ApplyNoiseReductionConfiguration();
              }

              return 4294954516;
            }

            v52 = 1;
          }

          else
          {
            v52 = 0;
          }

          v33 = CFDictionaryGetValue(v24, *MEMORY[0x277CF5388]);
          if (v33)
          {
            v34 = CFEqual(*v26, v33) != 0;
          }

          else
          {
            v34 = 0;
          }

          v35 = CFDictionaryGetValue(v24, *MEMORY[0x277CF5368]);
          if (v35)
          {
            v29 = CFEqual(*v26, v35) != 0;
          }

          else
          {
            v29 = 0;
          }

          v36 = CFDictionaryGetValue(v24, *MEMORY[0x277CF5380]);
          if (v36)
          {
            v37 = v36;
            Count = CFArrayGetCount(v36);
            v39 = 5;
            if (!v34)
            {
              v39 = 1;
            }

            if (Count != v39)
            {
              return 4294954516;
            }

            v40 = Count;
            v41 = 0;
            do
            {
              v53 = 0;
              ValueAtIndex = CFArrayGetValueAtIndex(v37, v41);
              CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &v53);
              v43 = v53;
              *(&v58 + v41) = v53;
              if (v43 > 0xFF)
              {
                break;
              }

              ++v41;
            }

            while (v40 != v41);
            if (v40 != v41)
            {
              return 4294954516;
            }
          }

          v45 = CFDictionaryGetValue(v24, *MEMORY[0x277CF5370]);
          if (v45)
          {
            v46 = v45;
            v47 = CFArrayGetCount(v45);
            v48 = v34 ? 5 : 1;
            if (v47 != v48)
            {
              return 4294954516;
            }

            for (i = 0; i != v48; ++i)
            {
              v53 = 0;
              v50 = CFArrayGetValueAtIndex(v46, i);
              CFNumberGetValue(v50, kCFNumberSInt32Type, &v53);
              v51 = v53;
              *(&v56 + i) = v53;
              if (v51 > 0xFF)
              {
                break;
              }
            }

            if (v48 != i)
            {
              return 4294954516;
            }
          }

          if (v52)
          {
            v30 = v34;
          }

          else
          {
            v30 = 2;
          }
        }

        else
        {
          v29 = 0;
          v30 = 2;
        }

        if (H16ISP::H16ISPDevice::EnableMBNR(*(a1 + 24), *v14, a3, v30, v29))
        {
          v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v31 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v31;
          }

          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            ApplyNoiseReductionConfiguration();
          }
        }

        else
        {
          result = H16ISP::H16ISPDevice::SetMBNRConfiguration(*(a1 + 24), *v14, a3, 5u, &v54, &v58, &v56);
          if (!result)
          {
            return result;
          }

          v32 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v32 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v32;
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            ApplyNoiseReductionConfiguration();
          }
        }
      }
    }
  }

  return 4294954514;
}

uint64_t H16ISP::H16ISPDevice::SetRNFStrength(H16ISP::H16ISPDevice *a1, __int16 a2, int a3, char a4)
{
  bzero(v9, 0x14uLL);
  v10 = 2621;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetSharpness(H16ISP::H16ISPDevice *a1, int a2, int a3, char a4)
{
  bzero(v9, 0x10uLL);
  v10 = 2579;
  v11 = a2;
  v12 = 1;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    bzero(v9, 0x14uLL);
    v10 = 2569;
    v11 = a2;
    v12 = a3;
    v13 = a4;
    return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x14u, 0, 0xFFFFFFFF);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetLCEStrength(H16ISP::H16ISPDevice *a1, __int16 a2, int a3, char a4)
{
  bzero(v9, 0x14uLL);
  v10 = 2624;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableMBNR(H16ISP::H16ISPDevice *a1, __int16 a2, int a3, int a4, char a5)
{
  bzero(v11, 0x18uLL);
  v12 = 2618;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v11, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMBNRConfiguration(H16ISP::H16ISPDevice *a1, __int16 a2, int a3, unsigned int a4, char *a5, char *a6, char *a7)
{
  if (a4 > 5)
  {
    return 3758097090;
  }

  *&v28[70] = v7;
  v29 = v8;
  bzero(v23, 0x20uLL);
  v24 = 2619;
  v25 = a2;
  v26 = a3;
  if (a4)
  {
    v17 = v28;
    v18 = a4;
    v19 = v27;
    do
    {
      v20 = *a5++;
      *v17++ = v20;
      v21 = *a6++;
      *(v19 - 1) = v21;
      v22 = *a7++;
      *v19 = v22;
      v19 += 2;
      --v18;
    }

    while (v18);
  }

  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v23, 0x20u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAFMinimumObjectDistance(H16ISP::H16ISPDevice *a1, int a2, void *a3)
{
  bzero(v7, 0x14uLL);
  v8 = 1966;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t CopyMFDCameraFaceUp(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (H16ISP::H16ISPDevice::GetAFMinimumObjectDistance(*(a5 + 24), *(a3 + 156), &v11))
  {
    v7 = 0;
    v8 = 4294954513;
  }

  else
  {
    valuePtr = SHIDWORD(v11) * 0.0039062;
    v7 = CFNumberCreate(a1, kCFNumberFloatType, &valuePtr);
    v8 = 0;
  }

  *a2 = v7;
  return v8;
}

uint64_t CopyMFDCameraFaceDown(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (H16ISP::H16ISPDevice::GetAFMinimumObjectDistance(*(a5 + 24), *(a3 + 156), &v11))
  {
    v7 = 0;
    v8 = 4294954513;
  }

  else
  {
    valuePtr = v11 * 0.0039062;
    v7 = CFNumberCreate(a1, kCFNumberFloatType, &valuePtr);
    v8 = 0;
  }

  *a2 = v7;
  return v8;
}

uint64_t SetMidFrameSynchronizationEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
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
  if (v10 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  v11 = CFBooleanGetValue(a1) != 0;
  CFArrayGetValueAtIndex(*(a3 + 104), 0);
  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = *(DerivedStorage + 156);
  if (*(DerivedStorage + 4360) && !*(DerivedStorage + 4380))
  {
    v13 |= 0x80000000;
  }

  result = H16ISP::H16ISPDevice::SetMultiCamSyncOffset(*(a4 + 24), v13, v11);
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
      SetMidFrameSynchronizationEnabled();
    }

    return 4294954514;
  }

  else
  {
    *(a3 + 128) = v11;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetMultiCamSyncOffset(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 13319;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t SetMetadataSectionEnabled(uint64_t a1, uint64_t a2, int *a3, const __CFBoolean *cf)
{
  v26 = *MEMORY[0x277D85DE8];
  if (cf && (v8 = CFGetTypeID(cf), v8 == CFBooleanGetTypeID()))
  {
    Value = CFBooleanGetValue(cf);
    v10 = Value != 0;
    if (*(a2 + 160))
    {
      if (*(a3 + 4) == v10)
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
      v13 = Value;
      result = H16ISP::H16ISPDevice::EnableMetadataSection(*(a1 + 24), *(a2 + 156), *a3, Value != 0);
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
          v15 = "disable";
          v16 = *a3;
          v17 = *(a2 + 156);
          if (v13)
          {
            v15 = "enable";
          }

          v18 = 136315906;
          v19 = "SetMetadataSectionEnabled";
          v20 = 2080;
          v21 = v15;
          v22 = 1024;
          v23 = v16;
          v24 = 1024;
          v25 = v17;
          _os_log_error_impl(&dword_2247DB000, v14, OS_LOG_TYPE_ERROR, "%s - failed to %s metadata section %d on channel=%u\n", &v18, 0x22u);
        }

        return 4294954514;
      }

      else
      {
        *(a3 + 4) = v10;
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

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      SetMetadataSectionEnabled();
    }

    return 4294954516;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableMetadataSection(H16ISP::H16ISPDevice *this, unsigned int a2, __int16 a3, __int16 a4)
{
  v5 = 3758097112;
  if (*(this + 4))
  {
    if (*(this + 1167) <= a2)
    {
      return 3758097090;
    }

    else
    {
      bzero(v10, 0x14uLL);
      v11 = 294;
      v12 = a2;
      v14 = a4;
      v13 = a3;
      v5 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v10, 0x14u, 0, 0xFFFFFFFF);
      if (!v5)
      {
        *(*(this + 5) + 432 * a2 + 136) = v15;
      }
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
      H16ISP::H16ISPDevice::EnableMetadataSection();
    }
  }

  return v5;
}

uint64_t SetEnabledFocusScores(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFArrayGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 160))
  {
    return 4294954612;
  }

  v6 = a2 + 4149;
  *(a2 + 4149) = 0;
  if (CFArrayGetCount(a1) >= 1)
  {
    v7 = 0;
    v8 = *MEMORY[0x277CF54D8];
    v9 = *MEMORY[0x277CF54D0];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
      if (CFEqual(ValueAtIndex, v8))
      {
        v11 = 0;
      }

      else
      {
        v11 = CFEqual(ValueAtIndex, v9) != 0;
      }

      *(v6 + v11) = 1;
      ++v7;
    }

    while (v7 < CFArrayGetCount(a1));
  }

  return 0;
}

uint64_t SetSphereMode(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFStringGetTypeID())
  {
    return 4294954516;
  }

  if (!*(a2 + 672))
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a2 + 156);
      v16 = 67109120;
      v17 = v12;
      _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetSphereMode: camChannel = %d \n\n", &v16, 8u);
    }

    return 0;
  }

  if (CFEqual(*MEMORY[0x277CF6010], a1))
  {
    v8 = H16ISP::H16ISPDevice::SetOISMode(*(a4 + 24), *(a2 + 156), 0);
    if (!v8)
    {
      v8 = H16ISP::H16ISPDevice::SetOISActuator(*(a4 + 24), *(a2 + 156), 0, 0);
    }

    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 67109120;
      v17 = v8;
      v10 = "H16ISPCaptureDevice: SetSphereMode: kFigCaptureStreamSphereMode_Inactive  (res=0x%08X)\n\n";
LABEL_57:
      _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, v10, &v16, 8u);
    }
  }

  else if (CFEqual(*MEMORY[0x277CF5FF8], a1))
  {
    v8 = H16ISP::H16ISPDevice::SetOISMode(*(a4 + 24), *(a2 + 156), 1);
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 67109120;
      v17 = v8;
      v10 = "H16ISPCaptureDevice: SetSphereMode: kFigCaptureStreamSphereMode_Active  (res=0x%08X)\n\n";
      goto LABEL_57;
    }
  }

  else if (CFEqual(*MEMORY[0x277CF6018], a1))
  {
    v8 = H16ISP::H16ISPDevice::SetOISMode(*(a4 + 24), *(a2 + 156), 2);
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 67109120;
      v17 = v8;
      v10 = "H16ISPCaptureDevice: SetSphereMode: kFigCaptureStreamSphereMode_Lock  (res=0x%08X)\n\n";
      goto LABEL_57;
    }
  }

  else if (CFEqual(*MEMORY[0x277CF6000], a1))
  {
    v8 = H16ISP::H16ISPDevice::SetOISMode(*(a4 + 24), *(a2 + 156), 3);
    if (!v8)
    {
      v8 = H16ISP::H16ISPDevice::SetOISPosition(*(a4 + 24), *(a2 + 156), 0, 0);
    }

    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 67109120;
      v17 = v8;
      v10 = "H16ISPCaptureDevice: SetSphereMode: kFigCaptureStreamSphereMode_CenterLock  (res=0x%08X)\n\n";
      goto LABEL_57;
    }
  }

  else if (CFEqual(*MEMORY[0x277CF6008], a1))
  {
    v8 = H16ISP::H16ISPDevice::SetOISMode(*(a4 + 24), *(a2 + 156), 7);
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 67109120;
      v17 = v8;
      v10 = "H16ISPCaptureDevice: SetSphereMode: kFigCaptureStreamSphereMode_CenterSagLock  (res=0x%08X)\n\n";
      goto LABEL_57;
    }
  }

  else if (CFEqual(*MEMORY[0x277CF6020], a1))
  {
    v8 = H16ISP::H16ISPDevice::SetOISMode(*(a4 + 24), *(a2 + 156), 4);
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 67109120;
      v17 = v8;
      v10 = "H16ISPCaptureDevice: SetSphereMode: kFigCaptureStreamSphereMode_Off  (res=0x%08X)\n\n";
      goto LABEL_57;
    }
  }

  else if (CFEqual(*MEMORY[0x277CF6030], a1))
  {
    v8 = H16ISP::H16ISPDevice::SetOISMode(*(a4 + 24), *(a2 + 156), 9);
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 67109120;
      v17 = v8;
      v10 = "H16ISPCaptureDevice: SetSphereMode: kFigCaptureStreamSphereMode_StillPreviewActive  (res=0x%08X)\n\n";
      goto LABEL_57;
    }
  }

  else if (CFEqual(*MEMORY[0x277CF6038], a1))
  {
    v8 = H16ISP::H16ISPDevice::SetOISMode(*(a4 + 24), *(a2 + 156), 5);
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = 67109120;
      v17 = v8;
      v10 = "H16ISPCaptureDevice: SetSphereMode: kFigCaptureStreamSphereMode_Video  (res=0x%08X)\n\n";
      goto LABEL_57;
    }
  }

  else
  {
    v13 = CFEqual(*MEMORY[0x277CF6040], a1);
    v14 = *(a4 + 24);
    if (v13)
    {
      v8 = H16ISP::H16ISPDevice::SetOISMode(v14, *(a2 + 156), 10);
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v16 = 67109120;
        v17 = v8;
        v10 = "H16ISPCaptureDevice: SetSphereMode: kFigCaptureStreamSphereMode_VideoHighRange  (res=0x%08X)\n\n";
        goto LABEL_57;
      }
    }

    else
    {
      if (v14[1078] < 17)
      {
        return 4294954516;
      }

      if (CFEqual(*MEMORY[0x277CF6050], a1))
      {
        v8 = H16ISP::H16ISPDevice::SetOISMode(*(a4 + 24), *(a2 + 156), 11);
        v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v9 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v16 = 67109120;
          v17 = v8;
          v10 = "H16ISPCaptureDevice: SetSphereMode: kFigCaptureStreamSphereMode_VideoWithRecentering  (res=0x%08X)\n\n";
          goto LABEL_57;
        }
      }

      else if (CFEqual(*MEMORY[0x277CF6048], a1))
      {
        v8 = H16ISP::H16ISPDevice::SetOISMode(*(a4 + 24), *(a2 + 156), 12);
        v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v9 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v16 = 67109120;
          v17 = v8;
          v10 = "H16ISPCaptureDevice: SetSphereMode: kFigCaptureStreamSphereMode_VideoHighRangeWithRecentering  (res=0x%08X)\n\n";
          goto LABEL_57;
        }
      }

      else
      {
        if (!CFEqual(*MEMORY[0x277CF6028], a1))
        {
          return 4294954516;
        }

        v8 = H16ISP::H16ISPDevice::SetOISMode(*(a4 + 24), *(a2 + 156), 13);
        v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v9 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v16 = 67109120;
          v17 = v8;
          v10 = "H16ISPCaptureDevice: SetSphereMode: kFigCaptureStreamSphereMode_Pano  (res=0x%08X)\n\n";
          goto LABEL_57;
        }
      }
    }
  }

  if (!v8)
  {
    return 0;
  }

  return 4294954516;
}

uint64_t H16ISP::H16ISPDevice::SetOISMode(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1859;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t SetObjectDetectionConfiguration(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = *(a2 + 105);
  v8 = CFGetTypeID(a1);
  if (v8 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  *(a2 + 4168) = 0;
  SInt32Value = ObjectDetectionConfigurationGetSInt32Value(a1, *MEMORY[0x277CF5440]);
  v10 = SInt32Value;
  v11 = *(a2 + 160);
  if (SInt32Value < 1)
  {
    v14 = v11 == 0;
    v15 = 4236;
    if (v14)
    {
      v15 = 4228;
    }

    v12 = *(a2 + v15);
  }

  else
  {
    if (v11)
    {
      v12 = *(a2 + 4236);
    }

    else
    {
      v12 = *(a2 + 4228);
    }

    if (v12 >= SInt32Value)
    {
      v12 = SInt32Value;
    }
  }

  *(a2 + 4232) = v12;
  v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  v17 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v16 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = *(a2 + 4232);
    *v32 = 136315650;
    *&v32[4] = "ObjectDetectionSetCurrentOverrideMaxHumanFaceCount";
    v33 = 1024;
    v34 = v10;
    v35 = 1024;
    v36 = v18;
    _os_log_impl(&dword_2247DB000, v16, OS_LOG_TYPE_INFO, "%s - newMaxHumanFaceCount=%d overrideMaxHumanFaceCount=%u\n", v32, 0x18u);
  }

  *(a2 + 4741) = ObjectDetectionConfigurationGetSInt32Value(a1, *MEMORY[0x277CF5450]) > 0;
  *(a2 + 4740) = ObjectDetectionConfigurationGetSInt32Value(a1, *MEMORY[0x277CF5458]) > 0;
  *(a2 + 4732) = ObjectDetectionConfigurationGetSInt32Value(a1, *MEMORY[0x277CF5438]) > 0;
  *(a2 + 4733) = ObjectDetectionConfigurationGetSInt32Value(a1, *MEMORY[0x277CF5448]) > 0;
  *(a2 + 4736) = ObjectDetectionConfigurationGetSInt32Value(a1, *MEMORY[0x277CF5428]) > 0;
  *(a2 + 4737) = ObjectDetectionConfigurationGetSInt32Value(a1, *MEMORY[0x277CF5430]) > 0;
  *(a2 + 4734) = ObjectDetectionConfigurationGetSInt32Value(a1, *MEMORY[0x277CF5418]) > 0;
  *(a2 + 4735) = ObjectDetectionConfigurationGetSInt32Value(a1, *MEMORY[0x277CF5420]) > 0;
  *(a2 + 4739) = ObjectDetectionConfigurationGetSInt32Value(a1, *MEMORY[0x277CF5460]) > 0;
  *(a2 + 4738) = ObjectDetectionConfigurationGetSInt32Value(a1, *MEMORY[0x277CF5468]) > 0;
  *(a2 + 4742) = ObjectDetectionConfigurationIsObjectEnabled(a1, *MEMORY[0x277CF5408]);
  *(a2 + 4743) = ObjectDetectionConfigurationIsObjectEnabled(a1, *MEMORY[0x277CF5470]);
  if (*(a2 + 4741) == 1 && H16ISP::H16ISPDevice::getANSTVersion(*(a4 + 24), *(a2 + 156)) < 2.1)
  {
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v17)
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      SetObjectDetectionConfiguration();
    }

    *(a2 + 4741) = 0;
  }

  if (*(a2 + 4742) == 1 && *(*(a4 + 24) + 4312) <= 17)
  {
    v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v17)
    {
      v20 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v20;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      SetObjectDetectionConfiguration();
    }

    *(a2 + 4742) = 0;
  }

  v21 = *(a2 + 4743);
  if (v21 == 1)
  {
    if (*(*(a4 + 24) + 4312) > 17)
    {
      v21 = 1;
    }

    else
    {
      v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v17)
      {
        v22 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        SetObjectDetectionConfiguration();
      }

      v21 = 0;
      *(a2 + 4743) = 0;
    }
  }

  if (v10 > 0 || (*(a2 + 4741) & 1) != 0 || (*(a2 + 4740) & 1) != 0 || (*(a2 + 4732) & 1) != 0 || (*(a2 + 4733) & 1) != 0 || (*(a2 + 4736) & 1) != 0 || (*(a2 + 4737) & 1) != 0 || (*(a2 + 4734) & 1) != 0 || (*(a2 + 4735) & 1) != 0 || (*(a2 + 4738) & 1) != 0 || ((v21 | *(a2 + 4742)) & 1) != 0)
  {
    *(a2 + 4168) |= 8u;
  }

  if (*(a2 + 4739) == 1)
  {
    *(a2 + 4168) |= 0x10u;
  }

  if (ObjectDetectionConfigurationIsObjectEnabled(a1, *MEMORY[0x277CF5400]))
  {
    *(a2 + 4168) |= 4u;
  }

  if (ObjectDetectionConfigurationIsObjectEnabled(a1, *MEMORY[0x277CF53F8]))
  {
    *(a2 + 4168) |= 2u;
  }

  IsObjectEnabled = ObjectDetectionConfigurationIsObjectEnabled(a1, *MEMORY[0x277CF5410]);
  v24 = *(a2 + 4168);
  if (IsObjectEnabled)
  {
    *(a2 + 4168) = v24 | 1;
    v24 = 1;
  }

  *(a2 + 105) = v24 != 0;
  v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v17)
  {
    v25 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = *(a2 + 4168);
    v27 = *(a2 + 4232);
    *v32 = 136315650;
    *&v32[4] = "SetObjectDetectionConfiguration";
    v33 = 1024;
    v34 = v26;
    v35 = 1024;
    v36 = v27;
    _os_log_impl(&dword_2247DB000, v25, OS_LOG_TYPE_INFO, "%s - featureFlags=0x%x overrideMaxFaceCount=%u\n", v32, 0x18u);
  }

  if (!*(a2 + 160))
  {
    return 0;
  }

  if (*(a2 + 105) && *(a2 + 105) != (v7 != 0) && ActivateFaceDetectionOutputInFrameReceiver(a2, a4))
  {
    v28 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v17)
    {
      v28 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v28;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      SetObjectDetectionConfiguration();
    }

    return 4294954514;
  }

  if (H16ISP::H16ISPDevice::ReconfigureFaceDetect(*(a4 + 24), *(a2 + 156), *(a2 + 4168), *(a2 + 4232)))
  {
    v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v17)
    {
      v29 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v29;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      SetObjectDetectionConfiguration();
    }

    return 4294954514;
  }

  result = *(a2 + 4720);
  if (result)
  {
    *v32 = 0;
    H16ISP::H16ISPFilterGraphManager::GetNode(result, 4, v32);
    if (*v32)
    {
      if (*(a2 + 4144))
      {
        v30 = 1;
      }

      else
      {
        v30 = *(a2 + 4147);
      }

      if (*(a2 + 4145) & 1) != 0 || (*(a2 + 4146))
      {
        v31 = 1;
      }

      else
      {
        v31 = *(a2 + 4148);
      }

      SetOptionsForMetadataNode(*v32, a4, a2, v30 & 1, v31 & 1);
    }

    return 0;
  }

  return result;
}

uint64_t ObjectDetectionConfigurationGetSInt32Value(const __CFDictionary *a1, const __CFString *a2)
{
  value = 0;
  valuePtr = 0;
  result = CFDictionaryGetValueIfPresent(a1, a2, &value);
  if (result)
  {
    result = value;
    if (value)
    {
      v3 = CFGetTypeID(value);
      if (v3 == CFNumberGetTypeID())
      {
        if (CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr))
        {
          return valuePtr;
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
  }

  return result;
}

uint64_t SetHighlightRecoveryEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    *(a2 + 4609) = v9;
    if (H16ISP::H16ISPDevice::EnableHighlightRecovery(*(a4 + 24), *(a2 + 156), v9, 0))
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

uint64_t H16ISP::H16ISPDevice::EnableHighlightRecovery(H16ISP::H16ISPDevice *a1, int a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = 4101;
  v12 = a4;
  v13 = a3;
  v11 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t SetTOFAutoFocusEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  LockStreamMutexes(*(a4 + 120));
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFBooleanGetTypeID()))
  {
    v10 = 4294954516;
    goto LABEL_9;
  }

  Value = CFBooleanGetValue(a1);
  v8 = Value != 0;
  if (dword_2810033BC)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    v10 = 0;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 136315138;
      v31 = "SetTOFAutoFocusEnabled";
      _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEFAULT, "%s - Ignoring property value because default override is set\n", &v30, 0xCu);
      v10 = 0;
    }

    goto LABEL_9;
  }

  v12 = Value;
  if (CFArrayGetCount(*(a4 + 120)) < 1)
  {
    goto LABEL_29;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a4 + 120), v16);
    FigCaptureStreamGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(DerivedStorage + 156), 1785950322))
    {
      v14 = DerivedStorage;
      v13 = ValueAtIndex;
    }

    if (*(DerivedStorage + 160))
    {
      v15 |= *(DerivedStorage + 664) != 0;
    }

    ++v16;
  }

  while (v16 < CFArrayGetCount(*(a4 + 120)));
  if (v14)
  {
    if (v12)
    {
      PeridotCalib = H16ISP::createPeridotCalib(*(a4 + 24), *(a4 + 232), *(v14 + 156));
      if (!PeridotCalib)
      {
        v27 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v27 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v27;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          SetTOFAutoFocusEnabled();
        }

        v10 = 0;
        *(a4 + 280) = 0;
        goto LABEL_9;
      }

      CFRelease(PeridotCalib);
    }

    if (!*(v14 + 8))
    {
      v24 = *(v14 + 160);
      if (v24)
      {
        v25 = *(a4 + 272);
        if (v12)
        {
          H16ISP::H16ISPTimeOfFlightColorSynchronizer::enableTofAssistance(v25, v24);
        }

        else
        {
          H16ISP::H16ISPTimeOfFlightColorSynchronizer::disableTofAssistance(v25);
        }
      }

      goto LABEL_55;
    }

    v20 = *(v14 + 160);
    if (((v12 != 0) & v15) == 1)
    {
      if (!v20)
      {
        *(a4 + 280) = v8;
        started = StartJasperForInternalStreaming(v13);
        if (started)
        {
          v10 = started;
          v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v22 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            SetTOFAutoFocusEnabled();
          }

          goto LABEL_9;
        }

LABEL_55:
        v10 = 0;
        *(a4 + 280) = v8;
        goto LABEL_9;
      }

LABEL_39:
      v26 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v26 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v26;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        SetTOFAutoFocusEnabled();
      }

      goto LABEL_55;
    }

    if (v12)
    {
      if (!v20)
      {
        goto LABEL_55;
      }

      goto LABEL_39;
    }

    if (!v20)
    {
      goto LABEL_55;
    }

    v28 = StopJasperForInternalStreaming(v13);
    if (!v28)
    {
      goto LABEL_55;
    }

    v10 = v28;
    v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v29 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v29;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      SetTOFAutoFocusEnabled();
    }
  }

  else
  {
LABEL_29:
    v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v23 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v23;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      SetTOFAutoFocusEnabled();
    }

    v10 = 4294954514;
  }

LABEL_9:
  UnlockStreamMutexes(*(a4 + 120));
  return v10;
}

uint64_t SetDeferAdditionOfAttachments(const void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    v5 = "False";
    if (v4 == CFBooleanGetTypeID())
    {
      v6 = CFEqual(a1, *MEMORY[0x277CBED28]);
      v7 = 0;
      if (v6)
      {
        v5 = "True";
      }

      *(a2 + 696) = v6 != 0;
    }

    else
    {
      v7 = 4294954516;
    }
  }

  else
  {
    v7 = 4294954516;
    v5 = "False";
  }

  v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v8 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = v5;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetDeferAdditionOfAttachments: %s (err=%d) \n\n", &v10, 0x12u);
  }

  return v7;
}

uint64_t H16ISP::H16ISPDevice::SetCameraConfig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  v13 = MEMORY[0x28223BE20](a1, a2);
  v21 = v14;
  v40 = *MEMORY[0x277D85DE8];
  v22 = 3758097090;
  if (*(v13 + 4))
  {
    v23 = v13;
    if (*(v13 + 4668) > v14)
    {
      v24 = v15;
      if (*(*(v13 + 40) + 432 * v14) > v15)
      {
        v25 = v20;
        v26 = v19;
        v27 = v18;
        v28 = v17;
        v29 = v16;
        v30 = H16ISP::H16ISPDevice::ISP_EnableSensorPower(v13, v14, 1u, 0);
        if (v30)
        {
          return v30;
        }

        bzero(v36, 0x10uLL);
        v37 = 263;
        v38 = v21;
        v39 = v24;
        v30 = H16ISP::H16ISPDevice::ISP_SendCommand(v23, v36, 0x10u, 0, 0xFFFFFFFF);
        if (v30)
        {
          return v30;
        }

        if (*(v23 + 16 * v21 + 4528) == 1)
        {
          v32 = *(*(v23 + 9) + 72);
          if (v32)
          {
            v33[0] = MEMORY[0x277D85DD0];
            v33[1] = 0x40000000;
            v33[2] = ___ZN6H16ISP12H16ISPDevice15SetCameraConfigEjjbjj9sCIspRectbjjS1__block_invoke;
            v33[3] = &__block_descriptor_tmp_13;
            v33[4] = v23;
            v34 = v21;
            v35 = v24;
            dispatch_async(v32, v33);
          }
        }

        if (v29)
        {
          v30 = H16ISP::H16ISPDevice::SetFESOutputSize(v23, v21, v28, v27);
          if (v30)
          {
            return v30;
          }

          v30 = H16ISP::H16ISPDevice::SetFESCropRect(v23, v21, v26, v25);
          if (v30)
          {
            return v30;
          }
        }

        if (a9)
        {
          v30 = H16ISP::H16ISPDevice::SetStillFESConfig(v23, v21, v24, 1, a10, a11, a12, a13);
          if (v30)
          {
            return v30;
          }
        }

        bzero(v36, 0x10uLL);
        v37 = 270;
        v38 = v21;
        v39 = 1;
        v30 = H16ISP::H16ISPDevice::ISP_SendCommand(v23, v36, 0x10u, 0, 0xFFFFFFFF);
        if (v30)
        {
          return v30;
        }

        else
        {
          bzero(v36, 0xCuLL);
          v38 = v21;
          v37 = 271;
          v22 = H16ISP::H16ISPDevice::ISP_SendCommand(v23, v36, 0xCu, 0, 0xFFFFFFFF);
          if (v22)
          {
            H16ISP::H16ISPDevice::ISP_EnableSensorPower(v23, v21, 0, 0);
          }
        }
      }
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v22 = 3758097112;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::SetCameraConfig();
    }
  }

  return v22;
}

uint64_t H16ISP::H16ISPDevice::ISP_EnableSensorPower(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  input[3] = *MEMORY[0x277D85DE8];
  v5 = *(this + 1086);
  if (!v5)
  {
    return 3758097084;
  }

  v7 = a2;
  v8 = a3;
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  result = IOConnectCallScalarMethod(v5, 0x15u, input, 3u, 0, 0);
  if (result)
  {
    return result;
  }

  if (*(this + 16 * v7 + 4432) == 1)
  {
    result = *(*(this + 9) + 72);
    if (!result)
    {
      return result;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN6H16ISP12H16ISPDevice21ISP_EnableSensorPowerEjbb_block_invoke;
    block[3] = &__block_descriptor_tmp_253;
    v11 = a2;
    block[4] = this;
    block[5] = v8;
    dispatch_async(result, block);
  }

  return 0;
}

uint64_t ___ZN6H16ISP12H16ISPDevice15SetCameraConfigEjjbjj9sCIspRectbjjS1__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32) + 4520;
  notify_set_state(*(v2 + 16 * *(a1 + 40) + 12), *(a1 + 44));
  v3 = *(v2 + 16 * *(a1 + 40));

  return notify_post(v3);
}

uint64_t H16ISP::H16ISPDevice::EnableFESAutoAdjust(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2307;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMaximumAllowedFrameRate(H16ISP::H16ISPDevice *this, __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 359;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetDistortionData(H16ISP::H16ISPDevice *a1, __int16 a2, int a3, void *a4)
{
  bzero(a4, 0x1118uLL);
  *(a4 + 4) = a2;
  *(a4 + 2) = 28674;
  *(a4 + 3) = a3;

  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, a4, 0x1118u, 0, 0xFFFFFFFF);
}

uint64_t SetActiveNondisruptiveSwitchingFormats(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 4808);
  if (v7 && (Count = CFArrayGetCount(v7), v9 = *(a2 + 48), Count > v9))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 4808), v9);
    if (!a1)
    {
      return 4294954516;
    }
  }

  else
  {
    ValueAtIndex = 0;
    if (!a1)
    {
      return 4294954516;
    }
  }

  v11 = CFGetTypeID(a1);
  TypeID = CFArrayGetTypeID();
  result = 4294954516;
  if (v11 == TypeID && ValueAtIndex)
  {
    valuePtr = 0;
    *(a2 + 4944) = 0;
    if (CFArrayGetCount(a1) < 1)
    {
      v15 = 0;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = CFArrayGetValueAtIndex(a1, v14);
        if (v17)
        {
          v18 = v17;
          CFNumberGetValue(v17, kCFNumberSInt32Type, &valuePtr);
          v46.length = CFArrayGetCount(ValueAtIndex);
          v46.location = 0;
          if (!CFArrayContainsValue(ValueAtIndex, v46, v18))
          {
            v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v19 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
            }

            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = *(a2 + 156);
              v21 = *(a2 + 48);
              *buf = 136315906;
              v38 = "SetActiveNondisruptiveSwitchingFormats";
              v39 = 1024;
              v40 = v20;
              v41 = 1024;
              v42 = valuePtr;
              v43 = 1024;
              v44 = v21;
              _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "%s - ch %u format %u missing from format %u's supported list\n", buf, 0x1Eu);
            }
          }

          v22 = *(a2 + 192);
          if (valuePtr < v22)
          {
            v22 = 0;
          }

          v23 = *(*(a2 + 184) + 120 * (valuePtr - v22) + 16);
          if (H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), v23, v28, buf))
          {
            v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v24 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v24;
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = *(a2 + 156);
              *v31 = 136315650;
              v32 = "ActiveNondisruptiveSwitchingFormatsTrackIncludedConfigs";
              v33 = 1024;
              v34 = v25;
              v35 = 1024;
              v36 = v23;
              _os_log_error_impl(&dword_2247DB000, v24, OS_LOG_TYPE_ERROR, "%s - ch%u: failed to load camera config=%u\n", v31, 0x18u);
            }
          }

          else if (v29 >> 8 >= 0x21 && v30 >> 5 >= 0xBD)
          {
            *(a2 + 4944) = 1;
          }

          v15 |= 1 << v23;
        }

        v14 = ++v16;
      }

      while (CFArrayGetCount(a1) > v16);
    }

    result = H16ISP::H16ISPDevice::EnableContextSwitching(*(a4 + 24), *(a2 + 156), v15);
    if (result)
    {
      v26 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v26 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v26;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        SetActiveNondisruptiveSwitchingFormats();
      }

      return 4294954516;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableContextSwitching(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x14uLL);
  v8 = -32510;
  v9 = a2;
  v10 = a3;
  v11 = 0;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t SetVideoOutputHandlers(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v133 = *MEMORY[0x277D85DE8];
  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1785950322);
  if (*(a2 + 698) == 1)
  {
    v8 = isSensorType;
    pthread_mutex_lock((a2 + 328));
    if (!a1)
    {
      goto LABEL_185;
    }

    v9 = CFGetTypeID(a1);
    if (v9 != CFDictionaryGetTypeID())
    {
      goto LABEL_185;
    }

    Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF6640]);
    if (Value)
    {
      v11 = Value;
      v12 = CFGetTypeID(Value);
      if (v12 == CFDictionaryGetTypeID())
      {
        if (*(a2 + 160) && *(a2 + 704) == 1)
        {
          v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v13 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            SetVideoOutputHandlers();
          }

          goto LABEL_185;
        }

        v15 = CFDictionaryGetValue(v11, *MEMORY[0x277CF6610]);
        v16 = MEMORY[0x277CBEEE8];
        if (v15)
        {
          v17 = v15;
          v18 = *(a2 + 816);
          if (v18)
          {
            _Block_release(v18);
            *(a2 + 816) = 0;
          }

          if (!CFEqual(v17, *v16))
          {
            *(a2 + 816) = _Block_copy(v17);
          }
        }

        v19 = CFDictionaryGetValue(v11, *MEMORY[0x277CF6618]);
        if (v19)
        {
          v20 = v19;
          v21 = *(a2 + 808);
          if (v21)
          {
            _Block_release(v21);
            *(a2 + 808) = 0;
          }

          if (!CFEqual(v20, *v16))
          {
            *(a2 + 808) = _Block_copy(v20);
          }
        }
      }
    }

    v22 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6658]);
    if (v22)
    {
      v23 = v22;
      v24 = CFGetTypeID(v22);
      if (v24 == CFDictionaryGetTypeID())
      {
        if (*(a2 + 160) && *(a2 + 904) == 1)
        {
          v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v25 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            SetVideoOutputHandlers();
          }

          goto LABEL_185;
        }

        v26 = CFDictionaryGetValue(v23, *MEMORY[0x277CF6610]);
        if (v26)
        {
          v27 = v26;
          v28 = *(a2 + 1016);
          if (v28)
          {
            _Block_release(v28);
            *(a2 + 1016) = 0;
          }

          if (!CFEqual(v27, *MEMORY[0x277CBEEE8]))
          {
            *(a2 + 1016) = _Block_copy(v27);
          }
        }

        v29 = CFDictionaryGetValue(v23, *MEMORY[0x277CF6618]);
        if (v29)
        {
          v30 = v29;
          v31 = *(a2 + 1008);
          if (v31)
          {
            _Block_release(v31);
            *(a2 + 1008) = 0;
          }

          if (!CFEqual(v30, *MEMORY[0x277CBEEE8]))
          {
            *(a2 + 1008) = _Block_copy(v30);
          }
        }
      }
    }

    v32 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6660]);
    if (v32)
    {
      v33 = v32;
      v34 = CFGetTypeID(v32);
      if (v34 == CFDictionaryGetTypeID())
      {
        if (*(a2 + 160) && *(a2 + 1304) == 1)
        {
          v35 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v35 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v35;
          }

          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            SetVideoOutputHandlers();
          }

          goto LABEL_185;
        }

        v36 = CFDictionaryGetValue(v33, *MEMORY[0x277CF6610]);
        if (v36)
        {
          v37 = v36;
          v38 = *(a2 + 1416);
          if (v38)
          {
            _Block_release(v38);
            *(a2 + 1416) = 0;
          }

          if (!CFEqual(v37, *MEMORY[0x277CBEEE8]))
          {
            *(a2 + 1416) = _Block_copy(v37);
          }
        }

        v39 = CFDictionaryGetValue(v33, *MEMORY[0x277CF6618]);
        if (v39)
        {
          v40 = v39;
          v41 = *(a2 + 1408);
          if (v41)
          {
            _Block_release(v41);
            *(a2 + 1408) = 0;
          }

          if (!CFEqual(v40, *MEMORY[0x277CBEEE8]))
          {
            *(a2 + 1408) = _Block_copy(v40);
          }
        }
      }
    }

    v42 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6668]);
    if (v42)
    {
      v43 = v42;
      v44 = CFGetTypeID(v42);
      if (v44 == CFDictionaryGetTypeID())
      {
        if (*(a2 + 160) && *(a2 + 1504) == 1)
        {
          v45 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v45 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v45;
          }

          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            SetVideoOutputHandlers();
          }

          goto LABEL_185;
        }

        v46 = CFDictionaryGetValue(v43, *MEMORY[0x277CF6610]);
        if (v46)
        {
          v47 = v46;
          v48 = *(a2 + 1616);
          if (v48)
          {
            _Block_release(v48);
            *(a2 + 1616) = 0;
          }

          if (!CFEqual(v47, *MEMORY[0x277CBEEE8]))
          {
            *(a2 + 1616) = _Block_copy(v47);
          }
        }

        v49 = CFDictionaryGetValue(v43, *MEMORY[0x277CF6618]);
        if (v49)
        {
          v50 = v49;
          v51 = *(a2 + 1608);
          if (v51)
          {
            _Block_release(v51);
            *(a2 + 1608) = 0;
          }

          if (!CFEqual(v50, *MEMORY[0x277CBEEE8]))
          {
            *(a2 + 1608) = _Block_copy(v50);
          }
        }
      }
    }

    v52 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6628]);
    if (v52)
    {
      v53 = v52;
      v54 = CFGetTypeID(v52);
      if (v54 == CFDictionaryGetTypeID())
      {
        if (*(a2 + 160) && *(a2 + 1104) == 1)
        {
          v55 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v55 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v55;
          }

          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            SetVideoOutputHandlers();
          }

          goto LABEL_185;
        }

        v56 = CFDictionaryGetValue(v53, *MEMORY[0x277CF6610]);
        if (v56)
        {
          v57 = v56;
          v58 = *(a2 + 1216);
          if (v58)
          {
            _Block_release(v58);
            *(a2 + 1216) = 0;
          }

          if (!CFEqual(v57, *MEMORY[0x277CBEEE8]))
          {
            *(a2 + 1216) = _Block_copy(v57);
          }
        }

        v59 = CFDictionaryGetValue(v53, *MEMORY[0x277CF6618]);
        if (v59)
        {
          v60 = v59;
          v61 = *(a2 + 1208);
          if (v61)
          {
            _Block_release(v61);
            *(a2 + 1208) = 0;
          }

          if (!CFEqual(v60, *MEMORY[0x277CBEEE8]))
          {
            *(a2 + 1208) = _Block_copy(v60);
          }
        }
      }
    }

    v62 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6678]);
    if (v62)
    {
      v63 = v62;
      v64 = CFGetTypeID(v62);
      if (v64 == CFDictionaryGetTypeID())
      {
        if (*(a2 + 160) && (*(a2 + 2504) & 1) != 0)
        {
          goto LABEL_185;
        }

        v65 = CFDictionaryGetValue(v63, *MEMORY[0x277CF6610]);
        if (v65)
        {
          v66 = v65;
          v67 = *(a2 + 2616);
          if (v67)
          {
            _Block_release(v67);
            *(a2 + 2616) = 0;
          }

          if (!CFEqual(v66, *MEMORY[0x277CBEEE8]))
          {
            *(a2 + 2616) = _Block_copy(v66);
          }
        }

        v68 = CFDictionaryGetValue(v63, *MEMORY[0x277CF6618]);
        if (v68)
        {
          v69 = v68;
          v70 = *(a2 + 2608);
          if (v70)
          {
            _Block_release(v70);
            *(a2 + 2608) = 0;
          }

          if (!CFEqual(v69, *MEMORY[0x277CBEEE8]))
          {
            *(a2 + 2608) = _Block_copy(v69);
          }
        }
      }
    }

    if (ConfigSupportsContextSwitchCaptures(a2, a4, 0, 0))
    {
      v71 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6670]);
      if (v71)
      {
        v72 = v71;
        v73 = CFGetTypeID(v71);
        if (v73 == CFDictionaryGetTypeID())
        {
          if (*(a2 + 160) && (*(a2 + 1704) & 1) != 0)
          {
            goto LABEL_185;
          }

          v74 = CFDictionaryGetValue(v72, *MEMORY[0x277CF6610]);
          if (v74)
          {
            v75 = v74;
            v76 = *(a2 + 1816);
            if (v76)
            {
              _Block_release(v76);
              *(a2 + 1816) = 0;
            }

            if (!CFEqual(v75, *MEMORY[0x277CBEEE8]))
            {
              *(a2 + 1816) = _Block_copy(v75);
            }
          }

          v77 = CFDictionaryGetValue(v72, *MEMORY[0x277CF6618]);
          if (v77)
          {
            v78 = v77;
            v79 = *(a2 + 1808);
            if (v79)
            {
              _Block_release(v79);
              *(a2 + 1808) = 0;
            }

            if (!CFEqual(v78, *MEMORY[0x277CBEEE8]))
            {
              *(a2 + 1808) = _Block_copy(v78);
            }
          }
        }
      }
    }

    v80 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6620]);
    if (v80)
    {
      v81 = v80;
      v82 = CFGetTypeID(v80);
      if (v82 == CFDictionaryGetTypeID())
      {
        if (*(a2 + 160) && (*(a2 + 1904) & 1) != 0)
        {
          goto LABEL_185;
        }

        v83 = CFDictionaryGetValue(v81, *MEMORY[0x277CF6610]);
        if (v83)
        {
          v84 = v83;
          v85 = *(a2 + 2016);
          if (v85)
          {
            _Block_release(v85);
            *(a2 + 2016) = 0;
          }

          if (!CFEqual(v84, *MEMORY[0x277CBEEE8]))
          {
            *(a2 + 2016) = _Block_copy(v84);
          }
        }

        v86 = CFDictionaryGetValue(v81, *MEMORY[0x277CF6618]);
        if (v86)
        {
          v87 = v86;
          v88 = *(a2 + 2008);
          if (v88)
          {
            _Block_release(v88);
            *(a2 + 2008) = 0;
          }

          if (!CFEqual(v87, *MEMORY[0x277CBEEE8]))
          {
            *(a2 + 2008) = _Block_copy(v87);
          }
        }
      }
    }

    if ((*(a2 + 4256) | v8))
    {
      v89 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6650]);
      if (v89)
      {
        v90 = v89;
        v91 = CFGetTypeID(v89);
        if (v91 == CFDictionaryGetTypeID())
        {
          if (*(a2 + 160) && (*(a2 + 2104) & 1) != 0)
          {
            goto LABEL_185;
          }

          v92 = CFDictionaryGetValue(v90, *MEMORY[0x277CF6610]);
          if (v92)
          {
            v93 = v92;
            v94 = *(a2 + 2216);
            if (v94)
            {
              _Block_release(v94);
              *(a2 + 2216) = 0;
            }

            if (!CFEqual(v93, *MEMORY[0x277CBEEE8]))
            {
              *(a2 + 2216) = _Block_copy(v93);
            }
          }

          v95 = CFDictionaryGetValue(v90, *MEMORY[0x277CF6618]);
          if (v95)
          {
            v96 = v95;
            v97 = *(a2 + 2208);
            if (v97)
            {
              _Block_release(v97);
              *(a2 + 2208) = 0;
            }

            if (!CFEqual(v96, *MEMORY[0x277CBEEE8]))
            {
              *(a2 + 2208) = _Block_copy(v96);
            }
          }
        }
      }
    }

    v98 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6648]);
    if (v98)
    {
      v99 = v98;
      v100 = CFGetTypeID(v98);
      if (v100 == CFDictionaryGetTypeID())
      {
        if (*(a2 + 160) && (*(a2 + 2304) & 1) != 0)
        {
          goto LABEL_185;
        }

        v101 = CFDictionaryGetValue(v99, *MEMORY[0x277CF6610]);
        if (v101)
        {
          v102 = v101;
          v103 = *(a2 + 2416);
          if (v103)
          {
            _Block_release(v103);
            *(a2 + 2416) = 0;
          }

          if (!CFEqual(v102, *MEMORY[0x277CBEEE8]))
          {
            *(a2 + 2416) = _Block_copy(v102);
          }
        }

        v104 = CFDictionaryGetValue(v99, *MEMORY[0x277CF6618]);
        if (v104)
        {
          v105 = v104;
          v106 = *(a2 + 2408);
          if (v106)
          {
            _Block_release(v106);
            *(a2 + 2408) = 0;
          }

          if (!CFEqual(v105, *MEMORY[0x277CBEEE8]))
          {
            *(a2 + 2408) = _Block_copy(v105);
          }
        }
      }
    }

    v107 = CFDictionaryGetValue(a1, @"VisPipe");
    if (v107)
    {
      v108 = v107;
      v109 = CFGetTypeID(v107);
      if (v109 == CFDictionaryGetTypeID())
      {
        if (*(a2 + 160) && (*(a2 + 2704) & 1) != 0)
        {
          goto LABEL_185;
        }

        v110 = CFDictionaryGetValue(v108, *MEMORY[0x277CF6610]);
        if (v110)
        {
          v111 = v110;
          v112 = *(a2 + 2816);
          if (v112)
          {
            _Block_release(v112);
            *(a2 + 2816) = 0;
          }

          if (!CFEqual(v111, *MEMORY[0x277CBEEE8]))
          {
            *(a2 + 2816) = _Block_copy(v111);
          }
        }

        v113 = CFDictionaryGetValue(v108, *MEMORY[0x277CF6618]);
        if (v113)
        {
          v114 = v113;
          v115 = *(a2 + 2808);
          if (v115)
          {
            _Block_release(v115);
            *(a2 + 2808) = 0;
          }

          if (!CFEqual(v114, *MEMORY[0x277CBEEE8]))
          {
            *(a2 + 2808) = _Block_copy(v114);
          }
        }
      }
    }

    v116 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6638]);
    if (v116)
    {
      v117 = v116;
      v118 = CFGetTypeID(v116);
      if (v118 == CFDictionaryGetTypeID())
      {
        if (*(a2 + 160) && (*(a2 + 4080) & 1) != 0)
        {
LABEL_185:
          v14 = 4294954516;
          goto LABEL_186;
        }

        v120 = CFDictionaryGetValue(v117, *MEMORY[0x277CF6610]);
        if (v120)
        {
          v121 = v120;
          v122 = *(a2 + 4128);
          if (v122)
          {
            _Block_release(v122);
            *(a2 + 4128) = 0;
          }

          if (!CFEqual(v121, *MEMORY[0x277CBEEE8]))
          {
            *(a2 + 4128) = _Block_copy(v121);
          }
        }

        v123 = CFDictionaryGetValue(v117, *MEMORY[0x277CF6600]);
        if (v123)
        {
          v124 = v123;
          v125 = *(a2 + 4120);
          if (v125)
          {
            _Block_release(v125);
            *(a2 + 4120) = 0;
          }

          if (!CFEqual(v124, *MEMORY[0x277CBEEE8]))
          {
            *(a2 + 4120) = _Block_copy(v124);
          }
        }
      }
    }

    v126 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6630]);
    v14 = v126;
    if (v126)
    {
      v127 = CFGetTypeID(v126);
      if (v127 == CFDictionaryGetTypeID())
      {
        if (*(a2 + 160) && *(a2 + 2904) == 1)
        {
          v128 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v128 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v128;
          }

          if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
          {
            v131 = 136315138;
            v132 = "SetMetadataOutputHandler";
            _os_log_impl(&dword_2247DB000, v128, OS_LOG_TYPE_DEFAULT, "%s - cannot change metadata output handler while streaming and output is enabled\n", &v131, 0xCu);
          }
        }

        else
        {
          v14 = CFDictionaryGetValue(v14, *MEMORY[0x277CF6608]);
          if (!v14)
          {
            goto LABEL_186;
          }

          v129 = *(a2 + 2912);
          if (v129)
          {
            _Block_release(v129);
            *(a2 + 2912) = 0;
          }

          if (!CFEqual(v14, *MEMORY[0x277CBEEE8]))
          {
            v130 = _Block_copy(v14);
            v14 = 0;
            *(a2 + 2912) = v130;
            goto LABEL_186;
          }
        }
      }

      v14 = 0;
    }

LABEL_186:
    pthread_mutex_unlock((a2 + 328));
    return v14;
  }

  return 4294954509;
}

uint64_t CopyVideoOutputConfigurations(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v323 = *MEMORY[0x277D85DE8];
  if (*(a3 + 698) != 1)
  {
    Mutable = 0;
    result = 4294954509;
    goto LABEL_339;
  }

  v8 = (a3 + 156);
  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a5 + 24), *(a3 + 156), 1785950322);
  v9 = *(*(a5 + 24) + 4304);
  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    result = 4294954510;
    goto LABEL_339;
  }

  v309 = a2;
  v12 = a3 + 724;
  v13 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v14 = MEMORY[0x277CF65C8];
  v310 = v8;
  if (v13)
  {
    v15 = v13;
    v16 = CFNumberCreate(0, kCFNumberLongLongType, (a3 + 712));
    CFDictionarySetValue(v15, *MEMORY[0x277CF6578], v16);
    CFRelease(v16);
    v17 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 720));
    CFDictionarySetValue(v15, *MEMORY[0x277CF65C0], v17);
    CFRelease(v17);
    v18 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 724));
    CFDictionarySetValue(v15, *MEMORY[0x277CF65F8], v18);
    CFRelease(v18);
    v19 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 728));
    CFDictionarySetValue(v15, *MEMORY[0x277CF65A8], v19);
    CFRelease(v19);
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(a3 + 736));
    CFDictionarySetValue(v15, *MEMORY[0x277CF6580], DictionaryRepresentation);
    CFRelease(DictionaryRepresentation);
    v21 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 768));
    CFDictionarySetValue(v15, *v14, v21);
    CFRelease(v21);
    v22 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 772));
    CFDictionarySetValue(v15, *MEMORY[0x277CF6548], v22);
    CFRelease(v22);
    v23 = *MEMORY[0x277CBED28];
    v24 = *MEMORY[0x277CBED10];
    if (*(a3 + 776))
    {
      v25 = *MEMORY[0x277CBED28];
    }

    else
    {
      v25 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v15, *MEMORY[0x277CF6540], v25);
    if (*(a3 + 778))
    {
      v26 = v23;
    }

    else
    {
      v26 = v24;
    }

    CFDictionarySetValue(v15, *MEMORY[0x277CF66F0], v26);
    if (*(v9 + 673) == 1)
    {
      v27 = MEMORY[0x277CBED28];
      if (!*(a3 + 779))
      {
        v27 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v15, *MEMORY[0x277CF66E8], *v27);
    }

    v28 = H16ISP::H16ISPDevice::isSensorType(*(a5 + 24), *v8, 1919251319);
    v14 = MEMORY[0x277CF65C8];
    if (v28 && *(v9 + 673) == 1)
    {
      bzero(&__dst, 0x78uLL);
      v29 = *(a3 + 48);
      v30 = *(a3 + 192);
      if (v29 < v30)
      {
        v30 = 0;
      }

      v31 = (*(a3 + 184) + 120 * (v29 - v30));
      memmove(&__dst, v31, 0x78uLL);
      v318 = vuzp1q_s32(vcvtq_u64_f64(*(a3 + 736)), vcvtq_u64_f64(*(a3 + 752)));
      v317 = *v12;
      CameraConfig = H16ISP::H16ISPDevice::GetCameraConfig(*(a5 + 24), *(a3 + 156), v31[4], v319, &valuePtr);
      v34 = MEMORY[0x277D86220];
      if (CameraConfig)
      {
        v35 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v35 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v35;
        }

        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          CopyVideoOutputConfigurations();
        }
      }

      H16ISP::H16ISPDevice::GetGDCMaxStrength(*(a5 + 24), *(a3 + 156), &__dst, v319, (a3 + 784), v33);
      if (v36)
      {
        v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v34)
        {
          v37 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v37;
        }

        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          CopyVideoOutputConfigurations();
        }
      }

      v38 = CFNumberCreate(0, kCFNumberFloat32Type, (a3 + 780));
      CFDictionarySetValue(v15, *MEMORY[0x277CF65A0], v38);
      CFRelease(v38);
      v39 = CFNumberCreate(0, kCFNumberFloat32Type, (a3 + 784));
      CFDictionarySetValue(v15, *MEMORY[0x277CF65D0], v39);
      CFRelease(v39);
      v8 = v310;
      v12 = a3 + 724;
      v14 = MEMORY[0x277CF65C8];
    }

    v40 = *(a3 + 848);
    if (v40)
    {
      CFDictionarySetValue(v15, *MEMORY[0x277CF6550], v40);
    }

    LODWORD(valuePtr) = 64;
    v41 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v15, *MEMORY[0x277CF6558], v41);
    CFRelease(v41);
    LODWORD(valuePtr) = 128;
    v42 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v15, *MEMORY[0x277CF6568], v42);
    CFRelease(v42);
    v43 = dword_281003314;
    LODWORD(valuePtr) = dword_281003314;
    if (!dword_281003314)
    {
      v44 = *(a3 + 48);
      v45 = *(a3 + 192);
      if (v44 < v45)
      {
        v45 = 0;
      }

      v43 = *(*(a3 + 184) + 120 * (v44 - v45) + 116);
    }

    LODWORD(valuePtr) = v43 - *(a3 + 92) + 1;
    if (H16ISP::H16ISPDevice::isSensorType(*(a5 + 24), *(a3 + 156), 1919246706))
    {
      if (*(a5 + 216))
      {
        SensorChannel = H16ISP::H16ISPDevice::getSensorChannel(*(a5 + 24), 1785950322, 1852793709);
        v47 = *(a5 + 216);
        v48 = *v47;
        if (*v47)
        {
          v49 = v47 + 14;
          while (1)
          {
            v50 = *v49;
            v49 += 4;
            if (((1 << SensorChannel) & v50) != 0)
            {
              break;
            }

            if (!--v48)
            {
              goto LABEL_45;
            }
          }

          LODWORD(valuePtr) = valuePtr + 2;
        }
      }
    }

LABEL_45:
    v52 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v15, *MEMORY[0x277CF6560], v52);
    CFRelease(v52);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CF6640], v15);
    CFRelease(v15);
  }

  if (isSensorType)
  {
    goto LABEL_147;
  }

  v53 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v53)
  {
    v54 = v53;
    v55 = CFNumberCreate(0, kCFNumberLongLongType, (a3 + 912));
    CFDictionarySetValue(v54, *MEMORY[0x277CF6578], v55);
    CFRelease(v55);
    v56 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 920));
    CFDictionarySetValue(v54, *MEMORY[0x277CF65C0], v56);
    CFRelease(v56);
    v57 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 924));
    CFDictionarySetValue(v54, *MEMORY[0x277CF65F8], v57);
    CFRelease(v57);
    v58 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 928));
    CFDictionarySetValue(v54, *MEMORY[0x277CF65A8], v58);
    CFRelease(v58);
    v59 = CGRectCreateDictionaryRepresentation(*(a3 + 936));
    CFDictionarySetValue(v54, *MEMORY[0x277CF6580], v59);
    CFRelease(v59);
    v60 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 968));
    CFDictionarySetValue(v54, *v14, v60);
    CFRelease(v60);
    v61 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 972));
    CFDictionarySetValue(v54, *MEMORY[0x277CF6548], v61);
    CFRelease(v61);
    v62 = *MEMORY[0x277CBED28];
    v63 = *MEMORY[0x277CBED10];
    if (*(a3 + 976))
    {
      v64 = *MEMORY[0x277CBED28];
    }

    else
    {
      v64 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v54, *MEMORY[0x277CF6540], v64);
    if (*(a3 + 978))
    {
      v65 = v62;
    }

    else
    {
      v65 = v63;
    }

    CFDictionarySetValue(v54, *MEMORY[0x277CF66F0], v65);
    v66 = *(a3 + 1048);
    if (v66)
    {
      CFDictionarySetValue(v54, *MEMORY[0x277CF6550], v66);
    }

    LODWORD(valuePtr) = 64;
    v67 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v54, *MEMORY[0x277CF6558], v67);
    CFRelease(v67);
    LODWORD(valuePtr) = 128;
    v68 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v54, *MEMORY[0x277CF6568], v68);
    CFRelease(v68);
    v69 = dword_281003314;
    LODWORD(valuePtr) = dword_281003314;
    if (!dword_281003314)
    {
      v70 = *(a3 + 48);
      v71 = *(a3 + 192);
      if (v70 < v71)
      {
        v71 = 0;
      }

      v69 = *(*(a3 + 184) + 120 * (v70 - v71) + 116);
    }

    LODWORD(valuePtr) = v69 - *(a3 + 92) + 1;
    v72 = H16ISP::H16ISPDevice::isSensorType(*(a5 + 24), *(a3 + 156), 1919246706);
    v14 = MEMORY[0x277CF65C8];
    if (v72)
    {
      if (*(a5 + 216))
      {
        v73 = H16ISP::H16ISPDevice::getSensorChannel(*(a5 + 24), 1785950322, 1852793709);
        v74 = *(a5 + 216);
        v75 = *v74;
        if (*v74)
        {
          v76 = v74 + 14;
          while (1)
          {
            v77 = *v76;
            v76 += 4;
            if (((1 << v73) & v77) != 0)
            {
              break;
            }

            if (!--v75)
            {
              goto LABEL_68;
            }
          }

          LODWORD(valuePtr) = valuePtr + 2;
        }
      }
    }

LABEL_68:
    v78 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v54, *MEMORY[0x277CF6560], v78);
    CFRelease(v78);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CF6658], v54);
    CFRelease(v54);
  }

  v79 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v79)
  {
    v80 = v79;
    v81 = CFNumberCreate(0, kCFNumberLongLongType, (a3 + 1112));
    CFDictionarySetValue(v80, *MEMORY[0x277CF6578], v81);
    CFRelease(v81);
    v82 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1120));
    CFDictionarySetValue(v80, *MEMORY[0x277CF65C0], v82);
    CFRelease(v82);
    v83 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1124));
    CFDictionarySetValue(v80, *MEMORY[0x277CF65F8], v83);
    CFRelease(v83);
    v84 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1128));
    CFDictionarySetValue(v80, *MEMORY[0x277CF65A8], v84);
    CFRelease(v84);
    v85 = CGRectCreateDictionaryRepresentation(*(a3 + 1136));
    CFDictionarySetValue(v80, *MEMORY[0x277CF6580], v85);
    CFRelease(v85);
    v86 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1168));
    CFDictionarySetValue(v80, *v14, v86);
    CFRelease(v86);
    v87 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1172));
    CFDictionarySetValue(v80, *MEMORY[0x277CF6548], v87);
    CFRelease(v87);
    v88 = MEMORY[0x277CBED28];
    if (!*(a3 + 1176))
    {
      v88 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v80, *MEMORY[0x277CF6540], *v88);
    v89 = *(a3 + 1248);
    if (v89)
    {
      CFDictionarySetValue(v80, *MEMORY[0x277CF6550], v89);
    }

    LODWORD(valuePtr) = 64;
    v90 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v80, *MEMORY[0x277CF6558], v90);
    CFRelease(v90);
    LODWORD(valuePtr) = 128;
    v91 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v80, *MEMORY[0x277CF6568], v91);
    CFRelease(v91);
    v92 = dword_281003314;
    LODWORD(valuePtr) = dword_281003314;
    if (!dword_281003314)
    {
      v93 = *(a3 + 48);
      v94 = *(a3 + 192);
      if (v93 < v94)
      {
        v94 = 0;
      }

      v92 = *(*(a3 + 184) + 120 * (v93 - v94) + 116);
    }

    LODWORD(valuePtr) = v92 - *(a3 + 92) + 1;
    v95 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v80, *MEMORY[0x277CF6560], v95);
    CFRelease(v95);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CF6628], v80);
    CFRelease(v80);
  }

  v96 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v96)
  {
    v97 = v96;
    v98 = CFNumberCreate(0, kCFNumberLongLongType, (a3 + 1312));
    CFDictionarySetValue(v97, *MEMORY[0x277CF6578], v98);
    CFRelease(v98);
    v99 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1320));
    CFDictionarySetValue(v97, *MEMORY[0x277CF65C0], v99);
    CFRelease(v99);
    v100 = (v12 + 600);
    v101 = CFNumberCreate(0, kCFNumberSInt32Type, (v12 + 600));
    CFDictionarySetValue(v97, *MEMORY[0x277CF65F8], v101);
    CFRelease(v101);
    v102 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1328));
    CFDictionarySetValue(v97, *MEMORY[0x277CF65A8], v102);
    CFRelease(v102);
    v103 = CGRectCreateDictionaryRepresentation(*(a3 + 1336));
    CFDictionarySetValue(v97, *MEMORY[0x277CF6580], v103);
    CFRelease(v103);
    v104 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1368));
    CFDictionarySetValue(v97, *v14, v104);
    CFRelease(v104);
    v105 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1372));
    CFDictionarySetValue(v97, *MEMORY[0x277CF6548], v105);
    CFRelease(v105);
    v106 = *MEMORY[0x277CBED28];
    v107 = *MEMORY[0x277CBED10];
    if (*(a3 + 1376))
    {
      v108 = *MEMORY[0x277CBED28];
    }

    else
    {
      v108 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v97, *MEMORY[0x277CF6540], v108);
    if (*(a3 + 1424))
    {
      v109 = v106;
    }

    else
    {
      v109 = v107;
    }

    CFDictionarySetValue(v97, *MEMORY[0x277CF6238], v109);
    v110 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1428));
    CFDictionarySetValue(v97, *MEMORY[0x277CF6230], v110);
    CFRelease(v110);
    v111 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1432));
    CFDictionarySetValue(v97, *MEMORY[0x277CF6218], v111);
    CFRelease(v111);
    v315 = *(a3 + 4464);
    v112 = CFNumberCreate(0, kCFNumberIntType, &v315);
    if (v112)
    {
      v113 = v112;
      CFDictionarySetValue(v97, *MEMORY[0x277CF6278], v112);
      CFRelease(v113);
    }

    if (*(a3 + 1388))
    {
      v114 = v106;
    }

    else
    {
      v114 = v107;
    }

    CFDictionarySetValue(v97, *MEMORY[0x277CF6248], v114);
    v115 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1392));
    CFDictionarySetValue(v97, *MEMORY[0x277CF6250], v115);
    CFRelease(v115);
    v314 = *(a3 + 1396) == 1;
    v116 = CFNumberCreate(0, kCFNumberSInt32Type, &v314);
    CFDictionarySetValue(v97, *MEMORY[0x277CF6240], v116);
    CFRelease(v116);
    if (*(a3 + 1488))
    {
      v117 = v106;
    }

    else
    {
      v117 = v107;
    }

    CFDictionarySetValue(v97, *MEMORY[0x277CF6258], v117);
    if (*(a3 + 1400))
    {
      v118 = v106;
    }

    else
    {
      v118 = v107;
    }

    CFDictionarySetValue(v97, *MEMORY[0x277CF6210], v118);
    v119 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1492));
    CFDictionarySetValue(v97, *MEMORY[0x277CF6220], v119);
    CFRelease(v119);
    v120 = *(a3 + 1448);
    if (v120)
    {
      CFDictionarySetValue(v97, *MEMORY[0x277CF6550], v120);
    }

    v313 = 64;
    v121 = CFNumberCreate(0, kCFNumberSInt32Type, &v313);
    CFDictionarySetValue(v97, *MEMORY[0x277CF6558], v121);
    CFRelease(v121);
    v313 = 128;
    v122 = CFNumberCreate(0, kCFNumberSInt32Type, &v313);
    CFDictionarySetValue(v97, *MEMORY[0x277CF6568], v122);
    CFRelease(v122);
    v313 = 0;
    v123 = CFNumberCreate(0, kCFNumberSInt32Type, &v313);
    CFDictionarySetValue(v97, *MEMORY[0x277CF6560], v123);
    CFRelease(v123);
    v12 = a3 + 724;
    v14 = MEMORY[0x277CF65C8];
    if (*(v9 + 673) == 1)
    {
      v124 = MEMORY[0x277CBED28];
      if (!*(a3 + 1379))
      {
        v124 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v97, *MEMORY[0x277CF66E8], *v124);
    }

    if (H16ISP::H16ISPDevice::isSensorType(*(a5 + 24), *v310, 1919251319) && *(v9 + 673) == 1)
    {
      bzero(&__dst, 0x78uLL);
      v125 = *(a3 + 48);
      v126 = *(a3 + 192);
      if (v125 < v126)
      {
        v126 = 0;
      }

      v127 = (*(a3 + 184) + 120 * (v125 - v126));
      memmove(&__dst, v127, 0x78uLL);
      v318 = vuzp1q_s32(vcvtq_u64_f64(*(a3 + 1336)), vcvtq_u64_f64(*(a3 + 1352)));
      v317 = *v100;
      if (H16ISP::H16ISPDevice::GetCameraConfig(*(a5 + 24), *(a3 + 156), v127[4], v319, &valuePtr))
      {
        v129 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v129 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v129;
        }

        if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
        {
          CopyVideoOutputConfigurations();
        }
      }

      H16ISP::H16ISPDevice::GetGDCMaxStrength(*(a5 + 24), *(a3 + 156), &__dst, v319, (a3 + 1384), v128);
      if (v130)
      {
        v131 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v131 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v131;
        }

        if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
        {
          CopyVideoOutputConfigurations();
        }
      }

      v132 = CFNumberCreate(0, kCFNumberFloat32Type, (a3 + 1380));
      CFDictionarySetValue(v97, *MEMORY[0x277CF65A0], v132);
      CFRelease(v132);
      v133 = CFNumberCreate(0, kCFNumberFloat32Type, (a3 + 1384));
      CFDictionarySetValue(v97, *MEMORY[0x277CF65D0], v133);
      CFRelease(v133);
      v12 = a3 + 724;
      v14 = MEMORY[0x277CF65C8];
    }

    if (*(v12 + 3676))
    {
      v134 = MEMORY[0x277CC4D18];
      v8 = v310;
    }

    else
    {
      v135 = *(a3 + 176);
      v8 = v310;
      if (v135 > 2)
      {
LABEL_123:
        CFDictionarySetValue(Mutable, *MEMORY[0x277CF6660], v97);
        CFRelease(v97);
        goto LABEL_124;
      }

      v134 = qword_278531368[v135];
    }

    CFDictionarySetValue(v97, *MEMORY[0x277CF6260], *v134);
    goto LABEL_123;
  }

LABEL_124:
  v136 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v136)
  {
    v137 = v136;
    v138 = CFNumberCreate(0, kCFNumberLongLongType, (a3 + 1512));
    CFDictionarySetValue(v137, *MEMORY[0x277CF6578], v138);
    CFRelease(v138);
    v139 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1520));
    CFDictionarySetValue(v137, *MEMORY[0x277CF65C0], v139);
    CFRelease(v139);
    v140 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1524));
    CFDictionarySetValue(v137, *MEMORY[0x277CF65F8], v140);
    CFRelease(v140);
    v141 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1528));
    CFDictionarySetValue(v137, *MEMORY[0x277CF65A8], v141);
    CFRelease(v141);
    v142 = CGRectCreateDictionaryRepresentation(*(a3 + 1536));
    CFDictionarySetValue(v137, *MEMORY[0x277CF6580], v142);
    CFRelease(v142);
    v143 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1568));
    CFDictionarySetValue(v137, *v14, v143);
    CFRelease(v143);
    v144 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1572));
    CFDictionarySetValue(v137, *MEMORY[0x277CF6548], v144);
    CFRelease(v144);
    v145 = *MEMORY[0x277CBED28];
    v146 = *MEMORY[0x277CBED10];
    if (*(a3 + 1576))
    {
      v147 = *MEMORY[0x277CBED28];
    }

    else
    {
      v147 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v137, *MEMORY[0x277CF6540], v147);
    if (*(a3 + 1624))
    {
      v148 = v145;
    }

    else
    {
      v148 = v146;
    }

    CFDictionarySetValue(v137, *MEMORY[0x277CF6238], v148);
    v149 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1628));
    CFDictionarySetValue(v137, *MEMORY[0x277CF6230], v149);
    CFRelease(v149);
    v150 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1632));
    CFDictionarySetValue(v137, *MEMORY[0x277CF6218], v150);
    CFRelease(v150);
    LODWORD(valuePtr) = *(a3 + 4464);
    v151 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (v151)
    {
      v152 = v151;
      CFDictionarySetValue(v137, *MEMORY[0x277CF6278], v151);
      CFRelease(v152);
    }

    if (*(a3 + 1588))
    {
      v153 = v145;
    }

    else
    {
      v153 = v146;
    }

    CFDictionarySetValue(v137, *MEMORY[0x277CF6248], v153);
    v154 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1592));
    CFDictionarySetValue(v137, *MEMORY[0x277CF6250], v154);
    CFRelease(v154);
    *v319 = *(a3 + 1596) == 1;
    v155 = CFNumberCreate(0, kCFNumberSInt32Type, v319);
    CFDictionarySetValue(v137, *MEMORY[0x277CF6240], v155);
    CFRelease(v155);
    if (*(a3 + 1600))
    {
      v156 = v145;
    }

    else
    {
      v156 = v146;
    }

    CFDictionarySetValue(v137, *MEMORY[0x277CF6210], v156);
    v157 = *(a3 + 1648);
    if (v157)
    {
      CFDictionarySetValue(v137, *MEMORY[0x277CF6550], v157);
    }

    __dst = 64;
    v158 = CFNumberCreate(0, kCFNumberSInt32Type, &__dst);
    CFDictionarySetValue(v137, *MEMORY[0x277CF6558], v158);
    CFRelease(v158);
    __dst = 128;
    v159 = CFNumberCreate(0, kCFNumberSInt32Type, &__dst);
    CFDictionarySetValue(v137, *MEMORY[0x277CF6568], v159);
    CFRelease(v159);
    __dst = 0;
    v160 = CFNumberCreate(0, kCFNumberSInt32Type, &__dst);
    CFDictionarySetValue(v137, *MEMORY[0x277CF6560], v160);
    CFRelease(v160);
    v14 = MEMORY[0x277CF65C8];
    if (*(v12 + 3676))
    {
      v161 = MEMORY[0x277CC4D18];
    }

    else
    {
      v162 = *(a3 + 176);
      if (v162 > 2)
      {
LABEL_146:
        CFDictionarySetValue(Mutable, *MEMORY[0x277CF6668], v137);
        CFRelease(v137);
        goto LABEL_147;
      }

      v161 = qword_278531368[v162];
    }

    CFDictionarySetValue(v137, *MEMORY[0x277CF6260], *v161);
    goto LABEL_146;
  }

LABEL_147:
  if (ConfigSupportsContextSwitchCaptures(a3, a5, 0, 0))
  {
    v163 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v163)
    {
      v164 = v163;
      v165 = CFNumberCreate(0, kCFNumberLongLongType, (a3 + 1712));
      CFDictionarySetValue(v164, *MEMORY[0x277CF6578], v165);
      CFRelease(v165);
      v166 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1720));
      CFDictionarySetValue(v164, *MEMORY[0x277CF65C0], v166);
      CFRelease(v166);
      v167 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1724));
      CFDictionarySetValue(v164, *MEMORY[0x277CF65F8], v167);
      CFRelease(v167);
      v168 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1728));
      CFDictionarySetValue(v164, *MEMORY[0x277CF65A8], v168);
      CFRelease(v168);
      v169 = CGRectCreateDictionaryRepresentation(*(a3 + 1736));
      CFDictionarySetValue(v164, *MEMORY[0x277CF6580], v169);
      CFRelease(v169);
      v170 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1768));
      CFDictionarySetValue(v164, *v14, v170);
      CFRelease(v170);
      v171 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1772));
      CFDictionarySetValue(v164, *MEMORY[0x277CF6548], v171);
      CFRelease(v171);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF6670], v164);
      CFRelease(v164);
    }
  }

  v172 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v172)
  {
    v173 = v172;
    v174 = CFNumberCreate(0, kCFNumberLongLongType, (a3 + 2512));
    CFDictionarySetValue(v173, *MEMORY[0x277CF6578], v174);
    CFRelease(v174);
    v175 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2520));
    CFDictionarySetValue(v173, *MEMORY[0x277CF65C0], v175);
    CFRelease(v175);
    v176 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2524));
    CFDictionarySetValue(v173, *MEMORY[0x277CF65F8], v176);
    CFRelease(v176);
    v177 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2528));
    CFDictionarySetValue(v173, *MEMORY[0x277CF65A8], v177);
    CFRelease(v177);
    v178 = CGRectCreateDictionaryRepresentation(*(a3 + 2536));
    CFDictionarySetValue(v173, *MEMORY[0x277CF6580], v178);
    CFRelease(v178);
    v179 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2568));
    CFDictionarySetValue(v173, *v14, v179);
    CFRelease(v179);
    v180 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2572));
    CFDictionarySetValue(v173, *MEMORY[0x277CF6548], v180);
    CFRelease(v180);
    v181 = *MEMORY[0x277CBED28];
    v182 = *MEMORY[0x277CBED10];
    if (*(a3 + 2576))
    {
      v183 = *MEMORY[0x277CBED28];
    }

    else
    {
      v183 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v173, *MEMORY[0x277CF6540], v183);
    if (*(a3 + 2588))
    {
      v184 = v181;
    }

    else
    {
      v184 = v182;
    }

    CFDictionarySetValue(v173, *MEMORY[0x277CF6248], v184);
    v185 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2592));
    CFDictionarySetValue(v173, *MEMORY[0x277CF6250], v185);
    CFRelease(v185);
    LODWORD(valuePtr) = *(a3 + 2596) == 1;
    v186 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v173, *MEMORY[0x277CF6240], v186);
    CFRelease(v186);
    if (*(a3 + 2600))
    {
      v187 = v181;
    }

    else
    {
      v187 = v182;
    }

    v14 = MEMORY[0x277CF65C8];
    CFDictionarySetValue(v173, *MEMORY[0x277CF6210], v187);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CF6678], v173);
    CFRelease(v173);
  }

  if (*(v12 + 3532) == 1)
  {
    v188 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v188)
    {
      v189 = v188;
      v190 = CFNumberCreate(0, kCFNumberLongLongType, (a3 + 1912));
      CFDictionarySetValue(v189, *MEMORY[0x277CF6578], v190);
      CFRelease(v190);
      v191 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 1968));
      CFDictionarySetValue(v189, *v14, v191);
      CFRelease(v191);
      v192 = MEMORY[0x277CBED28];
      if (!*(a3 + 1976))
      {
        v192 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v189, *MEMORY[0x277CF6540], *v192);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF6620], v189);
      CFRelease(v189);
    }
  }

  if ((*(v12 + 3532) | isSensorType))
  {
    v193 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v193)
    {
      v194 = v193;
      v195 = CFNumberCreate(0, kCFNumberLongLongType, (a3 + 2112));
      CFDictionarySetValue(v194, *MEMORY[0x277CF6578], v195);
      CFRelease(v195);
      v196 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2120));
      CFDictionarySetValue(v194, *MEMORY[0x277CF65C0], v196);
      CFRelease(v196);
      v197 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2124));
      CFDictionarySetValue(v194, *MEMORY[0x277CF65F8], v197);
      CFRelease(v197);
      v198 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2128));
      CFDictionarySetValue(v194, *MEMORY[0x277CF65A8], v198);
      CFRelease(v198);
      v199 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2168));
      CFDictionarySetValue(v194, *v14, v199);
      CFRelease(v199);
      CFDictionarySetValue(v194, *MEMORY[0x277CF6540], *MEMORY[0x277CBED28]);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF6650], v194);
      CFRelease(v194);
    }
  }

  v200 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v200)
  {
    v201 = v200;
    v202 = CFNumberCreate(0, kCFNumberLongLongType, (a3 + 2312));
    CFDictionarySetValue(v201, *MEMORY[0x277CF6578], v202);
    CFRelease(v202);
    v203 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2320));
    v204 = *MEMORY[0x277CF65C0];
    CFDictionarySetValue(v201, *MEMORY[0x277CF65C0], v203);
    CFRelease(v203);
    v205 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2324));
    CFDictionarySetValue(v201, *MEMORY[0x277CF65F8], v205);
    CFRelease(v205);
    v206 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2328));
    CFDictionarySetValue(v201, *MEMORY[0x277CF65A8], v206);
    CFRelease(v206);
    v207 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2368));
    CFDictionarySetValue(v201, *v14, v207);
    CFRelease(v207);
    v208 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2320));
    CFDictionarySetValue(v201, v204, v208);
    CFRelease(v208);
    v209 = *(a3 + 2448);
    if (v209)
    {
      CFDictionarySetValue(v201, *MEMORY[0x277CF6550], v209);
    }

    LODWORD(valuePtr) = 0;
    v210 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v201, *MEMORY[0x277CF6560], v210);
    CFRelease(v210);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CF6648], v201);
    CFRelease(v201);
    v8 = v310;
  }

  v211 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v212 = v211;
  if (isSensorType)
  {
    if (v211)
    {
      v213 = CFNumberCreate(0, kCFNumberLongLongType, (a3 + 4088));
      CFDictionarySetValue(v212, *MEMORY[0x277CF6578], v213);
      CFRelease(v213);
      v214 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 4100));
      CFDictionarySetValue(v212, *MEMORY[0x277CF6590], v214);
      CFRelease(v214);
      v215 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 4096));
      CFDictionarySetValue(v212, *MEMORY[0x277CF65C0], v215);
      CFRelease(v215);
      v216 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 4104));
      CFDictionarySetValue(v212, *MEMORY[0x277CF65B8], v216);
      CFRelease(v216);
      v217 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 4108));
      CFDictionarySetValue(v212, *v14, v217);
      CFRelease(v217);
      v218 = MEMORY[0x277CBED28];
      if (!*(v12 + 3388))
      {
        v218 = MEMORY[0x277CBED10];
      }

      CFDictionarySetValue(v212, *MEMORY[0x277CF6540], *v218);
      v219 = *(a3 + 4136);
      if (v219)
      {
        CFDictionarySetValue(v212, *MEMORY[0x277CF6550], v219);
      }

      v220 = *MEMORY[0x277CF6638];
LABEL_190:
      CFDictionarySetValue(Mutable, v220, v212);
      CFRelease(v212);
    }
  }

  else if (v211)
  {
    v221 = CFNumberCreate(0, kCFNumberLongLongType, (a3 + 2712));
    CFDictionarySetValue(v212, *MEMORY[0x277CF6578], v221);
    CFRelease(v221);
    v222 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2720));
    CFDictionarySetValue(v212, *MEMORY[0x277CF65C0], v222);
    CFRelease(v222);
    v223 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2844));
    CFDictionarySetValue(v212, @"VisPipeRawBitDepth", v223);
    CFRelease(v223);
    v224 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2724));
    CFDictionarySetValue(v212, *MEMORY[0x277CF65F8], v224);
    CFRelease(v224);
    v225 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2728));
    CFDictionarySetValue(v212, *MEMORY[0x277CF65A8], v225);
    CFRelease(v225);
    v226 = CGRectCreateDictionaryRepresentation(*(a3 + 2736));
    CFDictionarySetValue(v212, *MEMORY[0x277CF6580], v226);
    CFRelease(v226);
    v227 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 2768));
    CFDictionarySetValue(v212, *v14, v227);
    CFRelease(v227);
    v228 = MEMORY[0x277CBED28];
    if (!*(a3 + 2776))
    {
      v228 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v212, *MEMORY[0x277CF6540], *v228);
    v229 = *(a3 + 2848);
    if (v229)
    {
      CFDictionarySetValue(v212, *MEMORY[0x277CF6550], v229);
    }

    LODWORD(valuePtr) = 64;
    v230 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v212, *MEMORY[0x277CF6558], v230);
    CFRelease(v230);
    LODWORD(valuePtr) = 128;
    v231 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v212, *MEMORY[0x277CF6568], v231);
    CFRelease(v231);
    v232 = dword_281003314;
    LODWORD(valuePtr) = dword_281003314;
    if (!dword_281003314)
    {
      v233 = *(a3 + 48);
      v234 = *(a3 + 192);
      if (v233 < v234)
      {
        v234 = 0;
      }

      v232 = *(*(a3 + 184) + 120 * (v233 - v234) + 116);
    }

    LODWORD(valuePtr) = v232 + 1;
    v235 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v212, *MEMORY[0x277CF6560], v235);
    CFRelease(v235);
    v220 = @"VisPipe";
    goto LABEL_190;
  }

  v236 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v236)
  {
    v237 = v236;
    if (*(a3 + 3032) != 1)
    {
      goto LABEL_243;
    }

    v238 = malloc_type_calloc(2uLL, 0x20uLL, 0x1000040E0EAB150uLL);
    v239 = v238;
    if (v238)
    {
      *v238 = 34;
      v238[16] = 39;
      if (H16ISP::H16ISPDevice::GetPoolInfoBatched(*(a5 + 24), *v8, v238, 2))
      {
        v240 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v240 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v240;
        }

        if (os_log_type_enabled(v240, OS_LOG_TYPE_ERROR))
        {
          CopyVideoOutputConfigurations();
        }
      }

      else
      {
        v243 = 1278226481;
        *(a3 + 3096) = *(v239 + 2);
        v244 = *(v239 + 4);
        *(a3 + 3104) = *(v239 + 5);
        *(a3 + 3108) = v239[3];
        *(a3 + 3112) = v239[2];
        *(a3 + 3120) = v239[7];
        *(a3 + 3116) = v239[6];
        *(a3 + 3136) = v239[1];
        *(a3 + 3132) = *(v239 + 6);
        *(a3 + 3128) = *v239;
        if (*(a3 + 3072) == 2 && !*(a3 + 3040))
        {
          if (*(a3 + 3044))
          {
            v243 = 1278226481;
          }

          else
          {
            v243 = 1651519537;
          }
        }

        *(a3 + 3100) = 8 * v244;
        *(a3 + 3140) = 0x2A00000020;
        *(a3 + 3148) = v243;
        v245 = *(v239 + 10);
        *(a3 + 3192) = v245;
        *(a3 + 3208) = v239[18];
        *(a3 + 3216) = v239[23];
        *(a3 + 3232) = v239[17];
        *(a3 + 3228) = *(v239 + 14);
        *(a3 + 3224) = v239[16];
        *(a3 + 3196) = v245;
        *(a3 + 3200) = 1;
        *(a3 + 3204) = v245;
        *(a3 + 3212) = 8;
        *(a3 + 3236) = 33;
        *(a3 + 3240) = 0x4C3030380000002BLL;
      }
    }

    else
    {
      v242 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v242 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v242;
      }

      if (os_log_type_enabled(v242, OS_LOG_TYPE_ERROR))
      {
        CopyVideoOutputConfigurations();
      }
    }

    free(v239);
    CopyMetadataOutputFeatureConfiguration(v237, (a3 + 3080));
    if (*(a3 + 3072) != 2)
    {
LABEL_237:
      CopyMetadataOutputFeatureConfiguration(v237, (a3 + 3176));
      *&valuePtr = 0;
      v263 = *MEMORY[0x277CF47A0];
      ValueIfPresent = CFDictionaryGetValueIfPresent(v237, *MEMORY[0x277CF47A0], &valuePtr);
      if (!ValueIfPresent)
      {
        *&valuePtr = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }

      v265 = CFNumberCreate(v10, kCFNumberSInt32Type, (a3 + 3192));
      v8 = v310;
      if (v265)
      {
        v266 = v265;
        CFDictionarySetValue(valuePtr, *MEMORY[0x277CF6590], v265);
        CFRelease(v266);
      }

      if (!ValueIfPresent)
      {
        CFDictionarySetValue(v237, v263, valuePtr);
        CFRelease(valuePtr);
      }

LABEL_243:
      a2 = v309;
      if (*(a3 + 3033) != 1)
      {
LABEL_265:
        if (*(a3 + 3034) == 1)
        {
          if (*(a3 + 3736) == 1)
          {
            v276 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v276 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v276;
            }

            if (os_log_type_enabled(v276, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(valuePtr) = 136315138;
              *(&valuePtr + 4) = "HITHFeatureGetPoolRequirements";
              _os_log_impl(&dword_2247DB000, v276, OS_LOG_TYPE_DEFAULT, "%s - using cached HITH pool info\n", &valuePtr, 0xCu);
            }
          }

          else
          {
            H16ISP::H16ISPDevice::GetPoolInfoExtended(*(a5 + 24), *v8, 42, &valuePtr);
            if (v277)
            {
              v278 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v278 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v278;
              }

              if (os_log_type_enabled(v278, OS_LOG_TYPE_ERROR))
              {
                CopyVideoOutputConfigurations();
              }
            }

            else
            {
              *(a3 + 3672) = DWORD2(valuePtr);
              *(a3 + 3676) = v321;
              *(a3 + 3684) = WORD3(valuePtr);
              *(a3 + 3688) = WORD2(valuePtr);
              v279 = HIWORD(valuePtr);
              *(a3 + 3696) = HIWORD(valuePtr);
              *(a3 + 3712) = WORD1(valuePtr);
              *(a3 + 3708) = v322;
              *(a3 + 3704) = valuePtr;
              *(a3 + 3716) = 40;
              *(a3 + 3720) = 0x354331360000002DLL;
              *(a3 + 3692) = v279;
              *(a3 + 3736) = 1;
            }
          }

          CopyMetadataOutputFeatureConfiguration(v237, (a3 + 3656));
        }

        if (*(a3 + 2925) == 1)
        {
          v280 = *MEMORY[0x277CBED28];
          v281 = *MEMORY[0x277CBED10];
          if (*(a3 + 2921))
          {
            v282 = *MEMORY[0x277CBED28];
          }

          else
          {
            v282 = *MEMORY[0x277CBED10];
          }

          CFDictionarySetValue(v237, *MEMORY[0x277CF5ED8], v282);
          if (*(a3 + 2923))
          {
            v283 = v280;
          }

          else
          {
            v283 = v281;
          }

          CFDictionarySetValue(v237, *MEMORY[0x277CF4818], v283);
          if (*(a3 + 2922))
          {
            v284 = v280;
          }

          else
          {
            v284 = v281;
          }

          CFDictionarySetValue(v237, *MEMORY[0x277CF47F8], v284);
          if (*(a3 + 2920))
          {
            v285 = v280;
          }

          else
          {
            v285 = v281;
          }

          CFDictionarySetValue(v237, *MEMORY[0x277CF4838], v285);
          if (*(a3 + 3020))
          {
            v286 = v280;
          }

          else
          {
            v286 = v281;
          }

          CFDictionarySetValue(v237, *MEMORY[0x277CF4808], v286);
          if (*(a3 + 2941))
          {
            v287 = v280;
          }

          else
          {
            v287 = v281;
          }

          CFDictionarySetValue(v237, *MEMORY[0x277CF4828], v287);
          if (*(a3 + 2943))
          {
            v288 = v280;
          }

          else
          {
            v288 = v281;
          }

          CFDictionarySetValue(v237, *MEMORY[0x277CF47F0], v288);
        }

        if (*(a3 + 3035) == 1)
        {
          if (*(a3 + 3832) == 1)
          {
            v289 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v289 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v289;
            }

            if (os_log_type_enabled(v289, OS_LOG_TYPE_INFO))
            {
              LODWORD(valuePtr) = 136315138;
              *(&valuePtr + 4) = "ANSTThumbnailFeatureGetPoolRequirements";
              _os_log_impl(&dword_2247DB000, v289, OS_LOG_TYPE_INFO, "%s - using cached ANST Thumbnail pool info\n", &valuePtr, 0xCu);
            }
          }

          else
          {
            H16ISP::H16ISPDevice::GetPoolInfoExtended(*(a5 + 24), *v8, 44, &valuePtr);
            if (v290)
            {
              v291 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v291 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v291;
              }

              if (os_log_type_enabled(v291, OS_LOG_TYPE_ERROR))
              {
                CopyVideoOutputConfigurations();
              }
            }

            else
            {
              *(a3 + 3768) = DWORD2(valuePtr);
              *(a3 + 3772) = v321;
              *(a3 + 3780) = WORD3(valuePtr);
              *(a3 + 3784) = WORD2(valuePtr);
              *(a3 + 3792) = HIWORD(valuePtr);
              *(a3 + 3788) = WORD6(valuePtr);
              *(a3 + 3808) = WORD1(valuePtr);
              *(a3 + 3804) = v322;
              *(a3 + 3800) = valuePtr;
              *(a3 + 3812) = 42;
              *(a3 + 3816) = H16ISP::getFrameFormat(0x42475241);
              *(a3 + 3820) = 1111970369;
              *(a3 + 3788) = *(a3 + 3792);
              *(a3 + 3832) = 1;
            }
          }

          CopyMetadataOutputFeatureConfiguration(v237, (a3 + 3752));
        }

        if (*(a3 + 3036) == 1)
        {
          H16ISP::H16ISPDevice::GetPoolInfoExtended(*(a5 + 24), *v8, 42, &valuePtr);
          if (v292)
          {
            v293 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v293 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v293;
            }

            if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
            {
              CopyVideoOutputConfigurations();
            }
          }

          else
          {
            *(a3 + 3880) = DWORD2(valuePtr);
            *(a3 + 3884) = v321;
            *(a3 + 3892) = WORD3(valuePtr);
            *(a3 + 3896) = WORD2(valuePtr);
            v294 = HIWORD(valuePtr);
            *(a3 + 3904) = HIWORD(valuePtr);
            *(a3 + 3920) = WORD1(valuePtr);
            *(a3 + 3916) = v322;
            *(a3 + 3912) = valuePtr;
            *(a3 + 3924) = 40;
            if (*(a3 + 3848) == 1 && (*(a3 + 3849) & 1) != 0)
            {
              v295 = 0x3643313600000033;
            }

            else
            {
              v295 = 0x3343313600000031;
            }

            *(a3 + 3928) = v295;
            *(a3 + 3900) = v294;
          }

          CopyMetadataOutputFeatureConfiguration(v237, (a3 + 3864));
        }

        if (*(a3 + 3037) == 1)
        {
          H16ISP::H16ISPDevice::GetPoolInfoExtended(*(a5 + 24), *v8, 45, &valuePtr);
          if (v296)
          {
            v297 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v297 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v297;
            }

            if (os_log_type_enabled(v297, OS_LOG_TYPE_ERROR))
            {
              CopyVideoOutputConfigurations();
            }
          }

          else
          {
            *(a3 + 3992) = DWORD2(valuePtr);
            *(a3 + 3996) = v321;
            *(a3 + 4004) = WORD3(valuePtr);
            *(a3 + 4008) = WORD2(valuePtr);
            v298 = HIWORD(valuePtr);
            *(a3 + 4032) = WORD1(valuePtr);
            *(a3 + 4028) = v322;
            *(a3 + 4024) = valuePtr;
            *(a3 + 4036) = 44;
            v299 = *(a3 + 3960) - 1;
            *(a3 + 4016) = v298;
            if (v299 > 6)
            {
              v302 = 943927606;
              v301 = 53;
            }

            else
            {
              v300 = v299;
              v301 = dword_2249BBF10[v299];
              v302 = dword_2249BBF2C[v300];
            }

            *(a3 + 4040) = v301;
            *(a3 + 4044) = v302;
            *(a3 + 4012) = v298;
          }

          CopyMetadataOutputFeatureConfiguration(v237, (a3 + 3976));
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF6630], v237);
        CFRelease(v237);
        goto LABEL_338;
      }

      v267 = 0;
      v268 = (a3 + 3272);
      v269 = 1;
      do
      {
        v269 &= *(a3 + 3352 + v267);
        v267 += 96;
      }

      while (v267 != 384);
      if (v269)
      {
        v270 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v270 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v270;
        }

        if (os_log_type_enabled(v270, OS_LOG_TYPE_INFO))
        {
          LODWORD(valuePtr) = 136315138;
          *(&valuePtr + 4) = "ANSTFeatureGetPoolRequirements";
          _os_log_impl(&dword_2247DB000, v270, OS_LOG_TYPE_INFO, "%s - using cached semantic masks pool info\n", &valuePtr, 0xCu);
        }
      }

      else
      {
        v271 = malloc_type_calloc(4uLL, 0x20uLL, 0x1000040E0EAB150uLL);
        if (v271)
        {
          v272 = v271;
          *v271 = 35;
          v271[16] = 36;
          v271[32] = 37;
          v271[48] = 38;
          if (H16ISP::H16ISPDevice::GetPoolInfoBatched(*(a5 + 24), *v8, v271, 4))
          {
            v273 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v273 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v273;
            }

            if (os_log_type_enabled(v273, OS_LOG_TYPE_ERROR))
            {
              CopyVideoOutputConfigurations();
            }

            v8 = v310;
          }

          else
          {
            v303 = 0;
            v304 = v272 + 7;
            v305 = &dword_2249BBDB0;
            do
            {
              v306 = a3 + v303;
              *(v306 + 3288) = *(v304 - 3);
              *(a3 + v303 + 3292) = *(v304 + 1);
              *(v306 + 3300) = *(v304 - 4);
              *(v306 + 3304) = *(v304 - 5);
              v307 = *v304;
              *(v306 + 3312) = v307;
              *(v306 + 3328) = *(v304 - 6);
              *(v306 + 3324) = *(v304 + 5);
              *(v306 + 3320) = *(v304 - 7);
              *(v306 + 3308) = v307;
              v308 = *v305++;
              *(v306 + 3332) = v308;
              *(v306 + 3336) = 0x4C30303800000007;
              *(v306 + 3352) = 1;
              v303 += 96;
              v304 += 16;
            }

            while (v303 != 384);
          }

          goto LABEL_263;
        }

        v274 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v274 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v274;
        }

        if (os_log_type_enabled(v274, OS_LOG_TYPE_ERROR))
        {
          CopyVideoOutputConfigurations();
        }
      }

      v272 = 0;
LABEL_263:
      free(v272);
      v275 = 4;
      a2 = v309;
      do
      {
        CopyMetadataOutputFeatureConfiguration(v237, v268);
        v268 += 12;
        --v275;
      }

      while (v275);
      goto LABEL_265;
    }

    *&valuePtr = 0;
    v246 = *MEMORY[0x277CF47C0];
    v247 = CFDictionaryGetValueIfPresent(v237, *MEMORY[0x277CF47C0], &valuePtr);
    if (v247)
    {
      if (valuePtr)
      {
LABEL_216:
        v248 = CFNumberCreate(v10, kCFNumberSInt32Type, (a3 + 3040));
        if (v248)
        {
          v249 = v248;
          CFDictionarySetValue(valuePtr, *MEMORY[0x277CF46D8], v248);
          CFRelease(v249);
        }

        v250 = CFNumberCreate(v10, kCFNumberSInt32Type, (a3 + 3044));
        if (v250)
        {
          v251 = v250;
          CFDictionarySetValue(valuePtr, *MEMORY[0x277CF46E0], v250);
          CFRelease(v251);
        }

        v252 = CFNumberCreate(v10, kCFNumberSInt32Type, (a3 + 3048));
        if (v252)
        {
          v253 = v252;
          CFDictionarySetValue(valuePtr, *MEMORY[0x277CF46E8], v252);
          CFRelease(v253);
        }

        v254 = CFNumberCreate(v10, kCFNumberSInt32Type, (a3 + 3052));
        if (v254)
        {
          v255 = v254;
          CFDictionarySetValue(valuePtr, *MEMORY[0x277CF46D0], v254);
          CFRelease(v255);
        }

        v256 = CFArrayCreateMutable(v10, 4, MEMORY[0x277CBF128]);
        if (v256)
        {
          v257 = v256;
          v312 = v246;
          v258 = (a3 + 3056);
          v259 = 4;
          do
          {
            v260 = CFNumberCreate(v10, kCFNumberSInt32Type, v258);
            if (v260)
            {
              v261 = v260;
              CFArrayAppendValue(v257, v260);
              CFRelease(v261);
            }

            v258 += 4;
            --v259;
          }

          while (v259);
          CFRelease(v257);
          v246 = v312;
        }

        if (!v247)
        {
          CFDictionarySetValue(v237, v246, valuePtr);
          CFRelease(valuePtr);
        }

        goto LABEL_237;
      }
    }

    else
    {
      *&valuePtr = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (valuePtr)
      {
        goto LABEL_216;
      }
    }

    v262 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v262 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v262;
    }

    if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
    {
      CopyVideoOutputConfigurations();
    }

    goto LABEL_237;
  }

  v241 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  a2 = v309;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v241 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v241;
  }

  result = os_log_type_enabled(v241, OS_LOG_TYPE_ERROR);
  if (result)
  {
    CopyVideoOutputConfigurations();
LABEL_338:
    result = 0;
  }

LABEL_339:
  *a2 = Mutable;
  return result;
}

uint64_t H16ISP::H16ISPDevice::GetPoolInfoBatched(H16ISP::H16ISPDevice *a1, int a2, _OWORD *a3, uint64_t a4)
{
  bzero(v17, 0x650uLL);
  v18 = 278;
  v19 = a2;
  v20 = 50;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v17, 0x650u, 0, 0xFFFFFFFF);
  if (!result)
  {
    v9 = v20;
    if (v20)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        if (a4)
        {
          v12 = &v21[2 * v10];
          v13 = *v12;
          v14 = a3;
          v15 = a4;
          do
          {
            if (*v14 == v13)
            {
              v16 = v12[1];
              *v14 = *v12;
              v14[1] = v16;
              ++v11;
            }

            v14 += 2;
            --v15;
          }

          while (v15);
        }

        ++v10;
      }

      while (v10 != v9);
    }

    else
    {
      v11 = 0;
    }

    if (v11 == a4)
    {
      return 0;
    }

    else
    {
      return 3758097136;
    }
  }

  return result;
}

uint64_t H16ISP::DepthRearConfigurations::getHeightOfPreset(H16ISP::DepthRearConfigurations *this)
{
  if (this <= 4)
  {
    return *(&H16ISP::PCERearPresets + 3 * this + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::DepthRearConfigurations::getPreset(H16ISP::DepthRearConfigurations *this, int a2, int a3)
{
  v3 = this;
  result = 0;
  v5 = &word_2810039D0;
  do
  {
    if (*(v5 - 2) == v3 && *(v5 - 1) == a2 && *v5 == a3)
    {
      break;
    }

    ++result;
    v5 += 6;
  }

  while (result != 8);
  return result;
}

float H16ISP::H16ISPDevice::GetGDCMaxStrength(H16ISP::H16ISPDevice *a1, int a2, uint64_t a3, unsigned __int16 *a4, float *a5, float result)
{
  if (a3 && a4 && a5)
  {
    bzero(v14, 0x54uLL);
    v15 = 2630;
    v11 = *a4;
    v12 = a4[1] >> (a4[72] == 1);
    v16 = v11;
    v17 = v12;
    v18 = *(a4 + 2);
    if (*(a3 + 36) == 1)
    {
      v13 = *(a3 + 48);
      v12 = *(a3 + 60);
      v11 = *(a3 + 56) << (*(a4 + 124) != 0);
    }

    else
    {
      v13 = 0;
    }

    v19 = v13;
    v20 = v11;
    v21 = v12;
    v22 = *(a3 + 20);
    v23 = *(a3 + 4);
    if (!H16ISP::H16ISPDevice::ISP_GetGDCBesOutputValidRect(a1, a2, a3, a4, &v24, 1.0) && !H16ISP::H16ISPDevice::ISP_SendCommand(a1, v14, 0x54u, 0, 0xFFFFFFFF))
    {
      result = v25;
      *a5 = v25;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetGDCBesOutputValidRect(H16ISP::H16ISPDevice *a1, int a2, uint64_t a3, unsigned __int16 *a4, _OWORD *a5, float a6)
{
  v6 = 3758097090;
  if (a3 && a4 && a5)
  {
    v13 = H16ISP::H16ISPDevice::EnableFESAutoAdjust(a1, a2, 1);
    if (v13)
    {
      v6 = v13;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::ISP_GetGDCBesOutputValidRect();
      }
    }

    else
    {
      bzero(v20, 0x54uLL);
      v21 = 2837;
      v14 = *a4;
      v22 = a2;
      v23 = v14;
      v15 = a4[1] >> (a4[72] == 1);
      v16 = *(a4 + 2);
      v24 = v15;
      v25 = v16;
      v17 = 0uLL;
      if (*(a3 + 36) == 1)
      {
        v18 = *(a3 + 48);
        v15 = *(a3 + 60);
        v14 = *(a3 + 56) << (*(a4 + 124) != 0);
      }

      else
      {
        v18 = 0;
      }

      v26 = v18;
      v27 = v14;
      v28 = v15;
      if ((*(a3 + 92) & 1) == 0)
      {
        v17 = *(a3 + 20);
      }

      v29 = v17;
      v30 = *(a3 + 4);
      v31 = a6;
      v6 = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v20, 0x54u, 0, 0xFFFFFFFF);
      if (!v6)
      {
        *a5 = v32;
      }
    }
  }

  return v6;
}

uint64_t SetVideoOutputConfigurations(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v963 = *MEMORY[0x277D85DE8];
  if (*(a2 + 698) != 1)
  {
    return 4294954509;
  }

  v6 = *(a2 + 48);
  if (v6 >= *(a2 + 192))
  {
    v7 = *(a2 + 192);
  }

  else
  {
    v7 = 0;
  }

  if (!cf || (v9 = CFGetTypeID(cf), v9 != CFDictionaryGetTypeID()))
  {
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return 4294954516;
    }

    *buf = 136315138;
    v921 = "SetVideoOutputConfigurations";
    v14 = "%s - Input property is invalid\n";
    v15 = buf;
    goto LABEL_18;
  }

  v10 = v6 - v7;
  CameraConfig = H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), *(*(a2 + 184) + 120 * v10 + 16), &v807, buf);
  if (CameraConfig)
  {
    v12 = CameraConfig;
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return 4294954516;
    }

    *v952 = 136315394;
    *&v952[4] = "SetVideoOutputConfigurations";
    *&v952[12] = 1024;
    *&v952[14] = v12;
    v14 = "%s - Failed to get camera config, res=0x%08X\n";
    v15 = v952;
    v16 = v13;
    goto LABEL_12;
  }

  v764 = v10;
  v21 = *(a2 + 880);
  v803 = (a2 + 704);
  v960 = *(a2 + 864);
  v961 = v21;
  v962 = *(a2 + 896);
  v22 = *(a2 + 816);
  v956 = *(a2 + 800);
  v957 = v22;
  v23 = *(a2 + 848);
  v958 = *(a2 + 832);
  *v959 = v23;
  v24 = *(a2 + 752);
  rect2.origin = *(a2 + 736);
  rect2.size = v24;
  v25 = *(a2 + 784);
  v954 = *(a2 + 768);
  v955 = v25;
  v26 = *(a2 + 720);
  *v952 = *(a2 + 704);
  *&v952[16] = v26;
  v27 = *(a2 + 1032);
  *v892 = *(a2 + 1048);
  v28 = *(a2 + 1080);
  v893 = *(a2 + 1064);
  v894 = v28;
  v895 = *(a2 + 1096);
  v29 = *(a2 + 968);
  v888 = *(a2 + 984);
  v30 = *(a2 + 1016);
  v889 = *(a2 + 1000);
  v890 = v30;
  v891 = v27;
  v31 = *(a2 + 904);
  v884 = *(a2 + 920);
  v32 = *(a2 + 952);
  v804 = (a2 + 904);
  v885 = *(a2 + 936);
  v886 = v32;
  v887 = v29;
  v883 = v31;
  *v879 = *(a2 + 1248);
  v880 = *(a2 + 1264);
  v881 = *(a2 + 1280);
  v882 = *(a2 + 1296);
  v33 = *(a2 + 1184);
  v34 = *(a2 + 1216);
  v876 = *(a2 + 1200);
  v877 = v34;
  v878 = *(a2 + 1232);
  v35 = *(a2 + 1120);
  v36 = *(a2 + 1152);
  v872 = *(a2 + 1136);
  v873 = v36;
  v874 = *(a2 + 1168);
  v875 = v33;
  v870 = *(a2 + 1104);
  v871 = v35;
  v37 = (a2 + 1304);
  v38 = *(a2 + 1480);
  v867 = *(a2 + 1464);
  v868 = v38;
  v869 = *(a2 + 1496);
  v39 = *(a2 + 1416);
  v863 = *(a2 + 1400);
  v864 = v39;
  v40 = *(a2 + 1448);
  v865 = *(a2 + 1432);
  pixelBufferPool = v40;
  v41 = *(a2 + 1352);
  v859 = *(a2 + 1336);
  v860 = v41;
  v42 = *(a2 + 1384);
  v861 = *(a2 + 1368);
  v862 = v42;
  v43 = *(a2 + 1320);
  v857 = *(a2 + 1304);
  v858 = v43;
  v44 = *(a2 + 1664);
  v853 = *(a2 + 1648);
  v854 = v44;
  v855 = *(a2 + 1680);
  v856 = *(a2 + 1696);
  v45 = *(a2 + 1600);
  v849 = *(a2 + 1584);
  v850 = v45;
  v46 = *(a2 + 1632);
  v851 = *(a2 + 1616);
  v852 = v46;
  v47 = *(a2 + 1536);
  v845 = *(a2 + 1520);
  v846 = v47;
  v48 = *(a2 + 1568);
  v847 = *(a2 + 1552);
  v848 = v48;
  v49 = *(a2 + 1504);
  v792 = *(a2 + 1704);
  v790 = *(a2 + 1712);
  v50 = *(a2 + 1736);
  v841 = *(a2 + 1720);
  v842 = v50;
  v843 = *(a2 + 1752);
  v844 = v49;
  v789 = *(a2 + 1768);
  v791 = *(a2 + 1772);
  v51 = *(a2 + 1856);
  v837 = *(a2 + 1840);
  v838 = v51;
  v52 = *(a2 + 1888);
  v839 = *(a2 + 1872);
  v840 = v52;
  v53 = *(a2 + 1792);
  v833 = *(a2 + 1776);
  v834 = v53;
  v54 = *(a2 + 1824);
  v835 = *(a2 + 1808);
  v836 = v54;
  v788 = *(a2 + 1904);
  v784 = *(a2 + 1912);
  v55 = *(a2 + 1952);
  v831 = *(a2 + 1936);
  v832 = v55;
  v56 = *(a2 + 1920);
  v786 = *(a2 + 1968);
  v787 = *(a2 + 1972);
  v785 = *(a2 + 1976);
  v57 = *(a2 + 1977);
  v58 = *(a2 + 1993);
  v59 = *(a2 + 2025);
  v947 = *(a2 + 2009);
  v948 = v59;
  v945 = v57;
  v946 = v58;
  v60 = *(a2 + 2041);
  v61 = *(a2 + 2057);
  v62 = *(a2 + 2073);
  *(v951 + 15) = *(a2 + 2088);
  v950 = v61;
  v951[0] = v62;
  v949 = v60;
  v783 = *(a2 + 2104);
  v782 = *(a2 + 2112);
  v63 = *(a2 + 2124);
  v64 = *(a2 + 2140);
  *(v944 + 12) = *(a2 + 2152);
  v943 = v63;
  v944[0] = v64;
  v65 = *(a2 + 2177);
  v66 = *(a2 + 2193);
  v67 = *(a2 + 2225);
  v938 = *(a2 + 2209);
  v939 = v67;
  v936 = v65;
  v937 = v66;
  v68 = *(a2 + 2241);
  v69 = *(a2 + 2257);
  v70 = *(a2 + 2273);
  *(v942 + 15) = *(a2 + 2288);
  v941 = v69;
  v942[0] = v70;
  v940 = v68;
  v71 = *(a2 + 2504);
  v72 = *(a2 + 2520);
  v73 = *(a2 + 2552);
  v816 = *(a2 + 2536);
  v817 = v73;
  v814 = v71;
  v815 = v72;
  v74 = *(a2 + 2568);
  v75 = *(a2 + 2584);
  v76 = *(a2 + 2616);
  v820 = *(a2 + 2600);
  v821 = v76;
  v818 = v74;
  v819 = v75;
  v77 = *(a2 + 2632);
  v78 = *(a2 + 2648);
  v79 = *(a2 + 2664);
  v80 = *(a2 + 2680);
  v826 = *(a2 + 2696);
  v824 = v79;
  v825 = v80;
  v822 = v77;
  v823 = v78;
  v81 = *(a2 + 2736);
  v82 = *(a2 + 2744);
  v83 = *(a2 + 2752);
  v84 = *(a2 + 2760);
  v85 = *(a2 + 2825);
  v928 = *(a2 + 2809);
  v929[0] = v85;
  *(v929 + 15) = *(a2 + 2840);
  v86 = *(a2 + 2793);
  v926 = *(a2 + 2777);
  v927 = v86;
  v87 = *(a2 + 2872);
  v813 = *(a2 + 2888);
  v88 = *(a2 + 2856);
  v812 = v87;
  v811 = v88;
  *(v935 + 12) = *(a2 + 2352);
  v89 = *(a2 + 2340);
  v934 = *(a2 + 2324);
  v935[0] = v89;
  v90 = *(a2 + 2372);
  v91 = *(a2 + 2388);
  *(v933 + 12) = *(a2 + 2432);
  v92 = *(a2 + 2420);
  v932 = *(a2 + 2404);
  v933[0] = v92;
  v930 = v90;
  v931 = v91;
  v93 = *(a2 + 2456);
  v94 = *(a2 + 2472);
  v829 = *(a2 + 2488);
  v830 = v56;
  v827 = v93;
  v828 = v94;
  v95 = *(a2 + 4113);
  *(v925 + 15) = *(a2 + 4128);
  v925[0] = v95;
  v771 = *(a2 + 2120);
  v775 = *(a2 + 2168);
  v781 = *(a2 + 2172);
  v774 = *(a2 + 2176);
  v780 = *(a2 + 2704);
  v768 = *(a2 + 2712);
  v779 = *(a2 + 2720);
  v773 = *(a2 + 2724);
  v772 = *(a2 + 2728);
  v778 = *(a2 + 2732);
  v805 = *(a2 + 2768);
  v777 = *(a2 + 2772);
  v770 = *(a2 + 2776);
  v769 = *(a2 + 2844);
  v776 = *(a2 + 2304);
  v766 = *(a2 + 2848);
  v767 = *(a2 + 2312);
  v765 = *(a2 + 2320);
  v793 = *(a2 + 2368);
  v794 = *(a2 + 2448);
  v796 = *(a2 + 4080);
  v802 = *(a2 + 4088);
  v798 = *(a2 + 4096);
  v800 = *(a2 + 4100);
  v795 = *(a2 + 4104);
  v799 = *(a2 + 4108);
  v797 = *(a2 + 4112);
  cfa = *(a2 + 4136);
  Value = CFDictionaryGetValue(cf, *MEMORY[0x277CF6640]);
  if (!Value || (v97 = Value, v98 = CFGetTypeID(Value), v98 != CFDictionaryGetTypeID()))
  {
    v759 = (a2 + 1977);
    v760 = a2 + 2504;
    v99 = 0;
    v100 = 0;
    v758 = 0;
    goto LABEL_37;
  }

  if ((v924 & 1) == 0)
  {
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return 4294954516;
    }

    *valuePtr = 136315138;
    *&valuePtr[4] = "SetVideoOutputConfigurations";
    v14 = "%s - Primary scaler not reported on this platform\n";
    goto LABEL_105;
  }

  if (CFDictionaryGetValue(v97, *MEMORY[0x277CF6248]) || CFDictionaryGetValue(v97, *MEMORY[0x277CF6250]) || CFDictionaryGetValue(v97, *MEMORY[0x277CF6240]) || CFDictionaryGetValue(v97, *MEMORY[0x277CF6260]) || CFDictionaryGetValue(v97, *MEMORY[0x277CF65B0]) || CFDictionaryGetValue(v97, *MEMORY[0x277CF65D0]) || CFDictionaryGetValue(v97, *MEMORY[0x277CF6228]))
  {
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return 4294954516;
    }

    *valuePtr = 136315138;
    *&valuePtr[4] = "SetVideoOutputConfigurations";
    v14 = "%s - Invalid property for primary scaler\n";
    goto LABEL_105;
  }

  v759 = (a2 + 1977);
  v760 = a2 + 2504;
  v145 = CFDictionaryGetValue(v97, *MEMORY[0x277CF6578]);
  v146 = CFDictionaryGetValue(v97, *MEMORY[0x277CF65C0]);
  *(&v753 + 1) = CFDictionaryGetValue(v97, *MEMORY[0x277CF65F8]);
  *&v753 = CFDictionaryGetValue(v97, *MEMORY[0x277CF65A8]);
  v147 = CFDictionaryGetValue(v97, *MEMORY[0x277CF6580]);
  allocatora = CFDictionaryGetValue(v97, *MEMORY[0x277CF65C8]);
  v746 = CFDictionaryGetValue(v97, *MEMORY[0x277CF6548]);
  dictb = CFDictionaryGetValue(v97, *MEMORY[0x277CF6540]);
  v733 = CFDictionaryGetValue(v97, *MEMORY[0x277CF66F0]);
  cf1a = CFDictionaryGetValue(v97, *MEMORY[0x277CF66E8]);
  v730 = CFDictionaryGetValue(v97, *MEMORY[0x277CF65A0]);
  numberb = CFDictionaryGetValue(v97, *MEMORY[0x277CF6550]);
  theDicta = CFDictionaryGetValue(v97, *MEMORY[0x277CF65E8]);
  poola = CFDictionaryGetValue(v97, *MEMORY[0x277CF6598]);
  v705 = CFDictionaryGetValue(v97, *MEMORY[0x277CF65E0]);
  if (v145)
  {
    *valuePtr = 0;
    CFNumberGetValue(v145, kCFNumberLongLongType, valuePtr);
    *&v952[8] = *valuePtr;
  }

  if (v146)
  {
    LODWORD(v917.value) = 0;
    CFNumberGetValue(v146, kCFNumberSInt32Type, &v917);
    if (*v803 == 1)
    {
      v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v19 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        return 4294954516;
      }

      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v14 = "%s - Cannot change pixel format while streaming\n";
      goto LABEL_105;
    }

    v157 = v917.value;
    if (*(a2 + 4256))
    {
      if ((LODWORD(v917.value) - 1278226736) <= 6 && ((1 << (LOBYTE(v917.value) - 48)) & 0x45) != 0)
      {
        goto LABEL_241;
      }

      v158 = *SupportedOutputFormatsPrimaryScaler;
      if (*SupportedOutputFormatsPrimaryScaler)
      {
        v159 = 0;
        v160 = &SupportedOutputFormatsPrimaryScaler[4];
        do
        {
          v159 |= v158 == LODWORD(v917.value);
          v161 = *v160;
          v160 += 4;
          v158 = v161;
        }

        while (v161);
        if (v159)
        {
          v157 = 1278226742;
LABEL_241:
          *&v952[16] = v157;
          goto LABEL_242;
        }
      }

      v185 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v185 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v185;
      }

      if (!os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
      {
        return 4294954516;
      }

      *valuePtr = 136315394;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      *&valuePtr[12] = 1024;
      *&valuePtr[14] = v917.value;
      v14 = "%s - Selected IR pixel format not supported 0x%08X\n";
    }

    else
    {
      v173 = *SupportedOutputFormatsPrimaryScaler;
      if (*SupportedOutputFormatsPrimaryScaler)
      {
        v174 = 0;
        v175 = &SupportedOutputFormatsPrimaryScaler[4];
        do
        {
          v174 |= v173 == LODWORD(v917.value);
          v176 = *v175;
          v175 += 4;
          v173 = v176;
        }

        while (v176);
        if (v174)
        {
          goto LABEL_241;
        }
      }

      v185 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v185 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v185;
      }

      if (!os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
      {
        return 4294954516;
      }

      *valuePtr = 136315394;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      *&valuePtr[12] = 1024;
      *&valuePtr[14] = v917.value;
      v14 = "%s - Selected pixel format not supported 0x%08X\n";
    }

    v15 = valuePtr;
LABEL_407:
    v16 = v185;
LABEL_12:
    v17 = 18;
LABEL_19:
    _os_log_impl(&dword_2247DB000, v16, OS_LOG_TYPE_DEFAULT, v14, v15, v17);
    return 4294954516;
  }

LABEL_242:
  if (cf1a)
  {
    v177 = CFEqual(cf1a, *MEMORY[0x277CBED28]);
    if (*v803 == 1)
    {
      v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v19 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        return 4294954516;
      }

      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v14 = "%s - Cannot change GDC Enable while streaming\n";
      goto LABEL_105;
    }

    BYTE11(v954) = v177 != 0;
  }

  v727 = v147 != 0;
  if (!v147)
  {
    goto LABEL_388;
  }

  if (!CGRectMakeWithDictionaryRepresentation(v147, valuePtr))
  {
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return 4294954516;
    }

    LODWORD(v917.value) = 136315138;
    *(&v917.value + 4) = "SetVideoOutputConfigurations";
    v14 = "%s - Failed to read Crop Rect\n";
    v15 = &v917;
    goto LABEL_18;
  }

  v178 = *valuePtr;
  v179 = *&valuePtr[16];
  v180 = *(a2 + 184) + 120 * v10;
  if (*(v180 + 92) == 1 && BYTE11(v954) == 1)
  {
    v181 = *(v180 + 96);
  }

  else
  {
    if (*(v180 + 36) != 1)
    {
      v181 = v810;
      if (v809)
      {
        v186 = 2 * v179;
      }

      else
      {
        v186 = *&valuePtr[16];
      }

      if (v809)
      {
        v187 = 2 * v178;
      }

      else
      {
        v187 = *valuePtr;
      }

      goto LABEL_319;
    }

    v181 = *(v180 + 40);
  }

  v186 = *&valuePtr[16];
  v187 = *valuePtr;
LABEL_319:
  v199 = v181;
  if (v187 + v186 > v181)
  {
    v200 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v200 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v200;
    }

    if (!os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
    {
      return 4294954516;
    }

    LODWORD(v917.value) = 136315906;
    *(&v917.value + 4) = "SetVideoOutputConfigurations";
    LOWORD(v917.flags) = 1024;
    *(&v917.flags + 2) = v187;
    WORD1(v917.epoch) = 1024;
    HIDWORD(v917.epoch) = v186;
    v918 = 1024;
    v919 = v199;
    v14 = "%s - Invalid crop x(%d)/width(%d) for selected output width %d\n";
    v15 = &v917;
    v16 = v200;
    v17 = 30;
    goto LABEL_19;
  }

  v201 = HIDWORD(v181);
  if (*&valuePtr[8] + *&valuePtr[24] > HIDWORD(v181))
  {
    v185 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v185 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v185;
    }

    if (!os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
    {
      return 4294954516;
    }

    LODWORD(v917.value) = 136315394;
    *(&v917.value + 4) = "SetVideoOutputConfigurations";
    LOWORD(v917.flags) = 1024;
    *(&v917.flags + 2) = v201;
    v14 = "%s - Invalid crop y/height for selected output height %d\n";
    goto LABEL_406;
  }

  if (v178 & 1) != 0 || (*&valuePtr[8] & 1) != 0 || v179 % v922 || (*&valuePtr[24])
  {
    v185 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v185 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v185;
    }

    if (!os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
    {
      return 4294954516;
    }

    LODWORD(v917.value) = 136315394;
    *(&v917.value + 4) = "SetVideoOutputConfigurations";
    LOWORD(v917.flags) = 1024;
    *(&v917.flags + 2) = v922;
    v14 = "%s - Invalid crop params, must be divisible by 2 (width by %d)\n";
LABEL_406:
    v15 = &v917;
    goto LABEL_407;
  }

  rect2 = *valuePtr;
LABEL_388:
  if (*(&v753 + 1))
  {
    *valuePtr = 0;
    CFNumberGetValue(*(&v753 + 1), kCFNumberSInt32Type, valuePtr);
    v214 = *valuePtr;
    if (rect2.size.width < *valuePtr || rect2.size.width * 0.25 > *valuePtr)
    {
      v216 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v216 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v216;
      }

      if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
      {
        SetVideoOutputConfigurations(valuePtr, &rect2.size);
      }

      return 4294954516;
    }

    if (*valuePtr % v923)
    {
      v217 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v217 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v217;
      }

      if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
      {
        SetVideoOutputConfigurations();
      }

      return 4294954516;
    }

    if (*v803 == 1)
    {
      if (CheckOutputWidthAgainstPool(a2, *(a2 + 848), 0, *valuePtr))
      {
        v226 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v226 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v226;
        }

        if (os_log_type_enabled(v226, OS_LOG_TYPE_ERROR))
        {
          SetVideoOutputConfigurations();
        }

        return 4294954516;
      }

      v214 = *valuePtr;
    }

    *&v952[20] = v214;
  }

  if (v753)
  {
    *valuePtr = 0;
    CFNumberGetValue(v753, kCFNumberSInt32Type, valuePtr);
    v264 = *valuePtr;
    if (rect2.size.height < *valuePtr || rect2.size.height * 0.25 > *valuePtr)
    {
      v266 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v266 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v266;
      }

      if (os_log_type_enabled(v266, OS_LOG_TYPE_ERROR))
      {
        SetVideoOutputConfigurations(valuePtr, &rect2.size.height);
      }

      return 4294954516;
    }

    if (valuePtr[0])
    {
      v268 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v268 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v268;
      }

      if (os_log_type_enabled(v268, OS_LOG_TYPE_ERROR))
      {
        SetVideoOutputConfigurations();
      }

      return 4294954516;
    }

    if (*v803 == 1)
    {
      if (CheckOutputHeightAgainstPool(a2, *(a2 + 848), 0, *valuePtr))
      {
        v267 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v267 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v267;
        }

        if (os_log_type_enabled(v267, OS_LOG_TYPE_ERROR))
        {
          SetVideoOutputConfigurations();
        }

        return 4294954516;
      }

      v264 = *valuePtr;
    }

    *&v952[24] = v264;
  }

  v758 = v753 != 0;
  if (allocatora)
  {
    LODWORD(v917.value) = 0;
    CFNumberGetValue(allocatora, kCFNumberSInt32Type, &v917);
    if (*v803 == 1)
    {
      v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v19 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        return 4294954516;
      }

      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v14 = "%s - Cannot change Retained Buffer Count while streaming\n";
      goto LABEL_105;
    }

    LODWORD(v954) = v917.value;
  }

  if (v746)
  {
    LODWORD(v917.value) = 0;
    CFNumberGetValue(v746, kCFNumberSInt32Type, &v917);
    if (*v803 == 1)
    {
      v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v19 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        return 4294954516;
      }

      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v14 = "%s - Cannot change Buffer Cache Mode while streaming\n";
      goto LABEL_105;
    }

    DWORD1(v954) = v917.value;
  }

  if (dictb)
  {
    v278 = CFEqual(dictb, *MEMORY[0x277CBED28]);
    if (*v803 == 1)
    {
      v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v19 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        return 4294954516;
      }

      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v14 = "%s - Cannot change Attach Raw while streaming\n";
      goto LABEL_105;
    }

    BYTE8(v954) = v278 != 0;
  }

  if (v733)
  {
    v279 = CFEqual(v733, *MEMORY[0x277CBED28]);
    if (*v803 == 1)
    {
      v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v19 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        return 4294954516;
      }

      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v14 = "%s - Cannot change Stabilization Enable while streaming\n";
      goto LABEL_105;
    }

    BYTE10(v954) = v279 != 0;
  }

  if (v730)
  {
    *valuePtr = 0;
    CFNumberGetValue(v730, kCFNumberFloat32Type, valuePtr);
    if (*v803 == 1)
    {
      return 4294954516;
    }

    HIDWORD(v954) = *valuePtr;
  }

  if (!theDicta)
  {
    goto LABEL_957;
  }

  if (CFDictionaryGetCount(theDicta))
  {
    if (!*(a2 + 4360) || (*(a2 + 4368) & 1) != 0)
    {
      *(a2 + 4616) = 1;
      v280 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6770]);
      v281 = 0.0;
      v282 = 0.0;
      if (v280)
      {
        *valuePtr = 0;
        CFNumberGetValue(v280, kCFNumberFloatType, valuePtr);
        v282 = *valuePtr;
      }

      *(a2 + 4624) = v282;
      v283 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6768]);
      if (v283)
      {
        *valuePtr = 0;
        CFNumberGetValue(v283, kCFNumberFloatType, valuePtr);
        v281 = *valuePtr;
      }

      *(a2 + 4628) = v281;
      v284 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6760]);
      if (v284)
      {
        memset(valuePtr, 0, 24);
        CMTimeMakeFromDictionary(valuePtr, v284);
        v917 = *valuePtr;
        v285 = (CMTimeGetSeconds(&v917) * 1000.0);
      }

      else
      {
        v285 = 2000;
      }

      *(a2 + 4632) = v285;
      v313 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6738]);
      if (v313)
      {
        *valuePtr = 0;
        CFNumberGetValue(v313, kCFNumberSInt32Type, valuePtr);
        v314 = *valuePtr;
      }

      else
      {
        v314 = 4;
      }

      *(a2 + 4636) = v314;
      v315 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6730]);
      if (v315)
      {
        *valuePtr = 0;
        CFNumberGetValue(v315, kCFNumberFloatType, valuePtr);
        v316 = *valuePtr;
      }

      else
      {
        v316 = 2;
      }

      *(a2 + 4640) = v316;
      v317 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6778]);
      if (v317)
      {
        *valuePtr = 0;
        CFNumberGetValue(v317, kCFNumberSInt32Type, valuePtr);
        v318 = *valuePtr;
      }

      else
      {
        v318 = 5000;
      }

      *(a2 + 4644) = v318;
      v319 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6750]);
      if (v319)
      {
        *valuePtr = 0;
        CFNumberGetValue(v319, kCFNumberFloatType, valuePtr);
        v320 = *valuePtr;
      }

      else
      {
        v320 = 45;
      }

      *(a2 + 4648) = v320;
      v321 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6710]);
      *(a2 + 4660) = v321 && CFEqual(v321, *MEMORY[0x277CBED28]);
      v322 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6728]);
      *(a2 + 4661) = !v322 || CFEqual(v322, *MEMORY[0x277CBED28]);
      v327 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6788]);
      if (v327)
      {
        *valuePtr = 0;
        CFNumberGetValue(v327, kCFNumberSInt32Type, valuePtr);
        v328 = *valuePtr;
      }

      else
      {
        v328 = 3;
      }

      *(a2 + 4652) = v328;
      v329 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6708]);
      if (v329)
      {
        v330 = CFEqual(v329, *MEMORY[0x277CBED28]) != 0;
      }

      else
      {
        v330 = 0;
      }

      *(a2 + 4663) = v330;
      v331 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6748]);
      if (v331)
      {
        *valuePtr = 0;
        CFNumberGetValue(v331, kCFNumberSInt16Type, valuePtr);
        v332 = *valuePtr;
      }

      else
      {
        v332 = 1;
      }

      *(a2 + 4668) = v332;
      v333 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF67A0]);
      if (v333)
      {
        *valuePtr = 0;
        CFNumberGetValue(v333, kCFNumberSInt32Type, valuePtr);
        v334 = *valuePtr;
      }

      else
      {
        v334 = 9;
      }

      *(a2 + 4672) = v334;
      v335 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6798]);
      if (v335)
      {
        *valuePtr = 0;
        CFNumberGetValue(v335, kCFNumberFloatType, valuePtr);
        v336 = *valuePtr;
      }

      else
      {
        v336 = 1045220557;
      }

      *(a2 + 4676) = v336;
      v337 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6790]);
      if (v337)
      {
        *valuePtr = 0;
        CFNumberGetValue(v337, kCFNumberFloatType, valuePtr);
        v338 = *valuePtr;
      }

      else
      {
        v338 = 0.5;
      }

      *(a2 + 4680) = v338;
      v339 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6740]);
      if (v339)
      {
        *valuePtr = 0;
        CFNumberGetValue(v339, kCFNumberSInt32Type, valuePtr);
        v340 = *valuePtr;
      }

      else
      {
        v340 = 180;
      }

      *(a2 + 4684) = v340;
      v341 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6780]);
      if (v341)
      {
        *valuePtr = 0;
        CFNumberGetValue(v341, kCFNumberFloatType, valuePtr);
        v342 = *valuePtr;
      }

      else
      {
        v342 = 20.0;
      }

      *(a2 + 4688) = v342;
      v343 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6718]);
      if (v343)
      {
        valuePtr[0] = 0;
        CFNumberGetValue(v343, kCFNumberSInt8Type, valuePtr);
        v344 = valuePtr[0];
      }

      else
      {
        v344 = 1;
      }

      *(a2 + 4692) = v344;
      v345 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6758]);
      if (v345 && (v346 = v345, v347 = CFGetTypeID(v345), v347 == CFDataGetTypeID()))
      {
        LOBYTE(v656) = 0;
        Length = CFDataGetLength(v346);
        v349 = H16ISP::H16ISPCreateCVBuffer(0x40u, (Length / 64) + 1, 0, 0, 7, 0, 0.0, 64, 128, 0, v656, 0, 0, -1);
        *(a2 + 4696) = v349;
        if (v349)
        {
          CVPixelBufferLockBaseAddress(v349, 0);
          BaseAddress = CVPixelBufferGetBaseAddress(*(a2 + 4696));
          if (BaseAddress)
          {
            v351 = BaseAddress;
            BytePtr = CFDataGetBytePtr(v346);
            v353 = CFDataGetLength(v346);
            memcpy(v351, BytePtr, v353);
          }

          CVPixelBufferUnlockBaseAddress(*(a2 + 4696), 0);
          goto LABEL_952;
        }

        v389 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v389 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v389;
        }

        if (!os_log_type_enabled(v389, OS_LOG_TYPE_DEFAULT))
        {
LABEL_951:
          *(a2 + 4696) = 0;
LABEL_952:
          v358 = CFDictionaryGetValue(theDicta, *MEMORY[0x277CF6720]);
          if (v358)
          {
            v359 = CFEqual(v358, *MEMORY[0x277CBED28]) != 0;
          }

          else
          {
            v359 = 0;
          }

          *(a2 + 4693) = v359;
          *(a2 + 4620) = *(a2 + 52);
          v299 = 4664;
          goto LABEL_956;
        }

        *valuePtr = 136315394;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        *&valuePtr[12] = 1024;
        *&valuePtr[14] = 0;
        v355 = "%s - Unable to create CV Pixel buffer for LACC, err = %d\n";
        v356 = v389;
        v357 = 18;
      }

      else
      {
        v354 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v354 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v354;
        }

        if (!os_log_type_enabled(v354, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_951;
        }

        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v355 = "%s - Unable to get LACC configuration from CoreMedia\n";
        v356 = v354;
        v357 = 12;
      }

      _os_log_impl(&dword_2247DB000, v356, OS_LOG_TYPE_DEFAULT, v355, valuePtr, v357);
      goto LABEL_951;
    }

    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return 4294954516;
    }

    *valuePtr = 136315138;
    *&valuePtr[4] = "SetVideoOutputConfigurations";
    v14 = "%s - Cannot change Vision Data Config on slave camera\n";
LABEL_105:
    v15 = valuePtr;
LABEL_18:
    v16 = v19;
    v17 = 12;
    goto LABEL_19;
  }

  v299 = 4616;
LABEL_956:
  *(a2 + v299) = 0;
LABEL_957:
  if (!numberb)
  {
    goto LABEL_970;
  }

  if (*v803 == 1)
  {
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return 4294954516;
    }

    *valuePtr = 136315138;
    *&valuePtr[4] = "SetVideoOutputConfigurations";
    v14 = "%s - Cannot change Client Buffer Pool while streaming\n";
    goto LABEL_105;
  }

  if (v959[0])
  {
    CVPixelBufferPoolRelease(v959[0]);
    v959[0] = 0;
  }

  v360 = 0;
  v361 = &v959[1];
  do
  {
    v362 = v959[v360 + 1];
    if (v362)
    {
      CVPixelBufferRelease(v362);
      v959[v360 + 1] = 0;
    }

    ++v360;
  }

  while (v360 != 4);
  if (CFEqual(numberb, *MEMORY[0x277CBEEE8]))
  {
LABEL_970:
    v363 = 0;
    goto LABEL_971;
  }

  PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(numberb);
  if (!PixelBufferAttributes)
  {
    v387 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v387 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v387;
    }

    if (os_log_type_enabled(v387, OS_LOG_TYPE_ERROR))
    {
      SetVideoOutputConfigurations();
    }

    return 4294954516;
  }

  v367 = PixelBufferAttributes;
  LODWORD(v917.value) = 0;
  v806 = 0;
  v368 = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x277CC4EC8]);
  CFNumberGetValue(v368, kCFNumberIntType, &v917);
  v369 = CFDictionaryGetValue(v367, *MEMORY[0x277CC4DD8]);
  CFNumberGetValue(v369, kCFNumberIntType, &v806);
  if (LODWORD(v917.value) < *&v952[20] || v806 < *&v952[24])
  {
    v370 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v370 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v370;
    }

    if (os_log_type_enabled(v370, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 136316162;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      *&valuePtr[12] = 1024;
      *&valuePtr[14] = v917.value;
      *&valuePtr[18] = 1024;
      *&valuePtr[20] = v806;
      *&valuePtr[24] = 1024;
      *&valuePtr[26] = *&v952[20];
      *&valuePtr[30] = 1024;
      *&valuePtr[32] = *&v952[24];
      _os_log_error_impl(&dword_2247DB000, v370, OS_LOG_TYPE_ERROR, "%s - PrimaryScaler ClientBufferPool %dx%d is smaller than OutputSize %dx%d\n", valuePtr, 0x24u);
    }

    return 4294954516;
  }

  v959[0] = CVPixelBufferPoolRetain(numberb);
  MinBufferCount = CVPixelBufferPoolGetMinBufferCount();
  v397 = dword_281003314;
  if (!dword_281003314)
  {
    v398 = *(a2 + 48);
    v399 = *(a2 + 192);
    if (v398 < v399)
    {
      v399 = 0;
    }

    v397 = *(*(a2 + 184) + 120 * (v398 - v399) + 116);
  }

  v400 = v397 - *(a2 + 92);
  LODWORD(v954) = ~v400 + MinBufferCount;
  if (v954 < 0)
  {
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return 4294954516;
    }

    *valuePtr = 136315138;
    *&valuePtr[4] = "SetVideoOutputConfigurations";
    v14 = "%s - Not enough buffers in client pool\n";
    goto LABEL_105;
  }

  cf1b = CVPixelBufferPoolRetain(v959[0]);
  LODWORD(v917.value) = CVPixelBufferPoolGetMinBufferCount();
  v401 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v403 = Mutable;
    v404 = CFNumberCreate(v401, kCFNumberSInt32Type, &v917);
    CFDictionarySetValue(v403, *MEMORY[0x277CC4E40], v404);
    CFRelease(v404);
    v405 = fmin(v400, 4.0);
    v363 = v405 > 0;
    if (v405 >= 1)
    {
      do
      {
        *valuePtr = 0;
        CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(v401, cf1b, v403, valuePtr);
        *v361++ = *valuePtr;
        --v405;
      }

      while (v405);
    }

    CFRelease(v403);
  }

  else
  {
    v363 = 0;
  }

  CVPixelBufferPoolRelease(cf1b);
LABEL_971:
  if (poola)
  {
    v364 = CFEqual(poola, *MEMORY[0x277CBED28]) != 0;
    BYTE4(v958) = v364;
    if (*(a2 + 160))
    {
      if (*(a2 + 836) != v364)
      {
        v371 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v371 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v371;
        }

        if (os_log_type_enabled(v371, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v372 = "%s - Cannot change Face Tracking Enable while streaming\n";
          goto LABEL_993;
        }

LABEL_995:
        LODWORD(v102) = 0;
        v105 = 0;
        v18 = 4294954612;
        LOBYTE(v99) = v363;
        goto LABEL_108;
      }
    }
  }

  if (v705)
  {
    v365 = CFEqual(v705, *MEMORY[0x277CBED28]) != 0;
    BYTE5(v958) = v365;
    if (*(a2 + 160))
    {
      if (*(a2 + 837) != v365)
      {
        v371 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v371 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v371;
        }

        if (os_log_type_enabled(v371, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v372 = "%s - Cannot change Segmentation Enable while streaming\n";
LABEL_993:
          _os_log_impl(&dword_2247DB000, v371, OS_LOG_TYPE_DEFAULT, v372, valuePtr, 0xCu);
          v18 = 4294954612;
          if (!v363)
          {
            return v18;
          }

LABEL_51:
          LODWORD(v102) = 0;
          v105 = 0;
          goto LABEL_1935;
        }

        goto LABEL_995;
      }
    }
  }

  v99 = v363;
  v100 = v727;
LABEL_37:
  v101 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6658]);
  v102 = v101;
  if (!v101)
  {
    cf1 = v99;
LABEL_54:
    v745 = 0;
    goto LABEL_55;
  }

  v103 = CFGetTypeID(v101);
  if (v103 != CFDictionaryGetTypeID())
  {
    cf1 = v99;
    LODWORD(v102) = 0;
    goto LABEL_54;
  }

  if (CFDictionaryGetValue(v102, *MEMORY[0x277CF6248]) || CFDictionaryGetValue(v102, *MEMORY[0x277CF6250]) || CFDictionaryGetValue(v102, *MEMORY[0x277CF6240]) || CFDictionaryGetValue(v102, *MEMORY[0x277CF6260]) || CFDictionaryGetValue(v102, *MEMORY[0x277CF66E8]) || CFDictionaryGetValue(v102, *MEMORY[0x277CF65A0]) || CFDictionaryGetValue(v102, *MEMORY[0x277CF65D0]) || CFDictionaryGetValue(v102, *MEMORY[0x277CF6228]))
  {
    v104 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v104 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v104;
    }

    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      _os_log_impl(&dword_2247DB000, v104, OS_LOG_TYPE_DEFAULT, "%s - Invalid property for secondary scaler\n", valuePtr, 0xCu);
      v18 = 4294954516;
      if (!v99)
      {
        return v18;
      }

      goto LABEL_51;
    }

    LODWORD(v102) = 0;
    goto LABEL_107;
  }

  v726 = v100;
  cf1 = v99;
  v152 = CFDictionaryGetValue(v102, *MEMORY[0x277CF6578]);
  v153 = CFDictionaryGetValue(v102, *MEMORY[0x277CF65C0]);
  allocatorb = CFDictionaryGetValue(v102, *MEMORY[0x277CF65F8]);
  v747 = CFDictionaryGetValue(v102, *MEMORY[0x277CF65A8]);
  v754 = CFDictionaryGetValue(v102, *MEMORY[0x277CF6580]);
  theDictb = CFDictionaryGetValue(v102, *MEMORY[0x277CF65C8]);
  dictc = CFDictionaryGetValue(v102, *MEMORY[0x277CF6548]);
  v734 = CFDictionaryGetValue(v102, *MEMORY[0x277CF6540]);
  v731 = CFDictionaryGetValue(v102, *MEMORY[0x277CF65B0]);
  numberc = CFDictionaryGetValue(v102, *MEMORY[0x277CF66F0]);
  poolb = CFDictionaryGetValue(v102, *MEMORY[0x277CF6550]);
  v706 = CFDictionaryGetValue(v102, *MEMORY[0x277CF6598]);
  v699 = CFDictionaryGetValue(v102, *MEMORY[0x277CF65E0]);
  v693 = CFDictionaryGetValue(v102, *MEMORY[0x277CF65D8]);
  if (v152)
  {
    *valuePtr = 0;
    CFNumberGetValue(v152, kCFNumberLongLongType, valuePtr);
    *(&v883 + 1) = *valuePtr;
  }

  if (v153)
  {
    LODWORD(v917.value) = 0;
    CFNumberGetValue(v153, kCFNumberSInt32Type, &v917);
    if (*v804 == 1)
    {
      v154 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v154 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v154;
      }

      if (!os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_279;
      }

      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v155 = "%s - Cannot change Pixel Format while streaming\n";
      goto LABEL_197;
    }

    v163 = *SupportedOutputFormatsSecondaryScaler;
    if (!*SupportedOutputFormatsSecondaryScaler)
    {
      goto LABEL_258;
    }

    v164 = 0;
    v165 = &SupportedOutputFormatsSecondaryScaler[4];
    do
    {
      v164 |= v163 == LODWORD(v917.value);
      v166 = *v165;
      v165 += 4;
      v163 = v166;
    }

    while (v166);
    if ((v164 & 1) == 0)
    {
LABEL_258:
      v182 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v182 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v182;
      }

      if (!os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_279;
      }

      *valuePtr = 136315394;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      *&valuePtr[12] = 1024;
      *&valuePtr[14] = v917.value;
      v155 = "%s - Selected pixel format not supported 0x%08X\n";
      v156 = valuePtr;
      goto LABEL_262;
    }

    LODWORD(v884) = v917.value;
  }

  if (v754)
  {
    if (!CGRectMakeWithDictionaryRepresentation(v754, valuePtr))
    {
      v154 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v154 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v154;
      }

      if (!os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_279;
      }

      LODWORD(v917.value) = 136315138;
      *(&v917.value + 4) = "SetVideoOutputConfigurations";
      v155 = "%s - Failed to read Crop Rect\n";
      goto LABEL_276;
    }

    v169 = *(a2 + 184) + 120 * v764;
    if (*(v169 + 36) == 1)
    {
      v170 = *&valuePtr[16];
      LODWORD(v167) = *(v169 + 40);
      if (*valuePtr + *&valuePtr[16] > v167)
      {
        v171 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v171 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v171;
        }

        if (!os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_279;
        }

        v172 = *(*(a2 + 184) + 120 * v764 + 40);
        LODWORD(v917.value) = 136315394;
        *(&v917.value + 4) = "SetVideoOutputConfigurations";
        LOWORD(v917.flags) = 1024;
        *(&v917.flags + 2) = v172;
        v155 = "%s - Invalid crop x/width for selected output width %d\n";
        goto LABEL_447;
      }

      v223 = *&valuePtr[8];
      v224 = *&valuePtr[24];
      LODWORD(v168) = *(v169 + 44);
      if (*&valuePtr[8] + *&valuePtr[24] > v168)
      {
        v171 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v171 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v171;
        }

        if (!os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_279;
        }

        v225 = *(*(a2 + 184) + 120 * v764 + 44);
        LODWORD(v917.value) = 136315394;
        *(&v917.value + 4) = "SetVideoOutputConfigurations";
        LOWORD(v917.flags) = 1024;
        *(&v917.flags + 2) = v225;
        v155 = "%s - Invalid crop y/height for selected output height %d\n";
LABEL_447:
        v156 = &v917;
        v183 = v171;
        goto LABEL_263;
      }

      v202 = *valuePtr;
      goto LABEL_498;
    }

    v202 = *valuePtr;
    v170 = *&valuePtr[16];
    v203 = *&valuePtr[16] << (v809 != 0);
    v204 = *valuePtr << (v809 != 0);
    if (v204 + v203 > v810)
    {
      v205 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v205 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v205;
      }

      if (!os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_279;
      }

      LODWORD(v917.value) = 136315906;
      *(&v917.value + 4) = "SetVideoOutputConfigurations";
      LOWORD(v917.flags) = 1024;
      *(&v917.flags + 2) = v204;
      WORD1(v917.epoch) = 1024;
      HIDWORD(v917.epoch) = v203;
      v918 = 1024;
      v919 = v810;
      v155 = "%s - Invalid crop x(%d)/width(%d) for selected output width %d\n";
      v156 = &v917;
      v183 = v205;
      v184 = 30;
      goto LABEL_278;
    }

    v223 = *&valuePtr[8];
    v224 = *&valuePtr[24];
    LODWORD(v168) = HIDWORD(v810);
    if (*&valuePtr[8] + *&valuePtr[24] <= v168)
    {
LABEL_498:
      if ((v202 & 1) == 0 && (v223 & 1) == 0 && (v170 & 1) == 0 && (v224 & 1) == 0)
      {
        *&v885 = *valuePtr;
        *(&v885 + 1) = v223;
        *&v886 = v170;
        *(&v886 + 1) = v224;
        goto LABEL_503;
      }

      v154 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v154 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v154;
      }

      if (!os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_279;
      }

      LODWORD(v917.value) = 136315138;
      *(&v917.value + 4) = "SetVideoOutputConfigurations";
      v155 = "%s - Invalid crop params, must be divisible by 2\n";
LABEL_276:
      v156 = &v917;
      goto LABEL_277;
    }

    v182 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v182 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v182;
    }

    if (!os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_279;
    }

    LODWORD(v917.value) = 136315394;
    *(&v917.value + 4) = "SetVideoOutputConfigurations";
    LOWORD(v917.flags) = 1024;
    *(&v917.flags + 2) = HIDWORD(v810);
    v155 = "%s - Invalid crop y/height for selected output height %d\n";
    v156 = &v917;
LABEL_262:
    v183 = v182;
LABEL_263:
    v184 = 18;
LABEL_278:
    _os_log_impl(&dword_2247DB000, v183, OS_LOG_TYPE_DEFAULT, v155, v156, v184);
LABEL_279:
    v18 = 4294954516;
    goto LABEL_280;
  }

LABEL_503:
  if (allocatorb)
  {
    *valuePtr = 0;
    CFNumberGetValue(allocatorb, kCFNumberSInt32Type, valuePtr);
    v243 = *valuePtr;
    if (*&v886 < *valuePtr || *&v886 * 0.25 > *valuePtr)
    {
      v245 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v245 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v245;
      }

      if (os_log_type_enabled(v245, OS_LOG_TYPE_ERROR))
      {
        SetVideoOutputConfigurations(valuePtr, &v886);
      }

      goto LABEL_279;
    }

    if (valuePtr[0])
    {
      v247 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v247 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v247;
      }

      if (os_log_type_enabled(v247, OS_LOG_TYPE_ERROR))
      {
        SetVideoOutputConfigurations();
      }

      goto LABEL_279;
    }

    if (*v804 == 1)
    {
      if (CheckOutputWidthAgainstPool(a2, *(a2 + 1048), 10, *valuePtr))
      {
        v246 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v246 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v246;
        }

        if (os_log_type_enabled(v246, OS_LOG_TYPE_ERROR))
        {
          SetVideoOutputConfigurations();
        }

        goto LABEL_279;
      }

      v243 = *valuePtr;
    }

    DWORD1(v884) = v243;
  }

  if (v747)
  {
    *valuePtr = 0;
    CFNumberGetValue(v747, kCFNumberSInt32Type, valuePtr);
    v273 = *valuePtr;
    if (*(&v886 + 1) < *valuePtr || *(&v886 + 1) * 0.25 > *valuePtr)
    {
      v275 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v275 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v275;
      }

      if (os_log_type_enabled(v275, OS_LOG_TYPE_ERROR))
      {
        SetVideoOutputConfigurations(valuePtr, &v886 + 8);
      }

      goto LABEL_279;
    }

    if (valuePtr[0])
    {
      v277 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v277 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v277;
      }

      if (os_log_type_enabled(v277, OS_LOG_TYPE_ERROR))
      {
        SetVideoOutputConfigurations();
      }

      goto LABEL_279;
    }

    if (*v804 == 1)
    {
      if (CheckOutputHeightAgainstPool(a2, *(a2 + 1048), 10, *valuePtr))
      {
        v276 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v276 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v276;
        }

        if (os_log_type_enabled(v276, OS_LOG_TYPE_ERROR))
        {
          SetVideoOutputConfigurations();
        }

        goto LABEL_279;
      }

      v273 = *valuePtr;
    }

    DWORD2(v884) = v273;
  }

  v745 = (v747 | allocatorb | v754) != 0;
  if (theDictb)
  {
    LODWORD(v917.value) = 0;
    CFNumberGetValue(theDictb, kCFNumberSInt32Type, &v917);
    if (*v804 == 1)
    {
      v154 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v154 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v154;
      }

      if (!os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_279;
      }

      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v155 = "%s - Cannot change Retained Buffer Count while streaming\n";
      goto LABEL_197;
    }

    LODWORD(v887) = v917.value;
  }

  if (dictc)
  {
    LODWORD(v917.value) = 0;
    CFNumberGetValue(dictc, kCFNumberSInt32Type, &v917);
    if (*v804 == 1)
    {
      v154 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v154 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v154;
      }

      if (!os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_279;
      }

      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v155 = "%s - Cannot change Buffer Cache Mode while streaming\n";
      goto LABEL_197;
    }

    DWORD1(v887) = v917.value;
  }

  if (v734)
  {
    v293 = CFEqual(v734, *MEMORY[0x277CBED28]);
    if (*v804 == 1)
    {
      v154 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v154 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v154;
      }

      if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v155 = "%s - Cannot change Attach Raw while streaming\n";
LABEL_197:
        v156 = valuePtr;
LABEL_277:
        v183 = v154;
        v184 = 12;
        goto LABEL_278;
      }

      goto LABEL_1127;
    }

    BYTE8(v887) = v293 != 0;
  }

  if (v731)
  {
    LODWORD(v917.value) = 0;
    CFNumberGetValue(v731, kCFNumberFloatType, &v917);
    if (*v804 == 1)
    {
      v294 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v294 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v294;
      }

      if (os_log_type_enabled(v294, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        _os_log_impl(&dword_2247DB000, v294, OS_LOG_TYPE_DEFAULT, "%s - Cannot change Max Output Framerate while output is enabled\n", valuePtr, 0xCu);
      }

      v18 = 4294954514;
LABEL_280:
      if (!v99)
      {
        return v18;
      }

      goto LABEL_51;
    }

    if (*&v917.value > *(a2 + 52))
    {
      v295 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v295 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v295;
      }

      if (!os_log_type_enabled(v295, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_279;
      }

      v296 = *(a2 + 52);
      *valuePtr = 136315394;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      *&valuePtr[12] = 2048;
      *&valuePtr[14] = v296;
      v155 = "%s - Cannot be greater than streaming max framerate %.3f\n";
      v156 = valuePtr;
      v183 = v295;
      v184 = 22;
      goto LABEL_278;
    }

    DWORD2(v891) = v917.value;
  }

  if (numberc)
  {
    v300 = CFEqual(numberc, *MEMORY[0x277CBED28]);
    if (*v804 == 1)
    {
      v154 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v154 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v154;
      }

      if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v155 = "%s - Cannot change Stabilization Enable while streaming\n";
        goto LABEL_197;
      }

      goto LABEL_1127;
    }

    BYTE10(v887) = v300 != 0;
  }

  if (!poolb)
  {
    goto LABEL_831;
  }

  if (*v804 == 1)
  {
    v154 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v154 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v154;
    }

    if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v155 = "%s - Cannot change Client Buffer Pool while streaming\n";
      goto LABEL_197;
    }

    goto LABEL_1127;
  }

  if (v892[0])
  {
    CVPixelBufferPoolRelease(v892[0]);
    v892[0] = 0;
  }

  v307 = 0;
  v308 = &v892[1];
  do
  {
    v309 = v892[v307 + 1];
    if (v309)
    {
      CVPixelBufferRelease(v309);
      v892[v307 + 1] = 0;
    }

    ++v307;
  }

  while (v307 != 4);
  if (CFEqual(poolb, *MEMORY[0x277CBEEE8]))
  {
LABEL_831:
    LODWORD(v102) = 0;
    goto LABEL_832;
  }

  v373 = CVPixelBufferPoolGetPixelBufferAttributes(poolb);
  if (!v373)
  {
    v395 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v395 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v395;
    }

    if (os_log_type_enabled(v395, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v378 = "%s - SecondaryScaler ClientBufferPool Attribute is not available\n";
      v379 = v395;
      v380 = 12;
LABEL_1252:
      _os_log_error_impl(&dword_2247DB000, v379, OS_LOG_TYPE_ERROR, v378, valuePtr, v380);
      goto LABEL_279;
    }

LABEL_1127:
    LODWORD(v102) = 0;
LABEL_1128:
    v105 = 0;
    v18 = 4294954516;
    goto LABEL_108;
  }

  v374 = v373;
  LODWORD(v917.value) = 0;
  v806 = 0;
  v375 = CFDictionaryGetValue(v373, *MEMORY[0x277CC4EC8]);
  CFNumberGetValue(v375, kCFNumberIntType, &v917);
  v376 = CFDictionaryGetValue(v374, *MEMORY[0x277CC4DD8]);
  CFNumberGetValue(v376, kCFNumberIntType, &v806);
  if (LODWORD(v917.value) < DWORD1(v884) || v806 < DWORD2(v884))
  {
    v377 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v377 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v377;
    }

    if (!os_log_type_enabled(v377, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_279;
    }

    *valuePtr = 136316162;
    *&valuePtr[4] = "SetVideoOutputConfigurations";
    *&valuePtr[12] = 1024;
    *&valuePtr[14] = v917.value;
    *&valuePtr[18] = 1024;
    *&valuePtr[20] = v806;
    *&valuePtr[24] = 1024;
    *&valuePtr[26] = DWORD1(v884);
    *&valuePtr[30] = 1024;
    *&valuePtr[32] = DWORD2(v884);
    v378 = "%s - SecondaryScaler ClientBufferPool %dx%d is smaller than OutputSize %dx%d\n";
    v379 = v377;
    v380 = 36;
    goto LABEL_1252;
  }

  v892[0] = CVPixelBufferPoolRetain(poolb);
  v414 = CVPixelBufferPoolGetMinBufferCount();
  v415 = dword_281003314;
  if (!dword_281003314)
  {
    v416 = *(a2 + 48);
    v417 = *(a2 + 192);
    if (v416 < v417)
    {
      v417 = 0;
    }

    v415 = *(*(a2 + 184) + 120 * (v416 - v417) + 116);
  }

  v418 = v415 - *(a2 + 92);
  LODWORD(v887) = ~v418 + v414;
  if (v887 < 0)
  {
    v154 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v154 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v154;
    }

    if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v155 = "%s - Not enough buffers in client pool\n";
      goto LABEL_197;
    }

    goto LABEL_1127;
  }

  v756 = CVPixelBufferPoolRetain(v892[0]);
  LODWORD(v917.value) = CVPixelBufferPoolGetMinBufferCount();
  allocatorc = *MEMORY[0x277CBECE8];
  v419 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v419)
  {
    v420 = v419;
    v102 = CFNumberCreate(allocatorc, kCFNumberSInt32Type, &v917);
    CFDictionarySetValue(v420, *MEMORY[0x277CC4E40], v102);
    CFRelease(v102);
    v421 = fmin(v418, 4.0);
    LODWORD(v102) = v421 > 0;
    if (v421 >= 1)
    {
      do
      {
        *valuePtr = 0;
        CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(allocatorc, v756, v420, valuePtr);
        *v308++ = *valuePtr;
        --v421;
      }

      while (v421);
    }

    CFRelease(v420);
  }

  else
  {
    LODWORD(v102) = 0;
  }

  CVPixelBufferPoolRelease(v756);
LABEL_832:
  if (v706)
  {
    v310 = CFEqual(v706, *MEMORY[0x277CBED28]) != 0;
    BYTE4(v891) = v310;
    if (*(a2 + 160))
    {
      if (*(a2 + 1036) != v310)
      {
        v381 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v381 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v381;
        }

        if (os_log_type_enabled(v381, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v382 = "%s - Cannot change Face Tracking Enable while streaming\n";
LABEL_1013:
          _os_log_impl(&dword_2247DB000, v381, OS_LOG_TYPE_DEFAULT, v382, valuePtr, 0xCu);
          v105 = 0;
          v18 = 4294954612;
          goto LABEL_1014;
        }

LABEL_1016:
        v105 = 0;
        v18 = 4294954612;
        goto LABEL_108;
      }
    }
  }

  if (v699)
  {
    v311 = CFEqual(v699, *MEMORY[0x277CBED28]) != 0;
    BYTE5(v891) = v311;
    if (*(a2 + 160))
    {
      if (*(a2 + 1037) != v311)
      {
        v381 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v381 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v381;
        }

        if (os_log_type_enabled(v381, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v382 = "%s - Cannot change Segmentation Enable while streaming\n";
          goto LABEL_1013;
        }

        goto LABEL_1016;
      }
    }
  }

  if (v693)
  {
    if (*v804 == 1)
    {
      v312 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v312 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v312;
      }

      if (!os_log_type_enabled(v312, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_1128;
      }

      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      _os_log_impl(&dword_2247DB000, v312, OS_LOG_TYPE_DEFAULT, "%s - Cannot change Sources from Primary Scaler while streaming\n", valuePtr, 0xCu);
      v105 = 0;
      v18 = 4294954516;
LABEL_1014:
      if (!v99)
      {
        goto LABEL_1939;
      }

      goto LABEL_1935;
    }

    LOBYTE(v895) = CFEqual(v693, *MEMORY[0x277CBED28]) != 0;
  }

  v100 = v726;
LABEL_55:
  allocator = (a2 + 1104);
  v106 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6628]);
  if (v106)
  {
    v107 = v106;
    v108 = CFGetTypeID(v106);
    if (v108 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryGetValue(v107, *MEMORY[0x277CF66F0]) || CFDictionaryGetValue(v107, *MEMORY[0x277CF6248]) || CFDictionaryGetValue(v107, *MEMORY[0x277CF6240]) || CFDictionaryGetValue(v107, *MEMORY[0x277CF6260]) || CFDictionaryGetValue(v107, *MEMORY[0x277CF6250]) || CFDictionaryGetValue(v107, *MEMORY[0x277CF66E8]) || CFDictionaryGetValue(v107, *MEMORY[0x277CF65D8]) || CFDictionaryGetValue(v107, *MEMORY[0x277CF65A0]) || CFDictionaryGetValue(v107, *MEMORY[0x277CF65D0]) || CFDictionaryGetValue(v107, *MEMORY[0x277CF6228]))
      {
        v109 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v109 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v109;
        }

        LOBYTE(v99) = cf1;
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          _os_log_impl(&dword_2247DB000, v109, OS_LOG_TYPE_DEFAULT, "%s - Invalid property for intermediate tap\n", valuePtr, 0xCu);
        }

LABEL_107:
        v105 = 0;
        v18 = 4294954516;
        goto LABEL_108;
      }

      v728 = v100;
      theDict = v102;
      v193 = CFDictionaryGetValue(v107, *MEMORY[0x277CF6578]);
      v755 = CFDictionaryGetValue(v107, *MEMORY[0x277CF65F8]);
      dictd = CFDictionaryGetValue(v107, *MEMORY[0x277CF65A8]);
      v194 = CFDictionaryGetValue(v107, *MEMORY[0x277CF6580]);
      v735 = CFDictionaryGetValue(v107, *MEMORY[0x277CF65C8]);
      numberd = CFDictionaryGetValue(v107, *MEMORY[0x277CF6548]);
      poolc = CFDictionaryGetValue(v107, *MEMORY[0x277CF6540]);
      v195 = CFDictionaryGetValue(v107, *MEMORY[0x277CF65C0]);
      v707 = CFDictionaryGetValue(v107, *MEMORY[0x277CF65B0]);
      v700 = CFDictionaryGetValue(v107, *MEMORY[0x277CF6550]);
      v694 = CFDictionaryGetValue(v107, *MEMORY[0x277CF6598]);
      v689 = CFDictionaryGetValue(v107, *MEMORY[0x277CF65E0]);
      if (v193)
      {
        *valuePtr = 0;
        CFNumberGetValue(v193, kCFNumberLongLongType, valuePtr);
        *(&v870 + 1) = *valuePtr;
      }

      if (v195)
      {
        LODWORD(v917.value) = 0;
        CFNumberGetValue(v195, kCFNumberSInt32Type, &v917);
        if (*allocator == 1)
        {
          v196 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v196 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v196;
          }

          if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
          {
            *valuePtr = 136315138;
            *&valuePtr[4] = "SetVideoOutputConfigurations";
            v197 = "%s - Cannot change pixel format while streaming\n";
LABEL_312:
            v198 = valuePtr;
LABEL_549:
            v241 = v196;
            v242 = 12;
            goto LABEL_550;
          }

          goto LABEL_551;
        }

        v227 = *SupportedOutputFormatsIntermediateTap;
        if (!*SupportedOutputFormatsIntermediateTap)
        {
          goto LABEL_491;
        }

        v228 = 0;
        v229 = &SupportedOutputFormatsIntermediateTap[4];
        do
        {
          v228 |= v227 == LODWORD(v917.value);
          v230 = *v229;
          v229 += 4;
          v227 = v230;
        }

        while (v230);
        if ((v228 & 1) == 0)
        {
LABEL_491:
          v240 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v240 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v240;
          }

          if (!os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_551;
          }

          *valuePtr = 136315394;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          *&valuePtr[12] = 1024;
          *&valuePtr[14] = v917.value;
          v197 = "%s - Selected pixel format not supported 0x%08X\n";
          v198 = valuePtr;
          goto LABEL_495;
        }

        LODWORD(v871) = v917.value;
      }

      v729 = v194 != 0;
      if (!v194)
      {
        goto LABEL_792;
      }

      if (!CGRectMakeWithDictionaryRepresentation(v194, valuePtr))
      {
        v196 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v196 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v196;
        }

        if (!os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_551;
        }

        LODWORD(v917.value) = 136315138;
        *(&v917.value + 4) = "SetVideoOutputConfigurations";
        v197 = "%s - Failed to read Crop Rect\n";
        goto LABEL_548;
      }

      v233 = *(a2 + 184) + 120 * v764;
      if (*(v233 + 36) == 1)
      {
        v234 = *&valuePtr[16];
        LODWORD(v231) = *(v233 + 40);
        if (*valuePtr + *&valuePtr[16] > v231)
        {
          v235 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v235 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v235;
          }

          if (!os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_551;
          }

          v236 = *(*(a2 + 184) + 120 * v764 + 40);
          LODWORD(v917.value) = 136315394;
          *(&v917.value + 4) = "SetVideoOutputConfigurations";
          LOWORD(v917.flags) = 1024;
          *(&v917.flags + 2) = v236;
          v197 = "%s - Invalid crop x/width for selected output width %d\n";
LABEL_701:
          v198 = &v917;
          v241 = v235;
          goto LABEL_496;
        }

        v290 = *&valuePtr[8];
        v291 = *&valuePtr[24];
        LODWORD(v232) = *(v233 + 44);
        if (*&valuePtr[8] + *&valuePtr[24] > v232)
        {
          v235 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v235 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v235;
          }

          if (!os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_551;
          }

          v292 = *(*(a2 + 184) + 120 * v764 + 44);
          LODWORD(v917.value) = 136315394;
          *(&v917.value + 4) = "SetVideoOutputConfigurations";
          LOWORD(v917.flags) = 1024;
          *(&v917.flags + 2) = v292;
          v197 = "%s - Invalid crop y/height for selected output height %d\n";
          goto LABEL_701;
        }

        v252 = *valuePtr;
        goto LABEL_787;
      }

      v252 = *valuePtr;
      v234 = *&valuePtr[16];
      v253 = *&valuePtr[16] << (v809 != 0);
      v254 = *valuePtr << (v809 != 0);
      if (v254 + v253 > v810)
      {
        v255 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v255 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v255;
        }

        if (os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v917.value) = 136315906;
          *(&v917.value + 4) = "SetVideoOutputConfigurations";
          LOWORD(v917.flags) = 1024;
          *(&v917.flags + 2) = v254;
          WORD1(v917.epoch) = 1024;
          HIDWORD(v917.epoch) = v253;
          v918 = 1024;
          v919 = v810;
          v197 = "%s - Invalid crop x(%d)/width(%d) for selected output width %d\n";
          v198 = &v917;
          v241 = v255;
          v242 = 30;
          goto LABEL_550;
        }

        goto LABEL_551;
      }

      v290 = *&valuePtr[8];
      v291 = *&valuePtr[24];
      LODWORD(v232) = HIDWORD(v810);
      if (*&valuePtr[8] + *&valuePtr[24] <= v232)
      {
LABEL_787:
        if ((v252 & 1) == 0 && (v290 & 1) == 0 && (v234 & 1) == 0 && (v291 & 1) == 0)
        {
          *&v872 = *valuePtr;
          *(&v872 + 1) = v290;
          *&v873 = v234;
          *(&v873 + 1) = v291;
LABEL_792:
          if (v755)
          {
            *valuePtr = 0;
            CFNumberGetValue(v755, kCFNumberSInt32Type, valuePtr);
            v302 = *valuePtr;
            if (*&v873 != *valuePtr)
            {
              v303 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v303 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v303;
              }

              if (os_log_type_enabled(v303, OS_LOG_TYPE_ERROR))
              {
                SetVideoOutputConfigurations();
              }

              goto LABEL_551;
            }

            if (*allocator == 1)
            {
              if (CheckOutputWidthAgainstPool(a2, *(a2 + 1248), 6, *valuePtr))
              {
                v304 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v304 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v304;
                }

                if (os_log_type_enabled(v304, OS_LOG_TYPE_ERROR))
                {
                  SetVideoOutputConfigurations();
                }

                goto LABEL_551;
              }

              v302 = *valuePtr;
            }

            DWORD1(v871) = v302;
          }

          if (dictd)
          {
            *valuePtr = 0;
            CFNumberGetValue(dictd, kCFNumberSInt32Type, valuePtr);
            v324 = *valuePtr;
            if (*(&v873 + 1) != *valuePtr)
            {
              v325 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v325 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v325;
              }

              if (os_log_type_enabled(v325, OS_LOG_TYPE_ERROR))
              {
                SetVideoOutputConfigurations();
              }

              goto LABEL_551;
            }

            if (*allocator == 1)
            {
              if (CheckOutputHeightAgainstPool(a2, *(a2 + 1248), 6, *valuePtr))
              {
                v326 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v326 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v326;
                }

                if (os_log_type_enabled(v326, OS_LOG_TYPE_ERROR))
                {
                  SetVideoOutputConfigurations();
                }

                goto LABEL_551;
              }

              v324 = *valuePtr;
            }

            DWORD2(v871) = v324;
          }

          if (v735)
          {
            LODWORD(v917.value) = 0;
            CFNumberGetValue(v735, kCFNumberSInt32Type, &v917);
            if (*allocator == 1)
            {
              v196 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v196 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v196;
              }

              if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 136315138;
                *&valuePtr[4] = "SetVideoOutputConfigurations";
                v197 = "%s - Cannot change Retained Buffer Count while streaming\n";
                goto LABEL_312;
              }

LABEL_551:
              v105 = 0;
              v18 = 4294954516;
              LODWORD(v102) = theDict;
              if (!cf1)
              {
                goto LABEL_1939;
              }

              goto LABEL_1935;
            }

            LODWORD(v874) = v917.value;
          }

          if (numberd)
          {
            LODWORD(v917.value) = 0;
            CFNumberGetValue(numberd, kCFNumberSInt32Type, &v917);
            if (*allocator == 1)
            {
              v196 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v196 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v196;
              }

              if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 136315138;
                *&valuePtr[4] = "SetVideoOutputConfigurations";
                v197 = "%s - Cannot change Buffer Cache Mode while streaming\n";
                goto LABEL_312;
              }

              goto LABEL_551;
            }

            DWORD1(v874) = v917.value;
          }

          if (poolc)
          {
            v384 = CFEqual(poolc, *MEMORY[0x277CBED28]);
            if (*allocator == 1)
            {
              v196 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v196 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v196;
              }

              if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 136315138;
                *&valuePtr[4] = "SetVideoOutputConfigurations";
                v197 = "%s - Cannot change Attach Raw while streaming\n";
                goto LABEL_312;
              }

LABEL_1221:
              v105 = 0;
              v18 = 4294954516;
              LOBYTE(v99) = cf1;
              LODWORD(v102) = theDict;
LABEL_108:
              if (!v99)
              {
                goto LABEL_1939;
              }

              goto LABEL_1935;
            }

            BYTE8(v874) = v384 != 0;
          }

          if (v707)
          {
            LODWORD(v917.value) = 0;
            CFNumberGetValue(v707, kCFNumberFloatType, &v917);
            if (*allocator == 1)
            {
              v196 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v196 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v196;
              }

              if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 136315138;
                *&valuePtr[4] = "SetVideoOutputConfigurations";
                v197 = "%s - Cannot change Max Output Framerate while output is active\n";
                goto LABEL_312;
              }

              goto LABEL_551;
            }

            if (*&v917.value > *(a2 + 52))
            {
              v385 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v385 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v385;
              }

              if (os_log_type_enabled(v385, OS_LOG_TYPE_DEFAULT))
              {
                v386 = *(a2 + 52);
                *valuePtr = 136315394;
                *&valuePtr[4] = "SetVideoOutputConfigurations";
                *&valuePtr[12] = 2048;
                *&valuePtr[14] = v386;
                v197 = "%s - Cannot be greater than streaming max framerate %.3f\n";
                v198 = valuePtr;
                v241 = v385;
                v242 = 22;
                goto LABEL_550;
              }

              goto LABEL_551;
            }

            DWORD2(v878) = v917.value;
          }

          if (!v700)
          {
            goto LABEL_1116;
          }

          if (*allocator == 1)
          {
            v196 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v196 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v196;
            }

            if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v197 = "%s - Cannot change Client Buffer Pool while streaming\n";
              goto LABEL_312;
            }

            goto LABEL_1221;
          }

          if (v879[0])
          {
            CVPixelBufferPoolRelease(v879[0]);
            v879[0] = 0;
          }

          v390 = 0;
          v391 = &v879[1];
          do
          {
            v392 = v879[v390 + 1];
            if (v392)
            {
              CVPixelBufferRelease(v392);
              v879[v390 + 1] = 0;
            }

            ++v390;
          }

          while (v390 != 4);
          if (CFEqual(v700, *MEMORY[0x277CBEEE8]))
          {
LABEL_1116:
            v752 = 0;
            goto LABEL_1117;
          }

          v406 = CVPixelBufferPoolGetPixelBufferAttributes(v700);
          if (v406)
          {
            v407 = v406;
            LODWORD(v917.value) = 0;
            v806 = 0;
            v408 = CFDictionaryGetValue(v406, *MEMORY[0x277CC4EC8]);
            CFNumberGetValue(v408, kCFNumberIntType, &v917);
            v409 = CFDictionaryGetValue(v407, *MEMORY[0x277CC4DD8]);
            CFNumberGetValue(v409, kCFNumberIntType, &v806);
            if (LODWORD(v917.value) >= DWORD1(v871) && v806 >= DWORD2(v871))
            {
              v879[0] = CVPixelBufferPoolRetain(v700);
              v430 = CVPixelBufferPoolGetMinBufferCount();
              v431 = dword_281003314;
              if (!dword_281003314)
              {
                v432 = *(a2 + 48);
                v433 = *(a2 + 192);
                if (v432 < v433)
                {
                  v433 = 0;
                }

                v431 = *(*(a2 + 184) + 120 * (v432 - v433) + 116);
              }

              v757 = v431 - *(a2 + 92);
              LODWORD(v874) = ~v757 + v430;
              if (v874 < 0)
              {
                v439 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v439 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v439;
                }

                if (os_log_type_enabled(v439, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 136315138;
                  *&valuePtr[4] = "SetVideoOutputConfigurations";
                  _os_log_impl(&dword_2247DB000, v439, OS_LOG_TYPE_DEFAULT, "%s - Not enough buffers in client pool\n", valuePtr, 0xCu);
                }

                v105 = 0;
                v18 = 4294954516;
                v114 = cf1;
                LODWORD(v102) = theDict;
LABEL_1934:
                if (!v114)
                {
LABEL_1939:
                  if (v102)
                  {
                    for (i = 0; i != 4; ++i)
                    {
                      v551 = v892[i + 1];
                      if (v551)
                      {
                        CVPixelBufferRelease(v551);
                        v892[i + 1] = 0;
                      }
                    }
                  }

                  if (v105)
                  {
                    for (j = 0; j != 4; ++j)
                    {
                      v553 = v879[j + 1];
                      if (v553)
                      {
                        CVPixelBufferRelease(v553);
                        v879[j + 1] = 0;
                      }
                    }
                  }

                  return v18;
                }

LABEL_1935:
                for (k = 0; k != 4; ++k)
                {
                  v549 = v959[k + 1];
                  if (v549)
                  {
                    CVPixelBufferRelease(v549);
                    v959[k + 1] = 0;
                  }
                }

                goto LABEL_1939;
              }

              dicte = CVPixelBufferPoolRetain(v879[0]);
              LODWORD(v917.value) = CVPixelBufferPoolGetMinBufferCount();
              v434 = *MEMORY[0x277CBECE8];
              v435 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (v435)
              {
                v436 = v435;
                v437 = CFNumberCreate(v434, kCFNumberSInt32Type, &v917);
                CFDictionarySetValue(v436, *MEMORY[0x277CC4E40], v437);
                CFRelease(v437);
                v438 = fmin(v757, 4.0);
                v752 = v438 > 0;
                if (v438 >= 1)
                {
                  do
                  {
                    *valuePtr = 0;
                    CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(v434, dicte, v436, valuePtr);
                    *v391++ = *valuePtr;
                    --v438;
                  }

                  while (v438);
                }

                CFRelease(v436);
              }

              else
              {
                v752 = 0;
              }

              CVPixelBufferPoolRelease(dicte);
LABEL_1117:
              if (v694 && (v393 = CFEqual(v694, *MEMORY[0x277CBED28]) != 0, BYTE4(v878) = v393, *(a2 + 160)) && *(a2 + 1236) != v393)
              {
                v211 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v211 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v211;
                }

                if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 136315138;
                  *&valuePtr[4] = "SetVideoOutputConfigurations";
                  v212 = "%s - Cannot change Face Tracking Enable while streaming\n";
                  goto LABEL_481;
                }
              }

              else
              {
                if (!v689 || (v394 = CFEqual(v689, *MEMORY[0x277CBED28]) != 0, BYTE5(v878) = v394, !*(a2 + 160)) || *(a2 + 1237) == v394)
                {
                  LODWORD(v102) = theDict;
                  v100 = v728;
                  goto LABEL_72;
                }

                v211 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v211 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v211;
                }

                if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 136315138;
                  *&valuePtr[4] = "SetVideoOutputConfigurations";
                  v212 = "%s - Cannot change Segmentation Enable while streaming\n";
                  goto LABEL_481;
                }
              }

              v18 = 4294954612;
              goto LABEL_1077;
            }

            v410 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v410 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v410;
            }

            if (!os_log_type_enabled(v410, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_551;
            }

            *valuePtr = 136316162;
            *&valuePtr[4] = "SetVideoOutputConfigurations";
            *&valuePtr[12] = 1024;
            *&valuePtr[14] = v917.value;
            *&valuePtr[18] = 1024;
            *&valuePtr[20] = v806;
            *&valuePtr[24] = 1024;
            *&valuePtr[26] = DWORD1(v871);
            *&valuePtr[30] = 1024;
            *&valuePtr[32] = DWORD2(v871);
            v411 = "%s - IntermediateTap ClientBufferPool %dx%d is smaller than OutputSize %dx%d\n";
            v412 = v410;
            v413 = 36;
          }

          else
          {
            v428 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v428 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v428;
            }

            if (!os_log_type_enabled(v428, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1221;
            }

            *valuePtr = 136315138;
            *&valuePtr[4] = "SetVideoOutputConfigurations";
            v411 = "%s - IntermediateTap ClientBufferPool Attribute is not available\n";
            v412 = v428;
            v413 = 12;
          }

          _os_log_error_impl(&dword_2247DB000, v412, OS_LOG_TYPE_ERROR, v411, valuePtr, v413);
          goto LABEL_551;
        }

        v196 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v196 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v196;
        }

        if (!os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_551;
        }

        LODWORD(v917.value) = 136315138;
        *(&v917.value + 4) = "SetVideoOutputConfigurations";
        v197 = "%s - Invalid crop params, must be divisible by 2\n";
LABEL_548:
        v198 = &v917;
        goto LABEL_549;
      }

      v240 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v240 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v240;
      }

      if (!os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_551;
      }

      LODWORD(v917.value) = 136315394;
      *(&v917.value + 4) = "SetVideoOutputConfigurations";
      LOWORD(v917.flags) = 1024;
      *(&v917.flags + 2) = HIDWORD(v810);
      v197 = "%s - Invalid crop y/height for selected output height %d\n";
      v198 = &v917;
LABEL_495:
      v241 = v240;
LABEL_496:
      v242 = 18;
LABEL_550:
      _os_log_impl(&dword_2247DB000, v241, OS_LOG_TYPE_DEFAULT, v197, v198, v242);
      goto LABEL_551;
    }
  }

  v752 = 0;
  v729 = 0;
LABEL_72:
  v732 = (a2 + 1504);
  v110 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6660]);
  if (!v110 || (v111 = v110, v112 = CFGetTypeID(v110), v112 != CFDictionaryGetTypeID()))
  {
    number = 0;
    dict = 0;
LABEL_84:
    v115 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6668]);
    theDict = v102;
    v725 = v100;
    if (!v115 || (v116 = v115, v117 = CFGetTypeID(v115), v117 != CFDictionaryGetTypeID()))
    {
LABEL_1266:
      v440 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6670]);
      if (v440)
      {
        v441 = v440;
        v442 = CFGetTypeID(v440);
        if (v442 == CFDictionaryGetTypeID())
        {
          if (!ConfigSupportsContextSwitchCaptures(a2, a4, 0, 0))
          {
            goto LABEL_1917;
          }

          if (CFDictionaryGetValue(v441, *MEMORY[0x277CF66F0]) || CFDictionaryGetValue(v441, *MEMORY[0x277CF65F8]) || CFDictionaryGetValue(v441, *MEMORY[0x277CF65A8]) || CFDictionaryGetValue(v441, *MEMORY[0x277CF6580]) || CFDictionaryGetValue(v441, *MEMORY[0x277CF6540]) || CFDictionaryGetValue(v441, *MEMORY[0x277CF65C0]) || CFDictionaryGetValue(v441, *MEMORY[0x277CF6248]) || CFDictionaryGetValue(v441, *MEMORY[0x277CF6250]) || CFDictionaryGetValue(v441, *MEMORY[0x277CF6240]) || CFDictionaryGetValue(v441, *MEMORY[0x277CF65B0]) || CFDictionaryGetValue(v441, *MEMORY[0x277CF6598]) || CFDictionaryGetValue(v441, *MEMORY[0x277CF65E0]) || CFDictionaryGetValue(v441, *MEMORY[0x277CF6260]) || CFDictionaryGetValue(v441, *MEMORY[0x277CF66E8]) || CFDictionaryGetValue(v441, *MEMORY[0x277CF65D8]) || CFDictionaryGetValue(v441, *MEMORY[0x277CF65A0]) || CFDictionaryGetValue(v441, *MEMORY[0x277CF65D0]) || CFDictionaryGetValue(v441, *MEMORY[0x277CF6228]))
          {
            v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v118 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
            }

            if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v119 = "%s - Invalid property for still image quadra\n";
              goto LABEL_1911;
            }

            goto LABEL_1917;
          }

          v443 = CFDictionaryGetValue(v441, *MEMORY[0x277CF6578]);
          v444 = CFDictionaryGetValue(v441, *MEMORY[0x277CF65C8]);
          v445 = CFDictionaryGetValue(v441, *MEMORY[0x277CF6548]);
          if (v443)
          {
            *valuePtr = 0;
            CFNumberGetValue(v443, kCFNumberLongLongType, valuePtr);
            v790 = *valuePtr;
          }

          if (v444)
          {
            *valuePtr = 0;
            CFNumberGetValue(v444, kCFNumberSInt32Type, valuePtr);
            v789 = *valuePtr;
          }

          if (v445)
          {
            LODWORD(v917.value) = 0;
            CFNumberGetValue(v445, kCFNumberSInt32Type, &v917);
            if (*(a2 + 1704) == 1)
            {
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v119 = "%s - Cannot change Buffer Cache Mode while streaming\n";
              goto LABEL_1911;
            }

            v791 = v917.value;
          }
        }
      }

      v446 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6620]);
      if (v446)
      {
        v447 = v446;
        v448 = CFGetTypeID(v446);
        if (v448 == CFDictionaryGetTypeID())
        {
          if (CFDictionaryGetValue(v447, *MEMORY[0x277CF65C0]) || CFDictionaryGetValue(v447, *MEMORY[0x277CF65F8]) || CFDictionaryGetValue(v447, *MEMORY[0x277CF65A8]) || CFDictionaryGetValue(v447, *MEMORY[0x277CF6580]) || CFDictionaryGetValue(v447, *MEMORY[0x277CF6548]) || CFDictionaryGetValue(v447, *MEMORY[0x277CF66F0]) || CFDictionaryGetValue(v447, *MEMORY[0x277CF6248]) || CFDictionaryGetValue(v447, *MEMORY[0x277CF6250]) || CFDictionaryGetValue(v447, *MEMORY[0x277CF6240]) || CFDictionaryGetValue(v447, *MEMORY[0x277CF65B0]) || CFDictionaryGetValue(v447, *MEMORY[0x277CF6238]) || CFDictionaryGetValue(v447, *MEMORY[0x277CF6598]) || CFDictionaryGetValue(v447, *MEMORY[0x277CF65E0]) || CFDictionaryGetValue(v447, *MEMORY[0x277CF6260]) || CFDictionaryGetValue(v447, *MEMORY[0x277CF66E8]) || CFDictionaryGetValue(v447, *MEMORY[0x277CF65D8]) || CFDictionaryGetValue(v447, *MEMORY[0x277CF65A0]) || CFDictionaryGetValue(v447, *MEMORY[0x277CF65D0]) || CFDictionaryGetValue(v447, *MEMORY[0x277CF6228]))
          {
            v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v118 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
            }

            if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v119 = "%s - Invalid property for depth output\n";
              goto LABEL_1911;
            }

            goto LABEL_1917;
          }

          v449 = CFDictionaryGetValue(v447, *MEMORY[0x277CF6578]);
          v450 = CFDictionaryGetValue(v447, *MEMORY[0x277CF65C8]);
          v451 = CFDictionaryGetValue(v447, *MEMORY[0x277CF6540]);
          if (v449)
          {
            *valuePtr = 0;
            CFNumberGetValue(v449, kCFNumberLongLongType, valuePtr);
            v784 = *valuePtr;
          }

          if (v450)
          {
            LODWORD(v917.value) = 0;
            CFNumberGetValue(v450, kCFNumberSInt32Type, &v917);
            if (*(a2 + 1904) == 1)
            {
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v119 = "%s - Cannot change Retained Buffer Count while streaming\n";
              goto LABEL_1911;
            }

            v786 = v917.value;
          }

          if (v451)
          {
            v452 = CFEqual(v451, *MEMORY[0x277CBED28]);
            if (*(a2 + 1904) == 1)
            {
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v119 = "%s - Cannot change Attach Raw while streaming\n";
              goto LABEL_1911;
            }

            v785 = v452 != 0;
          }
        }
      }

      v453 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6650]);
      if (v453)
      {
        v454 = v453;
        v455 = CFGetTypeID(v453);
        if (v455 == CFDictionaryGetTypeID())
        {
          if ((*(a2 + 4256) & 1) == 0)
          {
            v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v118 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
            }

            if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v119 = "%s - Must be an IR sensor to set raw output\n";
              goto LABEL_1911;
            }

            goto LABEL_1917;
          }

          if (CFDictionaryGetValue(v454, *MEMORY[0x277CF65F8]) || CFDictionaryGetValue(v454, *MEMORY[0x277CF65A8]) || CFDictionaryGetValue(v454, *MEMORY[0x277CF6580]) || CFDictionaryGetValue(v454, *MEMORY[0x277CF6548]) || CFDictionaryGetValue(v454, *MEMORY[0x277CF66F0]) || CFDictionaryGetValue(v454, *MEMORY[0x277CF6248]) || CFDictionaryGetValue(v454, *MEMORY[0x277CF6250]) || CFDictionaryGetValue(v454, *MEMORY[0x277CF6240]) || CFDictionaryGetValue(v454, *MEMORY[0x277CF65B0]) || CFDictionaryGetValue(v454, *MEMORY[0x277CF6238]) || CFDictionaryGetValue(v454, *MEMORY[0x277CF6598]) || CFDictionaryGetValue(v454, *MEMORY[0x277CF65E0]) || CFDictionaryGetValue(v454, *MEMORY[0x277CF6260]) || CFDictionaryGetValue(v454, *MEMORY[0x277CF66E8]) || CFDictionaryGetValue(v454, *MEMORY[0x277CF65D8]) || CFDictionaryGetValue(v454, *MEMORY[0x277CF65A0]) || CFDictionaryGetValue(v454, *MEMORY[0x277CF65D0]) || CFDictionaryGetValue(v454, *MEMORY[0x277CF6228]))
          {
            v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v118 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
            }

            if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v119 = "%s - Invalid property for raw output\n";
              goto LABEL_1911;
            }

            goto LABEL_1917;
          }

          v456 = CFDictionaryGetValue(v454, *MEMORY[0x277CF6578]);
          v457 = CFDictionaryGetValue(v454, *MEMORY[0x277CF65C0]);
          v458 = CFDictionaryGetValue(v454, *MEMORY[0x277CF65C8]);
          v459 = CFDictionaryGetValue(v454, *MEMORY[0x277CF6540]);
          if (v456)
          {
            *valuePtr = 0;
            CFNumberGetValue(v456, kCFNumberLongLongType, valuePtr);
            v782 = *valuePtr;
          }

          if (v457)
          {
            LODWORD(v917.value) = 0;
            CFNumberGetValue(v457, kCFNumberSInt32Type, &v917);
            if (*(a2 + 2104) == 1)
            {
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v119 = "%s - Cannot change Pixel Format while streaming\n";
              goto LABEL_1911;
            }

            v460 = v917.value;
            if ((LODWORD(v917.value) - 1278226736) > 6 || ((1 << (LOBYTE(v917.value) - 48)) & 0x45) == 0)
            {
              v286 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v286 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v286;
              }

              if (!os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              *valuePtr = 136315394;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              *&valuePtr[12] = 1024;
              *&valuePtr[14] = v917.value;
              v119 = "%s - Selected IR pixel format not supported 0x%08X\n";
              goto LABEL_680;
            }
          }

          else
          {
            v460 = 1278226742;
          }

          v771 = v460;
          if (v458)
          {
            LODWORD(v917.value) = 0;
            CFNumberGetValue(v458, kCFNumberSInt32Type, &v917);
            if (*(a2 + 2104) == 1)
            {
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v119 = "%s - Cannot change Retained Buffer Count while streaming\n";
              goto LABEL_1911;
            }

            v775 = v917.value;
          }

          if (v459)
          {
            v461 = CFEqual(v459, *MEMORY[0x277CBED28]);
            if (*(a2 + 2104) == 1)
            {
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v119 = "%s - Cannot change Attach Raw while streaming\n";
              goto LABEL_1911;
            }

            v774 = v461 != 0;
          }
        }
      }

      v462 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6648]);
      if (!v462)
      {
        goto LABEL_1471;
      }

      v463 = v462;
      v464 = CFGetTypeID(v462);
      if (v464 != CFDictionaryGetTypeID())
      {
        goto LABEL_1471;
      }

      if (CFDictionaryGetValue(v463, *MEMORY[0x277CF65F8]) || CFDictionaryGetValue(v463, *MEMORY[0x277CF65A8]) || CFDictionaryGetValue(v463, *MEMORY[0x277CF6580]) || CFDictionaryGetValue(v463, *MEMORY[0x277CF6548]) || CFDictionaryGetValue(v463, *MEMORY[0x277CF66F0]) || CFDictionaryGetValue(v463, *MEMORY[0x277CF6248]) || CFDictionaryGetValue(v463, *MEMORY[0x277CF6250]) || CFDictionaryGetValue(v463, *MEMORY[0x277CF6240]) || CFDictionaryGetValue(v463, *MEMORY[0x277CF65B0]) || CFDictionaryGetValue(v463, *MEMORY[0x277CF6238]) || CFDictionaryGetValue(v463, *MEMORY[0x277CF6598]) || CFDictionaryGetValue(v463, *MEMORY[0x277CF65E0]) || CFDictionaryGetValue(v463, *MEMORY[0x277CF6260]) || CFDictionaryGetValue(v463, *MEMORY[0x277CF66E8]) || CFDictionaryGetValue(v463, *MEMORY[0x277CF65D8]) || CFDictionaryGetValue(v463, *MEMORY[0x277CF65A0]) || CFDictionaryGetValue(v463, *MEMORY[0x277CF65D0]) || CFDictionaryGetValue(v463, *MEMORY[0x277CF6228]) || CFDictionaryGetValue(v463, *MEMORY[0x277CF6540]))
      {
        v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v118 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
        }

        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v119 = "%s - Invalid property for ProResRAW output\n";
          goto LABEL_1911;
        }

        goto LABEL_1917;
      }

      v465 = CFDictionaryGetValue(v463, *MEMORY[0x277CF6578]);
      v466 = CFDictionaryGetValue(v463, *MEMORY[0x277CF65C8]);
      v467 = CFDictionaryGetValue(v463, *MEMORY[0x277CF65C0]);
      v468 = CFDictionaryGetValue(v463, *MEMORY[0x277CF6550]);
      if (v465)
      {
        *valuePtr = 0;
        CFNumberGetValue(v465, kCFNumberLongLongType, valuePtr);
        v767 = *valuePtr;
      }

      if (v466)
      {
        LODWORD(v917.value) = 0;
        CFNumberGetValue(v466, kCFNumberSInt32Type, &v917);
        if (*(a2 + 2304) == 1)
        {
          v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v118 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
          }

          if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_1914;
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v119 = "%s - Cannot change Retained Buffer Count while streaming\n";
          goto LABEL_1911;
        }

        v793 = v917.value;
      }

      if (!v467)
      {
        v469 = v765;
LABEL_1450:
        if (v468)
        {
          if (*(a2 + 2304) == 1)
          {
            v474 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v474 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v474;
            }

            if (!os_log_type_enabled(v474, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_1457;
            }

            *valuePtr = 136315138;
            *&valuePtr[4] = "SetVideoOutputConfigurations";
            v475 = "%s - Cannot change Client Buffer Pool while streaming\n";
LABEL_1456:
            _os_log_impl(&dword_2247DB000, v474, OS_LOG_TYPE_DEFAULT, v475, valuePtr, 0xCu);
LABEL_1457:
            v765 = v469;
            goto LABEL_1914;
          }

          v476 = *(a2 + 2448);
          if (v476)
          {
            CVPixelBufferPoolRelease(v476);
            *(a2 + 2448) = 0;
          }

          if (!CFEqual(v468, *MEMORY[0x277CBEEE8]))
          {
            v794 = CVPixelBufferPoolRetain(v468);
            v793 = CVPixelBufferPoolGetMinBufferCount();
            if (v793 < 0)
            {
              v474 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v474 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v474;
              }

              if (!os_log_type_enabled(v474, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1457;
              }

              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v475 = "%s - Not enough buffers in client pool\n";
              goto LABEL_1456;
            }
          }
        }

        v765 = v469;
LABEL_1471:
        v477 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6678]);
        if (!v477)
        {
          goto LABEL_1674;
        }

        v478 = v477;
        v479 = CFGetTypeID(v477);
        if (v479 != CFDictionaryGetTypeID())
        {
          goto LABEL_1674;
        }

        if (CFDictionaryGetValue(v478, *MEMORY[0x277CF66F0]) || CFDictionaryGetValue(v478, *MEMORY[0x277CF65B0]) || CFDictionaryGetValue(v478, *MEMORY[0x277CF6598]) || CFDictionaryGetValue(v478, *MEMORY[0x277CF65E0]) || CFDictionaryGetValue(v478, *MEMORY[0x277CF6260]) || CFDictionaryGetValue(v478, *MEMORY[0x277CF66E8]) || CFDictionaryGetValue(v478, *MEMORY[0x277CF65D8]) || CFDictionaryGetValue(v478, *MEMORY[0x277CF65A0]) || CFDictionaryGetValue(v478, *MEMORY[0x277CF65D0]))
        {
          v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v118 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
          }

          if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
          {
            *valuePtr = 136315138;
            *&valuePtr[4] = "SetVideoOutputConfigurations";
            v119 = "%s - Invalid property for still image raw output\n";
            goto LABEL_1911;
          }

          goto LABEL_1917;
        }

        v480 = CFDictionaryGetValue(v478, *MEMORY[0x277CF6578]);
        poole = CFDictionaryGetValue(v478, *MEMORY[0x277CF65C0]);
        v709 = CFDictionaryGetValue(v478, *MEMORY[0x277CF65F8]);
        v702 = CFDictionaryGetValue(v478, *MEMORY[0x277CF65A8]);
        v481 = CFDictionaryGetValue(v478, *MEMORY[0x277CF6580]);
        v691 = CFDictionaryGetValue(v478, *MEMORY[0x277CF65C8]);
        v696 = CFDictionaryGetValue(v478, *MEMORY[0x277CF6548]);
        v687 = CFDictionaryGetValue(v478, *MEMORY[0x277CF6540]);
        v672 = CFDictionaryGetValue(v478, *MEMORY[0x277CF6238]);
        v675 = CFDictionaryGetValue(v478, *MEMORY[0x277CF6230]);
        v678 = CFDictionaryGetValue(v478, *MEMORY[0x277CF6218]);
        v681 = CFDictionaryGetValue(v478, *MEMORY[0x277CF6248]);
        BOOLeana = CFDictionaryGetValue(v478, *MEMORY[0x277CF6250]);
        v667 = CFDictionaryGetValue(v478, *MEMORY[0x277CF6240]);
        v665 = CFDictionaryGetValue(v478, *MEMORY[0x277CF6210]);
        v684 = CFDictionaryGetValue(v478, *MEMORY[0x277CF6228]);
        v663 = CFDictionaryGetValue(v478, *MEMORY[0x277CF6258]);
        v482 = CFDictionaryGetValue(v478, *MEMORY[0x277CF6220]);
        if (v480)
        {
          *valuePtr = 0;
          CFNumberGetValue(v480, kCFNumberLongLongType, valuePtr);
          *(&v814 + 1) = *valuePtr;
        }

        if (!poole)
        {
          goto LABEL_1499;
        }

        LODWORD(v917.value) = 0;
        CFNumberGetValue(poole, kCFNumberSInt32Type, &v917);
        if (*v760 == 1)
        {
          v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v118 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
          }

          if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_1914;
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v119 = "%s - Cannot change Pixel Format while streaming\n";
          goto LABEL_1911;
        }

        if ((*(a2 + 4256) & 1) == 0 && !H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1785950322))
        {
          v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v118 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
          }

          if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_1914;
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v119 = "%s - Cannot change Pixel Format on unsupported stream\n";
          goto LABEL_1911;
        }

        v483 = v917.value;
        if ((LODWORD(v917.value) - 1278226736) <= 6 && ((1 << (LOBYTE(v917.value) - 48)) & 0x45) != 0)
        {
LABEL_1498:
          LODWORD(v815) = v483;
LABEL_1499:
          if (v709)
          {
            LODWORD(v917.value) = 0;
            CFNumberGetValue(v709, kCFNumberSInt32Type, &v917);
            if (*v760 == 1)
            {
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v119 = "%s - Cannot change Width while streaming\n";
              goto LABEL_1911;
            }

            if ((v917.value & 1) != 0 || SLODWORD(v917.value) > v807 || SLODWORD(v917.value) < v807 >> 2)
            {
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v119 = "%s - Invalid width for raw width or alignment\n";
              goto LABEL_1911;
            }

            DWORD1(v815) = v917.value;
          }

          if (v702)
          {
            LODWORD(v917.value) = 0;
            CFNumberGetValue(v702, kCFNumberSInt32Type, &v917);
            if (*v760 == 1)
            {
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v119 = "%s - Cannot change Height while streaming\n";
              goto LABEL_1911;
            }

            if ((v917.value & 1) != 0 || SLODWORD(v917.value) > v808 || SLODWORD(v917.value) < v808 >> 2)
            {
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v119 = "%s - Invalid height for raw height or alignment\n";
              goto LABEL_1911;
            }

            DWORD2(v815) = v917.value;
          }

          if (v481)
          {
            if (!CGRectMakeWithDictionaryRepresentation(v481, valuePtr))
            {
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              LODWORD(v917.value) = 136315138;
              *(&v917.value + 4) = "SetVideoOutputConfigurations";
              v119 = "%s - Failed to read Crop Rect\n";
              goto LABEL_1540;
            }

            LOWORD(v484) = v807;
            if (*valuePtr + *&valuePtr[16] > v484)
            {
              v286 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v286 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v286;
              }

              if (!os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              LODWORD(v917.value) = 136315394;
              *(&v917.value + 4) = "SetVideoOutputConfigurations";
              LOWORD(v917.flags) = 1024;
              *(&v917.flags + 2) = v807;
              v119 = "%s - Invalid crop x/width for selected output width %d\n";
              goto LABEL_1564;
            }

            LOWORD(v485) = v808;
            if (*&valuePtr[8] + *&valuePtr[24] > v485)
            {
              v286 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v286 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v286;
              }

              if (!os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              goto LABEL_1553;
            }

            v486 = DWORD1(v815);
            if (*valuePtr + *&valuePtr[16] < SDWORD1(v815))
            {
              v286 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v286 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v286;
              }

              if (!os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              LODWORD(v917.value) = 136315394;
              *(&v917.value + 4) = "SetVideoOutputConfigurations";
              LOWORD(v917.flags) = 1024;
              *(&v917.flags + 2) = v486;
              v119 = "%s - Invalid crop x/width for selected output width %d\n";
              goto LABEL_1564;
            }

            v487 = DWORD2(v815);
            if (*&valuePtr[8] + *&valuePtr[24] < SDWORD2(v815))
            {
              v286 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v286 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v286;
              }

              if (!os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              LODWORD(v917.value) = 136315394;
              *(&v917.value + 4) = "SetVideoOutputConfigurations";
              LOWORD(v917.flags) = 1024;
              *(&v917.flags + 2) = v487;
              v119 = "%s - Invalid crop y/height for selected output height %d\n";
              goto LABEL_1564;
            }

            if (*valuePtr & 1) != 0 || (*&valuePtr[8] & 1) != 0 || (*&valuePtr[16] & 1) != 0 || (*&valuePtr[24])
            {
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              LODWORD(v917.value) = 136315138;
              *(&v917.value + 4) = "SetVideoOutputConfigurations";
              v119 = "%s - Invalid crop params, must be divisible by 2\n";
              goto LABEL_1540;
            }

            v816 = *valuePtr;
            v817 = *&valuePtr[16];
          }

          if (v691)
          {
            *valuePtr = 0;
            CFNumberGetValue(v691, kCFNumberSInt32Type, valuePtr);
            LODWORD(v818) = *valuePtr;
          }

          if (v696)
          {
            LODWORD(v917.value) = 0;
            CFNumberGetValue(v696, kCFNumberSInt32Type, &v917);
            if (*v760 == 1)
            {
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v119 = "%s - Cannot change Buffer Cache Mode while streaming\n";
              goto LABEL_1911;
            }

            DWORD1(v818) = v917.value;
          }

          if (v687)
          {
            v488 = CFEqual(v687, *MEMORY[0x277CBED28]);
            if (*v760 == 1)
            {
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v119 = "%s - Cannot change Attach Raw while streaming\n";
              goto LABEL_1911;
            }

            BYTE8(v818) = v488 != 0;
          }

          if (v684)
          {
            v489 = CFEqual(v684, *MEMORY[0x277CBED28]) != 0;
            if (*(a2 + 2577) != v489)
            {
              if (*(a2 + 160))
              {
                v237 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v237 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v237;
                }

                if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 136315138;
                  *&valuePtr[4] = "SetVideoOutputConfigurations";
                  v238 = "%s - Cannot change Attach Thumbnail Raw while streaming\n";
                  goto LABEL_694;
                }

                goto LABEL_1760;
              }

              if (*v760 == 1)
              {
                v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v118 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
                }

                if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_1914;
                }

                *valuePtr = 136315138;
                *&valuePtr[4] = "SetVideoOutputConfigurations";
                v119 = "%s - Cannot change Attach Thumbnail Raw while output is enabled\n";
                goto LABEL_1911;
              }
            }

            BYTE9(v818) = v489;
          }

          if (v672)
          {
            BYTE8(v821) = CFEqual(v672, *MEMORY[0x277CBED28]) != 0;
          }

          if (v675)
          {
            *valuePtr = 0;
            CFNumberGetValue(v675, kCFNumberSInt32Type, valuePtr);
            HIDWORD(v821) = *valuePtr;
          }

          if (v678)
          {
            *valuePtr = 0;
            CFNumberGetValue(v678, kCFNumberSInt32Type, valuePtr);
            LODWORD(v822) = *valuePtr;
          }

          if (v681)
          {
            v490 = CFEqual(v681, *MEMORY[0x277CBED28]);
            if (*v760 == 1)
            {
              v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v221 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
              }

              if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 136315138;
                *&valuePtr[4] = "SetVideoOutputConfigurations";
                v222 = "%s - Cannot change Time Machine Enable while streaming\n";
                goto LABEL_1074;
              }

              goto LABEL_1914;
            }

            if (*(a2 + 160))
            {
              v491 = v490 != 0;
              if (*(a2 + 2588) != v491)
              {
                v237 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v237 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v237;
                }

                if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 136315138;
                  *&valuePtr[4] = "SetVideoOutputConfigurations";
                  v238 = "%s - Cannot change Time Machine Enable while streaming\n";
                  goto LABEL_694;
                }

                goto LABEL_1760;
              }
            }

            else
            {
              LOBYTE(v491) = v490 != 0;
            }

            BYTE4(v819) = v491;
          }

          if (BOOLeana)
          {
            LODWORD(v917.value) = 0;
            CFNumberGetValue(BOOLeana, kCFNumberSInt32Type, &v917);
            if (*v760 == 1)
            {
              v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v221 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
              }

              if (!os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1075;
              }

              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v222 = "%s - Cannot change Time Machine Ring Buffer Capacity while streaming\n";
              goto LABEL_1074;
            }

            if (*(a2 + 160) && LODWORD(v917.value) != *(a2 + 2592))
            {
              v237 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v237 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v237;
              }

              if (!os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_695;
              }

              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v238 = "%s - Cannot change Time Machine Ring Buffer Capacity while streaming\n";
              goto LABEL_694;
            }

            DWORD2(v819) = v917.value;
            dict = 1;
          }

          if (v667)
          {
            LODWORD(v917.value) = 0;
            CFNumberGetValue(v667, kCFNumberSInt32Type, &v917);
            if (*v760 == 1)
            {
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v119 = "%s - Cannot change Time Machine Buffer Replacement Scheme while streaming\n";
              goto LABEL_1911;
            }

            if (LODWORD(v917.value) >= 2)
            {
              LODWORD(v917.value) = -1;
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v119 = "%s - Not a recognized buffer replacement scheme\n";
              goto LABEL_1911;
            }

            HIDWORD(v819) = v917.value;
            dict = 1;
          }

          if (v665)
          {
            v492 = CFBooleanGetValue(v665) != 0;
            if (*(a2 + 2600) != v492)
            {
              if (*(a2 + 160))
              {
                v237 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v237 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v237;
                }

                if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 136315138;
                  *&valuePtr[4] = "SetVideoOutputConfigurations";
                  v238 = "%s - Cannot attach debug pixel buffer while streaming\n";
                  goto LABEL_694;
                }

                goto LABEL_1760;
              }

              if (*v760 == 1)
              {
                v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v221 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
                }

                if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 136315138;
                  *&valuePtr[4] = "SetVideoOutputConfigurations";
                  v222 = "%s - Cannot attach debug pixel while output is enabled\n";
                  goto LABEL_1074;
                }

                goto LABEL_1914;
              }
            }

            LOBYTE(v820) = v492;
          }

          if (v663)
          {
            v493 = CFEqual(v663, *MEMORY[0x277CBED28]) != 0;
            if (*v760 == 1)
            {
              v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v221 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
              }

              if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 136315138;
                *&valuePtr[4] = "SetVideoOutputConfigurations";
                v222 = "%s - Cannot change Time Machine SIFR Enable while output is enabled\n";
                goto LABEL_1074;
              }

              goto LABEL_1914;
            }

            if (*(a2 + 160) && *(a2 + 2688) != v493)
            {
              v237 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v237 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v237;
              }

              if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 136315138;
                *&valuePtr[4] = "SetVideoOutputConfigurations";
                v238 = "%s - Cannot change Time Machine SIFR Enable while streaming\n";
                goto LABEL_694;
              }

              goto LABEL_1760;
            }

            BYTE8(v825) = v493;
          }

          if (!v482)
          {
LABEL_1674:
            v494 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6638]);
            if (v494)
            {
              v495 = v494;
              v496 = CFGetTypeID(v494);
              if (v496 == CFDictionaryGetTypeID())
              {
                v497 = CFDictionaryGetValue(v495, *MEMORY[0x277CF6578]);
                v498 = CFDictionaryGetValue(v495, *MEMORY[0x277CF65C0]);
                v499 = CFDictionaryGetValue(v495, *MEMORY[0x277CF6590]);
                v500 = CFDictionaryGetValue(v495, *MEMORY[0x277CF65C8]);
                v710 = CFDictionaryGetValue(v495, *MEMORY[0x277CF6540]);
                poolf = CFDictionaryGetValue(v495, *MEMORY[0x277CF6550]);
                if (v497)
                {
                  *valuePtr = 0;
                  CFNumberGetValue(v497, kCFNumberLongLongType, valuePtr);
                  v802 = *valuePtr;
                }

                if (v498)
                {
                  LODWORD(v917.value) = 0;
                  CFNumberGetValue(v498, kCFNumberSInt32Type, &v917);
                  if (*(a2 + 4080) == 1)
                  {
                    v501 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                    {
                      v501 = os_log_create("com.apple.isp", "plugin");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v501;
                    }

                    if (os_log_type_enabled(v501, OS_LOG_TYPE_DEFAULT))
                    {
                      *valuePtr = 136315138;
                      *&valuePtr[4] = "SetVideoOutputConfigurations";
                      v502 = "%s - Cannot change Pixel Format while streaming\n";
LABEL_1713:
                      v508 = v501;
                      v509 = 12;
                      goto LABEL_1714;
                    }

                    goto LABEL_1715;
                  }

                  v503 = *SupportedOutputFormatsPointCloud;
                  if (!*SupportedOutputFormatsPointCloud)
                  {
                    goto LABEL_1695;
                  }

                  v504 = 0;
                  v505 = &SupportedOutputFormatsPointCloud[4];
                  do
                  {
                    v504 |= v503 == LODWORD(v917.value);
                    v506 = *v505;
                    v505 += 4;
                    v503 = v506;
                  }

                  while (v506);
                  if ((v504 & 1) == 0)
                  {
LABEL_1695:
                    v507 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                    {
                      v507 = os_log_create("com.apple.isp", "plugin");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v507;
                    }

                    if (os_log_type_enabled(v507, OS_LOG_TYPE_DEFAULT))
                    {
                      *valuePtr = 136315394;
                      *&valuePtr[4] = "SetVideoOutputConfigurations";
                      *&valuePtr[12] = 1024;
                      *&valuePtr[14] = v917.value;
                      v502 = "%s - Selected pixel format not supported 0x%08X\n";
                      v508 = v507;
                      v509 = 18;
LABEL_1714:
                      _os_log_impl(&dword_2247DB000, v508, OS_LOG_TYPE_DEFAULT, v502, valuePtr, v509);
                      goto LABEL_1715;
                    }

                    goto LABEL_1715;
                  }

                  v798 = v917.value;
                }

                if (v499)
                {
                  LODWORD(v917.value) = 0;
                  CFNumberGetValue(v499, kCFNumberSInt32Type, &v917);
                  if (*(a2 + 4080) == 1)
                  {
                    v501 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                    {
                      v501 = os_log_create("com.apple.isp", "plugin");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v501;
                    }

                    if (os_log_type_enabled(v501, OS_LOG_TYPE_DEFAULT))
                    {
                      *valuePtr = 136315138;
                      *&valuePtr[4] = "SetVideoOutputConfigurations";
                      v502 = "%s - Can not change height while streaming\n";
                      goto LABEL_1713;
                    }

LABEL_1715:
                    v18 = 4294954516;
                    if (!dict)
                    {
                      goto LABEL_1932;
                    }

                    goto LABEL_1919;
                  }

                  v800 = v917.value;
                }

                if (v500)
                {
                  LODWORD(v917.value) = 0;
                  CFNumberGetValue(v500, kCFNumberSInt32Type, &v917);
                  if (*(a2 + 4080) == 1)
                  {
                    v501 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                    {
                      v501 = os_log_create("com.apple.isp", "plugin");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v501;
                    }

                    if (os_log_type_enabled(v501, OS_LOG_TYPE_DEFAULT))
                    {
                      *valuePtr = 136315138;
                      *&valuePtr[4] = "SetVideoOutputConfigurations";
                      v502 = "%s - Cannot change Retained Buffer Count while streaming\n";
                      goto LABEL_1713;
                    }

                    goto LABEL_1715;
                  }

                  v799 = v917.value;
                }

                if (v710)
                {
                  v510 = CFEqual(v710, *MEMORY[0x277CBED28]);
                  if (*(a2 + 4080) == 1)
                  {
                    v501 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                    {
                      v501 = os_log_create("com.apple.isp", "plugin");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v501;
                    }

                    if (os_log_type_enabled(v501, OS_LOG_TYPE_DEFAULT))
                    {
                      *valuePtr = 136315138;
                      *&valuePtr[4] = "SetVideoOutputConfigurations";
                      v502 = "%s - Cannot change Attach Raw while streaming\n";
                      goto LABEL_1713;
                    }

                    goto LABEL_1715;
                  }

                  v797 = v510 != 0;
                }

                if (poolf)
                {
                  *valuePtr = 0;
                  v511 = *(a2 + 4720);
                  if (v511)
                  {
                    H16ISP::H16ISPFilterGraphManager::GetNode(v511, 11, valuePtr);
                  }

                  if (cfa)
                  {
                    CFRelease(cfa);
                    if (*valuePtr)
                    {
                      H16ISP::H16ISPJasperDepthNode::setBufferPool(*valuePtr, 0);
                    }
                  }

                  if (CFEqual(poolf, *MEMORY[0x277CBEEE8]))
                  {
                    cfa = 0;
                  }

                  else
                  {
                    cfa = CFRetain(poolf);
                    if (*valuePtr)
                    {
                      H16ISP::H16ISPJasperDepthNode::setBufferPool(*valuePtr, cfa);
                    }
                  }
                }
              }
            }

            v512 = CFDictionaryGetValue(cf, @"VisPipe");
            if (!v512)
            {
              goto LABEL_1860;
            }

            v513 = v512;
            v514 = CFGetTypeID(v512);
            if (v514 != CFDictionaryGetTypeID())
            {
              goto LABEL_1860;
            }

            if (CFDictionaryGetValue(v513, *MEMORY[0x277CF6548]) || CFDictionaryGetValue(v513, *MEMORY[0x277CF65C0]) || CFDictionaryGetValue(v513, *MEMORY[0x277CF66F0]) || CFDictionaryGetValue(v513, *MEMORY[0x277CF6248]) || CFDictionaryGetValue(v513, *MEMORY[0x277CF6250]) || CFDictionaryGetValue(v513, *MEMORY[0x277CF6240]) || CFDictionaryGetValue(v513, *MEMORY[0x277CF65B0]) || CFDictionaryGetValue(v513, *MEMORY[0x277CF6238]) || CFDictionaryGetValue(v513, *MEMORY[0x277CF6570]) || CFDictionaryGetValue(v513, *MEMORY[0x277CF6598]) || CFDictionaryGetValue(v513, *MEMORY[0x277CF65E0]) || CFDictionaryGetValue(v513, *MEMORY[0x277CF6260]) || CFDictionaryGetValue(v513, *MEMORY[0x277CF66E8]) || CFDictionaryGetValue(v513, *MEMORY[0x277CF65D8]) || CFDictionaryGetValue(v513, *MEMORY[0x277CF65A0]) || CFDictionaryGetValue(v513, *MEMORY[0x277CF65D0]) || CFDictionaryGetValue(v513, *MEMORY[0x277CF6228]))
            {
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 136315138;
                *&valuePtr[4] = "SetVideoOutputConfigurations";
                v119 = "%s - Invalid property for vis pipe output\n";
                goto LABEL_1911;
              }

              goto LABEL_1917;
            }

            v515 = CFDictionaryGetValue(v513, *MEMORY[0x277CF6578]);
            v516 = CFDictionaryGetValue(v513, @"VisPipeRawBitDepth");
            poolg = CFDictionaryGetValue(v513, *MEMORY[0x277CF65F8]);
            v711 = CFDictionaryGetValue(v513, *MEMORY[0x277CF65A8]);
            v517 = CFDictionaryGetValue(v513, *MEMORY[0x277CF6580]);
            v703 = CFDictionaryGetValue(v513, *MEMORY[0x277CF65C8]);
            v697 = CFDictionaryGetValue(v513, *MEMORY[0x277CF6540]);
            v518 = CFDictionaryGetValue(v513, *MEMORY[0x277CF6550]);
            if (v515)
            {
              *valuePtr = 0;
              CFNumberGetValue(v515, kCFNumberLongLongType, valuePtr);
              v768 = *valuePtr;
            }

            if (v516)
            {
              LODWORD(v917.value) = 0;
              if (*(a2 + 2704) == 1)
              {
                v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v118 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
                }

                if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_1914;
                }

                *valuePtr = 136315138;
                *&valuePtr[4] = "SetVideoOutputConfigurations";
                v119 = "%s - Cannot change Raw Bit Depth while streaming\n";
                goto LABEL_1911;
              }

              CFNumberGetValue(v516, kCFNumberSInt32Type, &v917);
              v769 = v917.value;
            }

            if (!v517)
            {
LABEL_1799:
              if (poolg)
              {
                LODWORD(v917.value) = 0;
                if (*(a2 + 2704) == 1)
                {
                  v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                  {
                    v118 = os_log_create("com.apple.isp", "plugin");
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
                  }

                  if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_1914;
                  }

                  *valuePtr = 136315138;
                  *&valuePtr[4] = "SetVideoOutputConfigurations";
                  v119 = "%s - Cannot change Width while streaming\n";
                  goto LABEL_1911;
                }

                CFNumberGetValue(poolg, kCFNumberSInt32Type, &v917);
                if ((v917.value & 1) != 0 || v83 < SLODWORD(v917.value) || v83 * 0.125 > SLODWORD(v917.value))
                {
                  v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                  {
                    v118 = os_log_create("com.apple.isp", "plugin");
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
                  }

                  if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_1914;
                  }

                  *valuePtr = 136315138;
                  *&valuePtr[4] = "SetVideoOutputConfigurations";
                  v119 = "%s - Invalid width for crop width or alignment\n";
                  goto LABEL_1911;
                }

                v773 = v917.value;
              }

              if (v711)
              {
                LODWORD(v917.value) = 0;
                if (*(a2 + 2704) == 1)
                {
                  v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                  {
                    v118 = os_log_create("com.apple.isp", "plugin");
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
                  }

                  if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_1914;
                  }

                  *valuePtr = 136315138;
                  *&valuePtr[4] = "SetVideoOutputConfigurations";
                  v119 = "%s - Cannot change Height while streaming\n";
                  goto LABEL_1911;
                }

                CFNumberGetValue(v711, kCFNumberSInt32Type, &v917);
                if ((v917.value & 1) != 0 || v84 < SLODWORD(v917.value) || v84 * 0.125 > SLODWORD(v917.value))
                {
                  v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                  {
                    v118 = os_log_create("com.apple.isp", "plugin");
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
                  }

                  if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_1914;
                  }

                  *valuePtr = 136315138;
                  *&valuePtr[4] = "SetVideoOutputConfigurations";
                  v119 = "%s - Invalid height for crop height or alignment\n";
                  goto LABEL_1911;
                }

                v772 = v917.value;
              }

              if (v703)
              {
                *valuePtr = 0;
                if (*(a2 + 2704) == 1)
                {
                  goto LABEL_1914;
                }

                CFNumberGetValue(v703, kCFNumberSInt32Type, valuePtr);
                v805 = *valuePtr;
              }

              if (v697)
              {
                if (*(a2 + 2704) == 1)
                {
                  v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                  {
                    v118 = os_log_create("com.apple.isp", "plugin");
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
                  }

                  if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_1914;
                  }

                  *valuePtr = 136315138;
                  *&valuePtr[4] = "SetVideoOutputConfigurations";
                  v119 = "%s - Cannot change Attach Raw while streaming\n";
                  goto LABEL_1911;
                }

                v770 = CFEqual(v697, *MEMORY[0x277CBED28]) != 0;
              }

              if (v518)
              {
                if (*(a2 + 2704) == 1)
                {
                  v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                  {
                    v118 = os_log_create("com.apple.isp", "plugin");
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
                  }

                  if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_1914;
                  }

                  *valuePtr = 136315138;
                  *&valuePtr[4] = "SetVideoOutputConfigurations";
                  v119 = "%s - Cannot change Client Buffer Pool while streaming\n";
                  goto LABEL_1911;
                }

                if (v766)
                {
                  CVPixelBufferPoolRelease(v766);
                }

                if (CFEqual(v518, *MEMORY[0x277CBEEE8]))
                {
                  v766 = 0;
                }

                else
                {
                  v766 = CVPixelBufferPoolRetain(v518);
                  v524 = CVPixelBufferPoolGetMinBufferCount();
                  v525 = dword_281003314;
                  if (!dword_281003314)
                  {
                    v526 = *(a2 + 48);
                    v527 = *(a2 + 192);
                    if (v526 < v527)
                    {
                      v527 = 0;
                    }

                    v525 = *(*(a2 + 184) + 120 * (v526 - v527) + 116);
                  }

                  v805 = ~v525 + v524;
                  if (v805 < 0)
                  {
                    v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                    {
                      v118 = os_log_create("com.apple.isp", "plugin");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
                    }

                    if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_1914;
                    }

                    *valuePtr = 136315138;
                    *&valuePtr[4] = "SetVideoOutputConfigurations";
                    v119 = "%s - Not enough buffers in client pool\n";
                    goto LABEL_1911;
                  }
                }
              }

LABEL_1860:
              if (*(a2 + 2925) == 1)
              {
                HandleSecureStreamOutputConfig(cf, a2, a4);
                v528 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
                {
                  v528 = os_log_create("com.apple.isp", "exclaves");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v528;
                }

                if (os_log_type_enabled(v528, OS_LOG_TYPE_DEFAULT))
                {
                  v529 = *(a2 + 156);
                  v530 = "disabled";
                  if (*(a2 + 2904))
                  {
                    v531 = "enabled";
                  }

                  else
                  {
                    v531 = "disabled";
                  }

                  if (*(a2 + 2920))
                  {
                    v532 = "enabled";
                  }

                  else
                  {
                    v532 = "disabled";
                  }

                  if (*(a2 + 2921))
                  {
                    v533 = "enabled";
                  }

                  else
                  {
                    v533 = "disabled";
                  }

                  if (*(a2 + 2922))
                  {
                    v534 = "enabled";
                  }

                  else
                  {
                    v534 = "disabled";
                  }

                  if (*(a2 + 2923))
                  {
                    v535 = "enabled";
                  }

                  else
                  {
                    v535 = "disabled";
                  }

                  if (*(a2 + 3020))
                  {
                    v536 = "enabled";
                  }

                  else
                  {
                    v536 = "disabled";
                  }

                  if (*(a2 + 2940))
                  {
                    v537 = "enabled";
                  }

                  else
                  {
                    v537 = "disabled";
                  }

                  if (*(a2 + 3021))
                  {
                    v538 = "enabled";
                  }

                  else
                  {
                    v538 = "disabled";
                  }

                  if (*(a2 + 2941))
                  {
                    v539 = "enabled";
                  }

                  else
                  {
                    v539 = "disabled";
                  }

                  if (*(a2 + 2943))
                  {
                    v540 = "enabled";
                  }

                  else
                  {
                    v540 = "disabled";
                  }

                  if (*(a2 + 2944))
                  {
                    v541 = "enabled";
                  }

                  else
                  {
                    v541 = "disabled";
                  }

                  v542 = *(a2 + 3024) == 0;
                  *valuePtr = 136318466;
                  if (!v542)
                  {
                    v530 = "enabled";
                  }

                  *&valuePtr[4] = "SetVideoOutputConfigurations";
                  *&valuePtr[12] = 1024;
                  *&valuePtr[14] = v529;
                  *&valuePtr[18] = 2080;
                  *&valuePtr[20] = v531;
                  *&valuePtr[28] = 2080;
                  *&valuePtr[30] = v532;
                  v897 = 2080;
                  v898 = v533;
                  v899 = 2080;
                  v900 = v534;
                  v901 = 2080;
                  v902 = v535;
                  v903 = 2080;
                  v904 = v536;
                  v905 = 2080;
                  v906 = v537;
                  v907 = 2080;
                  v908 = v538;
                  v909 = 2080;
                  v910 = v539;
                  v911 = 2080;
                  v912 = v540;
                  v913 = 2080;
                  v914 = v541;
                  v915 = 2080;
                  v916 = v530;
                  _os_log_impl(&dword_2247DB000, v528, OS_LOG_TYPE_DEFAULT, "%s - channel %d meta output:%s exclave FD:%s AD:%s ER:%s FT:%s PreCheck:%s FDOD:%s PO:%s MD:%s DPD:%s BaselineStreaming:%s LSE:%s\n", valuePtr, 0x8Au);
                }
              }

              if (SetMetadataOutputConfiguration(cf, a2, a4))
              {
                v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v118 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
                }

                if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 136315138;
                  *&valuePtr[4] = "SetVideoOutputConfigurations";
                  v119 = "%s - Failed to set metadata output configuration\n";
                  goto LABEL_1911;
                }
              }

              else
              {
                v18 = 0;
                if (*(&v891 + 2) <= 0.0 || *(&v878 + 2) <= 0.0)
                {
LABEL_1918:
                  if (!dict)
                  {
                    goto LABEL_1931;
                  }

                  goto LABEL_1919;
                }

                v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v118 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
                }

                if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                {
                  *valuePtr = 136315138;
                  *&valuePtr[4] = "SetVideoOutputConfigurations";
                  v119 = "%s - Unable to have decimation enabled on both secondary and intermediate outputs\n";
                  goto LABEL_1911;
                }
              }

LABEL_1917:
              v18 = 4294954516;
              goto LABEL_1918;
            }

            v519 = CGRectMakeWithDictionaryRepresentation(v517, valuePtr);
            if (*(a2 + 2704) == 1)
            {
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              LODWORD(v917.value) = 136315138;
              *(&v917.value + 4) = "SetVideoOutputConfigurations";
              v119 = "%s - Cannot change Crop Rect while streaming\n";
              goto LABEL_1540;
            }

            if (v519)
            {
              v521 = *valuePtr;
              v522 = *&valuePtr[16];
              if (*&valuePtr[16] + *valuePtr > v807)
              {
                v523 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v523 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v523;
                }

                if (!os_log_type_enabled(v523, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_1914;
                }

                LODWORD(v917.value) = 136315906;
                *(&v917.value + 4) = "SetVideoOutputConfigurations";
                LOWORD(v917.flags) = 1024;
                *(&v917.flags + 2) = v521;
                WORD1(v917.epoch) = 1024;
                HIDWORD(v917.epoch) = v522;
                v918 = 1024;
                v919 = v807;
                v119 = "%s - Invalid crop x(%d)/width(%d) for selected output width %d\n";
                v287 = &v917;
                v288 = v523;
                v289 = 30;
                goto LABEL_1913;
              }

              LOWORD(v520) = v808;
              if (*&valuePtr[8] + *&valuePtr[24] > v520)
              {
                v286 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v286 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v286;
                }

                if (!os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_1914;
                }

LABEL_1553:
                LODWORD(v917.value) = 136315394;
                *(&v917.value + 4) = "SetVideoOutputConfigurations";
                LOWORD(v917.flags) = 1024;
                *(&v917.flags + 2) = v808;
                v119 = "%s - Invalid crop y/height for selected output height %d\n";
LABEL_1564:
                v287 = &v917;
                goto LABEL_681;
              }

              if ((v521 & 1) == 0 && ((*&valuePtr[8] | v522) & 1) == 0 && (*&valuePtr[24] & 1) == 0)
              {
                v84 = *&valuePtr[24];
                v83 = *&valuePtr[16];
                v82 = *&valuePtr[8];
                v81 = *valuePtr;
                goto LABEL_1799;
              }

              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              LODWORD(v917.value) = 136315138;
              *(&v917.value + 4) = "SetVideoOutputConfigurations";
              v119 = "%s - Invalid crop params, must be divisible by 2\n";
            }

            else
            {
              v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v118 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
              }

              if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1914;
              }

              LODWORD(v917.value) = 136315138;
              *(&v917.value + 4) = "SetVideoOutputConfigurations";
              v119 = "%s - Failed to read Crop Rect\n";
            }

LABEL_1540:
            v287 = &v917;
LABEL_1912:
            v288 = v118;
            v289 = 12;
            goto LABEL_1913;
          }

          LODWORD(v917.value) = 0;
          CFNumberGetValue(v482, kCFNumberSInt32Type, &v917);
          if (*v760 == 1)
          {
            v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v221 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
            }

            if (!os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_1075;
            }

            *valuePtr = 136315138;
            *&valuePtr[4] = "SetVideoOutputConfigurations";
            v222 = "%s - Cannot change maximum bracket SIFR count while output is enabled\n";
            goto LABEL_1074;
          }

          if (!*(a2 + 160) || *(a2 + 2692) == LODWORD(v917.value))
          {
            HIDWORD(v825) = v917.value;
            goto LABEL_1674;
          }

          v237 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v237 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v237;
          }

          if (!os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_695;
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v238 = "%s - Cannot change maximum bracket SIFR count while output is enabled\n";
LABEL_694:
          _os_log_impl(&dword_2247DB000, v237, OS_LOG_TYPE_DEFAULT, v238, valuePtr, 0xCu);
LABEL_695:
          v18 = 4294954612;
          goto LABEL_1076;
        }

        if ((v917.value & 0xFFFFFFEF) == 0x34323066)
        {
          v483 = 1278226742;
          goto LABEL_1498;
        }

        v286 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v286 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v286;
        }

        if (!os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_1914;
        }

        goto LABEL_679;
      }

      LODWORD(v917.value) = 0;
      CFNumberGetValue(v467, kCFNumberSInt32Type, &v917);
      if (*(a2 + 2304) == 1)
      {
        v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v118 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
        }

        if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_1914;
        }

        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v119 = "%s - Cannot change Pixel Format while streaming\n";
        goto LABEL_1911;
      }

      v470 = *SupportedOutputFormatsProResRaw;
      if (*SupportedOutputFormatsProResRaw)
      {
        v471 = 0;
        v469 = v917.value;
        v472 = &SupportedOutputFormatsProResRaw[4];
        do
        {
          v471 |= v470 == LODWORD(v917.value);
          v473 = *v472;
          v472 += 4;
          v470 = v473;
        }

        while (v473);
        if (v471)
        {
          goto LABEL_1450;
        }
      }

      v286 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v286 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v286;
      }

      if (!os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_1914;
      }

LABEL_679:
      *valuePtr = 136315394;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      *&valuePtr[12] = 1024;
      *&valuePtr[14] = v917.value;
      v119 = "%s - Selected pixel format not supported 0x%08X\n";
LABEL_680:
      v287 = valuePtr;
LABEL_681:
      v288 = v286;
      v289 = 18;
LABEL_1913:
      _os_log_impl(&dword_2247DB000, v288, OS_LOG_TYPE_DEFAULT, v119, v287, v289);
      goto LABEL_1914;
    }

    if (CFDictionaryGetValue(v116, *MEMORY[0x277CF66F0]) || CFDictionaryGetValue(v116, *MEMORY[0x277CF65F8]) || CFDictionaryGetValue(v116, *MEMORY[0x277CF65A8]) || CFDictionaryGetValue(v116, *MEMORY[0x277CF6580]) || CFDictionaryGetValue(v116, *MEMORY[0x277CF65B0]) || CFDictionaryGetValue(v116, *MEMORY[0x277CF6598]) || CFDictionaryGetValue(v116, *MEMORY[0x277CF65E0]) || CFDictionaryGetValue(v116, *MEMORY[0x277CF66E8]) || CFDictionaryGetValue(v116, *MEMORY[0x277CF65D8]) || CFDictionaryGetValue(v116, *MEMORY[0x277CF65A0]) || CFDictionaryGetValue(v116, *MEMORY[0x277CF65D0]))
    {
      v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v118 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
      }

      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v119 = "%s - Invalid property for still image intermediate tap\n";
LABEL_1911:
        v287 = valuePtr;
        goto LABEL_1912;
      }

      goto LABEL_1917;
    }

    v248 = CFDictionaryGetValue(v116, *MEMORY[0x277CF6578]);
    poold = CFDictionaryGetValue(v116, *MEMORY[0x277CF65C0]);
    v701 = CFDictionaryGetValue(v116, *MEMORY[0x277CF65C8]);
    v708 = CFDictionaryGetValue(v116, *MEMORY[0x277CF6548]);
    v695 = CFDictionaryGetValue(v116, *MEMORY[0x277CF6540]);
    v680 = CFDictionaryGetValue(v116, *MEMORY[0x277CF6238]);
    v683 = CFDictionaryGetValue(v116, *MEMORY[0x277CF6230]);
    v686 = CFDictionaryGetValue(v116, *MEMORY[0x277CF6218]);
    v690 = CFDictionaryGetValue(v116, *MEMORY[0x277CF6248]);
    v677 = CFDictionaryGetValue(v116, *MEMORY[0x277CF6250]);
    v249 = CFDictionaryGetValue(v116, *MEMORY[0x277CF6240]);
    v250 = CFDictionaryGetValue(v116, *MEMORY[0x277CF6210]);
    v674 = CFDictionaryGetValue(v116, *MEMORY[0x277CF6550]);
    v671 = CFDictionaryGetValue(v116, *MEMORY[0x277CF6260]);
    v251 = CFDictionaryGetValue(v116, *MEMORY[0x277CF6228]);
    if (v248)
    {
      *valuePtr = 0;
      CFNumberGetValue(v248, kCFNumberLongLongType, valuePtr);
      *(&v844 + 1) = *valuePtr;
    }

    if (poold)
    {
      LODWORD(v917.value) = 0;
      CFNumberGetValue(poold, kCFNumberSInt32Type, &v917);
      if (*v732 == 1)
      {
        v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v118 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
        }

        if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_1914;
        }

        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v119 = "%s - Cannot change Pixel Format while streaming\n";
        goto LABEL_1911;
      }

      v269 = *SupportedOutputFormatsStillImageIntermediateTap;
      if (!*SupportedOutputFormatsStillImageIntermediateTap)
      {
        goto LABEL_676;
      }

      v270 = 0;
      v271 = &SupportedOutputFormatsStillImageIntermediateTap[4];
      do
      {
        v270 |= v269 == LODWORD(v917.value);
        v272 = *v271;
        v271 += 4;
        v269 = v272;
      }

      while (v272);
      if ((v270 & 1) == 0)
      {
LABEL_676:
        v286 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v286 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v286;
        }

        if (!os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_1914;
        }

        goto LABEL_679;
      }

      LODWORD(v845) = v917.value;
    }

    if (v701)
    {
      *valuePtr = 0;
      CFNumberGetValue(v701, kCFNumberSInt32Type, valuePtr);
      LODWORD(v848) = *valuePtr;
    }

    if (v708)
    {
      LODWORD(v917.value) = 0;
      CFNumberGetValue(v708, kCFNumberSInt32Type, &v917);
      if (*v732 == 1)
      {
        v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v118 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
        }

        if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_1914;
        }

        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v119 = "%s - Cannot change Buffer Cache Mode while streaming\n";
        goto LABEL_1911;
      }

      DWORD1(v848) = v917.value;
    }

    if (v695)
    {
      v297 = CFEqual(v695, *MEMORY[0x277CBED28]);
      if (*v732 == 1)
      {
        v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v118 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
        }

        if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_1914;
        }

        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v119 = "%s - Cannot change Attach Raw while streaming\n";
        goto LABEL_1911;
      }

      BYTE8(v848) = v297 != 0;
    }

    if (v251)
    {
      v305 = CFEqual(v251, *MEMORY[0x277CBED28]) != 0;
      if (*(a2 + 1577) != v305)
      {
        if (*(a2 + 160))
        {
          v237 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v237 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v237;
          }

          if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
          {
            *valuePtr = 136315138;
            *&valuePtr[4] = "SetVideoOutputConfigurations";
            v238 = "%s - Cannot change Attach Thumbnail Raw while streaming\n";
            goto LABEL_694;
          }

          goto LABEL_1760;
        }

        if (*v732 == 1)
        {
          v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v118 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
          }

          if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_1914;
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v119 = "%s - Cannot change Attach Thumbnail Raw while output is enabled\n";
          goto LABEL_1911;
        }
      }

      BYTE9(v848) = v305;
    }

    if (v680)
    {
      BYTE8(v851) = CFEqual(v680, *MEMORY[0x277CBED28]) != 0;
    }

    if (v683)
    {
      *valuePtr = 0;
      CFNumberGetValue(v683, kCFNumberSInt32Type, valuePtr);
      HIDWORD(v851) = *valuePtr;
    }

    if (v686)
    {
      *valuePtr = 0;
      CFNumberGetValue(v686, kCFNumberSInt32Type, valuePtr);
      LODWORD(v852) = *valuePtr;
    }

    if (v690)
    {
      v306 = CFEqual(v690, *MEMORY[0x277CBED28]);
      if (*v732 == 1)
      {
        v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v221 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
        }

        if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v222 = "%s - Cannot change Time Machine Enable while streaming\n";
          goto LABEL_1074;
        }

        goto LABEL_1914;
      }

      if (*(a2 + 160))
      {
        v323 = v306 != 0;
        if (*(a2 + 1588) != v323)
        {
          v237 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v237 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v237;
          }

          if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
          {
            *valuePtr = 136315138;
            *&valuePtr[4] = "SetVideoOutputConfigurations";
            v238 = "%s - Cannot change Time Machine Enable while streaming\n";
            goto LABEL_694;
          }

          goto LABEL_1760;
        }
      }

      else
      {
        LOBYTE(v323) = v306 != 0;
      }

      BYTE4(v849) = v323;
    }

    if (v677)
    {
      LODWORD(v917.value) = 0;
      CFNumberGetValue(v677, kCFNumberSInt32Type, &v917);
      if (*v732 == 1)
      {
        v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v221 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
        }

        if (!os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_1075;
        }

        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v222 = "%s - Cannot change Time Machine Ring Buffer Capacity while streaming\n";
        goto LABEL_1074;
      }

      if (*(a2 + 160) && LODWORD(v917.value) != *(a2 + 1592))
      {
        v237 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v237 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v237;
        }

        if (!os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_695;
        }

        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v238 = "%s - Cannot change Time Machine Ring Buffer Capacity while streaming\n";
        goto LABEL_694;
      }

      DWORD2(v849) = v917.value;
      dict = 1;
    }

    if (v249)
    {
      LODWORD(v917.value) = 0;
      CFNumberGetValue(v249, kCFNumberSInt32Type, &v917);
      if (*v732 == 1)
      {
        v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v118 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
        }

        if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_1914;
        }

        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v119 = "%s - Cannot change Time Machine Buffer Replacement Scheme while streaming\n";
        goto LABEL_1911;
      }

      if (LODWORD(v917.value) >= 2)
      {
        LODWORD(v917.value) = -1;
        v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v118 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
        }

        if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_1914;
        }

        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v119 = "%s - Not a recognized buffer replacement scheme\n";
        goto LABEL_1911;
      }

      HIDWORD(v849) = v917.value;
      dict = 1;
    }

    if (v250)
    {
      v388 = CFBooleanGetValue(v250) != 0;
      if (*(a2 + 1600) != v388)
      {
        if (*(a2 + 160))
        {
          v237 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v237 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v237;
          }

          if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
          {
            *valuePtr = 136315138;
            *&valuePtr[4] = "SetVideoOutputConfigurations";
            v238 = "%s - Cannot attach debug pixel buffer while streaming\n";
            goto LABEL_694;
          }

          goto LABEL_1760;
        }

        if (*v732 == 1)
        {
          v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v221 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
          }

          if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
          {
            *valuePtr = 136315138;
            *&valuePtr[4] = "SetVideoOutputConfigurations";
            v222 = "%s - Cannot attach debug pixel while output is enabled\n";
            goto LABEL_1074;
          }

          goto LABEL_1914;
        }
      }

      LOBYTE(v850) = v388;
    }

    if (!v674)
    {
      goto LABEL_1156;
    }

    if (*v732 == 1)
    {
      v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v221 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
      }

      if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v222 = "%s - Cannot change Client Buffer Pool while streaming\n";
        goto LABEL_1074;
      }

      goto LABEL_1914;
    }

    if (*(a2 + 1648))
    {
      CVPixelBufferPoolRelease(v853);
      *&v853 = 0;
    }

    if (CFEqual(v674, *MEMORY[0x277CBEEE8]))
    {
LABEL_1156:
      if (v671)
      {
        if ((*v37 & 1) != 0 || *v732 == 1)
        {
          v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v221 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
          }

          if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
          {
            *valuePtr = 136315138;
            *&valuePtr[4] = "SetVideoOutputConfigurations";
            v222 = "%s - Cannot change YCbCrMatrix while streaming\n";
            goto LABEL_1074;
          }

          goto LABEL_1914;
        }

        if (CFEqual(v671, *MEMORY[0x277CC4D20]))
        {
          v429 = 1;
        }

        else if (CFEqual(v671, *MEMORY[0x277CC4D28]))
        {
          v429 = 2;
        }

        else
        {
          if (!CFEqual(v671, *MEMORY[0x277CBEEE8]))
          {
            v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v221 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
            }

            if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
            {
              *valuePtr = 136315138;
              *&valuePtr[4] = "SetVideoOutputConfigurations";
              v222 = "%s - Unrecognized still YCbCrMatrix\n";
              goto LABEL_1074;
            }

            goto LABEL_1914;
          }

          v429 = 0;
        }

        *(a2 + 176) = v429;
      }

      goto LABEL_1266;
    }

    v423 = CVPixelBufferPoolGetPixelBufferAttributes(v674);
    if (v423)
    {
      v424 = v423;
      LODWORD(v917.value) = 0;
      v806 = 0;
      v425 = CFDictionaryGetValue(v423, *MEMORY[0x277CC4EC8]);
      CFNumberGetValue(v425, kCFNumberIntType, &v917);
      v426 = CFDictionaryGetValue(v424, *MEMORY[0x277CC4DD8]);
      CFNumberGetValue(v426, kCFNumberIntType, &v806);
      v427 = DWORD1(v845);
      if (LODWORD(v917.value) >= DWORD1(v845) && v806 >= DWORD2(v845))
      {
        *&v853 = CVPixelBufferPoolRetain(v674);
        LODWORD(v848) = CVPixelBufferPoolGetMinBufferCount();
        if (v848 <= 0)
        {
          v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v118 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
          }

          if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_1914;
          }

          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v119 = "%s - Not enough buffers in client pool\n";
          goto LABEL_1911;
        }

        goto LABEL_1156;
      }

      v260 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v260 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v260;
      }

      if (!os_log_type_enabled(v260, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_1075;
      }

      *valuePtr = 136316162;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      *&valuePtr[12] = 1024;
      *&valuePtr[14] = v917.value;
      *&valuePtr[18] = 1024;
      *&valuePtr[20] = v806;
      *&valuePtr[24] = 1024;
      *&valuePtr[26] = v427;
      *&valuePtr[30] = 1024;
      *&valuePtr[32] = DWORD2(v845);
      v261 = "%s - StillImageIntermediateTap ClientBufferPool %dx%d is smaller than OutputSize %dx%d\n";
      goto LABEL_575;
    }

    v298 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v298 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v298;
    }

    if (!os_log_type_enabled(v298, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_1914;
    }

    *valuePtr = 136315138;
    *&valuePtr[4] = "SetVideoOutputConfigurations";
    v261 = "%s - StillImageIntermediateTap ClientBufferPool Attribute is not available\n";
LABEL_753:
    v262 = v298;
    v263 = 12;
    goto LABEL_754;
  }

  if (CFDictionaryGetValue(v111, *MEMORY[0x277CF66F0]) || CFDictionaryGetValue(v111, *MEMORY[0x277CF65B0]) || CFDictionaryGetValue(v111, *MEMORY[0x277CF65D8]) || CFDictionaryGetValue(v111, *MEMORY[0x277CF65D0]))
  {
    v113 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v113 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v113;
    }

    v114 = cf1;
    v105 = v752;
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      _os_log_impl(&dword_2247DB000, v113, OS_LOG_TYPE_DEFAULT, "%s - Invalid property for still image\n", valuePtr, 0xCu);
    }

    v18 = 4294954516;
    goto LABEL_1934;
  }

  v725 = v100;
  theDict = v102;
  v120 = CFDictionaryGetValue(v111, *MEMORY[0x277CF6578]);
  v121 = CFDictionaryGetValue(v111, *MEMORY[0x277CF65C0]);
  numbera = CFDictionaryGetValue(v111, *MEMORY[0x277CF65F8]);
  pool = CFDictionaryGetValue(v111, *MEMORY[0x277CF65A8]);
  dicta = CFDictionaryGetValue(v111, *MEMORY[0x277CF6580]);
  v698 = CFDictionaryGetValue(v111, *MEMORY[0x277CF65C8]);
  v704 = CFDictionaryGetValue(v111, *MEMORY[0x277CF6548]);
  v692 = CFDictionaryGetValue(v111, *MEMORY[0x277CF6540]);
  v676 = CFDictionaryGetValue(v111, *MEMORY[0x277CF6238]);
  v679 = CFDictionaryGetValue(v111, *MEMORY[0x277CF6230]);
  v682 = CFDictionaryGetValue(v111, *MEMORY[0x277CF6218]);
  v685 = CFDictionaryGetValue(v111, *MEMORY[0x277CF6248]);
  v673 = CFDictionaryGetValue(v111, *MEMORY[0x277CF6250]);
  v670 = CFDictionaryGetValue(v111, *MEMORY[0x277CF6240]);
  BOOLean = CFDictionaryGetValue(v111, *MEMORY[0x277CF6210]);
  v666 = CFDictionaryGetValue(v111, *MEMORY[0x277CF6550]);
  v664 = CFDictionaryGetValue(v111, *MEMORY[0x277CF6598]);
  v662 = CFDictionaryGetValue(v111, *MEMORY[0x277CF65E0]);
  v661 = CFDictionaryGetValue(v111, *MEMORY[0x277CF6258]);
  v660 = CFDictionaryGetValue(v111, *MEMORY[0x277CF6220]);
  v659 = CFDictionaryGetValue(v111, *MEMORY[0x277CF6260]);
  v658 = CFDictionaryGetValue(v111, *MEMORY[0x277CF66E8]);
  v657 = CFDictionaryGetValue(v111, *MEMORY[0x277CF65A0]);
  v688 = CFDictionaryGetValue(v111, *MEMORY[0x277CF6228]);
  if (v120)
  {
    *valuePtr = 0;
    CFNumberGetValue(v120, kCFNumberLongLongType, valuePtr);
    *(&v857 + 1) = *valuePtr;
  }

  if (v121)
  {
    LODWORD(v917.value) = 0;
    CFNumberGetValue(v121, kCFNumberSInt32Type, &v917);
    if (*v37 == 1)
    {
      v122 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v122 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v122;
      }

      if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_205;
      }

      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v123 = "%s - Cannot change Pixel Format while streaming\n";
      goto LABEL_118;
    }

    v125 = v917.value;
    if (*(a2 + 4256))
    {
      if ((LODWORD(v917.value) - 1278226736) <= 6 && ((1 << (LOBYTE(v917.value) - 48)) & 0x45) != 0)
      {
        goto LABEL_131;
      }

      v126 = *SupportedOutputFormatsStillImage;
      if (*SupportedOutputFormatsStillImage)
      {
        v127 = 0;
        v128 = &SupportedOutputFormatsStillImage[4];
        do
        {
          v127 |= v126 == LODWORD(v917.value);
          v129 = *v128;
          v128 += 4;
          v126 = v129;
        }

        while (v129);
        if (v127)
        {
          v125 = 1278226742;
LABEL_131:
          LODWORD(v858) = v125;
          goto LABEL_132;
        }
      }

      v143 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v143 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v143;
      }

      if (!os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_205;
      }

      *valuePtr = 136315394;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      *&valuePtr[12] = 1024;
      *&valuePtr[14] = v917.value;
      v123 = "%s - Selected IR pixel format not supported 0x%08X\n";
    }

    else
    {
      v130 = *SupportedOutputFormatsStillImage;
      if (*SupportedOutputFormatsStillImage)
      {
        v131 = 0;
        v132 = &SupportedOutputFormatsStillImage[4];
        do
        {
          v131 |= v130 == LODWORD(v917.value);
          v133 = *v132;
          v132 += 4;
          v130 = v133;
        }

        while (v133);
        if (v131)
        {
          goto LABEL_131;
        }
      }

      v143 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v143 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v143;
      }

      if (!os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_205;
      }

      *valuePtr = 136315394;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      *&valuePtr[12] = 1024;
      *&valuePtr[14] = v917.value;
      v123 = "%s - Selected pixel format not supported 0x%08X\n";
    }

    v124 = valuePtr;
LABEL_203:
    v141 = v143;
    v142 = 18;
    goto LABEL_204;
  }

LABEL_132:
  if (dicta)
  {
    if (!CGRectMakeWithDictionaryRepresentation(dicta, valuePtr))
    {
      v122 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v122 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v122;
      }

      if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_205;
      }

      LODWORD(v917.value) = 136315138;
      *(&v917.value + 4) = "SetVideoOutputConfigurations";
      v123 = "%s - Failed to read Crop Rect\n";
      v124 = &v917;
      goto LABEL_140;
    }

    v134 = *valuePtr;
    v135 = *&valuePtr[16];
    v136 = *(a2 + 184) + 120 * v764;
    if (*(v136 + 64) == 1)
    {
      v138 = *(v136 + 68);
      v137 = *(v136 + 72);
      v139 = *&valuePtr[16];
      v140 = *valuePtr;
    }

    else
    {
      v138 = v810;
      v137 = HIDWORD(v810);
      if (v809)
      {
        v139 = 2 * v135;
      }

      else
      {
        v139 = *&valuePtr[16];
      }

      if (v809)
      {
        v140 = 2 * v134;
      }

      else
      {
        v140 = *valuePtr;
      }
    }

    if (v140 + v139 > v138)
    {
      v144 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v144 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v144;
      }

      if (!os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_205;
      }

      LODWORD(v917.value) = 136315906;
      *(&v917.value + 4) = "SetVideoOutputConfigurations";
      LOWORD(v917.flags) = 1024;
      *(&v917.flags + 2) = v140;
      WORD1(v917.epoch) = 1024;
      HIDWORD(v917.epoch) = v139;
      v918 = 1024;
      v919 = v138;
      v123 = "%s - Invalid crop x(%d)/width(%d) for selected output width %d\n";
      v124 = &v917;
      v141 = v144;
      v142 = 30;
      goto LABEL_204;
    }

    if (*&valuePtr[8] + *&valuePtr[24] > v137)
    {
      v143 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v143 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v143;
      }

      if (!os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_205;
      }

      LODWORD(v917.value) = 136315394;
      *(&v917.value + 4) = "SetVideoOutputConfigurations";
      LOWORD(v917.flags) = 1024;
      *(&v917.flags + 2) = v137;
      v123 = "%s - Invalid crop y/height for selected output height %d\n";
      goto LABEL_202;
    }

    if (v134 & 1) != 0 || (*&valuePtr[8] & 1) != 0 || v135 % v922 || (*&valuePtr[24])
    {
      v143 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v143 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v143;
      }

      if (!os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_205;
      }

      LODWORD(v917.value) = 136315394;
      *(&v917.value + 4) = "SetVideoOutputConfigurations";
      LOWORD(v917.flags) = 1024;
      *(&v917.flags + 2) = v922;
      v123 = "%s - Invalid crop params, must be divisible by 2 (width by %d)\n";
LABEL_202:
      v124 = &v917;
      goto LABEL_203;
    }

    v859 = *valuePtr;
    v860 = *&valuePtr[16];
  }

  if (numbera)
  {
    *valuePtr = 0;
    CFNumberGetValue(numbera, kCFNumberSInt32Type, valuePtr);
    v148 = *valuePtr;
    if (*&v860 < *valuePtr || *&v860 * 0.25 > *valuePtr)
    {
      v150 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v150 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v150;
      }

      if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
      {
        SetVideoOutputConfigurations(valuePtr, &v860);
      }

      goto LABEL_205;
    }

    if (*valuePtr % v923)
    {
      v151 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v151 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v151;
      }

      if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
      {
        SetVideoOutputConfigurations();
      }

      goto LABEL_205;
    }

    if (*v37 == 1)
    {
      if (CheckOutputWidthAgainstPool(a2, *(a2 + 1448), 7, *valuePtr))
      {
        v162 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v162 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v162;
        }

        if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
        {
          SetVideoOutputConfigurations();
        }

        goto LABEL_205;
      }

      v148 = *valuePtr;
    }

    DWORD1(v858) = v148;
  }

  if (pool)
  {
    *valuePtr = 0;
    CFNumberGetValue(pool, kCFNumberSInt32Type, valuePtr);
    v188 = *valuePtr;
    if (*(&v860 + 1) < *valuePtr || *(&v860 + 1) * 0.25 > *valuePtr)
    {
      v190 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v190 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v190;
      }

      if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
      {
        SetVideoOutputConfigurations(valuePtr, &v860 + 8);
      }

      goto LABEL_205;
    }

    if (valuePtr[0])
    {
      v192 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v192 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v192;
      }

      if (os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
      {
        SetVideoOutputConfigurations();
      }

      goto LABEL_205;
    }

    if (*v37 == 1)
    {
      if (CheckOutputHeightAgainstPool(a2, *(a2 + 1448), 7, *valuePtr))
      {
        v191 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v191 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v191;
        }

        if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
        {
          SetVideoOutputConfigurations();
        }

        goto LABEL_205;
      }

      v188 = *valuePtr;
    }

    DWORD2(v858) = v188;
  }

  number = (pool | numbera | dicta) != 0;
  if (v698)
  {
    *valuePtr = 0;
    CFNumberGetValue(v698, kCFNumberSInt32Type, valuePtr);
    LODWORD(v861) = *valuePtr;
  }

  if (v704)
  {
    LODWORD(v917.value) = 0;
    CFNumberGetValue(v704, kCFNumberSInt32Type, &v917);
    if (*v37 == 1)
    {
      v122 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v122 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v122;
      }

      if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_205;
      }

      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v123 = "%s - Cannot change Buffer Cache Mode while streaming\n";
      goto LABEL_118;
    }

    DWORD1(v861) = v917.value;
  }

  if (v692)
  {
    v206 = CFEqual(v692, *MEMORY[0x277CBED28]);
    if (*v37 == 1)
    {
      v122 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v122 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v122;
      }

      if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_205;
      }

      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v123 = "%s - Cannot change Attach Raw while streaming\n";
      goto LABEL_118;
    }

    BYTE8(v861) = v206 != 0;
  }

  if (v688)
  {
    v207 = CFEqual(v688, *MEMORY[0x277CBED28]) != 0;
    if (*(a2 + 1377) != v207)
    {
      if (*(a2 + 160))
      {
        v211 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v211 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v211;
        }

        if (!os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_482;
        }

        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v212 = "%s - Cannot change Attach Thumbnail Raw while streaming\n";
        goto LABEL_481;
      }

      if (*v37 == 1)
      {
        v122 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v122 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v122;
        }

        if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_205;
        }

        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v123 = "%s - Cannot change Attach Thumbnail Raw while output is enabled\n";
LABEL_118:
        v124 = valuePtr;
LABEL_140:
        v141 = v122;
        v142 = 12;
LABEL_204:
        _os_log_impl(&dword_2247DB000, v141, OS_LOG_TYPE_DEFAULT, v123, v124, v142);
LABEL_205:
        v18 = 4294954516;
LABEL_1932:
        v114 = cf1;
        LODWORD(v102) = theDict;
LABEL_1933:
        v105 = v752;
        goto LABEL_1934;
      }
    }

    BYTE9(v861) = v207;
  }

  if (v676)
  {
    BYTE8(v864) = CFEqual(v676, *MEMORY[0x277CBED28]) != 0;
  }

  if (v679)
  {
    *valuePtr = 0;
    CFNumberGetValue(v679, kCFNumberSInt32Type, valuePtr);
    HIDWORD(v864) = *valuePtr;
  }

  if (v682)
  {
    *valuePtr = 0;
    CFNumberGetValue(v682, kCFNumberSInt32Type, valuePtr);
    LODWORD(v865) = *valuePtr;
  }

  if (v685)
  {
    v208 = CFEqual(v685, *MEMORY[0x277CBED28]);
    if (*v37 == 1)
    {
      v209 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v209 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v209;
      }

      if (!os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_421;
      }

      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v210 = "%s - Cannot change Time Machine Enable while streaming\n";
LABEL_420:
      _os_log_impl(&dword_2247DB000, v209, OS_LOG_TYPE_DEFAULT, v210, valuePtr, 0xCu);
LABEL_421:
      v18 = 4294954516;
LABEL_483:
      v239 = cf1;
      LODWORD(v102) = theDict;
      goto LABEL_2136;
    }

    if (*(a2 + 160))
    {
      v213 = v208 != 0;
      if (*(a2 + 1388) != v213)
      {
        v211 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v211 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v211;
        }

        if (!os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_482;
        }

        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v212 = "%s - Cannot change Time Machine Enable while streaming\n";
LABEL_481:
        _os_log_impl(&dword_2247DB000, v211, OS_LOG_TYPE_DEFAULT, v212, valuePtr, 0xCu);
LABEL_482:
        v18 = 4294954612;
        goto LABEL_483;
      }
    }

    else
    {
      LOBYTE(v213) = v208 != 0;
    }

    BYTE4(v862) = v213;
  }

  dict = v673 != 0;
  if (v673)
  {
    LODWORD(v917.value) = 0;
    CFNumberGetValue(v673, kCFNumberSInt32Type, &v917);
    if (*v37 == 1)
    {
      v209 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v209 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v209;
      }

      if (!os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_421;
      }

      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v210 = "%s - Cannot change Time Machine Ring Buffer Capacity while streaming\n";
      goto LABEL_420;
    }

    if (*(a2 + 160) && LODWORD(v917.value) != *(a2 + 1392))
    {
      v211 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v211 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v211;
      }

      if (!os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_482;
      }

      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v212 = "%s - Cannot change Time Machine Ring Buffer Capacity while streaming\n";
      goto LABEL_481;
    }

    DWORD2(v862) = v917.value;
  }

  if (v670)
  {
    LODWORD(v917.value) = 0;
    CFNumberGetValue(v670, kCFNumberSInt32Type, &v917);
    if (*v37 == 1)
    {
      v218 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v218 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v218;
      }

      if (os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v219 = "%s - Cannot change Time Machine Buffer Replacement Scheme while streaming\n";
LABEL_488:
        _os_log_impl(&dword_2247DB000, v218, OS_LOG_TYPE_DEFAULT, v219, valuePtr, 0xCu);
        goto LABEL_489;
      }

      goto LABEL_489;
    }

    if (LODWORD(v917.value) >= 2)
    {
      LODWORD(v917.value) = -1;
      v218 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v218 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v218;
      }

      if (os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v219 = "%s - Not a recognized buffer replacement scheme\n";
        goto LABEL_488;
      }

LABEL_489:
      v18 = 4294954516;
      if (!v673)
      {
        goto LABEL_1932;
      }

      goto LABEL_1919;
    }

    HIDWORD(v862) = v917.value;
    dict = 1;
  }

  if (BOOLean)
  {
    v220 = CFBooleanGetValue(BOOLean) != 0;
    if (*(a2 + 1400) != v220)
    {
      if (*(a2 + 160))
      {
        v237 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v237 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v237;
        }

        if (!os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_1760;
        }

        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v238 = "%s - Cannot attach debug pixel buffer while streaming\n";
        goto LABEL_694;
      }

      if (*v37 == 1)
      {
        v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v221 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
        }

        if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v222 = "%s - Cannot attach debug pixel while output is enabled\n";
          goto LABEL_1074;
        }

        goto LABEL_1914;
      }
    }

    LOBYTE(v863) = v220;
  }

  if (!v666)
  {
    goto LABEL_538;
  }

  if (*v37 == 1)
  {
    v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v221 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
    }

    if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v222 = "%s - Cannot change Client Buffer Pool while streaming\n";
LABEL_1074:
      _os_log_impl(&dword_2247DB000, v221, OS_LOG_TYPE_DEFAULT, v222, valuePtr, 0xCu);
      goto LABEL_1075;
    }

    goto LABEL_1914;
  }

  if (pixelBufferPool)
  {
    CVPixelBufferPoolRelease(pixelBufferPool);
    *&pixelBufferPool = 0;
  }

  if (CFEqual(v666, *MEMORY[0x277CBEEE8]))
  {
    goto LABEL_538;
  }

  v256 = CVPixelBufferPoolGetPixelBufferAttributes(v666);
  if (!v256)
  {
    v298 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v298 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v298;
    }

    if (!os_log_type_enabled(v298, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_1914;
    }

    *valuePtr = 136315138;
    *&valuePtr[4] = "SetVideoOutputConfigurations";
    v261 = "%s - StillImage ClientBufferPool Attribute is not available\n";
    goto LABEL_753;
  }

  v257 = v256;
  LODWORD(v917.value) = 0;
  v806 = 0;
  v258 = CFDictionaryGetValue(v256, *MEMORY[0x277CC4EC8]);
  CFNumberGetValue(v258, kCFNumberIntType, &v917);
  v259 = CFDictionaryGetValue(v257, *MEMORY[0x277CC4DD8]);
  CFNumberGetValue(v259, kCFNumberIntType, &v806);
  if (LODWORD(v917.value) >= DWORD1(v858) && v806 >= DWORD2(v858))
  {
    *&pixelBufferPool = CVPixelBufferPoolRetain(v666);
    LODWORD(v861) = CVPixelBufferPoolGetMinBufferCount();
    if (v861 <= 0)
    {
      v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v118 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
      }

      if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_1914;
      }

      *valuePtr = 136315138;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      v119 = "%s - Not enough buffers in client pool\n";
      goto LABEL_1911;
    }

LABEL_538:
    if (v664)
    {
      if (*v37 == 1)
      {
        v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v221 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
        }

        if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v222 = "%s - Cannot change Face Tracking Enable while streaming\n";
          goto LABEL_1074;
        }

        goto LABEL_1914;
      }

      if (*(a2 + 160))
      {
        v237 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v237 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v237;
        }

        if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v238 = "%s - Cannot change Face Tracking Enable while streaming\n";
          goto LABEL_694;
        }

LABEL_1760:
        v18 = 4294954612;
        goto LABEL_1915;
      }

      BYTE4(v865) = CFEqual(v664, *MEMORY[0x277CBED28]) != 0;
    }

    if (v662)
    {
      if (*v37 == 1)
      {
        v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v221 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
        }

        if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v222 = "%s - Cannot change Segmentation Enable while streaming\n";
          goto LABEL_1074;
        }

        goto LABEL_1914;
      }

      if (*(a2 + 160))
      {
        v237 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v237 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v237;
        }

        if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v238 = "%s - Cannot change Segmentation Enable while streaming\n";
          goto LABEL_694;
        }

        goto LABEL_1760;
      }

      BYTE5(v865) = CFEqual(v662, *MEMORY[0x277CBED28]) != 0;
    }

    if (v661)
    {
      v301 = CFEqual(v661, *MEMORY[0x277CBED28]) != 0;
      if (*v37 == 1)
      {
        v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v221 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
        }

        if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v222 = "%s - Cannot change Time Machine SIFR Enable while output is enabled\n";
          goto LABEL_1074;
        }

        goto LABEL_1914;
      }

      if (*(a2 + 160) && *(a2 + 1488) != v301)
      {
        v237 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v237 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v237;
        }

        if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v238 = "%s - Cannot change Time Machine SIFR Enable while streaming\n";
          goto LABEL_694;
        }

        goto LABEL_1760;
      }

      BYTE8(v868) = v301;
    }

    if (v660)
    {
      LODWORD(v917.value) = 0;
      CFNumberGetValue(v660, kCFNumberSInt32Type, &v917);
      if (*v37 == 1)
      {
        v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v221 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
        }

        if (!os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_1075;
        }

        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v222 = "%s - Cannot change maximum bracket SIFR count while output is enabled\n";
        goto LABEL_1074;
      }

      if (*(a2 + 160) && *(a2 + 1492) != LODWORD(v917.value))
      {
        v237 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v237 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v237;
        }

        if (!os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_695;
        }

        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v238 = "%s - Cannot change maximum bracket SIFR count while output is enabled\n";
        goto LABEL_694;
      }

      HIDWORD(v868) = v917.value;
    }

    if (v659)
    {
      if ((*v37 & 1) != 0 || *v732 == 1)
      {
        v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v221 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
        }

        if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v222 = "%s - Cannot change YCbCrMatrix while streaming\n";
          goto LABEL_1074;
        }

        goto LABEL_1914;
      }

      if (CFEqual(v659, *MEMORY[0x277CC4D20]))
      {
        v383 = 1;
      }

      else if (CFEqual(v659, *MEMORY[0x277CC4D28]))
      {
        v383 = 2;
      }

      else
      {
        if (!CFEqual(v659, *MEMORY[0x277CBEEE8]))
        {
          v221 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v221 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v221;
          }

          if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
          {
            *valuePtr = 136315138;
            *&valuePtr[4] = "SetVideoOutputConfigurations";
            v222 = "%s - Unrecognized still YCbCrMatrix\n";
            goto LABEL_1074;
          }

          goto LABEL_1914;
        }

        v383 = 0;
      }

      *(a2 + 176) = v383;
    }

    if (v658)
    {
      v422 = CFEqual(v658, *MEMORY[0x277CBED28]);
      if (*v37 == 1)
      {
        v118 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v118 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v118;
        }

        if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_1914;
        }

        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v119 = "%s - Cannot change GDC Enable while streaming\n";
        goto LABEL_1911;
      }

      BYTE11(v861) = v422 != 0;
    }

    if (v657)
    {
      *valuePtr = 0;
      CFNumberGetValue(v657, kCFNumberFloat32Type, valuePtr);
      if (*v37 == 1)
      {
LABEL_1914:
        v18 = 4294954516;
LABEL_1915:
        if (!dict)
        {
          goto LABEL_1932;
        }

        goto LABEL_1919;
      }

      HIDWORD(v861) = *valuePtr;
    }

    LODWORD(v102) = theDict;
    v100 = v725;
    goto LABEL_84;
  }

  v260 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v260 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v260;
  }

  if (!os_log_type_enabled(v260, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_1075;
  }

  *valuePtr = 136316162;
  *&valuePtr[4] = "SetVideoOutputConfigurations";
  *&valuePtr[12] = 1024;
  *&valuePtr[14] = v917.value;
  *&valuePtr[18] = 1024;
  *&valuePtr[20] = v806;
  *&valuePtr[24] = 1024;
  *&valuePtr[26] = DWORD1(v858);
  *&valuePtr[30] = 1024;
  *&valuePtr[32] = DWORD2(v858);
  v261 = "%s - StillImage ClientBufferPool %dx%d is smaller than OutputSize %dx%d\n";
LABEL_575:
  v262 = v260;
  v263 = 36;
LABEL_754:
  _os_log_error_impl(&dword_2247DB000, v262, OS_LOG_TYPE_ERROR, v261, valuePtr, v263);
LABEL_1075:
  v18 = 4294954516;
LABEL_1076:
  if (!dict)
  {
LABEL_1077:
    LOBYTE(v99) = cf1;
    LODWORD(v102) = theDict;
    v105 = v752;
    goto LABEL_108;
  }

LABEL_1919:
  if (BYTE4(v862) == 1)
  {
    v543 = WORD4(v862);
    v544 = WORD6(v862);
  }

  else if (BYTE4(v849) == 1)
  {
    v543 = WORD4(v849);
    v544 = WORD6(v849);
  }

  else if (BYTE4(v819) == 1)
  {
    v543 = WORD4(v819);
    v544 = WORD6(v819);
  }

  else
  {
    v543 = 0;
    v544 = 0;
  }

  v545 = H16ISP::H16ISPDevice::SetTimeMachineDepth(*(a4 + 24), *(a2 + 156), v543, v544);
  if (v545)
  {
    v546 = v545;
    v547 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v547 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v547;
    }

    v114 = cf1;
    LODWORD(v102) = theDict;
    v105 = v752;
    if (os_log_type_enabled(v547, OS_LOG_TYPE_ERROR))
    {
      v18 = 4294954514;
      if ((SetVideoOutputConfigurations(v546, v547, cf1) & 1) == 0)
      {
        goto LABEL_1939;
      }

      goto LABEL_1935;
    }

    v18 = 4294954514;
    goto LABEL_1934;
  }

LABEL_1931:
  if (v18)
  {
    goto LABEL_1932;
  }

  LODWORD(v102) = theDict;
  if (!*(a2 + 160))
  {
    v557 = 1;
    goto LABEL_2118;
  }

  if (!v725)
  {
    v555 = theDict;
    v554 = v745;
    goto LABEL_1972;
  }

  v554 = v745;
  if (*v803 != 1)
  {
    v555 = theDict;
    goto LABEL_1972;
  }

  if (v758)
  {
    if (*v804 == 1 && *(a2 + 1096) == 1)
    {
      v555 = theDict;
      updated = PrimaryAndSecondaryScalerConfigUpdateAtomically(a4, a2, v952, &v883);
      v554 = 0;
      goto LABEL_1971;
    }

    v555 = theDict;
    if (v729 && *allocator == 1)
    {
      updated = IntermediateTapAndScalerConfigUpdateAtomically(a4, a2, &v870, v952, 2845);
      v729 = 0;
      goto LABEL_1971;
    }

    v558 = ScalerOutputConfigUpdateAtomically(a4, a2, v952, 2843);
  }

  else
  {
    v555 = theDict;
    if (CGRectEqualToRect(*(a2 + 736), rect2))
    {
      if (!v729)
      {
        goto LABEL_1979;
      }

      goto LABEL_1973;
    }

    v558 = SetPrimaryScalerCrop(a4, a2, v952);
  }

  updated = v558;
LABEL_1971:
  if (updated)
  {
LABEL_1986:
    v560 = 0;
    v18 = 4294954514;
    goto LABEL_2085;
  }

LABEL_1972:
  if (!v729)
  {
    goto LABEL_1979;
  }

LABEL_1973:
  if (*allocator == 1)
  {
    if (v554 && *v804 == 1)
    {
      updated = IntermediateTapAndScalerConfigUpdateAtomically(a4, a2, &v870, &v883, 2846);
      v554 = 0;
    }

    else
    {
      updated = IntermediateTapOutputConfigUpdateAtomically(a4, a2, &v870);
    }

    if (updated)
    {
      goto LABEL_1986;
    }
  }

LABEL_1979:
  if (v554 && *v804 == 1 && (v559 = ScalerOutputConfigUpdateAtomically(a4, a2, &v883, 2844)) != 0 || number && *v37 == 1 && (v559 = StillImageConfigUpdateAtomically(a4, a2, &v857)) != 0)
  {
    updated = v559;
    goto LABEL_1986;
  }

  if (*v37 == 1 && (BYTE8(v864) & 1) != 0 || *v732 == 1 && (BYTE8(v851) & 1) != 0 || *v760 == 1 && (BYTE8(v821) & 1) != 0)
  {
    if (!H16ISP::H16ISPFrameReceiver::HasPool(*(a2 + 160), 20))
    {
      if (*v37 == 1 && (BYTE8(v864) & 1) != 0)
      {
        v561 = &v857;
      }

      else if (*v732 == 1 && (BYTE8(v851) & 1) != 0)
      {
        v561 = &v844;
      }

      else
      {
        if (*v760 != 1 || BYTE8(v821) != 1)
        {
          goto LABEL_2019;
        }

        v561 = &v814;
      }

      v564 = AddSushiRawPoolToFrameReceiver(a2, a4, v561);
      if (v564)
      {
        updated = v564;
        v565 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v565 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v565;
        }

        if (os_log_type_enabled(v565, OS_LOG_TYPE_ERROR))
        {
          SetVideoOutputConfigurations();
        }

        goto LABEL_2082;
      }
    }
  }

  else if (H16ISP::H16ISPFrameReceiver::HasPool(*(a2 + 160), 20))
  {
    if (*(a2 + 100))
    {
      v562 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v562 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v562;
      }

      if (os_log_type_enabled(v562, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v563 = "%s - Cannot disable Sushi Raw during capture\n";
LABEL_2071:
        _os_log_impl(&dword_2247DB000, v562, OS_LOG_TYPE_DEFAULT, v563, valuePtr, 0xCu);
        updated = 0;
LABEL_2072:
        v560 = 0;
        v18 = 4294954516;
        goto LABEL_2085;
      }

LABEL_2073:
      updated = 0;
LABEL_2082:
      v560 = 0;
      v18 = 4294954516;
      goto LABEL_2085;
    }

    v566 = H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(a2 + 160), 20);
    if (v566)
    {
      updated = v566;
      v567 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v567 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v567;
      }

      if (!os_log_type_enabled(v567, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_2082;
      }

      goto LABEL_2148;
    }
  }

LABEL_2019:
  if ((*v37 != 1 || !HIDWORD(v864)) && (*v732 != 1 || !HIDWORD(v851)) && (*v760 != 1 || !HIDWORD(v821)))
  {
    if (!H16ISP::H16ISPFrameReceiver::HasPool(*(a2 + 160), 22))
    {
      goto LABEL_2051;
    }

    if (*(a2 + 100))
    {
      v562 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v562 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v562;
      }

      if (os_log_type_enabled(v562, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 136315138;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        v563 = "%s - Cannot disable Sashimi Raw during capture\n";
        goto LABEL_2071;
      }

      goto LABEL_2073;
    }

    v571 = H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(a2 + 160), 22);
    if (!v571)
    {
      goto LABEL_2051;
    }

    updated = v571;
    v572 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v572 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v572;
    }

    if (!os_log_type_enabled(v572, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_2082;
    }

LABEL_2148:
    SetVideoOutputConfigurations();
    goto LABEL_2082;
  }

  if (!H16ISP::H16ISPFrameReceiver::HasPool(*(a2 + 160), 22))
  {
    if (*v37 == 1 && HIDWORD(v864))
    {
      v568 = &v857;
    }

    else if (*v732 == 1 && HIDWORD(v851))
    {
      v568 = &v844;
    }

    else
    {
      if (*v760 != 1 || !HIDWORD(v821))
      {
        goto LABEL_2051;
      }

      v568 = &v814;
    }

    v569 = AddSashimiRawPoolToFrameReceiver(a2, a4, v568);
    if (v569)
    {
      updated = v569;
      v570 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v570 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v570;
      }

      if (os_log_type_enabled(v570, OS_LOG_TYPE_ERROR))
      {
        SetVideoOutputConfigurations();
      }

      goto LABEL_2072;
    }
  }

LABEL_2051:
  if ((*v37 != 1 || !v865) && (*v732 != 1 || !v852) && (*v760 != 1 || !v822))
  {
    if (H16ISP::H16ISPFrameReceiver::HasPool(*(a2 + 160), 23))
    {
      if (*(a2 + 100))
      {
        v562 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v562 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v562;
        }

        if (os_log_type_enabled(v562, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 136315138;
          *&valuePtr[4] = "SetVideoOutputConfigurations";
          v563 = "%s - Cannot disable Focus Pixel Data during capture\n";
          goto LABEL_2071;
        }

        goto LABEL_2073;
      }

      updated = H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(a2 + 160), 23);
      if (updated)
      {
        v655 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v655 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v655;
        }

        if (!os_log_type_enabled(v655, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_2082;
        }

        goto LABEL_2148;
      }
    }

    else
    {
      updated = 0;
    }

LABEL_2084:
    v18 = 0;
    v560 = 1;
    goto LABEL_2085;
  }

  if (H16ISP::H16ISPFrameReceiver::HasPool(*(a2 + 160), 23))
  {
    updated = 0;
    v18 = 0;
    v560 = 1;
    goto LABEL_2085;
  }

  if (*v37 == 1 && v865)
  {
    v573 = &v857;
    goto LABEL_2077;
  }

  if (*v732 == 1 && v852)
  {
    v573 = &v844;
    goto LABEL_2077;
  }

  updated = 0;
  v560 = 1;
  if (*v760 == 1)
  {
    v18 = 0;
    if (!v822)
    {
      goto LABEL_2085;
    }

    v573 = &v814;
LABEL_2077:
    updated = AddFocusPixelDataToFrameReceiver(a2, a4, v573);
    if (updated)
    {
      v574 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v574 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v574;
      }

      if (os_log_type_enabled(v574, OS_LOG_TYPE_ERROR))
      {
        SetVideoOutputConfigurations();
      }

      goto LABEL_2082;
    }

    goto LABEL_2084;
  }

  v18 = 0;
LABEL_2085:
  if (*(a2 + 1368) != v861)
  {
    if (H16ISP::H16ISPFrameReceiver::HasPool(*(a2 + 160), 7))
    {
      updated = H16ISP::H16ISPFrameReceiver::ModifyPoolBufferCount(*(a2 + 160), 7, v861);
    }

    if (*(a2 + 698) == 1 && *v37 == 1 && *(a2 + 1424) == 1 && BYTE8(v864) == 1)
    {
      updated = H16ISP::H16ISPFrameReceiver::ModifyPoolBufferCount(*(a2 + 160), 20, v861);
    }
  }

  v575 = v848;
  if (*(a2 + 1568) != v848)
  {
    if (H16ISP::H16ISPFrameReceiver::HasPool(*(a2 + 160), 9))
    {
      updated = H16ISP::H16ISPFrameReceiver::ModifyPoolBufferCount(*(a2 + 160), 9, v575);
    }

    if (*(a2 + 698) == 1 && *v732 == 1 && *(a2 + 1624) == 1 && BYTE8(v851) == 1)
    {
      updated = H16ISP::H16ISPFrameReceiver::ModifyPoolBufferCount(*(a2 + 160), 20, v575);
    }
  }

  v576 = v818;
  if (*(a2 + 2568) != v818 && H16ISP::H16ISPFrameReceiver::HasPool(*(a2 + 160), 7))
  {
    updated = H16ISP::H16ISPFrameReceiver::ModifyPoolBufferCount(*(a2 + 160), 7, v576);
  }

  if (*(a2 + 2768) != v805 && ((*(a2 + 776) & 1) != 0 || (*(a2 + 976) & 1) != 0 || (*(a2 + 1176) & 1) != 0 || (*(a2 + 1376) & 1) != 0 || (*(a2 + 1576) & 1) != 0 || *(a2 + 2704) == 1))
  {
    v577 = dword_281003314;
    if (!dword_281003314)
    {
      v577 = *(*(a2 + 184) + 120 * v764 + 116);
    }

    updated = H16ISP::H16ISPFrameReceiver::ModifyPoolBufferCount(*(a2 + 160), 19, v805 + v577 + 1);
  }

  if (updated == -536870211)
  {
    v18 = 4294954510;
    goto LABEL_2134;
  }

  if (updated)
  {
    v18 = 4294954516;
    v239 = cf1;
    LODWORD(v102) = v555;
LABEL_2136:
    v105 = v752;
    if (!v239)
    {
      goto LABEL_1939;
    }

    goto LABEL_1935;
  }

  if (!v560)
  {
LABEL_2134:
    v114 = cf1;
    LODWORD(v102) = v555;
    goto LABEL_1933;
  }

  v557 = *(a2 + 160) == 0;
  LODWORD(v102) = v555;
LABEL_2118:
  *(a2 + 4112) = v797;
  *(a2 + 1704) = v792;
  *(a2 + 1712) = v790;
  *(a2 + 1768) = v789;
  *(a2 + 1772) = v791;
  *(a2 + 1904) = v788;
  *(a2 + 1912) = v784;
  *(a2 + 1968) = v786;
  *(a2 + 1972) = v787;
  *(a2 + 1976) = v785;
  *(a2 + 2104) = v783;
  *(a2 + 2112) = v782;
  *(a2 + 2120) = v771;
  *(a2 + 2168) = v775;
  *(a2 + 2172) = v781;
  *(a2 + 2176) = v774;
  *(a2 + 2704) = v780;
  *(a2 + 2712) = v768;
  *(a2 + 2720) = v779;
  *(a2 + 2724) = v773;
  *(a2 + 2728) = v772;
  *(a2 + 2732) = v778;
  *(a2 + 2768) = v805;
  *(a2 + 2772) = v777;
  *(a2 + 2776) = v770;
  *(a2 + 2844) = v769;
  *(a2 + 2848) = v766;
  *(a2 + 2304) = v776;
  *(a2 + 2312) = v767;
  *(a2 + 2320) = v765;
  *(a2 + 896) = v962;
  v578 = v961;
  *(a2 + 864) = v960;
  *(a2 + 880) = v578;
  v579 = v957;
  *(a2 + 800) = v956;
  *(a2 + 816) = v579;
  v580 = *v959;
  *(a2 + 832) = v958;
  *(a2 + 848) = v580;
  size = rect2.size;
  *(a2 + 736) = rect2.origin;
  *(a2 + 752) = size;
  v582 = v955;
  *(a2 + 768) = v954;
  *(a2 + 784) = v582;
  v583 = *&v952[16];
  *v803 = *v952;
  *(a2 + 720) = v583;
  *(a2 + 1096) = v895;
  v584 = *v892;
  v585 = v894;
  *(a2 + 1064) = v893;
  *(a2 + 1080) = v585;
  v586 = v888;
  v587 = v890;
  *(a2 + 1000) = v889;
  *(a2 + 1016) = v587;
  *(a2 + 1032) = v891;
  *(a2 + 1048) = v584;
  v588 = v884;
  v589 = v886;
  *(a2 + 936) = v885;
  *(a2 + 952) = v589;
  *(a2 + 968) = v887;
  *(a2 + 984) = v586;
  *v804 = v883;
  *(a2 + 920) = v588;
  *(a2 + 1296) = v882;
  v590 = *v879;
  v591 = v881;
  *(a2 + 1264) = v880;
  *(a2 + 1280) = v591;
  v592 = v877;
  *(a2 + 1200) = v876;
  *(a2 + 1216) = v592;
  *(a2 + 1232) = v878;
  *(a2 + 1248) = v590;
  v593 = v873;
  *(a2 + 1136) = v872;
  *(a2 + 1152) = v593;
  v594 = v875;
  *(a2 + 1168) = v874;
  *(a2 + 1184) = v594;
  v595 = v871;
  *allocator = v870;
  *(a2 + 1120) = v595;
  v596 = v868;
  *(a2 + 1464) = v867;
  *(a2 + 1480) = v596;
  *(a2 + 1496) = v869;
  v597 = v864;
  *(a2 + 1400) = v863;
  *(a2 + 1416) = v597;
  v598 = pixelBufferPool;
  *(a2 + 1432) = v865;
  *(a2 + 1448) = v598;
  v599 = v860;
  *(a2 + 1336) = v859;
  *(a2 + 1352) = v599;
  v600 = v862;
  *(a2 + 1368) = v861;
  *(a2 + 1384) = v600;
  v601 = v858;
  *v37 = v857;
  *(a2 + 1320) = v601;
  v602 = v853;
  v603 = v855;
  *(a2 + 1664) = v854;
  *(a2 + 1680) = v603;
  *(a2 + 1696) = v856;
  v604 = v849;
  v605 = v851;
  v606 = v852;
  *(a2 + 1600) = v850;
  *(a2 + 1616) = v605;
  *(a2 + 1632) = v606;
  *(a2 + 1648) = v602;
  v607 = v845;
  v608 = v847;
  v609 = v848;
  *(a2 + 1536) = v846;
  *(a2 + 1552) = v608;
  *(a2 + 1568) = v609;
  *(a2 + 1584) = v604;
  v610 = v843;
  *v732 = v844;
  *(a2 + 1520) = v607;
  v611 = v842;
  *(a2 + 1720) = v841;
  *(a2 + 1736) = v611;
  *(a2 + 1752) = v610;
  v612 = v838;
  *(a2 + 1840) = v837;
  *(a2 + 1856) = v612;
  v613 = v840;
  *(a2 + 1872) = v839;
  *(a2 + 1888) = v613;
  v614 = v834;
  *(a2 + 1776) = v833;
  *(a2 + 1792) = v614;
  v615 = v836;
  *(a2 + 1808) = v835;
  *(a2 + 1824) = v615;
  v616 = v831;
  v617 = v832;
  v618 = v829;
  *(a2 + 1920) = v830;
  *(a2 + 1936) = v616;
  *(a2 + 1952) = v617;
  v619 = v948;
  v759[2] = v947;
  v759[3] = v619;
  v620 = v946;
  *v759 = v945;
  v759[1] = v620;
  *(v759 + 111) = *(v951 + 15);
  v621 = v951[0];
  v759[5] = v950;
  v759[6] = v621;
  v759[4] = v949;
  v622 = v943;
  v623 = v944[0];
  *(a2 + 2152) = *(v944 + 12);
  *(a2 + 2124) = v622;
  *(a2 + 2140) = v623;
  v624 = v936;
  v625 = v937;
  v626 = v939;
  *(a2 + 2209) = v938;
  *(a2 + 2225) = v626;
  *(a2 + 2177) = v624;
  *(a2 + 2193) = v625;
  v627 = v940;
  v628 = v941;
  v629 = v942[0];
  *(a2 + 2288) = *(v942 + 15);
  *(a2 + 2257) = v628;
  *(a2 + 2273) = v629;
  *(a2 + 2241) = v627;
  v630 = v814;
  v631 = v815;
  v632 = v817;
  *(v760 + 32) = v816;
  *(v760 + 48) = v632;
  *v760 = v630;
  *(v760 + 16) = v631;
  v633 = v818;
  v634 = v819;
  v635 = v821;
  *(v760 + 96) = v820;
  *(v760 + 112) = v635;
  *(v760 + 64) = v633;
  *(v760 + 80) = v634;
  v636 = v822;
  v637 = v823;
  v638 = v824;
  v639 = v825;
  *(v760 + 192) = v826;
  *(v760 + 160) = v638;
  *(v760 + 176) = v639;
  *(v760 + 128) = v636;
  *(v760 + 144) = v637;
  *(a2 + 2736) = v81;
  *(a2 + 2744) = v82;
  *(a2 + 2752) = v83;
  *(a2 + 2760) = v84;
  v640 = v929[0];
  *(a2 + 2809) = v928;
  *(a2 + 2825) = v640;
  *(a2 + 2840) = *(v929 + 15);
  v641 = v927;
  *(a2 + 2777) = v926;
  *(a2 + 2793) = v641;
  v642 = v812;
  *(a2 + 2856) = v811;
  *(a2 + 2872) = v642;
  *(a2 + 2888) = v813;
  v643 = v935[0];
  *(a2 + 2324) = v934;
  *(a2 + 2340) = v643;
  *(a2 + 2352) = *(v935 + 12);
  *(a2 + 2368) = v793;
  *(a2 + 2432) = *(v933 + 12);
  v644 = v933[0];
  *(a2 + 2404) = v932;
  *(a2 + 2420) = v644;
  v645 = v931;
  *(a2 + 2372) = v930;
  *(a2 + 2388) = v645;
  *(a2 + 2448) = v794;
  v646 = v827;
  *(a2 + 2472) = v828;
  *(a2 + 2488) = v618;
  *(a2 + 2456) = v646;
  *(a2 + 4080) = v796;
  *(a2 + 4088) = v802;
  *(a2 + 4096) = v798;
  *(a2 + 4100) = v800;
  *(a2 + 4104) = v795;
  *(a2 + 4108) = v799;
  v647 = v925[0];
  *(a2 + 4128) = *(v925 + 15);
  *(a2 + 4113) = v647;
  *(a2 + 4136) = cfa;
  if (v557)
  {
    return 0;
  }

  if (!*(a2 + 4816))
  {
    v652 = resizeRawPool(a4, a2);
    if (v652)
    {
      v653 = v652;
      v654 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v654 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v654;
      }

      if (os_log_type_enabled(v654, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 136315394;
        *&valuePtr[4] = "SetVideoOutputConfigurations";
        *&valuePtr[12] = 1024;
        *&valuePtr[14] = v653;
        _os_log_impl(&dword_2247DB000, v654, OS_LOG_TYPE_DEFAULT, "%s - unable to resize raw pool err = %d\n", valuePtr, 0x12u);
      }
    }
  }

  LODWORD(v917.value) = 0;
  v806 = 0;
  v648 = resizeStillMetaPool(a2, 1, &v917, &v806);
  if (v648)
  {
    v649 = v648;
    v650 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v650 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v650;
    }

    if (os_log_type_enabled(v650, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 136315394;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      *&valuePtr[12] = 1024;
      *&valuePtr[14] = v649;
      _os_log_impl(&dword_2247DB000, v650, OS_LOG_TYPE_DEFAULT, "%s - unable to resize still meta pool err = %d\n", valuePtr, 0x12u);
    }
  }

  v18 = resizeThumbnailRawPool(a2, 1, 0, &v806);
  if (v18)
  {
    v651 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v651 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v651;
    }

    v105 = v752;
    if (os_log_type_enabled(v651, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 136315394;
      *&valuePtr[4] = "SetVideoOutputConfigurations";
      *&valuePtr[12] = 1024;
      *&valuePtr[14] = v18;
      _os_log_impl(&dword_2247DB000, v651, OS_LOG_TYPE_DEFAULT, "%s - unable to resize thumbnail pool err = %d\n", valuePtr, 0x12u);
    }

    if (!cf1)
    {
      goto LABEL_1939;
    }

    goto LABEL_1935;
  }

  return v18;
}