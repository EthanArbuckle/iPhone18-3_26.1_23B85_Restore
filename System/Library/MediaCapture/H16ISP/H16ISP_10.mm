void PrintFirmwareLog(FILE *a1, const char *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (a1)
    {

      fputs(a2, a1);
    }

    else
    {
      v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v3 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = 136315138;
        v5 = a2;
        _os_log_impl(&dword_2247DB000, v3, OS_LOG_TYPE_INFO, "ISPCPU: %s\n", &v4, 0xCu);
      }
    }
  }
}

uint64_t H16ISPCaptureDeviceInvalidate()
{
  v59 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LogCaptureDeviceEvent(1u, DerivedStorage, 0, 0, 0, 0, 0);
  pthread_mutex_lock((DerivedStorage + 32));
  if (*DerivedStorage)
  {
    pthread_mutex_unlock((DerivedStorage + 32));
    return 0;
  }

  *DerivedStorage = 1;
  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    H16ISP::H16ISPDevice::DisableDeviceMessages(v1);
  }

  v2 = *(DerivedStorage + 248);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 248) = 0;
  }

  v3 = *(DerivedStorage + 120);
  if (v3)
  {
    if (CFArrayGetCount(v3))
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 120), v4);
        if (ValueAtIndex)
        {
          v6 = ValueAtIndex;
          FigBaseObject = FigCaptureStreamGetFigBaseObject();
          H16ISPCaptureStreamInvalidate(FigBaseObject, v8);
          CFRelease(v6);
        }

        ++v4;
      }

      while (v4 < CFArrayGetCount(*(DerivedStorage + 120)));
    }

    CFRelease(*(DerivedStorage + 120));
    *(DerivedStorage + 120) = 0;
  }

  v9 = *(DerivedStorage + 240);
  if (v9)
  {
    if (CFArrayGetCount(v9))
    {
      v10 = 0;
      do
      {
        v11 = CFArrayGetValueAtIndex(*(DerivedStorage + 240), v10);
        if (v11)
        {
          v12 = v11;
          FigCaptureSynchronizedStreamsGroupGetFigBaseObject();
          H16ISPCaptureGroupInvalidate();
          CFRelease(v12);
        }

        ++v10;
      }

      while (v10 < CFArrayGetCount(*(DerivedStorage + 240)));
    }

    CFRelease(*(DerivedStorage + 240));
    *(DerivedStorage + 240) = 0;
  }

  v13 = *(DerivedStorage + 288);
  if (v13)
  {
    dispatch_release(v13);
    *(DerivedStorage + 288) = 0;
  }

  v14 = *(DerivedStorage + 296);
  if (v14)
  {
    dispatch_release(v14);
    *(DerivedStorage + 296) = 0;
  }

  v15 = *(DerivedStorage + 128);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 128) = 0;
  }

  v16 = *(DerivedStorage + 8);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 8) = 0;
  }

  v17 = *(DerivedStorage + 304);
  if (v17)
  {
    _Block_release(v17);
    *(DerivedStorage + 304) = 0;
  }

  v18 = *(DerivedStorage + 312);
  if (v18)
  {
    _Block_release(v18);
    *(DerivedStorage + 312) = 0;
  }

  if (*(DerivedStorage + 216))
  {
    if (!*(DerivedStorage + 24) || (H16ISP::H16ISPDevice::ISP_DestroyMultiCameraSession(*(DerivedStorage + 24)), *(DerivedStorage + 216)))
    {
      MEMORY[0x22AA55B60]();
    }

    *(DerivedStorage + 216) = 0;
  }

  v19 = *(DerivedStorage + 224);
  if (v19)
  {
    if (*(DerivedStorage + 24))
    {
      H16ISP::H16ISPDevice::SetRPCEnableFlag(*(DerivedStorage + 24), 0);
      v19 = *(DerivedStorage + 224);
    }

    H16ISP::H16ISPFirmwareWorkProcessor::stopReceive(v19);
    H16ISP::DestroyH16ISPFirmwareWorkProcessor(*(DerivedStorage + 224), v20);
    *(DerivedStorage + 224) = 0;
  }

  v21 = *(DerivedStorage + 272);
  if (v21)
  {
    H16ISP::H16ISPTimeOfFlightColorSynchronizer::~H16ISPTimeOfFlightColorSynchronizer(v21);
    MEMORY[0x22AA55B60]();
    *(DerivedStorage + 272) = 0;
  }

  v22 = *(DerivedStorage + 232);
  if (v22)
  {
    H16ISP::H16ISPServicesRemote::Disconnect(v22);
    v23 = *(DerivedStorage + 232);
    if (v23)
    {
      H16ISP::H16ISPServicesRemote::~H16ISPServicesRemote(v23);
      MEMORY[0x22AA55B60]();
    }

    *(DerivedStorage + 232) = 0;
  }

  v24 = *(DerivedStorage + 24);
  if (v24)
  {
    if (H16ISP::H16ISPDevice::ISP_IsPowered(v24))
    {
      H16ISP::H16ISPDevice::ISP_PowerOffCamera(*(DerivedStorage + 24));
    }

    v25 = *(DerivedStorage + 136);
    if (v25)
    {
      H16ISP::H16ISPFirmwareLogger::~H16ISPFirmwareLogger(v25);
      MEMORY[0x22AA55B60]();
    }

    v26 = *(DerivedStorage + 144);
    if (v26)
    {
      fclose(v26);
    }

    if (*(DerivedStorage + 264) == 1)
    {
      usleep(0x493E0u);
      v27 = -10;
      while (1)
      {
        v28 = H16ISP::H16ISPDevice::ISP_ForgetFirmware(*(DerivedStorage + 24));
        v29 = v28;
        if (v28 != -536870174)
        {
          break;
        }

        usleep(0x493E0u);
        if (__CFADD__(v27++, 1))
        {
          goto LABEL_64;
        }
      }

      if (v28)
      {
LABEL_64:
        v34 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v34 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v34;
        }

        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__argv[0]) = 67109120;
          HIDWORD(__argv[0]) = v29;
          v35 = "H16ISPCaptureDeviceInvalidate: Warning: Requested firmware forget did not succeed (0x%08X)\n\n";
          v36 = v34;
LABEL_76:
          _os_log_impl(&dword_2247DB000, v36, OS_LOG_TYPE_DEFAULT, v35, __argv, 8u);
        }
      }

      else
      {
        v56 = 0;
        __argv[0] = "killall";
        __argv[1] = "appleh16camerad";
        v58 = 0;
        v31 = _NSGetEnviron();
        v32 = posix_spawnp(&v56, "killall", 0, 0, __argv, *v31);
        v55 = v32;
        if (v32)
        {
          v33 = 0;
        }

        else
        {
          v37 = waitpid(v56, &v55, 0);
          v33 = v37 & (v37 >> 31);
          v32 = v55;
        }

        if (v32)
        {
          v38 = v32;
        }

        else
        {
          v38 = v33;
        }

        v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v39 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v39;
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__argv[0]) = 67109120;
          HIDWORD(__argv[0]) = v38;
          v35 = "H16ISPCaptureDeviceInvalidate: Successfully triggered firmware forget (as requested by client). Result of killing appleh16camerad: %d\n\n";
          v36 = v39;
          goto LABEL_76;
        }
      }
    }

    H16ISP::H16ISPDevice::H16ISPDeviceClose(*(DerivedStorage + 24));
    *(DerivedStorage + 24) = 0;
    LogCaptureDeviceEvent(1u, DerivedStorage, 0, 0, 0, 0, 1);
    if (*(DerivedStorage + 152))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v41 = Mutable;
        v42 = *(DerivedStorage + 160);
        if (v42)
        {
          CFDictionaryAddValue(Mutable, @"CameraEventLog", v42);
          __argv[0] = 0;
          if (!CFPropertyListWrite(v41, *(DerivedStorage + 152), kCFPropertyListXMLFormat_v1_0, 0, __argv))
          {
            v43 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            v44 = MEMORY[0x277D86220];
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v43 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v43;
            }

            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              H16ISPCaptureDeviceInvalidate();
            }

            if (__argv[0])
            {
              v45 = CFCopyDescription(__argv[0]);
              if (v45)
              {
                v46 = v45;
                v47 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v44)
                {
                  v47 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v47;
                }

                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  H16ISPCaptureDeviceInvalidate(v46);
                }

                CFRelease(v46);
              }

              CFRelease(__argv[0]);
            }
          }
        }

        CFRelease(v41);
      }

      CFWriteStreamClose(*(DerivedStorage + 152));
      CFRelease(*(DerivedStorage + 152));
      *(DerivedStorage + 152) = 0;
    }

    v48 = *(DerivedStorage + 208);
    if (v48)
    {
      dispatch_release(v48);
      *(DerivedStorage + 208) = 0;
    }

    v49 = *(DerivedStorage + 192);
    if (v49)
    {
      CFRelease(v49);
      *(DerivedStorage + 192) = 0;
    }

    v50 = *(DerivedStorage + 160);
    if (v50)
    {
      CFRelease(v50);
      *(DerivedStorage + 160) = 0;
    }
  }

  v51 = *(DerivedStorage + 96);
  if (v51)
  {
    CFRelease(v51);
    *(DerivedStorage + 96) = 0;
  }

  pthread_mutex_unlock((DerivedStorage + 32));
  v53 = *(DerivedStorage + 16);
  if (v53)
  {
    H16ISP::DestroyH16ISPDeviceController(v53, v52);
    *(DerivedStorage + 16) = 0;
  }

  return 0;
}

uint64_t H16ISP::H16ISPTimeLogger::end(H16ISP::H16ISPTimeLogger *this, const char *a2, double *a3, int a4)
{
  v8 = mach_absolute_time();
  *(this + 2) = v8;
  v9 = v8 - *(this + 1);
  v10 = (v9 * *this / *(this + 1));
  v11 = v10 / 1000000.0;
  if (a4)
  {
    operator new[]();
  }

  v12 = " ";
  if (a2)
  {
    v12 = a2;
  }

  printf("%s: %9.3f msec\n", v12, v10 / 1000000.0);
  if (a3)
  {
    *a3 = v11;
  }

  return v9;
}

void MyH16ISPServicesRemoteNotification(int a1, const void *a2)
{
  if (a1 == 1)
  {
    v11 = v2;
    v12 = v3;
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      MyH16ISPServicesRemoteNotification();
    }

    v6 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v8 = Mutable;
      valuePtr = -12683;
      v9 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(v8, *MEMORY[0x277CF69E8], v9);
      CFRelease(v9);
      H16ISPPostNotification(*MEMORY[0x277CF69F8], a2, v8);
      CFRelease(v8);
    }

    else
    {
      H16ISPPostNotification(*MEMORY[0x277CF69F8], a2, 0);
    }
  }
}

void EnqueueExclaveSensorMetadata(_BYTE *a1)
{
  if (isExclaveAlgoEnabled(a1))
  {
    operator new();
  }

  v1 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v1;
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    EnqueueExclaveSensorMetadata();
  }
}

uint64_t CreateH16ISPPluginMetadata(uint64_t a1, uint64_t a2, char *outputStruct)
{
  *(outputStruct + 3) = 0u;
  *(outputStruct + 4) = 0u;
  *(outputStruct + 1) = 0u;
  *(outputStruct + 2) = 0u;
  *outputStruct = 0u;
  v6 = *(a1 + 24);
  *(outputStruct + 9) = *(v6 + 4304);
  if (H16ISP::H16ISPDevice::ISP_GetCameraTime(v6, outputStruct))
  {
    *outputStruct = 0;
    *(outputStruct + 1) = 0;
  }

  result = *(*(a1 + 24) + 104);
  if (result)
  {
    result = H16ISP::H16ISPMotionManager::GetOscarTimeSyncInfo(result, outputStruct + 1);
  }

  else
  {
    *(outputStruct + 2) = 0;
    *(outputStruct + 3) = 0;
  }

  if (*(a2 + 698) == 1)
  {
    if (*(a2 + 776) & 1) != 0 || (*(a2 + 976) & 1) != 0 || (*(a2 + 1176) & 1) != 0 || (*(a2 + 1376) & 1) != 0 || (*(a2 + 1576) & 1) != 0 || (*(a2 + 1704) & 1) != 0 || (*(a2 + 2104) & 1) != 0 || (*(a2 + 2504) & 1) != 0 || (*(a2 + 4080))
    {
      v8 = 1;
    }

    else
    {
      v8 = *(a2 + 1904);
    }
  }

  else
  {
    v8 = *(a2 + 4204);
  }

  if (*(*(outputStruct + 9) + 104 * *(a2 + 156) + 8))
  {
    outputStruct[32] = (dword_2810032C8 != 0) | v8 & 1;
    outputStruct[33] = *(a2 + 4208) == 0;
    *(outputStruct + 17) = *(a2 + 4149);
    *(outputStruct + 9) = *(a2 + 4144);
    outputStruct[40] = *(a2 + 4148);
    result = H16ISP::H16ISPDevice::hasSensorType(*(a1 + 24), 1785950322);
    outputStruct[42] = result;
    outputStruct[43] = *(a2 + 4153);
    outputStruct[44] = *(a2 + 4606);
    *(outputStruct + 45) = *(a2 + 4151);
    outputStruct[48] = *(a2 + 4320);
    v9 = *(a2 + 4740);
    *(outputStruct + 52) = *(a2 + 4732);
    *(outputStruct + 15) = v9;
    outputStruct[47] = *(a2 + 4154);
    outputStruct[49] = *(a2 + 4155);
    if (byte_28100338C == 1)
    {
      outputStruct[50] = 1;
    }

    if (byte_28100338D == 1)
    {
      outputStruct[51] = byte_28100338D;
    }

    *(outputStruct + 8) = 0;
    outputStruct[41] = *(a2 + 672) != 0;
  }

  return result;
}

uint64_t H16ISPDebugFrameFileWriter(__CVBuffer *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  pthread_setname_np("H16ISPDebugFrameFileWriter");
  if (a1)
  {
    v30 = 0;
    setlocale(0, "");
    time(&v30);
    v2 = localtime(&v30);
    strftime(__source, 0x14uLL, "%m%d%g_%H%M%S", v2);
    snprintf(__str, 7uLL, "-%d", H16ISPDebugFrameFileWriter(__CVBuffer *)::savedFrameCounter);
    ++H16ISPDebugFrameFileWriter(__CVBuffer *)::savedFrameCounter;
    v3 = CVPixelBufferGetPixelFormatType(a1) == 2037741171 || CVPixelBufferGetPixelFormatType(a1) == 2037741158;
    strcpy(__dst, "/var/mobile/Media/DCIM/");
    strlcat(__dst, __source, 0x400uLL);
    strlcat(__dst, __str, 0x400uLL);
    if (v3)
    {
      v4 = ".422";
    }

    else
    {
      v4 = ".420";
    }

    strlcat(__dst, v4, 0x400uLL);
    v5 = fopen(__dst, "wb");
    if (v5)
    {
      v6 = v5;
      CVPixelBufferLockBaseAddress(a1, 0);
      if (v3)
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
        Width = CVPixelBufferGetWidth(a1);
        Height = CVPixelBufferGetHeight(a1);
        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        if (Height)
        {
          v11 = BaseAddress;
          v12 = 0;
          v13 = 2 * Width;
          v14 = 1;
          do
          {
            fwrite(&v11[v12 * BytesPerRow], v13, 1uLL, v6);
            v12 = v14;
            v15 = Height > v14++;
          }

          while (v15);
        }
      }

      else
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
        if (HeightOfPlane)
        {
          v20 = BaseAddressOfPlane;
          v21 = 0;
          v22 = 1;
          do
          {
            fwrite(&v20[v21 * BytesPerRowOfPlane], WidthOfPlane, 1uLL, v6);
            v21 = v22;
            v15 = HeightOfPlane > v22++;
          }

          while (v15);
        }

        v23 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
        v24 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
        v25 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
        if (v24)
        {
          v26 = v25;
          v27 = 0;
          v28 = 1;
          do
          {
            fwrite(&v26[v27 * v23], WidthOfPlane, 1uLL, v6);
            v27 = v28;
            v15 = v24 > v28++;
          }

          while (v15);
        }
      }

      CVPixelBufferUnlockBaseAddress(a1, 0);
      fclose(v6);
    }

    CVPixelBufferRelease(a1);
  }

  return 0;
}

void H16ISPDebugIRFrameFileWriter(__CVBuffer *a1, __CVBuffer *a2, const __CFDictionary *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = 0;
  setlocale(0, "");
  time(&v18);
  v5 = localtime(&v18);
  strftime(v20, 0x14uLL, "%m%d%g_%H%M%S", v5);
  v6 = snprintf(__str, 0x400uLL, "/var/mobile/Media/DCIM/%s-%s-", v20, "GMC");
  if (a1)
  {
    v7 = v6;
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    v17[0] = HIBYTE(PixelFormatType);
    v17[1] = BYTE2(PixelFormatType);
    v17[2] = BYTE1(PixelFormatType);
    v17[3] = PixelFormatType;
    v17[4] = 0;
    CVPixelBufferLockBaseAddress(a1, 0);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    v13 = &__str[v7];
    v14 = 1024 - v7;
    snprintf(v13, v14, "IR.%lux%lu.%lu.%s.bin", Width, Height, BytesPerRow, v17);
    v15 = fopen(__str, "wb");
    if (v15)
    {
      v16 = v15;
      fwrite(BaseAddress, Height * BytesPerRow, 1uLL, v15);
      fclose(v16);
      CVPixelBufferUnlockBaseAddress(a1, 0);
      if (a2)
      {
        snprintf(v13, v14, "metadata.plist");
        H16ISPWriteDictionary(a2, __str);
      }
    }
  }
}

uint64_t DisableDisplayStrobeOverlay(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  result = *(a1 + 4184);
  if (result)
  {
    H16ISPDisplayStrobeSetScreenBrightness(result, 1);
    memset(v3, 0, sizeof(v3));
    return H16ISPDisplayStrobeSetScreenColor(*(a1 + 4184), v3);
  }

  return result;
}

void H16ISPDebugDepthFrameFileWriter(unsigned int a1, CVPixelBufferRef texture, __CVBuffer *a3, const __CFDictionary *a4, double a5, double a6)
{
  if ((atomic_load_explicit(&qword_2810037F8, memory_order_acquire) & 1) == 0)
  {
    v14 = a1;
    H16ISPDebugDepthFrameFileWriter();
    a1 = v14;
  }

  v11 = H16ISPDebugDepthFrameFileWriter(int,__CVBuffer *,__CVBuffer *,__CFDictionary const*,double,double)::savedFrameCounter;
  if (!(H16ISPDebugDepthFrameFileWriter(int,__CVBuffer *,__CVBuffer *,__CFDictionary const*,double,double)::savedFrameCounter % a1))
  {
    CVPixelBufferRetain(texture);
    CVPixelBufferRetain(a3);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2000000000;
    v19 = 0;
    if (a4)
    {
      DeepCopy = H16ISP::dictionaryCreateDeepCopy(a4, v12);
      v17[3] = DeepCopy;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZL31H16ISPDebugDepthFrameFileWriteriP10__CVBufferS0_PK14__CFDictionarydd_block_invoke;
    block[3] = &unk_2785312D0;
    block[5] = texture;
    block[6] = a3;
    block[4] = &v16;
    *&block[7] = a5;
    *&block[8] = a6;
    dispatch_async(_MergedGlobals, block);
    _Block_object_dispose(&v16, 8);
    v11 = H16ISPDebugDepthFrameFileWriter(int,__CVBuffer *,__CVBuffer *,__CFDictionary const*,double,double)::savedFrameCounter;
  }

  H16ISPDebugDepthFrameFileWriter(int,__CVBuffer *,__CVBuffer *,__CFDictionary const*,double,double)::savedFrameCounter = v11 + 1;
}

void sub_2248AF448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t H16ISPAddProResRawBuffersMetadata(H16ISP::H16ISPFrameMetadata *a1, CVPixelBufferRef pixelBuffer, __CVBuffer *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v46 = 0.0;
  v6 = *(*a1 + 45);
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  FrameFormatMetaInfo = H16ISP::getFrameFormatMetaInfo(PixelFormatType, &v45);
  if ((FrameFormatMetaInfo & (HIDWORD(v45) == 38)) != 0)
  {
    v9 = 12;
  }

  else
  {
    v9 = v6;
  }

  valuePtr = 0x100u >> (16 - v9);
  v10 = *MEMORY[0x277CBECE8];
  v11 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  CVBufferSetAttachment(pixelBuffer, *MEMORY[0x277CC4E68], v11, kCVAttachmentMode_ShouldPropagate);
  CFRelease(v11);
  valuePtr = ~(-1 << v9);
  v12 = CFNumberCreate(v10, kCFNumberSInt32Type, &valuePtr);
  CVBufferSetAttachment(pixelBuffer, *MEMORY[0x277CC4EB0], v12, kCVAttachmentMode_ShouldPropagate);
  CFRelease(v12);
  v13 = *(a1 + 7);
  if (v13)
  {
    v14 = vcvtd_n_f64_u32(*(v13 + 116), 0xCuLL);
    v46 = v14;
    v15 = CFNumberCreate(v10, kCFNumberFloat32Type, &v46);
    CVBufferSetAttachment(pixelBuffer, *MEMORY[0x277CC4EA8], v15, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v15);
    v16 = vcvtd_n_f64_u32(*(*(a1 + 7) + 120), 0xCuLL);
    v46 = v16;
    v17 = CFNumberCreate(v10, kCFNumberFloat32Type, &v46);
    CVBufferSetAttachment(pixelBuffer, *MEMORY[0x277CC4E98], v17, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v17);
  }

  v18 = *(a1 + 4);
  if (v18)
  {
    v19 = CFNumberCreate(v10, kCFNumberSInt32Type, (v18 + 8));
    CVBufferSetAttachment(pixelBuffer, *MEMORY[0x277CC4EA0], v19, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v19);
  }

  v20 = *(a1 + 2);
  if (v20)
  {
    v21 = *(a1 + 55);
    v22 = 1.0;
    if (v21 && *(v21 + 2))
    {
      v23 = vcvtd_n_f64_u32(*(v21 + 22), 0xCuLL);
      v22 = v23;
    }

    v24 = v22 * (*(v20 + 5252) * 0.00390625);
    v46 = v24;
    v25 = CFNumberCreate(v10, kCFNumberFloat32Type, &v46);
    CVBufferSetAttachment(pixelBuffer, *MEMORY[0x277CC4E78], v25, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v25);
  }

  if (*(a1 + 7))
  {
    v54 = 0;
    *bytes = 0u;
    v53 = 0u;
    v57 = 1064519457;
    v55 = xmmword_2249BBE88;
    v56 = unk_2249BBE98;
    v26 = CVBufferCopyAttachments(pixelBuffer, kCVAttachmentMode_ShouldPropagate);
    if (v26)
    {
      v27 = v26;
      value[0] = 0;
      v28 = *MEMORY[0x277CC4C90];
      if (CFDictionaryGetValueIfPresent(v26, *MEMORY[0x277CC4C90], value) && CFStringCompare(value[0], *MEMORY[0x277CC4C98], 0) == kCFCompareEqualTo)
      {
        v57 = 1065864796;
        v55 = xmmword_2249BBEAC;
        v56 = unk_2249BBEBC;
      }

      else if (a3)
      {
        v29 = CVBufferCopyAttachments(a3, kCVAttachmentMode_ShouldPropagate);
        if (v29)
        {
          v30 = v29;
          if (CFDictionaryGetValueIfPresent(v29, v28, value) && CFStringCompare(value[0], *MEMORY[0x277CC4C98], 0) == kCFCompareEqualTo)
          {
            v57 = 1065864796;
            v55 = xmmword_2249BBEAC;
            v56 = unk_2249BBEBC;
          }

          CFRelease(v30);
        }
      }

      CFRelease(v27);
    }

    v32 = 0;
    v33 = *(a1 + 7);
    v51 = *(v33 + 110);
    v50 = *(v33 + 94);
    v49[0] = (SWORD1(v50) + v50 + SWORD2(v50));
    v49[1] = (SWORD4(v50) + SWORD3(v50) + SWORD5(v50));
    v49[2] = (SHIWORD(v50) + SWORD6(v50) + v51);
    do
    {
      *(value + v32) = *(&v50 + v32) / v49[v32 / 3u];
      ++v32;
    }

    while (v32 != 9);
    v34 = 0;
    v35 = &v55;
    do
    {
      v36 = 0;
      v37 = 3 * v34;
      v38 = value;
      do
      {
        v39 = 0;
        v40 = *&bytes[4 * v36 + 4 * v37];
        v41 = v38;
        do
        {
          v42 = *v41;
          v41 += 3;
          v40 = v40 + (*(v35 + v39) * v42);
          v39 += 4;
        }

        while (v39 != 12);
        *&bytes[4 * v36++ + 4 * v37] = v40;
        v38 = (v38 + 4);
      }

      while (v36 != 3);
      ++v34;
      v35 = (v35 + 12);
    }

    while (v34 != 3);
    v43 = CFDataCreate(v10, bytes, 36);
    if (v43)
    {
      v44 = v43;
      CVBufferSetAttachment(pixelBuffer, *MEMORY[0x277CC4E70], v43, kCVAttachmentMode_ShouldPropagate);
      CFRelease(v44);
    }
  }

  return 0;
}

void LightSourceMaskInfoAttach(__CVBuffer *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v7)
      {
        v10 = v7;
        valuePtr = *(a2 + 2);
        v11 = CFNumberCreate(v4, kCFNumberSInt32Type, &valuePtr);
        if (v11)
        {
          v12 = v11;
          CFDictionarySetValue(v10, *MEMORY[0x277CF46F8], v11);
          CFRelease(v12);
        }

        Array = LightSourceMaskInfoCreateArray((a2 + 12));
        if (Array)
        {
          v14 = Array;
          CFDictionarySetValue(v10, *MEMORY[0x277CF4710], Array);
          CFRelease(v14);
        }

        v15 = LightSourceMaskInfoCreateArray((a2 + 28));
        if (v15)
        {
          v16 = v15;
          CFDictionarySetValue(v10, *MEMORY[0x277CF4708], v15);
          CFRelease(v16);
        }

        v17 = LightSourceMaskInfoCreateArray((a2 + 64));
        if (v17)
        {
          v18 = v17;
          CFDictionarySetValue(v10, *MEMORY[0x277CF4700], v17);
          CFRelease(v18);
        }

        v19 = CFNumberCreate(v4, kCFNumberSInt32Type, (a2 + 80));
        if (v19)
        {
          v20 = v19;
          CFDictionarySetValue(v10, *MEMORY[0x277CF4718], v19);
          CFRelease(v20);
        }

        CFDictionarySetValue(v6, *MEMORY[0x277CF4F08], v10);
        CFRelease(v10);
      }

      v30.origin.x = *(a2 + 108);
      v30.origin.y = *(a2 + 112);
      LODWORD(v8) = *(a2 + 116);
      LODWORD(v9) = *(a2 + 120);
      v30.size.width = v8;
      v30.size.height = v9;
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v30);
      if (DictionaryRepresentation)
      {
        v24 = DictionaryRepresentation;
        CFDictionarySetValue(v6, *MEMORY[0x277CF5318], DictionaryRepresentation);
        CFRelease(v24);
      }

      v31.origin.x = *(a2 + 124);
      v31.origin.y = *(a2 + 128);
      LODWORD(v22) = *(a2 + 132);
      LODWORD(v23) = *(a2 + 136);
      v31.size.width = v22;
      v31.size.height = v23;
      v25 = CGRectCreateDictionaryRepresentation(v31);
      if (v25)
      {
        v26 = v25;
        CFDictionarySetValue(v6, *MEMORY[0x277CF5300], v25);
        CFRelease(v26);
      }

      CVBufferSetAttachment(a1, *MEMORY[0x277CF3F70], v6, kCVAttachmentMode_ShouldPropagate);
      CFRelease(v6);
    }

    else
    {
      v28 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v28 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v28;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        LightSourceMaskInfoAttach();
      }
    }
  }

  else
  {
    v27 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v27 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v27;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LightSourceMaskInfoAttach();
    }
  }
}

void LightSourceMaskVersatileBayerPatternAttach(__CVBuffer *a1, int a2)
{
  if (CVPixelBufferGetPixelFormatType(a1) == 1651519537)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v4 = 3;
        goto LABEL_15;
      }

      if (a2 == 3)
      {
        v4 = 2;
LABEL_15:
        valuePtr = v4;
LABEL_16:
        v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
        if (v6)
        {
          v7 = v6;
          CVBufferSetAttachment(a1, *MEMORY[0x277CC4EC0], v6, kCVAttachmentMode_ShouldNotPropagate);
          CFRelease(v7);
        }

        return;
      }
    }

    else
    {
      if (!a2)
      {
LABEL_13:
        v4 = 1;
        goto LABEL_15;
      }

      if (a2 == 1)
      {
        valuePtr = 0;
        goto LABEL_16;
      }
    }

    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LightSourceMaskVersatileBayerPatternAttach();
    }

    goto LABEL_13;
  }
}

void ImageRegistrationInfoAttach(__CVBuffer *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v7)
      {
        v8 = v7;
        valuePtr = *(a2 + 4544);
        v9 = CFNumberCreate(v4, kCFNumberSInt32Type, &valuePtr);
        if (v9)
        {
          v12 = v9;
          CFDictionarySetValue(v8, *MEMORY[0x277CF45C8], v9);
          CFRelease(v12);
        }

        v42.origin.x = *(a2 + 4560);
        v42.origin.y = *(a2 + 4564);
        LODWORD(v10) = *(a2 + 4568);
        v42.size.width = v10;
        LODWORD(v11) = *(a2 + 4572);
        v42.size.height = v11;
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v42);
        if (DictionaryRepresentation)
        {
          v14 = DictionaryRepresentation;
          CFDictionarySetValue(v8, *MEMORY[0x277CF4598], DictionaryRepresentation);
          CFRelease(v14);
        }

        Array = ImageRegistrationInfoCreateArray((a2 + 4276));
        if (Array)
        {
          v16 = Array;
          CFDictionarySetValue(v8, *MEMORY[0x277CF45C0], Array);
          CFRelease(v16);
        }

        v17 = CFNumberCreate(v4, kCFNumberSInt32Type, (a2 + 4408));
        if (v17)
        {
          v20 = v17;
          CFDictionarySetValue(v8, *MEMORY[0x277CF45D0], v17);
          CFRelease(v20);
        }

        v43.origin.x = *(a2 + 4576);
        v43.origin.y = *(a2 + 4580);
        LODWORD(v18) = *(a2 + 4584);
        v43.size.width = v18;
        LODWORD(v19) = *(a2 + 4588);
        v43.size.height = v19;
        v21 = CGRectCreateDictionaryRepresentation(v43);
        if (v21)
        {
          v24 = v21;
          CFDictionarySetValue(v8, *MEMORY[0x277CF45B0], v21);
          CFRelease(v24);
        }

        LODWORD(v22) = *(a2 + 4592);
        v41.width = v22;
        LODWORD(v23) = *(a2 + 4596);
        v41.height = v23;
        v25 = CGSizeCreateDictionaryRepresentation(v41);
        if (v25)
        {
          v26 = v25;
          CFDictionarySetValue(v8, *MEMORY[0x277CF45A8], v25);
          CFRelease(v26);
        }

        v27 = CFNumberCreate(v4, kCFNumberFloatType, (a2 + 4488));
        if (v27)
        {
          v28 = v27;
          CFDictionarySetValue(v8, *MEMORY[0x277CF45A0], v27);
          CFRelease(v28);
        }

        v29 = CFNumberCreate(v4, kCFNumberSInt32Type, (a2 + 4548));
        if (v29)
        {
          v30 = v29;
          CFDictionarySetValue(v8, *MEMORY[0x277CF45B8], v29);
          CFRelease(v30);
        }

        v31 = ImageRegistrationInfoCreateArray((a2 + 4416));
        if (v31)
        {
          v32 = v31;
          CFDictionarySetValue(v8, *MEMORY[0x277CF4580], v31);
          CFRelease(v32);
        }

        v33 = CFNumberCreate(v4, kCFNumberSInt32Type, (a2 + 4552));
        if (v33)
        {
          v34 = v33;
          CFDictionarySetValue(v8, *MEMORY[0x277CF4590], v33);
          CFRelease(v34);
        }

        v35 = CFNumberCreate(v4, kCFNumberFloatType, (a2 + 4556));
        if (v35)
        {
          v36 = v35;
          CFDictionarySetValue(v8, *MEMORY[0x277CF4588], v35);
          CFRelease(v36);
        }

        CFDictionarySetValue(v6, *MEMORY[0x277CF4E38], v8);
        CFRelease(v8);
      }

      else
      {
        v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v39 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v39;
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          ImageRegistrationInfoAttach();
        }
      }

      CVBufferSetAttachment(a1, *MEMORY[0x277CF3F70], v6, kCVAttachmentMode_ShouldPropagate);
      CFRelease(v6);
    }

    else
    {
      v38 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v38 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v38;
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        ImageRegistrationInfoAttach();
      }
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
      ImageRegistrationInfoAttach();
    }
  }
}

void H16ISPParsePropertyValue(__CFDictionary *a1, __CFString *a2)
{
  v4 = CFGetTypeID(a2);
  if (v4 == FigCaptureStreamGetTypeID())
  {
    FigCaptureStreamGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage)
    {
      return;
    }

    v6 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, (DerivedStorage + 156));
    CFDictionaryAddValue(a1, @"CameraChannel", v6);
    v7 = v6;
LABEL_4:

    CFRelease(v7);
    return;
  }

  v8 = CFGetTypeID(a2);
  if (v8 == FigCaptureSynchronizedStreamsGroupGetTypeID())
  {
    FigCaptureSynchronizedStreamsGroupGetFigBaseObject();
    v9 = CMBaseObjectGetDerivedStorage();
    if (!v9)
    {
      return;
    }

    v10 = v9;
    v11 = *(v9 + 104);
    if (!v11)
    {
      return;
    }

    if (CFArrayGetCount(v11) < 1)
    {
      return;
    }

    Mutable = CFStringCreateMutable(0, 0);
    v13 = CFStringCreateMutable(0, 0);
    if (!Mutable)
    {
      return;
    }

    v14 = v13;
    if (!v13)
    {
      return;
    }

    LODWORD(idx) = 0;
    if (CFArrayGetCount(*(v10 + 104)) >= 1)
    {
      v15 = *MEMORY[0x277CBECE8];
      do
      {
        CFArrayGetValueAtIndex(*(v10 + 104), idx);
        FigCaptureStreamGetFigBaseObject();
        v16 = CMBaseObjectGetDerivedStorage();
        if (v16)
        {
          v17 = idx ? ", " : "";
          v18 = (v16 + 156);
          CFStringAppendFormat(Mutable, 0, @"%s%d", v17, *(v16 + 156));
          CFStringAppendFormat(v14, 0, @"%s%d", v17, idx);
          if (v18[4213] == 1)
          {
            v19 = CFNumberCreate(v15, kCFNumberIntType, v18);
            CFDictionaryAddValue(a1, @"MasterChannel", v19);
            CFRelease(v19);
            v20 = CFNumberCreate(v15, kCFNumberIntType, &idx);
            CFDictionaryAddValue(a1, @"MasterStream", v20);
            CFRelease(v20);
          }
        }

        v21 = idx + 1;
        LODWORD(idx) = idx + 1;
      }

      while (CFArrayGetCount(*(v10 + 104)) > v21);
    }

    CFDictionaryAddValue(a1, @"ActiveSyncGroupChannelIndex", Mutable);
    CFDictionaryAddValue(a1, @"ActiveSyncGroupStreamIndex", v14);
    CFRelease(Mutable);
    v22 = v14;
    goto LABEL_87;
  }

  v23 = CFGetTypeID(a2);
  if (v23 == CFArrayGetTypeID() && CFArrayGetCount(a2))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
    v25 = CFGetTypeID(ValueAtIndex);
    if (v25 == FigCaptureStreamGetTypeID())
    {
      v26 = CFStringCreateMutable(0, 0);
      v27 = CFStringCreateMutable(0, 0);
      if (!v26)
      {
        return;
      }

      v28 = v27;
      if (!v27)
      {
        return;
      }

      if (CFArrayGetCount(a2))
      {
        v29 = 0;
        do
        {
          CFArrayGetValueAtIndex(a2, v29);
          FigCaptureStreamGetFigBaseObject();
          v30 = CMBaseObjectGetDerivedStorage();
          if (v30)
          {
            if (v29)
            {
              v31 = ", ";
            }

            else
            {
              v31 = "";
            }

            CFStringAppendFormat(v26, 0, @"%s%d", v31, *(v30 + 156));
            CFStringAppendFormat(v28, 0, @"%s%d", v31, v29);
          }

          ++v29;
        }

        while (v29 < CFArrayGetCount(a2));
      }

      CFDictionaryAddValue(a1, @"CameraChannel", v26);
      CFDictionaryAddValue(a1, @"StreamIndex", v28);
      CFRelease(v26);
      v7 = v28;
      goto LABEL_4;
    }

    if (v25 == FigCaptureSynchronizedStreamsGroupGetTypeID())
    {
      v60 = *MEMORY[0x277CBECE8];
      v61 = MEMORY[0x277CBF128];
      v62 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      v63 = CFArrayCreateMutable(v60, 0, v61);
      v64 = CFArrayCreateMutable(v60, 0, v61);
      v65 = CFArrayCreateMutable(v60, 0, v61);
      theArray = v62;
      if (!v62 || !v63 || !v64 || !v65)
      {
        return;
      }

      v79 = v65;
      v80 = v64;
      if (CFArrayGetCount(a2) >= 1)
      {
        v66 = 0;
        do
        {
          CFArrayGetValueAtIndex(a2, v66);
          FigCaptureSynchronizedStreamsGroupGetFigBaseObject();
          v67 = CMBaseObjectGetDerivedStorage();
          if (v67)
          {
            v68 = v67;
            v69 = *(v67 + 104);
            if (v69)
            {
              if (CFArrayGetCount(v69) >= 1)
              {
                v70 = CFStringCreateMutable(0, 0);
                v71 = CFStringCreateMutable(0, 0);
                if (v70)
                {
                  v72 = v71;
                  if (v71)
                  {
                    valuePtr = 0;
                    if (CFArrayGetCount(*(v68 + 104)) >= 1)
                    {
                      do
                      {
                        CFArrayGetValueAtIndex(*(v68 + 104), v66);
                        FigCaptureStreamGetFigBaseObject();
                        v73 = CMBaseObjectGetDerivedStorage();
                        if (v73)
                        {
                          v74 = valuePtr ? ", " : "";
                          v75 = (v73 + 156);
                          CFStringAppendFormat(v70, 0, @"%s%d", v74, *(v73 + 156));
                          CFStringAppendFormat(v72, 0, @"%s%ld", v74, valuePtr);
                          if (v75[4213] == 1)
                          {
                            v76 = CFNumberCreate(v60, kCFNumberIntType, v75);
                            CFArrayAppendValue(theArray, v76);
                            CFRelease(v76);
                            v77 = CFNumberCreate(v60, kCFNumberIntType, &valuePtr);
                            CFArrayAppendValue(v63, v77);
                            CFRelease(v77);
                          }
                        }

                        v78 = ++valuePtr;
                      }

                      while (v78 < CFArrayGetCount(*(v68 + 104)));
                    }

                    CFArrayAppendValue(v80, v70);
                    CFArrayAppendValue(v79, v72);
                    CFRelease(v70);
                    CFRelease(v72);
                  }
                }
              }
            }
          }

          ++v66;
        }

        while (v66 < CFArrayGetCount(a2));
      }

      CFDictionaryAddValue(a1, @"MasterChannel", theArray);
      CFDictionaryAddValue(a1, @"MasterStream", v63);
      CFDictionaryAddValue(a1, @"ActiveSyncGroupChannelIndex", v80);
      CFDictionaryAddValue(a1, @"ActiveSyncGroupStreamIndex", v79);
      CFRelease(theArray);
      CFRelease(v63);
      CFRelease(v80);
      v22 = v79;
LABEL_87:
      CFRelease(v22);
      return;
    }

    if (v25 == CFNumberGetTypeID() || v25 == CFBooleanGetTypeID() || v25 == CFStringGetTypeID())
    {
      goto LABEL_98;
    }

    goto LABEL_62;
  }

  v32 = CFGetTypeID(a2);
  if (v32 != CFDictionaryGetTypeID())
  {
    v55 = CFGetTypeID(a2);
    if (v55 == CFNumberGetTypeID())
    {
      goto LABEL_98;
    }

    v56 = CFGetTypeID(a2);
    if (v56 == CFBooleanGetTypeID())
    {
      goto LABEL_98;
    }

    v57 = CFGetTypeID(a2);
    if (v57 == CFStringGetTypeID())
    {
      goto LABEL_98;
    }

    v25 = CFGetTypeID(a2);
LABEL_62:
    if (v25 != CFDataGetTypeID())
    {
      v58 = @"UNSUPPORTED_PROPERTY_TYPE";
      v59 = a1;
LABEL_99:

      CFDictionaryAddValue(v59, @"PropertyValue", v58);
      return;
    }

LABEL_98:
    v59 = a1;
    v58 = a2;
    goto LABEL_99;
  }

  Count = CFDictionaryGetCount(a2);
  v34 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  v35 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  if (v35)
  {
    if (v34)
    {
      CFDictionaryGetKeysAndValues(a2, v34, v35);
      v36 = *MEMORY[0x277CBECE8];
      v37 = MEMORY[0x277CBF128];
      v38 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      v39 = CFArrayCreateMutable(v36, 0, v37);
      if (v38)
      {
        v40 = v39;
        if (v39)
        {
          if (Count)
          {
            v41 = v34;
            v42 = v35;
            do
            {
              CFArrayAppendValue(v38, *v41);
              v43 = CFGetTypeID(*v42);
              if (v43 == CFArrayGetTypeID() || (v44 = CFGetTypeID(*v42), v44 == CFDictionaryGetTypeID()) || (v45 = CFGetTypeID(*v42), v45 == FigCaptureStreamGetTypeID()) || (v46 = CFGetTypeID(*v42), v46 == FigCaptureSynchronizedStreamsGroupGetTypeID()))
              {
                v47 = CFGetTypeID(*v42);
                if (v47 == CFArrayGetTypeID())
                {
                  if (CFArrayGetCount(*v42))
                  {
                    v48 = CFArrayGetValueAtIndex(*v42, 0);
                    v49 = CFGetTypeID(v48);
                    if (v49 != CFDictionaryGetTypeID())
                    {
                      v50 = CFArrayGetValueAtIndex(*v42, 0);
                      v51 = CFGetTypeID(v50);
                      if (v51 != FigCaptureStreamGetTypeID())
                      {
                        v52 = CFArrayGetValueAtIndex(*v42, 0);
                        v53 = CFGetTypeID(v52);
                        if (v53 != FigCaptureSynchronizedStreamsGroupGetTypeID())
                        {
LABEL_57:
                          CFArrayAppendValue(v40, *v42);
                          goto LABEL_54;
                        }
                      }
                    }
                  }
                }

                H16ISPParsePropertyValue(a1, *v42);
              }

              else
              {
                v54 = CFGetTypeID(*v42);
                if (v54 != CFNullGetTypeID())
                {
                  goto LABEL_57;
                }
              }

LABEL_54:
              ++v42;
              ++v41;
              --Count;
            }

            while (Count);
          }

          CFDictionaryAddValue(a1, @"PropertyConfigurationKey", v38);
          if (CFArrayGetCount(v40) > 0)
          {
            CFDictionaryAddValue(a1, @"PropertyConfigurationValue", v40);
          }

          CFRelease(v38);
          CFRelease(v40);
        }
      }
    }
  }

  free(v34);

  free(v35);
}

void FlushCaptureDeviceEvent(uint64_t a1)
{
  if (a1 && *(a1 + 192))
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - *(a1 + 200) <= 1.0)
    {
      v3 = *(a1 + 184);
      if (v3 < *(a1 + 176))
      {
        *(a1 + 184) = v3 + 1;
        return;
      }
    }

    *(a1 + 200) = Current;
    *(a1 + 184) = 0;
    v4 = *MEMORY[0x277CBECE8];
    Copy = CFArrayCreateCopy(*MEMORY[0x277CBECE8], *(a1 + 160));
    if (Copy)
    {
      v6 = Copy;
      v7 = CFStringCreateWithCString(v4, "events.plist", 0x8000100u);
      if (v7)
      {
        v8 = v7;
        v9 = CFURLCreateCopyAppendingPathComponent(v4, *(a1 + 192), v7, 0);
        if (v9)
        {
          v10 = v9;
          v11 = CFURLCopyPath(v9);
          if (v11)
          {
            v12 = CFStringCreateWithCString(v4, "events.plist.tmp", 0x8000100u);
            if (v12)
            {
              v13 = CFURLCreateCopyAppendingPathComponent(v4, *(a1 + 192), v12, 0);
              v14 = v13;
              if (v13)
              {
                v15 = CFURLCopyPath(v13);
                if (v15)
                {
                  CFRetain(v6);
                  CFRetain(v11);
                  CFRetain(v14);
                  CFRetain(v15);
                  v16 = *(a1 + 208);
                  v18[0] = MEMORY[0x277D85DD0];
                  v18[1] = 0x40000000;
                  v18[2] = ___Z23FlushCaptureDeviceEventP19H16ISPCaptureDevice_block_invoke;
                  v18[3] = &__block_descriptor_tmp_1;
                  v18[4] = v14;
                  v18[5] = v6;
                  v18[6] = v11;
                  v18[7] = v15;
                  dispatch_async(v16, v18);
                }

                goto LABEL_22;
              }

LABEL_21:
              v15 = 0;
LABEL_22:
              CFRelease(v6);
              CFRelease(v10);
              CFRelease(v8);
              if (v11)
              {
                CFRelease(v11);
              }

              if (v12)
              {
                CFRelease(v12);
              }

              if (v14)
              {
                CFRelease(v14);
              }

              if (v15)
              {
                CFRelease(v15);
              }

              return;
            }
          }

          else
          {
            v12 = 0;
          }

          v14 = 0;
          goto LABEL_21;
        }

        CFRelease(v6);
        v17 = v8;
      }

      else
      {
        v17 = v6;
      }

      CFRelease(v17);
    }
  }
}

void ___Z23FlushCaptureDeviceEventP19H16ISPCaptureDevice_block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = CFWriteStreamCreateWithFile(*MEMORY[0x277CBECE8], *(a1 + 32));
  if (!v3)
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      ___Z23FlushCaptureDeviceEventP19H16ISPCaptureDevice_block_invoke_cold_5();
    }

    goto LABEL_22;
  }

  v4 = v3;
  if (!CFWriteStreamOpen(v3))
  {
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      ___Z23FlushCaptureDeviceEventP19H16ISPCaptureDevice_block_invoke_cold_4();
    }

    goto LABEL_21;
  }

  Mutable = CFDictionaryCreateMutable(v2, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
LABEL_20:
    CFWriteStreamClose(v4);
LABEL_21:
    CFRelease(v4);
    goto LABEL_22;
  }

  v6 = Mutable;
  CFDictionaryAddValue(Mutable, @"CameraEventLog", *(a1 + 40));
  v7 = CFPropertyListWrite(v6, v4, kCFPropertyListXMLFormat_v1_0, 0, 0);
  CFRelease(v6);
  if (v7 <= 0)
  {
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      ___Z23FlushCaptureDeviceEventP19H16ISPCaptureDevice_block_invoke_cold_1();
    }

    goto LABEL_20;
  }

  CFWriteStreamClose(v4);
  CFRelease(v4);
  CStringPtr = CFStringGetCStringPtr(*(a1 + 48), 0x8000100u);
  if (CStringPtr)
  {
    v9 = CStringPtr;
    v10 = CFStringGetCStringPtr(*(a1 + 56), 0x8000100u);
    if (v10)
    {
      rename(v10, v9, v11);
      goto LABEL_22;
    }

    goto LABEL_28;
  }

  v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v15 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    ___Z23FlushCaptureDeviceEventP19H16ISPCaptureDevice_block_invoke_cold_2();
  }

  if (!CFStringGetCStringPtr(*(a1 + 56), 0x8000100u))
  {
LABEL_28:
    v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v16 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      ___Z23FlushCaptureDeviceEventP19H16ISPCaptureDevice_block_invoke_cold_3();
    }
  }

LABEL_22:
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 48));
  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 56));
}

void SetSupportedFormats(__CFDictionary *a1, int *a2, int a3, char a4)
{
  valuePtr = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v9 = MEMORY[0x277CC4E30];
  if (!a3)
  {
    v9 = MEMORY[0x277CF66D8];
  }

  if (Mutable)
  {
    v10 = Mutable;
    v11 = *v9;
    v12 = *a2;
    if (*a2)
    {
      v13 = a2 + 1;
      do
      {
        valuePtr = v12;
        if ((a4 & 1) != 0 || !H16ISP::getFrameFormatMetaInfo(v12, &v16) || v17 != 2)
        {
          v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          CFArrayAppendValue(v10, v14);
          CFRelease(v14);
        }

        v15 = *v13++;
        v12 = v15;
      }

      while (v15);
    }

    CFDictionarySetValue(a1, v11, v10);
    CFRelease(v10);
  }
}

uint64_t ExclaveSetMinimumAutoExposureFrameRate(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (isExclaveAlgoEnabled(a2) && !*(a2 + 2924))
  {
    return 0;
  }

  if (a1 && (v4 = *(a1 + 24)) != 0 && *(*(v4 + 4304) + 681) == 1)
  {
    v5 = ExclaveComputeMinOrMaxFrameRate(a2, 1);
  }

  else
  {
    v5 = *(a2 + 56);
  }

  v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  v7 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v6 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a2 + 156);
    v12 = 136315650;
    v13 = "ExclaveSetMinimumAutoExposureFrameRate";
    v14 = 1024;
    v15 = v8;
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_DEFAULT, "%s - channel=%u frameRate=%f\n", &v12, 0x1Cu);
  }

  v9 = H16ISP::H16ISPDevice::SetMinimumFrameRate(*(a1 + 24), *(a2 + 156));
  if (v9)
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v7)
    {
      v10 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ExclaveSetMinimumAutoExposureFrameRate();
    }
  }

  return v9;
}

float ExclaveComputeMinOrMaxFrameRate(uint64_t a1, int a2)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (*(a1 + 2920) == 1)
  {
    v4 = *(a1 + 2960);
    v31 = v4;
    v5 = (a1 + 52);
    if (v4 != 0.0 && *v5 >= v4)
    {
      v5 = &v31;
    }

    v27 = *v5;
    std::vector<float>::push_back[abi:ne200100](&v28, &v27);
  }

  if (*(a1 + 2945))
  {
LABEL_7:
    v6 = *(a1 + 2956);
    v31 = v6;
    v7 = (a1 + 52);
    if (v6 != 0.0 && *v7 >= v6)
    {
      v7 = &v31;
    }

    v27 = *v7;
    std::vector<float>::push_back[abi:ne200100](&v28, &v27);
  }

  else
  {
    v18 = 0;
    while (v18 != 8)
    {
      v19 = *(a1 + 2946 + v18++);
      if (v19 == 1)
      {
        if ((v18 - 1) <= 7)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  if (*(a1 + 2943) == 1)
  {
    v8 = *(a1 + 3008);
    v31 = v8;
    v9 = (a1 + 52);
    if (v8 != 0.0 && *v9 >= v8)
    {
      v9 = &v31;
    }

    v27 = *v9;
    std::vector<float>::push_back[abi:ne200100](&v28, &v27);
  }

  if (*(a1 + 2941) == 1)
  {
    v10 = *(a1 + 3016);
    v31 = v10;
    v11 = (a1 + 52);
    if (v10 != 0.0 && *v11 >= v10)
    {
      v11 = &v31;
    }

    v27 = *v11;
    std::vector<float>::push_back[abi:ne200100](&v28, &v27);
  }

  if (a2)
  {
    if (v28 == v29)
    {
      v13 = (a1 + 56);
    }

    else
    {
      v12 = v28 + 1;
      v13 = v28;
      if (v28 + 1 != v29)
      {
        v14 = *v28;
        v13 = v28;
        v15 = v28 + 1;
        do
        {
          v16 = *v15++;
          v17 = v16;
          if (v16 < v14)
          {
            v14 = v17;
            v13 = v12;
          }

          v12 = v15;
        }

        while (v15 != v29);
      }
    }
  }

  else if (v28 == v29)
  {
    v13 = (a1 + 52);
  }

  else
  {
    v20 = v28 + 1;
    v13 = v28;
    if (v28 + 1 != v29)
    {
      v21 = *v28;
      v13 = v28;
      v22 = v28 + 1;
      do
      {
        v23 = *v22++;
        v24 = v23;
        if (v21 < v23)
        {
          v21 = v24;
          v13 = v20;
        }

        v20 = v22;
      }

      while (v22 != v29);
    }
  }

  v25 = *v13;
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return v25;
}

void sub_2248B15F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
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

uint64_t ExclaveSetMaximumAutoExposureFrameRate(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (isExclaveAlgoEnabled(a2) && !*(a2 + 2924))
  {
    return 0;
  }

  if (a1 && (v4 = *(a1 + 24)) != 0 && *(*(v4 + 4304) + 681) == 1)
  {
    v5 = ExclaveComputeMinOrMaxFrameRate(a2, 0);
  }

  else
  {
    v5 = *(a2 + 52);
  }

  v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  v7 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v6 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a2 + 156);
    v12 = 136315650;
    v13 = "ExclaveSetMaximumAutoExposureFrameRate";
    v14 = 1024;
    v15 = v8;
    v16 = 2048;
    v17 = v5;
    _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_DEFAULT, "%s - channel=%u frameRate=%f\n", &v12, 0x1Cu);
  }

  v9 = H16ISP::H16ISPDevice::SetMaximumFrameRate(*(a1 + 24), *(a2 + 156));
  if (v9)
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v7)
    {
      v10 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ExclaveSetMaximumAutoExposureFrameRate();
    }
  }

  return v9;
}

uint64_t ExclaveSetTargetFrameRate(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return 0;
  }

  if (*(*(v3 + 4304) + 681) != 1)
  {
    return 0;
  }

  v5 = (a2 + 156);
  if (!H16ISP::H16ISPDevice::isSensorType(v3, *(a2 + 156), 1718775412) && !H16ISP::H16ISPDevice::isSensorType(*(a1 + 24), *v5, 1718776695))
  {
    return 0;
  }

  if (*(a2 + 58176) != 1)
  {
    return 0;
  }

  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v6 = 0.0;
  if (*(a2 + 2941) == 1)
  {
    v7 = *(a2 + 3016);
    *buf = v7;
    v8 = (a2 + 52);
    if (v7 != 0.0 && *v8 >= v7)
    {
      v8 = buf;
    }

    v6 = *v8;
  }

  ExclaveSetFrameRateBucket(&v60, 5u, v6);
  v9 = 0.0;
  if (*(a2 + 2943) == 1)
  {
    v10 = *(a2 + 3008);
    *buf = v10;
    v11 = (a2 + 52);
    if (v10 != 0.0 && *v11 >= v10)
    {
      v11 = buf;
    }

    v9 = *v11;
  }

  ExclaveSetFrameRateBucket(&v60, 9u, v9);
  v12 = 0.0;
  if (*(a2 + 2920) == 1)
  {
    v13 = *(a2 + 2960);
    *buf = v13;
    v14 = (a2 + 52);
    if (v13 != 0.0 && *v14 >= v13)
    {
      v14 = buf;
    }

    v12 = *v14;
  }

  ExclaveSetFrameRateBucket(&v60, 6u, v12);
  if (*(a2 + 2945))
  {
LABEL_23:
    v15 = *(a2 + 2956);
    *buf = v15;
    v16 = (a2 + 52);
    if (v15 != 0.0 && *v16 >= v15)
    {
      v16 = buf;
    }

    v17 = *v16;
  }

  else
  {
    v30 = 0;
    v17 = 0.0;
    while (v30 != 8)
    {
      v31 = *(a2 + 2946 + v30++);
      if (v31 == 1)
      {
        if ((v30 - 1) <= 7)
        {
          goto LABEL_23;
        }

        break;
      }
    }
  }

  ExclaveSetFrameRateBucket(&v60, 8u, v17);
  v18 = *(a1 + 24);
  if (v18 && *(*(v18 + 4304) + 104 * *v5 + 108) == 1)
  {
    v19 = 0.0;
    if (v61 != v60.i64[1])
    {
      v20 = (v60.i64[1] + 8 * (v62 >> 4));
      v21 = *v20;
      v22 = *v20 + 260 * (v62 & 0xF);
      v23 = *(v60.i64[1] + (((*(&v62 + 1) + v62) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 260 * ((DWORD2(v62) + v62) & 0xF);
      while (v22 != v23)
      {
        if (*(v22 + 256) > v19)
        {
          v19 = *(v22 + 256);
        }

        v22 += 260;
        if (v22 - v21 == 4160)
        {
          v24 = v20[1];
          ++v20;
          v21 = v24;
          v22 = v24;
        }
      }
    }

    if (*(a2 + 2944) == 1 && v19 == 0.0)
    {
      v19 = *(a2 + 52);
      v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v25 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v25;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v74 = "ExclaveSetANDKFrameRateBucket";
        v75 = 2048;
        *v76 = v19;
        _os_log_impl(&dword_2247DB000, v25, OS_LOG_TYPE_DEFAULT, "%s - baseline streaming frameRate=%f\n", buf, 0x16u);
      }
    }

    ExclaveSetFrameRateBucket(&v60, 0xAu, v19);
  }

  if (!*(&v62 + 1) || (v26 = (v60.i64[1] + 8 * (v62 >> 4)), v27 = *v26 + 260 * (v62 & 0xF), *(v27 + 256) == 0.0))
  {
    std::deque<ExclaveFrameRateBucket>::~deque[abi:ne200100](&v60);
    return 0;
  }

  if (v61 != v60.i64[1])
  {
    v32 = *(v60.i64[1] + (((v62 + *(&v62 + 1)) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 260 * ((v62 + DWORD2(v62)) & 0xF);
    if (v27 != v32)
    {
      while (1)
      {
        if (H16ISP::H16ISPDevice::enabledExclaveDebug(*(a1 + 24)))
        {
          v33 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
          {
            v33 = os_log_create("com.apple.isp", "exclaves");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v33;
          }

          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = 0;
            v35 = 0;
            v36 = *v5;
            do
            {
              if (*(v27 + v34))
              {
                v37 = 1 << v34;
              }

              else
              {
                v37 = 0;
              }

              v35 |= v37;
              ++v34;
            }

            while (v34 != 13);
            v38 = *(v27 + 256);
            *buf = 136315906;
            v74 = "ExclaveSendFrameRateToService";
            v75 = 1024;
            *v76 = v36;
            *&v76[4] = 2048;
            *&v76[6] = v38;
            v77 = 1024;
            v78 = v35;
            _os_log_impl(&dword_2247DB000, v33, OS_LOG_TYPE_DEFAULT, "%s - channel=%u frameRate=%f algorithms=0x%08x\n", buf, 0x22u);
          }
        }

        v39 = *v5;
        v40 = *(v27 + 256);
        bzero(&v74, 0x318uLL);
        v79 = v39;
        *buf = 65544;
        v95 = v40;
        v41 = *v27;
        v42 = *(v27 + 16);
        v43 = *(v27 + 48);
        v82 = *(v27 + 32);
        v83 = v43;
        v80 = v41;
        v81 = v42;
        v44 = *(v27 + 64);
        v45 = *(v27 + 80);
        v46 = *(v27 + 112);
        v86 = *(v27 + 96);
        v87 = v46;
        v84 = v44;
        v85 = v45;
        v47 = *(v27 + 128);
        v48 = *(v27 + 144);
        v49 = *(v27 + 176);
        v90 = *(v27 + 160);
        v91 = v49;
        v88 = v47;
        v89 = v48;
        v50 = *(v27 + 192);
        v51 = *(v27 + 208);
        v52 = *(v27 + 224);
        *(v94 + 15) = *(v27 + 239);
        v93 = v51;
        v94[0] = v52;
        v92 = v50;
        v53 = ispExclaveKitCommand();
        if (v53 || (v96 & 1) == 0)
        {
          break;
        }

        v27 += 260;
        if (v27 - *v26 == 4160)
        {
          v54 = v26[1];
          ++v26;
          v27 = v54;
        }

        if (v27 == v32)
        {
          v55 = v97;
          std::deque<ExclaveFrameRateBucket>::~deque[abi:ne200100](&v60);
          v56 = *v5;
          if (H16ISP::H16ISPDevice::enabledExclaveDebug(*(a1 + 24)))
          {
            v57 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
            {
              v57 = os_log_create("com.apple.isp", "exclaves");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v57;
            }

            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v74 = "ExclaveSendFrameRateToFirmware";
              v75 = 1024;
              *v76 = v56;
              *&v76[4] = 2048;
              *&v76[6] = v55;
              _os_log_impl(&dword_2247DB000, v57, OS_LOG_TYPE_DEFAULT, "%s - channel=%u frameRate=%f\n", buf, 0x1Cu);
            }
          }

          v28 = H16ISP::H16ISPDevice::SetExclaveTargetFrameRate(*(a1 + 24), v56, v55);
          if (v28)
          {
            v58 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
            {
              v58 = os_log_create("com.apple.isp", "exclaves");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v58;
            }

            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              ExclaveSetTargetFrameRate();
            }
          }

          return v28;
        }
      }

      v59 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v59 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v59;
      }

      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *v63 = 136316162;
        v64 = "ExclaveSendFrameRateToServiceInternal";
        v65 = 1024;
        v66 = v39;
        v67 = 2048;
        v68 = v40;
        v69 = 1024;
        v70 = v53;
        v71 = 1024;
        v72 = v96;
        _os_log_error_impl(&dword_2247DB000, v59, OS_LOG_TYPE_ERROR, "%s - failed to send frame rate ch=%u frameRate=%f err=%u success=%{BOOL}d\n", v63, 0x28u);
        v59 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      }

      if (v59 == MEMORY[0x277D86220])
      {
        v59 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v59;
      }

      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        ExclaveSetTargetFrameRate();
      }
    }
  }

  std::deque<ExclaveFrameRateBucket>::~deque[abi:ne200100](&v60);
  return 3758097084;
}

void ExclaveSetFrameRateBucket(int64x2_t *a1, unsigned int a2, float a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1->i64[1];
  if (a1[1].i64[0] == v3 || (v4 = a1[2].u64[0], v5 = (v3 + 8 * (v4 >> 4)), v6 = *v5 + 260 * (v4 & 0xF), v7 = *(v3 + (((a1[2].i64[1] + v4) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 260 * ((a1[2].i32[2] + v4) & 0xF), v6 == v7))
  {
LABEL_7:
    memset(v9, 0, sizeof(v9));
    *(v9 + a2) = 1;
    v10 = a3;
    if (a3 == 0.0)
    {
      std::deque<ExclaveFrameRateBucket>::push_back(a1, v9);
    }

    else
    {
      std::deque<ExclaveFrameRateBucket>::push_front(a1, v9);
    }
  }

  else
  {
    while (*(v6 + 256) != a3)
    {
      v6 += 260;
      if (v6 - *v5 == 4160)
      {
        v8 = v5[1];
        ++v5;
        v6 = v8;
      }

      if (v6 == v7)
      {
        goto LABEL_7;
      }
    }

    *(v6 + a2) = 1;
  }
}

int64x2_t std::deque<ExclaveFrameRateBucket>::push_front(int64x2_t *a1, void *__src)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    std::deque<ExclaveFrameRateBucket>::__add_front_capacity(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 >> 4));
  v7 = *v6 + 260 * (v4 & 0xF);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4160;
  }

  memcpy((v7 - 260), __src, 0x104uLL);
  result = vaddq_s64(a1[2], xmmword_2249BBD40);
  a1[2] = result;
  return result;
}

void *std::deque<ExclaveFrameRateBucket>::push_back(void *a1, void *__src)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 2 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<ExclaveFrameRateBucket>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = memcpy((*(v5 + ((v7 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 260 * (v7 & 0xF)), __src, 0x104uLL);
  ++a1[5];
  return result;
}

const void **std::deque<ExclaveFrameRateBucket>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2 * (v2 - v1) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x10)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::allocator<ExclaveFrameRateBucket *>::allocate_at_least[abi:ne200100](a1, v10);
  }

  *(a1 + 32) = v5 + 16;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<ExclaveFrameRateBucket *>::emplace_front<ExclaveFrameRateBucket *&>(a1, v11);
}

void sub_2248B2500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **std::__split_buffer<ExclaveFrameRateBucket *>::emplace_front<ExclaveFrameRateBucket *&>(const void **result, void *a2)
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

      std::allocator<ExclaveFrameRateBucket *>::allocate_at_least[abi:ne200100](result, v9);
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

      std::allocator<ExclaveFrameRateBucket *>::allocate_at_least[abi:ne200100](result[4], v9);
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

void *std::__split_buffer<ExclaveFrameRateBucket *>::emplace_back<ExclaveFrameRateBucket *>(void *result, void *a2)
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

      std::allocator<ExclaveFrameRateBucket *>::allocate_at_least[abi:ne200100](result, v11);
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

      std::allocator<ExclaveFrameRateBucket *>::allocate_at_least[abi:ne200100](result[4], v11);
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

void *std::deque<ExclaveFrameRateBucket>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x10;
  v3 = v1 - 16;
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
    std::allocator<ExclaveFrameRateBucket *>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<ExclaveFrameRateBucket *>::emplace_back<ExclaveFrameRateBucket *>(a1, &v10);
}

void sub_2248B29F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<ExclaveFrameRateBucket>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 8;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 16;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<__CVBuffer **>::~__split_buffer(a1);
}

uint64_t GetProjectorTypeFromDictionary(const void *a1, int *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  IntDictionaryValue = getIntDictionaryValue(a1, *MEMORY[0x277CF45E0]);
  v6 = getIntDictionaryValue(a1, *MEMORY[0x277CF45E8]);
  v7 = getIntDictionaryValue(a1, *MEMORY[0x277CF45F0]);
  v8 = v6 == 1;
  if (dword_281003358 == 2)
  {
    if (v6 == 1)
    {
      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_INFO, "SetInfraredLightSourceConfiguration: forcing high-power mode\n", v15, 2u);
      }
    }

    v8 = 0;
  }

  else if (dword_281003358 == 1)
  {
    if (v6 == 1)
    {
      v8 = 1;
    }

    else
    {
      v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v14 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
      }

      v8 = 1;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2247DB000, v14, OS_LOG_TYPE_INFO, "SetInfraredLightSourceConfiguration: forcing low-power mode\n", buf, 2u);
      }
    }
  }

  result = 4294954516;
  if (IntDictionaryValue > 1)
  {
    if (IntDictionaryValue == 2)
    {
      v12 = !v8;
      if (v7 == 1)
      {
        v11 = 4;
        v13 = 11;
      }

      else
      {
        v11 = 5;
        v13 = 12;
      }
    }

    else
    {
      if (IntDictionaryValue != 3)
      {
        return result;
      }

      v12 = !v8;
      if (v7 == 1)
      {
        v11 = 6;
        v13 = 13;
      }

      else
      {
        v11 = 7;
        v13 = 14;
      }
    }

    if (!v12)
    {
      v11 = v13;
    }
  }

  else if ((IntDictionaryValue + 1) >= 2)
  {
    if (IntDictionaryValue != 1)
    {
      return result;
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  result = 0;
  *a2 = v11;
  return result;
}

uint64_t GetPerFrameTuningParam(const __CFDictionary *a1, uint64_t a2, _BYTE *a3)
{
  *a2 = 8421504;
  *(a2 + 12) = 2618;
  *(a2 + 28) = 0;
  *(a2 + 20) = 0x200000000;
  *(a2 + 44) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0x8080808080808080;
  v6 = a2 + 32;
  *(a2 + 52) = 0;
  *(a2 + 40) = 32896;
  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF6198]);
  v8 = MEMORY[0x277CBED28];
  if (Value && CFEqual(Value, *MEMORY[0x277CBED28]))
  {
    *(a2 + 3) = 1;
  }

  v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF61F8]);
  if (v9)
  {
    LOWORD(valuePtr) = 0;
    CFNumberGetValue(v9, kCFNumberSInt16Type, &valuePtr);
    if (valuePtr - 1 >= 3)
    {
      *(a2 + 4) = 0;
    }

    else
    {
      *(a2 + 4) = valuePtr;
      v10 = CFDictionaryGetValue(a1, *MEMORY[0x277CF61D0]);
      if (v10 && CFEqual(v10, *v8))
      {
        *(a2 + 44) = 1;
      }
    }
  }

  *(a2 + 53) = 0;
  v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6168]);
  if (v11)
  {
    valuePtr = 0;
    CFNumberGetValue(v11, kCFNumberIntType, &valuePtr);
    v12 = valuePtr;
    *(a2 + 54) = valuePtr & 1;
    if ((v12 & 2) != 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = 3;
    }

    *(a2 + 53) = v13;
  }

  if (a3[1304] == 1 && (a3[1376] & 1) != 0 || a3[1504] == 1 && (a3[1576] & 1) != 0 || a3[2504] == 1 && a3[4256] == 1)
  {
    *(a2 + 54) = 1;
  }

  v14 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6188]);
  v15 = CFDictionaryGetValue(a1, *MEMORY[0x277CF61A8]);
  if (!v14 || !v15)
  {
    if (v14 || !v15)
    {
      goto LABEL_35;
    }

    valuePtr = 0;
    CFNumberGetValue(v15, kCFNumberIntType, &valuePtr);
    v17 = valuePtr;
    if (valuePtr != 1)
    {
      if (valuePtr == 2)
      {
        v17 = 1;
        v18 = 1;
LABEL_34:
        *(a2 + 45) = v17;
        *(a2 + 48) = v18;
        goto LABEL_35;
      }

      v17 = 0;
    }

    v18 = 0;
    goto LABEL_34;
  }

  valuePtr = 0;
  CFNumberGetValue(v15, kCFNumberIntType, &valuePtr);
  *(a2 + 45) = CFEqual(v14, *v8) != 0;
  v16 = valuePtr;
  if ((valuePtr - 1) >= 3)
  {
    v16 = 0;
  }

  *(a2 + 48) = v16;
LABEL_35:
  v19 = CFDictionaryGetValue(a1, @"ChromaticAberrationReductionEnabled");
  if (v19 && CFEqual(v19, *v8))
  {
    *(a2 + 52) = 1;
  }

  v20 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6158]);
  if (v20 && CFEqual(v20, *v8))
  {
    *(a2 + 42) = 1;
  }

  v21 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6148]);
  if (v21 && CFEqual(v21, *v8))
  {
    *(a2 + 43) = 1;
  }

  result = CFDictionaryGetValue(a1, *MEMORY[0x277CF61C0]);
  if (result)
  {
    v23 = result;
    valuePtr = 0;
    v24 = CFDictionaryGetValue(result, *MEMORY[0x277CF53A0]);
    if (v24)
    {
      CFNumberGetValue(v24, kCFNumberSInt32Type, &valuePtr);
      v25 = valuePtr;
    }

    else
    {
      v25 = 0;
    }

    *(a2 + 1) = v25;
    v26 = CFDictionaryGetValue(v23, *MEMORY[0x277CF53A8]);
    if (v26)
    {
      CFNumberGetValue(v26, kCFNumberSInt32Type, &valuePtr);
    }

    *a2 = valuePtr;
    v27 = CFDictionaryGetValue(v23, *MEMORY[0x277CF5390]);
    if (v27)
    {
      CFNumberGetValue(v27, kCFNumberSInt32Type, &valuePtr);
    }

    *(a2 + 2) = valuePtr;
    result = CFDictionaryGetValue(v23, *MEMORY[0x277CF5398]);
    if (result)
    {
      v28 = result;
      v29 = CFDictionaryGetValue(result, *MEMORY[0x277CF5378]);
      if (v29 && (v30 = *v8, CFEqual(v29, *v8)))
      {
        v31 = CFDictionaryGetValue(v28, *MEMORY[0x277CF5388]);
        v32 = v31 && CFEqual(v31, v30);
      }

      else
      {
        v32 = 2;
      }

      *(a2 + 24) = v32;
      v33 = CFDictionaryGetValue(v28, *MEMORY[0x277CF5368]);
      if (v33 && CFEqual(v33, *v8))
      {
        *(a2 + 28) = 1;
      }

      result = CFDictionaryGetValue(v28, *MEMORY[0x277CF5380]);
      if (result)
      {
        v34 = result;
        v35 = CFDictionaryGetValue(v28, *MEMORY[0x277CF5370]);
        result = CFArrayGetCount(v34);
        if (result >= 1)
        {
          v36 = result;
          v37 = 0;
          v38 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v34, v37);
            if (ValueAtIndex)
            {
              CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
            }

            v40 = (v6 + 2 * v37);
            *v40 = valuePtr;
            result = CFArrayGetValueAtIndex(v35, v37);
            if (result)
            {
              result = CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
            }

            v40[1] = valuePtr;
            v37 = ++v38;
          }

          while (v36 > v38);
        }
      }
    }
  }

  return result;
}

uint64_t AllocateAndSendOneShotBuffers(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v11 = 0;
  v38 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 698);
  v13 = MEMORY[0x277D86220];
  if (a2 && (*(a1 + 698) & 1) != 0)
  {
    if ((*(a1 + 1304) & 1) != 0 || *(a1 + 2504) == 1 && *(a1 + 4256) == 1)
    {
      v14 = H16ISP::H16ISPFrameReceiver::AllocateAndSendOneShotBuffers(*(a1 + 160), 7);
      if (v14)
      {
        goto LABEL_27;
      }

      v12 = *(a1 + 698);
      v11 = a2;
    }

    else
    {
      v11 = 0;
      v12 = 1;
    }
  }

  v15 = 0;
  if (a2 && (v12 & 1) != 0)
  {
    if (*(a1 + 1504) != 1)
    {
      v15 = 0;
      if (!a3)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v14 = H16ISP::H16ISPFrameReceiver::AllocateAndSendOneShotBuffers(*(a1 + 160), 9);
    v15 = a2;
    if (v14)
    {
      goto LABEL_27;
    }
  }

  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_16:
  v14 = H16ISP::H16ISPFrameReceiver::AllocateAndSendOneShotBuffers(*(a1 + 160), 20);
  if (v14)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (a6)
  {
    v16 = H16ISP::H16ISPFrameReceiver::AllocateAndSendOneShotBuffers(*(a1 + 160), 31);
    if (v16)
    {
      v17 = v16;
      v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v13)
      {
        v18 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        AllocateAndSendOneShotBuffers();
      }

      goto LABEL_28;
    }
  }

  if (a4 && (v14 = H16ISP::H16ISPFrameReceiver::AllocateAndSendOneShotBuffers(*(a1 + 160), 22), v14) || a5 && (v14 = H16ISP::H16ISPFrameReceiver::AllocateAndSendOneShotBuffers(*(a1 + 160), 23), v14))
  {
LABEL_27:
    v17 = v14;
LABEL_28:
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v13)
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      AllocateAndSendOneShotBuffers();
    }

    return v17;
  }

  v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v13)
  {
    v21 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
  }

  v17 = 0;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 156);
    *buf = 67110656;
    v25 = v22;
    v26 = 1024;
    v27 = v11;
    v28 = 1024;
    v29 = v15;
    v30 = 1024;
    v31 = a3;
    v32 = 1024;
    v33 = a4;
    v34 = 1024;
    v35 = a5;
    v36 = 1024;
    v37 = a6;
    _os_log_impl(&dword_2247DB000, v21, OS_LOG_TYPE_DEFAULT, "AllocateAndSendOneShotBuffers (channel %d): Sent still image buffers: still=%d, stillycc=%d, sushi=%d, sashimi=%d, fpc=%d CntxSw = %d\n", buf, 0x2Cu);
    return 0;
  }

  return v17;
}

uint64_t LaunchStillImageCapture(uint64_t a1, unsigned int *a2, unsigned __int8 *a3, unsigned int a4)
{
  if (a2[5])
  {
    v8 = 0;
    v9 = a2 + 18;
    do
    {
      v10 = *(*&v9[2 * v8 + 16] + 4248);
      v11 = dispatch_time(0, 1000000000 * a2[26] + 1000 * v9[v8]);
      dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      ++v8;
    }

    while (v8 < a2[5]);
  }

  if (!a3)
  {
    return 0;
  }

  v12 = H16ISP::H16ISPDevice::ISP_SendCommand(*(a1 + 24), a3, a4, 0, a2[25]);
  if (v12)
  {
    if (a2[5])
    {
      v13 = 0;
      v14 = a2 + 34;
      do
      {
        dispatch_source_set_timer(*(*&v14[2 * v13] + 4248), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
        v15 = *&v14[2 * v13];
        if (!*(v15 + 4888))
        {
          H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(v15 + 160), 31);
        }

        ++v13;
      }

      while (v13 < a2[5]);
    }

    v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v16 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LaunchStillImageCapture();
    }
  }

  return v12;
}

uint64_t HasFlashBracket(const __CFArray *a1)
{
  valuePtr = 0;
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  v5 = 0;
  v6 = *MEMORY[0x277CF6498];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
    if (ValueAtIndex)
    {
      Value = CFDictionaryGetValue(ValueAtIndex, v6);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
        v5 |= (valuePtr & 0xFFFFFFFE) == 4;
      }
    }

    ++v4;
  }

  while (v3 != v4);
  return v5 & 1;
}

void ConfigureExternalStrobeParameters(uint64_t a1, int a2, int a3)
{
  bzero(v6, 0x18uLL);
  v7 = 1578;
  v8 = a2;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a1 + 24), v6, 0x18u, 0, 0xFFFFFFFF))
  {
    ConfigureExternalStrobeParameters();
  }

  else if (v10 != a3)
  {
    v10 = a3;
    v9 = a3 ^ 1;
    v8 = a2;
    v7 = 1577;
    if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a1 + 24), v6, 0x18u, 0, 0xFFFFFFFF))
    {
      ConfigureExternalStrobeParameters();
    }
  }
}

uint64_t AddCntxSwRawPoolToFrameReceiver(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4888) || (v6 = *(a1 + 4936)) != 0 && *(v6 + 56))
  {
    v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v2 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v2;
    }

    v3 = 3758097095;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      AddCntxSwRawPoolToFrameReceiver();
    }
  }

  else
  {
    H16ISP::H16ISPDevice::GetPoolInfoExtended(*(a2 + 24), *(a1 + 156), 32, &v12);
    if (v7)
    {
      v3 = v7;
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        AddCntxSwRawPoolToFrameReceiver();
      }
    }

    else
    {
      v9 = *(a1 + 160);
      v10 = WORD1(v12);
      GetFormatForHiResRaw(a1, v13);
      v3 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v9, 31, v10);
      if (v3)
      {
        v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v11 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          AddCntxSwRawPoolToFrameReceiver();
        }
      }
    }
  }

  return v3;
}

uint64_t NumberOfClientRequestedHiResStillImageCaptures(const __CFArray *a1)
{
  if (CFArrayGetCount(a1) < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = *MEMORY[0x277CF61C8];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v3);
    if (ValueAtIndex && CFDictionaryContainsKey(ValueAtIndex, v4))
    {
      ++v2;
    }

    ++v3;
  }

  while (v3 < CFArrayGetCount(a1));
  return v2;
}

uint64_t GetPerFrameBracketParams(const __CFDictionary *a1, float32x2_t *a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 0;
  v39 = 0.0;
  v40 = 0.0;
  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF6200]);
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  if (valuePtr == 1)
  {
    a2->i8[6] = 1;
  }

  else if (valuePtr)
  {
    a2->i8[6] = 0;
  }

  else
  {
    a2->i8[6] = 0;
    v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF61B0]);
    if (v9)
    {
      CFNumberGetValue(v9, kCFNumberFloatType, &v40);
      a2->i16[0] = vcvtd_n_s64_f64(v40, 8uLL);
    }
  }

  v10 = CFDictionaryGetValue(a1, *MEMORY[0x277CF61C8]);
  if (!v10)
  {
    a2[2].i16[1] = *(*(a4 + 184) + 120 * *(a4 + 48) + 16);
    goto LABEL_15;
  }

  LODWORD(point.x) = 0;
  CFNumberGetValue(v10, kCFNumberSInt32Type, &point);
  x_low = LODWORD(point.x);
  a2[2].i16[1] = *(*(a4 + 184) + 120 * SLODWORD(point.x) + 16);
  v12 = CFDictionaryGetValue(a1, *MEMORY[0x277CF61E0]);
  if (!*(a4 + 4888))
  {
    v13 = v12;
    v14 = *(a4 + 4936);
    if (!v14 || !*(v14 + 56))
    {
      Mutable = *(a4 + 4800);
      if (Mutable)
      {
        if (v13)
        {
LABEL_13:
          CFArrayAppendValue(Mutable, v13);
          goto LABEL_15;
        }
      }

      else
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
        *(a4 + 4800) = Mutable;
        if (v13)
        {
          goto LABEL_13;
        }
      }

      BufferPool = H16ISP::H16ISPFrameReceiver::getBufferPool(*(a4 + 160), 31);
      v34 = *(a4 + 184) + 120 * x_low;
      LOBYTE(v36) = 0;
      v35 = H16ISP::H16ISPCreateCVBuffer(*(v34 + 4), *(v34 + 8), 0, 0, *(BufferPool + 40), 0, 0.0, 64, 128, 1792, v36, 0, 0, -1);
      CFArrayAppendValue(*(a4 + 4800), v35);
      CFRelease(v35);
    }
  }

LABEL_15:
  v16 = CFDictionaryGetValue(a1, *MEMORY[0x277CF61D8]);
  if (v16 && (CFNumberGetValue(v16, kCFNumberFloatType, &v39), v17 = v39, v39 != *MEMORY[0x277CF6140]))
  {
    a2->i8[5] = 1;
    a2->i16[1] = vcvtd_n_s64_f64(v17, 8uLL);
  }

  else
  {
    a2->i8[5] = 0;
  }

  v18 = CFDictionaryGetValue(a1, *MEMORY[0x277CF61F0]);
  if (v18)
  {
    valuePtr = 0;
    CFNumberGetValue(v18, kCFNumberIntType, &valuePtr);
    v19 = valuePtr;
  }

  else
  {
    v19 = 0;
  }

  a2[4].i8[7] = v19;
  v20 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6498]);
  if (!v20)
  {
    goto LABEL_42;
  }

  LODWORD(point.x) = 0;
  v38 = 0;
  CFNumberGetValue(v20, kCFNumberSInt32Type, &v38);
  v21 = v38;
  if (v38 > 2)
  {
    switch(v38)
    {
      case 3:
        v21 = 4;
        break;
      case 4:
        v21 = 6;
        break;
      case 5:
        break;
      default:
        goto LABEL_42;
    }

LABEL_41:
    a2->i8[4] = v21;
    goto LABEL_42;
  }

  switch(v38)
  {
    case 0:
      v21 = 1;
      goto LABEL_41;
    case 1:
      v21 = 2;
      goto LABEL_41;
    case 2:
      a2->i8[4] = 3;
      v22 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6180]);
      if (v22)
      {
        CFNumberGetValue(v22, kCFNumberFloatType, &point);
        a2[1].i32[0] = LODWORD(point.x);
      }

      v23 = CFDictionaryGetValue(a1, *MEMORY[0x277CF61A0]);
      if (v23)
      {
        CFNumberGetValue(v23, kCFNumberSInt32Type, &valuePtr);
        a2[1].i32[1] = valuePtr;
      }

      v24 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6170]);
      if (v24)
      {
        a2[2].i16[0] = CFEqual(v24, *MEMORY[0x277CBED28]);
      }

      else
      {
        a2[2].i16[0] = 0;
      }

      break;
  }

LABEL_42:
  v25 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6190]);
  if (v25)
  {
    a2[3].i8[0] = CFEqual(v25, *MEMORY[0x277CBED28]) != 0;
  }

  v26 = CFDictionaryGetValue(a1, *MEMORY[0x277CF61B8]);
  if (v26)
  {
    LODWORD(point.x) = 0;
    CFNumberGetValue(v26, kCFNumberFloatType, &point);
    a2[2].i32[1] = LODWORD(point.x);
  }

  v27 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6208]);
  if (v27)
  {
    LODWORD(point.x) = 0;
    CFNumberGetValue(v27, kCFNumberIntType, &point);
    if (LODWORD(point.x) <= 1)
    {
      a2[3].i8[1] = LOBYTE(point.x);
    }
  }

  v28 = CFDictionaryGetValue(a1, *MEMORY[0x277CF61E8]);
  if (v28 && CGPointMakeWithDictionaryRepresentation(v28, &point))
  {
    a2[5] = vcvt_f32_f64(point);
  }

  a2[3].i8[4] = 0;
  if (*(a4 + 4360))
  {
    v29 = CFDictionaryGetValue(a1, *MEMORY[0x277CF68F0]);
    if (v29)
    {
      a2[3].i8[4] = CFEqual(v29, *MEMORY[0x277CBED28]) != 0;
    }
  }

  v30 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6160]);
  if (v30)
  {
    a2[6].i8[0] = CFEqual(v30, *MEMORY[0x277CBED28]) != 0;
  }

  v31 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6178]);
  if (v31)
  {
    CFNumberGetValue(v31, kCFNumberSInt32Type, &valuePtr);
    a2[4].i16[2] = valuePtr;
  }

  return GetPerFrameTuningParam(a1, a3, a4);
}

uint64_t GetAFWindowParam(const __CFDictionary *a1, uint64_t a2, _WORD *a3)
{
  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF57E0]);
  if (!Value)
  {
    return 0;
  }

  v6 = Value;
  v7 = CFGetTypeID(Value);
  if (v7 != CFArrayGetTypeID())
  {
    return 4294954611;
  }

  Count = CFArrayGetCount(v6);
  if (Count <= 0x10u)
  {
    v9 = 0;
  }

  else
  {
    v9 = 4294954516;
  }

  if (Count)
  {
    v10 = 0;
    v11 = Count;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
      if (!ValueAtIndex)
      {
        break;
      }

      v13 = ValueAtIndex;
      v14 = CFGetTypeID(ValueAtIndex);
      if (v14 != CFDictionaryGetTypeID())
      {
        break;
      }

      v20 = 0;
      v21 = 0;
      v19 = 0;
      if (H16ISPGetRectParamsFromDict(v13, &v21 + 4, &v21, &v20 + 4, &v20, &v19, 1u))
      {
        break;
      }

      v15 = a2 + 12 * *a3;
      *v15 = *a3;
      v16 = v21;
      *(v15 + 4) = WORD2(v21);
      *(a2 + 12 * *a3 + 6) = v16;
      v17 = v20;
      *(a2 + 12 * *a3 + 8) = WORD2(v20);
      *(a2 + 12 * (*a3)++ + 10) = v17;
      ++v10;
    }

    while (v11 != v10);
  }

  return v9;
}

uint64_t GetPerFrameBracketParamForDualUB(const __CFDictionary *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v17 = 0;
  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF6200]);
  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr == 1)
  {
    *(a2 + 6) = 1;
    v12 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6498]);
    CFNumberGetValue(v12, kCFNumberSInt16Type, &valuePtr + 4);
    if (HIDWORD(valuePtr) == 1)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    *(a2 + 4) = v13;
  }

  else
  {
    if (valuePtr)
    {
      *(a2 + 6) = 0;
      return GetPerFrameTuningParam(a1, a3, a4);
    }

    *(a2 + 6) = 0;
    v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6498]);
    if (v9)
    {
      CFNumberGetValue(v9, kCFNumberSInt16Type, &valuePtr + 4);
    }

    if (HIDWORD(valuePtr) == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    *(a2 + 4) = v10;
    v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CF61B0]);
    if (v11)
    {
      CFNumberGetValue(v11, kCFNumberFloatType, &v17 + 4);
      *a2 = vcvtd_n_s64_f64(*(&v17 + 1), 8uLL);
    }
  }

  v14 = CFDictionaryGetValue(a1, *MEMORY[0x277CF61D8]);
  if (v14)
  {
    CFNumberGetValue(v14, kCFNumberFloatType, &v17);
    v15 = *&v17;
    if (*&v17 == *MEMORY[0x277CF6140])
    {
      *(a2 + 5) = 0;
    }

    else
    {
      *(a2 + 5) = 1;
      *(a2 + 2) = vcvtd_n_s64_f64(v15, 8uLL);
    }
  }

  return GetPerFrameTuningParam(a1, a3, a4);
}

uint64_t getIntDictionaryValue(const __CFDictionary *a1, const __CFString *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  TypeID = CFNumberGetTypeID();
  result = 0xFFFFFFFFLL;
  if (v4 == TypeID)
  {
    valuePtr = -1;
    if (CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr))
    {
      return valuePtr;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t GetFormatForHiResRaw(uint64_t a1, int a2)
{
  if (*(a1 + 569))
  {
    v2 = 38;
  }

  else
  {
    v2 = 20;
  }

  if (*(a1 + 568) == 1)
  {
    if ((a2 - 2) >= 2)
    {
      if (a2 == 5)
      {
        return 41;
      }

      else
      {
        v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v3 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
        }

        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          GetFormatForHiResRaw();
        }
      }
    }

    else
    {
      return 40;
    }
  }

  return v2;
}

uint64_t ActivateFaceDetectionOutputInFrameReceiver(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 160);
  if (!v3)
  {
    return 4294954516;
  }

  if (H16ISP::H16ISPFrameReceiver::HasPool(v3, 3))
  {
LABEL_3:
    H16ISP::H16ISPFrameReceiver::SetFDMode(*(a1 + 160), *(a1 + 4172));
    result = H16ISP::H16ISPFrameReceiver::StartFaceDetect(*(a1 + 160));
    if (!result)
    {
      return result;
    }

    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ActivateFaceDetectionOutputInFrameReceiver();
    }

    return 4294954516;
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 192);
  if (v7 < v8)
  {
    v8 = 0;
  }

  if (H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(a1 + 156), *(*(a1 + 184) + 120 * (v7 - v8) + 16), v11, v12))
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ActivateFaceDetectionOutputInFrameReceiver();
    }

    return 4294954516;
  }

  if (!H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(*(a1 + 160), 3, v13))
  {
    goto LABEL_3;
  }

  v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v10 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    ActivateFaceDetectionOutputInFrameReceiver();
  }

  return 4294954510;
}

uint64_t std::deque<__CVBuffer *>::deque(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  std::deque<__CVBuffer *>::__append_with_size[abi:ne200100]<__CVBuffer * const*>(a1, a2, (8 * a3) >> 3);
  return a1;
}

void *std::deque<__CVBuffer *>::__append_with_size[abi:ne200100]<__CVBuffer * const*>(void *a1, uint64_t *a2, unint64_t a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) << 6) - 1;
  }

  v9 = a1[5] + a1[4];
  v10 = v8 - v9;
  if (a3 > v10)
  {
    std::deque<__CVBuffer *>::__add_back_capacity(a1, a3 - v10);
    v6 = a1[1];
    v7 = a1[2];
    v9 = a1[4] + a1[5];
  }

  v11 = (v6 + 8 * (v9 >> 9));
  if (v7 == v6)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = *v11 + 8 * (v9 & 0x1FF);
    v13 = v12;
  }

  v21[0] = v11;
  v21[1] = v13;
  result = std::__deque_iterator<__CVBuffer *,__CVBuffer **,__CVBuffer *&,__CVBuffer ***,long,512l>::operator+[abi:ne200100](v21, a3);
  if (v12 != v15)
  {
    v16 = a1[5];
    do
    {
      if (v11 == result)
      {
        v17 = v15;
      }

      else
      {
        v17 = *v11 + 4096;
      }

      if (v12 == v17)
      {
        v17 = v12;
      }

      else
      {
        v18 = v12;
        do
        {
          v19 = *a2++;
          *v18++ = v19;
        }

        while (v18 != v17);
      }

      v16 += (v17 - v12) >> 3;
      if (v11 == result)
      {
        break;
      }

      v20 = v11[1];
      ++v11;
      v12 = v20;
    }

    while (v20 != v15);
    a1[5] = v16;
  }

  return result;
}

void *std::deque<__CVBuffer *>::__add_back_capacity(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = std::__split_buffer<__CVBuffer **>::emplace_back<__CVBuffer **&>(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        std::allocator<__CVBuffer **>::allocate_at_least[abi:ne200100](result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 9; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = std::__split_buffer<__CVBuffer **>::emplace_back<__CVBuffer **&>(v2, v16);
    }
  }

  return result;
}

void sub_2248B4B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ActivateIntermediateTapOutputInFrameReceiver(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x277D85DE8];
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

  if (H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(a1 + 156), *(*(a1 + 184) + 120 * (v4 - v5) + 16), v59, v69))
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ActivateIntermediateTapOutputInFrameReceiver();
    }

    return;
  }

  valuePtr = 0;
  v57 = 0;
  if (H16ISP::getFrameFormatMetaInfo(*(a1 + 1120), &v55))
  {
    v7 = DWORD1(v55);
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
      ActivateIntermediateTapOutputInFrameReceiver();
    }

    v7 = 0;
  }

  v9 = *(a1 + 1248);
  if (v9)
  {
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(v9);
    if (!PixelBufferAttributes)
    {
      v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v18 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        ActivateIntermediateTapOutputInFrameReceiver();
      }

      return;
    }

    v11 = PixelBufferAttributes;
    Value = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x277CC4EC8]);
    v13 = CFDictionaryGetValue(v11, *MEMORY[0x277CC4DD8]);
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    CFNumberGetValue(v13, kCFNumberIntType, &v57);
  }

  else
  {
    valuePtr = *(a1 + 1124);
    v57 = *(a1 + 1128);
  }

  v53 = 0u;
  v54 = 0u;
  GenerateBufferTagsForOutput(a1, a1 + 1104, &v53);
  v14 = *(a1 + 160);
  v26 = v53;
  v27 = v54;
  if (H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v14, 6, SDWORD1(v60)))
  {
    v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v15 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      ActivateIntermediateTapOutputInFrameReceiver();
    }

    return;
  }

  v16 = *(H16ISP::H16ISPFrameReceiver::getBufferPool(*(a1 + 160), 6) + 44);
  bzero(v48, 0x1CuLL);
  v49 = 2832;
  v50 = *(a1 + 156);
  v51 = vmovn_s64(vcvtq_s64_f64(*(a1 + 1136)));
  v52 = vmovn_s64(vcvtq_u64_f64(*(a1 + 1152)));
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a2 + 24), v48, 0x1Cu, 0, 0xFFFFFFFF))
  {
    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v17 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      ActivateIntermediateTapOutputInFrameReceiver();
    }

    return;
  }

  bzero(v40, 0x20uLL);
  v41 = 2822;
  v42 = *(a1 + 156);
  if (v7 > 0x24)
  {
    goto LABEL_53;
  }

  if (((1 << v7) & 0x1FBF000000) == 0)
  {
    if (v7 == 22)
    {
      v47 = 1;
      v46 = 0;
      v43 = (32 * valuePtr + 992) & 0xFFFFFC00;
      goto LABEL_37;
    }

    if (v7 == 23)
    {
      v47 = 1;
      v46 = 19;
      v43 = ((5 * ((valuePtr + 31) >> 5)) & 0x1FFFFF) << 8;
      goto LABEL_37;
    }

LABEL_53:
    if (v7 == 15)
    {
      v43 = (2 * valuePtr + 63) & 0xFFFFFFC0;
      v46 = 18;
    }

    else
    {
      v43 = (valuePtr + 63) & 0xFFFFFFC0;
      v46 = 0;
    }

    v47 = 0;
    goto LABEL_37;
  }

  v47 = v56 != 0;
  v46 = HIDWORD(v55);
  v43 = v16;
LABEL_37:
  v45 = v57;
  v44 = ColorRangeForOutputWithMatrix(a1, a1 + 1104, *(a1 + 172));
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a2 + 24), v40, 0x20u, 0, 0xFFFFFFFF))
  {
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      ActivateIntermediateTapOutputInFrameReceiver();
    }

    return;
  }

  v20 = *(a1 + 160);
  if (*(a1 + 1176) == 1 && (*(v20 + 533) & 1) == 0)
  {
    v36 = v65;
    v37 = v66;
    v38 = v67;
    v39 = v68;
    v32 = v61;
    v33 = v62;
    v34 = v63;
    v35 = v64;
    v28 = v59[2];
    v29 = v59[3];
    v30 = v59[4];
    v31 = v60;
    v26 = v59[0];
    v27 = v59[1];
    if (AddRawPoolToFrameReceiver(a1, a2, &v26))
    {
      v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v21 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        ActivateIntermediateTapOutputInFrameReceiver();
      }

      return;
    }

    v20 = *(a1 + 160);
  }

  if ((*v20 - 1) <= 1 && H16ISP::H16ISPFrameReceiver::SendFWInitialBuffers(v20, 6))
  {
    v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v22 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      ActivateIntermediateTapOutputInFrameReceiver();
    }
  }

  else
  {
    v23 = vcvtms_u32_f32(*(a1 + 1240) * 256.0);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = HIDWORD(v59[0]);
    }

    if (H16ISP::H16ISPDevice::ISP_SetMaxOutputRate(*(a2 + 24), 6, v24))
    {
      v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v25 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        ActivateIntermediateTapOutputInFrameReceiver();
      }
    }

    else
    {
      SetMetaDataOptionsOnFrameReceiver(a1, a2);
    }
  }
}

void ActivateStillImageIntermediateTapOutputInFrameReceiver(uint64_t a1, uint64_t a2)
{
  v75 = *MEMORY[0x277D85DE8];
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

  if (H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(a1 + 156), *(*(a1 + 184) + 120 * (v4 - v5) + 16), v70, v73))
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v6 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageIntermediateTapOutputInFrameReceiver();
    }

    return;
  }

  bzero(v65, 0x650uLL);
  v66 = 278;
  v67 = *(a1 + 156);
  v68 = 50;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a2 + 24), v65, 0x650u, 0, 0xFFFFFFFF))
  {
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageIntermediateTapOutputInFrameReceiver();
    }

    return;
  }

  v8 = v68;
  if (!v68)
  {
    goto LABEL_28;
  }

  v9 = &v69;
  while (*(v9 - 1) != 19)
  {
    v9 += 16;
    if (!--v8)
    {
      goto LABEL_28;
    }
  }

  v10 = *v9;
  if (v10 == 0xFFFF)
  {
LABEL_28:
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageIntermediateTapOutputInFrameReceiver();
    }

    return;
  }

  v11 = *(a1 + 1568);
  valuePtr = 0;
  v63 = 0;
  if ((H16ISP::getFrameFormatMetaInfo(*(a1 + 1520), &v62) & 1) == 0)
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageIntermediateTapOutputInFrameReceiver();
    }
  }

  v13 = *(a1 + 1648);
  if (v13)
  {
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(v13);
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
        ActivateStillImageIntermediateTapOutputInFrameReceiver();
      }

      return;
    }

    v15 = PixelBufferAttributes;
    Value = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x277CC4EC8]);
    v17 = CFDictionaryGetValue(v15, *MEMORY[0x277CC4DD8]);
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    CFNumberGetValue(v17, kCFNumberIntType, &v63);
    v18 = valuePtr;
  }

  else
  {
    v18 = *(a1 + 1524);
    valuePtr = v18;
    v63 = *(a1 + 1528);
  }

  v20 = *(a2 + 24);
  v21 = *(a1 + 156);
  v22 = 2 * v18 + 63;
  v23 = ColorRangeForOutputWithMatrix(a1, a1 + 1504, *(a1 + 176));
  if (H16ISP::H16ISPDevice::ConfigureStillImageIntermediateTapDMA(v20, v21, v22 & 0xFFFFFFC0, v23, 0, 0))
  {
    v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v24 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v24;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageIntermediateTapOutputInFrameReceiver();
    }

    return;
  }

  if (*(a1 + 776) & 1) != 0 || (*(a1 + 976) & 1) != 0 || (*(a1 + 1176) & 1) != 0 || (*(a1 + 1376) & 1) != 0 || (*(a1 + 1576) & 1) != 0 || (*(a1 + 2104) & 1) != 0 || (*(a1 + 2504) & 1) != 0 || (*(a1 + 4080))
  {
    v25 = 0;
  }

  else
  {
    v25 = *(a1 + 1704) ^ 1;
  }

  v26 = *(a1 + 160);
  if ((*(v26 + 533) & 1) == 0 && (v25 & 1) == 0)
  {
    v58 = v70[10];
    v59 = v70[11];
    v60 = v70[12];
    v61 = v71;
    v54 = v70[6];
    v55 = v70[7];
    v56 = v70[8];
    v57 = v70[9];
    v50 = v70[2];
    v51 = v70[3];
    v52 = v70[4];
    v53 = v70[5];
    v48 = v70[0];
    v49 = v70[1];
    if (AddRawPoolToFrameReceiver(a1, a2, &v48))
    {
      v27 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v27 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v27;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        ActivateStillImageIntermediateTapOutputInFrameReceiver();
      }

      return;
    }

    v26 = *(a1 + 160);
  }

  if (!H16ISP::H16ISPFrameReceiver::HasPool(v26, 30) && *(a1 + 1577) == 1 && AddThumbnailRawPoolToFrameReceiver(a1, a2))
  {
    v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v29 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v29;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      ActivateStillImageOutputInFrameReceiver();
    }
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
    GenerateBufferTagsForOutput(a1, a1 + 1504, &v48);
    v30 = *(a1 + 160);
    *buf = v48;
    *&buf[16] = v49;
    v31 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v30, 9, v10);
    v32 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    v33 = MEMORY[0x277D86220];
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v32 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v32;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v11;
      *&buf[8] = 1024;
      *&buf[10] = 0;
      _os_log_impl(&dword_2247DB000, v32, OS_LOG_TYPE_INFO, "ActivateStillImageIntermediateTapOutputInFrameReceiver STILLYCC pool size=%d,prime=%d\n\n", buf, 0xEu);
    }

    if (v31)
    {
      v34 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v33)
      {
        v34 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v34;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        ActivateStillImageIntermediateTapOutputInFrameReceiver();
      }
    }

    else if (*(a1 + 1624) == 1 && AddSushiRawPoolToFrameReceiver(a1, a2, a1 + 1504))
    {
      v35 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v33)
      {
        v35 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v35;
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        ActivateStillImageIntermediateTapOutputInFrameReceiver();
      }
    }

    else if (*(a1 + 1628) && AddSashimiRawPoolToFrameReceiver(a1, a2, a1 + 1504))
    {
      v36 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v33)
      {
        v36 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v36;
      }

      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        ActivateStillImageIntermediateTapOutputInFrameReceiver();
      }
    }

    else if (*(a1 + 1632) && AddFocusPixelDataToFrameReceiver(a1, a2, a1 + 1504))
    {
      v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v33)
      {
        v37 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v37;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        ActivateStillImageIntermediateTapOutputInFrameReceiver();
      }
    }

    else if (*(a1 + 1600) == 1 && AddSplitPixelDataToFrameReceiver(a1, a2, a1 + 1504))
    {
      v38 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v33)
      {
        v38 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v38;
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        ActivateStillImageOutputInFrameReceiver();
      }
    }

    else
    {
      if (!H16ISP::H16ISPFrameReceiver::HasPool(*(a1 + 160), 8))
      {
        v47 = 0;
        v39 = resizeStillMetaPool(a1, 0, &v47 + 1, &v47);
        if (v39)
        {
          v40 = v39;
          v41 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v33)
          {
            v41 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v41;
          }

          v42 = v41;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "ActivateStillImageIntermediateTapOutputInFrameReceiver";
            *&buf[12] = 1024;
            *&buf[14] = v40;
            _os_log_impl(&dword_2247DB000, v42, OS_LOG_TYPE_DEFAULT, "%s - resize still meta pool failed err= %d\n", buf, 0x12u);
          }
        }

        v43 = v47 + HIDWORD(v47);
        if (HIDWORD(v47) >= 0x10)
        {
          v44 = 16;
        }

        else
        {
          v44 = HIDWORD(v47);
        }

        v45 = *(a1 + 160);
        memset(buf, 0, 32);
        H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v45, 8, v74);
        v46 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v33)
        {
          v46 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v46;
        }

        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *&buf[4] = v43;
          *&buf[8] = 1024;
          *&buf[10] = v44;
          _os_log_impl(&dword_2247DB000, v46, OS_LOG_TYPE_INFO, "ActivateStillImageIntermediateTapOutputInFrameReceiver STILLMETA pool size=%d,prime=%d\n\n", buf, 0xEu);
        }
      }

      SetMetaDataOptionsOnFrameReceiver(a1, a2);
    }
  }
}

void ActivateProResRawOutputInFrameReceiver(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 160))
  {
    return;
  }

  v4 = (a1 + 156);
  v5 = *(a1 + 48);
  v6 = *(a1 + 192);
  if (v5 < v6)
  {
    v6 = 0;
  }

  CameraConfig = H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(a1 + 156), *(*(a1 + 184) + 120 * (v5 - v6) + 16), v20, v22);
  v8 = MEMORY[0x277D86220];
  if (CameraConfig)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ActivateProResRawOutputInFrameReceiver();
    }

LABEL_24:
    v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v8)
    {
      v16 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      ActivateProResRawOutputInFrameReceiver();
    }

    return;
  }

  H16ISP::H16ISPDevice::GetPoolInfoExtended(*(a2 + 24), *v4, 41, &v19);
  if (v10)
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v8)
    {
      v11 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      ActivateProResRawOutputInFrameReceiver();
    }

    goto LABEL_24;
  }

  if (!H16ISP::getFrameFormatMetaInfo(*(a1 + 2320), &v18))
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v8)
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      ActivateProResRawOutputInFrameReceiver();
    }
  }

  v13 = *(a1 + 160);
  memset(buf, 0, 32);
  v14 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v13, 39, WORD1(v19));
  v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v8)
  {
    v15 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "AddProResRawPoolToFrameReceiver";
    *&buf[12] = 1024;
    *&buf[14] = v14;
    _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_INFO, "%s - addBufferPoolToFrameReceiver return error 0x%X\n", buf, 0x12u);
  }

  if (v14)
  {
    goto LABEL_24;
  }

  if (H16ISP::H16ISPDevice::ConfigureProResRawOutput(*(a2 + 24), *v4, 1))
  {
    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v8)
    {
      v17 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      ActivateProResRawOutputInFrameReceiver();
    }
  }
}

void ActivateVisPipeOutputInFrameReceiver(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a1 + 160))
  {
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

    if (H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(a1 + 156), *(v8 + 120 * v6 + 16), v19, v23))
    {
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ActivateVisPipeOutputInFrameReceiver();
      }
    }

    else if (H16ISP::H16ISPDevice::EnableDPM(*(a2 + 24), *(a1 + 156), 0))
    {
      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        ActivateVisPipeOutputInFrameReceiver();
      }
    }

    else if (*(a1 + 2844) > 4u)
    {
      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v12 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        ActivateVisPipeOutputInFrameReceiver();
      }
    }

    else if (H16ISP::H16ISPDevice::EnableVisPipeOutput(*(a2 + 24), *(a1 + 156)))
    {
      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v11 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        ActivateVisPipeOutputInFrameReceiver();
      }
    }

    else
    {
      v13 = v7 + *(a1 + 768) + 1;
      v14 = *(a1 + 160);
      buf = 0u;
      v22 = 0u;
      v15 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v14, 19, v20);
      v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      v17 = MEMORY[0x277D86220];
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v16 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109376;
        DWORD1(buf) = v13;
        WORD4(buf) = 1024;
        *(&buf + 10) = v7;
        _os_log_impl(&dword_2247DB000, v16, OS_LOG_TYPE_INFO, "ActivateVisPipeOutputInFrameReceiver VISION_RESIZE_RAW pool size=%d,prime=%d\n\n", &buf, 0xEu);
      }

      if (v15)
      {
        v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v17)
        {
          v18 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          ActivateVisPipeOutputInFrameReceiver();
        }
      }

      else
      {
        SetMetaDataOptionsOnFrameReceiver(a1, a2);
      }
    }
  }
}

void ActivatePointCloudOutputInFrameReceiver(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 160))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 192);
    if (v4 < v5)
    {
      v5 = 0;
    }

    if (H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(a1 + 156), *(*(a1 + 184) + 120 * (v4 - v5) + 16), v24, v26))
    {
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v6 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        ActivatePointCloudOutputInFrameReceiver();
      }
    }

    else if ((*(*(a1 + 160) + 533) & 1) != 0 || (v20 = v24[10], v21 = v24[11], v22 = v24[12], v23 = v25, v16 = v24[6], v17 = v24[7], v18 = v24[8], v19 = v24[9], v12 = v24[2], v13 = v24[3], v14 = v24[4], v15 = v24[5], *v10 = v24[0], v11 = v24[1], !AddRawPoolToFrameReceiver(a1, a2, v10)))
    {
      SetMetaDataOptionsOnFrameReceiver(a1, a2);
      v8 = *(a1 + 4720);
      if (v8)
      {
        *v10 = 0;
        if (!H16ISP::H16ISPFilterGraphManager::GetNode(v8, 11, v10))
        {
          H16ISP::H16ISPJasperDepthNode::setProcessingMode(*v10, 1);
          v9 = *(a1 + 4136);
          if (v9)
          {
            H16ISP::H16ISPJasperDepthNode::setBufferPool(*v10, v9);
          }
        }
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
        ActivatePointCloudOutputInFrameReceiver();
      }
    }
  }
}

void ConfigureExclaveGraph(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a2 + 58176))
  {
    if (isExclaveAlgoEnabled(a2))
    {
      v4 = (a2 + 156);
      v5 = H16ISP::H16ISPDevice::SetExclusiveExclaveStreamingMode(*(a1 + 24), *(a2 + 156), *(a2 + 2924));
      if (v5)
      {
        v6 = v5;
        v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v7 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v13 = "ConfigureExclaveGraph";
          v14 = 1024;
          v15 = v6;
          _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_DEFAULT, "%s - Failed enabling exclave streaming mode res=0x%08x\n", buf, 0x12u);
        }
      }

      if (H16ISP::H16ISPDevice::isSensorType(*(a1 + 24), *v4, 1718186595))
      {
        operator new();
      }

      if (H16ISP::H16ISPDevice::isSensorType(*(a1 + 24), *v4, 1718775412) || H16ISP::H16ISPDevice::isSensorType(*(a1 + 24), *v4, 1718776695))
      {
        operator new();
      }

      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        ConfigureExclaveGraph();
      }

      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v11 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        ConfigureExclaveGraph();
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
        ConfigureExclaveGraph();
      }
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
      ConfigureExclaveGraph();
    }
  }
}

void ActivateMetadataOutputInFrameReceiver(uint64_t a1, uint64_t a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 160);
  if (!v3)
  {
    return;
  }

  v5 = MEMORY[0x277D86220];
  if (*(a1 + 3032) == 1)
  {
    if (*(a1 + 3161) == 1)
    {
      v6 = AddMetadataOutputBufferPoolToFrameReceiver(v3, (a1 + 3080));
      if (v6)
      {
        v7 = v6;
        v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
        {
          v8 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          ActivateMetadataOutputInFrameReceiver();
        }

LABEL_29:
        v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
        {
          v17 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v67 = "ActivateMetadataOutputInFrameReceiver";
          v68 = 1024;
          v69 = v7;
          _os_log_impl(&dword_2247DB000, v17, OS_LOG_TYPE_DEFAULT, "%s - Failed activating deghosting output ret=0x%08x\n", buf, 0x12u);
        }

        goto LABEL_33;
      }

      v9 = *(a1 + 3161);
    }

    else
    {
      v9 = 0;
    }

    v10 = H16ISP::H16ISPDevice::EnableStatsFEThumbnailMask(*(a2 + 24), *(a1 + 156), v9 & 1);
    if (v10)
    {
      v7 = v10;
      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
      {
        v11 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        ActivateMetadataOutputInFrameReceiver();
      }

      goto LABEL_29;
    }

    if (*(a1 + 3257) == 1)
    {
      v12 = AddMetadataOutputBufferPoolToFrameReceiver(*(a1 + 160), (a1 + 3176));
      if (v12)
      {
        v7 = v12;
        v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
        {
          v13 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          ActivateMetadataOutputInFrameReceiver();
        }

        goto LABEL_29;
      }

      v14 = *(a1 + 3257);
    }

    else
    {
      v14 = 0;
    }

    v15 = H16ISP::H16ISPDevice::EnableDesGenFlow2Features(*(a2 + 24), *(a1 + 156), v14 & 1);
    if (v15)
    {
      v7 = v15;
      v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
      {
        v16 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        ActivateMetadataOutputInFrameReceiver();
      }

      goto LABEL_29;
    }
  }

LABEL_33:
  v18 = 0;
  while (*(a1 + v18 + 3353) != 1 || !AddMetadataOutputBufferPoolToFrameReceiver(*(a1 + 160), (a1 + v18 + 3272)))
  {
    v18 += 96;
    if (v18 == 384)
    {
      goto LABEL_42;
    }
  }

  v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
  {
    v19 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    ActivateMetadataOutputInFrameReceiver();
  }

LABEL_42:
  v20 = H16ISP::H16ISPDevice::EnableSemanticMasks(*(a2 + 24), *(a1 + 156), *(a1 + 3353), *(a1 + 3545), *(a1 + 3449), *(a1 + 3641));
  if (v20)
  {
    v21 = v20;
    v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
    {
      v22 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v67 = "ActivateANSTSemanticOutputInFrameReceiver";
      v68 = 1024;
      v69 = v21;
      _os_log_error_impl(&dword_2247DB000, v22, OS_LOG_TYPE_ERROR, "%s - EnableSemanticMasks failed with ret=0x%08x\n", buf, 0x12u);
      v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    }

    if (v22 == v5)
    {
      v22 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v67 = "ActivateMetadataOutputInFrameReceiver";
      v68 = 1024;
      v69 = v21;
      _os_log_impl(&dword_2247DB000, v22, OS_LOG_TYPE_DEFAULT, "%s - Failed activating ANST Semantic output ret=0x%08x\n", buf, 0x12u);
    }
  }

  if (*(a1 + 3034) == 1)
  {
    if (*(a1 + 3737) == 1)
    {
      v23 = AddMetadataOutputBufferPoolToFrameReceiver(*(a1 + 160), (a1 + 3656));
      if (v23)
      {
        v24 = v23;
        v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
        {
          v25 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          ActivateMetadataOutputInFrameReceiver();
        }

LABEL_65:
        v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
        {
          v29 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v29;
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v67 = "ActivateMetadataOutputInFrameReceiver";
          v68 = 1024;
          v69 = v24;
          _os_log_impl(&dword_2247DB000, v29, OS_LOG_TYPE_DEFAULT, "%s - Failed activating HITH output ret=0x%08x\n", buf, 0x12u);
        }

        goto LABEL_69;
      }

      v26 = *(a1 + 3737);
    }

    else
    {
      v26 = 0;
    }

    v27 = H16ISP::H16ISPDevice::EnableHITH(*(a2 + 24), *(a1 + 156), v26 & 1, 0, 0, 0);
    if (!v27)
    {
      goto LABEL_69;
    }

    v24 = v27;
    v28 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
    {
      v28 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v28;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      ActivateMetadataOutputInFrameReceiver();
    }

    goto LABEL_65;
  }

LABEL_69:
  if (*(a1 + 3035) != 1)
  {
    goto LABEL_87;
  }

  if (*(a1 + 3833) == 1)
  {
    v30 = AddMetadataOutputBufferPoolToFrameReceiver(*(a1 + 160), (a1 + 3752));
    if (v30)
    {
      v31 = v30;
      v32 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
      {
        v32 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v32;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        ActivateMetadataOutputInFrameReceiver();
      }

      goto LABEL_83;
    }

    v33 = *(a1 + 3833);
  }

  else
  {
    v33 = 0;
  }

  v34 = H16ISP::H16ISPDevice::EnableANSTThumbnail(*(a2 + 24), *(a1 + 156), v33 & 1);
  if (!v34)
  {
    goto LABEL_87;
  }

  v31 = v34;
  v35 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
  {
    v35 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v35;
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    ActivateMetadataOutputInFrameReceiver();
  }

LABEL_83:
  v36 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
  {
    v36 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v36;
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v67 = "ActivateMetadataOutputInFrameReceiver";
    v68 = 1024;
    v69 = v31;
    _os_log_impl(&dword_2247DB000, v36, OS_LOG_TYPE_DEFAULT, "%s - Failed to activate ANST Thumbnail output ret=0x%08x\n", buf, 0x12u);
  }

LABEL_87:
  if (*(a1 + 3036) != 1)
  {
    goto LABEL_103;
  }

  if (*(a1 + 3945) == 1 && (v37 = AddMetadataOutputBufferPoolToFrameReceiver(*(a1 + 160), (a1 + 3864))) != 0)
  {
    v38 = v37;
    v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
    {
      v39 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v39;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      ActivateMetadataOutputInFrameReceiver();
    }
  }

  else
  {
    v40 = H16ISP::H16ISPDevice::EnableHITH(*(a2 + 24), *(a1 + 156), *(a1 + 3848), *(a1 + 3849), *(a1 + 3850), *(a1 + 3852));
    if (!v40)
    {
      goto LABEL_103;
    }

    v38 = v40;
    v41 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
    {
      v41 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v41;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      ActivateMetadataOutputInFrameReceiver();
    }
  }

  v42 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
  {
    v42 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v42;
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v67 = "ActivateMetadataOutputInFrameReceiver";
    v68 = 1024;
    v69 = v38;
    _os_log_impl(&dword_2247DB000, v42, OS_LOG_TYPE_DEFAULT, "%s - Failed to activate LTM Thumbnail output ret=0x%08x\n", buf, 0x12u);
  }

LABEL_103:
  if (*(a1 + 3037) != 1)
  {
    goto LABEL_121;
  }

  if (*(a1 + 4057) == 1)
  {
    v43 = AddMetadataOutputBufferPoolToFrameReceiver(*(a1 + 160), (a1 + 3976));
    if (v43)
    {
      v44 = v43;
      v45 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
      {
        v45 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v45;
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        ActivateMetadataOutputInFrameReceiver();
      }

      goto LABEL_117;
    }

    v46 = *(a1 + 4057);
  }

  else
  {
    v46 = 0;
  }

  v47 = H16ISP::H16ISPDevice::EnableWSEG(*(a2 + 24), *(a1 + 156), v46 & 1, *(a1 + 3960), *(a1 + 3962), *(a1 + 3964), *(a1 + 3972));
  if (!v47)
  {
    goto LABEL_121;
  }

  v44 = v47;
  v48 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
  {
    v48 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v48;
  }

  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    ActivateMetadataOutputInFrameReceiver();
  }

LABEL_117:
  v49 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
  {
    v49 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v49;
  }

  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v67 = "ActivateMetadataOutputInFrameReceiver";
    v68 = 1024;
    v69 = v44;
    _os_log_impl(&dword_2247DB000, v49, OS_LOG_TYPE_DEFAULT, "%s - Failed to activate WSEG Thumbnail output ret=0x%08x\n", buf, 0x12u);
  }

LABEL_121:
  if (!isExclaveAlgoEnabled(a1))
  {
    return;
  }

  v50 = *(a1 + 48);
  v51 = *(a1 + 192);
  if (v50 < v51)
  {
    v51 = 0;
  }

  v52 = v50 - v51;
  bzero(v64, 0xD4uLL);
  bzero(buf, 0x190uLL);
  CameraConfig = H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(a1 + 156), *(*(a1 + 184) + 120 * v52 + 16), v64, buf);
  if (CameraConfig)
  {
    v54 = CameraConfig;
    v55 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
    {
      v55 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v55;
    }

    if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_141;
    }

    *v65 = 136315138;
    *&v65[4] = "ActivateExclaveOutputInFrameReceiver";
    v56 = "%s - Failed to get camera config\n";
    v57 = v55;
    v58 = 12;
  }

  else
  {
    v59 = *(a1 + 160);
    memset(v65, 0, sizeof(v65));
    v60 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v59, 38, v70);
    if (v60)
    {
      v54 = v60;
      v61 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
      {
        v61 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v61;
      }

      if (!os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_141;
      }

      *v65 = 136315394;
      *&v65[4] = "ActivateExclaveOutputInFrameReceiver";
      *&v65[12] = 1024;
      *&v65[14] = v54;
      v56 = "%s - Unable to add exclave metadata buffer pool to frame receiver res=0x%08X\n\n";
    }

    else
    {
      v62 = H16ISP::H16ISPDevice::SetExclaveOutputMetadata(*(a2 + 24), *(a1 + 156), 1);
      if (!v62)
      {
        return;
      }

      v54 = v62;
      v61 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
      {
        v61 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v61;
      }

      if (!os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_141;
      }

      *v65 = 136315394;
      *&v65[4] = "ActivateExclaveOutputInFrameReceiver";
      *&v65[12] = 1024;
      *&v65[14] = v54;
      v56 = "%s - Failed enabling exclave output metadata res=0x%08x\n";
    }

    v57 = v61;
    v58 = 18;
  }

  _os_log_impl(&dword_2247DB000, v57, OS_LOG_TYPE_DEFAULT, v56, v65, v58);
LABEL_141:
  v63 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
  {
    v63 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v63;
  }

  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v67 = "ActivateMetadataOutputInFrameReceiver";
    v68 = 1024;
    v69 = v54;
    _os_log_impl(&dword_2247DB000, v63, OS_LOG_TYPE_DEFAULT, "%s - Failed adding Exclave buffer pool ret=0x%08x\n", buf, 0x12u);
  }
}

void DeactivatePrimaryScalerOutputInFrameReceiver(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 160))
  {
    if (H16ISP::H16ISPDevice::EnableScalerOutput(*(a2 + 24), *(a1 + 156), 0, 0))
    {
      v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v3 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        DeactivatePrimaryScalerOutputInFrameReceiver();
      }
    }

    else
    {
      v4 = 0;
      v5 = a1 + 856;
      do
      {
        v6 = *(v5 + v4);
        if (v6)
        {
          CVPixelBufferRelease(v6);
          *(v5 + v4) = 0;
        }

        v4 += 8;
      }

      while (v4 != 32);
      if (H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(a1 + 160), 0))
      {
        v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v7 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          DeactivatePrimaryScalerOutputInFrameReceiver();
        }
      }

      else
      {
        v8 = *(a1 + 848);
        if (v8)
        {
          CVPixelBufferPoolRelease(v8);
          *(a1 + 848) = 0;
        }
      }
    }
  }
}

void DeactivateSecondaryScalerOutputInFrameReceiver(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 160))
  {
    if (H16ISP::H16ISPDevice::EnableScalerOutput(*(a2 + 24), *(a1 + 156), 1, 0))
    {
      v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v3 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        DeactivateSecondaryScalerOutputInFrameReceiver();
      }
    }

    else
    {
      v4 = 0;
      v5 = a1 + 1056;
      do
      {
        v6 = *(v5 + v4);
        if (v6)
        {
          CVPixelBufferRelease(v6);
          *(v5 + v4) = 0;
        }

        v4 += 8;
      }

      while (v4 != 32);
      if (H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(a1 + 160), 10))
      {
        v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v7 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          DeactivateSecondaryScalerOutputInFrameReceiver();
        }
      }

      else
      {
        v8 = *(a1 + 1048);
        if (v8)
        {
          CVPixelBufferPoolRelease(v8);
          *(a1 + 1048) = 0;
        }
      }
    }
  }
}

void DeactivateIntermediateTapOutputInFrameReceiver(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 160))
  {
    if (H16ISP::H16ISPDevice::EnableScalerOutput(*(a2 + 24), *(a1 + 156), 2, 0))
    {
      v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v3 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        DeactivateIntermediateTapOutputInFrameReceiver();
      }
    }

    else
    {
      v4 = 0;
      v5 = a1 + 1256;
      do
      {
        v6 = *(v5 + v4);
        if (v6)
        {
          CVPixelBufferRelease(v6);
          *(v5 + v4) = 0;
        }

        v4 += 8;
      }

      while (v4 != 32);
      if (H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(a1 + 160), 6))
      {
        v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v7 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          DeactivateIntermediateTapOutputInFrameReceiver();
        }
      }

      else
      {
        v8 = *(a1 + 1248);
        if (v8)
        {
          CVPixelBufferPoolRelease(v8);
          *(a1 + 1248) = 0;
        }
      }
    }
  }
}

void DeactivateStillImageOutputInFrameReceiver(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2 && !*(a1 + 100))
  {
    if ((*(a1 + 2504) & 1) != 0 || !H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(v2, 7))
    {
      if (*(a1 + 1304) == 1 && (*(a1 + 1424) & 1) != 0 || *(a1 + 1504) == 1 && (*(a1 + 1624) & 1) != 0 || *(a1 + 2504) == 1 && (*(a1 + 2624) & 1) != 0 || !H16ISP::H16ISPFrameReceiver::HasPool(*(a1 + 160), 20) || !H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(a1 + 160), 20))
      {
        if (*(a1 + 1304) == 1 && *(a1 + 1428) || *(a1 + 1504) == 1 && *(a1 + 1628) || *(a1 + 2504) == 1 && *(a1 + 2628) || !H16ISP::H16ISPFrameReceiver::HasPool(*(a1 + 160), 22) || !H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(a1 + 160), 22))
        {
          if (*(a1 + 1304) == 1 && *(a1 + 1432) || *(a1 + 1504) == 1 && *(a1 + 1632) || *(a1 + 2504) == 1 && *(a1 + 2632) || !H16ISP::H16ISPFrameReceiver::HasPool(*(a1 + 160), 23) || !H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(a1 + 160), 23))
          {
            v7 = *(a1 + 1448);
            if (v7)
            {
              CVPixelBufferPoolRelease(v7);
              *(a1 + 1448) = 0;
            }

            v8 = 0;
            v9 = a1 + 1456;
            do
            {
              v10 = *(v9 + v8);
              if (v10)
              {
                CVPixelBufferRelease(v10);
                *(v9 + v8) = 0;
              }

              v8 += 8;
            }

            while (v8 != 32);
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
              DeactivateStillImageOutputInFrameReceiver();
            }
          }
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
            DeactivateStillImageOutputInFrameReceiver();
          }
        }
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
          DeactivateStillImageOutputInFrameReceiver();
        }
      }
    }

    else
    {
      v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v3 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        DeactivateStillImageOutputInFrameReceiver();
      }
    }
  }
}

void DeactivateStillImageIntermediateTapOutputInFrameReceiver(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2 && !*(a1 + 100))
  {
    if (H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(v2, 9))
    {
      v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v3 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        DeactivateStillImageIntermediateTapOutputInFrameReceiver();
      }
    }

    else if (*(a1 + 1304) == 1 && (*(a1 + 1424) & 1) != 0 || *(a1 + 1504) == 1 && (*(a1 + 1624) & 1) != 0 || *(a1 + 2504) == 1 && (*(a1 + 2624) & 1) != 0 || !H16ISP::H16ISPFrameReceiver::HasPool(*(a1 + 160), 20) || !H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(a1 + 160), 20))
    {
      if (*(a1 + 1304) == 1 && *(a1 + 1428) || *(a1 + 1504) == 1 && *(a1 + 1628) || *(a1 + 2504) == 1 && *(a1 + 2628) || !H16ISP::H16ISPFrameReceiver::HasPool(*(a1 + 160), 22) || !H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(a1 + 160), 22))
      {
        if ((*(a1 + 1304) != 1 || !*(a1 + 1432)) && (*(a1 + 1504) != 1 || !*(a1 + 1632)) && (*(a1 + 2504) != 1 || !*(a1 + 2632)) && H16ISP::H16ISPFrameReceiver::HasPool(*(a1 + 160), 23) && H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(a1 + 160), 23))
        {
          v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v6 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
          }

          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            DeactivateStillImageIntermediateTapOutputInFrameReceiver();
          }
        }
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
          DeactivateStillImageIntermediateTapOutputInFrameReceiver();
        }
      }
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
        DeactivateStillImageIntermediateTapOutputInFrameReceiver();
      }
    }
  }
}

void DeactivateStillImageRawOutputInFrameReceiver(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2 && !*(a1 + 100))
  {
    if ((*(a1 + 1304) & 1) == 0 && H16ISP::H16ISPFrameReceiver::HasPool(v2, 7) && H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(a1 + 160), 7))
    {
      v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v3 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        DeactivateStillImageRawOutputInFrameReceiver();
      }
    }

    else if (*(a1 + 1304) == 1 && (*(a1 + 1424) & 1) != 0 || *(a1 + 1504) == 1 && (*(a1 + 1624) & 1) != 0 || *(a1 + 2504) == 1 && (*(a1 + 2624) & 1) != 0 || !H16ISP::H16ISPFrameReceiver::HasPool(*(a1 + 160), 20) || !H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(a1 + 160), 20))
    {
      if (*(a1 + 1304) == 1 && *(a1 + 1428) || *(a1 + 1504) == 1 && *(a1 + 1628) || *(a1 + 2504) == 1 && *(a1 + 2628) || !H16ISP::H16ISPFrameReceiver::HasPool(*(a1 + 160), 22) || !H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(a1 + 160), 22))
      {
        if ((*(a1 + 1304) != 1 || !*(a1 + 1432)) && (*(a1 + 1504) != 1 || !*(a1 + 1632)) && (*(a1 + 2504) != 1 || !*(a1 + 2632)) && H16ISP::H16ISPFrameReceiver::HasPool(*(a1 + 160), 23) && H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(a1 + 160), 23))
        {
          v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v6 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
          }

          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            DeactivateStillImageRawOutputInFrameReceiver();
          }
        }
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
          DeactivateStillImageRawOutputInFrameReceiver();
        }
      }
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
        DeactivateStillImageRawOutputInFrameReceiver();
      }
    }
  }
}

void DeactivateMetadataOutputInFrameReceiver(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 160))
  {
    return;
  }

  *(a1 + 3161) = 0;
  *(a1 + 3257) = 0;
  v4 = MEMORY[0x277D86220];
  if (*(a1 + 3032) == 1)
  {
    if (H16ISP::H16ISPDevice::EnableStatsFEThumbnailMask(*(a2 + 24), *(a1 + 156), 0))
    {
      v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v4)
      {
        v5 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v5;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        DeactivateMetadataOutputInFrameReceiver();
      }
    }

    RemoveMetadataOutputBufferPoolFromFrameReceiver(*(a1 + 160), (a1 + 3080));
    if (H16ISP::H16ISPDevice::EnableDesGenFlow2Features(*(a2 + 24), *(a1 + 156), 0))
    {
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v4)
      {
        v6 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        DeactivateMetadataOutputInFrameReceiver();
      }
    }

    RemoveMetadataOutputBufferPoolFromFrameReceiver(*(a1 + 160), (a1 + 3176));
  }

  if (H16ISP::H16ISPDevice::EnableHITH(*(a2 + 24), *(a1 + 156), 0, 0, 0, 0))
  {
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v4)
    {
      v7 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      DeactivateMetadataOutputInFrameReceiver();
    }
  }

  if (*(a1 + 3737) == 1)
  {
    RemoveMetadataOutputBufferPoolFromFrameReceiver(*(a1 + 160), (a1 + 3656));
    *(a1 + 3737) = 0;
  }

  v8 = *(a1 + 3744);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 3744) = 0;
  }

  if (H16ISP::H16ISPDevice::EnableSemanticMasks(*(a2 + 24), *(a1 + 156), 0, 0, 0, 0))
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v4)
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      DeactivateMetadataOutputInFrameReceiver();
    }
  }

  v10 = a1 + 3272;
  v11 = 4;
  do
  {
    if (*(v10 + 81) == 1)
    {
      RemoveMetadataOutputBufferPoolFromFrameReceiver(*(a1 + 160), v10);
      *(v10 + 81) = 0;
    }

    v10 += 96;
    --v11;
  }

  while (v11);
  if (H16ISP::H16ISPFrameReceiver::HasPool(*(a1 + 160), 38))
  {
    v12 = H16ISP::H16ISPDevice::SetExclaveOutputMetadata(*(a2 + 24), *(a1 + 156), 0);
    if (v12)
    {
      v13 = v12;
      v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v4)
      {
        v14 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
      }

      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v27 = 136315394;
      v28 = "DeactivateExclaveOutputFromFrameReceiver";
      v29 = 1024;
      v30 = v13;
      v15 = "%s - Unable to disable Exclave output in fw, res=0x%08x\n";
    }

    else
    {
      v19 = H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(a1 + 160), 38);
      if (!v19)
      {
        goto LABEL_49;
      }

      v20 = v19;
      v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v4)
      {
        v14 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
      }

      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v27 = 136315394;
      v28 = "DeactivateExclaveOutputFromFrameReceiver";
      v29 = 1024;
      v30 = v20;
      v15 = "%s - failed to remove Exclave buffer pool res=0x%08x\n";
    }

    v17 = v14;
    v18 = 18;
  }

  else
  {
    v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v4)
    {
      v16 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_49;
    }

    v27 = 136315138;
    v28 = "DeactivateExclaveOutputFromFrameReceiver";
    v15 = "%s - Cannot find Exclave buffer pool type in the frame receiver list of buffer pools\n";
    v17 = v16;
    v18 = 12;
  }

  _os_log_impl(&dword_2247DB000, v17, OS_LOG_TYPE_DEFAULT, v15, &v27, v18);
LABEL_49:
  if (H16ISP::H16ISPDevice::EnableANSTThumbnail(*(a2 + 24), *(a1 + 156), 0))
  {
    v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v4)
    {
      v21 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      DeactivateMetadataOutputInFrameReceiver();
    }
  }

  if (*(a1 + 3833) == 1)
  {
    RemoveMetadataOutputBufferPoolFromFrameReceiver(*(a1 + 160), (a1 + 3752));
    *(a1 + 3833) = 0;
  }

  v22 = *(a1 + 3840);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 3840) = 0;
  }

  if (H16ISP::H16ISPDevice::EnableHITH(*(a2 + 24), *(a1 + 156), 0, 0, 0, 0))
  {
    v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v4)
    {
      v23 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v23;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      DeactivateMetadataOutputInFrameReceiver();
    }
  }

  if (*(a1 + 3945) == 1)
  {
    RemoveMetadataOutputBufferPoolFromFrameReceiver(*(a1 + 160), (a1 + 3864));
    *(a1 + 3945) = 0;
    *(a1 + 3848) = 0;
    *(a1 + 3856) = 0;
  }

  v24 = *(a1 + 3952);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 3952) = 0;
  }

  if (H16ISP::H16ISPDevice::EnableWSEG(*(a2 + 24), *(a1 + 156), 0, 0, 0, 0, 0))
  {
    v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v4)
    {
      v25 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      DeactivateMetadataOutputInFrameReceiver();
    }
  }

  if (*(a1 + 4057) == 1)
  {
    RemoveMetadataOutputBufferPoolFromFrameReceiver(*(a1 + 160), (a1 + 3976));
    *(a1 + 4057) = 0;
    *(a1 + 3960) = 0;
    *(a1 + 3972) = 0;
    *(a1 + 3962) = 0;
  }

  v26 = *(a1 + 4064);
  if (v26)
  {
    CFRelease(v26);
    *(a1 + 4064) = 0;
  }
}

void DeactivateProResRawOutputInFrameReceiver(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    if (H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(v2, 39))
    {
      v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v3 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        DeactivateProResRawOutputInFrameReceiver();
      }
    }

    else
    {
      v4 = *(a1 + 2448);
      if (v4)
      {
        CVPixelBufferPoolRelease(v4);
        *(a1 + 2448) = 0;
      }
    }
  }
}

void DeactivatePointCloudOutputInFrameReceiver(uint64_t a1)
{
  *v5 = 0;
  v2 = *(a1 + 4720);
  if (v2)
  {
    Node = H16ISP::H16ISPFilterGraphManager::GetNode(v2, 11, v5);
    v4 = *v5;
    if (!Node)
    {
      H16ISP::H16ISPJasperDepthNode::setProcessingMode(*v5, 0);
      v4 = *v5;
    }

    if (*(a1 + 4136))
    {
      if (v4)
      {
        H16ISP::H16ISPJasperDepthNode::setBufferPool(v4, 0);
      }
    }
  }
}

uint64_t AddSushiRawPoolToFrameReceiver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v17 = 0xFFFF;
  H16ISP::H16ISPDevice::GetPoolInfo(*(a2 + 24), *(a1 + 156), 20, &v17, 0);
  v7 = v6;
  if (!v6)
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 192);
    if (v8 < v9)
    {
      v9 = 0;
    }

    CameraConfig = H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(a1 + 156), *(*(a1 + 184) + 120 * (v8 - v9) + 16), v16, v20);
    if (CameraConfig)
    {
      v7 = CameraConfig;
      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v11 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        AddSushiRawPoolToFrameReceiver();
      }
    }

    else
    {
      v12 = *(a1 + 160);
      buf = 0u;
      v19 = 0u;
      v7 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v12, 20, v17);
      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v13 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(a3 + 64);
        LODWORD(buf) = 67109632;
        DWORD1(buf) = v14;
        WORD4(buf) = 1024;
        *(&buf + 10) = 0;
        HIWORD(buf) = 1024;
        LODWORD(v19) = v7;
        _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_INFO, "AddSushiRawPoolToFrameReceiver - size=%d,prime=%d (res=0x%08X)\n\n", &buf, 0x14u);
      }
    }
  }

  return v7;
}

uint64_t AddSashimiRawPoolToFrameReceiver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v17 = 0;
  H16ISP::H16ISPDevice::GetPoolInfo(*(a2 + 24), *(a1 + 156), 22, &v17, 0);
  v7 = v6;
  if (!v6)
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 192);
    if (v8 < v9)
    {
      v9 = 0;
    }

    CameraConfig = H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(a1 + 156), *(*(a1 + 184) + 120 * (v8 - v9) + 16), v16, v20);
    if (CameraConfig)
    {
      v7 = CameraConfig;
      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v11 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        AddSashimiRawPoolToFrameReceiver();
      }
    }

    else
    {
      v12 = *(a1 + 160);
      buf = 0u;
      v19 = 0u;
      v7 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v12, 22, v17);
      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v13 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(a3 + 64);
        LODWORD(buf) = 67109376;
        DWORD1(buf) = v14;
        WORD4(buf) = 1024;
        *(&buf + 10) = v7;
        _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_INFO, "AddSashimiRawPoolToFrameReceiver - RAW pool size=%d (res=0x%08X)\n\n", &buf, 0xEu);
      }
    }
  }

  return v7;
}

uint64_t AddFocusPixelDataToFrameReceiver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = 0xFFFF;
  H16ISP::H16ISPDevice::GetPoolInfo(*(a2 + 24), *(a1 + 156), 23, &v12, &v11);
  v6 = v5;
  if (!v5)
  {
    v7 = *(a1 + 160);
    *buf = 0u;
    v14 = 0u;
    v6 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v7, 23, v12);
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a3 + 64);
      *buf = 67109376;
      *&buf[4] = v9;
      *&buf[8] = 1024;
      *&buf[10] = v6;
      _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_INFO, "AddFocusPixelDataToFrameReceiver - prime=%d (res=0x%08X)\n\n", buf, 0xEu);
    }
  }

  return v6;
}

uint64_t AddSplitPixelDataToFrameReceiver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a3 + 96))
  {
    v5 = (a1 + 156);
    v6 = *(a1 + 48);
    v7 = *(a1 + 192);
    if (v6 < v7)
    {
      v7 = 0;
    }

    CameraConfig = H16ISP::H16ISPDevice::GetCameraConfig(*(a2 + 24), *(a1 + 156), v6 - v7, v18, v21);
    if (CameraConfig)
    {
      v9 = CameraConfig;
      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        AddSplitPixelDataToFrameReceiver();
      }
    }

    else if (v19)
    {
      H16ISP::H16ISPDevice::GetPoolInfoExtended(*(a2 + 24), *v5, 26, &v17);
      if (v13)
      {
        v9 = v13;
        v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v14 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          AddSplitPixelDataToFrameReceiver();
        }
      }

      else
      {
        v15 = *(a1 + 160);
        memset(buf, 0, 32);
        v9 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v15, 26, WORD1(v17));
        v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v16 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "AddSplitPixelDataToFrameReceiver";
          *&buf[12] = 1024;
          *&buf[14] = v9;
          _os_log_impl(&dword_2247DB000, v16, OS_LOG_TYPE_INFO, "%s - addBufferPoolToFrameReceiver return error 0x%X\n", buf, 0x12u);
        }
      }
    }

    else
    {
      return 3758097095;
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

    v9 = 3758097122;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      AddSplitPixelDataToFrameReceiver();
    }
  }

  return v9;
}

uint64_t StartExclaveStreams(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v201 = *MEMORY[0x277D85DE8];
  v7 = v3 + 156;
  v6 = *(v3 + 156);
  v8 = *(v7 - 108);
  v9 = *(v7 + 36);
  if (v8 < v9)
  {
    v9 = 0;
  }

  v10 = v8 - v9;
  CameraConfig = H16ISP::H16ISPDevice::GetCameraConfig(*(v2 + 24), v6, *(*(v7 + 28) + 120 * (v8 - v9) + 16), v120, v121);
  v12 = MEMORY[0x277D86220];
  if (CameraConfig)
  {
    v13 = CameraConfig;
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      StartExclaveStreams();
    }

    return v13;
  }

  v119 = v10;
  bzero(&v160[4], 0x30CuLL);
  v15 = *(v4 + 156);
  *v160 = 65541;
  v163 = v15;
  v138 = 0u;
  memset(v139, 0, 31);
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v127 = 0u;
  memset(v126, 0, sizeof(v126));
  GetExclaveAlgorithmsEnabledArray(v5, v4, v126);
  *&v164[239] = *(v139 + 15);
  *&v164[192] = v137;
  *&v164[208] = v138;
  *&v164[224] = v139[0];
  *&v164[128] = v133;
  *&v164[144] = v134;
  *&v164[160] = v135;
  *&v164[176] = v136;
  *&v164[64] = v129;
  *&v164[80] = v130;
  *&v164[96] = v131;
  *&v164[112] = v132;
  *v164 = *v126;
  *&v164[16] = *&v126[16];
  *&v164[32] = v127;
  *&v164[48] = v128;
  if ((v126[2] & 1) != 0 || (v164[3] & 1) != 0 || v164[11] == 1)
  {
    bzero(&v200[4], 0x224uLL);
    v16 = *v7;
    *v200 = 393216;
    *&v200[524] = v16;
    if (H16ISP::H16ISPDevice::enabledExclaveDebug(*(v5 + 24)))
    {
      v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v12)
      {
        v17 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v17;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(v4 + 3021);
        LODWORD(v195[0]) = 136315394;
        *(v195 + 4) = "ConfigureFrameworkAlgorithmSettings";
        WORD2(v195[1]) = 1024;
        *(&v195[1] + 6) = v18;
        _os_log_impl(&dword_2247DB000, v17, OS_LOG_TYPE_DEFAULT, "%s - PeriocularEnabled = %{BOOL}d\n", v195, 0x12u);
      }
    }

    *&v200[532] = *(v4 + 3021);
    v200[536] = 1;
    *&v200[540] = 1;
    if (H16ISP::H16ISPDevice::enabledExclaveDebug(*(v5 + 24)))
    {
      v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v12)
      {
        v19 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v19;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(v4 + 3022);
        isExclaveADRequired = H16ISP::H16ISPDevice::isExclaveADRequired(*(v5 + 24));
        LODWORD(v195[0]) = 136315650;
        *(v195 + 4) = "ConfigureFrameworkAlgorithmSettings";
        WORD2(v195[1]) = 1024;
        *(&v195[1] + 6) = v20;
        WORD1(v195[2]) = 1024;
        HIDWORD(v195[2]) = isExclaveADRequired;
        _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "%s - AttentionRequired = %{BOOL}d %{BOOL}d\n", v195, 0x18u);
      }
    }

    if (H16ISP::H16ISPDevice::isExclaveADRequired(*(v5 + 24)))
    {
      v22 = *(v4 + 3022);
    }

    else
    {
      v22 = 0;
    }

    *&v200[544] = v22;
    v200[548] = 1;
    kdebug_trace();
    v23 = ispExclaveKitCommand();
    kdebug_trace();
    if (v23)
    {
      v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v12)
      {
        v24 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v24;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        StartExclaveStreams();
      }
    }
  }

  if (v164[7] == 1)
  {
    *v200 = 0x1000000090003;
    v25 = *(v4 + 156);
    *&v200[8] = 532;
    *&v200[524] = v25;
    v200[528] = *(v4 + 2932) != 1.0;
    v26 = *(v4 + 2936);
    v28 = v26 <= 1.0 && v26 > 0.0;
    v200[529] = v28;
    kdebug_trace();
    v29 = ispExclaveKitCommand();
    kdebug_trace();
    v30 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (v29)
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v12)
      {
        v30 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v30;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        StartExclaveStreams();
      }
    }

    else
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v12)
      {
        v30 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v30;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = *v7;
        LODWORD(v195[0]) = 136315906;
        *(v195 + 4) = "ConfigureFrameworkFaceKitSettings";
        WORD2(v195[1]) = 1024;
        *(&v195[1] + 6) = v31;
        WORD1(v195[2]) = 1024;
        HIDWORD(v195[2]) = v200[528];
        LOWORD(v195[3]) = 1024;
        *(&v195[3] + 2) = v200[529];
        _os_log_impl(&dword_2247DB000, v30, OS_LOG_TYPE_INFO, "%s - ch=%u enableaccessibility=%{BOOL}d enablespatialaudio=%{BOOL}d\n", v195, 0x1Eu);
      }
    }
  }

  v32 = *v7;
  v33 = H16ISP::H16ISPDevice::isSensorType(*(v5 + 24), *v7, 1718775412) || H16ISP::H16ISPDevice::isSensorType(*(v5 + 24), v32, 1718776695);
  v34 = *(v5 + 24);
  if (v34)
  {
    v35 = *(v34 + 4304) + 8;
    if (*(v35 + 104 * v32 + 100) & v33)
    {
      v36 = *(v35 + 104 * v32 + 96);
      if (v36)
      {
        v164[5] = 1;
      }

      if ((v36 & 2) != 0)
      {
        v164[9] = 1;
      }

      v164[10] = 1;
      v164[6] = 1;
      v164[8] = 1;
    }
  }

  v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v12)
  {
    v37 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v37;
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 0;
    v39 = 0;
    do
    {
      if (v164[v38])
      {
        v40 = 1 << v38;
      }

      else
      {
        v40 = 0;
      }

      v39 |= v40;
      ++v38;
    }

    while (v38 != 13);
    *v200 = 136315394;
    *&v200[4] = "ConfigureFrameworkAlgorithmSettings";
    *&v200[12] = 1024;
    *&v200[14] = v39;
    _os_log_impl(&dword_2247DB000, v37, OS_LOG_TYPE_DEFAULT, "%s - Enabled algorithms=0x%08x\n", v200, 0x12u);
  }

  kdebug_trace();
  v41 = ispExclaveKitCommand();
  kdebug_trace();
  if (v41)
  {
    v42 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v42 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v42;
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      StartExclaveStreams();
    }
  }

  if (ExclaveSetTargetFrameRate(v5, v4))
  {
    v43 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v43 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v43;
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      StartExclaveStreams();
    }
  }

  v44 = *(v4 + 48);
  v45 = *(v4 + 192);
  if (v44 < v45)
  {
    v45 = 0;
  }

  if (H16ISP::H16ISPDevice::GetCameraConfig(*(v5 + 24), *(v4 + 156), *(*(v4 + 184) + 120 * (v44 - v45) + 16), &v185, v195))
  {
    v46 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v46 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v46;
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      StartExclaveStreams();
    }
  }

  bzero(v160, 0x3400uLL);
  if (H16ISP::H16ISPDevice::isSensorType(*(v5 + 24), *v7, 1718186595) && (getPCECalib(*(v5 + 24), v160) & 1) == 0)
  {
    v47 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v47 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v47;
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      StartExclaveStreams();
    }
  }

  FrontCameraOffsetFromDisplayCenter = H16ISP::H16ISPDevice::GetFrontCameraOffsetFromDisplayCenter(*(v5 + 24));
  v50 = v49;
  v52 = v51;
  bzero(&v126[4], 0x234uLL);
  v53 = *v7;
  *v126 = 65538;
  v140 = v53;
  v141 = v194;
  v142 = v196;
  v143 = HIDWORD(v195[5]);
  v144 = HIDWORD(v186);
  v148 = v199;
  v145 = v192;
  v146 = v193;
  v147 = v198;
  v149 = FrontCameraOffsetFromDisplayCenter;
  v150 = v50;
  v151 = v52;
  v152 = vcvt_f32_f64(v183);
  v54 = v184;
  v153 = v54;
  v157 = v191;
  v158 = v192;
  v159 = v193;
  bzero(v200, 0x1118uLL);
  v154 = xmmword_2249BB8D0;
  v155 = xmmword_2249BB8D0;
  v156 = xmmword_2249BB8D0;
  if (v197)
  {
    if (H16ISP::H16ISPDevice::GetDistortionData(*(v5 + 24), v53, 0, v200))
    {
      StartExclaveStreams();
    }

    else
    {
      v55.f64[0] = *&v200[2248];
      v55.f64[1] = *&v200[2264];
      v154 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v200[2232]), v55);
      v155 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v200[2272]), *&v200[2296]);
      v56 = *&v200[2312];
      *&v156 = v56;
      v57 = *&v200[2256];
      *(&v156 + 1) = v57;
      v58 = *&v200[2288];
      *(&v156 + 2) = v58;
      v59 = *&v200[2320];
      *(&v156 + 3) = v59;
    }
  }

  else
  {
    StartExclaveStreams();
  }

  kdebug_trace();
  v60 = ispExclaveKitCommand();
  kdebug_trace();
  if (v60)
  {
    v61 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v61 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v61;
    }

    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      StartExclaveStreams();
    }
  }

  bzero(&v200[4], 0x210uLL);
  v62 = *(v4 + 156);
  *v200 = 65539;
  *&v200[524] = v62;
  if (isExclaveAlgoEnabled(v4))
  {
    v63 = *(v4 + 2924) == 0;
  }

  else
  {
    v63 = 0;
  }

  v200[528] = v63;
  kdebug_trace();
  v64 = ispExclaveKitCommand();
  kdebug_trace();
  v65 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (v64)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v65 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v65;
    }

    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v123 = "ConfigureFrameworkChannelSettings";
      v124 = 1024;
      v125 = v64;
      _os_log_error_impl(&dword_2247DB000, v65, OS_LOG_TYPE_ERROR, "%s - ISP_EXCLAVEKIT_CMD_RGB_CH_CONCURRENT_FLAG_SET is failure Err: %d\n", buf, 0x12u);
      v65 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    }
  }

  *&v160[8] = 580;
  *v160 = 0x1000000030002;
  v66 = *(v4 + 48);
  v67 = *(v4 + 192);
  if (v66 < v67)
  {
    v67 = 0;
  }

  v68 = v66 - v67;
  v69 = *(v4 + 184) + 120 * (v66 - v67);
  if (v65 == MEMORY[0x277D86220])
  {
    v65 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v65;
  }

  if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
  {
    v70 = *(v69 + 16);
    v185 = 136315650;
    v186 = "ConfigureFrameworkCameraSettings";
    v187 = 1024;
    v188 = v68;
    v189 = 1024;
    v190 = v70;
    _os_log_impl(&dword_2247DB000, v65, OS_LOG_TYPE_INFO, "%s - AE PresetIndex:%u / SensorConfigIndex:%u\n", &v185, 0x18u);
  }

  LODWORD(v138) = 0;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v127 = 0u;
  memset(v126, 0, sizeof(v126));
  memset(v200, 0, 400);
  v71 = H16ISP::H16ISPDevice::GetCameraConfig(*(v5 + 24), *v7, *(v69 + 16), v126, v200);
  if (v71)
  {
    v13 = v71;
    v72 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    v73 = MEMORY[0x277D86220];
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v72 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v72;
    }

    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      StartExclaveStreams();
    }

LABEL_134:
    v82 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v73)
    {
      v82 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v82;
    }

    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      StartExclaveStreams();
    }

    return v13;
  }

  memset(v195, 0, 60);
  ExclaveCameraConfig = H16ISP::H16ISPDevice::GetExclaveCameraConfig(*(v5 + 24), *v7, *(v69 + 16), v195);
  if (ExclaveCameraConfig)
  {
    v13 = ExclaveCameraConfig;
    v75 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    v73 = MEMORY[0x277D86220];
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v75 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v75;
    }

    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      StartExclaveStreams();
    }

    goto LABEL_134;
  }

  v76 = ExclaveSetMinimumAutoExposureFrameRate(v5, v4);
  if (v76)
  {
    v13 = v76;
    v77 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    v73 = MEMORY[0x277D86220];
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v77 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v77;
    }

    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      StartExclaveStreams();
    }

    goto LABEL_134;
  }

  v78 = ExclaveSetMaximumAutoExposureFrameRate(v5, v4);
  if (v78)
  {
    v13 = v78;
    v79 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    v73 = MEMORY[0x277D86220];
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v79 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v79;
    }

    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      StartExclaveStreams();
    }

    goto LABEL_134;
  }

  bzero(&v160[4], 0x21CuLL);
  v163 = *v7;
  *v160 = 196610;
  *&v164[48] = *(v69 + 16);
  *v164 = v195[0];
  *&v164[4] = WORD2(v195[0]);
  *&v164[8] = v195[1];
  v164[12] = BYTE4(v195[1]);
  *&v164[14] = HIWORD(v195[1]);
  *&v164[24] = v195[3];
  *&v164[28] = *&v126[12];
  *&v164[30] = *&v126[16];
  *&v164[16] = v195[2];
  *&v164[32] = *(&v195[3] + 4);
  *&v164[40] = WORD4(v133);
  *&v164[42] = WORD6(v133);
  *&v164[44] = *&v126[8];
  kdebug_trace();
  v80 = ispExclaveKitCommand();
  kdebug_trace();
  if (v80)
  {
    v81 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    v73 = MEMORY[0x277D86220];
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v81 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v81;
    }

    v13 = 3758097087;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      StartExclaveStreams();
    }

    goto LABEL_134;
  }

  if (!isExclaveAlgoEnabled(v4) || *(v4 + 2924))
  {
    bzero(&v160[4], 0x350uLL);
    v163 = *v7;
    *v160 = 196618;
    v84 = ispExclaveKitCommand();
    if (v84)
    {
LABEL_142:
      v85 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v85 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v85;
      }

      v13 = 3758097087;
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        v112 = *v7;
        *v200 = 136315906;
        *&v200[4] = "ConfigureFrameworkAutoExposure";
        *&v200[12] = 1024;
        *&v200[14] = *&v164[320];
        *&v200[18] = 1024;
        *&v200[20] = v84;
        *&v200[24] = 1024;
        *&v200[26] = v112;
        _os_log_error_impl(&dword_2247DB000, v85, OS_LOG_TYPE_ERROR, "%s - Cannot get initial AE settings, resultStatus %d ret %d ch %d\n", v200, 0x1Eu);
      }

      v86 = MEMORY[0x277D86220];
LABEL_147:
      v87 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v86)
      {
        v87 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v87;
      }

      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        StartExclaveStreams();
      }

      return v13;
    }

    if (*&v164[320] == 1)
    {
      v99 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v99 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v99;
      }

      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        v100 = *v7;
        *v200 = 67109120;
        *&v200[4] = v100;
        _os_log_impl(&dword_2247DB000, v99, OS_LOG_TYPE_DEFAULT, "Skip configuring initial AE settings, ch %d\n", v200, 8u);
      }
    }

    else
    {
      if (*&v164[320] == 2)
      {
        goto LABEL_142;
      }

      v88 = *&v164[268];
      v89 = *&v164[264];
      *v126 = *&v164[264];
      *&v126[8] = *&v164[268];
      *&v90 = *&v164[276];
      v115 = *&v164[288];
      v116 = *&v164[276];
      *(&v90 + 1) = *&v164[288];
      *&v126[16] = v90;
      v117 = *&v164[316];
      v118 = *&v164[312];
      *&v128 = *&v164[312];
      v91 = *&v164[304];
      v92 = *&v164[308];
      v127 = *&v164[296];
      v93 = *&v164[296];
      v114 = *&v164[300];
      v94 = *&v164[284];
      DWORD2(v128) = *&v164[284];
      if (H16ISP::H16ISPDevice::enabledExclaveDebug(*(v5 + 24)))
      {
        v113 = v89;
        v95 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v95 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v95;
        }

        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          v96 = *v7;
          *&v200[4] = v88;
          *&v200[12] = 1024;
          *&v200[14] = v115;
          *&v200[18] = 1024;
          *&v200[20] = HIDWORD(v115);
          *&v200[24] = 2048;
          *&v200[26] = v113;
          *&v200[34] = 1024;
          *v200 = 134220288;
          *&v200[36] = v116;
          *&v200[40] = 1024;
          *&v200[42] = HIDWORD(v116);
          *&v200[46] = 1024;
          *&v200[52] = 1024;
          *&v200[54] = v93;
          *&v200[58] = 1024;
          *&v200[48] = v94;
          *&v200[60] = v114;
          *&v200[64] = 1024;
          *&v200[66] = v96;
          _os_log_impl(&dword_2247DB000, v95, OS_LOG_TYPE_DEFAULT, "AE init settings aeCounter %llu Exp %u ExpTime %d ReqID %llu SensorAG %d SensorDG %d IspDG %d VFrameSize %d VFrameTime %d Channel=%u\n", v200, 0x46u);
          v95 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        }

        if (v95 == MEMORY[0x277D86220])
        {
          v95 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v95;
        }

        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          *v200 = 67109888;
          *&v200[4] = v117;
          *&v200[8] = 1024;
          *&v200[10] = v118;
          *&v200[14] = 2048;
          *&v200[16] = v91;
          *&v200[24] = 2048;
          *&v200[26] = v92;
          _os_log_impl(&dword_2247DB000, v95, OS_LOG_TYPE_DEFAULT, "Projector Settings : ProbeMode %d StrobeMode %d StrobePulseWidth %f StrobeCurrentPercentage %f\n", v200, 0x22u);
        }
      }

      v97 = H16ISP::H16ISPDevice::SetExclaveAEConfig(*(v5 + 24), *v7, v126);
      if (v97)
      {
        v13 = v97;
        v98 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        v86 = MEMORY[0x277D86220];
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v98 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v98;
        }

        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          StartExclaveStreams();
        }

        goto LABEL_147;
      }
    }
  }

  bzero(&v160[4], 0x210uLL);
  if (!H16ISP::H16ISPDevice::isSensorType(*(v5 + 24), *v7, 1718186595))
  {
    goto LABEL_184;
  }

  PDPConfig = H16ISP::H16ISPDevice::ISP_GetPDPConfig(*(v5 + 24), *v7, v200);
  v13 = PDPConfig;
  if (!PDPConfig && v200[0])
  {
    v102 = *v7;
    *v160 = 131074;
    v163 = v102;
    v164[0] = v200[1];
    *&v164[4] = *&v200[4];
    v165 = *&v200[20];
    v166 = *&v200[24];
    v181 = *&v200[252];
    v182 = *&v200[260];
    v167 = *&v200[28];
    v168 = *&v200[44];
    v171 = *&v200[92];
    v172 = *&v200[108];
    v169 = *&v200[60];
    v170 = *&v200[76];
    v175 = *&v200[156];
    v176 = *&v200[172];
    v173 = *&v200[124];
    v174 = *&v200[140];
    v179 = *&v200[220];
    v180 = *&v200[236];
    v177 = *&v200[188];
    v178 = *&v200[204];
    memcpy(&v164[20], &v200[264], 0x1210uLL);
    v103 = ispExclaveKitCommand();
    if (v103)
    {
      v104 = v103;
      v105 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v105 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v105;
      }

      if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
      {
        *v126 = 136315394;
        *&v126[4] = "ConfigureFrameworkPDPSettings";
        *&v126[12] = 1024;
        *&v126[14] = v104;
        _os_log_impl(&dword_2247DB000, v105, OS_LOG_TYPE_INFO, "%s - ISP_EXCLAVEKIT_CMD_CH_PDP_SET failed with ret: %d\n", v126, 0x12u);
      }
    }

    goto LABEL_184;
  }

  if (!PDPConfig)
  {
LABEL_184:
    ExclavePreferenceApplyValues(v5, *(v4 + 156));
    bzero(&v160[4], 0x208uLL);
    *v160 = 0x10000;
    *v164 = *(*(v4 + 184) + 120 * v119 + 16);
    v163 = *(v4 + 156);
    kdebug_trace();
    v107 = ispExclaveKitCommand();
    kdebug_trace();
    v108 = MEMORY[0x277D86220];
    if (v107)
    {
      v109 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v109 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v109;
      }

      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        StartExclaveStreams();
      }

      return 3758097087;
    }

    else
    {
      *(*(v5 + 24) + 96) = *(v4 + 156);
      ExclavePreferenceRegisterNotifications(v5, v4);
      if (*(v4 + 160))
      {
        ExclaveResumeFlickerTimer(v4);
      }

      v110 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v108)
      {
        v110 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v110;
      }

      v13 = 0;
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        v111 = *v7;
        *v160 = 136315394;
        *&v160[4] = "StartExclaveStreams";
        v161 = 1024;
        v162 = v111;
        _os_log_impl(&dword_2247DB000, v110, OS_LOG_TYPE_DEFAULT, "%s - Successfully started EK channel=%d \n", v160, 0x12u);
        return 0;
      }
    }

    return v13;
  }

  v106 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
  {
    v106 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v106;
  }

  if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
  {
    StartExclaveStreams();
  }

  return v13;
}

uint64_t H16ISPSecureMetadataReceivedProc(void *a1, unint64_t a2, const __CFDictionary *a3)
{
  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  pthread_mutex_lock((DerivedStorage + 328));
  if (a3 && *(DerivedStorage + 2904) == 1 && *(DerivedStorage + 2912))
  {
    CFRetain(a3);
    memset(&v9, 0, sizeof(v9));
    v5 = FigHostTimeToNanoseconds();
    CMTimeMake(&v9, v5, 1000000000);
    v6 = *(DerivedStorage + 2912);
    v8 = v9;
    (*(v6 + 16))(v6, a3, &v8);
    CFRelease(a3);
  }

  pthread_mutex_unlock((DerivedStorage + 328));
  return 0;
}

void ExclavePreferenceApplyValues(uint64_t a1, unsigned int a2)
{
  v37 = *MEMORY[0x277D85DE8];
  KeyForChannel = ExclavePreferenceCreateKeyForChannel(a1, a2);
  if (KeyForChannel)
  {
    v5 = KeyForChannel;
    v6 = CFPreferencesCopyValue(KeyForChannel, @"com.apple.coremedia", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFArrayGetTypeID())
      {
        if (CFArrayGetCount(v7) >= 1)
        {
          v9 = 0;
          v10 = MEMORY[0x277D86220];
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v7, v9);
            valuePtr = 0;
            v12 = CFGetTypeID(ValueAtIndex);
            if (v12 != CFStringGetTypeID() && v12 != CFNumberGetTypeID())
            {
              break;
            }

            if (v12 == CFNumberGetTypeID())
            {
              if (!CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr))
              {
                break;
              }

              v13 = valuePtr;
            }

            else
            {
              SystemEncoding = CFStringGetSystemEncoding();
              if (!CFStringGetCString(ValueAtIndex, buffer, 256, SystemEncoding))
              {
                break;
              }

              v13 = strtoull(buffer, 0, 0);
              valuePtr = v13;
            }

            if (!H16ISP::H16ISPDevice::WritePropertyValueExclave(*(a1 + 24), a2, SHIDWORD(v13), v13))
            {
              goto LABEL_21;
            }

            v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v10)
            {
              v15 = os_log_create("com.apple.isp", "exclaves");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v15;
            }

            if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }

            *buffer = 136315906;
            v32 = "ExclavePreferenceApplyGenericValues";
            v33 = 1024;
            *v34 = a2;
            *&v34[4] = 1024;
            *&v34[6] = HIDWORD(v13);
            v35 = 1024;
            v36 = v13;
            v16 = v15;
            v17 = "%s - channel=%u failed to set property=0x%08x value=%u\n";
            v18 = 30;
LABEL_24:
            _os_log_error_impl(&dword_2247DB000, v16, OS_LOG_TYPE_ERROR, v17, buffer, v18);
LABEL_21:
            if (++v9 >= CFArrayGetCount(v7))
            {
              goto LABEL_33;
            }
          }

          v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v10)
          {
            v19 = os_log_create("com.apple.isp", "exclaves");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v19;
          }

          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          *buffer = 136315394;
          v32 = "ExclavePreferenceApplyGenericValues";
          v33 = 2048;
          *v34 = v9;
          v16 = v19;
          v17 = "%s - bad array value at idx=%ld\n";
          v18 = 22;
          goto LABEL_24;
        }
      }

      else
      {
        v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v21 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v21;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          ExclavePreferenceApplyValues();
        }
      }

LABEL_33:
      CFRelease(v7);
    }

    CFRelease(v5);
  }

  else
  {
    v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v20 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v20;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      ExclavePreferenceApplyValues();
    }
  }

  v22 = H16ISP::H16ISPGetCFPreferenceNumber(@"ISPDebugFiltration", @"com.apple.coremedia", 0xFFFFFFFFLL);
  if (v22 != -1 && H16ISP::H16ISPDevice::WritePropertyValueExclave(*(a1 + 24), a2, 27, v22))
  {
    v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v23 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v23;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      ExclavePreferenceApplyValues();
    }
  }

  v24 = H16ISP::H16ISPGetCFPreferenceNumber(@"ISPDebugDumpSkipFrame", @"com.apple.coremedia", 0xFFFFFFFFLL);
  if (v24 != -1 && H16ISP::H16ISPDevice::WritePropertyValueExclave(*(a1 + 24), a2, 13, v24))
  {
    v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v25 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v25;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      ExclavePreferenceApplyValues();
    }
  }

  v26 = H16ISP::H16ISPGetCFPreferenceNumber(@"ISPDebugYUVDumpCtl", @"com.apple.coremedia", 0xFFFFFFFFLL);
  if (v26 != -1 && H16ISP::H16ISPDevice::WritePropertyValueExclave(*(a1 + 24), a2, 4, v26))
  {
    v27 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v27 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v27;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      ExclavePreferenceApplyValues();
    }
  }

  v28 = H16ISP::H16ISPGetCFPreferenceNumber(@"ISPDebugReplayCtl", @"com.apple.coremedia", 0xFFFFFFFFLL);
  if (v28 != -1 && H16ISP::H16ISPDevice::WritePropertyValueExclave(*(a1 + 24), a2, 3, v28))
  {
    v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v29 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v29;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      ExclavePreferenceApplyValues();
    }
  }
}

void ExclavePreferenceRegisterNotifications(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    v3 = *(a2 + 156);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___ZL38ExclavePreferenceRegisterNotificationsP19H16ISPCaptureDeviceP19H16ISPCaptureStream_block_invoke;
    v6[3] = &__block_descriptor_tmp_754;
    v6[4] = a1;
    v7 = v3;
    if (notify_register_dispatch("com.apple.isp.preference-notify", (a2 + 58180), v2, v6))
    {
      v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v4 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v4;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        ExclavePreferenceRegisterNotifications();
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
      ExclavePreferenceRegisterNotifications();
    }
  }
}

void ExclaveResumeFlickerTimer(uint64_t a1)
{
  v1 = *(a1 + 58184);
  if (v1)
  {
    v2 = dispatch_time(0, 10000000);

    dispatch_source_set_timer(v1, v2, 0xEE6B280uLL, 0xF4240uLL);
  }
}

BOOL GetExclaveAlgorithmsEnabledArray(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  isSensorType = H16ISP::H16ISPDevice::isSensorType(*(a1 + 24), *(a2 + 156), 1718186595);
  result = H16ISP::H16ISPDevice::isSensorType(*(a1 + 24), *(a2 + 156), 1718775412) || H16ISP::H16ISPDevice::isSensorType(*(a1 + 24), *(a2 + 156), 1718776695);
  if (*(a2 + 2922) == 1)
  {
    *a3 = 1;
  }

  if (*(a2 + 2921) == 1)
  {
    a3[1] = 1;
    if (*(a2 + 3020) == 1)
    {
      v8 = *(a1 + 24);
      if (v8 && (*(*(v8 + 4304) + 104 * *(a2 + 156) + 109) & 1) != 0)
      {
        v9 = 11;
      }

      else
      {
        v9 = 3;
      }
    }

    else
    {
      v9 = 2;
    }

    a3[v9] = 1;
  }

  if (*(a2 + 2941) == 1)
  {
    if (!result)
    {
      if (!isSensorType)
      {
        goto LABEL_23;
      }

      v10 = 4;
      goto LABEL_22;
    }

    a3[5] = 1;
  }

  if (*(a2 + 2920) & result)
  {
    a3[6] = 1;
    if (*(a2 + 2923) == 1)
    {
      v10 = 7;
LABEL_22:
      a3[v10] = 1;
    }
  }

LABEL_23:
  if (*(a2 + 2945))
  {
LABEL_24:
    a3[8] = 1;
  }

  else
  {
    v12 = 0;
    while (v12 != 8)
    {
      v13 = *(a2 + 2946 + v12++);
      if (v13 == 1)
      {
        if ((v12 - 1) <= 7)
        {
          goto LABEL_24;
        }

        break;
      }
    }
  }

  if (a1)
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      if (*(*(v11 + 4304) + 104 * *(a2 + 156) + 108) == 1)
      {
        a3[10] = 1;
      }
    }
  }

  return result;
}

CFStringRef ExclavePreferenceCreateKeyForChannel(uint64_t a1, unsigned int a2)
{
  v2 = *(*(*(a1 + 24) + 4304) + 104 * a2 + 16);
  switch(v2)
  {
    case 1718186595:
      v3 = "FrontInfrared";
      return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"ISPDebug%sPropertyWrite", v3);
    case 1718775412:
      v3 = "Front";
      return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"ISPDebug%sPropertyWrite", v3);
    case 1718776695:
      v3 = "FrontSuperWide";
      return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"ISPDebug%sPropertyWrite", v3);
  }

  return 0;
}

uint64_t AddMetadataOutputBufferPoolToFrameReceiver(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (v4 == CVPixelBufferPoolGetTypeID())
  {
    v21 = 0;
    valuePtr = 0;
    v5 = a2[1];
    if (v5)
    {
      PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(v5);
      if (PixelBufferAttributes)
      {
        v7 = PixelBufferAttributes;
        Value = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x277CC4EC8]);
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
        v9 = CFDictionaryGetValue(v7, *MEMORY[0x277CC4DD8]);
        CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
        v10 = CFDictionaryGetValue(v7, *MEMORY[0x277CC4D60]);
        CFNumberGetValue(v10, kCFNumberIntType, &v21 + 4);
        v11 = CFDictionaryGetValue(v7, *MEMORY[0x277CC4E38]);
        CFNumberGetValue(v11, kCFNumberIntType, &v21);
        v12 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(a1, *(a2 + 15), *(a2 + 28));
        if (v12)
        {
          v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v13 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            AddMetadataOutputBufferPoolToFrameReceiver();
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

        v12 = 3758097136;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          AddMetadataOutputBufferPoolToFrameReceiver();
        }
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

      v12 = 3758097095;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        AddMetadataOutputBufferPoolToFrameReceiver();
      }
    }
  }

  else
  {
    v14 = a2[1];
    if (v14)
    {
      MinBufferCount = CVDataBufferPoolGetMinBufferCount();
      v12 = H16ISP::H16ISPFrameReceiver::addDataBufferPoolToFrameReceiver(a1, v14, MinBufferCount, *(a2 + 15));
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
          AddMetadataOutputBufferPoolToFrameReceiver();
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

      v12 = 3758097095;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        AddMetadataOutputBufferPoolToFrameReceiver();
      }
    }
  }

  return v12;
}

void RemoveMetadataOutputBufferPoolFromFrameReceiver(void *a1, uint64_t *a2)
{
  v3 = *(a2 + 15);
  v4 = *a2;
  if (v4 == CVPixelBufferPoolGetTypeID())
  {
    if (!H16ISP::H16ISPFrameReceiver::HasPool(a1, v3) || !H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(a1, v3))
    {
      return;
    }
  }

  else if (!H16ISP::H16ISPFrameReceiver::removeDataBufferPoolFromFrameReceiver(a1, v3))
  {
    return;
  }

  v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v5 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    RemoveMetadataOutputBufferPoolFromFrameReceiver();
  }
}

uint64_t CheckOutputWidthAgainstPool(uint64_t a1, CVPixelBufferPoolRef pool, int a3, unsigned int a4)
{
  if (pool)
  {
    valuePtr = 0;
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(pool);
    if (PixelBufferAttributes)
    {
      Value = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x277CC4EC8]);
      if (Value)
      {
        if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
        {
          if (valuePtr < a4)
          {
            v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v7 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
            }

            v8 = 3758097090;
            if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
            {
              CheckOutputWidthAgainstPool();
            }

            return v8;
          }

          return 0;
        }

        v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v14 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
        }

        v8 = 3758097084;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          CheckOutputWidthAgainstPool();
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

        v8 = 3758097136;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          CheckOutputWidthAgainstPool();
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

      v8 = 3758097136;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        CheckOutputWidthAgainstPool();
      }
    }
  }

  else
  {
    v9 = *(a1 + 160);
    if (!v9)
    {
      return 0;
    }

    BufferPool = H16ISP::H16ISPFrameReceiver::getBufferPool(v9, a3);
    if (!BufferPool || *(BufferPool + 24) >= a4)
    {
      return 0;
    }

    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    }

    v8 = 3758097090;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      CheckOutputWidthAgainstPool();
    }
  }

  return v8;
}

uint64_t CheckOutputHeightAgainstPool(uint64_t a1, CVPixelBufferPoolRef pool, int a3, unsigned int a4)
{
  if (pool)
  {
    valuePtr = 0;
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(pool);
    if (PixelBufferAttributes)
    {
      Value = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x277CC4DD8]);
      if (Value)
      {
        if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
        {
          if (valuePtr < a4)
          {
            v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v7 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
            }

            v8 = 3758097090;
            if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
            {
              CheckOutputHeightAgainstPool();
            }

            return v8;
          }

          return 0;
        }

        v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v14 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
        }

        v8 = 3758097084;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          CheckOutputHeightAgainstPool();
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

        v8 = 3758097136;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          CheckOutputHeightAgainstPool();
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

      v8 = 3758097136;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        CheckOutputHeightAgainstPool();
      }
    }
  }

  else
  {
    v9 = *(a1 + 160);
    if (!v9)
    {
      return 0;
    }

    BufferPool = H16ISP::H16ISPFrameReceiver::getBufferPool(v9, a3);
    if (!BufferPool || *(BufferPool + 28) >= a4)
    {
      return 0;
    }

    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    }

    v8 = 3758097090;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      CheckOutputHeightAgainstPool();
    }
  }

  return v8;
}

void HandleSecureStreamOutputConfig(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  v69[2] = *MEMORY[0x277D85DE8];
  v52 = 0;
  theDict = 0;
  value = 0;
  v51 = 0;
  number = 0;
  theArray = 0;
  v5 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6630]);
  if (v5 && (v6 = v5, v7 = CFGetTypeID(v5), v7 == CFDictionaryGetTypeID()))
  {
    pthread_mutex_lock((a2 + 328));
    ValueIfPresent = CFDictionaryGetValueIfPresent(v6, @"SecureIRBaselineStreamingEnabled_Private", &value);
    v9 = MEMORY[0x277CBED28];
    if (ValueIfPresent)
    {
      *(a2 + 2944) = CFEqual(*MEMORY[0x277CBED28], value) != 0;
    }

    if (CFDictionaryGetValueIfPresent(v6, @"SecureRGBBaselineStreamingEnabled_Private", &value))
    {
      *(a2 + 2944) = CFEqual(*v9, value) != 0;
    }

    if (CFDictionaryGetValueIfPresent(v6, *MEMORY[0x277CF4838], &value))
    {
      *(a2 + 2920) = CFEqual(*v9, value) != 0;
    }

    v10 = CFDictionaryGetValueIfPresent(v6, *MEMORY[0x277CF4830], &theDict) && *(a2 + 2920) == 1 && CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CF5ED8], &value) && CFEqual(*v9, value) != 0;
    *(a2 + 2921) = v10;
    if (*(a2 + 2920) == 1 && H16ISP::H16ISPDevice::isSensorType(*(a3 + 24), *(a2 + 156), 1718186595))
    {
      *(a2 + 2921) = 1;
    }

    if (CFDictionaryGetValueIfPresent(v6, *MEMORY[0x277CF47F8], &value))
    {
      *(a2 + 2922) = CFEqual(*v9, value) != 0;
    }

    if (CFDictionaryGetValueIfPresent(v6, *MEMORY[0x277CF4818], &value))
    {
      v12 = CFEqual(*v9, value);
      *(a2 + 2923) = v12 != 0;
      if (v12)
      {
        *(a2 + 2920) = 1;
        if (CFDictionaryGetValueIfPresent(v6, *MEMORY[0x277CF4810], &v52))
        {
          *buf = 0;
          *(a2 + 2928) = 1;
          *(a2 + 2932) = 1065353216;
          if (CFDictionaryGetValueIfPresent(v52, *MEMORY[0x277CF5EB8], buf) && *buf)
          {
            CFNumberGetValue(*buf, kCFNumberIntType, (a2 + 2928));
          }

          if (CFDictionaryGetValueIfPresent(v52, *MEMORY[0x277CF5EB0], buf) && *buf)
          {
            CFNumberGetValue(*buf, kCFNumberFloatType, (a2 + 2932));
          }

          if (CFDictionaryGetValueIfPresent(v52, *MEMORY[0x277CF5EC0], buf) && *buf)
          {
            CFNumberGetValue(*buf, kCFNumberFloatType, (a2 + 2936));
          }
        }
      }
    }

    if (CFDictionaryGetValueIfPresent(v6, *MEMORY[0x277CF4808], &value))
    {
      v13 = *v9;
      v14 = CFEqual(*v9, value);
      v15 = v14 != 0;
      if (v14)
      {
        *(a2 + 2920) = 257;
        *(a2 + 3020) = v15;
        if (CFDictionaryGetValueIfPresent(v6, *MEMORY[0x277CF4800], &v51))
        {
          v16 = *MEMORY[0x277CBED10];
          *buf = *MEMORY[0x277CBED10];
          if (CFDictionaryGetValueIfPresent(v51, *MEMORY[0x277CF5E90], buf))
          {
            *(a2 + 3021) = CFEqual(v13, *buf) != 0;
          }

          v69[0] = v16;
          if (CFDictionaryGetValueIfPresent(v51, *MEMORY[0x277CF5E88], v69))
          {
            *(a2 + 3022) = CFEqual(v13, v69[0]) != 0;
          }
        }
      }

      else
      {
        *(a2 + 3020) = v15;
      }
    }

    v17 = &unk_27D6F1000;
    v18 = MEMORY[0x277D86220];
    if (theDict)
    {
      v45 = a3;
      v19 = *MEMORY[0x277CBED10];
      cf2 = *MEMORY[0x277CBED10];
      if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CF5EE0], &cf2))
      {
        *(a2 + 2940) = CFEqual(*v9, cf2) != 0;
      }

      if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CF6290], &theArray))
      {
        *(a2 + 2953) = 0;
        *(a2 + 2945) = 0;
        if (CFArrayGetCount(theArray) >= 1)
        {
          v20 = 0;
          v21 = *MEMORY[0x277CF4408];
          v22 = *MEMORY[0x277CF4400];
          v23 = *MEMORY[0x277CF43E0];
          v44 = *MEMORY[0x277CF43E8];
          v43 = *MEMORY[0x277CF43F0];
          v42 = *MEMORY[0x277CF43F8];
          v41 = *MEMORY[0x277CF4410];
          v40 = *MEMORY[0x277CF4418];
          v39 = *MEMORY[0x277CF4420];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
            if (CFEqual(ValueAtIndex, v21))
            {
              *(a2 + 2945) = 1;
            }

            else if (CFEqual(ValueAtIndex, v22))
            {
              *(a2 + 2946) = 1;
            }

            else if (CFEqual(ValueAtIndex, v23))
            {
              *(a2 + 2947) = 1;
            }

            else if (CFEqual(ValueAtIndex, v44))
            {
              *(a2 + 2948) = 1;
            }

            else if (CFEqual(ValueAtIndex, v43))
            {
              *(a2 + 2949) = 1;
            }

            else if (CFEqual(ValueAtIndex, v42))
            {
              *(a2 + 2950) = 1;
            }

            else if (CFEqual(ValueAtIndex, v41))
            {
              *(a2 + 2951) = 1;
            }

            else if (CFEqual(ValueAtIndex, v40))
            {
              *(a2 + 2952) = 1;
            }

            else if (CFEqual(ValueAtIndex, v39))
            {
              *(a2 + 2953) = 1;
            }

            else
            {
              v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
              {
                v25 = os_log_create("com.apple.isp", "exclaves");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v25;
              }

              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                HandleSecureStreamOutputConfig(v69, (v69 + 4));
              }
            }

            ++v20;
          }

          while (v20 < CFArrayGetCount(theArray));
        }
      }

      v46 = v19;
      if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CF6288], &v46))
      {
        *(a2 + 2942) = CFEqual(*MEMORY[0x277CBED28], v46) != 0;
      }

      v26 = theDict;
      SecureAlgorithmSetTargetFrameRate(theDict, *MEMORY[0x277CF6280], "object detection", (a2 + 2960));
      SecureAlgorithmSetTargetFrameRate(v26, *MEMORY[0x277CF6298], "thumbnail stream", (a2 + 2956));
      v27 = CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CF5440], &number);
      v18 = MEMORY[0x277D86220];
      if (v27)
      {
        CFNumberGetValue(number, kCFNumberIntType, (a2 + 2964));
      }

      if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CF5458], &number))
      {
        CFNumberGetValue(number, kCFNumberIntType, (a2 + 2972));
      }

      a3 = v45;
      v17 = &unk_27D6F1000;
      if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CF5450], &number))
      {
        CFNumberGetValue(number, kCFNumberIntType, (a2 + 2968));
      }

      if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CF5438], &number))
      {
        CFNumberGetValue(number, kCFNumberIntType, (a2 + 2976));
      }

      if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CF5448], &number))
      {
        CFNumberGetValue(number, kCFNumberIntType, (a2 + 2980));
      }

      if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CF5428], &number))
      {
        CFNumberGetValue(number, kCFNumberIntType, (a2 + 2984));
      }

      if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CF5430], &number))
      {
        CFNumberGetValue(number, kCFNumberIntType, (a2 + 2988));
      }

      if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CF5418], &number))
      {
        CFNumberGetValue(number, kCFNumberIntType, (a2 + 2992));
      }

      if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CF5420], &number))
      {
        CFNumberGetValue(number, kCFNumberIntType, (a2 + 2996));
      }

      *buf = 0;
      v28 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v18)
      {
        v28 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v28;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        HandleSecureStreamOutputConfig(v28);
      }

      v29 = *(a2 + 4952);
      if (v29)
      {
        if (H16ISP::H16ISPFilterGraphManager::GetNode(v29, 21, buf))
        {
          HandleSecureStreamOutputConfig();
        }

        else if (H16ISP::H16ISPExclaveGraphNode::GetExclaveKitType(*buf) == 1)
        {
          H16ISP::H16ISPGraphExclaveObjectDetectionNode::asyncUpdateEnabledObjects(*buf, (a2 + 2964));
        }
      }

      else
      {
        HandleSecureStreamOutputConfig();
      }
    }

    v30 = *MEMORY[0x277CF4828];
    *buf = 0;
    if (CFDictionaryGetValueIfPresent(v6, v30, buf))
    {
      if (*buf && (v31 = CFGetTypeID(*buf), v31 == CFBooleanGetTypeID()))
      {
        *(a2 + 2941) = CFBooleanGetValue(*buf) != 0;
      }

      else
      {
        v32 = *(v17 + 442);
        if (v32 == v18)
        {
          v32 = os_log_create("com.apple.isp", "exclaves");
          *(v17 + 442) = v32;
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          HandleSecureStreamOutputConfig();
        }
      }
    }

    *buf = 0;
    if (CFDictionaryGetValueIfPresent(v6, *MEMORY[0x277CF4820], buf))
    {
      if (*buf && (v33 = CFGetTypeID(*buf), v33 == CFDictionaryGetTypeID()))
      {
        SecureAlgorithmSetTargetFrameRate(*buf, *MEMORY[0x277CF5EC8], "motion to wake", (a2 + 3016));
      }

      else
      {
        v34 = *(v17 + 442);
        if (v34 == v18)
        {
          v34 = os_log_create("com.apple.isp", "exclaves");
          *(v17 + 442) = v34;
        }

        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          HandleSecureStreamOutputConfig();
        }
      }
    }

    pthread_mutex_unlock((a2 + 328));
    ExclaveSetMaximumFrameRateNow(a3, a2);
    ExclaveSetMinimumFrameRateNow(a3, a2);
    if ((*(a2 + 58176) & 1) == 0 && isExclaveAlgoEnabled(a2))
    {
      v67 = 0u;
      memset(v68, 0, sizeof(v68));
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
      *buf = 0u;
      GetExclaveAlgorithmsEnabledArray(a3, a2, buf);
      H16ISP::H16ISPDevice::PowerOnExclaveKit(*(a3 + 24), *(a2 + 156), buf);
      if (H16ISP::H16ISPDevice::ConfigureExclaveKitDebugServices(*(a3 + 24), *(a2 + 156)))
      {
        v35 = *(v17 + 442);
        if (v35 == v18)
        {
          v35 = os_log_create("com.apple.isp", "exclaves");
          *(v17 + 442) = v35;
        }

        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          HandleSecureStreamOutputConfig();
        }
      }

      else
      {
        *(a2 + 58176) = 1;
      }
    }

    if ((isExclaveAlgoEnabled(a2) & 1) == 0)
    {
      v36 = *(a2 + 4952);
      if (v36)
      {
        H16ISP::H16ISPFilterGraphManager::Deactivate(v36);
        v37 = *(a2 + 4952);
        if (v37)
        {
          (*(*v37 + 8))(v37);
        }

        *(a2 + 4952) = 0;
      }

      if (StopExclaveStreams(a3, a2))
      {
        v38 = *(v17 + 442);
        if (v38 == v18)
        {
          v38 = os_log_create("com.apple.isp", "exclaves");
          *(v17 + 442) = v38;
        }

        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          HandleSecureStreamOutputConfig();
        }
      }
    }
  }

  else
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "HandleSecureStreamOutputConfig";
      _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, "%s - Secure Metadata configuration prop invalid\n", buf, 0xCu);
    }
  }
}

uint64_t PrimaryAndSecondaryScalerConfigUpdateAtomically(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  memset(v50, 0, sizeof(v50));
  *v49 = 0u;
  if (*(a2 + 160))
  {
    v6 = 0;
    *&v49[4] = 2847;
    v7 = a2 + 1304;
    v8 = a2 + 1504;
    *&v49[8] = *(a2 + 156);
    *&v49[12] = 1;
    v9 = 1;
    while (1)
    {
      v10 = v9;
      v11 = (v9 & 1) != 0 ? 0 : 10;
      BufferPool = H16ISP::H16ISPFrameReceiver::getBufferPool(*(a2 + 160), v11);
      if (!BufferPool)
      {
        break;
      }

      v13 = BufferPool;
      v14 = &v50[v6];
      v15 = vmovn_s64(vcvtq_u64_f64(*(a3 + 48)));
      *v14 = vmovn_s64(vcvtq_s64_f64(*(a3 + 32)));
      v14[1] = v15;
      v16 = v51 + 44 * v6;
      v17 = *(BufferPool + 28);
      *(v16 + 10) = *(BufferPool + 24);
      v18 = *(a3 + 24);
      *v16 = *(a3 + 20);
      *(v16 + 1) = v18;
      *(v16 + 7) = -v18 & 0xF;
      *(v16 + 8) = v17;
      v19 = v8 == a3 || v7 == a3;
      v20 = 172;
      if (v19)
      {
        v20 = 176;
      }

      *(v16 + 2) = ColorRangeForOutputWithMatrix(a2, a3, *(a2 + v20));
      if (H16ISP::getFrameFormatMetaInfo(*(a3 + 16), &v47) && (v48 == 2 || (DWORD1(v47) - 35) <= 1))
      {
        v22 = v13[11];
        v21 = v13[12];
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      v23 = v13[10];
      switch(v23)
      {
        case 0:
          v16[36] = 0;
          goto LABEL_29;
        case 1:
          *(v16 + 3) = 1;
          v16[36] = 0;
          v21 = (2 * v13[6] + 63) & 0xFFFFFFC0;
          v24 = 16;
          break;
        case 13:
          v16[36] = 1;
LABEL_29:
          v29 = (v13[6] + 63) & 0xFFFFFFC0;
          *(v16 + 3) = 0;
          *(v16 + 4) = v29;
          goto LABEL_30;
        case 15:
          v16[36] = 0;
          goto LABEL_44;
        case 16:
          v16[36] = 1;
LABEL_44:
          v39 = (2 * v13[6] + 63) & 0xFFFFFFC0;
          *(v16 + 3) = 18;
          *(v16 + 4) = v39;
          v27 = 2 * v13[6];
          goto LABEL_45;
        case 18:
          v16[36] = 0;
          v26 = (((2 * ((2863311531u * (v13[6] + 2)) >> 32)) & 0xFFFFFFFC) + 63) & 0xFFFFFFC0;
          *(v16 + 3) = 19;
          *(v16 + 4) = v26;
          v27 = (2 * ((2863311531u * (v13[6] + 2)) >> 32)) & 0xFFFFFFFC;
          goto LABEL_45;
        case 22:
          v16[36] = 1;
          v30 = *(a3 + 20);
          v31 = v30 + 31;
          if (v30 < -31)
          {
            v31 = v30 + 62;
          }

          *(v16 + 3) = 0;
          *(v16 + 4) = (32 * v31) & 0xFFFFFC00;
          v33 = v30 + 15;
          v32 = v30 < -15;
          v34 = v30 + 30;
          if (!v32)
          {
            v34 = v33;
          }

          v21 = (32 * v34) & 0xFFFFFE00;
          goto LABEL_46;
        case 23:
          v16[36] = 1;
          v35 = *(a3 + 20);
          v36 = v35 + 31;
          if (v35 < -31)
          {
            v36 = v35 + 62;
          }

          *(v16 + 3) = 19;
          *(v16 + 4) = ((5 * (v36 >> 5)) & 0x1FFFFF) << 8;
          v37 = v35 + 15;
          v32 = v35 < -15;
          v38 = v35 + 30;
          if (!v32)
          {
            v38 = v37;
          }

          v21 = ((5 * (v38 >> 4)) & 0x7FFFFF) << 6;
          goto LABEL_46;
        case 24:
        case 26:
        case 28:
          v16[36] = 1;
          v24 = 20;
          *(v16 + 3) = 0;
          *(v16 + 4) = v22;
          break;
        case 25:
        case 27:
        case 29:
          v16[36] = 1;
          v24 = 20;
          *(v16 + 3) = 19;
          *(v16 + 4) = v22;
          break;
        case 31:
        case 32:
        case 33:
        case 34:
          *(v16 + 3) = 26;
          v16[36] = 1;
          goto LABEL_24;
        case 35:
          v25 = 25;
          goto LABEL_23;
        case 36:
          v25 = 26;
LABEL_23:
          *(v16 + 3) = v25;
          v16[36] = 0;
LABEL_24:
          v24 = 24;
          *(v16 + 5) = v22;
          break;
        default:
          v16[36] = 0;
          v28 = (v13[6] + 63) & 0xFFFFFFC0;
          *(v16 + 3) = v23;
          *(v16 + 4) = v28;
LABEL_30:
          v27 = v13[6];
LABEL_45:
          v21 = (v27 + 63) & 0xFFFFFFC0;
LABEL_46:
          v24 = 20;
          break;
      }

      v9 = 0;
      *&v16[v24] = v21;
      a3 = a4;
      v6 = 1;
      if ((v10 & 1) == 0)
      {
        v40 = H16ISP::H16ISPDevice::ISP_SendCommand(*(a1 + 24), v49, 0x88u, 0, 0xFFFFFFFF);
        if (v40)
        {
          v41 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v41 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v41;
          }

          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            PrimaryAndSecondaryScalerConfigUpdateAtomically();
          }
        }

        return v40;
      }
    }

    v43 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v43 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v43;
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      PrimaryAndSecondaryScalerConfigUpdateAtomically();
    }

    return 3758097084;
  }

  else
  {
    v42 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v42 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v42;
    }

    v40 = 3758097095;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      PrimaryAndSecondaryScalerConfigUpdateAtomically();
    }
  }

  return v40;
}

uint64_t SetPrimaryScalerCrop(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = H16ISP::H16ISPDevice::SetScalerCrop(*(a1 + 24), *(a2 + 156), a3[4] | (a3[5] << 32), a3[6] | (a3[7] << 32));
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
      SetPrimaryScalerCrop();
    }
  }

  return v3;
}

uint64_t IntermediateTapOutputConfigUpdateAtomically(uint64_t a1, uint64_t a2, double *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v15 = 0;
  if (*(a2 + 160))
  {
    v4 = a3[4];
    v5 = a3[5];
    v6 = a3[7];
    v7 = a3[6];
    WORD2(v15) = 2832;
    v16 = *(a2 + 156);
    v17 = v4;
    v18 = v5;
    v19 = v7;
    v8 = v6;
    v20 = v6;
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    v10 = MEMORY[0x277D86220];
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v22 = "IntermediateTapOutputConfigUpdateAtomically";
      v23 = 1024;
      v24 = v7;
      v25 = 1024;
      v26 = v8;
      v27 = 1024;
      v28 = v4;
      v29 = 1024;
      v30 = v5;
      _os_log_debug_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEBUG, "%s - sent cropWidth=%u cropHeight=%u x=%d y=%d\n", buf, 0x24u);
    }

    v11 = H16ISP::H16ISPDevice::ISP_SendCommand(*(a1 + 24), &v15, 0x1Cu, 0, 0xFFFFFFFF);
    if (v11)
    {
      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v10)
      {
        v12 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        IntermediateTapOutputConfigUpdateAtomically();
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

    v11 = 3758097095;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      IntermediateTapOutputConfigUpdateAtomically();
    }
  }

  return v11;
}