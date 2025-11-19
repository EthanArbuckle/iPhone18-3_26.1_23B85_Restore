BOOL IsJasperSyncGroup(H16ISP::H16ISPDevice *a1, CFArrayRef theArray)
{
  if (!theArray || !CFArrayGetCount(theArray))
  {
    return 0;
  }

  v4 = 0;
  do
  {
    CFArrayGetValueAtIndex(theArray, v4);
    FigCaptureStreamGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    isSensorType = H16ISP::H16ISPDevice::isSensorType(a1, *(DerivedStorage + 156), 1785950322);
    if (isSensorType)
    {
      break;
    }

    ++v4;
  }

  while (v4 < CFArrayGetCount(theArray));
  return isSensorType;
}

double H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(uint64_t a1, int a2)
{
  *a1 = &unk_283814208;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 76) = a2;
  *(a1 + 16) = 0;
  return result;
}

{
  *a1 = &unk_283814208;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 76) = a2;
  *(a1 + 16) = 0;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t CopyGDCCoefficients(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2;
  v69 = *MEMORY[0x277D85DE8];
  valuePtr = 0.0;
  v10 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    if (H16ISP::H16ISPDevice::isSensorType(*(v4 + 24), *(v6 + 156), 1718186595))
    {
      if (!getPCECalib(*(v4 + 24), v48))
      {
        v14 = 4294954516;
        goto LABEL_19;
      }

      v12 = &v44;
      v13 = -64;
      do
      {
        *v12 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v48[v13 + 13120]), *&v48[v13 + 13136]);
        v12[-2] = vcvt_hight_f32_f64(vcvt_f32_f64(*&v48[v13 + 13184]), *&v48[v13 + 13200]);
        ++v12;
        v13 += 32;
      }

      while (v13);
      bzero(v32, 0x40uLL);
      goto LABEL_13;
    }

    if (H16ISP::H16ISPDevice::GetDistortionData(*(v4 + 24), *(v6 + 156), 0, &v49))
    {
LABEL_9:
      v14 = 4294954514;
      goto LABEL_19;
    }

    v15 = &v52;
    if ((v50 - 49921) < 4 || v50 == 49925)
    {
      *bytes = 0;
      v41 = vcvt_hight_f32_f64(vcvt_f32_f64(v61), v62);
      v42 = vcvt_f32_f64(v63);
      v16 = v64;
      v43 = v16;
      v44 = 0;
      v45 = vcvt_hight_f32_f64(vcvt_f32_f64(v53), v54);
      v46 = vcvt_f32_f64(v55);
      v17 = v56;
      v47 = v17;
      *v32 = 0;
      v33 = vcvt_hight_f32_f64(vcvt_f32_f64(v65), v66);
      v34 = vcvt_f32_f64(v67);
      v18 = v68;
      v35 = v18;
      v36 = 0;
      v37 = vcvt_hight_f32_f64(vcvt_f32_f64(v57), v58);
      v38 = vcvt_f32_f64(v59);
      v19 = v60;
      v39 = v19;
    }

    else
    {
      if (v50 != 49926)
      {
        goto LABEL_9;
      }

      v27 = &v44;
      v28 = &v36;
      v29 = 8;
      do
      {
        v27[-2] = vcvt_hight_f32_f64(vcvt_f32_f64(v15[-4]), v15[-3]);
        *v27++ = vcvt_hight_f32_f64(vcvt_f32_f64(v15[-12]), v15[-11]);
        v28[-2] = vcvt_hight_f32_f64(vcvt_f32_f64(*v15), v15[1]);
        *v28++ = vcvt_hight_f32_f64(vcvt_f32_f64(v15[-8]), v15[-7]);
        v15 += 2;
        v29 -= 4;
      }

      while (v29);
      v30 = v51;
      valuePtr = v30;
    }

LABEL_13:
    v20 = CFDataCreate(v10, bytes, 64);
    if (v20)
    {
      v21 = v20;
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CF4538], v20);
      CFRelease(v21);
      v22 = CFDataCreate(v10, v32, 64);
      if (v22)
      {
        v23 = v22;
        CFDictionaryAddValue(Mutable, *MEMORY[0x277CF4540], v22);
        CFRelease(v23);
        if (valuePtr == 0.0)
        {
          v14 = 0;
          goto LABEL_21;
        }

        v24 = CFNumberCreate(v9, kCFNumberFloatType, &valuePtr);
        if (v24)
        {
          v25 = v24;
          CFDictionaryAddValue(Mutable, *MEMORY[0x277CF4548], v24);
          v14 = 0;
LABEL_20:
          CFRelease(v25);
          goto LABEL_21;
        }
      }
    }

    v14 = 4294954510;
LABEL_19:
    v25 = Mutable;
    Mutable = 0;
    goto LABEL_20;
  }

  v14 = 4294954510;
LABEL_21:
  *v8 = Mutable;
  return v14;
}

float H16ISP::H16ISPDevice::ISP_GetOpticalPixelSize(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  result = -1.0;
  if (*(this + 4) == 1 && *(this + 1167) > a2)
  {
    return *(*(this + 6) + 156 * a2 + 148);
  }

  return result;
}

unint64_t H16ISP::H16ISPTimeOfFlightColorSynchronizer::setWideConfiguration(pthread_mutex_t **this, const __CFDictionary *a2, const simd_float4x3 *a3, float a4)
{
  H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::enableColor(this[3], a2, a3, a4);
  result = H16ISP::H16ISPDevice::getSensorChannel(*this, 1919246706, 1852793709);
  *(this + 16) = result;
  return result;
}

uint64_t H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::enableColor(pthread_mutex_t *this, const __CFDictionary *a2, const simd_float4x3 *a3, float a4)
{
  pthread_mutex_lock(this + 2);
  this[3].__opaque[16] = 1;
  v8 = *&this->__opaque[24];
  if (v8)
  {
    CFRelease(v8);
    *&this->__opaque[24] = 0;
  }

  if (a2)
  {
    *&this->__opaque[24] = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], a2);
  }

  v9 = a4 * 0.001;
  *&this[1].__opaque[40] = v9;
  v10 = a3->columns[0];
  v11 = a3->columns[1];
  v12 = a3->columns[3];
  *&this[1].__opaque[8] = a3->columns[2];
  *&this[1].__opaque[24] = v12;
  *&this->__opaque[40] = v10;
  *&this[1].__sig = v11;
  if (*this[3].__opaque && !this[3].__sig)
  {
    H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::activateColor(this);
  }

  return pthread_mutex_unlock(this + 2);
}

void H16ISP::H16ISPJasperColorNode::H16ISPJasperColorNode(H16ISP::H16ISPJasperColorNode *this)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 12);
  *v1 = &unk_283814AE8;
  v1[10] = 0;
}

{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 12);
  *v1 = &unk_283814AE8;
  v1[10] = 0;
}

uint64_t SetVideoOutputsEnabled(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = *MEMORY[0x277D85DE8];
  if (*(a2 + 698) != 1)
  {
    return 4294954509;
  }

  if (!cf)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(cf, *MEMORY[0x277CF6640]);
  cf1 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6658]);
  v71 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6628]);
  v9 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6660]);
  v10 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6668]);
  v11 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6670]);
  v64 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6620]);
  v65 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6650]);
  v66 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6648]);
  v12 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6678]);
  v68 = CFDictionaryGetValue(cf, @"VisPipe");
  v69 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6638]);
  v70 = CFDictionaryGetValue(cf, *MEMORY[0x277CF6630]);
  if (!Value)
  {
    v59 = 0;
    v63 = 0;
    goto LABEL_15;
  }

  v13 = *(a2 + 48);
  v14 = *(a2 + 192);
  if (v13 < v14)
  {
    v14 = 0;
  }

  if (H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), *(*(a2 + 184) + 120 * (v13 - v14) + 16), v75 + 4, &v80))
  {
    return 4294954516;
  }

  if ((v84 & 1) == 0)
  {
    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v17 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      buf = 136315138;
      v77 = "SetVideoOutputsEnabled";
      _os_log_impl(&dword_2247DB000, v17, OS_LOG_TYPE_DEFAULT, "%s - Primary scaler not reported on this platform\n", &buf, 0xCu);
    }

    return 4294954516;
  }

  v59 = Value;
  if (CFEqual(Value, *MEMORY[0x277CBED28]))
  {
    if ((*(a2 + 704) & 1) == 0)
    {
      *(a2 + 704) = 1;
      if (*(a2 + 160))
      {
        ActivatePrimaryScalerOutputInFrameReceiver(a2, a4);
      }
    }

    goto LABEL_92;
  }

  if (!*(a2 + 704))
  {
LABEL_92:
    v63 = 0;
    goto LABEL_93;
  }

  *(a2 + 704) = 0;
  v63 = *(a2 + 160) != 0;
LABEL_93:
  v30 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v30 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v30;
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = *(a2 + 704);
    buf = 136315394;
    v77 = "SetVideoOutputsEnabled";
    v78 = 1024;
    v79 = v31;
    _os_log_impl(&dword_2247DB000, v30, OS_LOG_TYPE_INFO, "%s - PrimaryScaler:%d\n\n", &buf, 0x12u);
  }

LABEL_15:
  if (!cf1)
  {
    v16 = MEMORY[0x277CBED28];
    v62 = 0;
    goto LABEL_32;
  }

  v16 = MEMORY[0x277CBED28];
  if (CFEqual(cf1, *MEMORY[0x277CBED28]))
  {
    if ((*(a2 + 904) & 1) == 0)
    {
      *(a2 + 904) = 1;
      if (*(a2 + 160))
      {
        ActivateSecondaryScalerOutputInFrameReceiver(a2, a4);
      }
    }

    goto LABEL_27;
  }

  if (!*(a2 + 904))
  {
LABEL_27:
    v62 = 0;
    goto LABEL_28;
  }

  *(a2 + 904) = 0;
  v62 = *(a2 + 160) != 0;
LABEL_28:
  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v18 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = *(a2 + 904);
    v80 = 136315394;
    v81 = "SetVideoOutputsEnabled";
    v82 = 1024;
    v83 = v19;
    _os_log_impl(&dword_2247DB000, v18, OS_LOG_TYPE_INFO, "%s - SecondaryScaler:%d\n\n", &v80, 0x12u);
  }

LABEL_32:
  if (!v71)
  {
    v61 = 0;
    goto LABEL_45;
  }

  if (CFEqual(v71, *v16))
  {
    if ((*(a2 + 1104) & 1) == 0)
    {
      *(a2 + 1104) = 1;
      if (*(a2 + 160))
      {
        ActivateIntermediateTapOutputInFrameReceiver(a2, a4);
      }
    }

    goto LABEL_40;
  }

  if (!*(a2 + 1104))
  {
LABEL_40:
    v61 = 0;
    goto LABEL_41;
  }

  *(a2 + 1104) = 0;
  v61 = *(a2 + 160) != 0;
LABEL_41:
  v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v20 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v20;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = *(a2 + 1104);
    v80 = 136315394;
    v81 = "SetVideoOutputsEnabled";
    v82 = 1024;
    v83 = v21;
    _os_log_impl(&dword_2247DB000, v20, OS_LOG_TYPE_INFO, "%s - IntermediateTap:%d\n\n", &v80, 0x12u);
  }

LABEL_45:
  if (!v9)
  {
    v60 = 0;
    goto LABEL_58;
  }

  if (CFEqual(v9, *v16))
  {
    if ((*(a2 + 1304) & 1) == 0)
    {
      *(a2 + 1304) = 1;
      if (*(a2 + 160))
      {
        ActivateStillImageOutputInFrameReceiver(a2, a4);
      }
    }

    goto LABEL_53;
  }

  if (!*(a2 + 1304))
  {
LABEL_53:
    v60 = 0;
    goto LABEL_54;
  }

  *(a2 + 1304) = 0;
  v60 = *(a2 + 160) != 0;
LABEL_54:
  v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v22 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = *(a2 + 1304);
    v80 = 136315394;
    v81 = "SetVideoOutputsEnabled";
    v82 = 1024;
    v83 = v23;
    _os_log_impl(&dword_2247DB000, v22, OS_LOG_TYPE_INFO, "%s - StillImage:%d\n\n", &v80, 0x12u);
  }

LABEL_58:
  if (!v10)
  {
    goto LABEL_70;
  }

  if (CFEqual(v10, *v16))
  {
    if ((*(a2 + 1504) & 1) == 0)
    {
      *(a2 + 1504) = 1;
      if (*(a2 + 160))
      {
        ActivateStillImageIntermediateTapOutputInFrameReceiver(a2, a4);
      }
    }

    goto LABEL_65;
  }

  if (!*(a2 + 1504))
  {
LABEL_65:
    LODWORD(v10) = 0;
    goto LABEL_66;
  }

  *(a2 + 1504) = 0;
  LODWORD(v10) = *(a2 + 160) != 0;
LABEL_66:
  v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v24 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v24;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = *(a2 + 1504);
    v80 = 136315394;
    v81 = "SetVideoOutputsEnabled";
    v82 = 1024;
    v83 = v25;
    _os_log_impl(&dword_2247DB000, v24, OS_LOG_TYPE_INFO, "%s - StillImageIntermediateTap:%d\n\n", &v80, 0x12u);
  }

LABEL_70:
  if (!v12)
  {
    v27 = 0;
    v26 = cf1;
    goto LABEL_85;
  }

  if (CFEqual(v12, *v16))
  {
    if ((*(a2 + 2504) & 1) == 0)
    {
      *(a2 + 2504) = 1;
      v26 = cf1;
      if (*(a2 + 160))
      {
        ActivateStillImageRawOutputInFrameReceiver(a2, a4);
      }

      v27 = 0;
      goto LABEL_81;
    }

    goto LABEL_79;
  }

  if (!*(a2 + 2504))
  {
LABEL_79:
    v27 = 0;
    goto LABEL_80;
  }

  *(a2 + 2504) = 0;
  v27 = *(a2 + 160) != 0;
LABEL_80:
  v26 = cf1;
LABEL_81:
  v28 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v28 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v28;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = *(a2 + 2504);
    v80 = 136315394;
    v81 = "SetVideoOutputsEnabled";
    v82 = 1024;
    v83 = v29;
    _os_log_impl(&dword_2247DB000, v28, OS_LOG_TYPE_INFO, "%s - StillImageRaw:%d\n\n", &v80, 0x12u);
  }

LABEL_85:
  if (v11 && ConfigSupportsContextSwitchCaptures(a2, a4, 0, 0))
  {
    if (CFEqual(v11, *v16))
    {
      if (*(a2 + 160))
      {
        return 4294954612;
      }

      if ((*(a2 + 1704) & 1) == 0)
      {
        *(a2 + 1704) = 1;
      }
    }

    v32 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v32 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v32;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = *(a2 + 1704);
      v80 = 136315394;
      v81 = "SetVideoOutputsEnabled";
      v82 = 1024;
      v83 = v33;
      _os_log_impl(&dword_2247DB000, v32, OS_LOG_TYPE_INFO, "%s - StillImageQuadra:%d\n\n", &v80, 0x12u);
    }
  }

  if (v64)
  {
    if (CFEqual(v64, *v16))
    {
      if (!*(a2 + 1904))
      {
        v34 = 1;
LABEL_109:
        *(a2 + 1904) = v34;
      }
    }

    else if (*(a2 + 1904))
    {
      v34 = 0;
      goto LABEL_109;
    }

    v35 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v35 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v35;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = *(a2 + 1904);
      v80 = 136315394;
      v81 = "SetVideoOutputsEnabled";
      v82 = 1024;
      v83 = v36;
      _os_log_impl(&dword_2247DB000, v35, OS_LOG_TYPE_INFO, "%s - Depth:%d\n\n", &v80, 0x12u);
    }
  }

  if (*(a2 + 4256))
  {
    v37 = v65;
  }

  else
  {
    isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1785950322);
    v37 = v65;
    if (!isSensorType)
    {
      goto LABEL_125;
    }
  }

  if (v37)
  {
    if (CFEqual(v37, *v16) && (*(a2 + 2104) & 1) == 0)
    {
      *(a2 + 2104) = 1;
    }

    v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v39 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v39;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = *(a2 + 2104);
      v80 = 136315394;
      v81 = "SetVideoOutputsEnabled";
      v82 = 1024;
      v83 = v40;
      _os_log_impl(&dword_2247DB000, v39, OS_LOG_TYPE_INFO, "%s - Raw:%d\n\n", &v80, 0x12u);
    }
  }

LABEL_125:
  if (!v66)
  {
    v67 = 0;
    goto LABEL_139;
  }

  if (CFEqual(v66, *v16))
  {
    if ((*(a2 + 2304) & 1) == 0)
    {
      *(a2 + 2304) = 1;
    }

    if (*(a2 + 160))
    {
      ActivateProResRawOutputInFrameReceiver(a2, a4);
    }

    goto LABEL_134;
  }

  if (!*(a2 + 2304))
  {
LABEL_134:
    v67 = 0;
    goto LABEL_135;
  }

  *(a2 + 2304) = 0;
  v67 = *(a2 + 160) != 0;
LABEL_135:
  v41 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v41 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v41;
  }

  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v42 = *(a2 + 2304);
    v80 = 136315394;
    v81 = "SetVideoOutputsEnabled";
    v82 = 1024;
    v83 = v42;
    _os_log_impl(&dword_2247DB000, v41, OS_LOG_TYPE_INFO, "%s - ProResRaw:%d\n\n", &v80, 0x12u);
  }

LABEL_139:
  if (v68)
  {
    if (CFEqual(v68, *v16))
    {
      if ((*(a2 + 2704) & 1) == 0)
      {
        *(a2 + 2704) = 1;
        if (*(a2 + 160))
        {
          ActivateVisPipeOutputInFrameReceiver(a2, a4);
        }
      }
    }
  }

  if (!v69)
  {
    v43 = v27;
    v44 = 0;
    goto LABEL_157;
  }

  v43 = v27;
  if (CFEqual(v69, *v16))
  {
    if ((*(a2 + 4080) & 1) == 0)
    {
      *(a2 + 4080) = 1;
      if (*(a2 + 160))
      {
        ActivatePointCloudOutputInFrameReceiver(a2, a4);
      }
    }

    goto LABEL_152;
  }

  if (!*(a2 + 4080))
  {
LABEL_152:
    v44 = 0;
    goto LABEL_153;
  }

  *(a2 + 4080) = 0;
  v44 = *(a2 + 160) != 0;
LABEL_153:
  v45 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v45 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v45;
  }

  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    v46 = *(a2 + 4080);
    v80 = 136315394;
    v81 = "SetVideoOutputsEnabled";
    v82 = 1024;
    v83 = v46;
    _os_log_impl(&dword_2247DB000, v45, OS_LOG_TYPE_INFO, "%s - PointCloud:%d\n\n", &v80, 0x12u);
  }

LABEL_157:
  if (v70)
  {
    v47 = CFEqual(v70, *v16);
    v48 = v47 != 0;
    if (*(a2 + 2904) == v48)
    {
      v49 = 0;
    }

    else
    {
      v50 = v47;
      if (v47 && *(a2 + 160))
      {
        if (isExclaveAlgoEnabled(a2))
        {
          ConfigureExclaveGraph(a4, a2);
        }

        ActivateMetadataOutputInFrameReceiver(a2, a4);
      }

      v49 = v50 == 0;
      *(a2 + 2904) = v48;
    }

    v26 = cf1;
  }

  else
  {
    v49 = 0;
  }

  if (*(a2 + 160))
  {
    v51 = H16ISP::H16ISPDevice::EnableTileBasedGDC(*(a4 + 24), *(a2 + 156), *(a2 + 1379), *(a2 + 779), 0, 0);
    if (v51)
    {
      v52 = v51;
      v53 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v53 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v53;
      }

      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v80 = 136315394;
        v81 = "SetVideoOutputsEnabled";
        v82 = 1024;
        v83 = v52;
        _os_log_impl(&dword_2247DB000, v53, OS_LOG_TYPE_INFO, "%s - EnableTileBasedGDC error %d\n\n", &v80, 0x12u);
      }

      return 4294954611;
    }

    if (v26 | v71)
    {
      v54 = *(a2 + 1104) ? 2 : 3;
      if (H16ISP::H16ISPDevice::ISP_PreviewStreamSet(*(a4 + 24), *(a2 + 156), v54))
      {
        v55 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v55 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v55;
        }

        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          SetVideoOutputsEnabled();
        }

        return 4294954516;
      }
    }

    if (v59 | v26 && *(a2 + 4424) == 1)
    {
      v80 = 0;
      v75[0] = 0;
      buf = 0;
      v74 = 0;
      v73 = 0;
      H16ISP::H16ISPFrameReceiver::getOutputSize(*(a2 + 160), &v80, v75 + 1, &buf, v75, &v74, &v73);
      if ((v74 - 31) >= 6 && v74 != 1)
      {
        *(a2 + 4424) = 0;
      }

      if (H16ISP::H16ISPDevice::SetProResSharpeningTuning(*(a4 + 24), *(a2 + 156), *(a2 + 4424) != 0))
      {
        v56 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v56 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v56;
        }

        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          SetVideoOutputsEnabled();
        }

        *(a2 + 4424) = 0;
      }
    }
  }

  v57 = a2 + 52;
  if (*(a2 + 52) > *(a2 + 60))
  {
    v58 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v58 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v58;
    }

    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      SetVideoOutputsEnabled(v57);
    }

    return 4294954516;
  }

  if (*(a2 + 160))
  {
    SuspendResumeStream(a4, a2);
  }

  if (v63)
  {
    DeactivatePrimaryScalerOutputInFrameReceiver(a2, a4);
  }

  if (v62)
  {
    DeactivateSecondaryScalerOutputInFrameReceiver(a2, a4);
  }

  if (v61)
  {
    DeactivateIntermediateTapOutputInFrameReceiver(a2, a4);
  }

  if (v60)
  {
    DeactivateStillImageOutputInFrameReceiver(a2);
    if (!v10)
    {
LABEL_209:
      if (!v43)
      {
        goto LABEL_210;
      }

LABEL_219:
      DeactivateStillImageRawOutputInFrameReceiver(a2);
      if (!v49)
      {
        goto LABEL_212;
      }

      goto LABEL_211;
    }
  }

  else if (!v10)
  {
    goto LABEL_209;
  }

  DeactivateStillImageIntermediateTapOutputInFrameReceiver(a2);
  if (v43)
  {
    goto LABEL_219;
  }

LABEL_210:
  if (v49)
  {
LABEL_211:
    DeactivateMetadataOutputInFrameReceiver(a2, a4);
  }

LABEL_212:
  if (v67)
  {
    DeactivateProResRawOutputInFrameReceiver(a2);
  }

  if (v44)
  {
    DeactivatePointCloudOutputInFrameReceiver(a2);
  }

  return 0;
}

void H16ISP::H16ISPMetadataDictCreatorGraphNode::H16ISPMetadataDictCreatorGraphNode(H16ISP::H16ISPMetadataDictCreatorGraphNode *this, H16ISP::H16ISPDevice *a2)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 4);
  *v3 = &unk_2838138E0;
  v3[10] = a2;
  operator new[]();
}

H16ISP::H16ISPGraphExitNode *H16ISP::H16ISPGraphExitNode::H16ISPGraphExitNode(H16ISP::H16ISPGraphExitNode *this)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 2);
  *v2 = &unk_283813C40;
  *(v2 + 80) = 0;
  bzero((v2 + 88), 0x48uLL);
  return this;
}

{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 2);
  *v2 = &unk_283813C40;
  *(v2 + 80) = 0;
  bzero((v2 + 88), 0x48uLL);
  return this;
}

void *std::deque<H16ISP::H16ISPFilterGraphNode *>::push_back(void *result, void *a2)
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
    result = std::deque<H16ISP::H16ISPFilterGraphNode *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

uint64_t H16ISP::H16ISPFilterGraphManager::AddEntryNode(H16ISP::H16ISPFilterGraphManager *this, H16ISP::H16ISPFilterGraphNode *a2)
{
  v4 = a2;
  std::deque<H16ISP::H16ISPFilterGraphNode *>::push_back(this + 1, &v4);
  std::deque<H16ISP::H16ISPFilterGraphNode *>::push_back(this + 7, &v4);
  return 0;
}

void *std::deque<H16ISP::H16ISPFilterGraphNode *>::__add_back_capacity(void *a1)
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

void sub_224822430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::allocator<__CVBuffer **>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double H16ISP::H16ISPFilterGraphManager::H16ISPFilterGraphManager(H16ISP::H16ISPFilterGraphManager *this)
{
  *this = &unk_283813070;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

{
  *this = &unk_283813070;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

void *std::__split_buffer<__CVBuffer **>::emplace_back<__CVBuffer **>(void *result, void *a2)
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

      std::allocator<__CVBuffer **>::allocate_at_least[abi:ne200100](result[4], v11);
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

uint64_t H16ISP::H16ISPFilterGraphManager::AddNode(H16ISP::H16ISPFilterGraphManager *this, H16ISP::H16ISPFilterGraphNode *a2)
{
  v3 = a2;
  std::deque<H16ISP::H16ISPFilterGraphNode *>::push_back(this + 7, &v3);
  return 0;
}

uint64_t H16ISP::H16ISPFilterGraphManager::ConnectNodes(H16ISP::H16ISPFilterGraphManager *this, H16ISP::H16ISPFilterGraphNode *a2, H16ISP::H16ISPFilterGraphNode *a3)
{
  v3 = *(this + 11);
  v4 = *(this + 8);
  v5 = *(this + 9);
  v6 = (v4 + 8 * (v3 >> 9));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = &(*v6)[*(this + 11) & 0x1FFLL];
  }

  v8 = 0;
  v9 = 0;
LABEL_5:
  v10 = v7 - 512;
  while (1)
  {
    v11 = v5 == v4 ? 0 : *(v4 + (((*(this + 12) + v3) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 12) + v3) & 0x1FF);
    if (v7 == v11)
    {
      break;
    }

    v12 = *v7++;
    v9 |= v12 == a2;
    v8 |= v12 == a3;
    if (*v6 == ++v10)
    {
      v13 = v6[1];
      ++v6;
      v7 = v13;
      goto LABEL_5;
    }
  }

  if (v9 & v8)
  {
    return H16ISP::H16ISPFilterGraphNode::AddOutputNode(a2, a3);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPFilterGraphNode::AddOutputNode(H16ISP::H16ISPFilterGraphNode *this, H16ISP::H16ISPFilterGraphNode *a2)
{
  v3 = a2;
  std::deque<H16ISP::H16ISPFilterGraphNode *>::push_back(this + 3, &v3);
  return 3758097095;
}

uint64_t isExclaveAlgoEnabled(_BYTE *a1)
{
  if (a1[2925] == 1)
  {
    if (a1[2920] & 1) != 0 || (a1[2921] & 1) != 0 || (a1[2922] & 1) != 0 || (a1[2923] & 1) != 0 || (a1[3020] & 1) != 0 || (a1[2941] & 1) != 0 || (a1[2943] & 1) != 0 || (a1[3024])
    {
      v1 = 1;
    }

    else
    {
      v1 = a1[2944];
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t ApplySlaveConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 4096;
  v5 = *(a2 + 156);
  v6 = gCaptureDeviceCFPrefs[44 * v5 + 191];
  if (v6 == -1)
  {
    v6 = *(a2 + 4376);
  }

  if (*(v4 + 277))
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  v8 = H16ISP::H16ISPDevice::SetFrameSkippingRatio(*(a1 + 24), v5, v7);
  if (v8)
  {
    v9 = v8;
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ApplySlaveConfiguration();
    }
  }

  else
  {
    v9 = H16ISP::H16ISPDevice::SetSlaveProcessingConfig(*(a1 + 24), *(a2 + 156), *(v4 + 275) ^ 1u);
    if (v9)
    {
      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v11 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        ApplySlaveConfiguration();
      }
    }
  }

  return v9;
}

uint64_t H16ISP::H16ISPDevice::SetFrameSkippingRatio(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 316;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetSlaveProcessingConfig(H16ISP::H16ISPDevice *a1, __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 318;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t ALSModeForStreaming(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 236);
  result = *(a1 + 232);
  if ((v3 & 1) == 0 && result)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 192);
    if (v5 < v6)
    {
      v6 = 0;
    }

    v7 = v5 - v6;
    if (H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(a1 + 156), *(*(a1 + 184) + 120 * (v5 - v6) + 16), v15, v17))
    {
      return 0;
    }

    v8 = *(a1 + 184);
    v9 = *(a1 + 48);
    v10 = *(a1 + 192);
    if (v9 < v10)
    {
      v10 = 0;
    }

    v11 = 120 * (v9 - v10);
    v12 = v8 ? v8 + 120 * v7 : v11;
    v13 = *(v12 + 108);
    v14 = v13 == 0.0 ? v16 : v13 * 256.0;
    if ((v14 * 0.0039062) >= 60.0)
    {
      return 0;
    }

    else
    {
      return *(a1 + 232);
    }
  }

  return result;
}

void H16ISP::H16ISPFrameReceiverRTThreadStart(uint64_t a1)
{
  pthread_setname_np("H16ISPFrameReceiverRealTimeThread");
  H16ISP::H16ISPThreadReadySyncer::lock(*(a1 + 96));
  operator new();
}

uint64_t H16ISP::H16ISPFrameReceiver::H16ISPFrameReceiver(uint64_t a1, uint64_t a2, int a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = a2;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 432) = 0;
  *(a1 + 436) = a3;
  *(a1 + 592) = 0;
  *(a1 + 896) = 0;
  *(a1 + 928) = 0;
  *(a1 + 924) = 0;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 873) = 0u;
  *(a1 + 932) = 1;
  *(a1 + 948) = 1;
  *(a1 + 992) = 0x4000000000000000;
  *(a1 + 1000) = 1;
  *(a1 + 16) = 0;
  *(a1 + 22) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 1008) = 0u;
  pthread_mutex_init((a1 + 96), 0);
  pthread_mutex_init((a1 + 224), 0);
  pthread_mutex_init((a1 + 296), 0);
  *(a1 + 360) = 0;
  *(a1 + 288) = 0;
  H16ISP::gFrameReceiverCFPrefs = H16ISP::H16ISPGetCFPreferenceNumber(@"SmileAndBlinkFD", @"com.apple.coremedia", 0);
  H16ISP::gFrameReceiverCFPrefs = H16ISP::H16ISPGetCFPreferenceString(@"MOVReplay", @"com.apple.coremedia", 0, v10);
  H16ISP::gFrameReceiverCFPrefs = H16ISP::H16ISPGetCFPreferenceNumber(@"oisContactStopOffset", @"com.apple.coremedia", 0x65);
  H16ISP::gFrameReceiverCFPrefs = H16ISP::H16ISPGetCFPreferenceNumber(@"FrameDropRequestEnabled", @"com.apple.coremedia", 1);
  H16ISP::gFrameReceiverCFPrefs = H16ISP::H16ISPGetCFPreferenceNumber(@"SimulateYUVBufferStarvation", @"com.apple.coremedia", 0);
  H16ISP::gFrameReceiverCFPrefs = H16ISP::H16ISPGetCFPreferenceNumber(@"DisableFrameReceiverTailspin", @"com.apple.coremedia", 0) != 0;
  pthread_mutexattr_init(&v23);
  pthread_mutexattr_settype(&v23, 2);
  pthread_mutex_init((a1 + 160), &v23);
  pthread_mutexattr_destroy(&v23);
  v22 = 0;
  H16ISP::H16ISPDevice::GetISPCounterFrequency(*(a1 + 400), &v22, (a1 + 480));
  v11 = (a1 + 488);
  if (a4)
  {
    v12 = *a4;
    v13 = *(a4 + 2);
    *(a1 + 512) = *(a4 + 6);
    *(a1 + 504) = v13;
    *v11 = v12;
  }

  else
  {
    bzero(v11, 0x1CuLL);
  }

  *(a1 + 516) = a5;
  *(a1 + 524) = a6;
  *(a1 + 560) = 0xFFFF00000004;
  *(a1 + 532) = 0;
  *(a1 + 536) = 0;
  *(a1 + 984) = 0;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 544) = 0u;
  v14 = (a1 + 568);
  *(a1 + 568) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  v15 = *(a1 + 400);
  v16 = *(*(v15 + 4304) + 104 * *(a1 + 436) + 16);
  if (v16 > 1785950321)
  {
    if (v16 > 1919251318)
    {
      if (v16 == 1919251319)
      {
        *v14 = "com.apple.isp.backsuperwidetemperature";
        v17 = "com.apple.isp.backsuperwidefocusing";
      }

      else
      {
        if (v16 != 1919251564)
        {
          goto LABEL_21;
        }

        *v14 = "com.apple.isp.backtelesensortemperature";
        v17 = "com.apple.isp.backtelefocusing";
      }

      goto LABEL_20;
    }

    if (v16 != 1785950322)
    {
      if (v16 != 1919246706)
      {
        goto LABEL_21;
      }

      *v14 = "com.apple.isp.backsensortemperature";
      v17 = "com.apple.isp.focusing";
      goto LABEL_20;
    }

    *(a1 + 592) = 1;
    *(a1 + 568) = "com.apple.isp.backtofsensortemperature";
    *(a1 + 624) = "com.apple.isp.backtofprojector.ntctempidle";
    *(a1 + 640) = "com.apple.isp.backtofprojector.ntctempstandby";
    *(a1 + 656) = "com.apple.isp.backtofprojector.ntctempactive";
    *(a1 + 672) = "com.apple.isp.backtofprojector.dietempidle";
    *(a1 + 688) = "com.apple.isp.backtofprojector.dietempstandby";
    v18 = "com.apple.isp.backtofprojector.dietempactive";
LABEL_18:
    *(a1 + 704) = v18;
    goto LABEL_21;
  }

  if (v16 == 1718186595)
  {
    *(a1 + 592) = 1;
    *(a1 + 568) = "com.apple.isp.frontirsensortemperature";
    *(a1 + 608) = "com.apple.isp.frontirfloodtemperature";
    *(a1 + 624) = "com.apple.isp.frontirprojector.ntctempidle";
    *(a1 + 640) = "com.apple.isp.frontirprojector.ntctempstandby";
    *(a1 + 656) = "com.apple.isp.frontirprojector.ntctempactive";
    *(a1 + 672) = "com.apple.isp.frontirprojector.dietempidle";
    *(a1 + 688) = "com.apple.isp.frontirprojector.dietempstandby";
    v18 = "com.apple.isp.frontirprojector.dietempactive";
    goto LABEL_18;
  }

  if (v16 == 1718775412 || v16 == 1718776695)
  {
    *v14 = "com.apple.isp.frontsensortemperature";
    v17 = "com.apple.isp.frontfocusing";
LABEL_20:
    *(a1 + 544) = v17;
  }

LABEL_21:
  v19 = *(*(v15 + 72) + 72);
  if (v19)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN6H16ISP19H16ISPFrameReceiverC2EPNS_12H16ISPDeviceEjP21H16ISPTNRConfigStruct29H16ISPRationalFrameRateStructS5__block_invoke;
    block[3] = &__block_descriptor_tmp_9;
    block[4] = a1;
    dispatch_sync(v19, block);
  }

  *(a1 + 584) = 0;
  *(a1 + 920) = 0;
  mach_timebase_info((a1 + 596));
  *(a1 + 928) = H16ISP::gFrameReceiverCFPrefs;
  *(a1 + 933) = 0;
  if (H16ISP::gFrameReceiverCFPrefs)
  {
    operator new();
  }

  *(a1 + 944) = H16ISP::gFrameReceiverCFPrefs;
  *(a1 + 1024) = H16ISP::gFrameReceiverCFPrefs != 0;
  return a1;
}

void sub_2248232EC(_Unwind_Exception *a1)
{
  MEMORY[0x22AA55B60](v3, 0x1060C408B80C50CLL);
  std::deque<__CVBuffer *>::~deque[abi:ne200100]((v1 + 816));
  std::deque<__CVBuffer *>::~deque[abi:ne200100]((v1 + 768));
  std::deque<__CVBuffer *>::~deque[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

const __CFString *H16ISP::H16ISPGetCFPreferenceString(const __CFString *this, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  v5 = CFPreferencesCopyValue(this, a2, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFStringGetTypeID())
    {
      return v6;
    }
  }

  return a3;
}

uint64_t H16ISP::H16ISPFilterGraphManager::GetNode(void *a1, int a2, H16ISP::H16ISPFilterGraphNode **a3)
{
  v6 = a1[8];
  v7 = a1[9];
  v8 = (v6 + 8 * (a1[11] >> 9));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = (*v8 + 8 * (a1[11] & 0x1FFLL));
  }

  v10 = 3758097084;
  while (1)
  {
    if (v7 == v6)
    {
      v12 = 0;
    }

    else
    {
      v11 = a1[12] + a1[11];
      v12 = *(v6 + ((v11 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v11 & 0x1FF);
    }

    if (v9 == v12)
    {
      break;
    }

    v13 = *v9;
    if (H16ISP::H16ISPFilterGraphNode::GetType(*v9) == a2)
    {
      v10 = 0;
      *a3 = v13;
    }

    if ((++v9 - *v8) == 4096)
    {
      v14 = v8[1];
      ++v8;
      v9 = v14;
    }

    v6 = a1[8];
    v7 = a1[9];
  }

  return v10;
}

const char *___ZN6H16ISP19H16ISPFrameReceiverC2EPNS_12H16ISPDeviceEjP21H16ISPTNRConfigStruct29H16ISPRationalFrameRateStructS5__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 544);
  if (v2)
  {
    *(v1 + 552) = notify_register_check(v2, (v1 + 556)) == 0;
  }

  v3 = *(v1 + 568);
  if (v3)
  {
    *(v1 + 576) = notify_register_check(v3, (v1 + 580)) == 0;
  }

  v4 = *(v1 + 608);
  if (v4)
  {
    *(v1 + 616) = notify_register_check(v4, (v1 + 620)) == 0;
  }

  v5 = *(v1 + 624);
  if (v5)
  {
    *(v1 + 632) = notify_register_check(v5, (v1 + 636)) == 0;
  }

  v6 = *(v1 + 640);
  if (v6)
  {
    *(v1 + 648) = notify_register_check(v6, (v1 + 652)) == 0;
  }

  v7 = *(v1 + 656);
  if (v7)
  {
    *(v1 + 664) = notify_register_check(v7, (v1 + 668)) == 0;
  }

  v8 = *(v1 + 672);
  if (v8)
  {
    *(v1 + 680) = notify_register_check(v8, (v1 + 684)) == 0;
  }

  v9 = *(v1 + 688);
  if (v9)
  {
    *(v1 + 696) = notify_register_check(v9, (v1 + 700)) == 0;
  }

  result = *(v1 + 704);
  if (result)
  {
    result = notify_register_check(result, (v1 + 716));
    *(v1 + 712) = result == 0;
  }

  return result;
}

uint64_t H16ISP::H16ISPFrameReceiver::addIODispatcherToRunLoop(H16ISP::H16ISPFrameReceiver *this)
{
  v2 = IOCreateReceivePort(0x39u, this + 102);
  if (v2)
  {
    return v2;
  }

  v2 = IOCreateReceivePort(0x39u, this + 94);
  if (v2)
  {
    return v2;
  }

  v3 = 3758097085;
  shouldFreeInfo = 0;
  context.version = 1;
  context.info = this;
  memset(&context.retain, 0, 24);
  v5 = *MEMORY[0x277CBECE8];
  v6 = MEMORY[0x277CD27F0];
  v7 = CFMachPortCreateWithPort(*MEMORY[0x277CBECE8], *(this + 102), MEMORY[0x277CD27F0], &context, &shouldFreeInfo);
  *(this + 52) = v7;
  v8 = CFMachPortCreateWithPort(v5, *(this + 94), v6, &context, &shouldFreeInfo);
  *(this + 46) = v8;
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    RunLoopSource = CFMachPortCreateRunLoopSource(v5, v8, 0);
    *(this + 48) = RunLoopSource;
    v11 = CFMachPortCreateRunLoopSource(v5, *(this + 52), 0);
    *(this + 53) = v11;
    if (v11)
    {
      v12 = RunLoopSource == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = *MEMORY[0x277CBF058];
      CFRunLoopAddSource(*(this + 1), *(this + 48), *MEMORY[0x277CBF058]);
      CFRunLoopAddSource(*(this + 1), *(this + 53), v13);
      return 0;
    }
  }

  return v3;
}

uint64_t H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(uint64_t a1, uint64_t a2, int a3)
{
  pthread_mutex_lock((a1 + 96));
  v5 = *(a1 + 728);
  v6 = *(a1 + 752);
  v7 = (v5 + 8 * (v6 >> 9));
  v8 = *(a1 + 736);
  if (v8 == v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v7 + 8 * (*(a1 + 752) & 0x1FFLL);
  }

LABEL_4:
  v10 = v9 - 4096;
  while (1)
  {
    v11 = v8 == v5 ? 0 : *(v5 + (((*(a1 + 760) + v6) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 760) + v6) & 0x1FF);
    if (v9 == v11)
    {
      operator new();
    }

    if (*(*v9 + 20) == a3)
    {
      break;
    }

    v9 += 8;
    v10 += 8;
    if (*v7 == v10)
    {
      v12 = v7[1];
      ++v7;
      v9 = v12;
      goto LABEL_4;
    }
  }

  pthread_mutex_unlock((a1 + 96));
  return 3758097122;
}

void *std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::__add_back_capacity(void *a1)
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

void sub_224823CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::push_back(void *result, void *a2)
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
    result = std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

uint64_t H16ISP::H16ISPFrameReceiverBufferPool::activatePool(H16ISP::H16ISPFrameReceiverBufferPool *this, char a2)
{
  pthread_mutex_lock(this + 4);
  *(this + 145) = a2;
  if (*(this + 20))
  {
    goto LABEL_2;
  }

  kdebug_trace();
  v5 = *(this + 23);
  if (v5)
  {
    v6 = CVPixelBufferPoolRetain(v5);
  }

  else
  {
    v7 = *(this + 29);
    if ((v7 & 0x400) != 0)
    {
      *this = 1;
LABEL_2:
      pthread_mutex_unlock(this + 4);
      return 0;
    }

    v8 = (*(this + 4) < 0x20uLL) & (0xA01806C3 >> *(this + 4));
    v9 = *(this + 6);
    v10 = *(this + 7);
    v11 = *(this + 8);
    v12 = *(this + 9);
    v13 = *(this + 10);
    v14 = *(this + 72);
    v84 = *(this + 56);
    v85 = v14;
    v6 = H16ISP::H16ISPCreateCVBufferPool(v9, v10, v11, v12, v13, &v84, *(this + 25), *(this + 88), *(this + 33), *(this + 92), HIDWORD(*(this + 92)), *(this + 27), v8, v7, *(this + 32), *(this + 22), *(this + 34), H16ISP::gFrameReceiverBufferPoolPrefs != 0, *(this + 80));
  }

  *(this + 20) = v6;
  if (v6)
  {
    CVPixelBufferPoolScanIOSurfaces();
    v83 = 0;
    if (!CVPixelBufferPoolCopyIOSurfaceCreationProperties())
    {
      Value = CFDictionaryGetValue(v83, *MEMORY[0x277CD2948]);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt32Type, this + 140);
      }

      CFRelease(v83);
    }

    kdebug_trace();
    if (H16ISP::getPixelFormatFromMetaInfo(*(this + 10), *(this + 88), &v84))
    {
      v16 = this + 336;
      bzero(this + 336, 0x80uLL);
      v82 = 0;
      CVPixelBufferPoolCopyIOSurfaceCreationProperties();
      v17 = CFDictionaryGetValue(0, *MEMORY[0x277CD2B30]);
      if (v17)
      {
        v18 = v17;
        Count = CFArrayGetCount(v17);
        if (Count)
        {
          v20 = Count;
          v21 = 0;
          v22 = 0;
          v69 = this + 358;
          v78 = *MEMORY[0x277CD2AB8];
          v79 = *MEMORY[0x277CD2A80];
          v77 = *MEMORY[0x277CD2AB0];
          v68 = this + 44;
          v76 = *MEMORY[0x277CD2AC0];
          v23 = *MEMORY[0x277CD2B40];
          v75 = *MEMORY[0x277CD2B50];
          v74 = *MEMORY[0x277CD2B00];
          v73 = *MEMORY[0x277CD2B18];
          v72 = *MEMORY[0x277CD2AF8];
          v71 = *MEMORY[0x277CD2AD8];
          key = *MEMORY[0x277CD2AA0];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v18, v21);
            v25 = ValueAtIndex;
            valuePtr = 0;
            if (v85 == 2)
            {
              v80 = 0;
              v33 = CFDictionaryGetValue(ValueAtIndex, v79);
              if (v33)
              {
                v34 = v33;
                v35 = CFGetTypeID(v33);
                if (v35 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v34, kCFNumberSInt32Type, &v80);
                }
              }

              v36 = CFDictionaryGetValue(v25, v78);
              if (v36)
              {
                v37 = v36;
                v38 = CFGetTypeID(v36);
                if (v38 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v37, kCFNumberSInt32Type, &valuePtr);
                  *&v16[32 * v21] = valuePtr - v80;
                }
              }

              v39 = CFDictionaryGetValue(v25, v77);
              if (v39)
              {
                v40 = v39;
                v41 = CFGetTypeID(v39);
                if (v41 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v40, kCFNumberSInt32Type, &valuePtr);
                  v42 = valuePtr;
                  *&v16[32 * v21 + 4] = valuePtr;
                  *&v68[4 * v21] = v42;
                }
              }

              v43 = CFDictionaryGetValue(v25, v76);
              if (v43)
              {
                v44 = v43;
                v45 = CFGetTypeID(v43);
                if (v45 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v44, kCFNumberSInt32Type, &valuePtr);
                  v46 = valuePtr - v80;
                  v47 = &v16[32 * v21];
                  *(v47 + 2) = valuePtr - v80 - *v47;
                  *(v47 + 3) = v46;
                }
              }

              v48 = CFDictionaryGetValue(v25, v23);
              if (v48)
              {
                v49 = v48;
                v50 = CFGetTypeID(v48);
                if (v50 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v49, kCFNumberSInt32Type, &valuePtr);
                  *&v16[32 * v21 + 16] = valuePtr - *&v16[32 * v21 + 12];
                }
              }

              v51 = CFDictionaryGetValue(v25, v75);
              if (v51)
              {
                v52 = v51;
                v53 = CFGetTypeID(v51);
                if (v53 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v52, kCFNumberSInt32Type, &valuePtr);
                  *&v16[32 * v21 + 20] = valuePtr;
                }
              }

              v54 = CFDictionaryGetValue(v25, v74);
              if (v54)
              {
                v55 = v54;
                v56 = CFGetTypeID(v54);
                if (v56 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v55, kCFNumberSInt32Type, &valuePtr);
                  *&v16[32 * v21 + 20] += valuePtr;
                }
              }

              v57 = CFDictionaryGetValue(v25, v73);
              if (v57)
              {
                v58 = v57;
                v59 = CFGetTypeID(v57);
                if (v59 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v58, kCFNumberSInt32Type, &valuePtr);
                  *&v69[32 * v21] = valuePtr;
                }
              }

              v60 = CFDictionaryGetValue(v25, v72);
              if (v60)
              {
                v61 = v60;
                v62 = CFGetTypeID(v60);
                if (v62 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v61, kCFNumberSInt32Type, &valuePtr);
                  *&v69[32 * v21] += valuePtr;
                }
              }

              v63 = CFDictionaryGetValue(v25, v71);
              if (v63)
              {
                v64 = v63;
                v65 = CFGetTypeID(v63);
                if (v65 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v64, kCFNumberSInt32Type, &valuePtr);
                  *&v16[32 * v21 + 24] = valuePtr;
                }
              }
            }

            else if (!v85)
            {
              v26 = CFDictionaryGetValue(ValueAtIndex, v23);
              if (v26)
              {
                v27 = v26;
                v28 = CFGetTypeID(v26);
                if (v28 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v27, kCFNumberSInt32Type, &valuePtr);
                  *&v16[32 * v21] = valuePtr;
                }
              }

              v29 = CFDictionaryGetValue(v25, key);
              if (v29)
              {
                v30 = v29;
                v31 = CFGetTypeID(v29);
                if (v31 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v30, kCFNumberSInt32Type, &valuePtr);
                  v32 = valuePtr;
                  *&v16[32 * v21 + 4] = valuePtr;
                  *&v68[4 * v21] = v32;
                }
              }
            }

            v21 = ++v22;
          }

          while (v20 > v22);
        }
      }

      CFRelease(v82);
    }

    v4 = 0;
    *this = 1;
  }

  else
  {
    v4 = 3758097084;
    kdebug_trace();
    v66 = *(this + 1);
    if (v66)
    {
      H16ISP::H16ISPDevice::ISP_MemoryDiagnostics(v66);
    }
  }

  pthread_mutex_unlock(this + 4);
  return v4;
}

uint64_t H16ISP::H16ISPDevice::EnableNewCBAFStats(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1041;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableFirmwareFocusHint(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1039;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPFrameReceiver::addSharedBufferPoolToFrameReceiver(H16ISP::H16ISPFrameReceiver *this, H16ISP::H16ISPFrameReceiverSharedBufferPool *a2)
{
  pthread_mutex_lock((this + 96));
  v4 = *(this + 97);
  v5 = (v4 + 8 * (*(this + 100) >> 9));
  v6 = *(this + 98);
  if (v6 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*v5 + 8 * (*(this + 100) & 0x1FFLL));
  }

  while (1)
  {
    if (v6 == v4)
    {
      v9 = 0;
    }

    else
    {
      v8 = *(this + 101) + *(this + 100);
      v9 = *(v4 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF);
    }

    if (v7 == v9)
    {
      operator new();
    }

    v10 = *(H16ISP::H16ISPFrameReceiverSharedBufferPool::GetPool(**v7) + 20);
    if (v10 == *(H16ISP::H16ISPFrameReceiverSharedBufferPool::GetPool(a2) + 20))
    {
      break;
    }

    if ((++v7 - *v5) == 4096)
    {
      v11 = v5[1];
      ++v5;
      v7 = v11;
    }

    v4 = *(this + 97);
    v6 = *(this + 98);
  }

  pthread_mutex_unlock((this + 96));
  return 3758097122;
}

uint64_t H16ISP::H16ISPDevice::EnableSlowSyncFlash(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 597;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableVIS(H16ISP::H16ISPDevice *this, int a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = 18176;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPFrameReceiverSharedBufferPool::RegisterCompletionCallback(uint64_t this, uint64_t a2, uint64_t a3, int a4)
{
  *(this + 80) = a2;
  *(this + 88) = a3;
  *(this + 96) = a4;
  return this;
}

void MyH16ISPFrameReceiverMessageProc(int a1, int a2, int a3, void *a4, void *a5, void *a6)
{
  v40 = *MEMORY[0x277D85DE8];
  v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v12 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    LODWORD(v39.value) = 67109120;
    HIDWORD(v39.value) = a1;
    _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_INFO, "MyH16ISPFrameReceiverMessageProc: msg = 0x%08X\n\n", &v39, 8u);
  }

  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = CMBaseObjectGetDerivedStorage();
  if (a1 == 2)
  {
    *(DerivedStorage + 552) = 0;
    return;
  }

  v15 = v14;
  if (a1 == 1)
  {
    v17 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      v16 = MEMORY[0x277CF53C8];
      goto LABEL_36;
    }

    v19 = Mutable;
    v20 = FigHostTimeToNanoseconds();
    CMTimeMake(&v39, v20, 1000000000);
    v21 = CMTimeCopyAsDictionary(&v39, v17);
    if (v21)
    {
      v22 = v21;
      CFDictionarySetValue(v19, *MEMORY[0x277CF53B8], v21);
      CFRelease(v22);
    }

    v23 = MEMORY[0x277CF53C8];
    goto LABEL_25;
  }

  if (!a1)
  {
    v16 = MEMORY[0x277CF6B58];
LABEL_36:
    v32 = *v16;
LABEL_37:
    H16ISPPostNotification(v32, a6, 0);
LABEL_38:
    LogCaptureDeviceEvent(0x12u, v15, DerivedStorage, 0, v32, 0, 1);
    return;
  }

  if ((a1 - 3) <= 2)
  {
    v24 = *MEMORY[0x277CBECE8];
    v25 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v25)
    {
      v16 = MEMORY[0x277CF6B50];
      goto LABEL_36;
    }

    v19 = v25;
    v26 = FigHostTimeToNanoseconds();
    CMTimeMake(&v39, v26, 1000000000);
    v27 = CMTimeCopyAsDictionary(&v39, v24);
    if (v27)
    {
      v28 = v27;
      CFDictionarySetValue(v19, *MEMORY[0x277CF6B48], v27);
      CFRelease(v28);
    }

    v29 = MEMORY[0x277CF67E8];
    if (a3 | a2)
    {
      if ((a1 - 3) >= 2)
      {
        if (*(DerivedStorage + 552) != 1)
        {
LABEL_24:
          v23 = MEMORY[0x277CF6B50];
LABEL_25:
          v30 = *v23;
          H16ISPPostNotification(*v23, a6, v19);
          LogCaptureDeviceEvent(0x12u, v15, DerivedStorage, 0, v30, v19, 1);
          v31 = v19;
LABEL_26:
          CFRelease(v31);
          return;
        }

        v29 = MEMORY[0x277CF67E8];
      }
    }

    else
    {
      v29 = MEMORY[0x277CF67F0];
    }

    CFDictionarySetValue(v19, *MEMORY[0x277CF53B0], *v29);
    goto LABEL_24;
  }

  if (a1 != 7)
  {
    if (a1 != 6)
    {
      return;
    }

    if (*(DerivedStorage + 100) && *(DerivedStorage + 4184))
    {
      DisableDisplayStrobeOverlay(DerivedStorage);
    }

    v32 = *MEMORY[0x277CF53D0];
    if (dword_281003310 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (a2 <= 0x13 && (((1 << a2) & 0x806C1) != 0 || a2 == 1 && ((*(DerivedStorage + 1704) & 1) != 0 || *(DerivedStorage + 2504) == 1)))
  {
    v33 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v33)
    {
      v34 = v33;
      if (a2 <= 6)
      {
        switch(a2)
        {
          case 0:
            v35 = *MEMORY[0x277CF54B0];
            v36 = MEMORY[0x277CF6640];
            goto LABEL_68;
          case 1:
            if (*(DerivedStorage + 1704) == 1)
            {
              CFDictionarySetValue(v33, *MEMORY[0x277CF54B0], *MEMORY[0x277CF6670]);
            }

            if (*(DerivedStorage + 2504) != 1)
            {
              break;
            }

            v35 = *MEMORY[0x277CF54B0];
            v36 = MEMORY[0x277CF6678];
            goto LABEL_68;
          case 6:
            v35 = *MEMORY[0x277CF54B0];
            v36 = MEMORY[0x277CF6628];
            goto LABEL_68;
        }
      }

      else if (a2 > 9)
      {
        if (a2 == 10)
        {
          v35 = *MEMORY[0x277CF54B0];
          v36 = MEMORY[0x277CF6658];
          goto LABEL_68;
        }

        if (a2 == 19)
        {
          v35 = *MEMORY[0x277CF54B0];
          v37 = @"VisPipe";
LABEL_69:
          CFDictionarySetValue(v34, v35, v37);
        }
      }

      else
      {
        if (a2 == 7)
        {
          v35 = *MEMORY[0x277CF54B0];
          v36 = MEMORY[0x277CF6660];
          if (*(DerivedStorage + 4256))
          {
            v36 = MEMORY[0x277CF6678];
          }

          goto LABEL_68;
        }

        if (a2 == 9)
        {
          v35 = *MEMORY[0x277CF54B0];
          v36 = MEMORY[0x277CF6668];
LABEL_68:
          v37 = *v36;
          goto LABEL_69;
        }
      }

      CFDictionarySetValue(v34, *MEMORY[0x277CF54B8], a4);
      CFDictionarySetValue(v34, *MEMORY[0x277CF54C0], a5);
      v38 = *MEMORY[0x277CF53D8];
      H16ISPPostNotification(*MEMORY[0x277CF53D8], a6, v34);
      LogCaptureDeviceEvent(0x12u, v15, DerivedStorage, 0, v38, 0, 1);
      v31 = v34;
      goto LABEL_26;
    }
  }
}

uint64_t H16ISP::H16ISPDevice::EnableTileBasedGDC(H16ISP::H16ISPDevice *this, int a2, char a3, char a4, char a5, char a6)
{
  bzero(v13, 0x14uLL);
  v14 = 2626;
  v15 = a2;
  v19 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x14u, 0, 0xFFFFFFFF);
}

void ActivateSecondaryScalerOutputInFrameReceiver(uint64_t a1, uint64_t a2)
{
  v92 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 160))
  {
    return;
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 192);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = v4 - v5;
  v7 = dword_281003314;
  v8 = *(a1 + 184);
  if (!dword_281003314)
  {
    v7 = *(v8 + 120 * v6 + 116);
  }

  v9 = *(a1 + 92);
  if (H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(a1 + 156), *(v8 + 120 * v6 + 16), v68, v91))
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ActivateSecondaryScalerOutputInFrameReceiver();
    }

    return;
  }

  v11 = v7 - v9;
  v12 = *(a1 + 700);
  if (v12)
  {
    v13 = v12 / 1000000.0;
    v14 = *(a1 + 184);
    v15 = *(a1 + 48);
    v16 = *(a1 + 192);
    if (v15 < v16)
    {
      v16 = 0;
    }

    if (v14)
    {
      v17 = v14 + 120 * v6;
    }

    else
    {
      v17 = 120 * (v15 - v16);
    }

    v18 = *(v17 + 108);
    if (v18 == 0.0)
    {
      v19 = HIDWORD(v68[0]);
    }

    else
    {
      v19 = v18 * 256.0;
    }

    if (v11 + 2 * (v13 / (1.0 / (v19 * 0.0039062))) >= 0xA)
    {
      v11 = 10;
    }

    else
    {
      v11 += 2 * (v13 / (1.0 / (v19 * 0.0039062)));
    }
  }

  valuePtr = -*(a1 + 928) & 0xF;
  v20 = *(a1 + 1048);
  if (v20)
  {
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(v20);
    Value = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x277CC4DA0]);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    }
  }

  v90 = 0;
  v66 = 0;
  if (H16ISP::getFrameFormatMetaInfo(*(a1 + 920), &v64))
  {
    v23 = DWORD1(v64);
    v24 = BYTE8(v64);
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
      ActivateSecondaryScalerOutputInFrameReceiver();
    }

    v24 = 0;
    v23 = 0;
  }

  v26 = *(a1 + 1048);
  if (!v26)
  {
    v31 = *(a1 + 924);
    LODWORD(v66) = *(a1 + 928);
    HIDWORD(v66) = v31;
LABEL_37:
    if (H16ISP::H16ISPDevice::SetSecondaryScalerSource(*(a2 + 24), *(a1 + 156), *(a1 + 1096)))
    {
      v32 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v32 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v32;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        ActivateSecondaryScalerOutputInFrameReceiver();
      }
    }

    else
    {
      if (HIDWORD(v64) <= 0x1B && ((1 << SBYTE12(v64)) & 0xE000002) != 0 || (*(a1 + 4392) | 2) == 3 && HIDWORD(v64) <= 0x13 && ((1 << SBYTE12(v64)) & 0xC0001) != 0 || (*(a1 + 4388) - 1) < 2)
      {
        v33 = 0;
        v34 = 0;
      }

      else
      {
        v34 = v24 & 1;
        v33 = 1;
      }

      v62 = 0u;
      v63 = 0u;
      GenerateBufferTagsForOutput(a1, a1 + 904, &v62);
      v35 = *(a1 + 160);
      *buf = v62;
      *&buf[16] = v63;
      v36 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v35, 10, v69);
      v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v37 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v37;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = v11 + 1 + *(a1 + 968);
        *buf = 136315650;
        *&buf[4] = "ActivateSecondaryScalerOutputInFrameReceiver";
        *&buf[12] = 1024;
        *&buf[14] = v38;
        *&buf[18] = 1024;
        *&buf[20] = v11;
        _os_log_impl(&dword_2247DB000, v37, OS_LOG_TYPE_INFO, "%s - YUV2 pool size=%d,prime=%d\n", buf, 0x18u);
      }

      if (v36)
      {
        v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v39 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v39;
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          ActivateSecondaryScalerOutputInFrameReceiver();
        }
      }

      else
      {
        v58 = v34;
        v59 = v33;
        BufferPool = H16ISP::H16ISPFrameReceiver::getBufferPool(*(a1 + 160), 10);
        v60 = *(a1 + 952) | (*(a1 + 960) << 32);
        v61 = *(a1 + 936) | (*(a1 + 944) << 32);
        if (v65 == 2 || (DWORD1(v64) - 35) <= 1)
        {
          v90 = *(BufferPool + 44);
        }

        v42 = *(a2 + 24);
        v43 = *(a1 + 156);
        v44 = *(a1 + 924);
        v45 = *(a1 + 928);
        v47 = HIDWORD(v66);
        v46 = valuePtr;
        v48 = v66;
        v49 = ColorRangeForOutputWithMatrix(a1, a1 + 904, *(a1 + 172));
        if (H16ISP::H16ISPDevice::SetSecondaryBESConfig(v42, v43, v61, v60, v44, v45, v46, v47, v48, v23, v49, &v90))
        {
          v50 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v50 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v50;
          }

          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            ActivateSecondaryScalerOutputInFrameReceiver();
          }
        }

        else
        {
          v51 = *(a1 + 160);
          if ((*v51 - 1) <= 1 && H16ISP::H16ISPFrameReceiver::SendFWInitialBuffers(v51, 10))
          {
            v52 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v52 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v52;
            }

            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              ActivateSecondaryScalerOutputInFrameReceiver();
            }
          }

          else if (*(a1 + 976) == 1 && (*(*(a1 + 160) + 533) & 1) == 0 && (v86 = v73, v87 = v74, v88 = v75, v89 = v76, v82 = v69, v83 = v70, v84 = v71, v85 = v72, v78 = v68[2], v79 = v68[3], v80 = v68[4], v81 = v68[5], *buf = v68[0], *&buf[16] = v68[1], AddRawPoolToFrameReceiver(a1, a2, buf)))
          {
            v53 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v53 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v53;
            }

            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              ActivateSecondaryScalerOutputInFrameReceiver();
            }
          }

          else if (H16ISP::H16ISPDevice::SetScalerChromaSampleOffset(*(a2 + 24), *(a1 + 156), v58, v59, 1))
          {
            v54 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v54 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v54;
            }

            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              ActivateSecondaryScalerOutputInFrameReceiver();
            }
          }

          else
          {
            v55 = vcvtms_u32_f32(*(a1 + 1040) * 256.0);
            if (v55)
            {
              v56 = v55;
            }

            else
            {
              v56 = HIDWORD(v68[0]);
            }

            if (H16ISP::H16ISPDevice::ISP_SetMaxOutputRate(*(a2 + 24), 9, v56))
            {
              v57 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v57 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v57;
              }

              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                ActivateSecondaryScalerOutputInFrameReceiver();
              }
            }

            else
            {
              SetMetaDataOptionsOnFrameReceiver(a1, a2);
            }
          }
        }
      }
    }

    return;
  }

  v27 = CVPixelBufferPoolGetPixelBufferAttributes(v26);
  if (v27)
  {
    v28 = v27;
    v29 = CFDictionaryGetValue(v27, *MEMORY[0x277CC4EC8]);
    v30 = CFDictionaryGetValue(v28, *MEMORY[0x277CC4DD8]);
    CFNumberGetValue(v29, kCFNumberIntType, &v66 + 4);
    CFNumberGetValue(v30, kCFNumberIntType, &v66);
    goto LABEL_37;
  }

  v40 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v40 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v40;
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    ActivateSecondaryScalerOutputInFrameReceiver();
  }
}

uint64_t H16ISP::H16ISPDevice::UpdateChannelConfigCache(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  bzero(__src, 0x190uLL);
  v7 = 269;
  v8 = a2;
  v4 = H16ISP::H16ISPDevice::ISP_SendCommand(this, __src, 0x190u, 0, 0xFFFFFFFF);
  if (!v4)
  {
    memmove((*(this + 5) + 432 * a2 + 32), __src, 0x190uLL);
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::SetRawPreviewConfig(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 364;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_SelectBestMIPIFrequencyIndex(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int *a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  output = 0;
  input[0] = a2;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v3, 0x18u, input, 1u, &output, &outputCnt);
  if (!result)
  {
    *a3 = output;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetSecondaryScalerSource(H16ISP::H16ISPDevice *a1, __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2070;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_SelectBestChargePumpFrequencyIndex(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int *a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  output = 0;
  input[0] = a2;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v3, 0x2Cu, input, 1u, &output, &outputCnt);
  if (!result)
  {
    *a3 = output;
  }

  return result;
}

uint64_t H16ISP::H16ISPFrameReceiver::getBufferPool(void *a1, int a2)
{
  v2 = a1[91];
  v3 = a1[94];
  v4 = (v2 + 8 * (v3 >> 9));
  v5 = a1[92];
  if (v5 == v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v4 + 8 * (a1[94] & 0x1FFLL);
  }

LABEL_4:
  v7 = v6 - 4096;
  while (1)
  {
    v8 = v5 == v2 ? 0 : *(v2 + (((a1[95] + v3) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[95] + v3) & 0x1FF);
    if (v6 == v8)
    {
      return 0;
    }

    v9 = *v6;
    if (*(*v6 + 16) == a2)
    {
      return v9;
    }

    v6 += 8;
    v7 += 8;
    if (*v4 == v7)
    {
      v10 = v4[1];
      ++v4;
      v6 = v10;
      goto LABEL_4;
    }
  }
}

uint64_t H16ISP::H16ISPDevice::SetSecondaryBESConfig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, int *a12)
{
  v12 = MEMORY[0x28223BE20](a1, a2);
  v49 = *MEMORY[0x277D85DE8];
  if (*(v12 + 1167) <= v13)
  {
    return 3758097090;
  }

  v20 = v19;
  v21 = v18;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  v25 = v14;
  v26 = v13;
  v27 = v12;
  v28 = H16ISP::H16ISPDevice::ISP_EnableSensorPower(v12, v13, 1u, 0);
  if (v28)
  {
    return v28;
  }

  bzero(v39, 0x1CuLL);
  v40 = 2060;
  v41 = v26;
  v42 = v25;
  v43 = v24;
  v28 = H16ISP::H16ISPDevice::ISP_SendCommand(v27, v39, 0x1Cu, 0, 0xFFFFFFFF);
  if (v28)
  {
    return v28;
  }

  bzero(v39, 0x38uLL);
  v40 = 2825;
  v41 = v26;
  v42 = __PAIR64__(v22, v23);
  LODWORD(v43) = a11;
  v48 = v20;
  v46[1] = v21;
  v46[2] = a9;
  v31 = v46;
  switch(a10)
  {
    case 0:
      v47 = 0;
      goto LABEL_19;
    case 1:
      v31 = &v44;
      HIDWORD(v43) = 1;
      v47 = 0;
      v33 = (2 * v20 + 63) & 0xFFFFFFC0;
      break;
    case 13:
      v47 = 1;
LABEL_19:
      v33 = (v20 + 63) & 0xFFFFFFC0;
      HIDWORD(v43) = 0;
      goto LABEL_27;
    case 15:
      v37 = 18;
      v47 = 0;
      goto LABEL_25;
    case 16:
      v37 = 18;
      v47 = 1;
LABEL_25:
      v38 = 2 * v20;
      goto LABEL_26;
    case 18:
      v37 = 19;
      v47 = 0;
      v38 = (2 * ((2863311531u * (v20 + 2)) >> 32)) & 0xFFFFFFFC;
LABEL_26:
      v33 = (v38 + 63) & 0xFFFFFFC0;
      HIDWORD(v43) = v37;
      goto LABEL_27;
    case 22:
      v47 = 1;
      HIDWORD(v43) = 0;
      v44 = (32 * v23 + 992) & 0x3FFC00;
      v33 = (32 * v23 + 480) & 0x3FFE00;
      goto LABEL_28;
    case 23:
      v47 = 1;
      HIDWORD(v43) = 19;
      v44 = 1280 * ((v23 + 31) >> 5);
      v33 = 320 * ((v23 + 15) >> 4);
      goto LABEL_28;
    case 24:
    case 26:
    case 28:
      v47 = 1;
      v35 = *a12;
      v33 = a12[1];
      HIDWORD(v43) = 0;
      v44 = v35;
      goto LABEL_28;
    case 25:
    case 27:
    case 29:
      v47 = 1;
      v34 = *a12;
      v33 = a12[1];
      HIDWORD(v43) = 19;
      v44 = v34;
      goto LABEL_28;
    case 31:
    case 32:
    case 33:
    case 34:
      v32 = 26;
      v47 = 1;
      goto LABEL_14;
    case 35:
      v32 = 25;
      goto LABEL_13;
    case 36:
      v32 = 26;
LABEL_13:
      v47 = 0;
LABEL_14:
      v36 = *a12;
      v33 = a12[1];
      HIDWORD(v43) = v32;
      v45 = v36;
      break;
    default:
      v47 = 0;
      v33 = (v20 + 63) & 0xFFFFFFC0;
      HIDWORD(v43) = a10;
LABEL_27:
      v44 = v33;
LABEL_28:
      v31 = &v45;
      break;
  }

  *v31 = v33;
  v29 = H16ISP::H16ISPDevice::ISP_SendCommand(v27, v39, 0x38u, 0, 0xFFFFFFFF);
  if (v29)
  {
    H16ISP::H16ISPDevice::ISP_EnableSensorPower(v27, v26, 0, 0);
  }

  return v29;
}

uint64_t H16ISP::H16ISPDevice::ISP_SelectBestPixClockFrequencyIndex(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int *a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  output = 0;
  input[0] = a2;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v3, 0x3Bu, input, 1u, &output, &outputCnt);
  if (!result)
  {
    *a3 = output;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetMIPIFrequencyIndex(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 283;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

void ___ZL22H16ISPPostNotificationPK10__CFStringPKvS3__block_invoke(uint64_t a1)
{
  MEMORY[0x22AA550F0]();
  CMNotificationCenterPostNotification();
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t H16ISP::H16ISPDevice::SetScalerChromaSampleOffset(H16ISP::H16ISPDevice *a1, int a2, char a3, char a4, int a5)
{
  bzero(v11, 0x14uLL);
  v12 = 2826;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v11, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetCurrentToFClockBanks(uint64_t a1, unsigned int a2, void *outputStruct)
{
  input[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  v5 = 132;
  return IOConnectCallMethod(v3, 0x47u, input, 1u, 0, 0, 0, 0, outputStruct, &v5);
}

uint64_t H16ISP::H16ISPDevice::AttachOldRawToPreview(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 299;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetMaxOutputRate(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 21;
  v9 = a3;
  v10 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t SetMetaDataOptionsOnFrameReceiver(uint64_t result, uint64_t a2)
{
  v2 = *(result + 160);
  if (v2)
  {
    v3 = result;
    v4 = result + 4096;
    if (*(result + 698) == 1)
    {
      if (*(result + 776) & 1) != 0 || (*(result + 976) & 1) != 0 || (*(result + 1176) & 1) != 0 || (*(result + 1376) & 1) != 0 || (*(result + 1576) & 1) != 0 || (*(result + 1704) & 1) != 0 || (*(result + 2104) & 1) != 0 || (*(result + 4080))
      {
        v5 = 1;
      }

      else
      {
        v5 = *(result + 2504);
      }
    }

    else
    {
      v5 = *(v2 + 533);
    }

    memset(v9, 0, sizeof(v9));
    v6[0] = (dword_2810032C8 != 0) | v5 & 1;
    v6[1] = *(v2 + 536) == 0;
    v7 = *(result + 4149);
    v8 = *(result + 4144);
    LOBYTE(v9[0]) = *(result + 4148);
    BYTE2(v9[0]) = H16ISP::H16ISPDevice::hasSensorType(*(a2 + 24), 1785950322);
    BYTE3(v9[0]) = *(v4 + 57);
    BYTE4(v9[0]) = *(v4 + 510);
    *(v9 + 5) = *(v4 + 55);
    BYTE8(v9[0]) = *(v4 + 224);
    *(v9 + 12) = *(v3 + 4732);
    DWORD1(v9[1]) = *(v3 + 4740);
    BYTE7(v9[0]) = *(v4 + 58);
    BYTE9(v9[0]) = *(v4 + 59);
    if (byte_28100338C == 1)
    {
      BYTE10(v9[0]) = 1;
    }

    if (byte_28100338D == 1)
    {
      BYTE11(v9[0]) = byte_28100338D;
    }

    *(&v9[1] + 1) = 0;
    BYTE1(v9[0]) = *(v3 + 672) != 0;
    return H16ISP::H16ISPFrameReceiver::SetMetaDataOptions(*(v3 + 160), v6);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAEBracketingWaitForFocusParams(H16ISP::H16ISPDevice *this, int a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = 578;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t EnablePCEStreamingInFrameReceiver(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2 + 4096;
  if (*(a2 + 4256) == 1)
  {
    H16ISP::ProjectorManager::setProjectorType(*(a2 + 4520), *(a2 + 4260));
    H16ISP::H16ISPFrameReceiver::setPCEPreset(*(a2 + 160), *(a2 + 4412));
    H16ISP::H16ISPFrameReceiver::setPCEOutputFormat(*(a2 + 160), *(a2 + 4416));
    H16ISP::H16ISPFrameReceiver::setFuseMode(*(a2 + 160), *(a2 + 4420));
    H16ISP::H16ISPFrameReceiver::setHwGdrMode(*(a2 + 160), *(v3 + 332));
    H16ISP::H16ISPFrameReceiver::setCinVidMode(*(a2 + 160), *(v3 + 352));
    v12 = *(a2 + 160);
    v13 = *(a2 + 4408);

    return H16ISP::H16ISPFrameReceiver::EnablePDEStreaming(v12, v13);
  }

  else
  {
    v5 = *(a2 + 4360);
    if (v5 && CFArrayGetCount(v5))
    {
      v6 = 0;
      do
      {
        CFArrayGetValueAtIndex(*(a2 + 4360), v6);
        FigCaptureStreamGetFigBaseObject();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (*(DerivedStorage + 4404))
        {
          v8 = DerivedStorage;
          H16ISP::H16ISPDevice::EnablePDEOutput(*(a1 + 24), *(DerivedStorage + 156), 1, 1);
          *(v8 + 4404) = 0;
        }

        ++v6;
      }

      while (v6 < CFArrayGetCount(*(a2 + 4360)));
    }

    v9 = *(a2 + 152);
    if (*(a2 + 704) == 1 && *(a2 + 768) > v9)
    {
      v9 = *(a2 + 768);
    }

    if (*(a2 + 904) == 1 && *(a2 + 968) > v9)
    {
      v9 = *(a2 + 968);
    }

    if (*(a2 + 1104) == 1 && *(a2 + 1168) > v9)
    {
      v9 = *(a2 + 1168);
    }

    if (v9 <= 11)
    {
      v10 = 11;
    }

    else
    {
      v10 = v9;
    }

    if (*(a2 + 1304) == 1)
    {
      v11 = *(a2 + 1368) & ~(*(a2 + 1368) >> 31);
    }

    else
    {
      v11 = 0;
    }

    if (*(a2 + 1504) == 1 && *(a2 + 1568) > v11)
    {
      v11 = *(a2 + 1568);
    }

    v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v15 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 136315650;
      v17 = "EnablePCEStreamingInFrameReceiver";
      v18 = 1024;
      v19 = v11 + v10;
      v20 = 1024;
      v21 = 4;
      _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_INFO, "%s - Depth pool size=%d,prime=%d\n", &v16, 0x18u);
    }

    H16ISP::H16ISPFrameReceiver::setPCEPreset(*(a2 + 160), *(a2 + 4412));
    H16ISP::H16ISPFrameReceiver::setPCEOutputFormat(*(a2 + 160), *(a2 + 4416));
    H16ISP::H16ISPFrameReceiver::setHwGdrMode(*(a2 + 160), *(v3 + 332));
    H16ISP::H16ISPFrameReceiver::setCinVidMode(*(a2 + 160), *(v3 + 352));
    return H16ISP::H16ISPFrameReceiver::EnablePDEStreaming(*(a2 + 160), *(a2 + 4408));
  }
}

uint64_t H16ISP::H16ISPDevice::GetErrorCount(H16ISP::H16ISPDevice *this, int a2, __int16 a3, unsigned int *a4)
{
  bzero(v9, 0x14uLL);
  v10 = 289;
  v11 = a2;
  v12 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnablePDEOutput(H16ISP::H16ISPDevice *this, __int16 a2, char a3, char a4)
{
  bzero(v9, 0x10uLL);
  v10 = 20483;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::CreateH16ISPFrameReceiver(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = 0;
  H16ISP::H16ISPThreadReadySyncer::H16ISPThreadReadySyncer(&v19);
  v8 = 0;
  v2 = *(a1 + 56);
  v9 = *(a1 + 40);
  v10 = v2;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 32);
  v14 = *(a1 + 88);
  v15 = *(a1 + 96);
  v16 = &v19;
  v17 = *(a1 + 112);
  v18 = *(a1 + 72);
  v6 = 48;
  pthread_attr_init(&v20);
  pthread_attr_setschedparam(&v20, &v6);
  pthread_attr_setdetachstate(&v20, 2);
  pthread_create(&v7, &v20, H16ISP::H16ISPFrameReceiverRTThreadStart, &v8);
  pthread_attr_destroy(&v20);
  H16ISP::H16ISPThreadReadySyncer::wait(&v19);
  v3 = v8;
  **a1 = v8;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 3758097084;
  }

  H16ISP::H16ISPThreadReadySyncer::~H16ISPThreadReadySyncer(&v19);
  return v4;
}

uint64_t H16ISP::H16ISPFrameReceiver::EnablePDEStreaming(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v2;
  v54 = *MEMORY[0x277D85DE8];
  H16ISP::ValidatePDECalibration(*(v2 + 400), *(v2 + 436));
  v12 = *(v11 + 16);
  if (H16ISP::H16ISPDevice::isSensorType(*(v11 + 400), *(v11 + 436), 1718186595))
  {
    bzero(v48, 0x68uLL);
    v49 = 1565;
    v50 = *(v11 + 436);
    v13 = H16ISP::H16ISPDevice::ISP_SendCommand(*(v11 + 400), v48, 0x68u, 0, 0xFFFFFFFF);
    v14 = v52 == 10 && v13 == 0;
    v15 = 1;
    goto LABEL_9;
  }

  if (!H16ISP::H16ISPDevice::isSensorType(*(v11 + 400), *(v11 + 436), 1919246706))
  {
    v14 = !H16ISP::H16ISPDevice::hasSensorType(*(v11 + 400), 1718186595);
    v15 = 3;
LABEL_9:
    if (v14)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = v15;
    }

    goto LABEL_12;
  }

  v16 = 5;
LABEL_12:
  if (v12 <= 7)
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  if (v12 <= 4)
  {
    v18 = v12;
  }

  else
  {
    v18 = 0;
  }

  bzero(v44, 0x650uLL);
  v45 = 278;
  v46 = *(v11 + 436);
  v47 = 50;
  v19 = H16ISP::H16ISPDevice::ISP_SendCommand(*(v11 + 400), v44, 0x650u, 0, 0xFFFFFFFF);
  if (v19)
  {
    v20 = v19;
    v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v21 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v21;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiver::EnablePDEStreaming();
    }

    return v20;
  }

  if (v16 <= 2)
  {
    v49 = 24577;
    v50 = *(v11 + 436);
    bzero(v51, 0x344CuLL);
    if (H16ISP::H16ISPDevice::ISP_SendCommand(*(v11 + 400), v48, 0x3458u, 0, 0xFFFFFFFF) || v51[0] != 1)
    {
      return 0;
    }

    if (v16 == 1)
    {
      WidthOfPreset = H16ISP::DepthFrontConfigurations::getWidthOfPreset(v17);
      HeightOfPreset = H16ISP::DepthFrontConfigurations::getHeightOfPreset(v17);
      RegistrationOfPreset = H16ISP::DepthFrontConfigurations::getRegistrationOfPreset(v17);
    }

    else
    {
      WidthOfPreset = H16ISP::DepthFrontRotatedConfigurations::getWidthOfPreset(v17);
      HeightOfPreset = H16ISP::DepthFrontRotatedConfigurations::getHeightOfPreset(v17);
      RegistrationOfPreset = H16ISP::DepthFrontRotatedConfigurations::getRegistrationOfPreset(v17);
    }

    v25 = RegistrationOfPreset;
    v26 = 608;
    v27 = 656;
    if ((v10 & 1) == 0)
    {
LABEL_45:
      if ((v10 & 2) != 0 && H16ISP::H16ISPFrameReceiver::ConfigurePDEBufferPool(v11, v44, 13, 1, 0xDu, v8, v6, 5, (v10 >> 10) & 4, v26, SHIWORD(v26), v27))
      {
        v30 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v30 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v30;
        }

        v20 = 3758097095;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPFrameReceiver::EnablePDEStreaming();
        }

        return v20;
      }

      if ((v10 & 4) != 0)
      {
        *v48 = 0;
        v43[0] = 0;
        H16ISP::H16ISPGetYUVSBufferParamsForDataBufferSize(80896, v48, v43, v24);
        if (H16ISP::H16ISPFrameReceiver::ConfigurePDEBufferPool(v11, v44, 14, 2, 0xEu, v8, v6, 7, 0, *v48, *&v48[2], v43[0]))
        {
          v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
          {
            v31 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v31;
          }

          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPFrameReceiver::EnablePDEStreaming();
          }

          return 3758097095;
        }
      }

      v32 = *(v11 + 20);
      if (v32 == 1)
      {
        v25 |= 2u;
        v33 = 11;
      }

      else
      {
        v33 = 4;
      }

      if (v32 == 1)
      {
        v34 = 30;
      }

      else
      {
        v34 = 3;
      }

      if ((v10 & 8) != 0)
      {
        if (*(v11 + 28))
        {
          v35 = v25 | 8;
        }

        else
        {
          v35 = v25;
        }

        if (*(v11 + 29))
        {
          v35 |= 0x10u;
        }

        if (H16ISP::H16ISPFrameReceiver::ConfigurePDEBufferPool(v11, v44, 15, 3, 0xFu, v8, v6, v33, v35, WidthOfPreset, SHIWORD(WidthOfPreset), HeightOfPreset))
        {
          v36 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
          {
            v36 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v36;
          }

          v20 = 3758097095;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPFrameReceiver::EnablePDEStreaming();
          }

          return v20;
        }
      }

      v37 = *(v11 + 24);
      if (v37)
      {
        if (v37 == 1)
        {
          if ((*(v11 + 28) & 1) != 0 || v16 > 2)
          {
            goto LABEL_82;
          }
        }

        else if (v16 > 2)
        {
LABEL_89:
          if (H16ISP::H16ISPDevice::EnableOutofBoundDepth(*(v11 + 400), *(v11 + 436), v4))
          {
            v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
            {
              v39 = os_log_create("com.apple.isp", "general");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v39;
            }

            v20 = 3758097095;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              H16ISP::H16ISPFrameReceiver::EnablePDEStreaming();
            }

            return v20;
          }

          if (v4)
          {
            if (H16ISP::H16ISPDevice::GetCameraConfig(*(v11 + 400), *(v11 + 436), 0, v43, v48))
            {
              v40 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
              {
                v40 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v40;
              }

              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                H16ISP::H16ISPFrameReceiver::EnablePDEStreaming();
              }

              return 3758097095;
            }

            H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v11, 25, v53);
          }

          return 0;
        }

        H16ISP::H16ISPFrameReceiver::ConfigurePDEBufferPool(v11, v44, 16, 5, 0x15u, v8, v6, v33, v25, WidthOfPreset, SHIWORD(WidthOfPreset), HeightOfPreset);
      }

LABEL_82:
      if ((v10 & 0x20) != 0 && v16 <= 2 && H16ISP::H16ISPFrameReceiver::ConfigurePDEBufferPool(v11, v44, 17, 4, 0x11u, v8, v6, v34, v25, WidthOfPreset, SHIWORD(WidthOfPreset), HeightOfPreset))
      {
        v38 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v38 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v38;
        }

        v20 = 3758097095;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPFrameReceiver::EnablePDEStreaming();
        }

        return v20;
      }

      goto LABEL_89;
    }
  }

  else if (v16 == 3)
  {
    WidthOfPreset = H16ISP::DepthRearConfigurations::getWidthOfPreset(v18);
    HeightOfPreset = H16ISP::DepthRearConfigurations::getHeightOfPreset(v18);
    v25 = 0;
    v26 = 320;
    v27 = 240;
    if ((v10 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v16 == 4)
  {
    HeightOfPreset = H16ISP::DepthRearConfigurations::getWidthOfPreset(v18);
    v23 = H16ISP::DepthRearConfigurations::getHeightOfPreset(v18);
    v25 = 0;
    v26 = 240;
    v27 = 320;
    WidthOfPreset = v23;
    if ((v10 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    WidthOfPreset = H16ISP::DepthRearConfigurations::getWidthOfPreset(v18);
    HeightOfPreset = H16ISP::DepthRearConfigurations::getHeightOfPreset(v18);
    v25 = 0;
    v26 = 240;
    v27 = 320;
    if ((v10 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  if (!H16ISP::H16ISPFrameReceiver::ConfigurePDEBufferPool(v11, v44, 12, 0, 0xCu, v8, v6, 4, (v10 >> 10) & 4, v26, SHIWORD(v26), v27))
  {
    goto LABEL_45;
  }

  v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v29 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v29;
  }

  v20 = 3758097095;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPFrameReceiver::EnablePDEStreaming();
  }

  return v20;
}

BOOL H16ISP::ValidatePDECalibration(H16ISP *this, H16ISP::H16ISPDevice *a2)
{
  v2 = a2;
  v27 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAC0];
  v5 = MEMORY[0x277CCACA8];
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&g_baseConfigurationDirectory, "calibration", &v18);
  v6 = std::string::append(&v18, ".plist", 6uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v17 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v17 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  v9 = [v4 dictionaryWithContentsOfFile:{objc_msgSend(v5, "stringWithUTF8String:", v8)}];
  v10 = v9;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
    if (!v10)
    {
      return 0;
    }
  }

  else if (!v9)
  {
    return 0;
  }

  v11 = [v10 objectForKey:@"sensorSerialNum"];
  if (!v11)
  {
    return 0;
  }

  H16ISP::H16ISPDevice::ISP_GetModuleParams(this, v2, &v18);
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X", v19, v20, v21, v22, v23, v24, v25, v26];
  v13 = [v12 compare:v11];
  v14 = v13 == 0;
  if (v13)
  {
    NSLog(&cfstr_WarningSerialN.isa, v11, v12);
  }

  return v14;
}

void sub_2248275C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t H16ISP::H16ISPFilterGraphManager::Activate(H16ISP::H16ISPFilterGraphManager *this)
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
    v5 = *v4 + 8 * (*(this + 11) & 0x1FFLL);
  }

  v6 = 0;
  v7 = 3758097084;
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

    v10 = (*(**v5 + 16))();
    if (v10)
    {
      v7 = v10;
      goto LABEL_16;
    }

    v5 += 8;
    if (v5 - *v4 == 4096)
    {
      v11 = v4[1];
      ++v4;
      v5 = v11;
    }

    v7 = 0;
    v2 = *(this + 8);
    v3 = *(this + 9);
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

LABEL_16:
  H16ISP::H16ISPFilterGraphManager::Deactivate(this);
  return v7;
}

uint64_t H16ISP::H16ISPFilterGraphNode::Activate(H16ISP::H16ISPFilterGraphNode *this)
{
  kdebug_trace();
  if ((*(this + 16) & 1) == 0)
  {
    FixedPrioritySerialDispatchQueue = H16ISP::CreateFixedPrioritySerialDispatchQueue("com.apple.h16ispfiltergraph.message.queue", 0x3A);
    *(this + 1) = FixedPrioritySerialDispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN6H16ISP21H16ISPFilterGraphNode8ActivateEv_block_invoke;
    block[3] = &__block_descriptor_tmp_10;
    block[4] = this;
    dispatch_async(FixedPrioritySerialDispatchQueue, block);
    *(this + 16) = 1;
  }

  return 0;
}

NSObject *H16ISP::CreateFixedPrioritySerialDispatchQueue(H16ISP *this, const char *a2)
{
  v2 = a2;
  v20 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x100uLL, "%s.root", this);
  v4 = strlen(this);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v4;
  if (v4)
  {
    memcpy(&__dst, this, v4);
  }

  __dst.__r_.__value_.__s.__data_[v5] = 0;
  v6 = std::string::append(&__dst, ".thread", 7uLL);
  v7 = v6->__r_.__value_.__r.__words[0];
  size = v6->__r_.__value_.__l.__size_;
  v16[0] = v6->__r_.__value_.__r.__words[2];
  *(v16 + 3) = *(&v6->__r_.__value_.__r.__words[2] + 3);
  v9 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (pthread_attr_init(&v18) || pthread_attr_getschedparam(&v18, &v17) || (v17.sched_priority = v2, pthread_attr_setschedparam(&v18, &v17)))
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    if (v9 < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v7, size);
    }

    else
    {
      __p.__r_.__value_.__r.__words[0] = v7;
      __p.__r_.__value_.__l.__size_ = size;
      LODWORD(__p.__r_.__value_.__r.__words[2]) = v16[0];
      *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v16 + 3);
      *(&__p.__r_.__value_.__s + 23) = v9;
    }

    v14 = v2;
    v11 = dispatch_pthread_root_queue_create();
    if (v11)
    {
      v10 = dispatch_queue_create(this, 0);
    }

    else
    {
      v10 = 0;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v9 < 0)
  {
    operator delete(v7);
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  else if (!v10)
  {
    goto LABEL_19;
  }

  if (v11)
  {
    dispatch_set_target_queue(v10, v11);
LABEL_20:
    dispatch_release(v11);
    return v10;
  }

LABEL_19:
  if (v11)
  {
    goto LABEL_20;
  }

  return v10;
}

uint64_t ___ZN6H16ISP38CreateFixedPrioritySerialDispatchQueueEPKcj_block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v2 = *v2;
  }

  pthread_setname_np(v2);
  v3 = pthread_self();
  v4 = pthread_mach_thread_np(v3);
  v5 = H16ISP::H16ISPSetMachThreadPriority(v4, *(a1 + 56));

  return MEMORY[0x282204EA8](v5);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

uint64_t H16ISP::H16ISPSetMachThreadPriority(H16ISP *this, int a2)
{
  v3 = this;
  v12 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v4 = getpid();
  if (proc_pidinfo(v4, 2, 0, buffer, 232) <= 0)
  {
    fwrite("H16ISPSetMachThreadPriority - proc_pidinfo() failed\n", 0x34uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0xFFFFFFFFLL;
  }

  else
  {
    policy_info = a2 - v11;
    v5 = thread_policy_set(v3, 3u, &policy_info, 1u);
    if (v5)
    {
      v6 = v5;
      fprintf(*MEMORY[0x277D85DF8], "H16ISPSetMachThreadPriority - thread_policy_set(...,THREAD_PRECEDENCE_POLICY,...) failed, err=%d\n", v5);
    }

    else
    {
      v6 = thread_policy_set(v3, 1u, &v8, 1u);
      if (v6)
      {
        fprintf(*MEMORY[0x277D85DF8], "H16ISPSetMachThreadPriority - thread_policy_set(...,THREAD_EXTENDED_POLICY,...) failed, err=%d\n", v6);
      }
    }
  }

  return v6;
}

uint64_t ___ZN6H16ISP21H16ISPFilterGraphNode8ActivateEv_block_invoke(uint64_t a1)
{
  (*(**(a1 + 32) + 48))(*(a1 + 32));

  return kdebug_trace();
}

uint64_t H16ISP::H16ISPFrameReceiver::ConfigurePDEBufferPool(uint64_t a1, uint64_t a2, int a3, __int16 a4, unsigned int a5, uint64_t a6, uint64_t a7, int a8, int a9, __int16 a10, __int16 a11, __int16 a12)
{
  v35 = *MEMORY[0x277D85DE8];
  v12 = *(a2 + 12);
  v13 = MEMORY[0x277D86220];
  if (!v12)
  {
    goto LABEL_13;
  }

  v16 = (a2 + 18);
  while (*(v16 - 1) != a3)
  {
    v16 += 16;
    if (!--v12)
    {
      goto LABEL_13;
    }
  }

  v25 = *v16;
  v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v17 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v17;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "ConfigurePDEBufferPool";
    *&buf[12] = 1024;
    *&buf[14] = v25;
    _os_log_impl(&dword_2247DB000, v17, OS_LOG_TYPE_DEFAULT, "%s - pdePoolID=%d\n", buf, 0x12u);
  }

  if (v25 == 0xFFFF)
  {
LABEL_13:
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v13)
    {
      v19 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v19;
    }

    v20 = 3758097095;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiver::ConfigurePDEBufferPool();
    }
  }

  else
  {
    if ((a8 - 6) > 4)
    {
      LOWORD(v18) = 2;
    }

    else
    {
      v18 = dword_2249D1F24[a8 - 6];
    }

    bzero(v26, 0x18uLL);
    v27 = 24578;
    v28 = *(a1 + 436);
    v29 = a4;
    v33 = a9;
    v30 = a10;
    v31 = a12;
    v32 = (v18 * a10 + 63) & 0xFFC0;
    v20 = H16ISP::H16ISPDevice::ISP_SendCommand(*(a1 + 400), v26, 0x18u, 0, 0xFFFFFFFF);
    if (v20)
    {
      v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v13)
      {
        v22 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v22;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPFrameReceiver::ConfigurePDEBufferPool();
      }
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(a1, a5, v25);
    }
  }

  return v20;
}

uint64_t H16ISP::H16ISPDevice::EnableOutofBoundDepth(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 354;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::PoolAllocatorThreadStart(uint64_t a1)
{
  pthread_setname_np("H16ISPFrameReceiverPoolAllocatorThread");
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = (v2 + 8 * (*(a1 + 32) >> 9));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = (*v4 + 8 * (*(a1 + 32) & 0x1FFLL));
  }

  for (i = -536870212; ; i = 0)
  {
    if (v3 == v2)
    {
      v8 = 0;
    }

    else
    {
      v7 = *(a1 + 40) + *(a1 + 32);
      v8 = *(v2 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF);
    }

    if (v5 == v8)
    {
      break;
    }

    i = H16ISP::H16ISPFrameReceiverBufferPool::activatePool(*v5, 0);
    if (i)
    {
      break;
    }

    if ((++v5 - *v4) == 4096)
    {
      v9 = v4[1];
      ++v4;
      v5 = v9;
    }

    v2 = *(a1 + 8);
    v3 = *(a1 + 16);
  }

  *(a1 + 48) = i;
  return 0;
}

NSObject *___ZN6H16ISP19H16ISPGraphExitNode41RegisterH16ISPFrameReceivedProcForChannelEjPFiPvyjjPNS_36H16ISPFrameReceiverImageBufferStructEE_block_invoke(NSObject *result)
{
  isa = result[4].isa;
  v2 = *(isa + 20);
  if (v2 <= 2)
  {
    v3 = isa + 24 * v2 + 88;
    *(v3 + 8) = result[5];
    *v3 = result[6].isa;
    result = H16ISP::CreateFixedPrioritySerialDispatchQueue("com.apple.h16ispgraphexit.callback.queue", 0x3A);
    v4 = *(isa + 20);
    *(isa + 3 * v4 + 13) = result;
    *(isa + 20) = v4 + 1;
  }

  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

CFMutableDictionaryRef H16ISP::H16ISPCreateCVBufferPool(int a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8, float a9, int a10, int a11, int a12, char a13, unsigned int a14, int a15, void *a16, int a17, unsigned __int8 a18, int a19)
{
  v21 = a19;
  v81[4] = *MEMORY[0x277D85DE8];
  v79 = a2;
  valuePtr = a1;
  v77 = a4;
  v78 = a3;
  v76 = a7;
  v75 = a9;
  poolOut = 0;
  switch(a5)
  {
    case 0:
      v24 = 875704422;
      if (!a8)
      {
        v24 = 875704438;
      }

      goto LABEL_79;
    case 2:
      v73 = 1650943796;
      if ((a14 & 4) != 0)
      {
        v24 = 1735549492;
      }

      else if ((a14 & 8) != 0)
      {
        v24 = 1919379252;
      }

      else
      {
        if ((a14 & 0x20) == 0)
        {
          goto LABEL_80;
        }

        v24 = 1734505012;
      }

      goto LABEL_79;
    case 3:
      v24 = 825437747;
      goto LABEL_79;
    case 4:
      v24 = 825306677;
      goto LABEL_79;
    case 5:
      v24 = 1932996149;
      goto LABEL_79;
    case 6:
    case 7:
    case 10:
    case 19:
    case 43:
      v24 = 1278226488;
      goto LABEL_79;
    case 8:
    case 47:
      v24 = 1278226742;
      goto LABEL_79;
    case 11:
      v24 = 1751411059;
      goto LABEL_79;
    case 12:
      v24 = 1278226736;
      goto LABEL_79;
    case 13:
      v24 = 1530422832;
      if (a8)
      {
        goto LABEL_79;
      }

      goto LABEL_49;
    case 14:
      v24 = 2100848176;
      if (!a8)
      {
LABEL_49:
        v24 += 4096;
      }

      goto LABEL_79;
    case 15:
      v24 = 2016686640;
      if (!a8)
      {
        goto LABEL_79;
      }

      goto LABEL_65;
    case 16:
      if (a8)
      {
        v26 = 1530422832;
        goto LABEL_63;
      }

      v27 = 1530422832;
      goto LABEL_78;
    case 17:
      if (a8)
      {
        v26 = 2100848176;
        goto LABEL_63;
      }

      v27 = 2100848176;
      goto LABEL_78;
    case 18:
      v24 = 1882468912;
      if (a8)
      {
LABEL_65:
        v24 += 3276800;
      }

      goto LABEL_79;
    case 20:
      if ((a14 & 2) == 0)
      {
        goto LABEL_43;
      }

      v24 = 1651847472;
      goto LABEL_79;
    case 21:
LABEL_43:
      v24 = 1650943796;
      goto LABEL_79;
    case 22:
      v24 = 641230384;
      if (!a8)
      {
        v24 = 641234480;
      }

      goto LABEL_79;
    case 23:
      if (a8)
      {
        v26 = 641230384;
LABEL_63:
        v24 = v26 | 0x400000;
      }

      else
      {
        v27 = 641230384;
LABEL_78:
        v24 = v27 | 0x401000;
      }

      goto LABEL_79;
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
      v22 = &byte_27D6F1F08;
      v23 = 65;
      break;
    case 30:
      v24 = 1751410032;
      goto LABEL_79;
    case 37:
      v24 = 1651519798;
      goto LABEL_79;
    case 38:
      if ((a14 & 2) != 0)
      {
        v24 = 1651587122;
      }

      else
      {
        v73 = 1650946096;
        if ((a14 & 4) != 0)
        {
          v24 = 1735553072;
        }

        else
        {
          if ((a14 & 8) != 0)
          {
            v25 = 1919378232;
          }

          else
          {
            if ((a14 & 0x20) == 0)
            {
              goto LABEL_80;
            }

            v25 = 1734501176;
          }

          v24 = v25 + 3320;
        }
      }

      goto LABEL_79;
    case 39:
      v24 = 1650946100;
      goto LABEL_79;
    case 40:
      if ((a14 & 2) != 0)
      {
        v24 = 1651925816;
      }

      else
      {
        v73 = 1650942776;
        if ((a14 & 4) != 0)
        {
          v24 = 1735549752;
        }

        else if ((a14 & 8) != 0)
        {
          v24 = 1919378232;
        }

        else
        {
          if ((a14 & 0x20) == 0)
          {
            goto LABEL_80;
          }

          v24 = 1734501176;
        }
      }

      goto LABEL_79;
    case 41:
      v24 = 1652056888;
      goto LABEL_79;
    case 42:
      if ((a14 & 2) != 0)
      {
        v24 = 1651519537;
      }

      else
      {
        v24 = 1278226481;
      }

      goto LABEL_79;
    case 44:
      if ((a14 & 2) != 0)
      {
        v24 = 1651798066;
      }

      else
      {
        v24 = 1650946098;
      }

      goto LABEL_79;
    case 45:
      v24 = 893595958;
      goto LABEL_79;
    case 46:
      v24 = 1111970369;
      goto LABEL_79;
    case 48:
      v24 = 843264310;
      goto LABEL_79;
    case 49:
      v24 = 860041526;
      goto LABEL_79;
    case 50:
      v24 = 876818742;
      goto LABEL_79;
    case 51:
      v24 = 910373174;
      goto LABEL_79;
    case 52:
      v24 = 927150390;
      goto LABEL_79;
    case 53:
      v24 = 943927606;
      goto LABEL_79;
    case 54:
      v24 = 1278226738;
      goto LABEL_79;
    default:
      v24 = 2037741158;
      if (!a8)
      {
        v24 = 2037741171;
      }

      goto LABEL_79;
  }

  while (*(v22 - 1) != a5 || *v22 != a8)
  {
    v22 += 20;
    if (!--v23)
    {
      v24 = 0;
      goto LABEL_79;
    }
  }

  v24 = *(v22 - 2);
LABEL_79:
  v73 = v24;
LABEL_80:
  v28 = *MEMORY[0x277CBECE8];
  result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (result)
  {
    v30 = result;
    v68 = v21;
    v69 = a18;
    v31 = CFNumberCreate(v28, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(v30, *MEMORY[0x277CC4EC8], v31);
    CFRelease(v31);
    v32 = CFNumberCreate(v28, kCFNumberIntType, &v79);
    CFDictionarySetValue(v30, *MEMORY[0x277CC4DD8], v32);
    CFRelease(v32);
    if (v78)
    {
      v33 = CFNumberCreate(v28, kCFNumberIntType, &v78);
      CFDictionarySetValue(v30, *MEMORY[0x277CC4DA0], v33);
      CFRelease(v33);
    }

    value = a16;
    v34 = CFNumberCreate(v28, kCFNumberIntType, &v73);
    CFDictionarySetValue(v30, *MEMORY[0x277CC4E30], v34);
    CFRelease(v34);
    v35 = v73;
    bzero(&v71, 0x14uLL);
    v36 = 0;
    while (*&supportedFormatMap[v36] != v35)
    {
      v36 += 20;
      if (v36 == 1300)
      {
        goto LABEL_88;
      }
    }

    v37 = &supportedFormatMap[v36];
    v71 = *v37;
    v72 = *(v37 + 4);
LABEL_88:
    v38 = a5 != 43 && v72 == 2;
    v39 = !v38;
    v40 = MEMORY[0x277CBED28];
    if (!v38)
    {
      LODWORD(v81[0]) = a10;
      v41 = CFNumberCreate(v28, kCFNumberIntType, v81);
      CFDictionarySetValue(v30, *MEMORY[0x277CC4D60], v41);
      CFRelease(v41);
      if (v77)
      {
        v42 = CFNumberCreate(v28, kCFNumberIntType, &v77);
        CFDictionarySetValue(v30, *MEMORY[0x277CC4DB8], v42);
        CFRelease(v42);
      }

      if ((a14 & 0x80) != 0)
      {
        CFDictionarySetValue(v30, *MEMORY[0x277CC4DA8], *v40);
      }

      if (a15)
      {
        v43 = CFNumberCreate(v28, kCFNumberIntType, &a15);
        CFDictionarySetValue(v30, *MEMORY[0x277CC4EB8], v43);
        CFRelease(v43);
      }

      if (v75 != 0.0)
      {
        v44 = CFNumberCreate(v28, kCFNumberFloatType, &v75);
        CFDictionarySetValue(v30, *MEMORY[0x277CC4DD0], v44);
        CFRelease(v44);
      }

      if (a17 != -1)
      {
        v45 = CFNumberCreate(v28, kCFNumberIntType, &a17);
        CFDictionarySetValue(v30, *MEMORY[0x277CC4DC8], v45);
        CFRelease(v45);
      }

      v70 = a11;
      v46 = CFNumberCreate(v28, kCFNumberIntType, &v70);
      CFDictionarySetValue(v30, *MEMORY[0x277CC4E38], v46);
      CFRelease(v46);
    }

    v47 = *v40;
    v48 = *MEMORY[0x277CBED10];
    if (v69)
    {
      v49 = v47;
    }

    else
    {
      v49 = *MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(v30, *MEMORY[0x277CC4DF8], v49);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v68)
    {
      v51 = CFNumberCreate(v28, kCFNumberIntType, &a19);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2950], v51);
      CFRelease(v51);
    }

    if (v39)
    {
      if (a13 && (v69 & 1) == 0)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B60], v48);
      }

      if ((a14 & 0x40) != 0)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B80], v47);
      }

      LODWORD(v81[0]) = a12;
      v52 = CFNumberCreate(0, kCFNumberIntType, v81);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2970], v52);
      CFRelease(v52);
    }

    CFDictionaryAddValue(v30, *MEMORY[0x277CC4DE8], Mutable);
    CFRelease(Mutable);
    if (v79 != 8)
    {
      v53 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v53)
      {
        v54 = v53;
        v55 = 0;
        while (*&supportedFormatMap[v55] != v73)
        {
          v55 += 20;
          if (v55 == 1300)
          {
            goto LABEL_126;
          }
        }

        v56 = &supportedFormatMap[v55];
        v71 = *v56;
        v72 = *(v56 + 4);
        if ((HIDWORD(v71) - 25) <= 1)
        {
          v57 = *MEMORY[0x277CC4B88];
          v58 = *MEMORY[0x277CC4BC0];
          goto LABEL_127;
        }

LABEL_126:
        v59 = *MEMORY[0x277CC4BB8];
        v81[0] = *MEMORY[0x277CC4BC0];
        v81[1] = v59;
        v60 = *MEMORY[0x277CC4BA0];
        v81[2] = *MEMORY[0x277CC4BB0];
        v81[3] = v60;
        v57 = *MEMORY[0x277CC4B88];
        v58 = v81[(a14 >> 8) & 3];
LABEL_127:
        CFDictionarySetValue(v53, v57, v58);
        if (*a6)
        {
          CFDictionarySetValue(v54, *MEMORY[0x277CC4C00], *a6);
        }

        v61 = *(a6 + 8);
        if (v61)
        {
          CFDictionarySetValue(v54, *MEMORY[0x277CC4D10], v61);
        }

        v62 = *(a6 + 16);
        if (v62)
        {
          CFDictionarySetValue(v54, *MEMORY[0x277CC4CC0], v62);
        }

        v63 = *(a6 + 24);
        if (v63)
        {
          CFDictionarySetValue(v54, *MEMORY[0x277CC4C90], v63);
        }

        CFDictionaryAddValue(v30, *MEMORY[0x277CC4B48], v54);
        CFRelease(v54);
      }
    }

    v64 = CFDictionaryCreateMutable(v28, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v64)
    {
      v65 = v64;
      if (value)
      {
        CFDictionarySetValue(v64, *MEMORY[0x277CC4E58], value);
      }

      v66 = CFNumberCreate(0, kCFNumberCFIndexType, &v76);
      CFDictionaryAddValue(v65, *MEMORY[0x277CC4E50], v66);
      CFRelease(v66);
      CVPixelBufferPoolCreate(v28, v65, v30, &poolOut);
      CFRelease(v65);
    }

    CFRelease(v30);
    return poolOut;
  }

  return result;
}

uint64_t H16ISP::getPixelFormatFromMetaInfo(int a1, int a2, _OWORD *a3)
{
  v4 = 65;
  for (i = supportedFormatMap; *(i + 1) != a1 || i[8] != a2; i += 20)
  {
    if (!--v4)
    {
      return 0;
    }
  }

  v6 = *i;
  if (a3)
  {
    bzero(a3, 0x14uLL);
    v7 = *i;
    *(a3 + 4) = *(i + 4);
    *a3 = v7;
  }

  return v6;
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

uint64_t H16ISP::H16ISPFrameReceiverSharedBufferPool::AllocateAndSendBuffers(H16ISP::H16ISPFrameReceiverSharedBufferPool *this, unsigned int a2)
{
  v25[444] = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 8));
  if (!a2)
  {
LABEL_8:
    v13 = H16ISP::H16ISPDevice::ISP_SendBuffers(*this, v23, a2, *(this + 24));
    if (v13)
    {
      v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v14 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v14;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPFrameReceiverSharedBufferPool::AllocateAndSendBuffers();
      }
    }

    else
    {
      *(*(this + 9) + 120) += a2;
    }

    goto LABEL_27;
  }

  v4 = 0;
  v5 = v25;
  while (1)
  {
    pixelBuffer[0] = 0;
    Buffer = H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(*(this + 9), pixelBuffer, 0);
    if (Buffer)
    {
      v13 = Buffer;
      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v15 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPFrameReceiverSharedBufferPool::AllocateAndSendBuffers();
        if (!v4)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }

      goto LABEL_22;
    }

    IOSurface = CVPixelBufferGetIOSurface(pixelBuffer[0]);
    ID = IOSurfaceGetID(IOSurface);
    v8 = pixelBuffer[0];
    pixelBuffer[2] = &ID;
    std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 13, &ID)[3] = v8;
    *(v5 - 2) = *(this + 5);
    v9 = CVPixelBufferGetIOSurface(pixelBuffer[0]);
    *(v5 - 4) = IOSurfaceGetID(v9);
    v10 = *(this + 9);
    *(v5 - 3) = *(v10 + 24);
    v11 = *(v10 + 40);
    LODWORD(v10) = *(v10 + 20);
    *(v5 - 1) = v11;
    *v5 = v10;
    if ((*(this + 148) & 1) == 0)
    {
      break;
    }

LABEL_7:
    ++v4;
    v5 += 14;
    if (a2 == v4)
    {
      goto LABEL_8;
    }
  }

  v12 = H16ISP::H16ISPFrameReceiverSharedBufferPool::setBufferConfig(this, pixelBuffer[0]);
  if (!v12)
  {
    *(this + 148) = 1;
    goto LABEL_7;
  }

  v13 = v12;
  v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v16 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v16;
  }

  ++v4;
  if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
LABEL_22:
    if (!v4)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  H16ISP::H16ISPFrameReceiverSharedBufferPool::AllocateAndSendBuffers();
  if (!v4)
  {
    goto LABEL_27;
  }

LABEL_23:
  v17 = &v24;
  do
  {
    v18 = *v17;
    v17 += 14;
    v19 = H16ISP::H16ISPFrameReceiverSharedBufferPool::FindBuffer(this, v18);
    if (v19)
    {
      H16ISP::H16ISPFrameReceiverSharedBufferPool::ReleaseBuffer(this, v19);
    }

    --v4;
  }

  while (v4);
LABEL_27:
  pthread_mutex_unlock((this + 8));
  return v13;
}

uint64_t H16ISP::H16ISPFrameReceiver::sendInitialBuffersToFirmware(H16ISP::H16ISPFrameReceiver *this, H16ISP::H16ISPFrameReceiverSharedBufferPool *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  Pool = H16ISP::H16ISPFrameReceiverSharedBufferPool::GetPool(a2);
  v4 = H16ISP::H16ISPFrameReceiverSharedBufferPool::AllocateAndSendBuffers(a2, Pool[28]);
  v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v5 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = Pool[28];
    v7 = Pool[25];
    v9 = Pool[4];
    v8 = Pool[5];
    v11 = 136316418;
    v12 = "sendInitialBuffersToFirmware";
    v13 = 1024;
    v14 = v6;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v4;
    _os_log_impl(&dword_2247DB000, v5, OS_LOG_TYPE_DEFAULT, "%s - Sending %d buffers to firmware (poolID=%d, poolSize=%d, poolType=%d) result=0x%08X\n\n", &v11, 0x2Au);
  }

  return v4;
}

void *std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::assign<std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool * const*,H16ISP::H16ISPFrameReceiverBufferPool * const&,H16ISP::H16ISPFrameReceiverBufferPool * const* const*,long,512l>,0>(void *a1, char **a2, char *a3, char *a4, char *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&a5[-*a4] >> 3) + ((a4 - a2) << 6) - ((a3 - *a2) >> 3);
  }

  return std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::__assign_with_size_random_access[abi:ne200100]<std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool * const*,H16ISP::H16ISPFrameReceiverBufferPool * const&,H16ISP::H16ISPFrameReceiverBufferPool * const* const*,long,512l>>(a1, a2, a3, v5);
}

uint64_t H16ISP::H16ISPFrameReceiver::startReceive(H16ISP::H16ISPFrameReceiver *this)
{
  v89 = *MEMORY[0x277D85DE8];
  v78 = 0;
  memset(v76, 0, sizeof(v76));
  v75 = 0;
  pthread_mutex_lock((this + 96));
  if (!*this)
  {
    kdebug_trace();
    v3 = *(this + 888);
    if ((v3 & 1) == 0)
    {
      std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::operator=(v76, this + 90);
      *v79 = 48;
      pthread_attr_init(&inputStruct);
      pthread_attr_setschedparam(&inputStruct, v79);
      pthread_attr_setdetachstate(&inputStruct, 1);
      pthread_create(&v78, &inputStruct, H16ISP::PoolAllocatorThreadStart, v76);
      pthread_attr_destroy(&inputStruct);
    }

    *(this + 434) = 0;
    *this = 1;
    *(this + 57) = 0;
    *(this + 55) = -1;
    *(this + 224) = 1;
    *(this + 450) = 0;
    v4 = MEMORY[0x277D86220];
    if (*(this + 433) == 1)
    {
      v5 = *(this + 102);
      LODWORD(inputStruct.__sig) = *(this + 109);
      *&inputStruct.__opaque[16] = v5;
      *inputStruct.__opaque = H16ISP::H16ISPFrameReceiver::EPipeDone;
      *&inputStruct.__opaque[8] = this;
      if (H16ISP::H16ISPDevice::ISP_RegisterEPipeDoneCallback(*(this + 50), &inputStruct))
      {
        v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v4)
        {
          v6 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPFrameReceiver::startReceive();
        }
      }
    }

    if (*(this + 532) == 1)
    {
      started = H16ISP::H16ISPDevice::StartFaceDetect(*(this + 50), *(this + 109));
      if (started)
      {
        v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v4)
        {
          v7 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPFrameReceiver::startReceive();
        }
      }
    }

    else
    {
      started = 0;
    }

    v74 = 0;
    H16ISP::H16ISPDevice::GetCameraCurrentConfig(*(this + 50), *(this + 109), &v74, &inputStruct);
    if (v8)
    {
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v4)
      {
        v9 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPFrameReceiver::startReceive();
      }
    }

    if (inputStruct.__opaque[8])
    {
      v10 = (*&inputStruct.__opaque[8] >> 8) + 1;
    }

    else
    {
      v10 = *&inputStruct.__opaque[8] >> 8;
    }

    v11 = (this + 516);
    if (*(this + 130) < 2u)
    {
      if (*v11)
      {
        H16ISP::H16ISPDevice::SetMaximumFrameRate(*(this + 50), *(this + 109));
      }

      if (*(this + 131) >= v10)
      {
        H16ISP::H16ISPDevice::SetMinimumFrameRate(*(this + 50), *(this + 109));
      }
    }

    else
    {
      H16ISP::H16ISPDevice::SetRationalFrameRateRange(*(this + 50), *(this + 109), 0, v11, (this + 524));
    }

    if (*(this + 488) == 1 && H16ISP::H16ISPDevice::EnableTNR(*(this + 50), *(this + 109), this + 488))
    {
      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v4)
      {
        v12 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v12;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPFrameReceiver::startReceive();
      }
    }

    if (*(this + 1000) == 1)
    {
      v13 = *(this + 91);
      v14 = (v13 + 8 * (*(this + 94) >> 9));
      v15 = *(this + 92);
      if (v15 == v13)
      {
        v16 = 0;
      }

      else
      {
        v16 = (*v14 + 8 * (*(this + 94) & 0x1FFLL));
      }

      while (1)
      {
        if (v15 == v13)
        {
          v22 = 0;
        }

        else
        {
          v21 = *(this + 95) + *(this + 94);
          v22 = *(v13 + ((v21 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v21 & 0x1FF);
        }

        if (v16 == v22)
        {
          break;
        }

        v17 = *v16;
        if (**v16 == 1)
        {
          v18 = *(v17 + 4);
          if (v18 == 38 || v18 == 2)
          {
            H16ISP::H16ISPFrameReceiver::sendInitialBuffersToFirmware(this, v17);
          }
        }

        if ((++v16 - *v14) == 4096)
        {
          v20 = v14[1];
          ++v14;
          v16 = v20;
        }

        v13 = *(this + 91);
        v15 = *(this + 92);
      }

      v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v4)
      {
        v23 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v23;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(this + 109);
        v25 = *(this + 432) ^ 1;
        *v79 = 136315906;
        *&v79[4] = "startReceive";
        v80 = 1024;
        v81 = 1932;
        v82 = 1024;
        v83 = v24;
        v84 = 1024;
        v85 = v25;
        _os_log_impl(&dword_2247DB000, v23, OS_LOG_TYPE_DEFAULT, "%s - [%d] [CIL] Call ISP_CILRequestPerChannel (%u/%u)\n", v79, 0x1Eu);
      }

      v26 = H16ISP::H16ISPDevice::ISP_CILRequestPerChannel(*(this + 50), *(this + 109), (*(this + 432) & 1) == 0);
      if (v26)
      {
        v27 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v4)
        {
          v27 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v27;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v70 = *(this + 109);
          v71 = *(this + 432) ^ 1;
          *v79 = 136316162;
          *&v79[4] = "startReceive";
          v80 = 1024;
          v81 = 1938;
          v82 = 1024;
          v83 = v26;
          v84 = 1024;
          v85 = v70;
          v86 = 1024;
          v87 = v71;
          _os_log_error_impl(&dword_2247DB000, v27, OS_LOG_TYPE_ERROR, "%s - Calling ISP_CILRequestPerChannel(Line:%d) error: 0x%08X (%u/%u)\n", v79, 0x24u);
        }
      }

      if (!H16ISP::H16ISPDevice::StartCamera(*(this + 50), 1 << *(this + 109)))
      {
        *(this + 435) = 1;
        if (v3)
        {
          goto LABEL_89;
        }

LABEL_71:
        pthread_join(v78, &v75);
        if (v77)
        {
          started = 3758097085;
          goto LABEL_107;
        }

        *(this + 888) = 1;
        v29 = *(this + 91);
        v30 = (v29 + 8 * (*(this + 94) >> 9));
        v31 = *(this + 92);
        if (v31 == v29)
        {
          v32 = 0;
        }

        else
        {
          v32 = *v30 + 8 * (*(this + 94) & 0x1FFLL);
        }

        while (1)
        {
          if (v31 == v29)
          {
            v38 = 0;
          }

          else
          {
            v37 = *(this + 95) + *(this + 94);
            v38 = *(v29 + ((v37 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v37 & 0x1FF);
          }

          if (v32 == v38)
          {
            break;
          }

          v33 = *(this + 6);
          if (v33)
          {
            v34 = *v32;
            v35 = *(*v32 + 184);
            if (!v35)
            {
              v35 = *(v34 + 160);
            }

            v33(7, *(v34 + 16), 0, v35, *(v34 + 168), *(this + 7));
          }

          v32 += 8;
          if (v32 - *v30 == 4096)
          {
            v36 = v30[1];
            ++v30;
            v32 = v36;
          }

          v29 = *(this + 91);
          v31 = *(this + 92);
        }

LABEL_89:
        v39 = *(this + 236);
        if (v39 <= 0x64)
        {
          v40 = *(this + 109);
          if (v40 <= 1)
          {
            H16ISP::H16ISPDevice::SetOISContactStop(*(this + 50), v40, v39);
          }
        }

        v41 = *(this + 97);
        v42 = (v41 + 8 * (*(this + 100) >> 9));
        v43 = *(this + 98);
        if (v43 == v41)
        {
          v44 = 0;
        }

        else
        {
          v44 = (*v42 + 8 * (*(this + 100) & 0x1FFLL));
        }

        while (1)
        {
          if (v43 == v41)
          {
            v49 = 0;
          }

          else
          {
            v48 = *(this + 101) + *(this + 100);
            v49 = *(v41 + ((v48 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v48 & 0x1FF);
          }

          if (v44 == v49)
          {
            break;
          }

          v45 = *v44;
          Pool = H16ISP::H16ISPFrameReceiverSharedBufferPool::GetPool(**v44);
          if ((*(Pool + 116) & 1) == 0 && *(v45 + 8) == 1)
          {
            if (*(Pool + 112))
            {
              started = H16ISP::H16ISPFrameReceiver::sendInitialBuffersToFirmware(Pool, *v45);
              if (started)
              {
                goto LABEL_107;
              }
            }
          }

          if ((++v44 - *v42) == 4096)
          {
            v47 = v42[1];
            ++v42;
            v44 = v47;
          }

          v41 = *(this + 97);
          v43 = *(this + 98);
        }

        if (started)
        {
          goto LABEL_107;
        }

        v51 = *(this + 108);
        if (!v51 || (started = H16ISP::H16ISPFrameReceiver::sendInitialDataBuffersToFirmware(this, v51), !started))
        {
          v53 = *(this + 91);
          v54 = (v53 + 8 * (*(this + 94) >> 9));
          v55 = *(this + 92);
          if (v55 == v53)
          {
            v56 = 0;
          }

          else
          {
            v56 = (*v54 + 8 * (*(this + 94) & 0x1FFLL));
          }

          while (1)
          {
            if (v55 == v53)
            {
              v58 = 0;
            }

            else
            {
              v57 = *(this + 95) + *(this + 94);
              v58 = *(v53 + ((v57 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v57 & 0x1FF);
            }

            if (v56 == v58)
            {
              break;
            }

            v59 = *v56;
            if (!*(*v56 + 30))
            {
              if (*(v59 + 28))
              {
                v61 = *(v59 + 29);
                if ((v61 & 0x400) == 0)
                {
                  if (v61)
                  {
                    if (H16ISP::getPixelFormatFromMetaInfo(*(v59 + 10), *(v59 + 88), &inputStruct))
                    {
                      if (*(v59 + 4) == 7 && *&inputStruct.__opaque[8] == 2)
                      {
                        started = H16ISP::H16ISPDevice::SetBufferPoolConfiguration(*(this + 50), *(this + 109), 7, 1, 2, 2u, v59 + 336);
                        if (started)
                        {
                          v62 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v4)
                          {
                            v62 = os_log_create("com.apple.isp", "general");
                            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v62;
                          }

                          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                          {
                            H16ISP::H16ISPFrameReceiver::startReceive();
                          }

                          goto LABEL_107;
                        }
                      }
                    }
                  }

                  else
                  {
                    started = H16ISP::H16ISPFrameReceiver::sendInitialBuffersToFirmware(this, *v56);
                    if (started)
                    {
                      goto LABEL_107;
                    }
                  }
                }
              }
            }

            if ((++v56 - *v54) == 4096)
            {
              v60 = v54[1];
              ++v54;
              v56 = v60;
            }

            v53 = *(this + 91);
            v55 = *(this + 92);
          }

          if ((*(this + 1000) & 1) == 0)
          {
            v63 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v4)
            {
              v63 = os_log_create("com.apple.isp", "general");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v63;
            }

            v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
            v65 = *(this + 109);
            if (v64)
            {
              v66 = *(this + 432) ^ 1;
              LODWORD(inputStruct.__sig) = 136315906;
              *(&inputStruct.__sig + 4) = "startReceive";
              *&inputStruct.__opaque[4] = 1024;
              *&inputStruct.__opaque[6] = 2054;
              *&inputStruct.__opaque[10] = 1024;
              *&inputStruct.__opaque[12] = v65;
              *&inputStruct.__opaque[16] = 1024;
              *&inputStruct.__opaque[18] = v66;
              _os_log_impl(&dword_2247DB000, v63, OS_LOG_TYPE_DEFAULT, "%s - [%d] [CIL] Call ISP_CILRequestPerChannel (%u/%u)\n", &inputStruct, 0x1Eu);
              v65 = *(this + 109);
            }

            v67 = H16ISP::H16ISPDevice::ISP_CILRequestPerChannel(*(this + 50), v65, (*(this + 432) & 1) == 0);
            if (v67)
            {
              v68 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v4)
              {
                v68 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v68;
              }

              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                v72 = *(this + 109);
                v73 = *(this + 432) ^ 1;
                LODWORD(inputStruct.__sig) = 136316162;
                *(&inputStruct.__sig + 4) = "startReceive";
                *&inputStruct.__opaque[4] = 1024;
                *&inputStruct.__opaque[6] = 2058;
                *&inputStruct.__opaque[10] = 1024;
                *&inputStruct.__opaque[12] = v67;
                *&inputStruct.__opaque[16] = 1024;
                *&inputStruct.__opaque[18] = v72;
                *&inputStruct.__opaque[22] = 1024;
                *&inputStruct.__opaque[24] = v73;
                _os_log_error_impl(&dword_2247DB000, v68, OS_LOG_TYPE_ERROR, "%s - Calling ISP_CILRequestPerChannel(Line:%d) error: 0x%08X (%u/%u)\n", &inputStruct, 0x24u);
              }
            }

            started = H16ISP::H16ISPDevice::StartCamera(*(this + 50), 1 << *(this + 109));
            if (started)
            {
              v69 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v4)
              {
                v69 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v69;
              }

              if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
              {
                H16ISP::H16ISPFrameReceiver::startReceive();
              }

              goto LABEL_107;
            }

            *(this + 435) = 1;
          }

          if (*(this + 131))
          {
            H16ISP::H16ISPFrameReceiver::startNoDataTimer(this);
            H16ISP::H16ISPFrameReceiver::startTailspinTimer(this);
          }

          if (*(this + 592) == 1)
          {
            H16ISP::H16ISPFrameReceiver::startProjectorWatchdogTimer(this);
          }

          started = 0;
          goto LABEL_107;
        }

        v52 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v4)
        {
          v52 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v52;
        }

        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPFrameReceiver::startReceive();
        }

LABEL_107:
        pthread_mutex_unlock((this + 96));
        kdebug_trace();
        goto LABEL_108;
      }

      v28 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v4)
      {
        v28 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v28;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPFrameReceiver::startReceive();
      }
    }

    if (v3)
    {
      goto LABEL_89;
    }

    goto LABEL_71;
  }

  pthread_mutex_unlock((this + 96));
  started = 3758097122;
LABEL_108:
  std::deque<__CVBuffer *>::~deque[abi:ne200100](v76);
  return started;
}

void sub_22482A2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::deque<__CVBuffer *>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(H16ISP::H16ISPFrameReceiverBufferPool *this, __CVBuffer **a2, int a3)
{
  pixelBufferOut = 0;
  pthread_mutex_lock(this + 4);
  if (a2)
  {
    *a2 = 0;
    if (*(this + 20) || (*(this + 117) & 4) != 0)
    {
      v8 = MEMORY[0x277CBECE8];
      if (*(this + 124) == 1)
      {
        if (*(this + 21))
        {
          v9 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, this + 104);
          CFDictionarySetValue(*(this + 21), *MEMORY[0x277CC4E40], v9);
          CFRelease(v9);
        }

        *(this + 124) = 0;
      }

      if (!a3 || (v10 = *(this + 29)) == 0 || (v11 = *(this + 28), pixelBufferOut = *(*(*(this + 25) + ((v11 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v11 & 0x1FF)), v12 = pixelBufferOut, *(this + 28) = v11 + 1, *(this + 29) = v10 - 1, std::deque<__CVBuffer *>::__maybe_remove_front_spare[abi:ne200100](this + 192, 1), !v12))
      {
        if (CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(*v8, *(this + 20), *(this + 21), &pixelBufferOut))
        {
          v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
          {
            v13 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v13;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer();
          }
        }
      }

      pthread_mutex_unlock(this + 4);
      v14 = pixelBufferOut;
      if (pixelBufferOut)
      {
        *a2 = pixelBufferOut;
        IOSurface = CVPixelBufferGetIOSurface(v14);
        IOSurfaceGetID(IOSurface);
        return 0;
      }

      else
      {
        v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v17 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v17;
        }

        v7 = 3758097085;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer();
        }
      }
    }

    else
    {
      pthread_mutex_unlock(this + 4);
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v6 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
      }

      v7 = 3758097086;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer();
      }
    }
  }

  else
  {
    pthread_mutex_unlock(this + 4);
    v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v16 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v16;
    }

    v7 = 3758097090;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer();
    }
  }

  return v7;
}

void *std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::__assign_with_size_random_access[abi:ne200100]<std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool * const*,H16ISP::H16ISPFrameReceiverBufferPool * const&,H16ISP::H16ISPFrameReceiverBufferPool * const* const*,long,512l>>(void *a1, char **a2, char *a3, unint64_t a4)
{
  v20 = a2;
  v21 = a3;
  v7 = a1[5];
  if (v7 >= a4)
  {
    v14 = a1[1];
    v15 = (v14 + 8 * (a1[4] >> 9));
    if (a1[2] == v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = *v15 + 8 * (a1[4] & 0x1FFLL);
    }

    v22[0] = a2;
    v22[1] = a3;
    v18 = std::__deque_iterator<__CVBuffer *,__CVBuffer **,__CVBuffer *&,__CVBuffer ***,long,512l>::operator+[abi:ne200100](v22, a4);
    v23 = v15;
    v24 = v16;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>>>(a2, a3, v18, v19, &v23);
    return std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::__erase_to_end(a1, v23, v24);
  }

  else
  {
    v9 = std::__deque_iterator<__CVBuffer *,__CVBuffer **,__CVBuffer *&,__CVBuffer ***,long,512l>::operator+[abi:ne200100](&v20, v7);
    v10 = v8;
    v11 = a1[1];
    if (a1[2] == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(v11 + 8 * (a1[4] >> 9)) + 8 * (a1[4] & 0x1FFLL);
    }

    v23 = (v11 + 8 * (a1[4] >> 9));
    v24 = v12;
    std::__for_each_segment[abi:ne200100]<std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>,std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool **,H16ISP::H16ISPFrameReceiverBufferPool *&,H16ISP::H16ISPFrameReceiverBufferPool ***,long,512l>>>(v20, v21, v9, v8, &v23);
    return std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::__append_with_size[abi:ne200100]<std::__deque_iterator<H16ISP::H16ISPFrameReceiverBufferPool *,H16ISP::H16ISPFrameReceiverBufferPool * const*,H16ISP::H16ISPFrameReceiverBufferPool * const&,H16ISP::H16ISPFrameReceiverBufferPool * const* const*,long,512l>>(a1, v9, v10, a4 - a1[5]);
  }
}

void *std::__deque_iterator<__CVBuffer *,__CVBuffer **,__CVBuffer *&,__CVBuffer ***,long,512l>::operator+[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 3);
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
    }

    else
    {
      result += v4 >> 9;
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
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

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::__do_rehash<true>(a1, prime);
    }
  }
}

uint64_t H16ISP::H16ISPDevice::EnableLocalRawBufferMode(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 293;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableLocalThumbnailRawBufferMode(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 361;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPFrameReceiverSharedBufferPool::setBufferConfig(H16ISP::H16ISPFrameReceiverSharedBufferPool *this, CVPixelBufferRef pixelBuffer)
{
  v2 = *(this + 9);
  v3 = *(v2 + 16);
  if (v3 > 0x29 || ((1 << v3) & 0x200C0000002) == 0)
  {
    return 0;
  }

  v7 = *(v2 + 112);
  v13[1] = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v13[0] = CVPixelBufferGetDataSize(pixelBuffer);
  if (v3 == 30)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  if (v3 == 31)
  {
    v8 = 7;
  }

  if (v3 == 41)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = H16ISP::H16ISPDevice::SetSharedBufferPoolInfo(*this, *(this + 72), *(this + 73), v9, v7, 0, 1u, v13);
  if (v10)
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPFrameReceiverSharedBufferPool::setBufferConfig();
    }
  }

  return v10;
}

uint64_t H16ISP::H16ISPDevice::SetSharedBufferPoolInfo(H16ISP::H16ISPDevice *a1, __int16 a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, unsigned int a7, const void *a8)
{
  bzero(v17, 0x98uLL);
  v18 = 13322;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23[67] = a6;
  v23[66] = a7;
  memcpy(v23, a8, 32 * a7);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v17, 0x98u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableFullResCapture(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 305;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_SendBuffers(uint64_t a1, const void *a2, unsigned int a3, mach_port_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v8 = *(a1 + 4344);
  if (v8)
  {
    v12 = 0u;
    v9 = IOConnectCallAsyncMethod(v8, 6u, a4, &reference, 8u, 0, 0, a2, 56 * a3, 0, 0, 0, 0);
  }

  else
  {
    v9 = 3758097084;
  }

  kdebug_trace();
  return v9;
}

uint64_t H16ISP::H16ISPDevice::SetCameraControl(H16ISP::H16ISPDevice *this, __int16 a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = 321;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

BOOL H16ISP::H16ISPFrameReceiver::IsSuspended(H16ISP::H16ISPFrameReceiver *this)
{
  pthread_mutex_lock((this + 96));
  v2 = *this == 2;
  pthread_mutex_unlock((this + 96));
  return v2;
}

uint64_t H16ISP::H16ISPDevice::ISP_PreviewStreamSet(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2829;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

void SetMinimumFrameRateNow(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 160);
  if (v3)
  {
    v5 = *(a2 + 24);
    v6 = 5.0;
    if (*(a1 + 4969) == 1)
    {
      v7 = *(a1 + 56);
      v8 = 2.0;
      if (v7 <= 3.0)
      {
        v8 = 3.0;
      }

      if (v7 > 2.0)
      {
        v6 = v8;
      }

      else
      {
        v6 = 5.0;
      }
    }

    H16ISP::H16ISPFrameReceiver::SetFrameDoneTimeoutDuration(v3, v6);
    H16ISP::H16ISPDevice::SetMinimumFrameRate(v5, *(a1 + 156));
    if (ExclaveSetMinimumFrameRateNow(a2, a1))
    {
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        SetMinimumFrameRateNow();
      }
    }
  }
}

uint64_t H16ISP::H16ISPFrameReceiver::SetFrameDoneTimeoutDuration(H16ISP::H16ISPFrameReceiver *this, double a2)
{
  if (a2 < 2.0)
  {
    a2 = 2.0;
  }

  *(this + 124) = a2;
  H16ISP::H16ISPFrameReceiver::tickleNoDataTimer(this);
  return 0;
}

uint64_t AddRawPoolToFrameReceiver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 4096);
  v36 = 0;
  *v35 = 0;
  v34 = 0;
  *v33 = 0;
  v6 = *(a1 + 4816);
  if (v6 || (v10 = *(a1 + 4824), (v11 = *(a1 + 4936)) != 0) && (v6 = *v11) != 0)
  {
    v7 = H16ISP::H16ISPFrameReceiver::addSharedBufferPoolToFrameReceiver(*(a1 + 160), v6);
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
        AddRawPoolToFrameReceiver();
      }
    }
  }

  else
  {
    if (!v10)
    {
      v10 = *(a1 + 4840);
    }

    RawBufferConfig = H16ISP::H16ISPDevice::GetRawBufferConfig(*(a2 + 24), *(a1 + 156), &v36, &v35[1], v35, &v34, &v33[1], v33);
    if (RawBufferConfig)
    {
      v7 = RawBufferConfig;
      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v13 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        AddRawPoolToFrameReceiver();
      }
    }

    else
    {
      if ((*(a1 + 776) & 1) != 0 || (*(a1 + 976) & 1) != 0 || (*(a1 + 1176) & 1) != 0 || (*(a1 + 1376) & 1) != 0 || (*(a1 + 1576) & 1) != 0 || (*(a1 + 2104) & 1) != 0 || (*(a1 + 2504) & 1) != 0 || (*(a1 + 4080) & 1) != 0 || doesDisabledTofRequireBuffers(a2, a1) || (*(a1 + 1704) & 1) != 0 || *(a1 + 1904) == 1 && ((v5[352] & 1) != 0 || *(a1 + 1976) == 1))
      {
        if (*(a1 + 776) == 1)
        {
          v14 = *(a1 + 768);
        }

        else
        {
          v14 = 0;
        }

        if (*(a1 + 976) == 1 && *(a1 + 968) > v14)
        {
          v14 = *(a1 + 968);
        }

        if (*(a1 + 1176) == 1 && *(a1 + 1168) > v14)
        {
          v14 = *(a1 + 1168);
        }

        if (*(a1 + 1376) == 1 && *(a1 + 1368) > v14)
        {
          v14 = *(a1 + 1368);
        }

        if (*(a1 + 1576) == 1 && *(a1 + 1568) > v14)
        {
          v14 = *(a1 + 1568);
        }

        if (*(a1 + 2104) == 1 && *(a1 + 2168) > v14)
        {
          v14 = *(a1 + 2168);
        }

        if (*(a1 + 2504) == 1 && *(a1 + 2568) > v14)
        {
          v14 = *(a1 + 2568);
        }

        if (*(a1 + 1704) == 1 && *(a1 + 1768) > v14)
        {
          v14 = *(a1 + 1768);
        }

        if (((*(a1 + 4080) & 1) != 0 || doesDisabledTofRequireBuffers(a2, a1)) && *(a1 + 4108) > v14)
        {
          v14 = *(a1 + 4108);
        }

        if (*(a1 + 1904) == 1 && ((v5[352] & 1) != 0 || *(a1 + 1976) == 1) && *(a1 + 1968) > v14)
        {
          v14 = *(a1 + 1968);
        }
      }

      else
      {
        v14 = 0;
      }

      if (*(a1 + 8) && H16ISP::H16ISPDevice::isSensorType(*(a2 + 24), *(a1 + 156), 1785950322))
      {
        v14 += 4;
      }

      if (v5[498] == 1 && H16ISP::H16ISPDevice::isSensorType(*(a2 + 24), *(a1 + 156), 1718186595))
      {
        v14 += 4;
      }

      v15 = *(a1 + 156);
      if (gCaptureDeviceCFPrefs[44 * v15 + 208])
      {
        v16 = gCaptureDeviceCFPrefs[44 * v15 + 208];
      }

      else
      {
        v16 = v14;
      }

      if (gCaptureDeviceCFPrefs[0])
      {
        v17 = 60;
      }

      else
      {
        v17 = 48;
        if (v5[510])
        {
          v17 = 60;
        }
      }

      v18 = *(a1 + 2104);
      v19 = v36;
      v20 = *(a3 + v17);
      H16ISP::H16ISPDevice::GetPoolInfoExtended(*(a2 + 24), v15, 3, &v31);
      if (*(a1 + 568) == 1 && (v32 - 2) >= 2 && v32 != 5)
      {
        v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v21 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          AddRawPoolToFrameReceiver();
        }
      }

      v22 = v16 + v18;
      if (v10 && *(a3 + 144))
      {
        v36 += v34;
      }

      v23 = *(a1 + 160);
      *buf = 0u;
      v38 = 0u;
      v7 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v23, 1, v20);
      v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v24 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v24;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 67109632;
        *&buf[4] = v22 + v19;
        *&buf[8] = 1024;
        *&buf[10] = v36;
        *&buf[14] = 1024;
        LODWORD(v38) = v7;
        _os_log_impl(&dword_2247DB000, v24, OS_LOG_TYPE_INFO, "AddRawPoolToFrameReceiver - RAW pool size=%d,prime=%d (res=0x%08X)\n\n", buf, 0x14u);
      }

      if (v7)
      {
        goto LABEL_87;
      }

      if (!v10 && *(a3 + 144) && v34)
      {
        v27 = v22 + v34;
        v28 = *(a1 + 160);
        v29 = *(a3 + 160);
        *buf = 0u;
        v38 = 0u;
        v7 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v28, 29, v29);
        v30 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v30 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v30;
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 67109632;
          *&buf[4] = v27;
          *&buf[8] = 1024;
          *&buf[10] = v34;
          *&buf[14] = 1024;
          LODWORD(v38) = v7;
          _os_log_impl(&dword_2247DB000, v30, OS_LOG_TYPE_INFO, "AddRawPoolToFrameReceiver - SIFR-RAW pool size=%d,prime=%d (res=0x%08X)\n\n", buf, 0x14u);
        }

        if (v7)
        {
LABEL_87:
          v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v25 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            AddRawPoolToFrameReceiver();
          }
        }
      }
    }
  }

  return v7;
}

void *std::deque<H16ISP::H16ISPFrameReceiverSharedPoolStruct *>::__add_back_capacity(void *a1)
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

void sub_22482BB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t H16ISP::H16ISPDevice::SetMinimumFrameRate(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v14 = *MEMORY[0x277D85DE8];
  if (v8)
  {

    return H16ISP::H16ISPDevice::ISP_SetExclaveMinimumFrameRate(v2, v3, v4);
  }

  else
  {
    bzero(v10, 0x10uLL);
    v11 = 522;
    v12 = v6;
    v13 = v5;
    return H16ISP::H16ISPDevice::ISP_SendCommand(v7, v10, 0x10u, 0, 0xFFFFFFFF);
  }
}

void *std::deque<H16ISP::H16ISPFrameReceiverSharedPoolStruct *>::push_back(void *result, void *a2)
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
    result = std::deque<H16ISP::H16ISPFrameReceiverSharedPoolStruct *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

uint64_t ExclaveSetMinimumFrameRateNow(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (!v3 || *(*(v3 + 4304) + 681) != 1 || !H16ISP::H16ISPDevice::isSensorType(v3, *(a2 + 156), 1718775412) && !H16ISP::H16ISPDevice::isSensorType(*(a1 + 24), *(a2 + 156), 1718776695))
  {
    return 0;
  }

  if (*(a2 + 58176) != 1)
  {
    return 0;
  }

  v5 = ExclaveSetMinimumAutoExposureFrameRate(a1, a2);
  if (v5)
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ExclaveSetMinimumFrameRateNow();
    }
  }

  return v5;
}

void SetMaximumFrameRateNow(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 160))
  {
    v4 = *(a2 + 24);
    H16ISP::H16ISPDevice::SetMaximumFrameRate(v4, *(a1 + 156));
    v5 = *(a1 + 4720);
    if (v5)
    {
      v9 = 0;
      H16ISP::H16ISPFilterGraphManager::GetNode(v5, 9, &v9);
      if (v9)
      {
        H16ISP::H16ISPGraphVIOCameraControlNode::AdjustStreamFrameRate(v9, *(a1 + 52), v6);
      }

      if (H16ISP::H16ISPDevice::isSensorType(v4, *(a1 + 156), 1785950322))
      {
        v8 = 0;
        H16ISP::H16ISPFilterGraphManager::GetNode(*(a1 + 4720), 11, &v8);
        if (v8)
        {
          H16ISP::H16ISPJasperDepthNode::setJasperFrameRateMax(v8, *(a1 + 52));
        }
      }
    }

    if (ExclaveSetMaximumFrameRateNow(a2, a1))
    {
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        SetMaximumFrameRateNow();
      }
    }
  }
}

uint64_t H16ISP::MyCVPixelBufferPoolScanIOSurfacesCallback(H16ISP *this, H16ISP::H16ISPDevice **a2, H16ISP::H16ISPFrameReceiverBufferPool *a3)
{
  if (a2 && *(a2 + 145) == 1)
  {
    ID = IOSurfaceGetID(this);
    H16ISP::H16ISPFrameReceiverBufferPool::PreMapClientSurface(a2, ID);
  }

  return 0;
}

uint64_t H16ISP::H16ISPDevice::SetMaximumFrameRate(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v14 = *MEMORY[0x277D85DE8];
  if (v8)
  {

    return H16ISP::H16ISPDevice::ISP_SetExclaveMaximumFrameRate(v2, v3, v4);
  }

  else
  {
    bzero(v10, 0x10uLL);
    v11 = 520;
    v12 = v6;
    v13 = v5;
    return H16ISP::H16ISPDevice::ISP_SendCommand(v7, v10, 0x10u, 0, 0xFFFFFFFF);
  }
}

uint64_t ExclaveSetMaximumFrameRateNow(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (!v3 || *(*(v3 + 4304) + 681) != 1 || !H16ISP::H16ISPDevice::isSensorType(v3, *(a2 + 156), 1718775412) && !H16ISP::H16ISPDevice::isSensorType(*(a1 + 24), *(a2 + 156), 1718776695))
  {
    return 0;
  }

  if (*(a2 + 58176) != 1)
  {
    return 0;
  }

  v5 = ExclaveSetMaximumAutoExposureFrameRate(a1, a2);
  if (v5)
  {
    v6 = v5;
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ExclaveSetMaximumFrameRateNow();
    }
  }

  else
  {
    v6 = ExclaveSetTargetFrameRate(a1, a2);
    if (v6)
    {
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ExclaveSetMaximumFrameRateNow();
      }
    }
  }

  return v6;
}

void H16ISPPostNotification(const __CFString *a1, const void *a2, const void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  CFRetain(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v6 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
    _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_INFO, "Sending notification: %s\n", buf, 0xCu);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZL22H16ISPPostNotificationPK10__CFStringPKvS3__block_invoke;
  block[3] = &__block_descriptor_tmp_1824;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_async(global_queue, block);
}

uint64_t H16ISP::H16ISPFrameReceiver::FrameDone(H16ISP::H16ISPFrameReceiver *this, void *a2, int a3, unint64_t *a4)
{
  v4 = MEMORY[0x28223BE20](this, a2);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v214 = *MEMORY[0x277D85DE8];
  v202 = 0;
  kdebug_trace();
  pthread_mutex_lock((v9 + 160));
  v201 = 0;
  v199 = 0u;
  v200 = 0u;
  v198 = 0u;
  v196 = 0;
  v197 = 0;
  v194 = 0;
  v195 = 0;
  v192 = 0;
  v193 = 0;
  v190 = 0;
  v191 = 0;
  v188 = 0;
  v189 = 0;
  v186 = 0;
  v187 = 0;
  v185 = 0;
  v179 = (v6 - 2);
  if (v6 != 2)
  {
    v10 = 0;
    v174 = 0;
    v172 = 0;
    v11 = 0;
    v168 = 0;
    v169 = 0;
    v170 = 0;
    cf = 0;
    v175 = 0;
    v176 = (v9 + 896);
    v167 = 0;
    v177 = (v9 + 456);
    v178 = 0;
    while (2)
    {
      pixelBuffer = 0;
      v12 = *(v9 + 824);
      v13 = *(v9 + 848);
      v14 = (v12 + 8 * (v13 >> 9));
      v15 = *(v9 + 832);
      if (v15 == v12)
      {
        v16 = 0;
      }

      else
      {
        v16 = (*v14 + 8 * (*(v9 + 848) & 0x1FFLL));
      }

      v17 = (v10 + 2);
      v180 = v11;
LABEL_7:
      v18 = v16;
      while (1)
      {
        if (v15 == v12)
        {
          v19 = 0;
        }

        else
        {
          v19 = *(v12 + (((*(v9 + 856) + v13) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v9 + 856) + v13) & 0x1FF);
        }

        if (v18 == v19)
        {
          v22 = *(v9 + 776);
          v23 = (v22 + 8 * (*(v9 + 800) >> 9));
          v24 = *(v9 + 784);
          if (v24 == v22)
          {
            v25 = 0;
          }

          else
          {
            v25 = (*v23 + 8 * (*(v9 + 800) & 0x1FFLL));
          }

          while (1)
          {
            if (v24 == v22)
            {
              v27 = 0;
            }

            else
            {
              v26 = *(v9 + 808) + *(v9 + 800);
              v27 = *(v22 + ((v26 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v26 & 0x1FF);
            }

            if (v25 == v27)
            {
              break;
            }

            if (H16ISP::H16ISPFrameReceiverSharedBufferPool::FindBuffer(**v25, *(v8 + 8 * v17)))
            {
              operator new();
            }

            if ((++v25 - *v23) == 4096)
            {
              v28 = v23[1];
              ++v23;
              v25 = v28;
            }

            v22 = *(v9 + 776);
            v24 = *(v9 + 784);
          }

          v29 = *(v9 + 864);
          v11 = v180;
          if (v29 && H16ISP::H16ISPFrameReceiverDataBufferPool::FindBuffer(v29, *(v8 + 8 * v17)))
          {
            operator new();
          }

          v34 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
          {
            v34 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v34;
          }

          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = *(v8 + 8 * v17);
            *buf = 67109120;
            *&buf[4] = v35;
            _os_log_unreliable_impl();
          }

          goto LABEL_80;
        }

        v20 = *v18;
        if (*(v8 + 8 * v17) == *(*v18 + 8))
        {
          break;
        }

        v18 += 8;
        v16 += 8;
        if ((*v14 + 4096) == v16)
        {
          v21 = *(v14 + 1);
          v14 += 8;
          v16 = v21;
          goto LABEL_7;
        }
      }

      v30 = *(v20 + 2);
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = v31 == 10;
      }

      else
      {
        v32 = 1;
      }

      if (v32)
      {
        if (H16ISP::gFrameReceiverCFPrefs != 1)
        {
          goto LABEL_42;
        }
      }

      else if (v31 != 6 || H16ISP::gFrameReceiverCFPrefs != 1)
      {
LABEL_42:
        --*(v30 + 120);
        if (*(v9 + 434) & 1) != 0 || (*(v30 + 144))
        {
          CVPixelBufferRelease(*v20);
          std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::erase((v9 + 816), v14, v16);
          goto LABEL_78;
        }

        switch(v31)
        {
          case 0:
            v201 = *v20;
            break;
          case 1:
          case 41:
            std::deque<__CVBuffer *>::push_back(&v198, v20);
            break;
          case 2:
            v180 = *v20;
            break;
          case 3:
            cf = *v20;
            v168 = *(v30 + 20);
            break;
          case 6:
            v195 = *v20;
            break;
          case 7:
            v196 = *v20;
            break;
          case 8:
            v169 = *v20;
            break;
          case 9:
            v193 = *v20;
            break;
          case 10:
            v194 = *v20;
            break;
          case 12:
            v191 = *v20;
            break;
          case 13:
            v190 = *v20;
            break;
          case 15:
            v189 = *v20;
            break;
          case 17:
            v192 = *v20;
            break;
          case 21:
            v188 = *v20;
            break;
          case 25:
            v167 = *v20;
            break;
          case 29:
            v197 = *v20;
            break;
          case 31:
            v187 = *v20;
            break;
          case 34:
          case 35:
          case 36:
          case 37:
            ++v175;
            break;
          case 38:
            v185 = *v20;
            break;
          case 39:
            v186 = *v20;
            break;
          case 45:
            ++HIDWORD(v170);
            break;
          case 46:
            LODWORD(v170) = v170 + 1;
            break;
          default:
            break;
        }

        v36 = *(v20 + 2);
        if (*(v36 + 116))
        {
          v38 = &v213[v178];
          *v38 = *v20;
          v38[1] = *(v36 + 16);
          std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::erase((v9 + 816), v14, v16);
        }

        else
        {
          if (*(v36 + 16) != 31 || !H16ISP::H16ISPFrameReceiverBufferPool::TryStillImageBufferRemove(v36, *v20))
          {
            if (!*v176 || (v39 = *(v20 + 2), *(v39 + 16)))
            {
              H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(*(v20 + 2), &pixelBuffer, 0);
              if (*(v9 + 933) == 1)
              {
                v52 = *(*(v20 + 2) + 16);
                if (v52 == 2)
                {
                  operator new();
                }

                if (!v52)
                {
                  v53 = *(v9 + 936);
                  if (pixelBuffer ? H16ISP::MOVReader::getNextFrame(v53, pixelBuffer) : H16ISP::MOVReader::getNextFrame(v53, *v20))
                  {
                    *(v9 + 933) = 0;
                    H16ISP::MOVReader::~MOVReader(*(v9 + 936));
                    H16ISP::H16ISPDevice::ISP_EnableMOVReplay(*(v9 + 400), *(v9 + 436), 0);
                  }
                }
              }

              if (pixelBuffer)
              {
                v55 = *(v20 + 2);
                v56 = *(v55 + 4);
                if (v56)
                {
                  goto LABEL_113;
                }

                v56 = *(v9 + 920);
                if (!v56)
                {
                  goto LABEL_117;
                }

                *buf = 0;
                H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(v55, buf, 0);
                if (*buf)
                {
                  v57 = &v213[v178];
                  *v57 = *buf;
                  v57[1] = -4294967291;
                  v178 = (v178 + 1);
                  --*(v9 + 920);
                }

                v55 = *(v20 + 2);
                v56 = *(v55 + 4);
LABEL_113:
                if (v56 == 3)
                {
                  v58 = v9 + 456;
                  if (*v177)
                  {
                    CVPixelBufferRelease(*v177);
                    v58 = v9 + 456;
                    *v177 = 0;
                  }

                  v59 = *v20;
                  *(v58 + 16) = *(v20 + 2);
                  *v58 = v59;
                }

                else
                {
LABEL_117:
                  v60 = &v213[v178];
                  *v60 = *v20;
                  *(v60 + 2) = v56;
                  *(v60 + 3) = *(v55 + 5);
                  v178 = (v178 + 1);
                }

                v61 = pixelBuffer;
                *v20 = pixelBuffer;
                IOSurface = CVPixelBufferGetIOSurface(v61);
                ID = IOSurfaceGetID(IOSurface);
                *(v20 + 2) = ID;
                v64 = &v212[7 * v174];
                *v64 = H16ISP::H16ISPFrameReceiver::FrameDone;
                v64[1] = v9;
                *(v64 + 4) = ID;
                v65 = *(v20 + 2);
                *(v64 + 20) = *(v65 + 24);
                *(v64 + 7) = *(v65 + 40);
                *(v64 + 8) = *(v65 + 20);
                ++v174;
              }

              else
              {
                v66 = *(v20 + 2);
                v67 = (*(v66 + 20) - 2 * *(v9 + 436)) % 0x32u;
                v68 = "UNKNOWN_TYPE";
                if (v67 <= 0x2B)
                {
                  v68 = h16ispFirmwarePoolTypes[v67];
                }

                v69 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                v173 = v68;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
                {
                  v69 = os_log_create("com.apple.isp", "general");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v69;
                  v66 = *(v20 + 2);
                }

                if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                {
                  v70 = *(v66 + 184);
                  if (!v70)
                  {
                    v70 = *(v66 + 160);
                  }

                  v71 = *(v9 + 436);
                  v72 = *(v66 + 20);
                  *buf = 67109890;
                  *&buf[4] = v71;
                  *&buf[8] = 2080;
                  *&buf[10] = v173;
                  *&buf[18] = 1024;
                  *&buf[20] = v72;
                  *&buf[24] = 2048;
                  *&buf[26] = v70;
                  _os_log_unreliable_impl();
                }

                kdebug_trace();
                v73 = &v212[7 * v174];
                *v73 = H16ISP::H16ISPFrameReceiver::FrameDone;
                v73[1] = v9;
                *(v73 + 4) = *(v20 + 2);
                v74 = *(v20 + 2);
                *(v73 + 20) = *(v74 + 24);
                *(v73 + 7) = *(v74 + 40);
                *(v73 + 8) = *(v74 + 20);
                ++v174;
                v75 = *(*(v20 + 2) + 16);
                v172 = 1;
                if (v75 <= 0x1D)
                {
                  if (((1 << v75) & 0x20000441) != 0)
                  {
                    v172 = 1;
                  }

                  else if (v75 == 1)
                  {
                    --*(&v200 + 1);
                    std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::__maybe_remove_back_spare[abi:ne200100](&v198, 1);
                    v172 = 1;
                  }
                }
              }

LABEL_79:
              v11 = v180;
              goto LABEL_80;
            }

            v40 = &v213[v178];
            *v40 = *v20;
            *(v40 + 2) = 0;
            *(v40 + 3) = *(v39 + 20);
            std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::erase((v9 + 816), v14, v16);
            v178 = (v178 + 1);
            MEMORY[0x22AA55B60](v20, 0x1020C4093CA8EA1);
            v41 = *(v9 + 924) - 1;
            *(v9 + 924) = v41;
            if (v41)
            {
              goto LABEL_79;
            }

            LODWORD(v183[0]) = *(v9 + 436);
            *&v182[4] = 2049;
            *(v183 + 4) = *(v9 + 904);
            v11 = v180;
            v42 = H16ISP::H16ISPDevice::ISP_SendCommand(*(v9 + 400), v182, 0x1Cu, 0, 0xFFFFFFFF);
            if (v42)
            {
              v43 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
              {
                v43 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v43;
              }

              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                *&buf[4] = v42;
                _os_log_unreliable_impl();
              }
            }

            v44 = *(v9 + 436);
            WORD2(time.value) = 2817;
            v45 = *(v9 + 896);
            v46 = *(v45 + 36) + *(v45 + 24);
            time.timescale = v44;
            time.flags = v46;
            v211 = v46;
            v47 = *(v45 + 28);
            LODWORD(time.epoch) = v47.i32[0];
            v210 = vrev64_s32(v47);
            v48 = *(v45 + 40);
            v49 = *(v45 + 88) ^ 1;
            v207 = v48;
            HIDWORD(time.epoch) = v49;
            if (v48 <= 21)
            {
              if ((v48 - 15) < 2)
              {
                v46 *= 2;
              }

              else
              {
                if (v48 == 1)
                {
                  LODWORD(v208) = (2 * v46 + 63) & 0xFFFFFFC0;
                  goto LABEL_147;
                }

                if (v48 == 18)
                {
                  v46 = (2 * ((2863311531u * (v46 + 2)) >> 32)) & 0xFFFFFFFC;
                }
              }
            }

            else
            {
              if (v48 <= 0x24)
              {
                if (((1 << v48) & 0x3F000000) != 0)
                {
                  v208 = __PAIR64__(*(v45 + 372), *(v45 + 340));
                  goto LABEL_147;
                }

                if (((1 << v48) & 0x780000000) != 0 || ((1 << v48) & 0x1800000000) != 0)
                {
                  v50 = *(v45 + 340);
                  v51 = *(v45 + 372);
                  HIDWORD(v208) = v50;
                  v209 = v51;
LABEL_147:
                  v77 = H16ISP::H16ISPDevice::ISP_SendCommand(*(v9 + 400), &time, 0x38u, 0, 0xFFFFFFFF);
                  if (v77)
                  {
                    v78 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
                    {
                      v78 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v78;
                    }

                    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 67109120;
                      *&buf[4] = v77;
                      _os_log_unreliable_impl();
                    }
                  }

                  v181 = 0;
                  v79 = *v176;
                  if (*(*v176 + 28))
                  {
                    v80 = 0;
                    do
                    {
                      if (!H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(v79, &v181, 0))
                      {
                        operator new();
                      }

                      v79 = *v176;
                      ++v80;
                    }

                    while (v80 < *(v79 + 28));
                  }

                  else if (!v77)
                  {
                    v82 = H16ISP::H16ISPDevice::ISP_SendBuffers(*(v9 + 400), buf, 0, *(v9 + 376));
                    if (v82)
                    {
                      v83 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
                      {
                        v83 = os_log_create("com.apple.isp", "general");
                        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v83;
                      }

                      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                      {
                        v203 = 67109120;
                        v204 = v82;
                        _os_log_unreliable_impl();
                      }
                    }

                    else
                    {
                      *(*(v9 + 896) + 120) = 0;
                      *(v9 + 924) = *(v9 + 924);
                    }
                  }

                  v84 = *(v9 + 728);
                  v85 = *(v9 + 752);
                  v86 = v84 + 8 * (v85 >> 9);
                  v87 = *(v9 + 736);
                  if (v87 == v84)
                  {
                    v88 = 0;
                  }

                  else
                  {
                    v88 = (*v86 + 8 * (*(v9 + 752) & 0x1FFLL));
                  }

LABEL_169:
                  v89 = v88;
                  while (1)
                  {
                    v90 = v87 == v84 ? 0 : *(v84 + (((*(v9 + 760) + v85) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v9 + 760) + v85) & 0x1FF);
                    if (v89 == v90)
                    {
                      break;
                    }

                    v91 = *v89;
                    if (!*(*v89 + 16))
                    {
                      std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::erase((v9 + 720), v86, v88);
                      H16ISP::H16ISPFrameReceiverBufferPool::~H16ISPFrameReceiverBufferPool(v91);
                      MEMORY[0x22AA55B60]();
                      std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::push_back((v9 + 720), v176);
                      *v176 = 0;
                      break;
                    }

                    v89 += 8;
                    v88 += 8;
                    if ((*v86 + 4096) == v88)
                    {
                      v92 = *(v86 + 8);
                      v86 += 8;
                      v88 = v92;
                      goto LABEL_169;
                    }
                  }

LABEL_80:
                  if (++v10 != v179)
                  {
                    continue;
                  }

                  if (cf && v175 && cf == *v177)
                  {
                    CFRetain(cf);
                    v96 = &v213[v178];
                    *v96 = cf;
                    *(v96 + 2) = 3;
                    *(v96 + 3) = v168;
                    v94 = (v178 + 1);
                  }

                  else
                  {
                    v94 = v178;
                  }

                  if ((v172 & 1) != 0 && *(v9 + 48))
                  {
                    if (v11)
                    {
LABEL_190:
                      if (!H16ISP::H16ISPDevice::ISP_GetCameraTime(*(v9 + 400), buf))
                      {
                        operator new();
                      }

                      v95 = 0;
                    }

                    else
                    {
                      v97 = 0;
                      v98 = *(v9 + 824);
                      v99 = *(v9 + 848);
                      v100 = *(v9 + 832);
                      do
                      {
                        if (v100 == v98)
                        {
                          v101 = 0;
                        }

                        else
                        {
                          v101 = *(v98 + 8 * (*(v9 + 848) >> 9)) + 8 * (*(v9 + 848) & 0x1FFLL);
                        }

                        v102 = (v98 + 8 * (v99 >> 9));
LABEL_198:
                        v103 = v101 - 4096;
                        while (1)
                        {
                          v104 = v100 == v98 ? 0 : *(v98 + (((*(v9 + 856) + v99) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v9 + 856) + v99) & 0x1FF);
                          if (v101 == v104)
                          {
                            break;
                          }

                          v105 = *v101;
                          if (*(v8 + 8 * (v97 + 2)) == *(*v101 + 8) && *(*(v105 + 16) + 16) == 2)
                          {
                            v11 = *v105;
                            if (*v105)
                            {
                              goto LABEL_190;
                            }

                            break;
                          }

                          v101 += 8;
                          v103 += 8;
                          if (*v102 == v103)
                          {
                            v106 = v102[1];
                            ++v102;
                            v101 = v106;
                            goto LABEL_198;
                          }
                        }

                        ++v97;
                      }

                      while (v97 != v179);
                      v95 = mach_absolute_time();
                      v11 = 0;
                    }

                    (*(v9 + 48))(1, HIDWORD(v95), v95, 0, 0, *(v9 + 56));
                  }

                  if (v174)
                  {
                    v107 = H16ISP::H16ISPDevice::ISP_SendBuffers(*(v9 + 400), v212, v174, *(v9 + 376));
                    if (v107)
                    {
                      v108 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
                      {
                        v108 = os_log_create("com.apple.isp", "general");
                        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v108;
                      }

                      if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 67109120;
                        *&buf[4] = v107;
                        _os_log_unreliable_impl();
                      }
                    }

                    else
                    {
                      v109 = 0;
                      v110 = *(v9 + 728);
                      v111 = *(v9 + 752);
                      v112 = *(v9 + 736);
                      do
                      {
                        if (v112 == v110)
                        {
                          v113 = 0;
                        }

                        else
                        {
                          v113 = *(v110 + 8 * (v111 >> 9)) + 8 * (v111 & 0x1FF);
                        }

                        v114 = (v110 + 8 * (v111 >> 9));
LABEL_223:
                        v115 = v113 - 4096;
                        while (1)
                        {
                          v116 = v112 == v110 ? 0 : *(v110 + (((*(v9 + 760) + v111) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v9 + 760) + v111) & 0x1FF);
                          if (v113 == v116)
                          {
                            break;
                          }

                          if (*(*v113 + 20) == LODWORD(v212[7 * v109 + 4]))
                          {
                            ++*(*v113 + 120);
                            break;
                          }

                          v113 += 8;
                          v115 += 8;
                          if (*v114 == v115)
                          {
                            v117 = v114[1];
                            ++v114;
                            v113 = v117;
                            goto LABEL_223;
                          }
                        }

                        ++v109;
                      }

                      while (v109 != v174);
                    }
                  }

                  if (v94)
                  {
                    memset(buf, 0, 48);
                    LOBYTE(pixelBuffer) = 0;
                    if (v11)
                    {
                      H16ISP::H16ISPFrameReceiver::ProcessFrameMetadata(v9);
                      if (v201)
                      {
                        std::deque<__CVBuffer *>::push_back(buf, &v201);
                      }

                      if (v194)
                      {
                        std::deque<__CVBuffer *>::push_back(buf, &v194);
                      }

                      if (v195)
                      {
                        std::deque<__CVBuffer *>::push_back(buf, &v195);
                      }

                      if (*(&v200 + 1))
                      {
                        v118 = *(&v198 + 1);
                        v119 = v199;
                        v120 = (*(&v198 + 1) + 8 * (v200 >> 9));
                        if (v199 == *(&v198 + 1))
                        {
                          v121 = 0;
                        }

                        else
                        {
                          v121 = (*v120 + 8 * (v200 & 0x1FF));
                        }

                        while (1)
                        {
                          v126 = v119 == v118 ? 0 : *(v118 + (((*(&v200 + 1) + v200) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v200 + 1) + v200) & 0x1FF);
                          if (v121 == v126 || !*v121)
                          {
                            break;
                          }

                          std::deque<__CVBuffer *>::push_back(buf, v121++);
                          if ((v121 - *v120) == 4096)
                          {
                            v127 = v120[1];
                            ++v120;
                            v121 = v127;
                          }

                          v118 = *(&v198 + 1);
                          v119 = v199;
                        }
                      }

                      if (v197)
                      {
                        std::deque<__CVBuffer *>::push_back(buf, &v197);
                      }

                      if (v192)
                      {
                        std::deque<__CVBuffer *>::push_back(buf, &v192);
                      }

                      if (v191)
                      {
                        std::deque<__CVBuffer *>::push_back(buf, &v191);
                      }

                      if (v190)
                      {
                        std::deque<__CVBuffer *>::push_back(buf, &v190);
                      }

                      if (v189)
                      {
                        std::deque<__CVBuffer *>::push_back(buf, &v189);
                      }

                      if (v188)
                      {
                        std::deque<__CVBuffer *>::push_back(buf, &v188);
                      }

                      if (v187)
                      {
                        std::deque<__CVBuffer *>::push_back(buf, &v187);
                      }

                      if (v186)
                      {
                        std::deque<__CVBuffer *>::push_back(buf, &v186);
                      }
                    }

                    else
                    {
                      v11 = v169;
                      if (v169)
                      {
                        H16ISP::H16ISPFrameReceiver::ProcessFrameMetadata(v9);
                        if (v196)
                        {
                          std::deque<__CVBuffer *>::push_back(buf, &v196);
                        }

                        if (v193)
                        {
                          std::deque<__CVBuffer *>::push_back(buf, &v193);
                        }

                        if (*(&v200 + 1))
                        {
                          v122 = *(&v198 + 1);
                          v123 = v199;
                          v124 = (*(&v198 + 1) + 8 * (v200 >> 9));
                          if (v199 == *(&v198 + 1))
                          {
                            v125 = 0;
                          }

                          else
                          {
                            v125 = (*v124 + 8 * (v200 & 0x1FF));
                          }

                          while (1)
                          {
                            v128 = v123 == v122 ? 0 : *(v122 + (((*(&v200 + 1) + v200) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(&v200 + 1) + v200) & 0x1FF);
                            if (v125 == v128 || !*v125)
                            {
                              break;
                            }

                            std::deque<__CVBuffer *>::push_back(buf, v125++);
                            if ((v125 - *v124) == 4096)
                            {
                              v129 = v124[1];
                              ++v124;
                              v125 = v129;
                            }

                            v122 = *(&v198 + 1);
                            v123 = v199;
                          }
                        }

                        if (v197)
                        {
                          std::deque<__CVBuffer *>::push_back(buf, &v197);
                        }

                        if (v187)
                        {
                          std::deque<__CVBuffer *>::push_back(buf, &v187);
                        }
                      }

                      else
                      {
                        v11 = v167;
                        if (v167)
                        {
                          H16ISP::H16ISPFrameReceiver::ProcessFrameMetadata(v9);
                          if (v192)
                          {
                            std::deque<__CVBuffer *>::push_back(buf, &v192);
                          }

                          if (v191)
                          {
                            std::deque<__CVBuffer *>::push_back(buf, &v191);
                          }

                          if (v190)
                          {
                            std::deque<__CVBuffer *>::push_back(buf, &v190);
                          }

                          if (v189)
                          {
                            std::deque<__CVBuffer *>::push_back(buf, &v189);
                          }

                          if (v188)
                          {
                            std::deque<__CVBuffer *>::push_back(buf, &v188);
                          }
                        }

                        else
                        {
                          if (v185)
                          {
                            std::deque<__CVBuffer *>::push_back(buf, &v185);
                          }

                          v11 = 0;
                        }
                      }
                    }

                    v130 = FigHostTimeToNanoseconds();
                    CMTimeMake(&time, v130, 1000000000);
                    v131 = CMTimeCopyAsDictionary(&time, *MEMORY[0x277CBECE8]);
                    v132 = *&buf[8];
                    v133 = *&buf[16];
                    v134 = (*&buf[8] + 8 * (*&buf[32] >> 9));
                    if (*&buf[16] == *&buf[8])
                    {
                      v135 = 0;
                    }

                    else
                    {
                      v135 = (*v134 + 8 * (*&buf[32] & 0x1FF));
                    }

                    v136 = *MEMORY[0x277CF3F80];
                    while (1)
                    {
                      v137 = v133 == v132 ? 0 : *(v132 + (((*&buf[40] + *&buf[32]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*&buf[40] + *&buf[32]) & 0x1FFLL);
                      if (v135 == v137 || !*v135)
                      {
                        break;
                      }

                      CVBufferSetAttachment(*v135, @"RawMetaData", v11, kCVAttachmentMode_ShouldPropagate);
                      if (*v177)
                      {
                        CVBufferSetAttachment(*v135, @"RawFaceDetectData", *v177, kCVAttachmentMode_ShouldPropagate);
                      }

                      if (v131)
                      {
                        CVBufferSetAttachment(*v135, v136, v131, kCVAttachmentMode_ShouldPropagate);
                      }

                      if ((++v135 - *v134) == 4096)
                      {
                        v138 = v134[1];
                        ++v134;
                        v135 = v138;
                      }

                      v132 = *&buf[8];
                      v133 = *&buf[16];
                    }

                    if (v131)
                    {
                      CFRelease(v131);
                    }

                    if (*(v9 + 948) == 1)
                    {
                      H16ISP::H16ISPDevice::ISP_GetCameraTime(*(v9 + 400), &time);
                      v140 = *(*(v9 + 400) + 104);
                      if (v140)
                      {
                        H16ISP::H16ISPMotionManager::GetOscarTimeSyncInfo(v140, v182);
                      }

                      else
                      {
                        *v182 = 0;
                        v183[0] = 0;
                      }

                      if (*&buf[40])
                      {
                        v139.n128_u64[0] = *(v9 + 480);
                        H16ISP::GenerateAndAttachCoreMediaMetaDataDictionary(*(*(v9 + 400) + 88), *(*(*&buf[8] + ((*&buf[32] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*&buf[32] & 0x1FF)), buf, v9 + 952, v139);
                      }
                    }

                    if (*(v9 + 884) && v201)
                    {
                      PixelFormatType = CVPixelBufferGetPixelFormatType(v201);
                      v142 = PixelFormatType;
                      v144 = PixelFormatType == 2037741158 || PixelFormatType == 875704422;
                      CVPixelBufferLockBaseAddress(v201, 0);
                      if (v142 == 2037741171 || v142 == 2037741158)
                      {
                        BaseAddress = CVPixelBufferGetBaseAddress(v201);
                        Width = CVPixelBufferGetWidth(v201);
                        Height = CVPixelBufferGetHeight(v201);
                        BytesPerRow = CVPixelBufferGetBytesPerRow(v201);
                        H16ISP::H16ISPFrameReceiver::InsertTestPattern(BytesPerRow, BaseAddress, Width, Height, BytesPerRow, !v144, v144);
                      }

                      else
                      {
                        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v201, 0);
                        v150 = CVPixelBufferGetBaseAddressOfPlane(v201, 1uLL);
                        v151 = CVPixelBufferGetWidth(v201);
                        v152 = CVPixelBufferGetHeight(v201);
                        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v201, 0);
                        v154 = CVPixelBufferGetBytesPerRowOfPlane(v201, 1uLL);
                        H16ISP::H16ISPFrameReceiver::InsertTestPattern_YCbCr_420_Y_UV(v154, BaseAddressOfPlane, v150, v151, v152, BytesPerRowOfPlane, v154, !v144, v155, v144);
                      }

                      CVPixelBufferUnlockBaseAddress(v201, 0);
                    }

                    if (*v177 && !v196 && (v201 || v194 || v195))
                    {
                      v156 = &v213[v94];
                      *v156 = *v177;
                      v156[1] = *(*(v9 + 472) + 16);
                      v94 = (v94 + 1);
                      *(v9 + 456) = 0;
                    }

                    v157 = pixelBuffer;
                    if (pixelBuffer)
                    {
                      if (*(v9 + 1024) == 1)
                      {
                        (*(v9 + 48))(1, HIDWORD(v202), v202, 0, 0, *(v9 + 56));
                      }

                      ++*(v9 + 1028);
                      v158 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
                      {
                        v158 = os_log_create("com.apple.isp", "general");
                        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v158;
                      }

                      if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
                      {
                        v159 = *(v9 + 436);
                        v160 = *(v9 + 1024);
                        v161 = *(v9 + 440);
                        LODWORD(time.value) = 67109632;
                        HIDWORD(time.value) = v159;
                        LOWORD(time.timescale) = 1024;
                        *(&time.timescale + 2) = v160;
                        HIWORD(time.flags) = 1024;
                        LODWORD(time.epoch) = v161;
                        _os_log_unreliable_impl();
                      }
                    }

                    v162 = (!*&buf[40] && *(v9 + 444) != -1 && !v170 || v157 && *(v9 + 1024) == 1) && v175 == 0;
                    v163 = *(v9 + 32);
                    if (v163 && !v162)
                    {
                      if (*(v9 + 392))
                      {
                        operator new();
                      }

                      v163(*(v9 + 40), v202, *(v9 + 436), v94, v213);
                    }

                    if (v94)
                    {
                      v164 = v94;
                      v165 = v213;
                      do
                      {
                        CVBufferRelease(*v165);
                        *v165 = 0;
                        v165 += 2;
                        --v164;
                      }

                      while (v164);
                    }

                    std::deque<__CVBuffer *>::~deque[abi:ne200100](buf);
                  }

                  goto LABEL_370;
                }
              }

              if (v48 == 22)
              {
                v76 = vand_s8(vadd_s32(vdup_n_s32(32 * v46), 0x1E0000003E0), 0xFFFFFE00FFFFFC00);
                goto LABEL_146;
              }

              if (v48 == 23)
              {
                v76 = vshr_n_u32(vmul_s32(vshl_u32(vadd_s32(vdup_n_s32(v46), 0xF0000001FLL), 0xFFFFFFFCFFFFFFFBLL), 0xA0000002800), 3uLL);
LABEL_146:
                v208 = v76;
                goto LABEL_147;
              }
            }

            LODWORD(v208) = (v46 + 63) & 0xFFFFFFC0;
            HIDWORD(v208) = v208;
            goto LABEL_147;
          }

          v37 = &v213[v178];
          *v37 = *v20;
          v37[1] = *(*(v20 + 2) + 16);
          std::deque<H16ISP::H16ISPFrameReceiverBufferPool *>::erase((v9 + 816), v14, v16);
        }

        v178 = (v178 + 1);
LABEL_78:
        MEMORY[0x22AA55B60](v20, 0x1020C4093CA8EA1);
        goto LABEL_79;
      }

      break;
    }

    v93 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v93 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v93;
    }

    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "FrameDone";
      _os_log_impl(&dword_2247DB000, v93, OS_LOG_TYPE_DEFAULT, "%s - Simulating YUV buffer starvation, returning\n", buf, 0xCu);
    }

    MEMORY[0x22AA55B60](v20, 0x1020C4093CA8EA1);
    return std::deque<__CVBuffer *>::~deque[abi:ne200100](&v198);
  }

LABEL_370:
  H16ISP::H16ISPFrameReceiver::tickleNoDataTimer(v9);
  H16ISP::H16ISPFrameReceiver::tickleTailspinTimer(v9);
  pthread_mutex_unlock((v9 + 160));
  kdebug_trace();
  return std::deque<__CVBuffer *>::~deque[abi:ne200100](&v198);
}

uint64_t H16ISP::H16ISPFrameReceiver::ProcessFrameMetadata(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (!H16ISP::H16ISPDevice::ISP_GetCameraTime(*(a1 + 400), &outputStruct))
  {
    operator new();
  }

  v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPFrameReceiver::ProcessFrameMetadata();
  }

  return 0;
}

H16ISP::H16ISPFrameMetadata *H16ISP::H16ISPFrameMetadata::H16ISPFrameMetadata(H16ISP::H16ISPFrameMetadata *this, __CVBuffer *a2, CVPixelBufferLockFlags a3)
{
  *(this + 68) = 0;
  bzero(this, 0x210uLL);
  *(this + 69) = a2;
  *(this + 70) = a3;
  *(this + 568) = 0;
  if (a2)
  {
    CVPixelBufferLockBaseAddress(a2, a3);
    BaseAddress = CVPixelBufferGetBaseAddress(*(this + 69));
    *(this + 68) = BaseAddress;
    if (BaseAddress)
    {
      v7 = BaseAddress[4];
      if (v7)
      {
        v8 = BaseAddress[5];
        if (v8)
        {
          *this = BaseAddress + v8;
        }

        if (v7 != 1)
        {
          v9 = BaseAddress[6];
          if (v9)
          {
            *(this + 1) = BaseAddress + v9;
          }

          if (v7 >= 3)
          {
            v10 = BaseAddress[7];
            if (v10)
            {
              *(this + 2) = BaseAddress + v10;
            }

            if (v7 != 3)
            {
              v11 = BaseAddress[8];
              if (v11)
              {
                *(this + 3) = BaseAddress + v11;
              }

              if (v7 >= 5)
              {
                v12 = BaseAddress[9];
                if (v12)
                {
                  *(this + 4) = BaseAddress + v12;
                }

                if (v7 != 5)
                {
                  v13 = BaseAddress[10];
                  if (v13)
                  {
                    *(this + 5) = BaseAddress + v13;
                  }

                  if (v7 >= 7)
                  {
                    v14 = BaseAddress[11];
                    if (v14)
                    {
                      *(this + 6) = BaseAddress + v14;
                    }

                    if (v7 != 7)
                    {
                      v15 = BaseAddress[12];
                      if (v15)
                      {
                        *(this + 7) = BaseAddress + v15;
                      }

                      if (v7 >= 9)
                      {
                        v16 = BaseAddress[13];
                        if (v16)
                        {
                          *(this + 8) = BaseAddress + v16;
                        }

                        if (v7 < 0xB)
                        {
                          if (v7 == 9)
                          {
                            return this;
                          }
                        }

                        else
                        {
                          v17 = BaseAddress[15];
                          if (v17)
                          {
                            *(this + 10) = BaseAddress + v17;
                          }
                        }

                        v18 = BaseAddress[14];
                        if (v18)
                        {
                          *(this + 9) = BaseAddress + v18;
                        }

                        if (v7 >= 0xC)
                        {
                          v19 = BaseAddress[16];
                          if (v19)
                          {
                            *(this + 11) = BaseAddress + v19;
                          }

                          if (v7 != 12)
                          {
                            v20 = BaseAddress[17];
                            if (v20)
                            {
                              *(this + 12) = BaseAddress + v20;
                            }

                            if (v7 >= 0xE)
                            {
                              v21 = BaseAddress[18];
                              if (v21)
                              {
                                *(this + 13) = BaseAddress + v21;
                              }

                              if (v7 < 0x54)
                              {
                                if (v7 == 14)
                                {
                                  return this;
                                }
                              }

                              else
                              {
                                v22 = BaseAddress[88];
                                if (v22)
                                {
                                  *(this + 64) = BaseAddress + v22;
                                }
                              }

                              v23 = BaseAddress[19];
                              if (v23)
                              {
                                *(this + 14) = BaseAddress + v23;
                              }

                              if (v7 >= 0x10)
                              {
                                v24 = BaseAddress[20];
                                if (v24)
                                {
                                  *(this + 15) = BaseAddress + v24;
                                }

                                if (v7 != 16)
                                {
                                  v25 = BaseAddress[21];
                                  if (v25)
                                  {
                                    *(this + 16) = BaseAddress + v25;
                                  }

                                  if (v7 >= 0x12)
                                  {
                                    v26 = BaseAddress[22];
                                    if (v26)
                                    {
                                      *(this + 17) = BaseAddress + v26;
                                    }

                                    if (v7 != 18)
                                    {
                                      v27 = BaseAddress[23];
                                      if (v27)
                                      {
                                        *(this + 18) = BaseAddress + v27;
                                      }

                                      if (v7 >= 0x14)
                                      {
                                        v28 = BaseAddress[24];
                                        if (v28)
                                        {
                                          *(this + 19) = BaseAddress + v28;
                                        }

                                        if (v7 != 20)
                                        {
                                          v29 = BaseAddress[25];
                                          if (v29)
                                          {
                                            *(this + 20) = BaseAddress + v29;
                                          }

                                          if (v7 >= 0x16)
                                          {
                                            v30 = BaseAddress[26];
                                            if (v30)
                                            {
                                              *(this + 21) = BaseAddress + v30;
                                            }

                                            if (v7 != 22)
                                            {
                                              v31 = BaseAddress[27];
                                              if (v31)
                                              {
                                                *(this + 22) = BaseAddress + v31;
                                              }

                                              if (v7 >= 0x18)
                                              {
                                                v32 = BaseAddress[28];
                                                if (v32)
                                                {
                                                  *(this + 23) = BaseAddress + v32;
                                                }

                                                if (v7 != 24)
                                                {
                                                  v33 = BaseAddress[29];
                                                  if (v33)
                                                  {
                                                    *(this + 24) = BaseAddress + v33;
                                                  }

                                                  if (v7 >= 0x1A)
                                                  {
                                                    v34 = BaseAddress[30];
                                                    if (v34)
                                                    {
                                                      *(this + 25) = BaseAddress + v34;
                                                    }

                                                    if (v7 != 26)
                                                    {
                                                      v35 = BaseAddress[31];
                                                      if (v35)
                                                      {
                                                        *(this + 26) = BaseAddress + v35;
                                                      }

                                                      if (v7 >= 0x1C)
                                                      {
                                                        v36 = BaseAddress[32];
                                                        if (v36)
                                                        {
                                                          *(this + 27) = BaseAddress + v36;
                                                        }

                                                        if (v7 != 28)
                                                        {
                                                          v37 = BaseAddress[33];
                                                          if (v37)
                                                          {
                                                            *(this + 28) = BaseAddress + v37;
                                                          }

                                                          if (v7 >= 0x1E)
                                                          {
                                                            v38 = BaseAddress[34];
                                                            if (v38)
                                                            {
                                                              *(this + 29) = BaseAddress + v38;
                                                            }

                                                            if (v7 != 30)
                                                            {
                                                              v39 = BaseAddress[35];
                                                              if (v39)
                                                              {
                                                                *(this + 30) = BaseAddress + v39;
                                                              }

                                                              if (v7 >= 0x20)
                                                              {
                                                                v40 = BaseAddress[36];
                                                                if (v40)
                                                                {
                                                                  *(this + 31) = BaseAddress + v40;
                                                                }

                                                                if (v7 != 32)
                                                                {
                                                                  v41 = BaseAddress[37];
                                                                  if (v41)
                                                                  {
                                                                    *(this + 32) = BaseAddress + v41;
                                                                  }

                                                                  if (v7 >= 0x22)
                                                                  {
                                                                    v42 = BaseAddress[38];
                                                                    if (v42)
                                                                    {
                                                                      *(this + 33) = BaseAddress + v42;
                                                                    }

                                                                    if (v7 != 34)
                                                                    {
                                                                      v43 = BaseAddress[39];
                                                                      if (v43)
                                                                      {
                                                                        *(this + 34) = BaseAddress + v43;
                                                                      }

                                                                      if (v7 >= 0x24)
                                                                      {
                                                                        v44 = BaseAddress[40];
                                                                        if (v44)
                                                                        {
                                                                          *(this + 35) = BaseAddress + v44;
                                                                        }

                                                                        if (v7 != 36)
                                                                        {
                                                                          v45 = BaseAddress[41];
                                                                          if (v45)
                                                                          {
                                                                            *(this + 36) = BaseAddress + v45;
                                                                          }

                                                                          if (v7 >= 0x26)
                                                                          {
                                                                            v46 = BaseAddress[42];
                                                                            if (v46)
                                                                            {
                                                                              *(this + 37) = BaseAddress + v46;
                                                                            }

                                                                            if (v7 != 38)
                                                                            {
                                                                              v47 = BaseAddress[43];
                                                                              if (v47)
                                                                              {
                                                                                *(this + 38) = BaseAddress + v47;
                                                                              }

                                                                              if (v7 >= 0x28)
                                                                              {
                                                                                v48 = BaseAddress[44];
                                                                                if (v48)
                                                                                {
                                                                                  *(this + 39) = BaseAddress + v48;
                                                                                }

                                                                                if (v7 != 40)
                                                                                {
                                                                                  v49 = BaseAddress[45];
                                                                                  if (v49)
                                                                                  {
                                                                                    *(this + 40) = BaseAddress + v49;
                                                                                  }

                                                                                  if (v7 >= 0x2A)
                                                                                  {
                                                                                    v50 = BaseAddress[46];
                                                                                    if (v50)
                                                                                    {
                                                                                      *(this + 41) = BaseAddress + v50;
                                                                                    }

                                                                                    if (v7 != 42)
                                                                                    {
                                                                                      v51 = BaseAddress[47];
                                                                                      if (v51)
                                                                                      {
                                                                                        *(this + 42) = BaseAddress + v51;
                                                                                      }

                                                                                      if (v7 >= 0x2C)
                                                                                      {
                                                                                        v52 = BaseAddress[48];
                                                                                        if (v52)
                                                                                        {
                                                                                          *(this + 43) = BaseAddress + v52;
                                                                                        }

                                                                                        if (v7 != 44)
                                                                                        {
                                                                                          v53 = BaseAddress[49];
                                                                                          if (v53)
                                                                                          {
                                                                                            *(this + 44) = BaseAddress + v53;
                                                                                          }

                                                                                          if (v7 >= 0x2E)
                                                                                          {
                                                                                            v54 = BaseAddress[50];
                                                                                            if (v54)
                                                                                            {
                                                                                              *(this + 45) = BaseAddress + v54;
                                                                                            }

                                                                                            if (v7 != 46)
                                                                                            {
                                                                                              v55 = BaseAddress[51];
                                                                                              if (v55)
                                                                                              {
                                                                                                *(this + 46) = BaseAddress + v55;
                                                                                              }

                                                                                              if (v7 < 0x4F)
                                                                                              {
                                                                                                if (v7 < 0x30)
                                                                                                {
                                                                                                  return this;
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v56 = BaseAddress[83];
                                                                                                if (v56)
                                                                                                {
                                                                                                  *(this + 47) = BaseAddress + v56;
                                                                                                }
                                                                                              }

                                                                                              v57 = BaseAddress[52];
                                                                                              if (v57)
                                                                                              {
                                                                                                *(this + 48) = BaseAddress + v57;
                                                                                              }

                                                                                              if (v7 >= 0x31)
                                                                                              {
                                                                                                v58 = BaseAddress[53];
                                                                                                if (v58)
                                                                                                {
                                                                                                  *(this + 49) = BaseAddress + v58;
                                                                                                }

                                                                                                if (v7 != 49)
                                                                                                {
                                                                                                  v59 = BaseAddress[54];
                                                                                                  if (v59)
                                                                                                  {
                                                                                                    *(this + 50) = BaseAddress + v59;
                                                                                                  }

                                                                                                  if (v7 >= 0x33)
                                                                                                  {
                                                                                                    v60 = BaseAddress[55];
                                                                                                    if (v60)
                                                                                                    {
                                                                                                      *(this + 51) = BaseAddress + v60;
                                                                                                    }

                                                                                                    if (v7 != 51)
                                                                                                    {
                                                                                                      v61 = BaseAddress[56];
                                                                                                      if (v61)
                                                                                                      {
                                                                                                        *(this + 52) = BaseAddress + v61;
                                                                                                      }

                                                                                                      if (v7 >= 0x35)
                                                                                                      {
                                                                                                        v62 = BaseAddress[57];
                                                                                                        if (v62)
                                                                                                        {
                                                                                                          *(this + 53) = BaseAddress + v62;
                                                                                                        }

                                                                                                        if (v7 != 53)
                                                                                                        {
                                                                                                          v63 = BaseAddress[58];
                                                                                                          if (v63)
                                                                                                          {
                                                                                                            *(this + 54) = BaseAddress + v63;
                                                                                                          }

                                                                                                          if (v7 >= 0x37)
                                                                                                          {
                                                                                                            v64 = BaseAddress[59];
                                                                                                            if (v64)
                                                                                                            {
                                                                                                              *(this + 55) = BaseAddress + v64;
                                                                                                            }

                                                                                                            if (v7 != 55)
                                                                                                            {
                                                                                                              v65 = BaseAddress[60];
                                                                                                              if (v65)
                                                                                                              {
                                                                                                                *(this + 56) = BaseAddress + v65;
                                                                                                              }

                                                                                                              if (v7 >= 0x39)
                                                                                                              {
                                                                                                                v66 = BaseAddress[61];
                                                                                                                if (v66)
                                                                                                                {
                                                                                                                  *(this + 57) = BaseAddress + v66;
                                                                                                                }

                                                                                                                if (v7 >= 0x3D)
                                                                                                                {
                                                                                                                  v67 = BaseAddress[65];
                                                                                                                  if (v67)
                                                                                                                  {
                                                                                                                    *(this + 58) = BaseAddress + v67;
                                                                                                                  }

                                                                                                                  if (v7 >= 0x3F)
                                                                                                                  {
                                                                                                                    v68 = BaseAddress[67];
                                                                                                                    if (v68)
                                                                                                                    {
                                                                                                                      *(this + 59) = BaseAddress + v68;
                                                                                                                    }

                                                                                                                    if (v7 != 63)
                                                                                                                    {
                                                                                                                      v69 = BaseAddress[68];
                                                                                                                      if (v69)
                                                                                                                      {
                                                                                                                        *(this + 60) = BaseAddress + v69;
                                                                                                                      }

                                                                                                                      if (v7 >= 0x44)
                                                                                                                      {
                                                                                                                        v70 = BaseAddress[72];
                                                                                                                        if (v70)
                                                                                                                        {
                                                                                                                          *(this + 61) = BaseAddress + v70;
                                                                                                                        }

                                                                                                                        if (v7 < 0x46)
                                                                                                                        {
                                                                                                                          if (v7 == 68)
                                                                                                                          {
                                                                                                                            return this;
                                                                                                                          }
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          v71 = BaseAddress[74];
                                                                                                                          if (v71)
                                                                                                                          {
                                                                                                                            *(this + 62) = BaseAddress + v71;
                                                                                                                          }

                                                                                                                          if (v7 >= 0x4C)
                                                                                                                          {
                                                                                                                            v72 = BaseAddress[80];
                                                                                                                            if (v72)
                                                                                                                            {
                                                                                                                              *(this + 63) = BaseAddress + v72;
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }

                                                                                                                        v73 = BaseAddress[73];
                                                                                                                        if (v73)
                                                                                                                        {
                                                                                                                          *(this + 65) = BaseAddress + v73;
                                                                                                                        }

                                                                                                                        if (v7 >= 0x4D)
                                                                                                                        {
                                                                                                                          v74 = BaseAddress[81];
                                                                                                                          if (v74)
                                                                                                                          {
                                                                                                                            *(this + 66) = BaseAddress + v74;
                                                                                                                          }

                                                                                                                          if (v7 != 77)
                                                                                                                          {
                                                                                                                            v75 = BaseAddress[82];
                                                                                                                            if (v75)
                                                                                                                            {
                                                                                                                              *(this + 67) = BaseAddress + v75;
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
    }
  }

  return this;
}

uint64_t H16ISP::H16ISPFrameReceiverBufferPool::addPreallocatedBuffer(pthread_mutex_t *this, __CVBuffer *a2)
{
  pixelBuffer = a2;
  pthread_mutex_lock(this + 4);
  CVPixelBufferRetain(a2);
  std::deque<__CVBuffer *>::push_back(&this[3].__sig, &pixelBuffer);
  if ((this[1].__opaque[45] & 4) != 0)
  {
    extraRowsOnBottom = 0;
    extraColumnsOnRight = 0;
    *&this[5].__opaque[12] = CVPixelBufferGetBytesPerRow(pixelBuffer);
    *&this[5].__opaque[8] = CVPixelBufferGetDataSize(pixelBuffer);
    *&this->__opaque[16] = CVPixelBufferGetWidth(pixelBuffer);
    *&this->__opaque[20] = CVPixelBufferGetHeight(pixelBuffer);
    CVPixelBufferGetExtendedPixels(pixelBuffer, 0, &extraColumnsOnRight, 0, &extraRowsOnBottom);
    v4 = extraColumnsOnRight;
    *&this->__opaque[24] = extraRowsOnBottom;
    *&this->__opaque[28] = v4;
  }

  pthread_mutex_unlock(this + 4);
  return 0;
}

void *std::deque<__CVBuffer *>::push_back(void *result, void *a2)
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
    result = std::deque<__CVBuffer *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void H16ISP::H16ISPFrameMetadata::~H16ISPFrameMetadata(H16ISP::H16ISPFrameMetadata *this)
{
  v2 = *(this + 69);
  if (v2)
  {
    CVPixelBufferUnlockBaseAddress(v2, *(this + 70));
  }

  if (*(this + 568) == 1)
  {
    H16ISP::H16ISPFrameMetadata::DeepFree(this);
  }
}

uint64_t ___ZN6H16ISP19H16ISPFrameReceiver20ProcessFrameMetadataEP10__CVBufferPyNS_33H16ISPFrameReceiverBufferPoolTypeEbPh_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  notify_set_state(*(v2 + 580), *(a1 + 68));
  result = notify_post(*(v2 + 568));
  if (*(a1 + 70) == 1)
  {
    if (*(v2 + 616) == 1)
    {
      notify_set_state(*(v2 + 620), *(a1 + 40));
      result = notify_post(*(v2 + 608));
    }

    if (*(v2 + 632) == 1)
    {
      notify_set_state(*(v2 + 636), *(a1 + 44));
      result = notify_post(*(v2 + 624));
    }

    if (*(v2 + 648) == 1)
    {
      notify_set_state(*(v2 + 652), *(a1 + 48));
      result = notify_post(*(v2 + 640));
    }

    if (*(v2 + 664) == 1)
    {
      notify_set_state(*(v2 + 668), *(a1 + 52));
      result = notify_post(*(v2 + 656));
    }

    if (*(v2 + 680) == 1)
    {
      notify_set_state(*(v2 + 684), *(a1 + 56));
      result = notify_post(*(v2 + 672));
    }

    if (*(v2 + 696) == 1)
    {
      notify_set_state(*(v2 + 700), *(a1 + 60));
      result = notify_post(*(v2 + 688));
    }

    if (*(v2 + 712) == 1)
    {
      notify_set_state(*(v2 + 716), *(a1 + 64));
      v4 = *(v2 + 704);

      return notify_post(v4);
    }
  }

  return result;
}

H16ISP::H16ISPFilterGraphMessage *H16ISP::H16ISPFilterGraphMessage::H16ISPFilterGraphMessage(H16ISP::H16ISPFilterGraphMessage *this)
{
  *(this + 139) = this + 1112;
  *(this + 140) = this + 1112;
  *(this + 141) = 0;
  *this = 1;
  pthread_mutex_init((this + 8), 0);
  for (i = 80; i != 1112; i += 344)
  {
    bzero(this + i, 0x158uLL);
  }

  *(this + 9) = 0;
  return this;
}

void ActivateStillImageOutputInFrameReceiver(uint64_t a1, uint64_t a2)
{
  v108 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 160))
  {
    return;
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 192);
  if (v4 < v5)
  {
    v5 = 0;
  }

  if (H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(a1 + 156), *(*(a1 + 184) + 120 * (v4 - v5) + 16), v83, v106))
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageOutputInFrameReceiver();
    }

    return;
  }

  bzero(v78, 0x1CuLL);
  v80 = *(a1 + 156);
  v79 = 2827;
  v81 = vmovn_s64(vcvtq_s64_f64(*(a1 + 1336)));
  v82 = vmovn_s64(vcvtq_u64_f64(*(a1 + 1352)));
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a2 + 24), v78, 0x1Cu, 0, 0xFFFFFFFF))
  {
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageOutputInFrameReceiver();
    }

    return;
  }

  v8 = *(a1 + 1368);
  valuePtr = 0;
  v9 = (a1 + 1320);
  if (H16ISP::getFrameFormatMetaInfo(*(a1 + 1320), &v75))
  {
    v10 = DWORD1(v75);
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
      ActivateStillImageOutputInFrameReceiver();
    }

    v10 = 0;
  }

  v12 = *(a1 + 1448);
  if (v12)
  {
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(v12);
    if (!PixelBufferAttributes)
    {
      v28 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v28 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v28;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        ActivateStillImageOutputInFrameReceiver();
      }

      return;
    }

    v14 = PixelBufferAttributes;
    Value = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x277CC4EC8]);
    v16 = CFDictionaryGetValue(v14, *MEMORY[0x277CC4DD8]);
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
    CFNumberGetValue(v16, kCFNumberIntType, &valuePtr);
  }

  else
  {
    v17 = *(a1 + 1324);
    LODWORD(valuePtr) = *(a1 + 1328);
    HIDWORD(valuePtr) = v17;
  }

  if (HIDWORD(v75) <= 0x1B && ((1 << SBYTE12(v75)) & 0xE000002) != 0)
  {
    v18 = 0;
    v19 = 0;
    goto LABEL_28;
  }

  v29 = *v9;
  v18 = 1;
  if (*v9 > 1885745711)
  {
    if (v29 != 1885745712 && v29 != 2019963440)
    {
      v30 = 2037741158;
      goto LABEL_58;
    }
  }

  else if (v29 != 641230384 && v29 != 645424688)
  {
    v30 = 875704422;
LABEL_58:
    v19 = v29 == v30;
    goto LABEL_28;
  }

  v19 = 1;
LABEL_28:
  v58 = v19;
  v59 = v18;
  v73 = 0u;
  v74 = 0u;
  GenerateBufferTagsForOutput(a1, a1 + 1304, &v73);
  v20 = *(a1 + 160);
  *buf = v73;
  *&buf[16] = v74;
  v21 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v20, 7, SDWORD2(v84));
  v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  v23 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v22 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "ActivateStillImageOutputInFrameReceiver";
    *&buf[12] = 1024;
    *&buf[14] = v8;
    *&buf[18] = 1024;
    *&buf[20] = 0;
    _os_log_impl(&dword_2247DB000, v22, OS_LOG_TYPE_INFO, "%s - STILL pool size=%d,prime=%d\n", buf, 0x18u);
  }

  if (v21)
  {
    v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v23)
    {
      v24 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v24;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageOutputInFrameReceiver();
    }

    return;
  }

  BufferPool = H16ISP::H16ISPFrameReceiver::getBufferPool(*(a1 + 160), 7);
  v27 = *(BufferPool + 44);
  v26 = *(BufferPool + 48);
  bzero(v61, 0x38uLL);
  v63 = *(a1 + 156);
  v62 = 2823;
  v64 = *(a1 + 1324);
  v69 = 0;
  if (v10 <= 22)
  {
    if (v10 > 14)
    {
      switch(v10)
      {
        case 15:
          v33 = 18;
          v71 = 0;
          v34 = 2 * HIDWORD(valuePtr);
          break;
        case 18:
          v33 = 19;
          v71 = 0;
          v34 = (2 * ((2863311531u * (HIDWORD(valuePtr) + 2)) >> 32)) & 0xFFFFFFFC;
          break;
        case 22:
          v67 = vand_s8(vadd_s32(vdup_n_s32(32 * HIDWORD(valuePtr)), 0x1E0000003E0), 0xFFFFFE00FFFFFC00);
          v66 = 0;
LABEL_66:
          v71 = 1;
          goto LABEL_75;
        default:
          goto LABEL_73;
      }

      v66 = v33;
      LODWORD(v67) = (v34 + 63) & 0xFFFFFFC0;
      HIDWORD(v67) = v67;
      goto LABEL_75;
    }

    if (v10)
    {
      if (v10 == 1)
      {
        v71 = 0;
        v66 = 1;
        LODWORD(v67) = (2 * HIDWORD(valuePtr) + 63) & 0xFFFFFFC0;
        goto LABEL_75;
      }

      if (v10 != 13)
      {
LABEL_73:
        v71 = 0;
        v35 = (HIDWORD(valuePtr) + 63) & 0xFFFFFFC0;
        v66 = v10;
        goto LABEL_74;
      }

      v71 = 1;
    }

    else
    {
      v71 = 0;
    }

    v35 = (HIDWORD(valuePtr) + 63) & 0xFFFFFFC0;
    v66 = 0;
LABEL_74:
    LODWORD(v67) = v35;
    HIDWORD(v67) = v35;
    goto LABEL_75;
  }

  if ((v10 - 24) < 6)
  {
    v71 = v76 != 0;
    v66 = HIDWORD(v75);
    v67 = __PAIR64__(v26, v27);
    goto LABEL_75;
  }

  if ((v10 - 31) >= 6)
  {
    if (v10 == 23)
    {
      v31 = &valuePtr + 1;
      v32 = vld1_dup_f32(v31);
      v67 = vshr_n_u32(vmul_s32(vshl_u32(vadd_s32(v32, 0xF0000001FLL), 0xFFFFFFFCFFFFFFFBLL), 0xA0000002800), 3uLL);
      v66 = 19;
      goto LABEL_66;
    }

    goto LABEL_73;
  }

  v71 = v76 != 0;
  v66 = HIDWORD(v75);
  HIDWORD(v67) = v27;
  v68 = v26;
LABEL_75:
  v36 = ColorRangeForOutputWithMatrix(a1, a1 + 1304, *(a1 + 176));
  v72 = HIDWORD(valuePtr);
  v65 = v36;
  v70 = valuePtr;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a2 + 24), v61, 0x38u, 0, 0xFFFFFFFF))
  {
    v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v23)
    {
      v37 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v37;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageOutputInFrameReceiver();
    }

    return;
  }

  if (*(a1 + 776) & 1) != 0 || (*(a1 + 976) & 1) != 0 || (*(a1 + 1176) & 1) != 0 || (*(a1 + 1376) & 1) != 0 || (*(a1 + 1576) & 1) != 0 || (*(a1 + 2104) & 1) != 0 || (*(a1 + 2504) & 1) != 0 || (*(a1 + 4080))
  {
    v38 = 0;
  }

  else
  {
    v38 = *(a1 + 1704) ^ 1;
  }

  v39 = *(a1 + 160);
  if ((*(v39 + 533) & 1) == 0 && (v38 & 1) == 0)
  {
    v102 = v89;
    v103 = v90;
    v104 = v91;
    v105 = v92;
    v98 = v85;
    v99 = v86;
    v100 = v87;
    v101 = v88;
    v94 = v83[2];
    v95 = v83[3];
    v96 = v83[4];
    v97 = v84;
    *buf = v83[0];
    *&buf[16] = v83[1];
    if (AddRawPoolToFrameReceiver(a1, a2, buf))
    {
      v40 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v23)
      {
        v40 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v40;
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        ActivateStillImageOutputInFrameReceiver();
      }

      return;
    }

    v39 = *(a1 + 160);
  }

  if (!H16ISP::H16ISPFrameReceiver::HasPool(v39, 30) && *(a1 + 1377) == 1 && AddThumbnailRawPoolToFrameReceiver(a1, a2))
  {
    v41 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v23)
    {
      v41 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v41;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageOutputInFrameReceiver();
    }
  }

  else if (*(a1 + 4256) == 1 && (*(a1 + 720) | 2) == 0x4C303132 && H16ISP::H16ISPDevice::SetSensorInterfacePixelFormat(*(a2 + 24), *(a1 + 156), 15, 1, 0, 0))
  {
    v42 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v23)
    {
      v42 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v42;
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageOutputInFrameReceiver();
    }
  }

  else if (v76 == 2 && (v43 = H16ISP::H16ISPFrameReceiver::getBufferPool(*(a1 + 160), 7), H16ISP::H16ISPDevice::SetBufferPoolConfiguration(*(a2 + 24), *(a1 + 156), 7, 1, 2, 2u, (v43 + 336))))
  {
    v44 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v23)
    {
      v44 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v44;
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageOutputInFrameReceiver();
    }
  }

  else if (*(a1 + 1424) == 1 && AddSushiRawPoolToFrameReceiver(a1, a2, a1 + 1304))
  {
    v45 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v23)
    {
      v45 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v45;
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageOutputInFrameReceiver();
    }
  }

  else if (*(a1 + 1428) && AddSashimiRawPoolToFrameReceiver(a1, a2, a1 + 1304))
  {
    v46 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v23)
    {
      v46 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v46;
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageOutputInFrameReceiver();
    }
  }

  else if (*(a1 + 1432) && AddFocusPixelDataToFrameReceiver(a1, a2, a1 + 1304))
  {
    v47 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v23)
    {
      v47 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v47;
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageOutputInFrameReceiver();
    }
  }

  else if (*(a1 + 1400) == 1 && AddSplitPixelDataToFrameReceiver(a1, a2, a1 + 1304))
  {
    v48 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v23)
    {
      v48 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v48;
    }

    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageOutputInFrameReceiver();
    }
  }

  else
  {
    if (!H16ISP::H16ISPFrameReceiver::HasPool(*(a1 + 160), 8))
    {
      v60 = 0;
      v49 = resizeStillMetaPool(a1, 0, &v60 + 1, &v60);
      if (v49)
      {
        v50 = v49;
        v51 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v23)
        {
          v51 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v51;
        }

        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "ActivateStillImageOutputInFrameReceiver";
          *&buf[12] = 1024;
          *&buf[14] = v50;
          _os_log_impl(&dword_2247DB000, v51, OS_LOG_TYPE_DEFAULT, "%s - resize still meta pool failed err= %d\n", buf, 0x12u);
        }
      }

      v52 = v60 + HIDWORD(v60);
      if (HIDWORD(v60) >= 0x10)
      {
        v53 = 16;
      }

      else
      {
        v53 = HIDWORD(v60);
      }

      v54 = *(a1 + 160);
      memset(buf, 0, sizeof(buf));
      v55 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v54, 8, v107);
      v56 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v23)
      {
        v56 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v56;
      }

      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        *buf = 67109632;
        *&buf[4] = v52;
        *&buf[8] = 1024;
        *&buf[10] = v53;
        *&buf[14] = 1024;
        *&buf[16] = v55;
        _os_log_impl(&dword_2247DB000, v56, OS_LOG_TYPE_INFO, "ActivateStillImageOutputInFrameReceiver STILLMETA pool size=%d,prime=%d res =%d\n\n", buf, 0x14u);
      }
    }

    if (H16ISP::H16ISPDevice::SetScalerChromaSampleOffset(*(a2 + 24), *(a1 + 156), v58, v59, 2))
    {
      v57 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v23)
      {
        v57 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v57;
      }

      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        ActivateStillImageOutputInFrameReceiver();
      }
    }

    else
    {
      SetMetaDataOptionsOnFrameReceiver(a1, a2);
    }
  }
}

uint64_t H16ISP::H16ISPFrameReceiver::SetMetaDataOptions(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 984) = *(a2 + 4);
  *(a1 + 952) = v2;
  *(a1 + 968) = v3;
  return 0;
}

uint64_t H16ISP::H16ISPFilterGraphNode::EnqueueMessage(H16ISP::H16ISPFilterGraphNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  if (*(this + 16) != 1)
  {
    return 3758097112;
  }

  v11[12] = v2;
  v11[13] = v3;
  pthread_mutex_lock((a2 + 8));
  ++*a2;
  pthread_mutex_unlock((a2 + 8));
  v6 = (*(*this + 72))(this);
  if (v6)
  {
    v7 = v6;
    if (*(this + 18) >= v6)
    {
      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v10;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPFilterGraphNode::EnqueueMessage(this, v7, v10);
      }

      goto LABEL_11;
    }
  }

  v8 = *(this + 1);
  if (!v8)
  {
LABEL_11:
    H16ISP::H16ISPFilterGraphMessage::Release(a2);
    return 0;
  }

  ++*(this + 18);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = ___ZN6H16ISP21H16ISPFilterGraphNode14EnqueueMessageEPNS_24H16ISPFilterGraphMessageE_block_invoke;
  v11[3] = &__block_descriptor_tmp_3_1;
  v11[4] = this;
  v11[5] = a2;
  dispatch_async(v8, v11);
  return 0;
}

uint64_t H16ISP::H16ISPDevice::SetBufferPoolConfiguration(H16ISP::H16ISPDevice *a1, int a2, __int16 a3, __int16 a4, int a5, unsigned int a6, const void *a7)
{
  bzero(v15, 0x9CuLL);
  v16 = 279;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v21 = a5;
  v20[66] = a6;
  memcpy(v20, a7, 32 * a6);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v15, 0x9Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPGraphNullNode::EnqueueMessage(H16ISP::H16ISPGraphNullNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  if (*(this + 16) != 1)
  {
    return 3758097112;
  }

  v4 = *(this + 4);
  v5 = *(this + 5);
  v6 = (v4 + 8 * (*(this + 7) >> 9));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*v6 + 8 * (*(this + 7) & 0x1FFLL));
  }

  while (1)
  {
    if (v5 == v4)
    {
      v12 = 0;
    }

    else
    {
      v11 = *(this + 8) + *(this + 7);
      v12 = *(v4 + ((v11 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v11 & 0x1FF);
    }

    if (v7 == v12)
    {
      break;
    }

    v9 = *v7++;
    (*(*v9 + 32))(v9, a2);
    if ((v7 - *v6) == 4096)
    {
      v10 = v6[1];
      ++v6;
      v7 = v10;
    }

    v4 = *(this + 4);
    v5 = *(this + 5);
  }

  return 0;
}